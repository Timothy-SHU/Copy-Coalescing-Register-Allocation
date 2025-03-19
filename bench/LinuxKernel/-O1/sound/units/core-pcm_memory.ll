; ModuleID = 'sound/core/pcm_memory.c'
source_filename = "sound/core/pcm_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_lib_preallocate_free_for_all: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_lib_preallocate_free_for_all ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_lib_preallocate_pages: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_lib_preallocate_pages ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_lib_preallocate_pages_for_all: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_lib_preallocate_pages_for_all ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_set_managed_buffer: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_set_managed_buffer ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_set_managed_buffer_all: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_set_managed_buffer_all ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_lib_malloc_pages: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_lib_malloc_pages ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_lib_free_pages: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_lib_free_pages ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__snd_pcm_lib_alloc_vmalloc_buffer: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _snd_pcm_lib_alloc_vmalloc_buffer ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_lib_free_vmalloc_buffer: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_lib_free_vmalloc_buffer ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_lib_get_vmalloc_page: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_lib_get_vmalloc_page ; .previous"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i64, %struct.snd_dma_buffer, i64, ptr, ptr, ptr, i8, i64, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i64, i64, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_runtime = type { i32, i32, ptr, %struct.timespec64, i8, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i8, i32, i32, i64, i64, i64, i64, i64, i64, i64, %union.snd_pcm_sync_id, ptr, ptr, i64, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, %struct.mutex, %struct.atomic_t, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i64, i64, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i64 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, ptr, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray, %struct.xarray, i8, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i64, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.snd_info_entry = type { ptr, i16, i64, i16, %union.anon.16, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.16 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_info_buffer = type { ptr, i32, i32, i32, i32, i32 }

@__param_str_preallocate_dma = internal constant [24 x i8] c"snd_pcm.preallocate_dma\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@preallocate_dma = internal global i32 1, align 4, !dbg !4277
@__param_preallocate_dma = internal constant %struct.kernel_param { ptr @__param_str_preallocate_dma, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @preallocate_dma } }, section "__param", align 8, !dbg !4221
@__UNIQUE_ID_preallocate_dmatype289 = internal constant [37 x i8] c"snd_pcm.parmtype=preallocate_dma:int\00", section ".modinfo", align 1, !dbg !4223
@__UNIQUE_ID_preallocate_dma290 = internal constant [90 x i8] c"snd_pcm.parm=preallocate_dma:Preallocate DMA memory when the PCM devices are initialized.\00", section ".modinfo", align 1, !dbg !4228
@__param_str_maximum_substreams = internal constant [27 x i8] c"snd_pcm.maximum_substreams\00", align 16, !dbg !4279
@maximum_substreams = internal global i32 4, align 4, !dbg !4284
@__param_maximum_substreams = internal constant %struct.kernel_param { ptr @__param_str_maximum_substreams, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @maximum_substreams } }, section "__param", align 8, !dbg !4233
@__UNIQUE_ID_maximum_substreamstype291 = internal constant [40 x i8] c"snd_pcm.parmtype=maximum_substreams:int\00", section ".modinfo", align 1, !dbg !4235
@__UNIQUE_ID_maximum_substreams292 = internal constant [81 x i8] c"snd_pcm.parm=maximum_substreams:Maximum substreams with preallocated DMA memory.\00", section ".modinfo", align 1, !dbg !4240
@__param_str_max_alloc_per_card = internal constant [27 x i8] c"snd_pcm.max_alloc_per_card\00", align 16, !dbg !4286
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 8
@max_alloc_per_card = internal global i64 33554432, align 8, !dbg !4288
@__param_max_alloc_per_card = internal constant %struct.kernel_param { ptr @__param_str_max_alloc_per_card, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.13 { ptr @max_alloc_per_card } }, section "__param", align 8, !dbg !4245
@__UNIQUE_ID_max_alloc_per_cardtype293 = internal constant [42 x i8] c"snd_pcm.parmtype=max_alloc_per_card:ulong\00", section ".modinfo", align 1, !dbg !4247
@__UNIQUE_ID_max_alloc_per_card294 = internal constant [69 x i8] c"snd_pcm.parm=max_alloc_per_card:Max total allocation bytes per card.\00", section ".modinfo", align 1, !dbg !4252
@__UNIQUE_ID___addressable_snd_pcm_lib_preallocate_free_for_all295 = internal global ptr @snd_pcm_lib_preallocate_free_for_all, section ".discard.addressable", align 8, !dbg !4257
@__UNIQUE_ID___addressable_snd_pcm_lib_preallocate_pages296 = internal global ptr @snd_pcm_lib_preallocate_pages, section ".discard.addressable", align 8, !dbg !4259
@__UNIQUE_ID___addressable_snd_pcm_lib_preallocate_pages_for_all297 = internal global ptr @snd_pcm_lib_preallocate_pages_for_all, section ".discard.addressable", align 8, !dbg !4261
@__UNIQUE_ID___addressable_snd_pcm_set_managed_buffer298 = internal global ptr @snd_pcm_set_managed_buffer, section ".discard.addressable", align 8, !dbg !4263
@__UNIQUE_ID___addressable_snd_pcm_set_managed_buffer_all299 = internal global ptr @snd_pcm_set_managed_buffer_all, section ".discard.addressable", align 8, !dbg !4265
@__UNIQUE_ID___addressable_snd_pcm_lib_malloc_pages300 = internal global ptr @snd_pcm_lib_malloc_pages, section ".discard.addressable", align 8, !dbg !4267
@__UNIQUE_ID___addressable_snd_pcm_lib_free_pages301 = internal global ptr @snd_pcm_lib_free_pages, section ".discard.addressable", align 8, !dbg !4269
@__UNIQUE_ID___addressable__snd_pcm_lib_alloc_vmalloc_buffer302 = internal global ptr @_snd_pcm_lib_alloc_vmalloc_buffer, section ".discard.addressable", align 8, !dbg !4271
@__UNIQUE_ID___addressable_snd_pcm_lib_free_vmalloc_buffer303 = internal global ptr @snd_pcm_lib_free_vmalloc_buffer, section ".discard.addressable", align 8, !dbg !4273
@__UNIQUE_ID___addressable_snd_pcm_lib_get_vmalloc_page304 = internal global ptr @snd_pcm_lib_get_vmalloc_page, section ".discard.addressable", align 8, !dbg !4275
@.str = private unnamed_addr constant [24 x i8] c"sound/core/pcm_memory.c\00", align 1, !dbg !4290
@.str.1 = private unnamed_addr constant [59 x i8] c"\014ALSA pcmC%dD%d%c,%d:%s: cannot preallocate for size %zu\0A\00", align 1, !dbg !4298
@.str.2 = private unnamed_addr constant [9 x i8] c"prealloc\00", align 1, !dbg !4303
@.str.3 = private unnamed_addr constant [13 x i8] c"prealloc_max\00", align 1, !dbg !4308
@.str.4 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1, !dbg !4313
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4318
@llvm.compiler.used = appending global [19 x ptr] [ptr @__param_preallocate_dma, ptr @__UNIQUE_ID_preallocate_dmatype289, ptr @__UNIQUE_ID_preallocate_dma290, ptr @__param_maximum_substreams, ptr @__UNIQUE_ID_maximum_substreamstype291, ptr @__UNIQUE_ID_maximum_substreams292, ptr @__param_max_alloc_per_card, ptr @__UNIQUE_ID_max_alloc_per_cardtype293, ptr @__UNIQUE_ID_max_alloc_per_card294, ptr @__UNIQUE_ID___addressable_snd_pcm_lib_preallocate_free_for_all295, ptr @__UNIQUE_ID___addressable_snd_pcm_lib_preallocate_pages296, ptr @__UNIQUE_ID___addressable_snd_pcm_lib_preallocate_pages_for_all297, ptr @__UNIQUE_ID___addressable_snd_pcm_set_managed_buffer298, ptr @__UNIQUE_ID___addressable_snd_pcm_set_managed_buffer_all299, ptr @__UNIQUE_ID___addressable_snd_pcm_lib_malloc_pages300, ptr @__UNIQUE_ID___addressable_snd_pcm_lib_free_pages301, ptr @__UNIQUE_ID___addressable__snd_pcm_lib_alloc_vmalloc_buffer302, ptr @__UNIQUE_ID___addressable_snd_pcm_lib_free_vmalloc_buffer303, ptr @__UNIQUE_ID___addressable_snd_pcm_lib_get_vmalloc_page304], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_pcm_lib_preallocate_free(ptr noundef %substream) #0 align 16 !dbg !4333 {
entry:
  %substream.addr = alloca ptr, align 8
  store ptr %substream, ptr %substream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %substream.addr, metadata !5333, metadata !DIExpression()), !dbg !5334
  %0 = load ptr, ptr %substream.addr, align 8, !dbg !5335
  %pcm = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 0, !dbg !5336
  %1 = load ptr, ptr %pcm, align 8, !dbg !5336
  %card = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 0, !dbg !5337
  %2 = load ptr, ptr %card, align 8, !dbg !5337
  %3 = load ptr, ptr %substream.addr, align 8, !dbg !5338
  %dma_buffer = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 8, !dbg !5339
  call void @do_free_pages(ptr noundef %2, ptr noundef %dma_buffer) #16, !dbg !5340
  ret void, !dbg !5341
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_free_pages(ptr noundef %card, ptr noundef %dmab) #0 align 16 !dbg !5342 {
entry:
  %card.addr = alloca ptr, align 8
  %dmab.addr = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5346, metadata !DIExpression()), !dbg !5348
  store ptr %dmab, ptr %dmab.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmab.addr, metadata !5347, metadata !DIExpression()), !dbg !5349
  %0 = load ptr, ptr %dmab.addr, align 8, !dbg !5350
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %0, i32 0, i32 1, !dbg !5352
  %1 = load ptr, ptr %area, align 8, !dbg !5352
  %tobool = icmp ne ptr %1, null, !dbg !5350
  br i1 %tobool, label %if.end, label %if.then, !dbg !5353

if.then:                                          ; preds = %entry
  br label %return, !dbg !5354

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %card.addr, align 8, !dbg !5355
  %3 = load ptr, ptr %dmab.addr, align 8, !dbg !5356
  %bytes = getelementptr inbounds %struct.snd_dma_buffer, ptr %3, i32 0, i32 3, !dbg !5357
  %4 = load i64, ptr %bytes, align 8, !dbg !5357
  call void @decrease_allocated_size(ptr noundef %2, i64 noundef %4) #16, !dbg !5358
  %5 = load ptr, ptr %dmab.addr, align 8, !dbg !5359
  call void @snd_dma_free_pages(ptr noundef %5) #16, !dbg !5360
  %6 = load ptr, ptr %dmab.addr, align 8, !dbg !5361
  %area1 = getelementptr inbounds %struct.snd_dma_buffer, ptr %6, i32 0, i32 1, !dbg !5362
  store ptr null, ptr %area1, align 8, !dbg !5363
  br label %return, !dbg !5364

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5364
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_pcm_lib_preallocate_free_for_all(ptr noundef %pcm) #0 align 16 !dbg !5365 {
entry:
  %pcm.addr = alloca ptr, align 8
  %substream = alloca ptr, align 8
  %stream = alloca i32, align 4
  store ptr %pcm, ptr %pcm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pcm.addr, metadata !5367, metadata !DIExpression()), !dbg !5370
  call void @llvm.lifetime.start.p0(i64 8, ptr %substream) #17, !dbg !5371
  call void @llvm.dbg.declare(metadata ptr %substream, metadata !5368, metadata !DIExpression()), !dbg !5372
  call void @llvm.lifetime.start.p0(i64 4, ptr %stream) #17, !dbg !5373
  call void @llvm.dbg.declare(metadata ptr %stream, metadata !5369, metadata !DIExpression()), !dbg !5374
  store i32 0, ptr %stream, align 4, !dbg !5375
  br label %for.cond, !dbg !5375

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %stream, align 4, !dbg !5377
  %cmp = icmp slt i32 %0, 2, !dbg !5377
  br i1 %cmp, label %for.body, label %for.end5, !dbg !5375

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %pcm.addr, align 8, !dbg !5379
  %streams = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 8, !dbg !5379
  %2 = load i32, ptr %stream, align 4, !dbg !5379
  %idxprom = sext i32 %2 to i64, !dbg !5379
  %arrayidx = getelementptr [2 x %struct.snd_pcm_str], ptr %streams, i64 0, i64 %idxprom, !dbg !5379
  %substream1 = getelementptr inbounds %struct.snd_pcm_str, ptr %arrayidx, i32 0, i32 4, !dbg !5379
  %3 = load ptr, ptr %substream1, align 8, !dbg !5379
  store ptr %3, ptr %substream, align 8, !dbg !5379
  br label %for.cond2, !dbg !5379

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load ptr, ptr %substream, align 8, !dbg !5381
  %tobool = icmp ne ptr %4, null, !dbg !5379
  br i1 %tobool, label %for.body3, label %for.end, !dbg !5379

for.body3:                                        ; preds = %for.cond2
  %5 = load ptr, ptr %substream, align 8, !dbg !5383
  call void @snd_pcm_lib_preallocate_free(ptr noundef %5) #16, !dbg !5384
  br label %for.inc, !dbg !5384

for.inc:                                          ; preds = %for.body3
  %6 = load ptr, ptr %substream, align 8, !dbg !5381
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 15, !dbg !5381
  %7 = load ptr, ptr %next, align 8, !dbg !5381
  store ptr %7, ptr %substream, align 8, !dbg !5381
  br label %for.cond2, !dbg !5381, !llvm.loop !5385

for.end:                                          ; preds = %for.cond2
  br label %for.inc4, !dbg !5386

for.inc4:                                         ; preds = %for.end
  %8 = load i32, ptr %stream, align 4, !dbg !5377
  %inc = add i32 %8, 1, !dbg !5377
  store i32 %inc, ptr %stream, align 4, !dbg !5377
  br label %for.cond, !dbg !5377, !llvm.loop !5389

for.end5:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %stream) #17, !dbg !5391
  call void @llvm.lifetime.end.p0(i64 8, ptr %substream) #17, !dbg !5391
  ret void, !dbg !5391
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_pcm_lib_preallocate_pages(ptr noundef %substream, i32 noundef %type, ptr noundef %data, i64 noundef %size, i64 noundef %max) #0 align 16 !dbg !5392 {
entry:
  %substream.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  store ptr %substream, ptr %substream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %substream.addr, metadata !5396, metadata !DIExpression()), !dbg !5401
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5397, metadata !DIExpression()), !dbg !5402
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5398, metadata !DIExpression()), !dbg !5403
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5399, metadata !DIExpression()), !dbg !5404
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !5400, metadata !DIExpression()), !dbg !5405
  %0 = load ptr, ptr %substream.addr, align 8, !dbg !5406
  %1 = load i32, ptr %type.addr, align 4, !dbg !5407
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5408
  %3 = load i64, ptr %size.addr, align 8, !dbg !5409
  %4 = load i64, ptr %max.addr, align 8, !dbg !5410
  %call = call i32 @preallocate_pages(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false) #16, !dbg !5411
  ret void, !dbg !5412
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preallocate_pages(ptr noundef %substream, i32 noundef %type, ptr noundef %data, i64 noundef %size, i64 noundef %max, i1 noundef zeroext %managed) #0 align 16 !dbg !5413 {
entry:
  %retval = alloca i32, align 4
  %substream.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %managed.addr = alloca i8, align 1
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %substream, ptr %substream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %substream.addr, metadata !5417, metadata !DIExpression()), !dbg !5427
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5418, metadata !DIExpression()), !dbg !5428
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5419, metadata !DIExpression()), !dbg !5429
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5420, metadata !DIExpression()), !dbg !5430
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !5421, metadata !DIExpression()), !dbg !5431
  %frombool = zext i1 %managed to i8
  store i8 %frombool, ptr %managed.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %managed.addr, metadata !5422, metadata !DIExpression()), !dbg !5432
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5433
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5423, metadata !DIExpression()), !dbg !5434
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5435
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5424, metadata !DIExpression()), !dbg !5435
  %0 = load ptr, ptr %substream.addr, align 8, !dbg !5435
  %dma_buffer = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 8, !dbg !5435
  %dev = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer, i32 0, i32 0, !dbg !5435
  %type1 = getelementptr inbounds %struct.snd_dma_device, ptr %dev, i32 0, i32 0, !dbg !5435
  %1 = load i32, ptr %type1, align 8, !dbg !5435
  %tobool = icmp ne i32 %1, 0, !dbg !5435
  %lnot = xor i1 %tobool, true, !dbg !5435
  %lnot2 = xor i1 %lnot, true, !dbg !5435
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5435
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5435
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5435
  %tobool3 = icmp ne i32 %2, 0, !dbg !5435
  %lnot4 = xor i1 %tobool3, true, !dbg !5435
  %lnot6 = xor i1 %lnot4, true, !dbg !5435
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5435
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5435
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5435
  store i64 %expval, ptr %tmp, align 8, !dbg !5435
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5436
  %3 = load i64, ptr %tmp, align 8, !dbg !5435
  %tobool8 = icmp ne i64 %3, 0, !dbg !5436
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5437

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5438

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %type.addr, align 4, !dbg !5439
  %5 = load ptr, ptr %substream.addr, align 8, !dbg !5440
  %dma_buffer9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 8, !dbg !5441
  %dev10 = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer9, i32 0, i32 0, !dbg !5442
  %type11 = getelementptr inbounds %struct.snd_dma_device, ptr %dev10, i32 0, i32 0, !dbg !5443
  store i32 %4, ptr %type11, align 8, !dbg !5444
  %6 = load ptr, ptr %data.addr, align 8, !dbg !5445
  %7 = load ptr, ptr %substream.addr, align 8, !dbg !5446
  %dma_buffer12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 8, !dbg !5447
  %dev13 = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer12, i32 0, i32 0, !dbg !5448
  %dev14 = getelementptr inbounds %struct.snd_dma_device, ptr %dev13, i32 0, i32 3, !dbg !5449
  store ptr %6, ptr %dev14, align 8, !dbg !5450
  %8 = load i64, ptr %size.addr, align 8, !dbg !5451
  %cmp = icmp ugt i64 %8, 0, !dbg !5453
  br i1 %cmp, label %if.then16, label %if.end37, !dbg !5454

if.then16:                                        ; preds = %if.end
  %9 = load i64, ptr %max.addr, align 8, !dbg !5455
  %tobool17 = icmp ne i64 %9, 0, !dbg !5455
  br i1 %tobool17, label %if.else, label %if.then18, !dbg !5458

if.then18:                                        ; preds = %if.then16
  %10 = load ptr, ptr %substream.addr, align 8, !dbg !5459
  %11 = load i64, ptr %size.addr, align 8, !dbg !5461
  %call = call i32 @preallocate_pcm_pages(ptr noundef %10, i64 noundef %11, i1 noundef zeroext true) #16, !dbg !5462
  store i32 %call, ptr %err, align 4, !dbg !5463
  %12 = load i32, ptr %err, align 4, !dbg !5464
  %cmp19 = icmp slt i32 %12, 0, !dbg !5466
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !5467

if.then21:                                        ; preds = %if.then18
  %13 = load i32, ptr %err, align 4, !dbg !5468
  store i32 %13, ptr %retval, align 4, !dbg !5469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5469

if.end22:                                         ; preds = %if.then18
  br label %if.end36, !dbg !5470

if.else:                                          ; preds = %if.then16
  %14 = load i32, ptr @preallocate_dma, align 4, !dbg !5471
  %tobool23 = icmp ne i32 %14, 0, !dbg !5471
  br i1 %tobool23, label %land.lhs.true, label %if.end35, !dbg !5473

land.lhs.true:                                    ; preds = %if.else
  %15 = load ptr, ptr %substream.addr, align 8, !dbg !5474
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %15, i32 0, i32 3, !dbg !5475
  %16 = load i32, ptr %number, align 8, !dbg !5475
  %17 = load i32, ptr @maximum_substreams, align 4, !dbg !5476
  %cmp24 = icmp slt i32 %16, %17, !dbg !5477
  br i1 %cmp24, label %if.then26, label %if.end35, !dbg !5478

if.then26:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %substream.addr, align 8, !dbg !5479
  %19 = load i64, ptr %size.addr, align 8, !dbg !5481
  %call27 = call i32 @preallocate_pcm_pages(ptr noundef %18, i64 noundef %19, i1 noundef zeroext false) #16, !dbg !5482
  store i32 %call27, ptr %err, align 4, !dbg !5483
  %20 = load i32, ptr %err, align 4, !dbg !5484
  %cmp28 = icmp slt i32 %20, 0, !dbg !5486
  br i1 %cmp28, label %land.lhs.true30, label %if.end34, !dbg !5487

land.lhs.true30:                                  ; preds = %if.then26
  %21 = load i32, ptr %err, align 4, !dbg !5488
  %cmp31 = icmp ne i32 %21, -12, !dbg !5489
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !5490

if.then33:                                        ; preds = %land.lhs.true30
  %22 = load i32, ptr %err, align 4, !dbg !5491
  store i32 %22, ptr %retval, align 4, !dbg !5492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5492

if.end34:                                         ; preds = %land.lhs.true30, %if.then26
  br label %if.end35, !dbg !5493

if.end35:                                         ; preds = %if.end34, %land.lhs.true, %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end22
  br label %if.end37, !dbg !5494

if.end37:                                         ; preds = %if.end36, %if.end
  %23 = load ptr, ptr %substream.addr, align 8, !dbg !5495
  %dma_buffer38 = getelementptr inbounds %struct.snd_pcm_substream, ptr %23, i32 0, i32 8, !dbg !5497
  %bytes = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer38, i32 0, i32 3, !dbg !5498
  %24 = load i64, ptr %bytes, align 8, !dbg !5498
  %cmp39 = icmp ugt i64 %24, 0, !dbg !5499
  br i1 %cmp39, label %if.then41, label %if.end44, !dbg !5500

if.then41:                                        ; preds = %if.end37
  %25 = load ptr, ptr %substream.addr, align 8, !dbg !5501
  %dma_buffer42 = getelementptr inbounds %struct.snd_pcm_substream, ptr %25, i32 0, i32 8, !dbg !5502
  %bytes43 = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer42, i32 0, i32 3, !dbg !5503
  %26 = load i64, ptr %bytes43, align 8, !dbg !5503
  %27 = load ptr, ptr %substream.addr, align 8, !dbg !5504
  %buffer_bytes_max = getelementptr inbounds %struct.snd_pcm_substream, ptr %27, i32 0, i32 7, !dbg !5505
  store i64 %26, ptr %buffer_bytes_max, align 8, !dbg !5506
  br label %if.end44, !dbg !5504

if.end44:                                         ; preds = %if.then41, %if.end37
  %28 = load i64, ptr %max.addr, align 8, !dbg !5507
  %29 = load ptr, ptr %substream.addr, align 8, !dbg !5508
  %dma_max = getelementptr inbounds %struct.snd_pcm_substream, ptr %29, i32 0, i32 9, !dbg !5509
  store i64 %28, ptr %dma_max, align 8, !dbg !5510
  %30 = load i64, ptr %max.addr, align 8, !dbg !5511
  %cmp45 = icmp ugt i64 %30, 0, !dbg !5513
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !5514

if.then47:                                        ; preds = %if.end44
  %31 = load ptr, ptr %substream.addr, align 8, !dbg !5515
  call void @preallocate_info_init(ptr noundef %31) #16, !dbg !5516
  br label %if.end48, !dbg !5516

if.end48:                                         ; preds = %if.then47, %if.end44
  %32 = load i8, ptr %managed.addr, align 1, !dbg !5517, !range !5519, !noundef !577
  %tobool49 = trunc i8 %32 to i1, !dbg !5517
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !5520

if.then50:                                        ; preds = %if.end48
  %33 = load ptr, ptr %substream.addr, align 8, !dbg !5521
  %managed_buffer_alloc = getelementptr inbounds %struct.snd_pcm_substream, ptr %33, i32 0, i32 25, !dbg !5522
  %bf.load = load i8, ptr %managed_buffer_alloc, align 8, !dbg !5523
  %bf.clear = and i8 %bf.load, -3, !dbg !5523
  %bf.set = or i8 %bf.clear, 2, !dbg !5523
  store i8 %bf.set, ptr %managed_buffer_alloc, align 8, !dbg !5523
  br label %if.end51, !dbg !5521

if.end51:                                         ; preds = %if.then50, %if.end48
  store i32 0, ptr %retval, align 4, !dbg !5524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5524

cleanup:                                          ; preds = %if.end51, %if.then33, %if.then21, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5525
  %34 = load i32, ptr %retval, align 4, !dbg !5525
  ret i32 %34, !dbg !5525
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_pcm_lib_preallocate_pages_for_all(ptr noundef %pcm, i32 noundef %type, ptr noundef %data, i64 noundef %size, i64 noundef %max) #0 align 16 !dbg !5526 {
entry:
  %pcm.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  store ptr %pcm, ptr %pcm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pcm.addr, metadata !5530, metadata !DIExpression()), !dbg !5535
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5531, metadata !DIExpression()), !dbg !5536
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5532, metadata !DIExpression()), !dbg !5537
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5533, metadata !DIExpression()), !dbg !5538
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !5534, metadata !DIExpression()), !dbg !5539
  %0 = load ptr, ptr %pcm.addr, align 8, !dbg !5540
  %1 = load i32, ptr %type.addr, align 4, !dbg !5541
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5542
  %3 = load i64, ptr %size.addr, align 8, !dbg !5543
  %4 = load i64, ptr %max.addr, align 8, !dbg !5544
  %call = call i32 @preallocate_pages_for_all(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false) #16, !dbg !5545
  ret void, !dbg !5546
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preallocate_pages_for_all(ptr noundef %pcm, i32 noundef %type, ptr noundef %data, i64 noundef %size, i64 noundef %max, i1 noundef zeroext %managed) #0 align 16 !dbg !5547 {
entry:
  %retval = alloca i32, align 4
  %pcm.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %managed.addr = alloca i8, align 1
  %substream = alloca ptr, align 8
  %stream = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pcm, ptr %pcm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pcm.addr, metadata !5551, metadata !DIExpression()), !dbg !5560
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5552, metadata !DIExpression()), !dbg !5561
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5553, metadata !DIExpression()), !dbg !5562
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5554, metadata !DIExpression()), !dbg !5563
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !5555, metadata !DIExpression()), !dbg !5564
  %frombool = zext i1 %managed to i8
  store i8 %frombool, ptr %managed.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %managed.addr, metadata !5556, metadata !DIExpression()), !dbg !5565
  call void @llvm.lifetime.start.p0(i64 8, ptr %substream) #17, !dbg !5566
  call void @llvm.dbg.declare(metadata ptr %substream, metadata !5557, metadata !DIExpression()), !dbg !5567
  call void @llvm.lifetime.start.p0(i64 4, ptr %stream) #17, !dbg !5568
  call void @llvm.dbg.declare(metadata ptr %stream, metadata !5558, metadata !DIExpression()), !dbg !5569
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5568
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5559, metadata !DIExpression()), !dbg !5570
  store i32 0, ptr %stream, align 4, !dbg !5571
  br label %for.cond, !dbg !5571

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %stream, align 4, !dbg !5573
  %cmp = icmp slt i32 %0, 2, !dbg !5573
  br i1 %cmp, label %for.body, label %for.end7, !dbg !5571

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %pcm.addr, align 8, !dbg !5575
  %streams = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 8, !dbg !5575
  %2 = load i32, ptr %stream, align 4, !dbg !5575
  %idxprom = sext i32 %2 to i64, !dbg !5575
  %arrayidx = getelementptr [2 x %struct.snd_pcm_str], ptr %streams, i64 0, i64 %idxprom, !dbg !5575
  %substream1 = getelementptr inbounds %struct.snd_pcm_str, ptr %arrayidx, i32 0, i32 4, !dbg !5575
  %3 = load ptr, ptr %substream1, align 8, !dbg !5575
  store ptr %3, ptr %substream, align 8, !dbg !5575
  br label %for.cond2, !dbg !5575

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load ptr, ptr %substream, align 8, !dbg !5577
  %tobool = icmp ne ptr %4, null, !dbg !5575
  br i1 %tobool, label %for.body3, label %for.end, !dbg !5575

for.body3:                                        ; preds = %for.cond2
  %5 = load ptr, ptr %substream, align 8, !dbg !5579
  %6 = load i32, ptr %type.addr, align 4, !dbg !5581
  %7 = load ptr, ptr %data.addr, align 8, !dbg !5582
  %8 = load i64, ptr %size.addr, align 8, !dbg !5583
  %9 = load i64, ptr %max.addr, align 8, !dbg !5584
  %10 = load i8, ptr %managed.addr, align 1, !dbg !5585, !range !5519, !noundef !577
  %tobool4 = trunc i8 %10 to i1, !dbg !5585
  %call = call i32 @preallocate_pages(ptr noundef %5, i32 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, i1 noundef zeroext %tobool4) #16, !dbg !5586
  store i32 %call, ptr %err, align 4, !dbg !5587
  %11 = load i32, ptr %err, align 4, !dbg !5588
  %cmp5 = icmp slt i32 %11, 0, !dbg !5590
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5591

if.then:                                          ; preds = %for.body3
  %12 = load i32, ptr %err, align 4, !dbg !5592
  store i32 %12, ptr %retval, align 4, !dbg !5593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5593

if.end:                                           ; preds = %for.body3
  br label %for.inc, !dbg !5594

for.inc:                                          ; preds = %if.end
  %13 = load ptr, ptr %substream, align 8, !dbg !5577
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %13, i32 0, i32 15, !dbg !5577
  %14 = load ptr, ptr %next, align 8, !dbg !5577
  store ptr %14, ptr %substream, align 8, !dbg !5577
  br label %for.cond2, !dbg !5577, !llvm.loop !5595

for.end:                                          ; preds = %for.cond2
  br label %for.inc6, !dbg !5596

for.inc6:                                         ; preds = %for.end
  %15 = load i32, ptr %stream, align 4, !dbg !5573
  %inc = add i32 %15, 1, !dbg !5573
  store i32 %inc, ptr %stream, align 4, !dbg !5573
  br label %for.cond, !dbg !5573, !llvm.loop !5597

for.end7:                                         ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5599

cleanup:                                          ; preds = %for.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5600
  call void @llvm.lifetime.end.p0(i64 4, ptr %stream) #17, !dbg !5600
  call void @llvm.lifetime.end.p0(i64 8, ptr %substream) #17, !dbg !5600
  %16 = load i32, ptr %retval, align 4, !dbg !5600
  ret i32 %16, !dbg !5600
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_set_managed_buffer(ptr noundef %substream, i32 noundef %type, ptr noundef %data, i64 noundef %size, i64 noundef %max) #0 align 16 !dbg !5601 {
entry:
  %substream.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  store ptr %substream, ptr %substream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %substream.addr, metadata !5605, metadata !DIExpression()), !dbg !5610
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5606, metadata !DIExpression()), !dbg !5611
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5607, metadata !DIExpression()), !dbg !5612
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5608, metadata !DIExpression()), !dbg !5613
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !5609, metadata !DIExpression()), !dbg !5614
  %0 = load ptr, ptr %substream.addr, align 8, !dbg !5615
  %1 = load i32, ptr %type.addr, align 4, !dbg !5616
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5617
  %3 = load i64, ptr %size.addr, align 8, !dbg !5618
  %4 = load i64, ptr %max.addr, align 8, !dbg !5619
  %call = call i32 @preallocate_pages(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true) #16, !dbg !5620
  ret i32 %call, !dbg !5621
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_set_managed_buffer_all(ptr noundef %pcm, i32 noundef %type, ptr noundef %data, i64 noundef %size, i64 noundef %max) #0 align 16 !dbg !5622 {
entry:
  %pcm.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  store ptr %pcm, ptr %pcm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pcm.addr, metadata !5626, metadata !DIExpression()), !dbg !5631
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5627, metadata !DIExpression()), !dbg !5632
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5628, metadata !DIExpression()), !dbg !5633
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5629, metadata !DIExpression()), !dbg !5634
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !5630, metadata !DIExpression()), !dbg !5635
  %0 = load ptr, ptr %pcm.addr, align 8, !dbg !5636
  %1 = load i32, ptr %type.addr, align 4, !dbg !5637
  %2 = load ptr, ptr %data.addr, align 8, !dbg !5638
  %3 = load i64, ptr %size.addr, align 8, !dbg !5639
  %4 = load i64, ptr %max.addr, align 8, !dbg !5640
  %call = call i32 @preallocate_pages_for_all(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true) #16, !dbg !5641
  ret i32 %call, !dbg !5642
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_lib_malloc_pages(ptr noundef %substream, i64 noundef %size) #0 align 16 !dbg !5643 {
entry:
  %retval = alloca i32, align 4
  %substream.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %card = alloca ptr, align 8
  %runtime = alloca ptr, align 8
  %dmab = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on11 = alloca i32, align 4
  %tmp17 = alloca i64, align 8
  %tmp71 = alloca i32, align 4
  store ptr %substream, ptr %substream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %substream.addr, metadata !5647, metadata !DIExpression()), !dbg !5658
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5648, metadata !DIExpression()), !dbg !5659
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #17, !dbg !5660
  call void @llvm.dbg.declare(metadata ptr %card, metadata !5649, metadata !DIExpression()), !dbg !5661
  call void @llvm.lifetime.start.p0(i64 8, ptr %runtime) #17, !dbg !5662
  call void @llvm.dbg.declare(metadata ptr %runtime, metadata !5650, metadata !DIExpression()), !dbg !5663
  call void @llvm.lifetime.start.p0(i64 8, ptr %dmab) #17, !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %dmab, metadata !5651, metadata !DIExpression()), !dbg !5665
  store ptr null, ptr %dmab, align 8, !dbg !5665
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5666
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5652, metadata !DIExpression()), !dbg !5666
  %0 = load ptr, ptr %substream.addr, align 8, !dbg !5666
  %tobool = icmp ne ptr %0, null, !dbg !5666
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5666

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %substream.addr, align 8, !dbg !5666
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11, !dbg !5666
  %2 = load ptr, ptr %runtime1, align 8, !dbg !5666
  %tobool2 = icmp ne ptr %2, null, !dbg !5666
  %lnot = xor i1 %tobool2, true, !dbg !5666
  br label %lor.end, !dbg !5666

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot3 = xor i1 %3, true, !dbg !5666
  %lnot4 = xor i1 %lnot3, true, !dbg !5666
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5666
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5666
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5666
  %tobool5 = icmp ne i32 %4, 0, !dbg !5666
  %lnot6 = xor i1 %tobool5, true, !dbg !5666
  %lnot8 = xor i1 %lnot6, true, !dbg !5666
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5666
  %conv = sext i32 %lnot.ext9 to i64, !dbg !5666
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5666
  store i64 %expval, ptr %tmp, align 8, !dbg !5666
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5667
  %5 = load i64, ptr %tmp, align 8, !dbg !5666
  %tobool10 = icmp ne i64 %5, 0, !dbg !5667
  br i1 %tobool10, label %if.then, label %if.end, !dbg !5668

if.then:                                          ; preds = %lor.end
  store i32 -22, ptr %retval, align 4, !dbg !5669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5669

if.end:                                           ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on11) #17, !dbg !5670
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on11, metadata !5655, metadata !DIExpression()), !dbg !5670
  %6 = load ptr, ptr %substream.addr, align 8, !dbg !5670
  %dma_buffer = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 8, !dbg !5670
  %dev = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer, i32 0, i32 0, !dbg !5670
  %type = getelementptr inbounds %struct.snd_dma_device, ptr %dev, i32 0, i32 0, !dbg !5670
  %7 = load i32, ptr %type, align 8, !dbg !5670
  %cmp = icmp eq i32 %7, 0, !dbg !5670
  %lnot13 = xor i1 %cmp, true, !dbg !5670
  %lnot15 = xor i1 %lnot13, true, !dbg !5670
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !5670
  store i32 %lnot.ext16, ptr %__ret_warn_on11, align 4, !dbg !5670
  %8 = load i32, ptr %__ret_warn_on11, align 4, !dbg !5670
  %tobool18 = icmp ne i32 %8, 0, !dbg !5670
  %lnot19 = xor i1 %tobool18, true, !dbg !5670
  %lnot21 = xor i1 %lnot19, true, !dbg !5670
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5670
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5670
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5670
  store i64 %expval24, ptr %tmp17, align 8, !dbg !5670
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on11) #17, !dbg !5671
  %9 = load i64, ptr %tmp17, align 8, !dbg !5670
  %tobool25 = icmp ne i64 %9, 0, !dbg !5671
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5672

if.then26:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5673

if.end27:                                         ; preds = %if.end
  %10 = load ptr, ptr %substream.addr, align 8, !dbg !5674
  %runtime28 = getelementptr inbounds %struct.snd_pcm_substream, ptr %10, i32 0, i32 11, !dbg !5675
  %11 = load ptr, ptr %runtime28, align 8, !dbg !5675
  store ptr %11, ptr %runtime, align 8, !dbg !5676
  %12 = load ptr, ptr %substream.addr, align 8, !dbg !5677
  %pcm = getelementptr inbounds %struct.snd_pcm_substream, ptr %12, i32 0, i32 0, !dbg !5678
  %13 = load ptr, ptr %pcm, align 8, !dbg !5678
  %card29 = getelementptr inbounds %struct.snd_pcm, ptr %13, i32 0, i32 0, !dbg !5679
  %14 = load ptr, ptr %card29, align 8, !dbg !5679
  store ptr %14, ptr %card, align 8, !dbg !5680
  %15 = load ptr, ptr %runtime, align 8, !dbg !5681
  %dma_buffer_p = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 57, !dbg !5683
  %16 = load ptr, ptr %dma_buffer_p, align 8, !dbg !5683
  %tobool30 = icmp ne ptr %16, null, !dbg !5681
  br i1 %tobool30, label %if.then31, label %if.end37, !dbg !5684

if.then31:                                        ; preds = %if.end27
  %17 = load ptr, ptr %runtime, align 8, !dbg !5685
  %dma_buffer_p32 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 57, !dbg !5688
  %18 = load ptr, ptr %dma_buffer_p32, align 8, !dbg !5688
  %bytes = getelementptr inbounds %struct.snd_dma_buffer, ptr %18, i32 0, i32 3, !dbg !5689
  %19 = load i64, ptr %bytes, align 8, !dbg !5689
  %20 = load i64, ptr %size.addr, align 8, !dbg !5690
  %cmp33 = icmp uge i64 %19, %20, !dbg !5691
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !5692

if.then35:                                        ; preds = %if.then31
  %21 = load i64, ptr %size.addr, align 8, !dbg !5693
  %22 = load ptr, ptr %runtime, align 8, !dbg !5695
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 56, !dbg !5696
  store i64 %21, ptr %dma_bytes, align 8, !dbg !5697
  store i32 0, ptr %retval, align 4, !dbg !5698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5698

if.end36:                                         ; preds = %if.then31
  %23 = load ptr, ptr %substream.addr, align 8, !dbg !5699
  %call = call i32 @snd_pcm_lib_free_pages(ptr noundef %23) #16, !dbg !5700
  br label %if.end37, !dbg !5701

if.end37:                                         ; preds = %if.end36, %if.end27
  %24 = load ptr, ptr %substream.addr, align 8, !dbg !5702
  %dma_buffer38 = getelementptr inbounds %struct.snd_pcm_substream, ptr %24, i32 0, i32 8, !dbg !5704
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer38, i32 0, i32 1, !dbg !5705
  %25 = load ptr, ptr %area, align 8, !dbg !5705
  %cmp39 = icmp ne ptr %25, null, !dbg !5706
  br i1 %cmp39, label %land.lhs.true, label %if.else, !dbg !5707

land.lhs.true:                                    ; preds = %if.end37
  %26 = load ptr, ptr %substream.addr, align 8, !dbg !5708
  %dma_buffer41 = getelementptr inbounds %struct.snd_pcm_substream, ptr %26, i32 0, i32 8, !dbg !5709
  %bytes42 = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer41, i32 0, i32 3, !dbg !5710
  %27 = load i64, ptr %bytes42, align 8, !dbg !5710
  %28 = load i64, ptr %size.addr, align 8, !dbg !5711
  %cmp43 = icmp uge i64 %27, %28, !dbg !5712
  br i1 %cmp43, label %if.then45, label %if.else, !dbg !5713

if.then45:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %substream.addr, align 8, !dbg !5714
  %dma_buffer46 = getelementptr inbounds %struct.snd_pcm_substream, ptr %29, i32 0, i32 8, !dbg !5716
  store ptr %dma_buffer46, ptr %dmab, align 8, !dbg !5717
  br label %if.end73, !dbg !5718

if.else:                                          ; preds = %land.lhs.true, %if.end37
  %30 = load ptr, ptr %substream.addr, align 8, !dbg !5719
  %dma_buffer47 = getelementptr inbounds %struct.snd_pcm_substream, ptr %30, i32 0, i32 8, !dbg !5722
  %area48 = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer47, i32 0, i32 1, !dbg !5723
  %31 = load ptr, ptr %area48, align 8, !dbg !5723
  %tobool49 = icmp ne ptr %31, null, !dbg !5719
  br i1 %tobool49, label %land.lhs.true50, label %if.end53, !dbg !5724

land.lhs.true50:                                  ; preds = %if.else
  %32 = load ptr, ptr %substream.addr, align 8, !dbg !5725
  %dma_max = getelementptr inbounds %struct.snd_pcm_substream, ptr %32, i32 0, i32 9, !dbg !5726
  %33 = load i64, ptr %dma_max, align 8, !dbg !5726
  %tobool51 = icmp ne i64 %33, 0, !dbg !5725
  br i1 %tobool51, label %if.end53, label %if.then52, !dbg !5727

if.then52:                                        ; preds = %land.lhs.true50
  store i32 -12, ptr %retval, align 4, !dbg !5728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5728

if.end53:                                         ; preds = %land.lhs.true50, %if.else
  %call54 = call noalias ptr @kzalloc(i64 noundef 56, i32 noundef 3264) #18, !dbg !5729
  store ptr %call54, ptr %dmab, align 8, !dbg !5730
  %34 = load ptr, ptr %dmab, align 8, !dbg !5731
  %tobool55 = icmp ne ptr %34, null, !dbg !5731
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !5733

if.then56:                                        ; preds = %if.end53
  store i32 -12, ptr %retval, align 4, !dbg !5734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5734

if.end57:                                         ; preds = %if.end53
  %35 = load ptr, ptr %dmab, align 8, !dbg !5735
  %dev58 = getelementptr inbounds %struct.snd_dma_buffer, ptr %35, i32 0, i32 0, !dbg !5736
  %36 = load ptr, ptr %substream.addr, align 8, !dbg !5737
  %dma_buffer59 = getelementptr inbounds %struct.snd_pcm_substream, ptr %36, i32 0, i32 8, !dbg !5738
  %dev60 = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer59, i32 0, i32 0, !dbg !5739
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dev58, ptr align 8 %dev60, i64 24, i1 false), !dbg !5739
  %37 = load ptr, ptr %card, align 8, !dbg !5740
  %38 = load ptr, ptr %substream.addr, align 8, !dbg !5742
  %dma_buffer61 = getelementptr inbounds %struct.snd_pcm_substream, ptr %38, i32 0, i32 8, !dbg !5743
  %dev62 = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer61, i32 0, i32 0, !dbg !5744
  %type63 = getelementptr inbounds %struct.snd_dma_device, ptr %dev62, i32 0, i32 0, !dbg !5745
  %39 = load i32, ptr %type63, align 8, !dbg !5745
  %40 = load ptr, ptr %substream.addr, align 8, !dbg !5746
  %dma_buffer64 = getelementptr inbounds %struct.snd_pcm_substream, ptr %40, i32 0, i32 8, !dbg !5747
  %dev65 = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer64, i32 0, i32 0, !dbg !5748
  %dev66 = getelementptr inbounds %struct.snd_dma_device, ptr %dev65, i32 0, i32 3, !dbg !5749
  %41 = load ptr, ptr %dev66, align 8, !dbg !5749
  %42 = load ptr, ptr %substream.addr, align 8, !dbg !5750
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %42, i32 0, i32 5, !dbg !5751
  %43 = load i32, ptr %stream, align 4, !dbg !5751
  %44 = load i64, ptr %size.addr, align 8, !dbg !5752
  %45 = load ptr, ptr %dmab, align 8, !dbg !5753
  %call67 = call i32 @do_alloc_pages(ptr noundef %37, i32 noundef %39, ptr noundef %41, i32 noundef %43, i64 noundef %44, ptr noundef %45) #16, !dbg !5754
  %cmp68 = icmp slt i32 %call67, 0, !dbg !5755
  br i1 %cmp68, label %if.then70, label %if.end72, !dbg !5756

if.then70:                                        ; preds = %if.end57
  %46 = load ptr, ptr %dmab, align 8, !dbg !5757
  call void @kfree(ptr noundef %46) #16, !dbg !5759
  store i32 0, ptr %tmp71, align 4, !dbg !5760
  %47 = load i32, ptr %tmp71, align 4, !dbg !5763
  store i32 -12, ptr %retval, align 4, !dbg !5764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5764

if.end72:                                         ; preds = %if.end57
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then45
  %48 = load ptr, ptr %substream.addr, align 8, !dbg !5765
  %49 = load ptr, ptr %dmab, align 8, !dbg !5766
  call void @snd_pcm_set_runtime_buffer(ptr noundef %48, ptr noundef %49) #16, !dbg !5767
  %50 = load i64, ptr %size.addr, align 8, !dbg !5768
  %51 = load ptr, ptr %runtime, align 8, !dbg !5769
  %dma_bytes74 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %51, i32 0, i32 56, !dbg !5770
  store i64 %50, ptr %dma_bytes74, align 8, !dbg !5771
  store i32 1, ptr %retval, align 4, !dbg !5772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5772

cleanup:                                          ; preds = %if.end73, %if.then70, %if.then56, %if.then52, %if.then35, %if.then26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dmab) #17, !dbg !5773
  call void @llvm.lifetime.end.p0(i64 8, ptr %runtime) #17, !dbg !5773
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #17, !dbg !5773
  %52 = load i32, ptr %retval, align 4, !dbg !5773
  ret i32 %52, !dbg !5773
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_lib_free_pages(ptr noundef %substream) #0 align 16 !dbg !5774 {
entry:
  %retval = alloca i32, align 4
  %substream.addr = alloca ptr, align 8
  %runtime = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %card = alloca ptr, align 8
  store ptr %substream, ptr %substream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %substream.addr, metadata !5776, metadata !DIExpression()), !dbg !5784
  call void @llvm.lifetime.start.p0(i64 8, ptr %runtime) #17, !dbg !5785
  call void @llvm.dbg.declare(metadata ptr %runtime, metadata !5777, metadata !DIExpression()), !dbg !5786
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5787
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5778, metadata !DIExpression()), !dbg !5787
  %0 = load ptr, ptr %substream.addr, align 8, !dbg !5787
  %tobool = icmp ne ptr %0, null, !dbg !5787
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5787

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %substream.addr, align 8, !dbg !5787
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11, !dbg !5787
  %2 = load ptr, ptr %runtime1, align 8, !dbg !5787
  %tobool2 = icmp ne ptr %2, null, !dbg !5787
  %lnot = xor i1 %tobool2, true, !dbg !5787
  br label %lor.end, !dbg !5787

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot3 = xor i1 %3, true, !dbg !5787
  %lnot4 = xor i1 %lnot3, true, !dbg !5787
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5787
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5787
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5787
  %tobool5 = icmp ne i32 %4, 0, !dbg !5787
  %lnot6 = xor i1 %tobool5, true, !dbg !5787
  %lnot8 = xor i1 %lnot6, true, !dbg !5787
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5787
  %conv = sext i32 %lnot.ext9 to i64, !dbg !5787
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5787
  store i64 %expval, ptr %tmp, align 8, !dbg !5787
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5788
  %5 = load i64, ptr %tmp, align 8, !dbg !5787
  %tobool10 = icmp ne i64 %5, 0, !dbg !5788
  br i1 %tobool10, label %if.then, label %if.end, !dbg !5789

if.then:                                          ; preds = %lor.end
  store i32 -22, ptr %retval, align 4, !dbg !5790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5790

if.end:                                           ; preds = %lor.end
  %6 = load ptr, ptr %substream.addr, align 8, !dbg !5791
  %runtime11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 11, !dbg !5792
  %7 = load ptr, ptr %runtime11, align 8, !dbg !5792
  store ptr %7, ptr %runtime, align 8, !dbg !5793
  %8 = load ptr, ptr %runtime, align 8, !dbg !5794
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 54, !dbg !5796
  %9 = load ptr, ptr %dma_area, align 8, !dbg !5796
  %cmp = icmp eq ptr %9, null, !dbg !5797
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !5798

if.then13:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5799

if.end14:                                         ; preds = %if.end
  %10 = load ptr, ptr %runtime, align 8, !dbg !5800
  %dma_buffer_p = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 57, !dbg !5801
  %11 = load ptr, ptr %dma_buffer_p, align 8, !dbg !5801
  %12 = load ptr, ptr %substream.addr, align 8, !dbg !5802
  %dma_buffer = getelementptr inbounds %struct.snd_pcm_substream, ptr %12, i32 0, i32 8, !dbg !5803
  %cmp15 = icmp ne ptr %11, %dma_buffer, !dbg !5804
  br i1 %cmp15, label %if.then17, label %if.end21, !dbg !5805

if.then17:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #17, !dbg !5806
  call void @llvm.dbg.declare(metadata ptr %card, metadata !5781, metadata !DIExpression()), !dbg !5807
  %13 = load ptr, ptr %substream.addr, align 8, !dbg !5808
  %pcm = getelementptr inbounds %struct.snd_pcm_substream, ptr %13, i32 0, i32 0, !dbg !5809
  %14 = load ptr, ptr %pcm, align 8, !dbg !5809
  %card18 = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 0, !dbg !5810
  %15 = load ptr, ptr %card18, align 8, !dbg !5810
  store ptr %15, ptr %card, align 8, !dbg !5807
  %16 = load ptr, ptr %card, align 8, !dbg !5811
  %17 = load ptr, ptr %runtime, align 8, !dbg !5812
  %dma_buffer_p19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 57, !dbg !5813
  %18 = load ptr, ptr %dma_buffer_p19, align 8, !dbg !5813
  call void @do_free_pages(ptr noundef %16, ptr noundef %18) #16, !dbg !5814
  %19 = load ptr, ptr %runtime, align 8, !dbg !5815
  %dma_buffer_p20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 57, !dbg !5816
  %20 = load ptr, ptr %dma_buffer_p20, align 8, !dbg !5816
  call void @kfree(ptr noundef %20) #16, !dbg !5817
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #17, !dbg !5818
  br label %if.end21, !dbg !5819

if.end21:                                         ; preds = %if.then17, %if.end14
  %21 = load ptr, ptr %substream.addr, align 8, !dbg !5820
  call void @snd_pcm_set_runtime_buffer(ptr noundef %21, ptr noundef null) #16, !dbg !5821
  store i32 0, ptr %retval, align 4, !dbg !5822
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5822

cleanup:                                          ; preds = %if.end21, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %runtime) #17, !dbg !5823
  %22 = load i32, ptr %retval, align 4, !dbg !5823
  ret i32 %22, !dbg !5823
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !5824 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5828, metadata !DIExpression()), !dbg !5830
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5829, metadata !DIExpression()), !dbg !5831
  %0 = load i64, ptr %size.addr, align 8, !dbg !5832
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5833
  %or = or i32 %1, 256, !dbg !5834
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5835
  ret ptr %call, !dbg !5836
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_alloc_pages(ptr noundef %card, i32 noundef %type, ptr noundef %dev, i32 noundef %str, i64 noundef %size, ptr noundef %dmab) #0 align 16 !dbg !5837 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %str.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %dmab.addr = alloca ptr, align 8
  %dir = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5841, metadata !DIExpression()), !dbg !5849
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5842, metadata !DIExpression()), !dbg !5850
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5843, metadata !DIExpression()), !dbg !5851
  store i32 %str, ptr %str.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5844, metadata !DIExpression()), !dbg !5852
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5845, metadata !DIExpression()), !dbg !5853
  store ptr %dmab, ptr %dmab.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmab.addr, metadata !5846, metadata !DIExpression()), !dbg !5854
  call void @llvm.lifetime.start.p0(i64 4, ptr %dir) #17, !dbg !5855
  call void @llvm.dbg.declare(metadata ptr %dir, metadata !5847, metadata !DIExpression()), !dbg !5856
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5857
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5848, metadata !DIExpression()), !dbg !5858
  %0 = load ptr, ptr %card.addr, align 8, !dbg !5859
  %memory_mutex = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 39, !dbg !5860
  call void @mutex_lock(ptr noundef %memory_mutex) #16, !dbg !5861
  %1 = load i64, ptr @max_alloc_per_card, align 8, !dbg !5862
  %tobool = icmp ne i64 %1, 0, !dbg !5862
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5864

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %card.addr, align 8, !dbg !5865
  %total_pcm_alloc_bytes = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 38, !dbg !5866
  %3 = load i64, ptr %total_pcm_alloc_bytes, align 8, !dbg !5866
  %4 = load i64, ptr %size.addr, align 8, !dbg !5867
  %add = add i64 %3, %4, !dbg !5868
  %5 = load i64, ptr @max_alloc_per_card, align 8, !dbg !5869
  %cmp = icmp ugt i64 %add, %5, !dbg !5870
  br i1 %cmp, label %if.then, label %if.end, !dbg !5871

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %card.addr, align 8, !dbg !5872
  %memory_mutex1 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 39, !dbg !5874
  call void @mutex_unlock(ptr noundef %memory_mutex1) #16, !dbg !5875
  store i32 -12, ptr %retval, align 4, !dbg !5876
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5876

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr %card.addr, align 8, !dbg !5877
  %8 = load i64, ptr %size.addr, align 8, !dbg !5878
  call void @__update_allocated_size(ptr noundef %7, i64 noundef %8) #16, !dbg !5879
  %9 = load ptr, ptr %card.addr, align 8, !dbg !5880
  %memory_mutex2 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 39, !dbg !5881
  call void @mutex_unlock(ptr noundef %memory_mutex2) #16, !dbg !5882
  %10 = load i32, ptr %str.addr, align 4, !dbg !5883
  %cmp3 = icmp eq i32 %10, 0, !dbg !5885
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !5886

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %dir, align 4, !dbg !5887
  br label %if.end5, !dbg !5888

if.else:                                          ; preds = %if.end
  store i32 2, ptr %dir, align 4, !dbg !5889
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %11 = load i32, ptr %type.addr, align 4, !dbg !5890
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5891
  %13 = load i32, ptr %dir, align 4, !dbg !5892
  %14 = load i64, ptr %size.addr, align 8, !dbg !5893
  %15 = load ptr, ptr %dmab.addr, align 8, !dbg !5894
  %call = call i32 @snd_dma_alloc_dir_pages(i32 noundef %11, ptr noundef %12, i32 noundef %13, i64 noundef %14, ptr noundef %15) #16, !dbg !5895
  store i32 %call, ptr %err, align 4, !dbg !5896
  %16 = load i32, ptr %err, align 4, !dbg !5897
  %tobool6 = icmp ne i32 %16, 0, !dbg !5897
  br i1 %tobool6, label %if.else12, label %if.then7, !dbg !5899

if.then7:                                         ; preds = %if.end5
  %17 = load ptr, ptr %dmab.addr, align 8, !dbg !5900
  %bytes = getelementptr inbounds %struct.snd_dma_buffer, ptr %17, i32 0, i32 3, !dbg !5903
  %18 = load i64, ptr %bytes, align 8, !dbg !5903
  %19 = load i64, ptr %size.addr, align 8, !dbg !5904
  %cmp8 = icmp ne i64 %18, %19, !dbg !5905
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !5906

if.then9:                                         ; preds = %if.then7
  %20 = load ptr, ptr %card.addr, align 8, !dbg !5907
  %21 = load ptr, ptr %dmab.addr, align 8, !dbg !5908
  %bytes10 = getelementptr inbounds %struct.snd_dma_buffer, ptr %21, i32 0, i32 3, !dbg !5909
  %22 = load i64, ptr %bytes10, align 8, !dbg !5909
  %23 = load i64, ptr %size.addr, align 8, !dbg !5910
  %sub = sub i64 %22, %23, !dbg !5911
  call void @update_allocated_size(ptr noundef %20, i64 noundef %sub) #16, !dbg !5912
  br label %if.end11, !dbg !5912

if.end11:                                         ; preds = %if.then9, %if.then7
  br label %if.end13, !dbg !5913

if.else12:                                        ; preds = %if.end5
  %24 = load ptr, ptr %card.addr, align 8, !dbg !5914
  %25 = load i64, ptr %size.addr, align 8, !dbg !5916
  call void @decrease_allocated_size(ptr noundef %24, i64 noundef %25) #16, !dbg !5917
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.end11
  %26 = load i32, ptr %err, align 4, !dbg !5918
  store i32 %26, ptr %retval, align 4, !dbg !5919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5919

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 4, ptr %dir) #17, !dbg !5920
  %27 = load i32, ptr %retval, align 4, !dbg !5920
  ret i32 %27, !dbg !5920
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5921 dso_local void @kfree(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_pcm_set_runtime_buffer(ptr noundef %substream, ptr noundef %bufp) #7 align 16 !dbg !5924 {
entry:
  %substream.addr = alloca ptr, align 8
  %bufp.addr = alloca ptr, align 8
  %runtime = alloca ptr, align 8
  store ptr %substream, ptr %substream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %substream.addr, metadata !5928, metadata !DIExpression()), !dbg !5931
  store ptr %bufp, ptr %bufp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bufp.addr, metadata !5929, metadata !DIExpression()), !dbg !5932
  call void @llvm.lifetime.start.p0(i64 8, ptr %runtime) #17, !dbg !5933
  call void @llvm.dbg.declare(metadata ptr %runtime, metadata !5930, metadata !DIExpression()), !dbg !5934
  %0 = load ptr, ptr %substream.addr, align 8, !dbg !5935
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11, !dbg !5936
  %1 = load ptr, ptr %runtime1, align 8, !dbg !5936
  store ptr %1, ptr %runtime, align 8, !dbg !5934
  %2 = load ptr, ptr %bufp.addr, align 8, !dbg !5937
  %tobool = icmp ne ptr %2, null, !dbg !5937
  br i1 %tobool, label %if.then, label %if.else, !dbg !5939

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %bufp.addr, align 8, !dbg !5940
  %4 = load ptr, ptr %runtime, align 8, !dbg !5942
  %dma_buffer_p = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 57, !dbg !5943
  store ptr %3, ptr %dma_buffer_p, align 8, !dbg !5944
  %5 = load ptr, ptr %bufp.addr, align 8, !dbg !5945
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %5, i32 0, i32 1, !dbg !5946
  %6 = load ptr, ptr %area, align 8, !dbg !5946
  %7 = load ptr, ptr %runtime, align 8, !dbg !5947
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 54, !dbg !5948
  store ptr %6, ptr %dma_area, align 8, !dbg !5949
  %8 = load ptr, ptr %bufp.addr, align 8, !dbg !5950
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %8, i32 0, i32 2, !dbg !5951
  %9 = load i64, ptr %addr, align 8, !dbg !5951
  %10 = load ptr, ptr %runtime, align 8, !dbg !5952
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 55, !dbg !5953
  store i64 %9, ptr %dma_addr, align 8, !dbg !5954
  %11 = load ptr, ptr %bufp.addr, align 8, !dbg !5955
  %bytes = getelementptr inbounds %struct.snd_dma_buffer, ptr %11, i32 0, i32 3, !dbg !5956
  %12 = load i64, ptr %bytes, align 8, !dbg !5956
  %13 = load ptr, ptr %runtime, align 8, !dbg !5957
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 56, !dbg !5958
  store i64 %12, ptr %dma_bytes, align 8, !dbg !5959
  br label %if.end, !dbg !5960

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %runtime, align 8, !dbg !5961
  %dma_buffer_p2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 57, !dbg !5963
  store ptr null, ptr %dma_buffer_p2, align 8, !dbg !5964
  %15 = load ptr, ptr %runtime, align 8, !dbg !5965
  %dma_area3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 54, !dbg !5966
  store ptr null, ptr %dma_area3, align 8, !dbg !5967
  %16 = load ptr, ptr %runtime, align 8, !dbg !5968
  %dma_addr4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 55, !dbg !5969
  store i64 0, ptr %dma_addr4, align 8, !dbg !5970
  %17 = load ptr, ptr %runtime, align 8, !dbg !5971
  %dma_bytes5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 56, !dbg !5972
  store i64 0, ptr %dma_bytes5, align 8, !dbg !5973
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %runtime) #17, !dbg !5974
  ret void, !dbg !5974
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_snd_pcm_lib_alloc_vmalloc_buffer(ptr noundef %substream, i64 noundef %size, i32 noundef %gfp_flags) #0 align 16 !dbg !5975 {
entry:
  %retval = alloca i32, align 4
  %substream.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp_flags.addr = alloca i32, align 4
  %runtime = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %substream, ptr %substream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %substream.addr, metadata !5979, metadata !DIExpression()), !dbg !5986
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5980, metadata !DIExpression()), !dbg !5987
  store i32 %gfp_flags, ptr %gfp_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_flags.addr, metadata !5981, metadata !DIExpression()), !dbg !5988
  call void @llvm.lifetime.start.p0(i64 8, ptr %runtime) #17, !dbg !5989
  call void @llvm.dbg.declare(metadata ptr %runtime, metadata !5982, metadata !DIExpression()), !dbg !5990
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5991
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5983, metadata !DIExpression()), !dbg !5991
  %0 = load ptr, ptr %substream.addr, align 8, !dbg !5991
  %tobool = icmp ne ptr %0, null, !dbg !5991
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5991

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %substream.addr, align 8, !dbg !5991
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11, !dbg !5991
  %2 = load ptr, ptr %runtime1, align 8, !dbg !5991
  %tobool2 = icmp ne ptr %2, null, !dbg !5991
  %lnot = xor i1 %tobool2, true, !dbg !5991
  br label %lor.end, !dbg !5991

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot3 = xor i1 %3, true, !dbg !5991
  %lnot4 = xor i1 %lnot3, true, !dbg !5991
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5991
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5991
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5991
  %tobool5 = icmp ne i32 %4, 0, !dbg !5991
  %lnot6 = xor i1 %tobool5, true, !dbg !5991
  %lnot8 = xor i1 %lnot6, true, !dbg !5991
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !5991
  %conv = sext i32 %lnot.ext9 to i64, !dbg !5991
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5991
  store i64 %expval, ptr %tmp, align 8, !dbg !5991
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5992
  %5 = load i64, ptr %tmp, align 8, !dbg !5991
  %tobool10 = icmp ne i64 %5, 0, !dbg !5992
  br i1 %tobool10, label %if.then, label %if.end, !dbg !5993

if.then:                                          ; preds = %lor.end
  store i32 -22, ptr %retval, align 4, !dbg !5994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5994

if.end:                                           ; preds = %lor.end
  %6 = load ptr, ptr %substream.addr, align 8, !dbg !5995
  %runtime11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 11, !dbg !5996
  %7 = load ptr, ptr %runtime11, align 8, !dbg !5996
  store ptr %7, ptr %runtime, align 8, !dbg !5997
  %8 = load ptr, ptr %runtime, align 8, !dbg !5998
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 54, !dbg !6000
  %9 = load ptr, ptr %dma_area, align 8, !dbg !6000
  %tobool12 = icmp ne ptr %9, null, !dbg !5998
  br i1 %tobool12, label %if.then13, label %if.end18, !dbg !6001

if.then13:                                        ; preds = %if.end
  %10 = load ptr, ptr %runtime, align 8, !dbg !6002
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 56, !dbg !6005
  %11 = load i64, ptr %dma_bytes, align 8, !dbg !6005
  %12 = load i64, ptr %size.addr, align 8, !dbg !6006
  %cmp = icmp uge i64 %11, %12, !dbg !6007
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !6008

if.then15:                                        ; preds = %if.then13
  store i32 0, ptr %retval, align 4, !dbg !6009
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6009

if.end16:                                         ; preds = %if.then13
  %13 = load ptr, ptr %runtime, align 8, !dbg !6010
  %dma_area17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 54, !dbg !6011
  %14 = load ptr, ptr %dma_area17, align 8, !dbg !6011
  call void @vfree(ptr noundef %14) #16, !dbg !6012
  br label %if.end18, !dbg !6013

if.end18:                                         ; preds = %if.end16, %if.end
  %15 = load i64, ptr %size.addr, align 8, !dbg !6014
  %16 = load i32, ptr %gfp_flags.addr, align 4, !dbg !6015
  %call = call noalias ptr @__vmalloc(i64 noundef %15, i32 noundef %16) #18, !dbg !6016
  %17 = load ptr, ptr %runtime, align 8, !dbg !6017
  %dma_area19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 54, !dbg !6018
  store ptr %call, ptr %dma_area19, align 8, !dbg !6019
  %18 = load ptr, ptr %runtime, align 8, !dbg !6020
  %dma_area20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 54, !dbg !6022
  %19 = load ptr, ptr %dma_area20, align 8, !dbg !6022
  %tobool21 = icmp ne ptr %19, null, !dbg !6020
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !6023

if.then22:                                        ; preds = %if.end18
  store i32 -12, ptr %retval, align 4, !dbg !6024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6024

if.end23:                                         ; preds = %if.end18
  %20 = load i64, ptr %size.addr, align 8, !dbg !6025
  %21 = load ptr, ptr %runtime, align 8, !dbg !6026
  %dma_bytes24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 56, !dbg !6027
  store i64 %20, ptr %dma_bytes24, align 8, !dbg !6028
  store i32 1, ptr %retval, align 4, !dbg !6029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6029

cleanup:                                          ; preds = %if.end23, %if.then22, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %runtime) #17, !dbg !6030
  %22 = load i32, ptr %retval, align 4, !dbg !6030
  ret i32 %22, !dbg !6030
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6031 dso_local void @vfree(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6032 dso_local noalias ptr @__vmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_lib_free_vmalloc_buffer(ptr noundef %substream) #0 align 16 !dbg !6035 {
entry:
  %retval = alloca i32, align 4
  %substream.addr = alloca ptr, align 8
  %runtime = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %substream, ptr %substream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %substream.addr, metadata !6037, metadata !DIExpression()), !dbg !6042
  call void @llvm.lifetime.start.p0(i64 8, ptr %runtime) #17, !dbg !6043
  call void @llvm.dbg.declare(metadata ptr %runtime, metadata !6038, metadata !DIExpression()), !dbg !6044
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6045
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6039, metadata !DIExpression()), !dbg !6045
  %0 = load ptr, ptr %substream.addr, align 8, !dbg !6045
  %tobool = icmp ne ptr %0, null, !dbg !6045
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !6045

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %substream.addr, align 8, !dbg !6045
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11, !dbg !6045
  %2 = load ptr, ptr %runtime1, align 8, !dbg !6045
  %tobool2 = icmp ne ptr %2, null, !dbg !6045
  %lnot = xor i1 %tobool2, true, !dbg !6045
  br label %lor.end, !dbg !6045

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot3 = xor i1 %3, true, !dbg !6045
  %lnot4 = xor i1 %lnot3, true, !dbg !6045
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6045
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6045
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6045
  %tobool5 = icmp ne i32 %4, 0, !dbg !6045
  %lnot6 = xor i1 %tobool5, true, !dbg !6045
  %lnot8 = xor i1 %lnot6, true, !dbg !6045
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6045
  %conv = sext i32 %lnot.ext9 to i64, !dbg !6045
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6045
  store i64 %expval, ptr %tmp, align 8, !dbg !6045
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6046
  %5 = load i64, ptr %tmp, align 8, !dbg !6045
  %tobool10 = icmp ne i64 %5, 0, !dbg !6046
  br i1 %tobool10, label %if.then, label %if.end, !dbg !6047

if.then:                                          ; preds = %lor.end
  store i32 -22, ptr %retval, align 4, !dbg !6048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6048

if.end:                                           ; preds = %lor.end
  %6 = load ptr, ptr %substream.addr, align 8, !dbg !6049
  %runtime11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 11, !dbg !6050
  %7 = load ptr, ptr %runtime11, align 8, !dbg !6050
  store ptr %7, ptr %runtime, align 8, !dbg !6051
  %8 = load ptr, ptr %runtime, align 8, !dbg !6052
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 54, !dbg !6053
  %9 = load ptr, ptr %dma_area, align 8, !dbg !6053
  call void @vfree(ptr noundef %9) #16, !dbg !6054
  %10 = load ptr, ptr %runtime, align 8, !dbg !6055
  %dma_area12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 54, !dbg !6056
  store ptr null, ptr %dma_area12, align 8, !dbg !6057
  store i32 0, ptr %retval, align 4, !dbg !6058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6058

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %runtime) #17, !dbg !6059
  %11 = load i32, ptr %retval, align 4, !dbg !6059
  ret i32 %11, !dbg !6059
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_pcm_lib_get_vmalloc_page(ptr noundef %substream, i64 noundef %offset) #0 align 16 !dbg !6060 {
entry:
  %substream.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  store ptr %substream, ptr %substream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %substream.addr, metadata !6062, metadata !DIExpression()), !dbg !6064
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6063, metadata !DIExpression()), !dbg !6065
  %0 = load ptr, ptr %substream.addr, align 8, !dbg !6066
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11, !dbg !6067
  %1 = load ptr, ptr %runtime, align 8, !dbg !6067
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 54, !dbg !6068
  %2 = load ptr, ptr %dma_area, align 8, !dbg !6068
  %3 = load i64, ptr %offset.addr, align 8, !dbg !6069
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !6070
  %call = call ptr @vmalloc_to_page(ptr noundef %add.ptr) #16, !dbg !6071
  ret ptr %call, !dbg !6072
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6073 dso_local ptr @vmalloc_to_page(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @decrease_allocated_size(ptr noundef %card, i64 noundef %bytes) #0 align 16 !dbg !6076 {
entry:
  %card.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !6080, metadata !DIExpression()), !dbg !6087
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6081, metadata !DIExpression()), !dbg !6088
  %0 = load ptr, ptr %card.addr, align 8, !dbg !6089
  %memory_mutex = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 39, !dbg !6090
  call void @mutex_lock(ptr noundef %memory_mutex) #16, !dbg !6091
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6092
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6082, metadata !DIExpression()), !dbg !6092
  %1 = load ptr, ptr %card.addr, align 8, !dbg !6092
  %total_pcm_alloc_bytes = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38, !dbg !6092
  %2 = load i64, ptr %total_pcm_alloc_bytes, align 8, !dbg !6092
  %3 = load i64, ptr %bytes.addr, align 8, !dbg !6092
  %cmp = icmp ult i64 %2, %3, !dbg !6092
  %lnot = xor i1 %cmp, true, !dbg !6092
  %lnot1 = xor i1 %lnot, true, !dbg !6092
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6092
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6092
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6093
  %tobool = icmp ne i32 %4, 0, !dbg !6093
  %lnot2 = xor i1 %tobool, true, !dbg !6093
  %lnot4 = xor i1 %lnot2, true, !dbg !6093
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6093
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6093
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6093
  %tobool6 = icmp ne i64 %expval, 0, !dbg !6093
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6092

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6093

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6094
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6084, metadata !DIExpression()), !dbg !6094
  store i32 2305, ptr %__flags, align 4, !dbg !6094
  br label %do.body7, !dbg !6094

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !6095

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !6095

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !6094

do.body8:                                         ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !6097
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 49, i32 %5, i64 12) #17, !dbg !6097, !srcloc !6099
  br label %do.cond9, !dbg !6097

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6097

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !6094

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !6100

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6100

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6093
  br label %do.cond14, !dbg !6094

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !6094

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !6094

if.end:                                           ; preds = %do.end15, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6092
  %tobool16 = icmp ne i32 %6, 0, !dbg !6092
  %lnot17 = xor i1 %tobool16, true, !dbg !6092
  %lnot19 = xor i1 %lnot17, true, !dbg !6092
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !6092
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !6092
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !6092
  store i64 %expval22, ptr %tmp, align 8, !dbg !6093
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6102
  %7 = load i64, ptr %tmp, align 8, !dbg !6092
  %8 = load ptr, ptr %card.addr, align 8, !dbg !6103
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6104
  %sub = sub i64 0, %9, !dbg !6105
  call void @__update_allocated_size(ptr noundef %8, i64 noundef %sub) #16, !dbg !6106
  %10 = load ptr, ptr %card.addr, align 8, !dbg !6107
  %memory_mutex23 = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 39, !dbg !6108
  call void @mutex_unlock(ptr noundef %memory_mutex23) #16, !dbg !6109
  ret void, !dbg !6110
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6111 dso_local void @snd_dma_free_pages(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6114 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__update_allocated_size(ptr noundef %card, i64 noundef %bytes) #0 align 16 !dbg !6118 {
entry:
  %card.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !6122, metadata !DIExpression()), !dbg !6124
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6123, metadata !DIExpression()), !dbg !6125
  %0 = load i64, ptr %bytes.addr, align 8, !dbg !6126
  %1 = load ptr, ptr %card.addr, align 8, !dbg !6127
  %total_pcm_alloc_bytes = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38, !dbg !6128
  %2 = load i64, ptr %total_pcm_alloc_bytes, align 8, !dbg !6129
  %add = add i64 %2, %0, !dbg !6129
  store i64 %add, ptr %total_pcm_alloc_bytes, align 8, !dbg !6129
  ret void, !dbg !6130
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6131 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preallocate_pcm_pages(ptr noundef %substream, i64 noundef %size, i1 noundef zeroext %no_fallback) #0 align 16 !dbg !6132 {
entry:
  %retval = alloca i32, align 4
  %substream.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %no_fallback.addr = alloca i8, align 1
  %dmab = alloca ptr, align 8
  %card = alloca ptr, align 8
  %orig_size = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %substream, ptr %substream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %substream.addr, metadata !6136, metadata !DIExpression()), !dbg !6143
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6137, metadata !DIExpression()), !dbg !6144
  %frombool = zext i1 %no_fallback to i8
  store i8 %frombool, ptr %no_fallback.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %no_fallback.addr, metadata !6138, metadata !DIExpression()), !dbg !6145
  call void @llvm.lifetime.start.p0(i64 8, ptr %dmab) #17, !dbg !6146
  call void @llvm.dbg.declare(metadata ptr %dmab, metadata !6139, metadata !DIExpression()), !dbg !6147
  %0 = load ptr, ptr %substream.addr, align 8, !dbg !6148
  %dma_buffer = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 8, !dbg !6149
  store ptr %dma_buffer, ptr %dmab, align 8, !dbg !6147
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #17, !dbg !6150
  call void @llvm.dbg.declare(metadata ptr %card, metadata !6140, metadata !DIExpression()), !dbg !6151
  %1 = load ptr, ptr %substream.addr, align 8, !dbg !6152
  %pcm = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 0, !dbg !6153
  %2 = load ptr, ptr %pcm, align 8, !dbg !6153
  %card1 = getelementptr inbounds %struct.snd_pcm, ptr %2, i32 0, i32 0, !dbg !6154
  %3 = load ptr, ptr %card1, align 8, !dbg !6154
  store ptr %3, ptr %card, align 8, !dbg !6151
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_size) #17, !dbg !6155
  call void @llvm.dbg.declare(metadata ptr %orig_size, metadata !6141, metadata !DIExpression()), !dbg !6156
  %4 = load i64, ptr %size.addr, align 8, !dbg !6157
  store i64 %4, ptr %orig_size, align 8, !dbg !6156
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !6158
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6142, metadata !DIExpression()), !dbg !6159
  br label %do.body, !dbg !6160

do.body:                                          ; preds = %do.cond, %entry
  %5 = load ptr, ptr %card, align 8, !dbg !6161
  %6 = load ptr, ptr %dmab, align 8, !dbg !6163
  %dev = getelementptr inbounds %struct.snd_dma_buffer, ptr %6, i32 0, i32 0, !dbg !6164
  %type = getelementptr inbounds %struct.snd_dma_device, ptr %dev, i32 0, i32 0, !dbg !6165
  %7 = load i32, ptr %type, align 8, !dbg !6165
  %8 = load ptr, ptr %dmab, align 8, !dbg !6166
  %dev2 = getelementptr inbounds %struct.snd_dma_buffer, ptr %8, i32 0, i32 0, !dbg !6167
  %dev3 = getelementptr inbounds %struct.snd_dma_device, ptr %dev2, i32 0, i32 3, !dbg !6168
  %9 = load ptr, ptr %dev3, align 8, !dbg !6168
  %10 = load ptr, ptr %substream.addr, align 8, !dbg !6169
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %10, i32 0, i32 5, !dbg !6170
  %11 = load i32, ptr %stream, align 4, !dbg !6170
  %12 = load i64, ptr %size.addr, align 8, !dbg !6171
  %13 = load ptr, ptr %dmab, align 8, !dbg !6172
  %call = call i32 @do_alloc_pages(ptr noundef %5, i32 noundef %7, ptr noundef %9, i32 noundef %11, i64 noundef %12, ptr noundef %13) #16, !dbg !6173
  store i32 %call, ptr %err, align 4, !dbg !6174
  %14 = load i32, ptr %err, align 4, !dbg !6175
  %cmp = icmp ne i32 %14, -12, !dbg !6177
  br i1 %cmp, label %if.then, label %if.end, !dbg !6178

if.then:                                          ; preds = %do.body
  %15 = load i32, ptr %err, align 4, !dbg !6179
  store i32 %15, ptr %retval, align 4, !dbg !6180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6180

if.end:                                           ; preds = %do.body
  %16 = load i8, ptr %no_fallback.addr, align 1, !dbg !6181, !range !5519, !noundef !577
  %tobool = trunc i8 %16 to i1, !dbg !6181
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !6183

if.then4:                                         ; preds = %if.end
  br label %do.end, !dbg !6184

if.end5:                                          ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !6185
  %shr = lshr i64 %17, 1, !dbg !6185
  store i64 %shr, ptr %size.addr, align 8, !dbg !6185
  br label %do.cond, !dbg !6186

do.cond:                                          ; preds = %if.end5
  %18 = load i64, ptr %size.addr, align 8, !dbg !6187
  %cmp6 = icmp uge i64 %18, 16384, !dbg !6188
  br i1 %cmp6, label %do.body, label %do.end, !dbg !6186, !llvm.loop !6189

do.end:                                           ; preds = %do.cond, %if.then4
  %19 = load ptr, ptr %dmab, align 8, !dbg !6191
  %bytes = getelementptr inbounds %struct.snd_dma_buffer, ptr %19, i32 0, i32 3, !dbg !6192
  store i64 0, ptr %bytes, align 8, !dbg !6193
  br label %do.body7, !dbg !6194

do.body7:                                         ; preds = %do.end
  br label %do.cond8, !dbg !6196

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !6196

do.end9:                                          ; preds = %do.cond8
  %20 = load ptr, ptr %substream.addr, align 8, !dbg !6194
  %pcm10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 0, !dbg !6194
  %21 = load ptr, ptr %pcm10, align 8, !dbg !6194
  %card11 = getelementptr inbounds %struct.snd_pcm, ptr %21, i32 0, i32 0, !dbg !6194
  %22 = load ptr, ptr %card11, align 8, !dbg !6194
  %number = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 0, !dbg !6194
  %23 = load i32, ptr %number, align 8, !dbg !6194
  %24 = load ptr, ptr %substream.addr, align 8, !dbg !6194
  %pcm12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %24, i32 0, i32 0, !dbg !6194
  %25 = load ptr, ptr %pcm12, align 8, !dbg !6194
  %device = getelementptr inbounds %struct.snd_pcm, ptr %25, i32 0, i32 2, !dbg !6194
  %26 = load i32, ptr %device, align 8, !dbg !6194
  %27 = load ptr, ptr %substream.addr, align 8, !dbg !6194
  %stream13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %27, i32 0, i32 5, !dbg !6194
  %28 = load i32, ptr %stream13, align 4, !dbg !6194
  %tobool14 = icmp ne i32 %28, 0, !dbg !6194
  %29 = zext i1 %tobool14 to i64, !dbg !6194
  %cond = select i1 %tobool14, i32 99, i32 112, !dbg !6194
  %30 = load ptr, ptr %substream.addr, align 8, !dbg !6194
  %number15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %30, i32 0, i32 3, !dbg !6194
  %31 = load i32, ptr %number15, align 8, !dbg !6194
  %32 = load ptr, ptr %substream.addr, align 8, !dbg !6194
  %pcm16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %32, i32 0, i32 0, !dbg !6194
  %33 = load ptr, ptr %pcm16, align 8, !dbg !6194
  %name = getelementptr inbounds %struct.snd_pcm, ptr %33, i32 0, i32 7, !dbg !6194
  %arraydecay = getelementptr inbounds [80 x i8], ptr %name, i64 0, i64 0, !dbg !6194
  %34 = load i64, ptr %orig_size, align 8, !dbg !6194
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %23, i32 noundef %26, i32 noundef %cond, i32 noundef %31, ptr noundef %arraydecay, i64 noundef %34) #19, !dbg !6194
  store i32 %call17, ptr %tmp, align 4, !dbg !6196
  %35 = load i32, ptr %tmp, align 4, !dbg !6194
  store i32 -12, ptr %retval, align 4, !dbg !6198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6198

cleanup:                                          ; preds = %do.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !6199
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_size) #17, !dbg !6199
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #17, !dbg !6199
  call void @llvm.lifetime.end.p0(i64 8, ptr %dmab) #17, !dbg !6199
  %36 = load i32, ptr %retval, align 4, !dbg !6199
  ret i32 %36, !dbg !6199
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @preallocate_info_init(ptr noundef %substream) #7 align 16 !dbg !6200 {
entry:
  %substream.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  store ptr %substream, ptr %substream.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %substream.addr, metadata !6202, metadata !DIExpression()), !dbg !6204
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6203, metadata !DIExpression()), !dbg !6206
  %0 = load ptr, ptr %substream.addr, align 8, !dbg !6207
  %pcm = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 0, !dbg !6208
  %1 = load ptr, ptr %pcm, align 8, !dbg !6208
  %card = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 0, !dbg !6209
  %2 = load ptr, ptr %card, align 8, !dbg !6209
  %3 = load ptr, ptr %substream.addr, align 8, !dbg !6210
  %proc_root = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 24, !dbg !6211
  %4 = load ptr, ptr %proc_root, align 8, !dbg !6211
  %call = call ptr @snd_info_create_card_entry(ptr noundef %2, ptr noundef @.str.2, ptr noundef %4) #16, !dbg !6212
  store ptr %call, ptr %entry1, align 8, !dbg !6213
  %5 = load ptr, ptr %entry1, align 8, !dbg !6214
  %tobool = icmp ne ptr %5, null, !dbg !6214
  br i1 %tobool, label %if.then, label %if.end, !dbg !6216

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %entry1, align 8, !dbg !6217
  %7 = load ptr, ptr %substream.addr, align 8, !dbg !6219
  call void @snd_info_set_text_ops(ptr noundef %6, ptr noundef %7, ptr noundef @snd_pcm_lib_preallocate_proc_read) #16, !dbg !6220
  %8 = load ptr, ptr %entry1, align 8, !dbg !6221
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %8, i32 0, i32 4, !dbg !6222
  %write = getelementptr inbounds %struct.snd_info_entry_text, ptr %c, i32 0, i32 1, !dbg !6223
  store ptr @snd_pcm_lib_preallocate_proc_write, ptr %write, align 8, !dbg !6224
  %9 = load ptr, ptr %entry1, align 8, !dbg !6225
  %mode = getelementptr inbounds %struct.snd_info_entry, ptr %9, i32 0, i32 1, !dbg !6226
  %10 = load i16, ptr %mode, align 8, !dbg !6227
  %conv = zext i16 %10 to i32, !dbg !6227
  %or = or i32 %conv, 128, !dbg !6227
  %conv2 = trunc i32 %or to i16, !dbg !6227
  store i16 %conv2, ptr %mode, align 8, !dbg !6227
  br label %if.end, !dbg !6228

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %substream.addr, align 8, !dbg !6229
  %pcm3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %11, i32 0, i32 0, !dbg !6230
  %12 = load ptr, ptr %pcm3, align 8, !dbg !6230
  %card4 = getelementptr inbounds %struct.snd_pcm, ptr %12, i32 0, i32 0, !dbg !6231
  %13 = load ptr, ptr %card4, align 8, !dbg !6231
  %14 = load ptr, ptr %substream.addr, align 8, !dbg !6232
  %proc_root5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %14, i32 0, i32 24, !dbg !6233
  %15 = load ptr, ptr %proc_root5, align 8, !dbg !6233
  %call6 = call ptr @snd_info_create_card_entry(ptr noundef %13, ptr noundef @.str.3, ptr noundef %15) #16, !dbg !6234
  store ptr %call6, ptr %entry1, align 8, !dbg !6235
  %16 = load ptr, ptr %entry1, align 8, !dbg !6236
  %tobool7 = icmp ne ptr %16, null, !dbg !6236
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6238

if.then8:                                         ; preds = %if.end
  %17 = load ptr, ptr %entry1, align 8, !dbg !6239
  %18 = load ptr, ptr %substream.addr, align 8, !dbg !6240
  call void @snd_info_set_text_ops(ptr noundef %17, ptr noundef %18, ptr noundef @snd_pcm_lib_preallocate_max_proc_read) #16, !dbg !6241
  br label %if.end9, !dbg !6241

if.end9:                                          ; preds = %if.then8, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !6242
  ret void, !dbg !6242
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6243 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6247 dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_info_set_text_ops(ptr noundef %entry1, ptr noundef %private_data, ptr noundef %read) #7 align 16 !dbg !6250 {
entry:
  %entry.addr = alloca ptr, align 8
  %private_data.addr = alloca ptr, align 8
  %read.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6254, metadata !DIExpression()), !dbg !6257
  store ptr %private_data, ptr %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private_data.addr, metadata !6255, metadata !DIExpression()), !dbg !6258
  store ptr %read, ptr %read.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %read.addr, metadata !6256, metadata !DIExpression()), !dbg !6259
  %0 = load ptr, ptr %private_data.addr, align 8, !dbg !6260
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6261
  %private_data2 = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 7, !dbg !6262
  store ptr %0, ptr %private_data2, align 8, !dbg !6263
  %2 = load ptr, ptr %read.addr, align 8, !dbg !6264
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6265
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %3, i32 0, i32 4, !dbg !6266
  %read3 = getelementptr inbounds %struct.snd_info_entry_text, ptr %c, i32 0, i32 0, !dbg !6267
  store ptr %2, ptr %read3, align 8, !dbg !6268
  ret void, !dbg !6269
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_pcm_lib_preallocate_proc_read(ptr noundef %entry1, ptr noundef %buffer) #0 align 16 !dbg !6270 {
entry:
  %entry.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %substream = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6272, metadata !DIExpression()), !dbg !6275
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6273, metadata !DIExpression()), !dbg !6276
  call void @llvm.lifetime.start.p0(i64 8, ptr %substream) #17, !dbg !6277
  call void @llvm.dbg.declare(metadata ptr %substream, metadata !6274, metadata !DIExpression()), !dbg !6278
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6279
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7, !dbg !6280
  %1 = load ptr, ptr %private_data, align 8, !dbg !6280
  store ptr %1, ptr %substream, align 8, !dbg !6278
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !6281
  %buffer2 = getelementptr inbounds %struct.snd_info_buffer, ptr %2, i32 0, i32 0, !dbg !6281
  %3 = load ptr, ptr %buffer2, align 8, !dbg !6281
  %4 = load ptr, ptr %substream, align 8, !dbg !6281
  %dma_buffer = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 8, !dbg !6281
  %bytes = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer, i32 0, i32 3, !dbg !6281
  %5 = load i64, ptr %bytes, align 8, !dbg !6281
  %div = udiv i64 %5, 1024, !dbg !6281
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef @.str.4, i64 noundef %div) #16, !dbg !6281
  call void @llvm.lifetime.end.p0(i64 8, ptr %substream) #17, !dbg !6282
  ret void, !dbg !6282
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_pcm_lib_preallocate_proc_write(ptr noundef %entry1, ptr noundef %buffer) #0 align 16 !dbg !6283 {
entry:
  %entry.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %substream = alloca ptr, align 8
  %card = alloca ptr, align 8
  %line = alloca [64 x i8], align 16
  %str = alloca [64 x i8], align 16
  %size = alloca i64, align 8
  %new_dmab = alloca %struct.snd_dma_buffer, align 8
  %tmp = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6285, metadata !DIExpression()), !dbg !6294
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6286, metadata !DIExpression()), !dbg !6295
  call void @llvm.lifetime.start.p0(i64 8, ptr %substream) #17, !dbg !6296
  call void @llvm.dbg.declare(metadata ptr %substream, metadata !6287, metadata !DIExpression()), !dbg !6297
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6298
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7, !dbg !6299
  %1 = load ptr, ptr %private_data, align 8, !dbg !6299
  store ptr %1, ptr %substream, align 8, !dbg !6297
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #17, !dbg !6300
  call void @llvm.dbg.declare(metadata ptr %card, metadata !6288, metadata !DIExpression()), !dbg !6301
  %2 = load ptr, ptr %substream, align 8, !dbg !6302
  %pcm = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 0, !dbg !6303
  %3 = load ptr, ptr %pcm, align 8, !dbg !6303
  %card2 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 0, !dbg !6304
  %4 = load ptr, ptr %card2, align 8, !dbg !6304
  store ptr %4, ptr %card, align 8, !dbg !6301
  call void @llvm.lifetime.start.p0(i64 64, ptr %line) #17, !dbg !6305
  call void @llvm.dbg.declare(metadata ptr %line, metadata !6289, metadata !DIExpression()), !dbg !6306
  call void @llvm.lifetime.start.p0(i64 64, ptr %str) #17, !dbg !6305
  call void @llvm.dbg.declare(metadata ptr %str, metadata !6290, metadata !DIExpression()), !dbg !6307
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #17, !dbg !6308
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6291, metadata !DIExpression()), !dbg !6309
  call void @llvm.lifetime.start.p0(i64 56, ptr %new_dmab) #17, !dbg !6310
  call void @llvm.dbg.declare(metadata ptr %new_dmab, metadata !6292, metadata !DIExpression()), !dbg !6311
  %5 = load ptr, ptr %substream, align 8, !dbg !6312
  %pcm3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 0, !dbg !6313
  %6 = load ptr, ptr %pcm3, align 8, !dbg !6313
  %open_mutex = getelementptr inbounds %struct.snd_pcm, ptr %6, i32 0, i32 9, !dbg !6314
  call void @mutex_lock(ptr noundef %open_mutex) #16, !dbg !6315
  %7 = load ptr, ptr %substream, align 8, !dbg !6316
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11, !dbg !6318
  %8 = load ptr, ptr %runtime, align 8, !dbg !6318
  %tobool = icmp ne ptr %8, null, !dbg !6316
  br i1 %tobool, label %if.then, label %if.end, !dbg !6319

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %buffer.addr, align 8, !dbg !6320
  %error = getelementptr inbounds %struct.snd_info_buffer, ptr %9, i32 0, i32 5, !dbg !6322
  store i32 -16, ptr %error, align 8, !dbg !6323
  br label %unlock, !dbg !6324

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %buffer.addr, align 8, !dbg !6325
  %arraydecay = getelementptr inbounds [64 x i8], ptr %line, i64 0, i64 0, !dbg !6327
  %call = call i32 @snd_info_get_line(ptr noundef %10, ptr noundef %arraydecay, i32 noundef 64) #16, !dbg !6328
  %tobool4 = icmp ne i32 %call, 0, !dbg !6328
  br i1 %tobool4, label %if.else41, label %if.then5, !dbg !6329

if.then5:                                         ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [64 x i8], ptr %str, i64 0, i64 0, !dbg !6330
  %arraydecay7 = getelementptr inbounds [64 x i8], ptr %line, i64 0, i64 0, !dbg !6332
  %call8 = call ptr @snd_info_get_str(ptr noundef %arraydecay6, ptr noundef %arraydecay7, i32 noundef 64) #16, !dbg !6333
  %arraydecay9 = getelementptr inbounds [64 x i8], ptr %str, i64 0, i64 0, !dbg !6334
  %call10 = call i64 @simple_strtoul(ptr noundef %arraydecay9, ptr noundef null, i32 noundef 10) #16, !dbg !6335
  %mul = mul i64 %call10, 1024, !dbg !6336
  store i64 %mul, ptr %size, align 8, !dbg !6337
  %11 = load i64, ptr %size, align 8, !dbg !6338
  %cmp = icmp ne i64 %11, 0, !dbg !6340
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !6341

land.lhs.true:                                    ; preds = %if.then5
  %12 = load i64, ptr %size, align 8, !dbg !6342
  %cmp11 = icmp ult i64 %12, 8192, !dbg !6343
  br i1 %cmp11, label %if.then13, label %lor.lhs.false, !dbg !6344

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then5
  %13 = load i64, ptr %size, align 8, !dbg !6345
  %14 = load ptr, ptr %substream, align 8, !dbg !6346
  %dma_max = getelementptr inbounds %struct.snd_pcm_substream, ptr %14, i32 0, i32 9, !dbg !6347
  %15 = load i64, ptr %dma_max, align 8, !dbg !6347
  %cmp12 = icmp ugt i64 %13, %15, !dbg !6348
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !6349

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load ptr, ptr %buffer.addr, align 8, !dbg !6350
  %error14 = getelementptr inbounds %struct.snd_info_buffer, ptr %16, i32 0, i32 5, !dbg !6352
  store i32 -22, ptr %error14, align 8, !dbg !6353
  br label %unlock, !dbg !6354

if.end15:                                         ; preds = %lor.lhs.false
  %17 = load ptr, ptr %substream, align 8, !dbg !6355
  %dma_buffer = getelementptr inbounds %struct.snd_pcm_substream, ptr %17, i32 0, i32 8, !dbg !6357
  %bytes = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer, i32 0, i32 3, !dbg !6358
  %18 = load i64, ptr %bytes, align 8, !dbg !6358
  %19 = load i64, ptr %size, align 8, !dbg !6359
  %cmp16 = icmp eq i64 %18, %19, !dbg !6360
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !6361

if.then17:                                        ; preds = %if.end15
  br label %unlock, !dbg !6362

if.end18:                                         ; preds = %if.end15
  call void @llvm.memset.p0.i64(ptr align 8 %new_dmab, i8 0, i64 56, i1 false), !dbg !6363
  %dev = getelementptr inbounds %struct.snd_dma_buffer, ptr %new_dmab, i32 0, i32 0, !dbg !6364
  %20 = load ptr, ptr %substream, align 8, !dbg !6365
  %dma_buffer19 = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 8, !dbg !6366
  %dev20 = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer19, i32 0, i32 0, !dbg !6367
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dev, ptr align 8 %dev20, i64 24, i1 false), !dbg !6367
  %21 = load i64, ptr %size, align 8, !dbg !6368
  %cmp21 = icmp ugt i64 %21, 0, !dbg !6370
  br i1 %cmp21, label %if.then22, label %if.else, !dbg !6371

if.then22:                                        ; preds = %if.end18
  %22 = load ptr, ptr %card, align 8, !dbg !6372
  %23 = load ptr, ptr %substream, align 8, !dbg !6375
  %dma_buffer23 = getelementptr inbounds %struct.snd_pcm_substream, ptr %23, i32 0, i32 8, !dbg !6376
  %dev24 = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer23, i32 0, i32 0, !dbg !6377
  %type = getelementptr inbounds %struct.snd_dma_device, ptr %dev24, i32 0, i32 0, !dbg !6378
  %24 = load i32, ptr %type, align 8, !dbg !6378
  %25 = load ptr, ptr %substream, align 8, !dbg !6379
  %dma_buffer25 = getelementptr inbounds %struct.snd_pcm_substream, ptr %25, i32 0, i32 8, !dbg !6380
  %dev26 = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer25, i32 0, i32 0, !dbg !6381
  %dev27 = getelementptr inbounds %struct.snd_dma_device, ptr %dev26, i32 0, i32 3, !dbg !6382
  %26 = load ptr, ptr %dev27, align 8, !dbg !6382
  %27 = load ptr, ptr %substream, align 8, !dbg !6383
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %27, i32 0, i32 5, !dbg !6384
  %28 = load i32, ptr %stream, align 4, !dbg !6384
  %29 = load i64, ptr %size, align 8, !dbg !6385
  %call28 = call i32 @do_alloc_pages(ptr noundef %22, i32 noundef %24, ptr noundef %26, i32 noundef %28, i64 noundef %29, ptr noundef %new_dmab) #16, !dbg !6386
  %cmp29 = icmp slt i32 %call28, 0, !dbg !6387
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !6388

if.then30:                                        ; preds = %if.then22
  %30 = load ptr, ptr %buffer.addr, align 8, !dbg !6389
  %error31 = getelementptr inbounds %struct.snd_info_buffer, ptr %30, i32 0, i32 5, !dbg !6391
  store i32 -12, ptr %error31, align 8, !dbg !6392
  store i32 0, ptr %tmp, align 4, !dbg !6393
  %31 = load i32, ptr %tmp, align 4, !dbg !6396
  br label %unlock, !dbg !6397

if.end32:                                         ; preds = %if.then22
  %32 = load i64, ptr %size, align 8, !dbg !6398
  %33 = load ptr, ptr %substream, align 8, !dbg !6399
  %buffer_bytes_max = getelementptr inbounds %struct.snd_pcm_substream, ptr %33, i32 0, i32 7, !dbg !6400
  store i64 %32, ptr %buffer_bytes_max, align 8, !dbg !6401
  br label %if.end34, !dbg !6402

if.else:                                          ; preds = %if.end18
  %34 = load ptr, ptr %substream, align 8, !dbg !6403
  %buffer_bytes_max33 = getelementptr inbounds %struct.snd_pcm_substream, ptr %34, i32 0, i32 7, !dbg !6405
  store i64 4294967295, ptr %buffer_bytes_max33, align 8, !dbg !6406
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end32
  %35 = load ptr, ptr %substream, align 8, !dbg !6407
  %dma_buffer35 = getelementptr inbounds %struct.snd_pcm_substream, ptr %35, i32 0, i32 8, !dbg !6409
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %dma_buffer35, i32 0, i32 1, !dbg !6410
  %36 = load ptr, ptr %area, align 8, !dbg !6410
  %tobool36 = icmp ne ptr %36, null, !dbg !6407
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !6411

if.then37:                                        ; preds = %if.end34
  %37 = load ptr, ptr %card, align 8, !dbg !6412
  %38 = load ptr, ptr %substream, align 8, !dbg !6413
  %dma_buffer38 = getelementptr inbounds %struct.snd_pcm_substream, ptr %38, i32 0, i32 8, !dbg !6414
  call void @do_free_pages(ptr noundef %37, ptr noundef %dma_buffer38) #16, !dbg !6415
  br label %if.end39, !dbg !6415

if.end39:                                         ; preds = %if.then37, %if.end34
  %39 = load ptr, ptr %substream, align 8, !dbg !6416
  %dma_buffer40 = getelementptr inbounds %struct.snd_pcm_substream, ptr %39, i32 0, i32 8, !dbg !6417
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dma_buffer40, ptr align 8 %new_dmab, i64 56, i1 false), !dbg !6418
  br label %if.end43, !dbg !6419

if.else41:                                        ; preds = %if.end
  %40 = load ptr, ptr %buffer.addr, align 8, !dbg !6420
  %error42 = getelementptr inbounds %struct.snd_info_buffer, ptr %40, i32 0, i32 5, !dbg !6422
  store i32 -22, ptr %error42, align 8, !dbg !6423
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.end39
  br label %unlock, !dbg !6424

unlock:                                           ; preds = %if.end43, %if.then30, %if.then17, %if.then13, %if.then
  call void @llvm.dbg.label(metadata !6293), !dbg !6425
  %41 = load ptr, ptr %substream, align 8, !dbg !6426
  %pcm44 = getelementptr inbounds %struct.snd_pcm_substream, ptr %41, i32 0, i32 0, !dbg !6427
  %42 = load ptr, ptr %pcm44, align 8, !dbg !6427
  %open_mutex45 = getelementptr inbounds %struct.snd_pcm, ptr %42, i32 0, i32 9, !dbg !6428
  call void @mutex_unlock(ptr noundef %open_mutex45) #16, !dbg !6429
  call void @llvm.lifetime.end.p0(i64 56, ptr %new_dmab) #17, !dbg !6430
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #17, !dbg !6430
  call void @llvm.lifetime.end.p0(i64 64, ptr %str) #17, !dbg !6430
  call void @llvm.lifetime.end.p0(i64 64, ptr %line) #17, !dbg !6430
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #17, !dbg !6430
  call void @llvm.lifetime.end.p0(i64 8, ptr %substream) #17, !dbg !6430
  ret void, !dbg !6430
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_pcm_lib_preallocate_max_proc_read(ptr noundef %entry1, ptr noundef %buffer) #0 align 16 !dbg !6431 {
entry:
  %entry.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %substream = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6433, metadata !DIExpression()), !dbg !6436
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6434, metadata !DIExpression()), !dbg !6437
  call void @llvm.lifetime.start.p0(i64 8, ptr %substream) #17, !dbg !6438
  call void @llvm.dbg.declare(metadata ptr %substream, metadata !6435, metadata !DIExpression()), !dbg !6439
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6440
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7, !dbg !6441
  %1 = load ptr, ptr %private_data, align 8, !dbg !6441
  store ptr %1, ptr %substream, align 8, !dbg !6439
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !6442
  %buffer2 = getelementptr inbounds %struct.snd_info_buffer, ptr %2, i32 0, i32 0, !dbg !6442
  %3 = load ptr, ptr %buffer2, align 8, !dbg !6442
  %4 = load ptr, ptr %substream, align 8, !dbg !6442
  %dma_max = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 9, !dbg !6442
  %5 = load i64, ptr %dma_max, align 8, !dbg !6442
  %div = udiv i64 %5, 1024, !dbg !6442
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef @.str.4, i64 noundef %div) #16, !dbg !6442
  call void @llvm.lifetime.end.p0(i64 8, ptr %substream) #17, !dbg !6443
  ret void, !dbg !6443
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6444 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6447 dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6450 dso_local ptr @snd_info_get_str(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6453 dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6458 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6460, metadata !DIExpression()), !dbg !6465
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6461, metadata !DIExpression()), !dbg !6466
  %0 = load i64, ptr %size.addr, align 8, !dbg !6467
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6468
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6469

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6470
  %tobool = icmp ne i64 %2, 0, !dbg !6470
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6471

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6472
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6462, metadata !DIExpression()), !dbg !6473
  %3 = load i64, ptr %size.addr, align 8, !dbg !6474
  %cmp = icmp ugt i64 %3, 8192, !dbg !6476
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6477

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6478
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6479
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !6480
  store ptr %call, ptr %retval, align 8, !dbg !6481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6481

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6482
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !6482
  store i32 %call2, ptr %index, align 4, !dbg !6483
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6484
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6485
  %9 = ptrtoint ptr %8 to i64, !dbg !6485
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !6486
  %idxprom = zext i32 %call3 to i64, !dbg !6487
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6487
  %10 = load i32, ptr %index, align 4, !dbg !6488
  %idxprom4 = zext i32 %10 to i64, !dbg !6487
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6487
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6487
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6489
  %13 = load i64, ptr %size.addr, align 8, !dbg !6490
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6491
  store ptr %call6, ptr %retval, align 8, !dbg !6492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6492

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6493
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6494
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6495
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6496
  store ptr %call8, ptr %retval, align 8, !dbg !6497
  br label %return, !dbg !6497

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6498
  ret ptr %16, !dbg !6498
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6499 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #13 align 16 !dbg !6500 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6504, metadata !DIExpression()), !dbg !6506
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6505, metadata !DIExpression()), !dbg !6507
  %0 = load i64, ptr %size.addr, align 8, !dbg !6508
  %tobool = icmp ne i64 %0, 0, !dbg !6508
  br i1 %tobool, label %if.end, label %if.then, !dbg !6510

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6511
  br label %return, !dbg !6511

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6512
  %cmp = icmp ule i64 %1, 8, !dbg !6514
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6515

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6516
  br label %return, !dbg !6516

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6517
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6519
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6520

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6521
  %cmp4 = icmp ule i64 %3, 96, !dbg !6522
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6523

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6524
  br label %return, !dbg !6524

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6525
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6527
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6528

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6529
  %cmp9 = icmp ule i64 %5, 192, !dbg !6530
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6531

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6532
  br label %return, !dbg !6532

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6533
  %cmp12 = icmp ule i64 %6, 8, !dbg !6535
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6536

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6537
  br label %return, !dbg !6537

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6538
  %cmp15 = icmp ule i64 %7, 16, !dbg !6540
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6541

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6542
  br label %return, !dbg !6542

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6543
  %cmp18 = icmp ule i64 %8, 32, !dbg !6545
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6546

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6547
  br label %return, !dbg !6547

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6548
  %cmp21 = icmp ule i64 %9, 64, !dbg !6550
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6551

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6552
  br label %return, !dbg !6552

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6553
  %cmp24 = icmp ule i64 %10, 128, !dbg !6555
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6556

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6557
  br label %return, !dbg !6557

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6558
  %cmp27 = icmp ule i64 %11, 256, !dbg !6560
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6561

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6562
  br label %return, !dbg !6562

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6563
  %cmp30 = icmp ule i64 %12, 512, !dbg !6565
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6566

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6567
  br label %return, !dbg !6567

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6568
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6570
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6571

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6572
  br label %return, !dbg !6572

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6573
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6575
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6576

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6577
  br label %return, !dbg !6577

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6578
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6580
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6581

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6582
  br label %return, !dbg !6582

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6583
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6585
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6586

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6587
  br label %return, !dbg !6587

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6588
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6590
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6591

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6592
  br label %return, !dbg !6592

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6593
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6595
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6596

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6597
  br label %return, !dbg !6597

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6598
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6600
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6601

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6602
  br label %return, !dbg !6602

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6603
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6605
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6606

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6607
  br label %return, !dbg !6607

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6608
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6610
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6611

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6612
  br label %return, !dbg !6612

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6613
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6615
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6616

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6617
  br label %return, !dbg !6617

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6618
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6620
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6621

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6622
  br label %return, !dbg !6622

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6623
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6625
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6626

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6627
  br label %return, !dbg !6627

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6628, !range !5519, !noundef !577
  %tobool69 = trunc i8 %25 to i1, !dbg !6628
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6630

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6631

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #21, !dbg !6632, !srcloc !6635
  unreachable, !dbg !6632

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6636

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6637

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6638

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6640

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6638

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #17, !dbg !6642, !srcloc !6644
  br label %do.end75, !dbg !6642

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6638

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6645
  br label %return, !dbg !6645

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6646
  ret i32 %26, !dbg !6646
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6647 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #13 align 16 !dbg !6653 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6657, metadata !DIExpression()), !dbg !6659
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6658, metadata !DIExpression()), !dbg !6660
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6661
  %and = and i32 %0, 17, !dbg !6661
  %cmp = icmp eq i32 %and, 0, !dbg !6661
  %lnot = xor i1 %cmp, true, !dbg !6661
  %lnot1 = xor i1 %lnot, true, !dbg !6661
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6661
  %conv = sext i32 %lnot.ext to i64, !dbg !6661
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6661
  %tobool = icmp ne i64 %expval, 0, !dbg !6661
  br i1 %tobool, label %if.then, label %if.end, !dbg !6663

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6664
  br label %return, !dbg !6664

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6665
  %and2 = and i32 %1, 1, !dbg !6667
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6667
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6668

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6669
  br label %return, !dbg !6669

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6670
  br label %return, !dbg !6670

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6672
  ret i32 %2, !dbg !6672
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6673 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6674 dso_local void @__compiletime_assert_117() #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6675 dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @update_allocated_size(ptr noundef %card, i64 noundef %bytes) #0 align 16 !dbg !6678 {
entry:
  %card.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !6680, metadata !DIExpression()), !dbg !6682
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6681, metadata !DIExpression()), !dbg !6683
  %0 = load ptr, ptr %card.addr, align 8, !dbg !6684
  %memory_mutex = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 39, !dbg !6685
  call void @mutex_lock(ptr noundef %memory_mutex) #16, !dbg !6686
  %1 = load ptr, ptr %card.addr, align 8, !dbg !6687
  %2 = load i64, ptr %bytes.addr, align 8, !dbg !6688
  call void @__update_allocated_size(ptr noundef %1, i64 noundef %2) #16, !dbg !6689
  %3 = load ptr, ptr %card.addr, align 8, !dbg !6690
  %memory_mutex1 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 39, !dbg !6691
  call void @mutex_unlock(ptr noundef %memory_mutex1) #16, !dbg !6692
  ret void, !dbg !6693
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone }
attributes #17 = { nounwind }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331}
!llvm.ident = !{!4332}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_preallocate_dma", scope: !2, file: !3, line: 21, type: !4323, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/.pcm_memory.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/snd-pcm\22 -D KBUILD_BASENAME=\22pcm_memory\22 -D KBUILD_MODNAME=\22snd_pcm\22 -D __KBUILD_MODNAME=kmod_snd_pcm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/pcm_memory.ll sound/core/pcm_memory.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !186, globals: !4220, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/pcm_memory.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f2c47f2d3ae38bbad5da692206f0a387")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !122, !129, !133, !142, !147, !152, !158, !165, !170, !180}
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
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !27, line: 1325, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!29 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!30 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!31 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!32 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!33 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!34 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!35 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!36 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!37 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!38 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!39 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!40 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!41 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 68, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
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
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !117, line: 41, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!120 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!121 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !117, line: 99, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128}
!124 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!125 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!126 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!127 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!128 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !117, line: 80, baseType: !7, size: 32, elements: !130)
!130 = !{!131, !132}
!131 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!132 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141}
!135 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!136 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!137 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!138 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!139 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!140 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!141 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!145 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!146 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!150 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!151 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!155 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!156 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!157 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !159, line: 5, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!160 = !{!161, !162, !163, !164}
!161 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!162 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!163 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!164 = !DIEnumerator(name: "DMA_NONE", value: 3)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 10, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!167 = !{!168, !169}
!168 = !DIEnumerator(name: "false", value: 0)
!169 = !DIEnumerator(name: "true", value: 1)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !171, line: 364, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!172 = !{!173, !174, !175, !176, !177, !178, !179}
!173 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!174 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!175 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!176 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!177 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!178 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!179 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !181, line: 166, baseType: !7, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/uapi/sound/asound.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6c7c1b6718812fde08ec0a715510ddd")
!182 = !{!183, !184, !185}
!183 = !DIEnumerator(name: "SNDRV_PCM_STREAM_PLAYBACK", value: 0)
!184 = !DIEnumerator(name: "SNDRV_PCM_STREAM_CAPTURE", value: 1)
!185 = !DIEnumerator(name: "SNDRV_PCM_STREAM_LAST", value: 1)
!186 = !{!187, !364, !1118, !324, !646, !342}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !189)
!189 = !{!190, !191, !198, !203, !3896, !3922, !3923, !3924, !3925, !3929, !3932, !3933, !3934, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !4001, !4005, !4023, !4040, !4041, !4042, !4043, !4052, !4075, !4076, !4079, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4093, !4094, !4180, !4188, !4189, !4190, !4192, !4196, !4197, !4201, !4202, !4203, !4204, !4206, !4207, !4208, !4215, !4216, !4217, !4219}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !188, file: !6, line: 403, baseType: !5, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !188, file: !6, line: 406, baseType: !192, size: 128, offset: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !193, line: 190, size: 128, elements: !194)
!193 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!194 = !{!195, !197}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !193, line: 191, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !192, file: !193, line: 191, baseType: !196, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !6, line: 409, baseType: !199, size: 448, offset: 192)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 448, elements: !201)
!200 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!201 = !{!202}
!202 = !DISubrange(count: 56)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !188, file: !6, line: 417, baseType: !204, size: 768, offset: 640)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !205)
!205 = !{!206, !3890, !3891, !3892, !3895}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !204, file: !6, line: 46, baseType: !207, size: 512)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !208, line: 64, size: 512, elements: !209)
!208 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!209 = !{!210, !213, !214, !216, !305, !3789, !3880, !3885, !3886, !3887, !3888, !3889}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !208, line: 65, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !207, file: !208, line: 66, baseType: !192, size: 128, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !207, file: !208, line: 67, baseType: !215, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !207, file: !208, line: 68, baseType: !217, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !208, line: 168, size: 768, elements: !219)
!219 = !{!220, !221, !264, !265}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !218, file: !208, line: 169, baseType: !192, size: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !218, file: !208, line: 170, baseType: !222, size: 32, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !223, line: 29, baseType: !224)
!223 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !223, line: 17, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !223, line: 18, baseType: !227, size: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !223, line: 18, size: 32, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !227, file: !223, line: 19, baseType: !230, size: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !231, line: 14, size: 32, elements: !232)
!231 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !230, file: !231, line: 15, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !235, line: 44, baseType: !236)
!235 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !235, line: 14, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !235, line: 15, baseType: !239, size: 32)
!239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !235, line: 15, size: 32, elements: !240)
!240 = !{!241, !246, !256}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !239, file: !235, line: 16, baseType: !242, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !193, line: 174, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 172, size: 32, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !243, file: !193, line: 173, baseType: !109, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !235, line: 24, baseType: !247, size: 16)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !239, file: !235, line: 24, size: 16, elements: !248)
!248 = !{!249, !255}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !247, file: !235, line: 25, baseType: !250, size: 8)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !251, line: 17, baseType: !252)
!251 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !253, line: 21, baseType: !254)
!253 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!254 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !247, file: !235, line: 26, baseType: !250, size: 8, offset: 8)
!256 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !235, line: 28, baseType: !257, size: 32)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !239, file: !235, line: 28, size: 32, elements: !258)
!258 = !{!259, !263}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !257, file: !235, line: 29, baseType: !260, size: 16)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !251, line: 19, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !253, line: 24, baseType: !262)
!262 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !257, file: !235, line: 30, baseType: !260, size: 16, offset: 16)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !218, file: !208, line: 171, baseType: !207, size: 512, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !218, file: !208, line: 172, baseType: !266, size: 64, offset: 704)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !208, line: 133, size: 192, elements: !269)
!269 = !{!270, !277, !282}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !268, file: !208, line: 134, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!109, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !268, file: !208, line: 135, baseType: !278, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!211, !275}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !268, file: !208, line: 136, baseType: !283, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!109, !275, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !208, line: 125, size: 20736, elements: !289)
!289 = !{!290, !295, !299, !300, !304}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !288, file: !208, line: 126, baseType: !291, size: 192)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 192, elements: !293)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!293 = !{!294}
!294 = !DISubrange(count: 3)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !288, file: !208, line: 127, baseType: !296, size: 4096, offset: 192)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 4096, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !288, file: !208, line: 128, baseType: !109, size: 32, offset: 4288)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !288, file: !208, line: 129, baseType: !301, size: 16384, offset: 4320)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 16384, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 2048)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !288, file: !208, line: 130, baseType: !109, size: 32, offset: 20704)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !207, file: !208, line: 69, baseType: !306, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !208, line: 116, size: 384, elements: !309)
!309 = !{!310, !314, !343, !3751, !3779, !3783}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !308, file: !208, line: 117, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !215}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !308, file: !208, line: 118, baseType: !315, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !318, line: 254, size: 128, elements: !319)
!318 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!319 = !{!320, !335}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !317, file: !318, line: 255, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!324, !215, !329, !292}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !193, line: 66, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !326, line: 73, baseType: !327)
!326 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !326, line: 15, baseType: !328)
!328 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !318, line: 30, size: 128, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !330, file: !318, line: 31, baseType: !211, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !330, file: !318, line: 32, baseType: !334, size: 16, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !193, line: 24, baseType: !262)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !317, file: !318, line: 256, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!324, !215, !329, !211, !339}
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 61, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !326, line: 72, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !326, line: 16, baseType: !342)
!342 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !308, file: !208, line: 119, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !318, line: 84, size: 320, elements: !348)
!348 = !{!349, !350, !354, !3747, !3749}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !347, file: !318, line: 85, baseType: !211, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !347, file: !318, line: 86, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!334, !215, !329, !109}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !347, file: !318, line: 88, baseType: !355, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!334, !215, !358, !109}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !318, line: 175, size: 512, elements: !360)
!360 = !{!361, !362, !363, !365, !3738, !3742, !3743}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !359, file: !318, line: 176, baseType: !330, size: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !359, file: !318, line: 177, baseType: !339, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !359, file: !318, line: 178, baseType: !364, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !359, file: !318, line: 179, baseType: !366, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !371)
!371 = !{!372, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3732, !3733, !3734, !3735, !3736, !3737}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !370, file: !14, line: 473, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !375)
!375 = !{!376, !377, !378, !386, !387, !394, !395, !398, !399, !3511, !3512, !3513, !3514, !3515, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3555, !3558, !3559, !3560, !3569, !3570, !3571, !3572}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !374, file: !14, line: 642, baseType: !334, size: 16)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !374, file: !14, line: 643, baseType: !262, size: 16, offset: 16)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !374, file: !14, line: 644, baseType: !379, size: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !380, line: 23, baseType: !381)
!380 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 21, size: 32, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !381, file: !380, line: 22, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !193, line: 37, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !326, line: 49, baseType: !7)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !374, file: !14, line: 645, baseType: !192, size: 128, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !374, file: !14, line: 646, baseType: !388, size: 32, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !380, line: 28, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 26, size: 32, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !389, file: !380, line: 27, baseType: !392, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !193, line: 38, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !326, line: 50, baseType: !7)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !374, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !374, file: !14, line: 650, baseType: !396, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !374, file: !14, line: 651, baseType: !396, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !374, file: !14, line: 654, baseType: !400, size: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !403)
!403 = !{!404, !3342, !3355, !3359, !3363, !3367, !3371, !3375, !3379, !3383, !3387, !3388, !3392, !3396, !3433, !3462, !3466, !3472, !3476, !3480, !3484, !3488, !3492, !3498, !3502}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !402, file: !14, line: 1967, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!408, !373, !408, !7}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !410, line: 82, size: 1536, elements: !411)
!410 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!411 = !{!412, !413, !423, !431, !432, !452, !453, !457, !470, !3326, !3327, !3328, !3329, !3334, !3335, !3336}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !409, file: !410, line: 84, baseType: !7, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !409, file: !410, line: 85, baseType: !414, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !415, line: 275, baseType: !416)
!415 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !415, line: 275, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !416, file: !415, line: 275, baseType: !419, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !415, line: 69, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !415, line: 64, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !420, file: !415, line: 65, baseType: !7, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !409, file: !410, line: 86, baseType: !424, size: 128, offset: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !425, line: 38, size: 128, elements: !426)
!425 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!426 = !{!427, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !425, line: 39, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !424, file: !425, line: 39, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !409, file: !410, line: 87, baseType: !408, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !409, file: !410, line: 88, baseType: !433, size: 128, offset: 256)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !410, line: 49, size: 128, elements: !434)
!434 = !{!435, !449}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !410, line: 50, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !410, line: 50, size: 64, elements: !437)
!437 = !{!438, !445}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !410, line: 51, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !436, file: !410, line: 51, size: 64, elements: !440)
!440 = !{!441, !444}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !439, file: !410, line: 52, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !251, line: 21, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !253, line: 27, baseType: !7)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !439, file: !410, line: 52, baseType: !442, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !436, file: !410, line: 54, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !251, line: 23, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !253, line: 31, baseType: !448)
!448 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !410, line: 56, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !409, file: !410, line: 89, baseType: !373, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !409, file: !410, line: 91, baseType: !454, size: 256, offset: 448)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 256, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !409, file: !410, line: 94, baseType: !458, size: 64, offset: 704)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !459, line: 25, size: 64, elements: !460)
!459 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !459, line: 26, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !458, file: !459, line: 26, size: 64, elements: !463)
!463 = !{!464, !465}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !462, file: !459, line: 28, baseType: !447, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !459, line: 30, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !459, line: 30, size: 64, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !466, file: !459, line: 31, baseType: !222, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !466, file: !459, line: 32, baseType: !109, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !409, file: !410, line: 95, baseType: !471, size: 64, offset: 768)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !410, line: 128, size: 1024, align: 512, elements: !474)
!474 = !{!475, !479, !480, !487, !493, !497, !501, !505, !506, !510, !514, !3316, !3320}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !473, file: !410, line: 129, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!109, !408, !7}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !473, file: !410, line: 130, baseType: !476, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !473, file: !410, line: 131, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!109, !484, !486}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !473, file: !410, line: 132, baseType: !488, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!109, !484, !7, !211, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !473, file: !410, line: 134, baseType: !494, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!109, !484}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !473, file: !410, line: 135, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!109, !408}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !473, file: !410, line: 136, baseType: !502, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !408}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !473, file: !410, line: 137, baseType: !502, size: 64, offset: 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !473, file: !410, line: 138, baseType: !507, size: 64, offset: 512)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !408, !373}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !473, file: !410, line: 139, baseType: !511, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!292, !408, !292, !109}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !473, file: !410, line: 140, baseType: !515, size: 64, offset: 640)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!518, !3315}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !520, line: 70, size: 256, elements: !521)
!520 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!521 = !{!522, !523, !3311, !3312}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !519, file: !520, line: 71, baseType: !408, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !519, file: !520, line: 72, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !526)
!526 = !{!527, !528, !531, !532, !533, !537, !586, !1800, !1840, !1925, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1942, !1946, !1947, !1950, !1953, !1956, !1959, !1960, !1961, !2002, !3242, !3243, !3244, !3245, !3246, !3247, !3250, !3252, !3259, !3260, !3261, !3262, !3263, !3278, !3279, !3280, !3281, !3282, !3285, !3286, !3287, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !525, file: !14, line: 1191, baseType: !192, size: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !525, file: !14, line: 1192, baseType: !529, size: 32, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !193, line: 21, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !193, line: 18, baseType: !442)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !525, file: !14, line: 1193, baseType: !254, size: 8, offset: 160)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !525, file: !14, line: 1194, baseType: !342, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !525, file: !14, line: 1195, baseType: !534, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !193, line: 52, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !326, line: 88, baseType: !536)
!536 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !525, file: !14, line: 1196, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !540)
!540 = !{!541, !542, !543, !550, !554, !558, !562, !563, !564, !574, !578, !579, !580, !582, !583, !584, !585}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !539, file: !14, line: 2367, baseType: !211, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !539, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !539, file: !14, line: 2376, baseType: !544, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!109, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !549, line: 32, flags: DIFlagFwdDecl)
!549 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!550 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !539, file: !14, line: 2377, baseType: !551, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !539, file: !14, line: 2378, baseType: !555, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!408, !538, !109, !211, !364}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !539, file: !14, line: 2380, baseType: !559, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !524}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !539, file: !14, line: 2381, baseType: !187, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !539, file: !14, line: 2382, baseType: !538, size: 64, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !539, file: !14, line: 2383, baseType: !565, size: 64, offset: 512)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !193, line: 194, size: 64, elements: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !565, file: !193, line: 195, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !193, line: 198, size: 128, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !569, file: !193, line: 199, baseType: !568, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !569, file: !193, line: 199, baseType: !573, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !539, file: !14, line: 2385, baseType: !575, offset: 576)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !576, line: 206, elements: !577)
!576 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!577 = !{}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !539, file: !14, line: 2386, baseType: !575, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !539, file: !14, line: 2387, baseType: !575, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !539, file: !14, line: 2388, baseType: !581, offset: 576)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, elements: !293)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !539, file: !14, line: 2390, baseType: !575, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !539, file: !14, line: 2391, baseType: !575, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !539, file: !14, line: 2392, baseType: !575, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !539, file: !14, line: 2393, baseType: !575, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !525, file: !14, line: 1197, baseType: !587, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !590)
!590 = !{!591, !595, !599, !600, !604, !610, !614, !615, !616, !620, !624, !628, !629, !630, !636, !641, !642, !1725, !1726, !1727, !1728, !1732, !1736, !1783, !1798, !1799}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !589, file: !14, line: 2058, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!373, !524}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !589, file: !14, line: 2059, baseType: !596, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !373}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !589, file: !14, line: 2060, baseType: !596, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !589, file: !14, line: 2062, baseType: !601, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !373, !109}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !589, file: !14, line: 2063, baseType: !605, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!109, !373, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !589, file: !14, line: 2064, baseType: !611, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!109, !373}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !589, file: !14, line: 2065, baseType: !596, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !589, file: !14, line: 2066, baseType: !559, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !589, file: !14, line: 2067, baseType: !617, size: 64, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!109, !524, !109}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !589, file: !14, line: 2068, baseType: !621, size: 64, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!109, !524, !13}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !589, file: !14, line: 2069, baseType: !625, size: 64, offset: 640)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!109, !524}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !589, file: !14, line: 2070, baseType: !621, size: 64, offset: 704)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !589, file: !14, line: 2071, baseType: !625, size: 64, offset: 768)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !589, file: !14, line: 2072, baseType: !631, size: 64, offset: 832)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!109, !408, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !589, file: !14, line: 2073, baseType: !637, size: 64, offset: 896)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!109, !524, !640, !292}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !589, file: !14, line: 2074, baseType: !559, size: 64, offset: 960)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !589, file: !14, line: 2076, baseType: !643, size: 64, offset: 1024)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!109, !646, !408}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !648, line: 17, size: 960, elements: !649)
!648 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !678, !700, !701, !1724}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !647, file: !648, line: 18, baseType: !292, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !647, file: !648, line: 19, baseType: !339, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !647, file: !648, line: 20, baseType: !339, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !647, file: !648, line: 21, baseType: !339, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !647, file: !648, line: 22, baseType: !339, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !647, file: !648, line: 23, baseType: !534, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !647, file: !648, line: 24, baseType: !534, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !647, file: !648, line: 25, baseType: !658, size: 256, offset: 448)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !659, line: 66, size: 256, elements: !660)
!659 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!660 = !{!661, !670, !672, !677}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !658, file: !659, line: 67, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !663, line: 13, baseType: !664)
!663 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !193, line: 181, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 179, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !665, file: !193, line: 180, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !251, line: 22, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !253, line: 30, baseType: !536)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !658, file: !659, line: 68, baseType: !671, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !231, line: 23, baseType: !230)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !658, file: !659, line: 70, baseType: !673, size: 32, offset: 96)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !674, line: 15, size: 32, elements: !675)
!674 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !673, file: !674, line: 20, baseType: !242, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !658, file: !659, line: 72, baseType: !192, size: 128, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !647, file: !648, line: 26, baseType: !679, size: 64, offset: 704)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !648, line: 32, size: 256, elements: !682)
!682 = !{!683, !688, !692, !696}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !681, file: !648, line: 33, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!364, !646, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !681, file: !648, line: 34, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !646, !364}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !681, file: !648, line: 35, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!364, !646, !364, !687}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !681, file: !648, line: 36, baseType: !697, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!109, !646, !364}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !647, file: !648, line: 27, baseType: !109, size: 32, offset: 768)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !647, file: !648, line: 28, baseType: !702, size: 64, offset: 832)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !705)
!705 = !{!706, !725, !726, !728, !729, !730, !731, !732, !795, !1007, !1016, !1022, !1023, !1714, !1715, !1716, !1717, !1719, !1720, !1723}
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !14, line: 995, baseType: !707, size: 128)
!707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !14, line: 995, size: 128, elements: !708)
!708 = !{!709, !715, !724}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !707, file: !14, line: 996, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !711, line: 60, size: 64, elements: !712)
!711 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !710, file: !711, line: 61, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !707, file: !14, line: 997, baseType: !716, size: 128, align: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !193, line: 232, size: 128, align: 64, elements: !717)
!717 = !{!718, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !716, file: !193, line: 233, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !716, file: !193, line: 234, baseType: !721, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !719}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !707, file: !14, line: 998, baseType: !7, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !704, file: !14, line: 1005, baseType: !222, size: 32, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !704, file: !14, line: 1006, baseType: !727, size: 32, offset: 160)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !193, line: 156, baseType: !7)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !704, file: !14, line: 1007, baseType: !662, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !704, file: !14, line: 1008, baseType: !658, size: 256, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !704, file: !14, line: 1009, baseType: !534, size: 64, offset: 512)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !704, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !704, file: !14, line: 1011, baseType: !733, size: 256, offset: 640)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !734)
!734 = !{!735, !756, !791, !792, !793, !794}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !733, file: !14, line: 949, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !737, line: 34, baseType: !738)
!737 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !737, line: 25, size: 64, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !738, file: !737, line: 26, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !742, line: 27, baseType: !743)
!742 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !742, line: 13, size: 64, elements: !744)
!744 = !{!745, !755}
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !742, line: 14, baseType: !746, size: 32)
!746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !742, line: 14, size: 32, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !746, file: !742, line: 15, baseType: !242, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !742, line: 16, baseType: !750, size: 32)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !746, file: !742, line: 16, size: 32, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !750, file: !742, line: 18, baseType: !250, size: 8)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !750, file: !742, line: 19, baseType: !754, size: 24, offset: 8)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 24, elements: !293)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !743, file: !742, line: 26, baseType: !234, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !733, file: !14, line: 950, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !759)
!759 = !{!760, !766, !767, !768, !772, !773, !780, !781}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !758, file: !19, line: 61, baseType: !761, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !762, line: 113, baseType: !763)
!762 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !762, line: 111, size: 32, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !763, file: !762, line: 112, baseType: !242, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !758, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !758, file: !19, line: 63, baseType: !222, size: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !758, file: !19, line: 65, baseType: !769, size: 256, offset: 128)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 256, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 4)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !758, file: !19, line: 66, baseType: !565, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !758, file: !19, line: 68, baseType: !774, size: 192, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !775, line: 41, baseType: !776)
!775 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !775, line: 37, size: 192, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !776, file: !775, line: 38, baseType: !222, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !776, file: !775, line: 39, baseType: !192, size: 128, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !758, file: !19, line: 69, baseType: !716, size: 128, align: 64, offset: 640)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !758, file: !19, line: 70, baseType: !782, offset: 768)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, elements: !789)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !783, file: !19, line: 55, baseType: !109, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !783, file: !19, line: 56, baseType: !787, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!789 = !{!790}
!790 = !DISubrange(count: -1)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !733, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !733, file: !14, line: 952, baseType: !379, size: 32, offset: 160)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !733, file: !14, line: 952, baseType: !379, size: 32, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !733, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !704, file: !14, line: 1012, baseType: !796, size: 64, offset: 896)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !799, line: 110, size: 1472, elements: !800)
!799 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!800 = !{!801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !817, !818, !819, !820, !821, !822, !952, !953, !954, !955, !956, !987, !990, !994, !1002}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !798, file: !799, line: 111, baseType: !662, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !798, file: !799, line: 112, baseType: !379, size: 32, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !798, file: !799, line: 113, baseType: !388, size: 32, offset: 96)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !798, file: !799, line: 114, baseType: !379, size: 32, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !798, file: !799, line: 115, baseType: !388, size: 32, offset: 160)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !798, file: !799, line: 116, baseType: !379, size: 32, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !798, file: !799, line: 117, baseType: !388, size: 32, offset: 224)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !798, file: !799, line: 118, baseType: !379, size: 32, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !798, file: !799, line: 119, baseType: !388, size: 32, offset: 288)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !798, file: !799, line: 120, baseType: !7, size: 32, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !798, file: !799, line: 121, baseType: !812, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !813, line: 24, baseType: !814)
!813 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 24, size: 64, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !814, file: !813, line: 24, baseType: !446, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !798, file: !799, line: 122, baseType: !812, size: 64, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !798, file: !799, line: 123, baseType: !812, size: 64, offset: 512)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !798, file: !799, line: 124, baseType: !812, size: 64, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !798, file: !799, line: 125, baseType: !812, size: 64, offset: 640)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !798, file: !799, line: 127, baseType: !254, size: 8, offset: 704)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !798, file: !799, line: 129, baseType: !823, size: 64, offset: 768)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !825, line: 195, size: 1728, elements: !826)
!825 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!826 = !{!827, !828, !833, !845, !854, !857, !858, !865, !866, !867, !868, !871, !872, !873, !875, !876, !916, !937}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !824, file: !825, line: 196, baseType: !761, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !824, file: !825, line: 197, baseType: !829, size: 32, offset: 32)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !825, line: 28, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !193, line: 104, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !251, line: 20, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !253, line: 26, baseType: !109)
!833 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !825, line: 198, baseType: !834, size: 192, offset: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !825, line: 198, size: 192, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !834, file: !825, line: 199, baseType: !192, size: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !834, file: !825, line: 200, baseType: !838, size: 192, align: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !839, line: 5, size: 192, align: 64, elements: !840)
!839 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!840 = !{!841, !842, !844}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !838, file: !839, line: 6, baseType: !342, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !838, file: !839, line: 7, baseType: !843, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !838, file: !839, line: 8, baseType: !843, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !824, file: !825, line: 205, baseType: !846, size: 320, offset: 256)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !847, line: 48, size: 320, elements: !848)
!847 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!848 = !{!849, !850, !851, !852, !853}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !846, file: !847, line: 49, baseType: !662, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !846, file: !847, line: 55, baseType: !662, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !846, file: !847, line: 57, baseType: !673, size: 32, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !846, file: !847, line: 59, baseType: !671, size: 32, offset: 160)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !846, file: !847, line: 60, baseType: !192, size: 128, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !824, file: !825, line: 206, baseType: !855, size: 64, offset: 576)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !825, line: 206, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !824, file: !825, line: 207, baseType: !364, size: 64, offset: 640)
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !825, line: 208, baseType: !859, size: 64, offset: 704)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !825, line: 208, size: 64, elements: !860)
!860 = !{!861, !864}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !859, file: !825, line: 209, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !863, line: 8, baseType: !669)
!863 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!864 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !859, file: !825, line: 210, baseType: !862, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !824, file: !825, line: 212, baseType: !862, size: 64, offset: 768)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !824, file: !825, line: 213, baseType: !379, size: 32, offset: 832)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !824, file: !825, line: 214, baseType: !388, size: 32, offset: 864)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !824, file: !825, line: 215, baseType: !869, size: 32, offset: 896)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !825, line: 31, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !193, line: 110, baseType: !442)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !824, file: !825, line: 216, baseType: !262, size: 16, offset: 928)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !824, file: !825, line: 217, baseType: !262, size: 16, offset: 944)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !824, file: !825, line: 221, baseType: !874, size: 16, offset: 960)
!874 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !824, file: !825, line: 228, baseType: !342, size: 64, offset: 1024)
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !825, line: 245, baseType: !877, size: 320, offset: 1088)
!877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !825, line: 245, size: 320, elements: !878)
!878 = !{!879, !908}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !877, file: !825, line: 246, baseType: !880, size: 320)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !825, line: 114, size: 320, elements: !881)
!881 = !{!882, !883, !895, !898, !907}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !880, file: !825, line: 116, baseType: !342, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !825, line: 117, baseType: !884, size: 64, offset: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !825, line: 117, size: 64, elements: !885)
!885 = !{!886, !894}
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !825, line: 118, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !884, file: !825, line: 118, size: 64, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !887, file: !825, line: 120, baseType: !260, size: 16)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !887, file: !825, line: 121, baseType: !891, size: 48, offset: 16)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 48, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 6)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !884, file: !825, line: 127, baseType: !342, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !880, file: !825, line: 129, baseType: !896, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !825, line: 102, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !880, file: !825, line: 130, baseType: !899, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !825, line: 108, size: 192, elements: !901)
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !900, file: !825, line: 109, baseType: !716, size: 128, align: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !900, file: !825, line: 110, baseType: !761, size: 32, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !900, file: !825, line: 111, baseType: !905, size: 8, offset: 160)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !193, line: 35, baseType: !906)
!906 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !880, file: !825, line: 131, baseType: !211, size: 64, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !825, line: 247, baseType: !909, size: 320)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !825, line: 247, size: 320, elements: !910)
!910 = !{!911, !912, !913, !914, !915}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !909, file: !825, line: 248, baseType: !342, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !909, file: !825, line: 249, baseType: !342, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !909, file: !825, line: 250, baseType: !896, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !909, file: !825, line: 251, baseType: !899, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !909, file: !825, line: 252, baseType: !292, size: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !825, line: 260, baseType: !917, size: 256, offset: 1408)
!917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !824, file: !825, line: 260, size: 256, elements: !918)
!918 = !{!919, !925}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !917, file: !825, line: 261, baseType: !920, size: 256)
!920 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !825, line: 134, size: 256, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !920, file: !825, line: 135, baseType: !364, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !920, file: !825, line: 136, baseType: !924, size: 256)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 256, elements: !770)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !825, line: 262, baseType: !926, size: 256)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !825, line: 262, size: 256, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !926, file: !825, line: 264, baseType: !192, size: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !926, file: !825, line: 265, baseType: !930, size: 128, offset: 128)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !931, line: 22, size: 128, elements: !932)
!931 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!932 = !{!933, !936}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !930, file: !931, line: 23, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !931, line: 23, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !930, file: !931, line: 24, baseType: !342, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !824, file: !825, line: 280, baseType: !938, size: 64, offset: 1664)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !825, line: 176, size: 192, elements: !940)
!940 = !{!941, !950, !951}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !939, file: !825, line: 177, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !825, line: 171, baseType: !943)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!109, !823, !946, !948, !823}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !897)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !939, file: !825, line: 178, baseType: !823, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !939, file: !825, line: 179, baseType: !896, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !798, file: !799, line: 130, baseType: !823, size: 64, offset: 832)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !798, file: !799, line: 131, baseType: !823, size: 64, offset: 896)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !798, file: !799, line: 132, baseType: !823, size: 64, offset: 960)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !798, file: !799, line: 135, baseType: !364, size: 64, offset: 1024)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !798, file: !799, line: 137, baseType: !957, size: 64, offset: 1088)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !959, line: 14, size: 1088, elements: !960)
!959 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!960 = !{!961, !962, !971, !972, !973, !974, !975, !976}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !958, file: !959, line: 15, baseType: !761, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !958, file: !959, line: 17, baseType: !963, size: 320, offset: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !964, line: 22, size: 320, elements: !965)
!964 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!965 = !{!966, !967, !968, !969}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !963, file: !964, line: 23, baseType: !671, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !963, file: !964, line: 24, baseType: !668, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !963, file: !964, line: 26, baseType: !192, size: 128, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !963, file: !964, line: 28, baseType: !970, size: 64, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !958, file: !959, line: 19, baseType: !342, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !958, file: !959, line: 20, baseType: !662, size: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !958, file: !959, line: 23, baseType: !569, size: 128, offset: 512)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !958, file: !959, line: 24, baseType: !379, size: 32, offset: 640)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !958, file: !959, line: 29, baseType: !662, size: 64, offset: 704)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !958, file: !959, line: 36, baseType: !977, size: 320, offset: 768)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !978, line: 15, size: 320, elements: !979)
!978 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!979 = !{!980, !981, !982, !983, !984, !985, !986}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !977, file: !978, line: 16, baseType: !671, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !977, file: !978, line: 18, baseType: !109, size: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !977, file: !978, line: 19, baseType: !109, size: 32, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !977, file: !978, line: 20, baseType: !109, size: 32, offset: 96)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !977, file: !978, line: 21, baseType: !109, size: 32, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !977, file: !978, line: 22, baseType: !342, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !977, file: !978, line: 23, baseType: !342, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !798, file: !799, line: 138, baseType: !988, size: 64, offset: 1152)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !27, line: 901, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !798, file: !799, line: 139, baseType: !991, size: 64, offset: 1216)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !993, line: 16, flags: DIFlagFwdDecl)
!993 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!994 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !798, file: !799, line: 140, baseType: !995, size: 64, offset: 1280)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !799, line: 25, size: 64, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !996, file: !799, line: 26, baseType: !242, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !996, file: !799, line: 27, baseType: !109, size: 32, offset: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !996, file: !799, line: 28, baseType: !1001, offset: 64)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, elements: !789)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !799, line: 142, baseType: !1003, size: 128, offset: 1344)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !798, file: !799, line: 142, size: 128, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1003, file: !799, line: 143, baseType: !109, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1003, file: !799, line: 144, baseType: !716, size: 128, align: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !704, file: !14, line: 1013, baseType: !1008, size: 256, offset: 960)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1009)
!1009 = !{!1010, !1011, !1012, !1013, !1014, !1015}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1008, file: !14, line: 971, baseType: !342, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1008, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1008, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1008, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1008, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1008, file: !14, line: 976, baseType: !534, size: 64, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !704, file: !14, line: 1014, baseType: !1017, size: 128, offset: 1216)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1018, line: 8, size: 128, elements: !1019)
!1018 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1017, file: !1018, line: 9, baseType: !518, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1017, file: !1018, line: 10, baseType: !408, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !704, file: !14, line: 1015, baseType: !373, size: 64, offset: 1344)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !704, file: !14, line: 1016, baseType: !1024, size: 64, offset: 1408)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1027)
!1027 = !{!1028, !1029, !1034, !1038, !1042, !1127, !1128, !1134, !1147, !1164, !1168, !1169, !1635, !1636, !1640, !1645, !1646, !1650, !1654, !1660, !1661, !1665, !1666, !1673, !1677, !1681, !1687, !1691, !1695, !1699, !1703, !1704, !1710}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1026, file: !14, line: 1915, baseType: !187, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1026, file: !14, line: 1916, baseType: !1030, size: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!534, !1033, !534, !109}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1026, file: !14, line: 1917, baseType: !1035, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!324, !1033, !292, !339, !687}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1026, file: !14, line: 1918, baseType: !1039, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!324, !1033, !211, !339, !687}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1026, file: !14, line: 1919, baseType: !1043, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!324, !1046, !1068}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1055, !1056, !1057, !1058}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1047, file: !14, line: 374, baseType: !1033, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1047, file: !14, line: 375, baseType: !534, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1047, file: !14, line: 376, baseType: !1052, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !1046, !328}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1047, file: !14, line: 377, baseType: !364, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1047, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1047, file: !14, line: 379, baseType: !260, size: 16, offset: 288)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !14, line: 380, baseType: !1059, size: 64, offset: 320)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !14, line: 380, size: 64, elements: !1060)
!1060 = !{!1061, !1064}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1059, file: !14, line: 386, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1059, file: !14, line: 395, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!324, !364}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1070, line: 41, size: 320, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1082, !1122}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1069, file: !1070, line: 42, baseType: !250, size: 8)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1069, file: !1070, line: 43, baseType: !905, size: 8, offset: 8)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1069, file: !1070, line: 44, baseType: !905, size: 8, offset: 16)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1069, file: !1070, line: 45, baseType: !905, size: 8, offset: 24)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1069, file: !1070, line: 46, baseType: !905, size: 8, offset: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !1070, line: 47, baseType: !1078, size: 64, offset: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1069, file: !1070, line: 47, size: 64, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1078, file: !1070, line: 48, baseType: !339, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1078, file: !1070, line: 49, baseType: !109, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !1070, line: 61, baseType: !1083, size: 128, offset: 128)
!1083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1069, file: !1070, line: 61, size: 128, elements: !1084)
!1084 = !{!1085, !1091}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1083, file: !1070, line: 67, baseType: !1086, size: 128)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1087, line: 17, size: 128, elements: !1088)
!1087 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1086, file: !1087, line: 19, baseType: !364, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1086, file: !1087, line: 20, baseType: !340, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !1070, line: 68, baseType: !1092, size: 128)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1083, file: !1070, line: 68, size: 128, elements: !1093)
!1093 = !{!1094, !1121}
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !1070, line: 69, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1092, file: !1070, line: 69, size: 64, elements: !1096)
!1096 = !{!1097, !1100, !1107, !1111, !1120}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1095, file: !1070, line: 71, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1086)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1095, file: !1070, line: 72, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1070, line: 17, size: 128, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1103, file: !1070, line: 18, baseType: !364, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1103, file: !1070, line: 19, baseType: !339, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1095, file: !1070, line: 73, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1110)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1070, line: 73, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1095, file: !1070, line: 74, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1114, line: 296, size: 128, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1115 = !{!1116, !1117, !1119}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1113, file: !1114, line: 297, baseType: !222, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1113, file: !1114, line: 299, baseType: !1118, size: 32, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !193, line: 154, baseType: !7)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1113, file: !1114, line: 300, baseType: !364, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1095, file: !1070, line: 75, baseType: !364, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1092, file: !1070, line: 77, baseType: !339, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !1070, line: 80, baseType: !1123, size: 64, offset: 256)
!1123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1069, file: !1070, line: 80, size: 64, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1123, file: !1070, line: 81, baseType: !342, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1123, file: !1070, line: 82, baseType: !534, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1026, file: !14, line: 1920, baseType: !1043, size: 64, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1026, file: !14, line: 1921, baseType: !1129, size: 64, offset: 384)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!109, !1046, !1132, !7}
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1026, file: !14, line: 1923, baseType: !1135, size: 64, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!109, !1033, !1138}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1140)
!1140 = !{!1141, !1146}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1139, file: !14, line: 1859, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1143)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!905, !1138, !211, !109, !534, !446, !7}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1139, file: !14, line: 1860, baseType: !534, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1026, file: !14, line: 1924, baseType: !1148, size: 64, offset: 512)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!1151, !1033, !1153}
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1152, line: 59, baseType: !7)
!1152 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1155, line: 37, size: 128, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1156 = !{!1157, !1163}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1154, file: !1155, line: 38, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1155, line: 31, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !1033, !1162, !1153}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1154, file: !1155, line: 39, baseType: !1151, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1026, file: !14, line: 1925, baseType: !1165, size: 64, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!328, !1033, !7, !342}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1026, file: !14, line: 1926, baseType: !1165, size: 64, offset: 640)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1026, file: !14, line: 1927, baseType: !1170, size: 64, offset: 704)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!109, !1033, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !1175)
!1175 = !{!1176, !1185, !1353, !1359, !1366, !1367, !1372, !1373, !1378, !1379, !1382, !1628, !1629, !1630, !1631, !1632, !1633}
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !27, line: 628, baseType: !1177, size: 128)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !27, line: 628, size: 128, elements: !1178)
!1178 = !{!1179, !1184}
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !27, line: 629, baseType: !1180, size: 128)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1177, file: !27, line: 629, size: 128, elements: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1180, file: !27, line: 631, baseType: !342, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1180, file: !27, line: 632, baseType: !342, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1177, file: !27, line: 635, baseType: !716, size: 128, align: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1174, file: !27, line: 639, baseType: !1186, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !1188)
!1188 = !{!1189, !1351}
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !27, line: 734, baseType: !1190, size: 10240)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1187, file: !27, line: 734, size: 10240, elements: !1191)
!1191 = !{!1192, !1196, !1209, !1213, !1214, !1215, !1216, !1217, !1218, !1227, !1228, !1229, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1268, !1270, !1273, !1320, !1321, !1322, !1325, !1326, !1327, !1330, !1331, !1332, !1338, !1339}
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !27, line: 739, baseType: !1193, size: 512, align: 512)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1190, file: !27, line: 739, size: 512, align: 512, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1193, file: !27, line: 747, baseType: !242, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1190, file: !27, line: 750, baseType: !1197, size: 128, offset: 512)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1198, line: 218, size: 128, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1199 = !{!1200, !1207, !1208}
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1198, line: 219, baseType: !1201, size: 32)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !1198, line: 219, size: 32, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1201, file: !1198, line: 220, baseType: !222, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1201, file: !1198, line: 221, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1198, line: 197, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1198, line: 197, elements: !577)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1197, file: !1198, line: 223, baseType: !7, size: 32, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1197, file: !1198, line: 224, baseType: !364, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1190, file: !27, line: 752, baseType: !1210, size: 64, offset: 640)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!342, !1033, !342, !342, !342, !342}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1190, file: !27, line: 756, baseType: !342, size: 64, offset: 704)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1190, file: !27, line: 757, baseType: !342, size: 64, offset: 768)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1190, file: !27, line: 760, baseType: !342, size: 64, offset: 832)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1190, file: !27, line: 761, baseType: !342, size: 64, offset: 896)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1190, file: !27, line: 763, baseType: !342, size: 64, offset: 960)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1190, file: !27, line: 764, baseType: !1219, size: 64, offset: 1024)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1221, line: 299, baseType: !1222)
!1221 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1221, line: 299, size: 64, elements: !1223)
!1223 = !{!1224}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1222, file: !1221, line: 299, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1226, line: 18, baseType: !342)
!1226 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1190, file: !27, line: 773, baseType: !242, size: 32, offset: 1088)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1190, file: !27, line: 785, baseType: !242, size: 32, offset: 1120)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1190, file: !27, line: 795, baseType: !1230, size: 64, offset: 1152)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !1232)
!1232 = !{!1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1231, file: !27, line: 727, baseType: !446, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1231, file: !27, line: 728, baseType: !109, size: 32, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1190, file: !27, line: 801, baseType: !342, size: 64, offset: 1216)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1190, file: !27, line: 804, baseType: !662, size: 64, offset: 1280)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1190, file: !27, line: 806, baseType: !109, size: 32, offset: 1344)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1190, file: !27, line: 808, baseType: !222, size: 32, offset: 1376)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1190, file: !27, line: 823, baseType: !846, size: 320, offset: 1408)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1190, file: !27, line: 825, baseType: !192, size: 128, offset: 1728)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1190, file: !27, line: 845, baseType: !109, size: 32, offset: 1856)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1190, file: !27, line: 849, baseType: !342, size: 64, offset: 1920)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1190, file: !27, line: 850, baseType: !342, size: 64, offset: 1984)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1190, file: !27, line: 852, baseType: !342, size: 64, offset: 2048)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1190, file: !27, line: 853, baseType: !342, size: 64, offset: 2112)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1190, file: !27, line: 854, baseType: !664, size: 64, offset: 2176)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1190, file: !27, line: 855, baseType: !342, size: 64, offset: 2240)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1190, file: !27, line: 856, baseType: !342, size: 64, offset: 2304)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1190, file: !27, line: 857, baseType: !342, size: 64, offset: 2368)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1190, file: !27, line: 858, baseType: !342, size: 64, offset: 2432)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1190, file: !27, line: 865, baseType: !419, size: 32, offset: 2496)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1190, file: !27, line: 867, baseType: !222, size: 32, offset: 2528)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1190, file: !27, line: 869, baseType: !342, size: 64, offset: 2560)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1190, file: !27, line: 869, baseType: !342, size: 64, offset: 2624)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1190, file: !27, line: 869, baseType: !342, size: 64, offset: 2688)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1190, file: !27, line: 869, baseType: !342, size: 64, offset: 2752)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1190, file: !27, line: 870, baseType: !342, size: 64, offset: 2816)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1190, file: !27, line: 870, baseType: !342, size: 64, offset: 2880)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1190, file: !27, line: 870, baseType: !342, size: 64, offset: 2944)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1190, file: !27, line: 871, baseType: !342, size: 64, offset: 3008)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1190, file: !27, line: 871, baseType: !342, size: 64, offset: 3072)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1190, file: !27, line: 871, baseType: !342, size: 64, offset: 3136)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1190, file: !27, line: 871, baseType: !342, size: 64, offset: 3200)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1190, file: !27, line: 873, baseType: !1265, size: 3328, offset: 3264)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 3328, elements: !1266)
!1266 = !{!1267}
!1267 = !DISubrange(count: 52)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1190, file: !27, line: 875, baseType: !1269, size: 1280, offset: 6592)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !963, size: 1280, elements: !770)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1190, file: !27, line: 877, baseType: !1271, size: 64, offset: 7872)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1190, file: !27, line: 880, baseType: !1274, size: 1088, offset: 7936)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1275, line: 72, baseType: !1276)
!1275 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1275, line: 23, size: 1088, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1285, !1286, !1287, !1288, !1315, !1316, !1317}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1276, file: !1275, line: 28, baseType: !446, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1276, file: !1275, line: 38, baseType: !664, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1276, file: !1275, line: 40, baseType: !342, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1276, file: !1275, line: 43, baseType: !846, size: 320, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1276, file: !1275, line: 44, baseType: !1283, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1275, line: 44, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1276, file: !1275, line: 48, baseType: !342, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1276, file: !1275, line: 59, baseType: !658, size: 256, offset: 640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1276, file: !1275, line: 60, baseType: !364, size: 64, offset: 896)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1276, file: !1275, line: 61, baseType: !1289, size: 64, offset: 960)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1291)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1292, line: 13, size: 1216, elements: !1293)
!1292 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1299, !1300, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1291, file: !1292, line: 14, baseType: !364, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1291, file: !1292, line: 15, baseType: !342, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1291, file: !1292, line: 17, baseType: !342, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1291, file: !1292, line: 17, baseType: !342, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1291, file: !1292, line: 18, baseType: !342, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1291, file: !1292, line: 18, baseType: !342, size: 64, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1291, file: !1292, line: 19, baseType: !1301, size: 64, offset: 384)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1291, file: !1292, line: 21, baseType: !328, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1291, file: !1292, line: 23, baseType: !328, size: 64, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1291, file: !1292, line: 24, baseType: !328, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1291, file: !1292, line: 25, baseType: !328, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1291, file: !1292, line: 26, baseType: !328, size: 64, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1291, file: !1292, line: 27, baseType: !328, size: 64, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1291, file: !1292, line: 28, baseType: !328, size: 64, offset: 832)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1291, file: !1292, line: 29, baseType: !328, size: 64, offset: 896)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1291, file: !1292, line: 30, baseType: !328, size: 64, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1291, file: !1292, line: 31, baseType: !328, size: 64, offset: 1024)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1291, file: !1292, line: 32, baseType: !328, size: 64, offset: 1088)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1291, file: !1292, line: 33, baseType: !328, size: 64, offset: 1152)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1276, file: !1275, line: 63, baseType: !242, size: 32, offset: 1024)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1276, file: !1275, line: 69, baseType: !260, size: 16, offset: 1056)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1276, file: !1275, line: 70, baseType: !1318, size: 16, offset: 1072)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !251, line: 18, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !253, line: 23, baseType: !874)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !27, line: 882, baseType: !342, size: 64, offset: 9024)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1190, file: !27, line: 885, baseType: !222, size: 32, offset: 9088)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1190, file: !27, line: 886, baseType: !1323, size: 64, offset: 9152)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1190, file: !27, line: 901, baseType: !988, size: 64, offset: 9216)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1190, file: !27, line: 904, baseType: !1033, size: 64, offset: 9280)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1190, file: !27, line: 906, baseType: !1328, size: 64, offset: 9344)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1190, file: !27, line: 930, baseType: !242, size: 32, offset: 9408)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1190, file: !27, line: 933, baseType: !242, size: 32, offset: 9440)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1190, file: !27, line: 935, baseType: !1333, size: 64, offset: 9472)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1333, file: !68, line: 104, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1190, file: !27, line: 940, baseType: !662, size: 64, offset: 9536)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1190, file: !27, line: 942, baseType: !1340, size: 256, offset: 9600)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1341, line: 98, size: 256, elements: !1342)
!1341 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1342 = !{!1343, !1344, !1345}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1340, file: !1341, line: 99, baseType: !662, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1340, file: !1341, line: 100, baseType: !192, size: 128, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1340, file: !1341, line: 101, baseType: !1346, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1341, line: 21, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1187, file: !27, line: 986, baseType: !1352, offset: 10240)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, elements: !789)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1174, file: !27, line: 640, baseType: !1354, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1221, line: 297, baseType: !1355)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1221, line: 297, size: 64, elements: !1356)
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1355, file: !1221, line: 297, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1226, line: 19, baseType: !342)
!1359 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !27, line: 646, baseType: !1360, size: 64, offset: 256)
!1360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !27, line: 646, size: 64, elements: !1361)
!1361 = !{!1362, !1365}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1360, file: !27, line: 647, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !342)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1360, file: !27, line: 648, baseType: !1364, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1174, file: !27, line: 666, baseType: !109, size: 32, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1174, file: !27, line: 667, baseType: !1368, size: 64, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !1370)
!1370 = !{!1371}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1369, file: !27, line: 580, baseType: !846, size: 320)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1174, file: !27, line: 670, baseType: !905, size: 8, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1174, file: !27, line: 681, baseType: !1374, size: 256, offset: 512)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !27, line: 678, size: 256, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1374, file: !27, line: 679, baseType: !838, size: 192, align: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1374, file: !27, line: 680, baseType: !342, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1174, file: !27, line: 689, baseType: !192, size: 128, offset: 768)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1174, file: !27, line: 691, baseType: !1380, size: 64, offset: 896)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1174, file: !27, line: 694, baseType: !1383, size: 64, offset: 960)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1386, line: 563, size: 1024, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1387 = !{!1388, !1392, !1393, !1397, !1401, !1405, !1592, !1596, !1600, !1604, !1605, !1606, !1610, !1614, !1620, !1624}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1385, file: !1386, line: 564, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !1173}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1385, file: !1386, line: 569, baseType: !1389, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1385, file: !1386, line: 571, baseType: !1394, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!109, !1173, !342}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1385, file: !1386, line: 572, baseType: !1398, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!109, !1173}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1385, file: !1386, line: 578, baseType: !1402, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!109, !1173, !342, !342, !342}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1385, file: !1386, line: 580, baseType: !1406, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1386, line: 512, size: 896, elements: !1412)
!1412 = !{!1413, !1421, !1422, !1429, !1436, !1446, !1585, !1586, !1588, !1590}
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !1386, line: 513, baseType: !1414, size: 320)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1411, file: !1386, line: 513, size: 320, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1420}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1414, file: !1386, line: 514, baseType: !1173, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1414, file: !1386, line: 515, baseType: !1118, size: 32, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1414, file: !1386, line: 516, baseType: !342, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1414, file: !1386, line: 517, baseType: !342, size: 64, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1414, file: !1386, line: 518, baseType: !342, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1411, file: !1386, line: 520, baseType: !26, size: 32, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1411, file: !1386, line: 522, baseType: !1423, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1226, line: 22, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1226, line: 22, size: 64, elements: !1426)
!1426 = !{!1427}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1425, file: !1226, line: 22, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1226, line: 15, baseType: !342)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1411, file: !1386, line: 524, baseType: !1430, size: 64, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1221, line: 372, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1221, line: 372, size: 64, elements: !1433)
!1433 = !{!1434}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1432, file: !1221, line: 372, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1226, line: 16, baseType: !342)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !1386, line: 527, baseType: !1437, size: 64, offset: 512)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1411, file: !1386, line: 527, size: 64, elements: !1438)
!1438 = !{!1439, !1445}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1437, file: !1386, line: 528, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1226, line: 21, baseType: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1226, line: 21, size: 64, elements: !1442)
!1442 = !{!1443}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1441, file: !1226, line: 21, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1226, line: 14, baseType: !342)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1437, file: !1386, line: 529, baseType: !1424, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1411, file: !1386, line: 534, baseType: !1447, size: 64, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !1449)
!1449 = !{!1450, !1451, !1579, !1584}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1448, file: !27, line: 75, baseType: !342, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !27, line: 83, baseType: !1452, size: 320, offset: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !27, line: 83, size: 320, elements: !1453)
!1453 = !{!1454, !1475, !1489, !1493, !1578}
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !27, line: 84, baseType: !1455, size: 320)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !27, line: 84, size: 320, elements: !1456)
!1456 = !{!1457, !1468, !1469, !1474}
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !27, line: 90, baseType: !1458, size: 128)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !27, line: 90, size: 128, elements: !1459)
!1459 = !{!1460, !1461, !1466, !1467}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1458, file: !27, line: 91, baseType: !192, size: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !27, line: 94, baseType: !1462, size: 128)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !27, line: 94, size: 128, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1462, file: !27, line: 96, baseType: !364, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1462, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1458, file: !27, line: 102, baseType: !192, size: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1458, file: !27, line: 103, baseType: !192, size: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1455, file: !27, line: 106, baseType: !369, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !27, line: 107, baseType: !1470, size: 64, offset: 192)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !27, line: 107, size: 64, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1470, file: !27, line: 108, baseType: !342, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1470, file: !27, line: 109, baseType: !342, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1455, file: !27, line: 117, baseType: !342, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !27, line: 119, baseType: !1476, size: 320)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !27, line: 119, size: 320, elements: !1477)
!1477 = !{!1478, !1479, !1482, !1483, !1484}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1476, file: !27, line: 124, baseType: !342, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1476, file: !27, line: 125, baseType: !1480, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1476, file: !27, line: 126, baseType: !342, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1476, file: !27, line: 127, baseType: !342, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !27, line: 128, baseType: !1485, size: 64, offset: 256)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !27, line: 128, size: 64, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1485, file: !27, line: 133, baseType: !342, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1485, file: !27, line: 138, baseType: !662, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !27, line: 141, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !27, line: 141, size: 64, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1490, file: !27, line: 142, baseType: !342, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !27, line: 144, baseType: !1494, size: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !27, line: 144, size: 128, elements: !1495)
!1495 = !{!1496, !1577}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1494, file: !27, line: 146, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !1499)
!1499 = !{!1500, !1510, !1531, !1542, !1543, !1544, !1545, !1559, !1560, !1561}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1498, file: !43, line: 127, baseType: !1501, size: 384)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !1502)
!1502 = !{!1503, !1504, !1506, !1507, !1508, !1509}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1501, file: !43, line: 22, baseType: !342, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1501, file: !43, line: 23, baseType: !1505, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1501, file: !43, line: 24, baseType: !1505, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1501, file: !43, line: 25, baseType: !342, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1501, file: !43, line: 26, baseType: !342, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1501, file: !43, line: 27, baseType: !342, size: 64, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1498, file: !43, line: 128, baseType: !1511, size: 128, offset: 384)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1512, line: 105, size: 128, elements: !1513)
!1512 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1511, file: !1512, line: 110, baseType: !342, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1511, file: !1512, line: 118, baseType: !1516, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1512, line: 95, size: 448, elements: !1518)
!1518 = !{!1519, !1520, !1526, !1527, !1528, !1529, !1530}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1517, file: !1512, line: 96, baseType: !662, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1517, file: !1512, line: 97, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1512, line: 60, baseType: !1523)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !1525}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1517, file: !1512, line: 98, baseType: !1521, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1517, file: !1512, line: 99, baseType: !905, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1517, file: !1512, line: 100, baseType: !905, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1517, file: !1512, line: 101, baseType: !716, size: 128, align: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1517, file: !1512, line: 102, baseType: !1525, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1498, file: !43, line: 129, baseType: !1532, size: 256, offset: 512)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1533, line: 26, size: 256, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1532, file: !1533, line: 27, baseType: !7, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1532, file: !1533, line: 28, baseType: !1537, size: 192, offset: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1538, line: 43, size: 192, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1537, file: !1538, line: 44, baseType: !671, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1537, file: !1538, line: 45, baseType: !192, size: 128, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1498, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1498, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1498, file: !43, line: 132, baseType: !342, size: 64, offset: 832)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1498, file: !43, line: 133, baseType: !1546, size: 64, offset: 896)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1548)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !1549)
!1549 = !{!1550, !1554, !1555}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1548, file: !43, line: 83, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !1447}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1548, file: !43, line: 89, baseType: !1406, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1548, file: !43, line: 100, baseType: !1556, size: 64, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!109, !1497, !342, !342, !109}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1498, file: !43, line: 134, baseType: !364, size: 64, offset: 960)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1498, file: !43, line: 135, baseType: !109, size: 32, offset: 1024)
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !43, line: 136, baseType: !1562, size: 128, offset: 1088)
!1562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !43, line: 136, size: 128, elements: !1563)
!1563 = !{!1564, !1570}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1562, file: !43, line: 137, baseType: !1565, size: 128)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1566, line: 6, size: 128, elements: !1567)
!1566 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1565, file: !1566, line: 7, baseType: !446, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1565, file: !1566, line: 8, baseType: !446, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !43, line: 138, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1562, file: !43, line: 138, elements: !1572)
!1572 = !{!1573, !1575}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1571, file: !43, line: 138, baseType: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !43, line: 138, elements: !577)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1571, file: !43, line: 138, baseType: !1576)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1565, elements: !789)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1494, file: !27, line: 147, baseType: !364, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1452, file: !27, line: 161, baseType: !716, size: 128, align: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !27, line: 164, baseType: !1580, size: 32, offset: 384)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !27, line: 164, size: 32, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1580, file: !27, line: 169, baseType: !242, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1580, file: !27, line: 177, baseType: !7, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1448, file: !27, line: 181, baseType: !242, size: 32, offset: 416)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1411, file: !1386, line: 535, baseType: !1447, size: 64, offset: 640)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1411, file: !1386, line: 541, baseType: !1587, size: 64, offset: 704)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1411, file: !1386, line: 545, baseType: !1589, size: 64, offset: 768)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1411, file: !1386, line: 549, baseType: !1591, size: 64, offset: 832)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1221, line: 520, baseType: !1447)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1385, file: !1386, line: 581, baseType: !1593, size: 64, offset: 384)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1409, !1410, !7}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1385, file: !1386, line: 582, baseType: !1597, size: 64, offset: 448)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!1409, !1410, !342, !342}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1385, file: !1386, line: 584, baseType: !1601, size: 64, offset: 512)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!342, !1173}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1385, file: !1386, line: 588, baseType: !1406, size: 64, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1385, file: !1386, line: 591, baseType: !1406, size: 64, offset: 640)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1385, file: !1386, line: 597, baseType: !1607, size: 64, offset: 704)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!109, !1173, !342, !364, !109, !109}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1385, file: !1386, line: 603, baseType: !1611, size: 64, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!211, !1173}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1385, file: !1386, line: 613, baseType: !1615, size: 64, offset: 832)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!109, !1173, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !27, line: 717, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1385, file: !1386, line: 625, baseType: !1621, size: 64, offset: 896)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!1618, !1173, !342}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1385, file: !1386, line: 633, baseType: !1625, size: 64, offset: 960)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!1447, !1173, !342}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1174, file: !27, line: 697, baseType: !342, size: 64, offset: 1024)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1174, file: !27, line: 699, baseType: !1033, size: 64, offset: 1088)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1174, file: !27, line: 700, baseType: !364, size: 64, offset: 1152)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1174, file: !27, line: 711, baseType: !662, size: 64, offset: 1216)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1174, file: !27, line: 717, baseType: !1618, size: 64, offset: 1280)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1174, file: !27, line: 722, baseType: !1634, offset: 1344)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !577)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1026, file: !14, line: 1928, baseType: !342, size: 64, offset: 768)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1026, file: !14, line: 1929, baseType: !1637, size: 64, offset: 832)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!109, !373, !1033}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1026, file: !14, line: 1930, baseType: !1641, size: 64, offset: 896)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!109, !1033, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !364)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1026, file: !14, line: 1931, baseType: !1637, size: 64, offset: 960)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1026, file: !14, line: 1932, baseType: !1647, size: 64, offset: 1024)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!109, !1033, !534, !534, !109}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1026, file: !14, line: 1933, baseType: !1651, size: 64, offset: 1088)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!109, !109, !1033, !109}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1026, file: !14, line: 1934, baseType: !1655, size: 64, offset: 1152)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!109, !1033, !109, !1658}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1026, file: !14, line: 1935, baseType: !1210, size: 64, offset: 1216)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1026, file: !14, line: 1936, baseType: !1662, size: 64, offset: 1280)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!109, !109}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1026, file: !14, line: 1937, baseType: !1655, size: 64, offset: 1344)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1026, file: !14, line: 1938, baseType: !1667, size: 64, offset: 1408)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!324, !1670, !1033, !687, !339, !7}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1672, line: 59, flags: DIFlagFwdDecl)
!1672 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1026, file: !14, line: 1939, baseType: !1674, size: 64, offset: 1472)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!324, !1033, !687, !1670, !339, !7}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1026, file: !14, line: 1940, baseType: !1678, size: 64, offset: 1536)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1033}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1026, file: !14, line: 1941, baseType: !1682, size: 64, offset: 1600)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!109, !1033, !109, !1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1026, file: !14, line: 1942, baseType: !1688, size: 64, offset: 1664)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!328, !1033, !109, !534, !534}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1026, file: !14, line: 1944, baseType: !1692, size: 64, offset: 1728)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{null, !646, !1033}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1026, file: !14, line: 1948, baseType: !1696, size: 64, offset: 1792)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!324, !1033, !534, !1033, !534, !339, !7}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1026, file: !14, line: 1950, baseType: !1700, size: 64, offset: 1856)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!534, !1033, !534, !1033, !534, !534, !7}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1026, file: !14, line: 1953, baseType: !1647, size: 64, offset: 1920)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1026, file: !14, line: 1954, baseType: !1705, size: 64, offset: 1984)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!109, !1708, !7}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1026, file: !14, line: 1955, baseType: !1711, size: 64, offset: 2048)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!109, !1708, !1132, !7}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !704, file: !14, line: 1018, baseType: !446, size: 64, offset: 1472)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !704, file: !14, line: 1020, baseType: !364, size: 64, offset: 1536)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !704, file: !14, line: 1023, baseType: !364, size: 64, offset: 1600)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !704, file: !14, line: 1027, baseType: !1718, size: 64, offset: 1664)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !704, file: !14, line: 1029, baseType: !369, size: 64, offset: 1728)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !704, file: !14, line: 1030, baseType: !1721, size: 32, offset: 1792)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1722, line: 8, baseType: !442)
!1722 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !704, file: !14, line: 1031, baseType: !1721, size: 32, offset: 1824)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !647, file: !648, line: 29, baseType: !364, size: 64, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !589, file: !14, line: 2077, baseType: !643, size: 64, offset: 1088)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !589, file: !14, line: 2078, baseType: !643, size: 64, offset: 1152)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !589, file: !14, line: 2079, baseType: !643, size: 64, offset: 1216)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !589, file: !14, line: 2081, baseType: !1729, size: 64, offset: 1280)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!324, !524, !109, !292, !339, !534}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !589, file: !14, line: 2082, baseType: !1733, size: 64, offset: 1344)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!324, !524, !109, !211, !339, !534}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !589, file: !14, line: 2083, baseType: !1737, size: 64, offset: 1408)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!1740, !373}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1768, !1769, !1770}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1742, file: !51, line: 297, baseType: !569, size: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1742, file: !51, line: 298, baseType: !192, size: 128, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1742, file: !51, line: 299, baseType: !192, size: 128, offset: 256)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1742, file: !51, line: 300, baseType: !192, size: 128, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1742, file: !51, line: 301, baseType: !658, size: 256, offset: 512)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1742, file: !51, line: 302, baseType: !222, size: 32, offset: 768)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1742, file: !51, line: 303, baseType: !242, size: 32, offset: 800)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1742, file: !51, line: 304, baseType: !524, size: 64, offset: 832)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1742, file: !51, line: 305, baseType: !1753, size: 64, offset: 896)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !1754)
!1754 = !{!1755, !1767}
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !51, line: 69, baseType: !1756, size: 32)
!1756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1753, file: !51, line: 69, size: 32, elements: !1757)
!1757 = !{!1758, !1759, !1760}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1756, file: !51, line: 70, baseType: !379, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1756, file: !51, line: 71, baseType: !388, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1756, file: !51, line: 72, baseType: !1761, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1762, line: 24, baseType: !1763)
!1762 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1762, line: 22, size: 32, elements: !1764)
!1764 = !{!1765}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1763, file: !1762, line: 23, baseType: !1766, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1762, line: 20, baseType: !385)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1753, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1742, file: !51, line: 306, baseType: !534, size: 64, offset: 960)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1742, file: !51, line: 307, baseType: !342, size: 64, offset: 1024)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1742, file: !51, line: 308, baseType: !1771, size: 576, offset: 1088)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !1772)
!1772 = !{!1773, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1771, file: !51, line: 206, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !536)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1771, file: !51, line: 207, baseType: !1774, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1771, file: !51, line: 208, baseType: !1774, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1771, file: !51, line: 209, baseType: !1774, size: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1771, file: !51, line: 210, baseType: !1774, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1771, file: !51, line: 211, baseType: !1774, size: 64, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1771, file: !51, line: 212, baseType: !1774, size: 64, offset: 384)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1771, file: !51, line: 213, baseType: !862, size: 64, offset: 448)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1771, file: !51, line: 214, baseType: !862, size: 64, offset: 512)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !589, file: !14, line: 2085, baseType: !1784, size: 64, offset: 1472)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!328, !524, !1787}
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1789, line: 15, size: 256, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1790 = !{!1791, !1792, !1793, !1794, !1795}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1788, file: !1789, line: 16, baseType: !1118, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1788, file: !1789, line: 19, baseType: !109, size: 32, offset: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1788, file: !1789, line: 26, baseType: !342, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1788, file: !1789, line: 33, baseType: !342, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1788, file: !1789, line: 36, baseType: !1796, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !27, line: 33, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !589, file: !14, line: 2087, baseType: !1784, size: 64, offset: 1536)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !589, file: !14, line: 2089, baseType: !559, size: 64, offset: 1600)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !525, file: !14, line: 1198, baseType: !1801, size: 64, offset: 448)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !1804)
!1804 = !{!1805, !1809, !1813, !1817, !1818, !1819, !1820, !1821, !1826, !1831, !1835}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1803, file: !51, line: 325, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!109, !1741}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1803, file: !51, line: 326, baseType: !1810, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!1741, !524, !109}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1803, file: !51, line: 327, baseType: !1814, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !1741}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1803, file: !51, line: 328, baseType: !1806, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1803, file: !51, line: 329, baseType: !1806, size: 64, offset: 256)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1803, file: !51, line: 330, baseType: !1806, size: 64, offset: 320)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1803, file: !51, line: 331, baseType: !617, size: 64, offset: 384)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1803, file: !51, line: 334, baseType: !1822, size: 64, offset: 448)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!1825, !373}
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1803, file: !51, line: 335, baseType: !1827, size: 64, offset: 512)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!109, !373, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1803, file: !51, line: 337, baseType: !1832, size: 64, offset: 576)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!109, !373, !1825}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1803, file: !51, line: 339, baseType: !1836, size: 64, offset: 640)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!109, !524, !1839}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !525, file: !14, line: 1199, baseType: !1841, size: 64, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1843)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !1844)
!1844 = !{!1845, !1851, !1852, !1856, !1857, !1858, !1873, !1896, !1900, !1901, !1924}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1843, file: !51, line: 431, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!109, !524, !109, !109, !1849}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1843, file: !51, line: 432, baseType: !617, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1843, file: !51, line: 433, baseType: !1853, size: 64, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!109, !524, !7}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1843, file: !51, line: 434, baseType: !1853, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1843, file: !51, line: 435, baseType: !617, size: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1843, file: !51, line: 436, baseType: !1859, size: 64, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!109, !524, !109, !1862}
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !1864)
!1864 = !{!1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1863, file: !51, line: 418, baseType: !109, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1863, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1863, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1863, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1863, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1863, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1863, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1863, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1843, file: !51, line: 437, baseType: !1874, size: 64, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!109, !524, !1753, !1877}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1878, file: !51, line: 346, baseType: !109, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1878, file: !51, line: 347, baseType: !446, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1878, file: !51, line: 348, baseType: !446, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1878, file: !51, line: 349, baseType: !446, size: 64, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1878, file: !51, line: 350, baseType: !446, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1878, file: !51, line: 351, baseType: !446, size: 64, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1878, file: !51, line: 352, baseType: !446, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1878, file: !51, line: 353, baseType: !668, size: 64, offset: 448)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1878, file: !51, line: 355, baseType: !668, size: 64, offset: 512)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1878, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1878, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1878, file: !51, line: 358, baseType: !446, size: 64, offset: 640)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1878, file: !51, line: 359, baseType: !446, size: 64, offset: 704)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1878, file: !51, line: 360, baseType: !446, size: 64, offset: 768)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1878, file: !51, line: 361, baseType: !668, size: 64, offset: 832)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1878, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1843, file: !51, line: 438, baseType: !1897, size: 64, offset: 448)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!109, !524, !1839, !1877}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1843, file: !51, line: 440, baseType: !1874, size: 64, offset: 512)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1843, file: !51, line: 441, baseType: !1902, size: 64, offset: 576)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!109, !524, !1905}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1906, file: !51, line: 412, baseType: !7, size: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1906, file: !51, line: 413, baseType: !1910, size: 1344, offset: 64)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1911, size: 1344, elements: !293)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !1912)
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1923}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1911, file: !51, line: 398, baseType: !7, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1911, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1911, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1911, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1911, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1911, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1911, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1911, file: !51, line: 406, baseType: !448, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1911, file: !51, line: 407, baseType: !1922, size: 64, offset: 320)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !193, line: 132, baseType: !446)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1911, file: !51, line: 408, baseType: !1922, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1843, file: !51, line: 442, baseType: !1853, size: 64, offset: 640)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !525, file: !14, line: 1200, baseType: !1926, size: 64, offset: 576)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !525, file: !14, line: 1201, baseType: !342, size: 64, offset: 640)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !525, file: !14, line: 1202, baseType: !342, size: 64, offset: 704)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !525, file: !14, line: 1203, baseType: !342, size: 64, offset: 768)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !525, file: !14, line: 1204, baseType: !408, size: 64, offset: 832)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !525, file: !14, line: 1205, baseType: !846, size: 320, offset: 896)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !525, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !525, file: !14, line: 1207, baseType: !242, size: 32, offset: 1248)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !525, file: !14, line: 1209, baseType: !364, size: 64, offset: 1280)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !525, file: !14, line: 1211, baseType: !1938, size: 64, offset: 1344)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !525, file: !14, line: 1223, baseType: !1943, size: 64, offset: 1408)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !425, line: 34, size: 64, elements: !1944)
!1944 = !{!1945}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1943, file: !425, line: 35, baseType: !428, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !525, file: !14, line: 1224, baseType: !192, size: 128, offset: 1472)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !525, file: !14, line: 1225, baseType: !1948, size: 64, offset: 1600)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !525, file: !14, line: 1226, baseType: !1951, size: 64, offset: 1664)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !525, file: !14, line: 1227, baseType: !1954, size: 64, offset: 1728)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !525, file: !14, line: 1228, baseType: !1957, size: 64, offset: 1792)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !525, file: !14, line: 1229, baseType: !569, size: 128, offset: 1856)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !525, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !525, file: !14, line: 1231, baseType: !1962, size: 2496, offset: 2048)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !1963)
!1963 = !{!1964, !1965, !1966, !1968, !2000}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1962, file: !51, line: 522, baseType: !7, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1962, file: !51, line: 523, baseType: !846, size: 320, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1962, file: !51, line: 524, baseType: !1967, size: 192, offset: 384)
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 192, elements: !293)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1962, file: !51, line: 525, baseType: !1969, size: 1728, offset: 576)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1970, size: 1728, elements: !293)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !1971)
!1971 = !{!1972, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1970, file: !51, line: 223, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !1975)
!1975 = !{!1976, !1977, !1990, !1991}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1974, file: !51, line: 446, baseType: !109, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1974, file: !51, line: 447, baseType: !1978, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1980)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !1981)
!1981 = !{!1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1980, file: !51, line: 313, baseType: !617, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1980, file: !51, line: 314, baseType: !617, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1980, file: !51, line: 315, baseType: !617, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1980, file: !51, line: 316, baseType: !617, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1980, file: !51, line: 317, baseType: !1806, size: 64, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1980, file: !51, line: 318, baseType: !1806, size: 64, offset: 320)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1980, file: !51, line: 319, baseType: !1806, size: 64, offset: 384)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1980, file: !51, line: 320, baseType: !1836, size: 64, offset: 448)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1974, file: !51, line: 448, baseType: !187, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1974, file: !51, line: 449, baseType: !1973, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1970, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1970, file: !51, line: 226, baseType: !192, size: 128, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1970, file: !51, line: 227, baseType: !342, size: 64, offset: 256)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1970, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1970, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1970, file: !51, line: 230, baseType: !1774, size: 64, offset: 384)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1970, file: !51, line: 231, baseType: !1774, size: 64, offset: 448)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1970, file: !51, line: 232, baseType: !364, size: 64, offset: 512)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1962, file: !51, line: 526, baseType: !2001, size: 192, offset: 2304)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1978, size: 192, elements: !293)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !525, file: !14, line: 1233, baseType: !2003, size: 2368, offset: 4544)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2004)
!2004 = !{!2005, !2006, !2007}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2003, file: !14, line: 1185, baseType: !262, size: 16)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2003, file: !14, line: 1186, baseType: !262, size: 16, offset: 16)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2003, file: !14, line: 1187, baseType: !2008, size: 2304, offset: 64)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2009, size: 2304, elements: !293)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2010, line: 12, size: 768, elements: !2011)
!2010 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2011 = !{!2012, !2020, !2022, !3240, !3241}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2009, file: !2010, line: 13, baseType: !2013, size: 384)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2014, line: 17, size: 384, elements: !2015)
!2014 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2015 = !{!2016, !2017, !2018, !2019}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2013, file: !2014, line: 18, baseType: !109, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2013, file: !2014, line: 19, baseType: !109, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2013, file: !2014, line: 20, baseType: !774, size: 192, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2013, file: !2014, line: 22, baseType: !716, size: 128, align: 64, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2009, file: !2010, line: 14, baseType: !2021, size: 64, offset: 384)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2009, file: !2010, line: 15, baseType: !2023, size: 64, offset: 448)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2024, line: 16, size: 64, elements: !2025)
!2024 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2025 = !{!2026}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2023, file: !2024, line: 17, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1672, line: 746, size: 58368, elements: !2029)
!2029 = !{!2030, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2110, !2121, !2216, !2220, !2223, !2254, !2255, !2256, !2257, !2268, !2270, !2271, !2272, !2273, !2274, !2275, !2286, !2287, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2304, !2305, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2398, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2413, !2414, !2415, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2447, !2453, !2454, !2455, !2456, !2457, !2461, !2464, !2471, !2476, !2479, !2482, !2485, !2488, !2628, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2668, !2669, !2670, !2679, !2687, !2688, !2689, !2690, !2691, !2696, !2697, !2698, !2701, !2702, !2705, !2708, !2711, !2719, !2722, !2723, !2809, !2810, !2811, !2812, !2813, !2819, !2820, !2821, !2822, !2825, !2826, !2829, !2832, !2833, !2836, !2837, !2838, !2841, !2842, !2843, !2844, !2845, !2846, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2878, !2879, !2885, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2897, !2969, !2971, !2972, !2973, !2974, !2975, !2987, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3017, !3018, !3019}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2028, file: !1672, line: 752, baseType: !2031, size: 192)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2032, line: 56, size: 192, elements: !2033)
!2032 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2033 = !{!2034, !2035, !2036, !2037}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2031, file: !2032, line: 57, baseType: !342, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2031, file: !2032, line: 58, baseType: !342, size: 64, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2031, file: !2032, line: 59, baseType: !442, size: 32, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2031, file: !2032, line: 61, baseType: !442, size: 32, offset: 160)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2028, file: !1672, line: 754, baseType: !7, size: 32, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2028, file: !1672, line: 767, baseType: !364, size: 64, offset: 256)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2028, file: !1672, line: 768, baseType: !761, size: 32, offset: 320)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2028, file: !1672, line: 770, baseType: !7, size: 32, offset: 352)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2028, file: !1672, line: 771, baseType: !7, size: 32, offset: 384)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2028, file: !1672, line: 774, baseType: !109, size: 32, offset: 416)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2028, file: !1672, line: 775, baseType: !2045, size: 128, offset: 448)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2046, line: 58, size: 128, elements: !2047)
!2046 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2047 = !{!2048, !2049, !2054, !2055}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2045, file: !2046, line: 59, baseType: !710, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, scope: !2045, file: !2046, line: 60, baseType: !2050, size: 32, offset: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2045, file: !2046, line: 60, size: 32, elements: !2051)
!2051 = !{!2052, !2053}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2050, file: !2046, line: 61, baseType: !7, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2050, file: !2046, line: 62, baseType: !242, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2045, file: !2046, line: 65, baseType: !260, size: 16, offset: 96)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2045, file: !2046, line: 65, baseType: !260, size: 16, offset: 112)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2028, file: !1672, line: 776, baseType: !7, size: 32, offset: 576)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2028, file: !1672, line: 777, baseType: !342, size: 64, offset: 640)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2028, file: !1672, line: 778, baseType: !2027, size: 64, offset: 704)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2028, file: !1672, line: 787, baseType: !109, size: 32, offset: 768)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2028, file: !1672, line: 788, baseType: !109, size: 32, offset: 800)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2028, file: !1672, line: 790, baseType: !109, size: 32, offset: 832)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2028, file: !1672, line: 792, baseType: !109, size: 32, offset: 864)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2028, file: !1672, line: 793, baseType: !109, size: 32, offset: 896)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2028, file: !1672, line: 794, baseType: !109, size: 32, offset: 928)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2028, file: !1672, line: 795, baseType: !7, size: 32, offset: 960)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2028, file: !1672, line: 797, baseType: !2067, size: 2048, offset: 1024)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1672, line: 551, size: 2048, elements: !2068)
!2068 = !{!2069, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2089, !2092, !2093, !2094}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2067, file: !1672, line: 553, baseType: !2070, size: 128)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1672, line: 411, size: 128, elements: !2071)
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2070, file: !1672, line: 412, baseType: !342, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2070, file: !1672, line: 413, baseType: !442, size: 32, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2067, file: !1672, line: 554, baseType: !838, size: 192, align: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2067, file: !1672, line: 555, baseType: !446, size: 64, offset: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2067, file: !1672, line: 556, baseType: !446, size: 64, offset: 384)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2067, file: !1672, line: 558, baseType: !192, size: 128, offset: 448)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2067, file: !1672, line: 559, baseType: !7, size: 32, offset: 576)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2067, file: !1672, line: 561, baseType: !446, size: 64, offset: 640)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2067, file: !1672, line: 562, baseType: !446, size: 64, offset: 704)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2067, file: !1672, line: 563, baseType: !446, size: 64, offset: 768)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2067, file: !1672, line: 564, baseType: !446, size: 64, offset: 832)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2067, file: !1672, line: 565, baseType: !668, size: 64, offset: 896)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2067, file: !1672, line: 566, baseType: !446, size: 64, offset: 960)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2067, file: !1672, line: 568, baseType: !446, size: 64, offset: 1024)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2067, file: !1672, line: 571, baseType: !109, size: 32, offset: 1088)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2067, file: !1672, line: 572, baseType: !2088, size: 64, offset: 1152)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2067, file: !1672, line: 574, baseType: !2090, size: 64, offset: 1216)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1672, line: 49, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2067, file: !1672, line: 576, baseType: !2090, size: 64, offset: 1280)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2067, file: !1672, line: 578, baseType: !342, size: 64, offset: 1344)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2067, file: !1672, line: 588, baseType: !2095, size: 512, align: 512, offset: 1536)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1672, line: 497, size: 512, align: 512, elements: !2096)
!2096 = !{!2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2095, file: !1672, line: 498, baseType: !446, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2095, file: !1672, line: 499, baseType: !446, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2095, file: !1672, line: 500, baseType: !446, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2095, file: !1672, line: 501, baseType: !442, size: 32, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2095, file: !1672, line: 502, baseType: !442, size: 32, offset: 224)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2095, file: !1672, line: 503, baseType: !342, size: 64, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2095, file: !1672, line: 504, baseType: !342, size: 64, offset: 320)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2095, file: !1672, line: 505, baseType: !342, size: 64, offset: 384)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2095, file: !1672, line: 506, baseType: !2106, size: 64, align: 64, offset: 448)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1672, line: 445, size: 64, align: 64, elements: !2107)
!2107 = !{!2108, !2109}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2106, file: !1672, line: 446, baseType: !7, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2106, file: !1672, line: 447, baseType: !7, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2028, file: !1672, line: 798, baseType: !2111, size: 384, offset: 3072)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1672, line: 592, size: 384, elements: !2112)
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118, !2119}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2111, file: !1672, line: 593, baseType: !192, size: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2111, file: !1672, line: 594, baseType: !342, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2111, file: !1672, line: 595, baseType: !342, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2111, file: !1672, line: 596, baseType: !7, size: 32, offset: 256)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2111, file: !1672, line: 597, baseType: !262, size: 16, offset: 288)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2111, file: !1672, line: 598, baseType: !262, size: 16, offset: 304)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2111, file: !1672, line: 600, baseType: !2120, size: 64, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2028, file: !1672, line: 799, baseType: !2122, size: 1792, offset: 3456)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1672, line: 610, size: 1792, elements: !2123)
!2123 = !{!2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2213, !2214}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2122, file: !1672, line: 611, baseType: !838, size: 192, align: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2122, file: !1672, line: 618, baseType: !446, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2122, file: !1672, line: 619, baseType: !446, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2122, file: !1672, line: 620, baseType: !446, size: 64, offset: 320)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2122, file: !1672, line: 621, baseType: !446, size: 64, offset: 384)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2122, file: !1672, line: 622, baseType: !446, size: 64, offset: 448)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2122, file: !1672, line: 629, baseType: !668, size: 64, offset: 512)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2122, file: !1672, line: 630, baseType: !446, size: 64, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2122, file: !1672, line: 631, baseType: !7, size: 32, offset: 640)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2122, file: !1672, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2122, file: !1672, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2122, file: !1672, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2122, file: !1672, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2122, file: !1672, line: 662, baseType: !2138, size: 512, offset: 704)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2139)
!2139 = !{!2140, !2148, !2149, !2154, !2209, !2210, !2211, !2212}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2138, file: !57, line: 119, baseType: !2141, size: 256)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2142, line: 9, size: 256, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2143 = !{!2144, !2145}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2141, file: !2142, line: 10, baseType: !838, size: 192, align: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2141, file: !2142, line: 11, baseType: !2146, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2147, line: 29, baseType: !668)
!2147 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2138, file: !57, line: 120, baseType: !2146, size: 64, offset: 256)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2138, file: !57, line: 121, baseType: !2150, size: 64, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!56, !2153}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2138, file: !57, line: 122, baseType: !2155, size: 64, offset: 384)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2157)
!2157 = !{!2158, !2183, !2184, !2187, !2192, !2193, !2204, !2208}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2156, file: !57, line: 160, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2161)
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2160, file: !57, line: 216, baseType: !671, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2160, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2160, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2160, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2160, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2160, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2160, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2160, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2160, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2160, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2160, file: !57, line: 227, baseType: !262, size: 16, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2160, file: !57, line: 228, baseType: !262, size: 16, offset: 208)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2160, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2160, file: !57, line: 235, baseType: !2146, size: 64, offset: 256)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2160, file: !57, line: 236, baseType: !2153, size: 64, offset: 320)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2160, file: !57, line: 237, baseType: !2146, size: 64, offset: 384)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2160, file: !57, line: 238, baseType: !2153, size: 64, offset: 448)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2160, file: !57, line: 239, baseType: !2180, size: 4096, align: 512, offset: 512)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2156, size: 4096, align: 512, elements: !2181)
!2181 = !{!2182}
!2182 = !DISubrange(count: 8)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2156, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2156, file: !57, line: 162, baseType: !2185, size: 32, offset: 96)
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !193, line: 32, baseType: !2186)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !326, line: 96, baseType: !109)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2156, file: !57, line: 163, baseType: !2188, size: 32, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !415, line: 274, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !415, line: 274, size: 32, elements: !2190)
!2190 = !{!2191}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2189, file: !415, line: 274, baseType: !419, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2156, file: !57, line: 164, baseType: !2153, size: 64, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2156, file: !57, line: 165, baseType: !2194, size: 128, offset: 256)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2142, line: 14, size: 128, elements: !2195)
!2195 = !{!2196}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2194, file: !2142, line: 15, baseType: !2197, size: 128)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !839, line: 26, size: 128, elements: !2198)
!2198 = !{!2199, !2203}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2197, file: !839, line: 27, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !839, line: 12, size: 64, elements: !2201)
!2201 = !{!2202}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2200, file: !839, line: 13, baseType: !843, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2197, file: !839, line: 28, baseType: !843, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2156, file: !57, line: 166, baseType: !2205, size: 64, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!2146}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2156, file: !57, line: 167, baseType: !2146, size: 64, offset: 448)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2138, file: !57, line: 123, baseType: !250, size: 8, offset: 448)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2138, file: !57, line: 124, baseType: !250, size: 8, offset: 456)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2138, file: !57, line: 125, baseType: !250, size: 8, offset: 464)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2138, file: !57, line: 126, baseType: !250, size: 8, offset: 472)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2122, file: !1672, line: 671, baseType: !2138, size: 512, offset: 1216)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2122, file: !1672, line: 679, baseType: !2215, size: 64, offset: 1728)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2028, file: !1672, line: 800, baseType: !2217, size: 64, offset: 5248)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2219)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1672, line: 800, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2028, file: !1672, line: 809, baseType: !2221, size: 64, offset: 5312)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1672, line: 70, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2028, file: !1672, line: 825, baseType: !2224, size: 2048, align: 512, offset: 5632)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1672, line: 509, size: 2048, align: 512, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2224, file: !1672, line: 511, baseType: !446, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2224, file: !1672, line: 512, baseType: !446, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2224, file: !1672, line: 513, baseType: !446, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2224, file: !1672, line: 514, baseType: !446, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2224, file: !1672, line: 515, baseType: !446, size: 64, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2224, file: !1672, line: 516, baseType: !446, size: 64, offset: 320)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2224, file: !1672, line: 518, baseType: !446, size: 64, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2224, file: !1672, line: 519, baseType: !446, size: 64, offset: 448)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2224, file: !1672, line: 520, baseType: !668, size: 64, offset: 512)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2224, file: !1672, line: 522, baseType: !446, size: 64, offset: 576)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2224, file: !1672, line: 523, baseType: !446, size: 64, offset: 640)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2224, file: !1672, line: 524, baseType: !668, size: 64, offset: 704)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2224, file: !1672, line: 526, baseType: !668, size: 64, offset: 768)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2224, file: !1672, line: 527, baseType: !446, size: 64, offset: 832)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2224, file: !1672, line: 529, baseType: !446, size: 64, offset: 896)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2224, file: !1672, line: 530, baseType: !446, size: 64, offset: 960)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2224, file: !1672, line: 531, baseType: !446, size: 64, offset: 1024)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2224, file: !1672, line: 532, baseType: !446, size: 64, offset: 1088)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2224, file: !1672, line: 533, baseType: !446, size: 64, offset: 1152)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2224, file: !1672, line: 535, baseType: !446, size: 64, offset: 1216)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2224, file: !1672, line: 536, baseType: !446, size: 64, offset: 1280)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2224, file: !1672, line: 537, baseType: !446, size: 64, offset: 1344)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2224, file: !1672, line: 538, baseType: !446, size: 64, offset: 1408)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2224, file: !1672, line: 539, baseType: !446, size: 64, offset: 1472)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2224, file: !1672, line: 540, baseType: !446, size: 64, offset: 1536)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2224, file: !1672, line: 541, baseType: !446, size: 64, offset: 1600)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2224, file: !1672, line: 542, baseType: !446, size: 64, offset: 1664)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2224, file: !1672, line: 543, baseType: !446, size: 64, offset: 1728)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2028, file: !1672, line: 833, baseType: !7, size: 32, offset: 7680)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2028, file: !1672, line: 836, baseType: !7, size: 32, offset: 7712)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2028, file: !1672, line: 837, baseType: !109, size: 32, offset: 7744)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2028, file: !1672, line: 838, baseType: !2258, size: 64, offset: 7808)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2260)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2261, line: 19, baseType: !2262)
!2261 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2261, line: 19, size: 64, elements: !2263)
!2263 = !{!2264}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2262, file: !2261, line: 19, baseType: !2265, size: 64)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 64, elements: !2266)
!2266 = !{!2267}
!2267 = !DISubrange(count: 1)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2028, file: !1672, line: 839, baseType: !2269, size: 64, offset: 7872)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2028, file: !1672, line: 840, baseType: !2260, size: 64, offset: 7936)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2028, file: !1672, line: 841, baseType: !364, size: 64, offset: 8000)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2028, file: !1672, line: 843, baseType: !262, size: 16, offset: 8064)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2028, file: !1672, line: 845, baseType: !262, size: 16, offset: 8080)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2028, file: !1672, line: 848, baseType: !109, size: 32, offset: 8096)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2028, file: !1672, line: 849, baseType: !2276, size: 32, offset: 8128)
!2276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1672, line: 718, size: 32, elements: !2277)
!2277 = !{!2278, !2285}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2276, file: !1672, line: 724, baseType: !2279, size: 32)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !1672, line: 719, size: 32, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2284}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2279, file: !1672, line: 720, baseType: !250, size: 8)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2279, file: !1672, line: 721, baseType: !250, size: 8, offset: 8)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2279, file: !1672, line: 722, baseType: !250, size: 8, offset: 16)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2279, file: !1672, line: 723, baseType: !250, size: 8, offset: 24)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2276, file: !1672, line: 725, baseType: !442, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2028, file: !1672, line: 850, baseType: !192, size: 128, offset: 8192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2028, file: !1672, line: 851, baseType: !2288, size: 64, offset: 8320)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1672, line: 60, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2028, file: !1672, line: 855, baseType: !342, size: 64, offset: 8384)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2028, file: !1672, line: 856, baseType: !250, size: 8, offset: 8448)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2028, file: !1672, line: 857, baseType: !250, size: 8, offset: 8456)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2028, file: !1672, line: 858, baseType: !109, size: 32, offset: 8480)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2028, file: !1672, line: 859, baseType: !192, size: 128, offset: 8512)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2028, file: !1672, line: 860, baseType: !109, size: 32, offset: 8640)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2028, file: !1672, line: 861, baseType: !192, size: 128, offset: 8704)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2028, file: !1672, line: 873, baseType: !2298, size: 256, offset: 8832)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1672, line: 376, size: 256, elements: !2299)
!2299 = !{!2300, !2301, !2302, !2303}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2298, file: !1672, line: 381, baseType: !342, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2298, file: !1672, line: 384, baseType: !448, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2298, file: !1672, line: 389, baseType: !448, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2298, file: !1672, line: 392, baseType: !448, size: 64, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2028, file: !1672, line: 875, baseType: !192, size: 128, offset: 9088)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2028, file: !1672, line: 877, baseType: !2306, size: 320, offset: 9216)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2307, line: 86, size: 320, elements: !2308)
!2307 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2308 = !{!2309, !2310, !2311}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2306, file: !2307, line: 87, baseType: !109, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2306, file: !2307, line: 88, baseType: !192, size: 128, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2306, file: !2307, line: 89, baseType: !192, size: 128, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2028, file: !1672, line: 878, baseType: !838, size: 192, align: 64, offset: 9536)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2028, file: !1672, line: 881, baseType: !1186, size: 64, offset: 9728)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2028, file: !1672, line: 882, baseType: !1186, size: 64, offset: 9792)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2028, file: !1672, line: 884, baseType: !109, size: 32, offset: 9856)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2028, file: !1672, line: 885, baseType: !109, size: 32, offset: 9888)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2028, file: !1672, line: 886, baseType: !109, size: 32, offset: 9920)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2028, file: !1672, line: 888, baseType: !109, size: 32, offset: 9952)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2028, file: !1672, line: 890, baseType: !342, size: 64, offset: 9984)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2028, file: !1672, line: 893, baseType: !7, size: 32, offset: 10048)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2028, file: !1672, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2028, file: !1672, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2028, file: !1672, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2028, file: !1672, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2028, file: !1672, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2028, file: !1672, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2028, file: !1672, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2028, file: !1672, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2028, file: !1672, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2028, file: !1672, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2028, file: !1672, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2028, file: !1672, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2028, file: !1672, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2028, file: !1672, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2028, file: !1672, line: 969, baseType: !342, size: 64, offset: 10176)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2028, file: !1672, line: 971, baseType: !2337, size: 448, offset: 10240)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2338)
!2338 = !{!2339, !2340, !2345}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2337, file: !62, line: 26, baseType: !342, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2337, file: !62, line: 27, baseType: !2341, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!328, !2344}
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, scope: !2337, file: !62, line: 28, baseType: !2346, size: 320, offset: 128)
!2346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2337, file: !62, line: 28, size: 320, elements: !2347)
!2347 = !{!2348, !2358, !2383}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2346, file: !62, line: 37, baseType: !2349, size: 320)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2346, file: !62, line: 30, size: 320, elements: !2350)
!2350 = !{!2351, !2353, !2354, !2355, !2356, !2357}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2349, file: !62, line: 31, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2349, file: !62, line: 32, baseType: !442, size: 32, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2349, file: !62, line: 33, baseType: !442, size: 32, offset: 96)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2349, file: !62, line: 34, baseType: !442, size: 32, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2349, file: !62, line: 35, baseType: !446, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2349, file: !62, line: 36, baseType: !2352, size: 64, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2346, file: !62, line: 47, baseType: !2359, size: 192)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2346, file: !62, line: 39, size: 192, elements: !2360)
!2360 = !{!2361, !2362, !2363, !2382}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2359, file: !62, line: 40, baseType: !2185, size: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2359, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2359, file: !62, line: 42, baseType: !2364, size: 64, offset: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2359, file: !62, line: 42, size: 64, elements: !2365)
!2365 = !{!2366, !2374}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2364, file: !62, line: 43, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2369, line: 7, size: 128, elements: !2370)
!2369 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2370 = !{!2371, !2373}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2368, file: !2369, line: 8, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !326, line: 93, baseType: !536)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2368, file: !2369, line: 9, baseType: !536, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2364, file: !62, line: 44, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2377, line: 7, size: 64, elements: !2378)
!2377 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2378 = !{!2379, !2381}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2376, file: !2377, line: 8, baseType: !2380, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2377, line: 5, baseType: !831)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2376, file: !2377, line: 9, baseType: !831, size: 32, offset: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2359, file: !62, line: 46, baseType: !446, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2346, file: !62, line: 55, baseType: !2384, size: 256)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2346, file: !62, line: 49, size: 256, elements: !2385)
!2385 = !{!2386, !2394, !2395, !2396, !2397}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2384, file: !62, line: 50, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2389, line: 36, size: 64, elements: !2390)
!2389 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2390 = !{!2391, !2392, !2393}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2388, file: !2389, line: 37, baseType: !109, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2388, file: !2389, line: 38, baseType: !874, size: 16, offset: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2388, file: !2389, line: 39, baseType: !874, size: 16, offset: 48)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2384, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2384, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2384, file: !62, line: 53, baseType: !342, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2384, file: !62, line: 54, baseType: !342, size: 64, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2028, file: !1672, line: 973, baseType: !2399, size: 32, offset: 10688)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !193, line: 27, baseType: !2400)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !326, line: 28, baseType: !109)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2028, file: !1672, line: 974, baseType: !2399, size: 32, offset: 10720)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2028, file: !1672, line: 978, baseType: !342, size: 64, offset: 10752)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2028, file: !1672, line: 987, baseType: !2027, size: 64, offset: 10816)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2028, file: !1672, line: 990, baseType: !2027, size: 64, offset: 10880)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2028, file: !1672, line: 995, baseType: !192, size: 128, offset: 10944)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2028, file: !1672, line: 996, baseType: !192, size: 128, offset: 11072)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2028, file: !1672, line: 997, baseType: !2027, size: 64, offset: 11200)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2028, file: !1672, line: 1005, baseType: !192, size: 128, offset: 11264)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2028, file: !1672, line: 1006, baseType: !192, size: 128, offset: 11392)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2028, file: !1672, line: 1009, baseType: !757, size: 64, offset: 11520)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2028, file: !1672, line: 1010, baseType: !2412, size: 512, offset: 11584)
!2412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 512, elements: !770)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2028, file: !1672, line: 1011, baseType: !192, size: 128, offset: 12096)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2028, file: !1672, line: 1012, baseType: !192, size: 128, offset: 12224)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2028, file: !1672, line: 1014, baseType: !2416, size: 64, offset: 12352)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2028, file: !1672, line: 1017, baseType: !640, size: 64, offset: 12416)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2028, file: !1672, line: 1020, baseType: !640, size: 64, offset: 12480)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2028, file: !1672, line: 1023, baseType: !364, size: 64, offset: 12544)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2028, file: !1672, line: 1025, baseType: !446, size: 64, offset: 12608)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2028, file: !1672, line: 1026, baseType: !446, size: 64, offset: 12672)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2028, file: !1672, line: 1031, baseType: !446, size: 64, offset: 12736)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2028, file: !1672, line: 1032, baseType: !2424, size: 192, offset: 12800)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1672, line: 324, size: 192, elements: !2425)
!2425 = !{!2426, !2427, !2428}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2424, file: !1672, line: 326, baseType: !446, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2424, file: !1672, line: 327, baseType: !446, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2424, file: !1672, line: 328, baseType: !671, size: 32, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2028, file: !1672, line: 1041, baseType: !342, size: 64, offset: 12992)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2028, file: !1672, line: 1042, baseType: !342, size: 64, offset: 13056)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2028, file: !1672, line: 1045, baseType: !446, size: 64, offset: 13120)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2028, file: !1672, line: 1048, baseType: !446, size: 64, offset: 13184)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2028, file: !1672, line: 1051, baseType: !342, size: 64, offset: 13248)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2028, file: !1672, line: 1052, baseType: !342, size: 64, offset: 13312)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2028, file: !1672, line: 1055, baseType: !2436, size: 640, offset: 13376)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2437, line: 132, size: 640, elements: !2438)
!2437 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2438 = !{!2439, !2445, !2446}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2436, file: !2437, line: 133, baseType: !2440, size: 576)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2441, size: 576, elements: !293)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2437, line: 117, size: 192, elements: !2442)
!2442 = !{!2443, !2444}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2441, file: !2437, line: 118, baseType: !446, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2441, file: !2437, line: 119, baseType: !2194, size: 128, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2436, file: !2437, line: 134, baseType: !7, size: 32, offset: 576)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2436, file: !2437, line: 135, baseType: !7, size: 32, offset: 608)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2028, file: !1672, line: 1058, baseType: !2448, size: 448, offset: 14016)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2437, line: 144, size: 448, elements: !2449)
!2449 = !{!2450, !2451, !2452}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2448, file: !2437, line: 145, baseType: !716, size: 128, align: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2448, file: !2437, line: 146, baseType: !658, size: 256, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2448, file: !2437, line: 147, baseType: !7, size: 32, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2028, file: !1672, line: 1064, baseType: !796, size: 64, offset: 14464)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2028, file: !1672, line: 1067, baseType: !796, size: 64, offset: 14528)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2028, file: !1672, line: 1070, baseType: !796, size: 64, offset: 14592)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2028, file: !1672, line: 1074, baseType: !823, size: 64, offset: 14656)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2028, file: !1672, line: 1084, baseType: !2458, size: 128, offset: 14720)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 128, elements: !2459)
!2459 = !{!2460}
!2460 = !DISubrange(count: 16)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2028, file: !1672, line: 1086, baseType: !2462, size: 64, offset: 14848)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1672, line: 55, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2028, file: !1672, line: 1089, baseType: !2465, size: 64, offset: 14912)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2466, line: 12, size: 64, elements: !2467)
!2466 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2467 = !{!2468}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2465, file: !2466, line: 13, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2466, line: 8, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2028, file: !1672, line: 1090, baseType: !2472, size: 128, offset: 14976)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2473, line: 13, size: 128, elements: !2474)
!2473 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2474 = !{!2475}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2472, file: !2473, line: 14, baseType: !192, size: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2028, file: !1672, line: 1097, baseType: !2477, size: 64, offset: 15104)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1672, line: 50, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2028, file: !1672, line: 1100, baseType: !2480, size: 64, offset: 15168)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1672, line: 1100, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2028, file: !1672, line: 1103, baseType: !2483, size: 64, offset: 15232)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1672, line: 53, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2028, file: !1672, line: 1107, baseType: !2486, size: 64, offset: 15296)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1672, line: 56, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2028, file: !1672, line: 1110, baseType: !2489, size: 64, offset: 15360)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2491, line: 93, size: 8768, elements: !2492)
!2491 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2492 = !{!2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2542, !2551, !2552, !2554, !2555, !2556, !2559, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2597, !2598, !2605, !2615, !2618, !2619, !2622, !2623, !2624, !2625, !2626, !2627}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2490, file: !2491, line: 94, baseType: !761, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2490, file: !2491, line: 95, baseType: !242, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2490, file: !2491, line: 96, baseType: !109, size: 32, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2490, file: !2491, line: 97, baseType: !109, size: 32, offset: 96)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2490, file: !2491, line: 98, baseType: !192, size: 128, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2490, file: !2491, line: 100, baseType: !774, size: 192, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2490, file: !2491, line: 103, baseType: !2027, size: 64, offset: 448)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2490, file: !2491, line: 106, baseType: !2501, size: 192, offset: 512)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !993, line: 32, size: 192, elements: !2502)
!2502 = !{!2503, !2504}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2501, file: !993, line: 33, baseType: !192, size: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2501, file: !993, line: 34, baseType: !2505, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2506, line: 25, baseType: !2507)
!2506 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2506, line: 23, size: 64, elements: !2508)
!2508 = !{!2509}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2507, file: !2506, line: 24, baseType: !2265, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2490, file: !2491, line: 109, baseType: !565, size: 64, offset: 704)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2490, file: !2491, line: 112, baseType: !109, size: 32, offset: 768)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2490, file: !2491, line: 114, baseType: !109, size: 32, offset: 800)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2490, file: !2491, line: 115, baseType: !2027, size: 64, offset: 832)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2490, file: !2491, line: 118, baseType: !109, size: 32, offset: 896)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2490, file: !2491, line: 119, baseType: !7, size: 32, offset: 928)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2490, file: !2491, line: 121, baseType: !2517, size: 64, offset: 960)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2491, line: 80, size: 448, elements: !2519)
!2519 = !{!2520, !2521, !2527}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2518, file: !2491, line: 81, baseType: !242, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2518, file: !2491, line: 82, baseType: !2522, size: 128, offset: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2491, line: 75, size: 128, elements: !2523)
!2523 = !{!2524, !2525}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2522, file: !2491, line: 76, baseType: !2027, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2522, file: !2491, line: 77, baseType: !2526, size: 64, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2518, file: !2491, line: 83, baseType: !1532, size: 256, offset: 192)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2490, file: !2491, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2490, file: !2491, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2490, file: !2491, line: 138, baseType: !7, size: 32, offset: 1056)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2490, file: !2491, line: 139, baseType: !192, size: 128, offset: 1088)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2490, file: !2491, line: 142, baseType: !2138, size: 512, offset: 1216)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2490, file: !2491, line: 143, baseType: !2146, size: 64, offset: 1728)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2490, file: !2491, line: 150, baseType: !2535, size: 256, offset: 1792)
!2535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2536, size: 256, elements: !2540)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2491, line: 38, size: 128, elements: !2537)
!2537 = !{!2538, !2539}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2536, file: !2491, line: 39, baseType: !446, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2536, file: !2491, line: 40, baseType: !446, size: 64, offset: 64)
!2540 = !{!2541}
!2541 = !DISubrange(count: 2)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2490, file: !2491, line: 156, baseType: !2543, size: 192, offset: 2048)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2491, line: 66, size: 192, elements: !2544)
!2544 = !{!2545}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2543, file: !2491, line: 67, baseType: !2546, size: 192)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2491, line: 47, size: 192, elements: !2547)
!2547 = !{!2548, !2549, !2550}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2546, file: !2491, line: 48, baseType: !664, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2546, file: !2491, line: 49, baseType: !664, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2546, file: !2491, line: 50, baseType: !664, size: 64, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2490, file: !2491, line: 160, baseType: !2436, size: 640, offset: 2240)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2490, file: !2491, line: 163, baseType: !2553, size: 256, offset: 2880)
!2553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 256, elements: !770)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2490, file: !2491, line: 169, baseType: !757, size: 64, offset: 3136)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2490, file: !2491, line: 172, baseType: !109, size: 32, offset: 3200)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2490, file: !2491, line: 174, baseType: !2557, size: 64, offset: 3264)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2491, line: 174, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2490, file: !2491, line: 185, baseType: !2560, size: 64, offset: 3328)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !415, line: 860, baseType: !2561)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 853, size: 64, elements: !2562)
!2562 = !{!2563, !2564}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2561, file: !415, line: 858, baseType: !414, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2561, file: !415, line: 859, baseType: !222, size: 32, offset: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2490, file: !2491, line: 186, baseType: !446, size: 64, offset: 3392)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2490, file: !2491, line: 186, baseType: !446, size: 64, offset: 3456)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2490, file: !2491, line: 186, baseType: !446, size: 64, offset: 3520)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2490, file: !2491, line: 186, baseType: !446, size: 64, offset: 3584)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2490, file: !2491, line: 187, baseType: !446, size: 64, offset: 3648)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2490, file: !2491, line: 188, baseType: !446, size: 64, offset: 3712)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2490, file: !2491, line: 189, baseType: !2424, size: 192, offset: 3776)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2490, file: !2491, line: 190, baseType: !342, size: 64, offset: 3968)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2490, file: !2491, line: 190, baseType: !342, size: 64, offset: 4032)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2490, file: !2491, line: 190, baseType: !342, size: 64, offset: 4096)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2490, file: !2491, line: 190, baseType: !342, size: 64, offset: 4160)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2490, file: !2491, line: 191, baseType: !342, size: 64, offset: 4224)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2490, file: !2491, line: 191, baseType: !342, size: 64, offset: 4288)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2490, file: !2491, line: 191, baseType: !342, size: 64, offset: 4352)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2490, file: !2491, line: 191, baseType: !342, size: 64, offset: 4416)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2490, file: !2491, line: 192, baseType: !342, size: 64, offset: 4480)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2490, file: !2491, line: 192, baseType: !342, size: 64, offset: 4544)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2490, file: !2491, line: 192, baseType: !342, size: 64, offset: 4608)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2490, file: !2491, line: 192, baseType: !342, size: 64, offset: 4672)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2490, file: !2491, line: 193, baseType: !342, size: 64, offset: 4736)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2490, file: !2491, line: 193, baseType: !342, size: 64, offset: 4800)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2490, file: !2491, line: 194, baseType: !2587, size: 448, offset: 4864)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2588, line: 12, size: 448, elements: !2589)
!2588 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2589 = !{!2590, !2591, !2592, !2593, !2594, !2595, !2596}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2587, file: !2588, line: 15, baseType: !446, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2587, file: !2588, line: 17, baseType: !446, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2587, file: !2588, line: 19, baseType: !446, size: 64, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2587, file: !2588, line: 21, baseType: !446, size: 64, offset: 192)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2587, file: !2588, line: 29, baseType: !446, size: 64, offset: 256)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2587, file: !2588, line: 35, baseType: !446, size: 64, offset: 320)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2587, file: !2588, line: 44, baseType: !446, size: 64, offset: 384)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2490, file: !2491, line: 202, baseType: !448, size: 64, offset: 5312)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2490, file: !2491, line: 213, baseType: !2599, size: 2048, offset: 5376)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2600, size: 2048, elements: !2459)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2601, line: 43, size: 128, elements: !2602)
!2601 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2602 = !{!2603, !2604}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2600, file: !2601, line: 44, baseType: !341, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2600, file: !2601, line: 45, baseType: !341, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2490, file: !2491, line: 216, baseType: !2606, size: 448, offset: 7424)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2491, line: 30, size: 448, elements: !2607)
!2607 = !{!2608, !2609, !2610, !2611, !2612, !2613, !2614}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2606, file: !2491, line: 31, baseType: !109, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2606, file: !2491, line: 32, baseType: !328, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2606, file: !2491, line: 33, baseType: !342, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2606, file: !2491, line: 34, baseType: !446, size: 64, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2606, file: !2491, line: 34, baseType: !446, size: 64, offset: 256)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2606, file: !2491, line: 35, baseType: !342, size: 64, offset: 320)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2606, file: !2491, line: 35, baseType: !342, size: 64, offset: 384)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2490, file: !2491, line: 219, baseType: !2616, size: 64, offset: 7872)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2491, line: 219, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2490, file: !2491, line: 222, baseType: !7, size: 32, offset: 7936)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2490, file: !2491, line: 223, baseType: !2620, size: 64, offset: 8000)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2491, line: 223, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2490, file: !2491, line: 230, baseType: !905, size: 8, offset: 8064)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2490, file: !2491, line: 231, baseType: !874, size: 16, offset: 8080)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2490, file: !2491, line: 232, baseType: !874, size: 16, offset: 8096)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2490, file: !2491, line: 234, baseType: !1186, size: 64, offset: 8128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2490, file: !2491, line: 237, baseType: !658, size: 256, offset: 8192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2490, file: !2491, line: 243, baseType: !846, size: 320, offset: 8448)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2028, file: !1672, line: 1111, baseType: !2629, size: 64, offset: 15424)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2491, line: 20, size: 16640, elements: !2631)
!2631 = !{!2632, !2633, !2634, !2635}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2630, file: !2491, line: 21, baseType: !222, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2630, file: !2491, line: 22, baseType: !761, size: 32, offset: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2630, file: !2491, line: 23, baseType: !774, size: 192, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2630, file: !2491, line: 24, baseType: !2636, size: 16384, offset: 256)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2637, size: 16384, elements: !297)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !993, line: 51, size: 256, elements: !2638)
!2638 = !{!2639}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2637, file: !993, line: 52, baseType: !2640, size: 256)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !993, line: 37, size: 256, elements: !2641)
!2641 = !{!2642, !2649, !2650, !2656}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2640, file: !993, line: 39, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2644, line: 83, baseType: !2645)
!2644 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2644, line: 82, baseType: !2647)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{null, !109}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2640, file: !993, line: 40, baseType: !342, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2640, file: !993, line: 46, baseType: !2651, size: 64, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2644, line: 86, baseType: !2652)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2644, line: 85, baseType: !2654)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{null}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2640, file: !993, line: 48, baseType: !2505, size: 64, offset: 192)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2028, file: !1672, line: 1112, baseType: !2505, size: 64, offset: 15488)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2028, file: !1672, line: 1113, baseType: !2505, size: 64, offset: 15552)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2028, file: !1672, line: 1115, baseType: !2505, size: 64, offset: 15616)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2028, file: !1672, line: 1116, baseType: !2501, size: 192, offset: 15680)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2028, file: !1672, line: 1117, baseType: !342, size: 64, offset: 15872)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2028, file: !1672, line: 1118, baseType: !339, size: 64, offset: 15936)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2028, file: !1672, line: 1119, baseType: !7, size: 32, offset: 16000)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2028, file: !1672, line: 1121, baseType: !719, size: 64, offset: 16064)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2028, file: !1672, line: 1125, baseType: !2666, size: 64, offset: 16128)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1672, line: 43, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2028, file: !1672, line: 1127, baseType: !379, size: 32, offset: 16192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2028, file: !1672, line: 1128, baseType: !7, size: 32, offset: 16224)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2028, file: !1672, line: 1130, baseType: !2671, size: 128, offset: 16256)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2672, line: 37, size: 128, elements: !2673)
!2672 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2673 = !{!2674, !2675, !2676}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2671, file: !2672, line: 38, baseType: !109, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2671, file: !2672, line: 39, baseType: !242, size: 32, offset: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2671, file: !2672, line: 40, baseType: !2677, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2672, line: 24, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2028, file: !1672, line: 1131, baseType: !2680, size: 256, offset: 16384)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2681, line: 12, size: 256, elements: !2682)
!2681 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2682 = !{!2683, !2684, !2685, !2686}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2680, file: !2681, line: 13, baseType: !292, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2680, file: !2681, line: 14, baseType: !342, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2680, file: !2681, line: 15, baseType: !342, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2680, file: !2681, line: 16, baseType: !905, size: 8, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2028, file: !1672, line: 1134, baseType: !446, size: 64, offset: 16640)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2028, file: !1672, line: 1135, baseType: !446, size: 64, offset: 16704)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2028, file: !1672, line: 1138, baseType: !222, size: 32, offset: 16768)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2028, file: !1672, line: 1141, baseType: !671, size: 32, offset: 16800)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2028, file: !1672, line: 1143, baseType: !2692, size: 64, offset: 16832)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1672, line: 735, size: 64, elements: !2693)
!2693 = !{!2694}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2692, file: !1672, line: 736, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2028, file: !1672, line: 1147, baseType: !2197, size: 128, offset: 16896)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2028, file: !1672, line: 1149, baseType: !2027, size: 64, offset: 17024)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2028, file: !1672, line: 1151, baseType: !2699, size: 64, offset: 17088)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1672, line: 1151, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2028, file: !1672, line: 1188, baseType: !364, size: 64, offset: 17152)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2028, file: !1672, line: 1191, baseType: !2703, size: 64, offset: 17216)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1672, line: 44, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2028, file: !1672, line: 1194, baseType: !2706, size: 64, offset: 17280)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1672, line: 45, flags: DIFlagFwdDecl)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2028, file: !1672, line: 1197, baseType: !2709, size: 64, offset: 17344)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1672, line: 61, flags: DIFlagFwdDecl)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2028, file: !1672, line: 1199, baseType: !2712, size: 64, offset: 17408)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2714, line: 99, size: 128, elements: !2715)
!2714 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2715 = !{!2716, !2717, !2718}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2713, file: !2714, line: 100, baseType: !662, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2713, file: !2714, line: 101, baseType: !242, size: 32, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2713, file: !2714, line: 103, baseType: !262, size: 16, offset: 96)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2028, file: !1672, line: 1202, baseType: !2720, size: 64, offset: 17472)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1672, line: 48, flags: DIFlagFwdDecl)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2028, file: !1672, line: 1205, baseType: !342, size: 64, offset: 17536)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2028, file: !1672, line: 1206, baseType: !2724, size: 64, offset: 17600)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !993, line: 14, baseType: !2726)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !993, line: 12, size: 384, elements: !2727)
!2727 = !{!2728}
!2728 = !DIDerivedType(tag: DW_TAG_member, scope: !2726, file: !993, line: 13, baseType: !2729, size: 384)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2726, file: !993, line: 13, size: 384, elements: !2730)
!2730 = !{!2731, !2732, !2733, !2734}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2729, file: !993, line: 13, baseType: !109, size: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2729, file: !993, line: 13, baseType: !109, size: 32, offset: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2729, file: !993, line: 13, baseType: !109, size: 32, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2729, file: !993, line: 13, baseType: !2735, size: 256, offset: 128)
!2735 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2736, line: 37, size: 256, elements: !2737)
!2736 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2737 = !{!2738, !2743, !2756, !2762, !2771, !2798, !2803}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2735, file: !2736, line: 42, baseType: !2739, size: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2735, file: !2736, line: 39, size: 64, elements: !2740)
!2740 = !{!2741, !2742}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2739, file: !2736, line: 40, baseType: !2400, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2739, file: !2736, line: 41, baseType: !385, size: 32, offset: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2735, file: !2736, line: 50, baseType: !2744, size: 192)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2735, file: !2736, line: 45, size: 192, elements: !2745)
!2745 = !{!2746, !2748, !2749, !2755}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2744, file: !2736, line: 46, baseType: !2747, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !326, line: 95, baseType: !109)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2744, file: !2736, line: 47, baseType: !109, size: 32, offset: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2744, file: !2736, line: 48, baseType: !2750, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2736, line: 11, baseType: !2751)
!2751 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2736, line: 8, size: 64, elements: !2752)
!2752 = !{!2753, !2754}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2751, file: !2736, line: 9, baseType: !109, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2751, file: !2736, line: 10, baseType: !364, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2744, file: !2736, line: 49, baseType: !109, size: 32, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2735, file: !2736, line: 57, baseType: !2757, size: 128)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2735, file: !2736, line: 53, size: 128, elements: !2758)
!2758 = !{!2759, !2760, !2761}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2757, file: !2736, line: 54, baseType: !2400, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2757, file: !2736, line: 55, baseType: !385, size: 32, offset: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2757, file: !2736, line: 56, baseType: !2750, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2735, file: !2736, line: 66, baseType: !2763, size: 256)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2735, file: !2736, line: 60, size: 256, elements: !2764)
!2764 = !{!2765, !2766, !2767, !2768, !2770}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2763, file: !2736, line: 61, baseType: !2400, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2763, file: !2736, line: 62, baseType: !385, size: 32, offset: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2763, file: !2736, line: 63, baseType: !109, size: 32, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2763, file: !2736, line: 64, baseType: !2769, size: 64, offset: 128)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !326, line: 94, baseType: !327)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2763, file: !2736, line: 65, baseType: !2769, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2735, file: !2736, line: 105, baseType: !2772, size: 256)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2735, file: !2736, line: 69, size: 256, elements: !2773)
!2773 = !{!2774, !2775}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2772, file: !2736, line: 70, baseType: !364, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, scope: !2772, file: !2736, line: 79, baseType: !2776, size: 192, offset: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2772, file: !2736, line: 79, size: 192, elements: !2777)
!2777 = !{!2778, !2779, !2780, !2787, !2792}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2776, file: !2736, line: 81, baseType: !109, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2776, file: !2736, line: 86, baseType: !874, size: 16)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2776, file: !2736, line: 92, baseType: !2781, size: 192)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2776, file: !2736, line: 88, size: 192, elements: !2782)
!2782 = !{!2783, !2785, !2786}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2781, file: !2736, line: 89, baseType: !2784, size: 64)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 64, elements: !2181)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2781, file: !2736, line: 90, baseType: !364, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2781, file: !2736, line: 91, baseType: !364, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2776, file: !2736, line: 97, baseType: !2788, size: 96)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2776, file: !2736, line: 94, size: 96, elements: !2789)
!2789 = !{!2790, !2791}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2788, file: !2736, line: 95, baseType: !2784, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2788, file: !2736, line: 96, baseType: !443, size: 32, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2776, file: !2736, line: 103, baseType: !2793, size: 128)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2776, file: !2736, line: 99, size: 128, elements: !2794)
!2794 = !{!2795, !2796, !2797}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2793, file: !2736, line: 100, baseType: !342, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2793, file: !2736, line: 101, baseType: !443, size: 32, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2793, file: !2736, line: 102, baseType: !443, size: 32, offset: 96)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2735, file: !2736, line: 111, baseType: !2799, size: 128)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2735, file: !2736, line: 108, size: 128, elements: !2800)
!2800 = !{!2801, !2802}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2799, file: !2736, line: 109, baseType: !328, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2799, file: !2736, line: 110, baseType: !109, size: 32, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2735, file: !2736, line: 118, baseType: !2804, size: 128)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2735, file: !2736, line: 114, size: 128, elements: !2805)
!2805 = !{!2806, !2807, !2808}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2804, file: !2736, line: 115, baseType: !364, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2804, file: !2736, line: 116, baseType: !109, size: 32, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2804, file: !2736, line: 117, baseType: !7, size: 32, offset: 96)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2028, file: !1672, line: 1208, baseType: !2587, size: 448, offset: 17664)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2028, file: !1672, line: 1215, baseType: !446, size: 64, offset: 18112)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2028, file: !1672, line: 1217, baseType: !446, size: 64, offset: 18176)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2028, file: !1672, line: 1219, baseType: !446, size: 64, offset: 18240)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2028, file: !1672, line: 1223, baseType: !2814, size: 64, offset: 18304)
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2815, line: 99, baseType: !2816)
!2815 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2815, line: 99, size: 64, elements: !2817)
!2817 = !{!2818}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2816, file: !2815, line: 99, baseType: !2265, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2028, file: !1672, line: 1225, baseType: !414, size: 32, offset: 18368)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2028, file: !1672, line: 1226, baseType: !109, size: 32, offset: 18400)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2028, file: !1672, line: 1227, baseType: !109, size: 32, offset: 18432)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2028, file: !1672, line: 1231, baseType: !2823, size: 64, offset: 18496)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1672, line: 1231, flags: DIFlagFwdDecl)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2028, file: !1672, line: 1233, baseType: !192, size: 128, offset: 18560)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2028, file: !1672, line: 1240, baseType: !2827, size: 64, offset: 18688)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1672, line: 62, flags: DIFlagFwdDecl)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2028, file: !1672, line: 1242, baseType: !2830, size: 64, offset: 18752)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1672, line: 1242, flags: DIFlagFwdDecl)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2028, file: !1672, line: 1244, baseType: !192, size: 128, offset: 18816)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2028, file: !1672, line: 1245, baseType: !2834, size: 64, offset: 18944)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1672, line: 51, flags: DIFlagFwdDecl)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2028, file: !1672, line: 1246, baseType: !658, size: 256, offset: 19008)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2028, file: !1672, line: 1247, baseType: !7, size: 32, offset: 19264)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2028, file: !1672, line: 1250, baseType: !2839, size: 64, offset: 19328)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1672, line: 57, flags: DIFlagFwdDecl)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2028, file: !1672, line: 1251, baseType: !658, size: 256, offset: 19392)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2028, file: !1672, line: 1252, baseType: !192, size: 128, offset: 19648)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2028, file: !1672, line: 1259, baseType: !1618, size: 64, offset: 19776)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2028, file: !1672, line: 1260, baseType: !874, size: 16, offset: 19840)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2028, file: !1672, line: 1261, baseType: !874, size: 16, offset: 19856)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2028, file: !1672, line: 1314, baseType: !2847, size: 64, offset: 19904)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2849, line: 62, size: 256, align: 256, elements: !2850)
!2849 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2850 = !{!2851, !2852, !2853, !2854, !2855, !2856, !2857}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2848, file: !2849, line: 75, baseType: !443, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2848, file: !2849, line: 90, baseType: !443, size: 32, offset: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2848, file: !2849, line: 112, baseType: !447, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2848, file: !2849, line: 132, baseType: !443, size: 32, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2848, file: !2849, line: 140, baseType: !443, size: 32, offset: 160)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2848, file: !2849, line: 149, baseType: !443, size: 32, offset: 192)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2848, file: !2849, line: 154, baseType: !2858, offset: 224)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, elements: !789)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2028, file: !1672, line: 1315, baseType: !442, size: 32, offset: 19968)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2028, file: !1672, line: 1316, baseType: !442, size: 32, offset: 20000)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2028, file: !1672, line: 1321, baseType: !342, size: 64, offset: 20032)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2028, file: !1672, line: 1325, baseType: !109, size: 32, offset: 20096)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2028, file: !1672, line: 1326, baseType: !109, size: 32, offset: 20128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2028, file: !1672, line: 1327, baseType: !109, size: 32, offset: 20160)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2028, file: !1672, line: 1328, baseType: !109, size: 32, offset: 20192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2028, file: !1672, line: 1329, baseType: !716, size: 128, align: 64, offset: 20224)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2028, file: !1672, line: 1332, baseType: !2868, size: 128, offset: 20352)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2869, line: 51, size: 128, elements: !2870)
!2869 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2870 = !{!2871, !2876, !2877}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2868, file: !2869, line: 60, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2873, line: 7, size: 64, elements: !2874)
!2873 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2874 = !{!2875}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2872, file: !2873, line: 12, baseType: !2262, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2868, file: !2869, line: 63, baseType: !905, size: 8, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2868, file: !2869, line: 70, baseType: !905, size: 8, offset: 72)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2028, file: !1672, line: 1335, baseType: !1670, size: 64, offset: 20480)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2028, file: !1672, line: 1337, baseType: !2880, size: 128, offset: 20544)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2869, line: 39, size: 128, elements: !2881)
!2881 = !{!2882, !2883, !2884}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2880, file: !2869, line: 40, baseType: !1447, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2880, file: !2869, line: 42, baseType: !443, size: 32, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2880, file: !2869, line: 43, baseType: !443, size: 32, offset: 96)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2028, file: !1672, line: 1340, baseType: !2886, size: 64, offset: 20672)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1672, line: 69, flags: DIFlagFwdDecl)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2028, file: !1672, line: 1351, baseType: !109, size: 32, offset: 20736)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2028, file: !1672, line: 1352, baseType: !109, size: 32, offset: 20768)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2028, file: !1672, line: 1354, baseType: !342, size: 64, offset: 20800)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2028, file: !1672, line: 1364, baseType: !446, size: 64, offset: 20864)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2028, file: !1672, line: 1365, baseType: !446, size: 64, offset: 20928)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2028, file: !1672, line: 1412, baseType: !342, size: 64, offset: 20992)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2028, file: !1672, line: 1453, baseType: !2895, size: 64, offset: 21056)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1672, line: 1453, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2028, file: !1672, line: 1457, baseType: !2898, size: 64, offset: 21120)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2900)
!2900 = !{!2901, !2902, !2921, !2924, !2925, !2958, !2968}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2899, file: !68, line: 62, baseType: !67, size: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, scope: !2899, file: !68, line: 64, baseType: !2903, size: 192, offset: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2899, file: !68, line: 64, size: 192, elements: !2904)
!2904 = !{!2905, !2916}
!2905 = !DIDerivedType(tag: DW_TAG_member, scope: !2903, file: !68, line: 65, baseType: !2906, size: 192)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2903, file: !68, line: 65, size: 192, elements: !2907)
!2907 = !{!2908, !2915}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2906, file: !68, line: 66, baseType: !2909, size: 128)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2910, line: 50, size: 128, elements: !2911)
!2910 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2911 = !{!2912, !2913, !2914}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2909, file: !2910, line: 52, baseType: !342, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2909, file: !2910, line: 54, baseType: !7, size: 32, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2909, file: !2910, line: 55, baseType: !7, size: 32, offset: 96)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2906, file: !68, line: 67, baseType: !342, size: 64, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_member, scope: !2903, file: !68, line: 70, baseType: !2917, size: 192)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2903, file: !68, line: 70, size: 192, elements: !2918)
!2918 = !{!2919, !2920}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2917, file: !68, line: 71, baseType: !716, size: 128, align: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2917, file: !68, line: 72, baseType: !342, size: 64, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2899, file: !68, line: 76, baseType: !2922, size: 64, offset: 256)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2899, file: !68, line: 77, baseType: !342, size: 64, offset: 320)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2899, file: !68, line: 79, baseType: !2926, size: 64, offset: 384)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2910, line: 25, size: 256, elements: !2928)
!2928 = !{!2929, !2935, !2939}
!2929 = !DIDerivedType(tag: DW_TAG_member, scope: !2927, file: !2910, line: 26, baseType: !2930, size: 128)
!2930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2927, file: !2910, line: 26, size: 128, elements: !2931)
!2931 = !{!2932, !2934}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2930, file: !2910, line: 27, baseType: !2933, size: 128)
!2933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 128, elements: !2459)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2930, file: !2910, line: 28, baseType: !2933, size: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2927, file: !2910, line: 31, baseType: !2936, size: 64, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2938)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2910, line: 23, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, scope: !2927, file: !2910, line: 33, baseType: !2940, size: 64, offset: 192)
!2940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2927, file: !2910, line: 33, size: 64, elements: !2941)
!2941 = !{!2942, !2948, !2953}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2940, file: !2910, line: 38, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2940, file: !2910, line: 34, size: 64, elements: !2944)
!2944 = !{!2945, !2946, !2947}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2943, file: !2910, line: 35, baseType: !831, size: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2943, file: !2910, line: 36, baseType: !250, size: 8, offset: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2943, file: !2910, line: 37, baseType: !250, size: 8, offset: 40)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2940, file: !2910, line: 42, baseType: !2949, size: 16)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2940, file: !2910, line: 39, size: 16, elements: !2950)
!2950 = !{!2951, !2952}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2949, file: !2910, line: 40, baseType: !250, size: 8)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2949, file: !2910, line: 41, baseType: !250, size: 8, offset: 8)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2940, file: !2910, line: 46, baseType: !2954, size: 16)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2940, file: !2910, line: 43, size: 16, elements: !2955)
!2955 = !{!2956, !2957}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2954, file: !2910, line: 44, baseType: !250, size: 8)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2954, file: !2910, line: 45, baseType: !250, size: 8, offset: 8)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2899, file: !68, line: 81, baseType: !2959, size: 64, offset: 448)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2967}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2960, file: !68, line: 86, baseType: !2922, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2960, file: !68, line: 87, baseType: !342, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2960, file: !68, line: 88, baseType: !342, size: 64, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2960, file: !68, line: 89, baseType: !342, size: 64, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2960, file: !68, line: 90, baseType: !905, size: 8, offset: 256)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2960, file: !68, line: 92, baseType: !2959, size: 64, offset: 320)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2899, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2028, file: !1672, line: 1463, baseType: !2970, offset: 21184)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1672, line: 739, elements: !577)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2028, file: !1672, line: 1470, baseType: !716, size: 128, align: 64, offset: 21184)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2028, file: !1672, line: 1471, baseType: !761, size: 32, offset: 21312)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2028, file: !1672, line: 1472, baseType: !109, size: 32, offset: 21344)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2028, file: !1672, line: 1474, baseType: !2027, size: 64, offset: 21376)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2028, file: !1672, line: 1475, baseType: !2976, size: 320, offset: 21440)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2977, line: 11, size: 320, elements: !2978)
!2977 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2978 = !{!2979, !2980, !2981, !2986}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2976, file: !2977, line: 16, baseType: !569, size: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2976, file: !2977, line: 17, baseType: !342, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2976, file: !2977, line: 18, baseType: !2982, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2985}
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2976, file: !2977, line: 19, baseType: !442, size: 32, offset: 256)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2028, file: !1672, line: 1478, baseType: !2988, size: 64, offset: 21760)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2990, line: 49, size: 512, elements: !2991)
!2990 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2991 = !{!2992, !2993, !2994, !2995, !2996, !2998, !2999, !3000, !3002}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2989, file: !2990, line: 50, baseType: !2988, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2989, file: !2990, line: 51, baseType: !364, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2989, file: !2990, line: 52, baseType: !342, size: 64, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2989, file: !2990, line: 53, baseType: !342, size: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2989, file: !2990, line: 54, baseType: !2997, size: 64, offset: 256)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2989, file: !2990, line: 56, baseType: !7, size: 32, offset: 320)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2989, file: !2990, line: 58, baseType: !7, size: 32, offset: 352)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2989, file: !2990, line: 59, baseType: !3001, size: 64, offset: 384)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !193, line: 159, baseType: !446)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2989, file: !2990, line: 60, baseType: !1301, size: 64, offset: 448)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2028, file: !1672, line: 1482, baseType: !761, size: 32, offset: 21824)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2028, file: !1672, line: 1489, baseType: !364, size: 64, offset: 21888)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2028, file: !1672, line: 1504, baseType: !364, size: 64, offset: 21952)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2028, file: !1672, line: 1505, baseType: !447, size: 64, offset: 22016)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2028, file: !1672, line: 1506, baseType: !446, size: 64, offset: 22080)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2028, file: !1672, line: 1507, baseType: !447, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2028, file: !1672, line: 1508, baseType: !447, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2028, file: !1672, line: 1509, baseType: !447, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2028, file: !1672, line: 1510, baseType: !716, size: 128, align: 64, offset: 22208)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2028, file: !1672, line: 1511, baseType: !109, size: 32, offset: 22336)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2028, file: !1672, line: 1515, baseType: !3014, size: 64, offset: 22400)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !711, line: 56, size: 64, elements: !3015)
!3015 = !{!3016}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3014, file: !711, line: 57, baseType: !714, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2028, file: !1672, line: 1518, baseType: !3014, size: 64, offset: 22464)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2028, file: !1672, line: 1528, baseType: !716, size: 128, align: 64, offset: 22528)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2028, file: !1672, line: 1552, baseType: !3020, size: 35328, offset: 23040)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3021, line: 430, size: 35328, elements: !3022)
!3021 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3022 = !{!3023, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3052, !3053, !3054, !3055, !3056, !3057, !3060, !3061, !3062, !3063}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3020, file: !3021, line: 432, baseType: !3024, size: 192)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3025, size: 192, elements: !293)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3026, line: 16, size: 64, elements: !3027)
!3026 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3027 = !{!3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3025, file: !3026, line: 17, baseType: !260, size: 16)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3025, file: !3026, line: 18, baseType: !260, size: 16, offset: 16)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3025, file: !3026, line: 19, baseType: !260, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3025, file: !3026, line: 19, baseType: !260, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3025, file: !3026, line: 19, baseType: !260, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3025, file: !3026, line: 19, baseType: !260, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3025, file: !3026, line: 19, baseType: !260, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3025, file: !3026, line: 20, baseType: !260, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3025, file: !3026, line: 20, baseType: !260, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3025, file: !3026, line: 20, baseType: !260, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3025, file: !3026, line: 20, baseType: !260, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3025, file: !3026, line: 20, baseType: !260, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3025, file: !3026, line: 20, baseType: !260, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3020, file: !3021, line: 436, baseType: !342, size: 64, offset: 192)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3020, file: !3021, line: 440, baseType: !262, size: 16, offset: 256)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3020, file: !3021, line: 441, baseType: !262, size: 16, offset: 272)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3020, file: !3021, line: 442, baseType: !262, size: 16, offset: 288)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3020, file: !3021, line: 443, baseType: !262, size: 16, offset: 304)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3020, file: !3021, line: 447, baseType: !342, size: 64, offset: 320)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3020, file: !3021, line: 448, baseType: !342, size: 64, offset: 384)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3020, file: !3021, line: 459, baseType: !3049, size: 256, offset: 448)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3050, size: 256, elements: !770)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3021, line: 428, flags: DIFlagFwdDecl)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3020, file: !3021, line: 461, baseType: !342, size: 64, offset: 704)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3020, file: !3021, line: 463, baseType: !342, size: 64, offset: 768)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3020, file: !3021, line: 465, baseType: !342, size: 64, offset: 832)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3020, file: !3021, line: 466, baseType: !342, size: 64, offset: 896)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3020, file: !3021, line: 467, baseType: !342, size: 64, offset: 960)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3020, file: !3021, line: 473, baseType: !3058, size: 64, offset: 1024)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3021, line: 10, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3020, file: !3021, line: 480, baseType: !342, size: 64, offset: 1088)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3020, file: !3021, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3020, file: !3021, line: 491, baseType: !442, size: 32, offset: 1184)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3020, file: !3021, line: 501, baseType: !3064, size: 33792, offset: 1536)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3065, line: 448, size: 33792, elements: !3066)
!3065 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3066 = !{!3067, !3068, !3069, !3231, !3232, !3238, !3239}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3064, file: !3065, line: 461, baseType: !7, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3064, file: !3065, line: 468, baseType: !342, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3064, file: !3065, line: 476, baseType: !3070, size: 64, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3065, line: 356, size: 33280, align: 512, elements: !3072)
!3072 = !{!3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3071, file: !3065, line: 358, baseType: !7, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3071, file: !3065, line: 361, baseType: !7, size: 32, offset: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3071, file: !3065, line: 364, baseType: !446, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3071, file: !3065, line: 367, baseType: !446, size: 64, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3071, file: !3065, line: 370, baseType: !446, size: 64, offset: 192)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3071, file: !3065, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3071, file: !3065, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3071, file: !3065, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3071, file: !3065, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3071, file: !3065, line: 397, baseType: !3083, size: 32768, offset: 512)
!3083 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3065, line: 348, size: 32768, elements: !3084)
!3084 = !{!3085, !3100, !3137, !3214, !3227}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3083, file: !3065, line: 349, baseType: !3086, size: 896)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3065, line: 12, size: 896, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3099}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3086, file: !3065, line: 13, baseType: !442, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3086, file: !3065, line: 14, baseType: !442, size: 32, offset: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3086, file: !3065, line: 15, baseType: !442, size: 32, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3086, file: !3065, line: 16, baseType: !442, size: 32, offset: 96)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3086, file: !3065, line: 17, baseType: !442, size: 32, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3086, file: !3065, line: 18, baseType: !442, size: 32, offset: 160)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3086, file: !3065, line: 19, baseType: !442, size: 32, offset: 192)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3086, file: !3065, line: 22, baseType: !3096, size: 640, offset: 224)
!3096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 640, elements: !3097)
!3097 = !{!3098}
!3098 = !DISubrange(count: 20)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3086, file: !3065, line: 25, baseType: !442, size: 32, offset: 864)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3083, file: !3065, line: 350, baseType: !3101, size: 4096, align: 128)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3065, line: 34, size: 4096, align: 128, elements: !3102)
!3102 = !{!3103, !3104, !3105, !3106, !3107, !3122, !3123, !3124, !3126, !3128, !3132}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3101, file: !3065, line: 35, baseType: !260, size: 16)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3101, file: !3065, line: 36, baseType: !260, size: 16, offset: 16)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3101, file: !3065, line: 37, baseType: !260, size: 16, offset: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3101, file: !3065, line: 38, baseType: !260, size: 16, offset: 48)
!3107 = !DIDerivedType(tag: DW_TAG_member, scope: !3101, file: !3065, line: 39, baseType: !3108, size: 128, offset: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3101, file: !3065, line: 39, size: 128, elements: !3109)
!3109 = !{!3110, !3115}
!3110 = !DIDerivedType(tag: DW_TAG_member, scope: !3108, file: !3065, line: 40, baseType: !3111, size: 128)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3108, file: !3065, line: 40, size: 128, elements: !3112)
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3111, file: !3065, line: 41, baseType: !446, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3111, file: !3065, line: 42, baseType: !446, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, scope: !3108, file: !3065, line: 44, baseType: !3116, size: 128)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3108, file: !3065, line: 44, size: 128, elements: !3117)
!3117 = !{!3118, !3119, !3120, !3121}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3116, file: !3065, line: 45, baseType: !442, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3116, file: !3065, line: 46, baseType: !442, size: 32, offset: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3116, file: !3065, line: 47, baseType: !442, size: 32, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3116, file: !3065, line: 48, baseType: !442, size: 32, offset: 96)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3101, file: !3065, line: 51, baseType: !442, size: 32, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3101, file: !3065, line: 52, baseType: !442, size: 32, offset: 224)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3101, file: !3065, line: 55, baseType: !3125, size: 1024, offset: 256)
!3125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 1024, elements: !455)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3101, file: !3065, line: 58, baseType: !3127, size: 2048, offset: 1280)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 2048, elements: !297)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3101, file: !3065, line: 60, baseType: !3129, size: 384, offset: 3328)
!3129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 384, elements: !3130)
!3130 = !{!3131}
!3131 = !DISubrange(count: 12)
!3132 = !DIDerivedType(tag: DW_TAG_member, scope: !3101, file: !3065, line: 62, baseType: !3133, size: 384, offset: 3712)
!3133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3101, file: !3065, line: 62, size: 384, elements: !3134)
!3134 = !{!3135, !3136}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3133, file: !3065, line: 63, baseType: !3129, size: 384)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3133, file: !3065, line: 64, baseType: !3129, size: 384)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3083, file: !3065, line: 351, baseType: !3138, size: 1088)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3065, line: 79, size: 1088, elements: !3139)
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3213}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3138, file: !3065, line: 80, baseType: !442, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3138, file: !3065, line: 81, baseType: !442, size: 32, offset: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3138, file: !3065, line: 82, baseType: !442, size: 32, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3138, file: !3065, line: 83, baseType: !442, size: 32, offset: 96)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3138, file: !3065, line: 84, baseType: !442, size: 32, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3138, file: !3065, line: 85, baseType: !442, size: 32, offset: 160)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3138, file: !3065, line: 86, baseType: !442, size: 32, offset: 192)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3138, file: !3065, line: 88, baseType: !3096, size: 640, offset: 224)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3138, file: !3065, line: 89, baseType: !250, size: 8, offset: 864)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3138, file: !3065, line: 90, baseType: !250, size: 8, offset: 872)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3138, file: !3065, line: 91, baseType: !250, size: 8, offset: 880)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3138, file: !3065, line: 92, baseType: !250, size: 8, offset: 888)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3138, file: !3065, line: 93, baseType: !250, size: 8, offset: 896)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3138, file: !3065, line: 94, baseType: !250, size: 8, offset: 904)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3138, file: !3065, line: 95, baseType: !3155, size: 64, offset: 960)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3157, line: 11, size: 128, elements: !3158)
!3157 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3158 = !{!3159, !3160}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3156, file: !3157, line: 12, baseType: !328, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3156, file: !3157, line: 13, baseType: !3161, size: 64, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3163, line: 103, size: 1344, elements: !3164)
!3163 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3164 = !{!3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3193, !3194, !3195}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3162, file: !3163, line: 109, baseType: !342, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3162, file: !3163, line: 110, baseType: !342, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3162, file: !3163, line: 111, baseType: !342, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3162, file: !3163, line: 112, baseType: !342, size: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3162, file: !3163, line: 113, baseType: !342, size: 64, offset: 256)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3162, file: !3163, line: 114, baseType: !342, size: 64, offset: 320)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3162, file: !3163, line: 117, baseType: !342, size: 64, offset: 384)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3162, file: !3163, line: 118, baseType: !342, size: 64, offset: 448)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3162, file: !3163, line: 119, baseType: !342, size: 64, offset: 512)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3162, file: !3163, line: 120, baseType: !342, size: 64, offset: 576)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3162, file: !3163, line: 121, baseType: !342, size: 64, offset: 640)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3162, file: !3163, line: 122, baseType: !342, size: 64, offset: 704)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3162, file: !3163, line: 123, baseType: !342, size: 64, offset: 768)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3162, file: !3163, line: 124, baseType: !342, size: 64, offset: 832)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3162, file: !3163, line: 125, baseType: !342, size: 64, offset: 896)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3162, file: !3163, line: 139, baseType: !342, size: 64, offset: 960)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3162, file: !3163, line: 142, baseType: !342, size: 64, offset: 1024)
!3182 = !DIDerivedType(tag: DW_TAG_member, scope: !3162, file: !3163, line: 144, baseType: !3183, size: 64, offset: 1088)
!3183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3162, file: !3163, line: 144, size: 64, elements: !3184)
!3184 = !{!3185, !3186, !3187}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3183, file: !3163, line: 146, baseType: !260, size: 16)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3183, file: !3163, line: 148, baseType: !446, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3183, file: !3163, line: 150, baseType: !3188, size: 64)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3163, line: 59, size: 64, elements: !3189)
!3189 = !{!3190, !3191, !3192}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3188, file: !3163, line: 61, baseType: !446, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3188, file: !3163, line: 63, baseType: !446, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3188, file: !3163, line: 65, baseType: !446, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3162, file: !3163, line: 153, baseType: !342, size: 64, offset: 1152)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3162, file: !3163, line: 154, baseType: !342, size: 64, offset: 1216)
!3195 = !DIDerivedType(tag: DW_TAG_member, scope: !3162, file: !3163, line: 156, baseType: !3196, size: 64, offset: 1280)
!3196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3162, file: !3163, line: 156, size: 64, elements: !3197)
!3197 = !{!3198, !3199, !3200}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3196, file: !3163, line: 158, baseType: !260, size: 16)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3196, file: !3163, line: 160, baseType: !446, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3196, file: !3163, line: 162, baseType: !3201, size: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3163, line: 69, size: 64, elements: !3202)
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3201, file: !3163, line: 71, baseType: !446, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3201, file: !3163, line: 73, baseType: !446, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3201, file: !3163, line: 75, baseType: !446, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3201, file: !3163, line: 77, baseType: !446, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3201, file: !3163, line: 80, baseType: !446, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3201, file: !3163, line: 83, baseType: !446, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3201, file: !3163, line: 86, baseType: !446, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3201, file: !3163, line: 88, baseType: !446, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3201, file: !3163, line: 93, baseType: !446, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3201, file: !3163, line: 100, baseType: !446, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3138, file: !3065, line: 96, baseType: !442, size: 32, offset: 1024)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3083, file: !3065, line: 352, baseType: !3215, size: 4608, align: 512)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3065, line: 333, size: 4608, align: 512, elements: !3216)
!3216 = !{!3217, !3218, !3225}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3215, file: !3065, line: 334, baseType: !3101, size: 4096, align: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3215, file: !3065, line: 335, baseType: !3219, size: 512, offset: 4096)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3065, line: 312, size: 512, elements: !3220)
!3220 = !{!3221, !3222, !3223}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3219, file: !3065, line: 313, baseType: !446, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3219, file: !3065, line: 314, baseType: !446, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3219, file: !3065, line: 315, baseType: !3224, size: 384, offset: 128)
!3224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 384, elements: !892)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3215, file: !3065, line: 336, baseType: !3226, offset: 4608)
!3226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, elements: !789)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3083, file: !3065, line: 353, baseType: !3228, size: 32768)
!3228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 32768, elements: !3229)
!3229 = !{!3230}
!3230 = !DISubrange(count: 4096)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3064, file: !3065, line: 484, baseType: !3070, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3064, file: !3065, line: 491, baseType: !3233, size: 128, offset: 256)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3065, line: 404, size: 128, elements: !3234)
!3234 = !{!3235, !3236, !3237}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3233, file: !3065, line: 424, baseType: !446, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3233, file: !3065, line: 432, baseType: !7, size: 32, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3233, file: !3065, line: 440, baseType: !7, size: 32, offset: 96)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3064, file: !3065, line: 498, baseType: !3233, size: 128, offset: 384)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3064, file: !3065, line: 508, baseType: !3071, size: 33280, align: 512, offset: 512)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2009, file: !2010, line: 16, baseType: !774, size: 192, offset: 512)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2009, file: !2010, line: 17, baseType: !242, size: 32, offset: 704)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !525, file: !14, line: 1240, baseType: !364, size: 64, offset: 6912)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !525, file: !14, line: 1243, baseType: !442, size: 32, offset: 6976)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !525, file: !14, line: 1245, baseType: !862, size: 64, offset: 7040)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !525, file: !14, line: 1246, baseType: !862, size: 64, offset: 7104)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !525, file: !14, line: 1248, baseType: !443, size: 32, offset: 7168)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !525, file: !14, line: 1249, baseType: !3248, size: 64, offset: 7232)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !525, file: !14, line: 1252, baseType: !3251, size: 256, offset: 7296)
!3251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 256, elements: !455)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !525, file: !14, line: 1253, baseType: !3253, size: 128, offset: 7552)
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3254, line: 21, baseType: !3255)
!3254 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3254, line: 19, size: 128, elements: !3256)
!3256 = !{!3257}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3255, file: !3254, line: 20, baseType: !3258, size: 128)
!3258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 128, elements: !2459)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !525, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !525, file: !14, line: 1261, baseType: !658, size: 256, offset: 7744)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !525, file: !14, line: 1267, baseType: !211, size: 64, offset: 8000)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !525, file: !14, line: 1269, baseType: !471, size: 64, offset: 8064)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !525, file: !14, line: 1271, baseType: !3264, size: 448, offset: 8128)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1789, line: 63, size: 448, elements: !3265)
!3265 = !{!3266, !3271, !3272, !3273, !3274, !3275, !3276}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3264, file: !1789, line: 64, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!342, !3270, !1787}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3264, file: !1789, line: 66, baseType: !3267, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3264, file: !1789, line: 69, baseType: !328, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3264, file: !1789, line: 70, baseType: !109, size: 32, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3264, file: !1789, line: 71, baseType: !7, size: 32, offset: 224)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3264, file: !1789, line: 74, baseType: !192, size: 128, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3264, file: !1789, line: 85, baseType: !3277, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !525, file: !14, line: 1274, baseType: !662, size: 64, offset: 8576)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !525, file: !14, line: 1280, baseType: !662, size: 64, offset: 8640)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !525, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !525, file: !14, line: 1286, baseType: !1721, size: 32, offset: 8736)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !525, file: !14, line: 1289, baseType: !3283, size: 64, offset: 8768)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1341, line: 18, flags: DIFlagFwdDecl)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !525, file: !14, line: 1290, baseType: !565, size: 64, offset: 8832)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !525, file: !14, line: 1297, baseType: !988, size: 64, offset: 8896)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !525, file: !14, line: 1304, baseType: !3288, size: 64, offset: 8960)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3289, line: 49, size: 64, elements: !3290)
!3289 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3290 = !{!3291}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3288, file: !3289, line: 50, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3289, line: 41, size: 512, align: 512, elements: !3294)
!3294 = !{!3295, !3296, !3301}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3293, file: !3289, line: 43, baseType: !222, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3293, file: !3289, line: 45, baseType: !3297, size: 192, offset: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3289, line: 29, size: 192, elements: !3298)
!3298 = !{!3299, !3300}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3297, file: !3289, line: 30, baseType: !192, size: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3297, file: !3289, line: 32, baseType: !328, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3293, file: !3289, line: 46, baseType: !328, size: 64, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !525, file: !14, line: 1305, baseType: !3288, size: 64, offset: 9024)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !525, file: !14, line: 1306, baseType: !716, size: 128, align: 64, offset: 9088)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !525, file: !14, line: 1307, baseType: !1340, size: 256, offset: 9216)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !525, file: !14, line: 1309, baseType: !658, size: 256, offset: 9472)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !525, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !525, file: !14, line: 1317, baseType: !222, size: 32, align: 512, offset: 10240)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !525, file: !14, line: 1318, baseType: !192, size: 128, offset: 10304)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !525, file: !14, line: 1320, baseType: !222, size: 32, offset: 10432)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !525, file: !14, line: 1321, baseType: !192, size: 128, offset: 10496)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !519, file: !520, line: 73, baseType: !109, size: 32, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !519, file: !520, line: 74, baseType: !3313, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !813, line: 42, flags: DIFlagFwdDecl)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !473, file: !410, line: 141, baseType: !3317, size: 64, offset: 704)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!109, !1849, !905}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !473, file: !410, line: 142, baseType: !3321, size: 64, offset: 768)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!408, !408, !3324}
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !409, file: !410, line: 96, baseType: !524, size: 64, offset: 832)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !409, file: !410, line: 97, baseType: !342, size: 64, offset: 896)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !409, file: !410, line: 98, baseType: !364, size: 64, offset: 960)
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !410, line: 100, baseType: !3330, size: 128, offset: 1024)
!3330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !410, line: 100, size: 128, elements: !3331)
!3331 = !{!3332, !3333}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3330, file: !410, line: 101, baseType: !192, size: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3330, file: !410, line: 102, baseType: !1162, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !409, file: !410, line: 104, baseType: !192, size: 128, offset: 1152)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !409, file: !410, line: 105, baseType: !192, size: 128, offset: 1280)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !409, file: !410, line: 113, baseType: !3337, size: 128, offset: 1408)
!3337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !410, line: 109, size: 128, elements: !3338)
!3338 = !{!3339, !3340, !3341}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3337, file: !410, line: 110, baseType: !569, size: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3337, file: !410, line: 111, baseType: !424, size: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3337, file: !410, line: 112, baseType: !716, size: 128, align: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !402, file: !14, line: 1968, baseType: !3343, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!211, !408, !373, !3346}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3348, line: 10, size: 128, elements: !3349)
!3348 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3349 = !{!3350, !3354}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3347, file: !3348, line: 11, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{null, !364}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3347, file: !3348, line: 12, baseType: !364, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !402, file: !14, line: 1969, baseType: !3356, size: 64, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!109, !3313, !373, !109}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !402, file: !14, line: 1970, baseType: !3360, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!396, !373, !109, !905}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !402, file: !14, line: 1972, baseType: !3364, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!109, !408, !292, !109}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !402, file: !14, line: 1974, baseType: !3368, size: 64, offset: 320)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!109, !3313, !373, !408, !334, !905}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !402, file: !14, line: 1976, baseType: !3372, size: 64, offset: 384)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!109, !408, !373, !408}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !402, file: !14, line: 1977, baseType: !3376, size: 64, offset: 448)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!109, !373, !408}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !402, file: !14, line: 1978, baseType: !3380, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!109, !3313, !373, !408, !211}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !402, file: !14, line: 1980, baseType: !3384, size: 64, offset: 576)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!109, !3313, !373, !408, !334}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !402, file: !14, line: 1982, baseType: !3376, size: 64, offset: 640)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !402, file: !14, line: 1983, baseType: !3389, size: 64, offset: 704)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!109, !3313, !373, !408, !334, !529}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !402, file: !14, line: 1985, baseType: !3393, size: 64, offset: 768)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!109, !3313, !373, !408, !373, !408, !7}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !402, file: !14, line: 1987, baseType: !3397, size: 64, offset: 832)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!109, !3313, !408, !3400}
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3402)
!3402 = !{!3403, !3404, !3405, !3415, !3424, !3425, !3430, !3431, !3432}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3401, file: !14, line: 227, baseType: !7, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3401, file: !14, line: 228, baseType: !334, size: 16, offset: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, scope: !3401, file: !14, line: 241, baseType: !3406, size: 32, offset: 64)
!3406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3401, file: !14, line: 241, size: 32, elements: !3407)
!3407 = !{!3408, !3409}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3406, file: !14, line: 242, baseType: !379, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3406, file: !14, line: 243, baseType: !3410, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3411, line: 16, baseType: !3412)
!3411 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3411, line: 14, size: 32, elements: !3413)
!3413 = !{!3414}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3412, file: !3411, line: 15, baseType: !384, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, scope: !3401, file: !14, line: 245, baseType: !3416, size: 32, offset: 96)
!3416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3401, file: !14, line: 245, size: 32, elements: !3417)
!3417 = !{!3418, !3419}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3416, file: !14, line: 246, baseType: !388, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3416, file: !14, line: 247, baseType: !3420, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3411, line: 20, baseType: !3421)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3411, line: 18, size: 32, elements: !3422)
!3422 = !{!3423}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3421, file: !3411, line: 19, baseType: !392, size: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3401, file: !14, line: 249, baseType: !534, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3401, file: !14, line: 250, baseType: !3426, size: 128, offset: 192)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !863, line: 13, size: 128, elements: !3427)
!3427 = !{!3428, !3429}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3426, file: !863, line: 14, baseType: !862, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3426, file: !863, line: 15, baseType: !328, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3401, file: !14, line: 251, baseType: !3426, size: 128, offset: 320)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3401, file: !14, line: 252, baseType: !3426, size: 128, offset: 448)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3401, file: !14, line: 259, baseType: !1033, size: 64, offset: 576)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !402, file: !14, line: 1988, baseType: !3434, size: 64, offset: 896)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!109, !3313, !1849, !3437, !442, !7}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3439, line: 22, size: 1280, elements: !3440)
!3439 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3438, file: !3439, line: 23, baseType: !442, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3438, file: !3439, line: 24, baseType: !334, size: 16, offset: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3438, file: !3439, line: 25, baseType: !7, size: 32, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3438, file: !3439, line: 26, baseType: !870, size: 32, offset: 96)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3438, file: !3439, line: 27, baseType: !446, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3438, file: !3439, line: 28, baseType: !446, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3438, file: !3439, line: 41, baseType: !446, size: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3438, file: !3439, line: 42, baseType: !529, size: 32, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3438, file: !3439, line: 43, baseType: !529, size: 32, offset: 352)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3438, file: !3439, line: 44, baseType: !379, size: 32, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3438, file: !3439, line: 45, baseType: !388, size: 32, offset: 416)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3438, file: !3439, line: 46, baseType: !534, size: 64, offset: 448)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3438, file: !3439, line: 47, baseType: !3426, size: 128, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3438, file: !3439, line: 48, baseType: !3426, size: 128, offset: 640)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3438, file: !3439, line: 49, baseType: !3426, size: 128, offset: 768)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3438, file: !3439, line: 50, baseType: !3426, size: 128, offset: 896)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3438, file: !3439, line: 51, baseType: !446, size: 64, offset: 1024)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3438, file: !3439, line: 52, baseType: !446, size: 64, offset: 1088)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3438, file: !3439, line: 53, baseType: !442, size: 32, offset: 1152)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3438, file: !3439, line: 54, baseType: !442, size: 32, offset: 1184)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3438, file: !3439, line: 55, baseType: !446, size: 64, offset: 1216)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !402, file: !14, line: 1990, baseType: !3463, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!324, !408, !292, !339}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !402, file: !14, line: 1991, baseType: !3467, size: 64, offset: 1024)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!109, !373, !3470, !446, !446}
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !402, file: !14, line: 1993, baseType: !3473, size: 64, offset: 1088)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!109, !373, !109}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !402, file: !14, line: 1994, baseType: !3477, size: 64, offset: 1152)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!109, !373, !408, !1033, !7, !334}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !402, file: !14, line: 1997, baseType: !3481, size: 64, offset: 1216)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!109, !3313, !373, !1033, !334}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !402, file: !14, line: 1999, baseType: !3485, size: 64, offset: 1280)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!396, !3313, !408, !109}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !402, file: !14, line: 2001, baseType: !3489, size: 64, offset: 1344)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!109, !3313, !408, !396, !109}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !402, file: !14, line: 2003, baseType: !3493, size: 64, offset: 1408)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!109, !3313, !408, !3496}
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !402, file: !14, line: 2005, baseType: !3499, size: 64, offset: 1472)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!109, !408, !3496}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !402, file: !14, line: 2006, baseType: !3503, size: 64, offset: 1536)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!3506, !373}
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3508)
!3508 = !{!3509, !3510}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3507, file: !14, line: 3193, baseType: !1113, size: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3507, file: !14, line: 3194, baseType: !442, size: 32, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !374, file: !14, line: 655, baseType: !524, size: 64, offset: 448)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !374, file: !14, line: 656, baseType: !369, size: 64, offset: 512)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !374, file: !14, line: 659, baseType: !364, size: 64, offset: 576)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !374, file: !14, line: 663, baseType: !342, size: 64, offset: 640)
!3515 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !14, line: 671, baseType: !3516, size: 32, offset: 704)
!3516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !14, line: 671, size: 32, elements: !3517)
!3517 = !{!3518, !3520}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3516, file: !14, line: 672, baseType: !3519, size: 32)
!3519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3516, file: !14, line: 673, baseType: !7, size: 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !374, file: !14, line: 675, baseType: !529, size: 32, offset: 736)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !374, file: !14, line: 676, baseType: !534, size: 64, offset: 768)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !374, file: !14, line: 677, baseType: !3426, size: 128, offset: 832)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !374, file: !14, line: 678, baseType: !3426, size: 128, offset: 960)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !374, file: !14, line: 679, baseType: !3426, size: 128, offset: 1088)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !374, file: !14, line: 680, baseType: !222, size: 32, offset: 1216)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !374, file: !14, line: 681, baseType: !262, size: 16, offset: 1248)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !374, file: !14, line: 682, baseType: !250, size: 8, offset: 1264)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !374, file: !14, line: 683, baseType: !250, size: 8, offset: 1272)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !374, file: !14, line: 684, baseType: !1922, size: 64, offset: 1280)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !374, file: !14, line: 691, baseType: !342, size: 64, offset: 1344)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !374, file: !14, line: 692, baseType: !846, size: 320, offset: 1408)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !374, file: !14, line: 694, baseType: !342, size: 64, offset: 1728)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !374, file: !14, line: 695, baseType: !342, size: 64, offset: 1792)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !374, file: !14, line: 697, baseType: !569, size: 128, offset: 1856)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !374, file: !14, line: 698, baseType: !192, size: 128, offset: 1984)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !374, file: !14, line: 707, baseType: !192, size: 128, offset: 2112)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !374, file: !14, line: 708, baseType: !192, size: 128, offset: 2240)
!3539 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !14, line: 709, baseType: !3540, size: 128, offset: 2368)
!3540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !14, line: 709, size: 128, elements: !3541)
!3541 = !{!3542, !3543}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3540, file: !14, line: 710, baseType: !565, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3540, file: !14, line: 711, baseType: !716, size: 128, align: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !374, file: !14, line: 713, baseType: !664, size: 64, offset: 2496)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !374, file: !14, line: 714, baseType: !664, size: 64, offset: 2560)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !374, file: !14, line: 715, baseType: !242, size: 32, offset: 2624)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !374, file: !14, line: 716, baseType: !242, size: 32, offset: 2656)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !374, file: !14, line: 717, baseType: !242, size: 32, offset: 2688)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !374, file: !14, line: 719, baseType: !242, size: 32, offset: 2720)
!3550 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !14, line: 721, baseType: !3551, size: 64, offset: 2752)
!3551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !14, line: 721, size: 64, elements: !3552)
!3552 = !{!3553, !3554}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3551, file: !14, line: 722, baseType: !1024, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3551, file: !14, line: 723, baseType: !596, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !374, file: !14, line: 725, baseType: !3556, size: 64, offset: 2816)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !374, file: !14, line: 726, baseType: !370, size: 1536, align: 64, offset: 2880)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !374, file: !14, line: 727, baseType: !192, size: 128, offset: 4416)
!3560 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !14, line: 728, baseType: !3561, size: 64, offset: 4544)
!3561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !14, line: 728, size: 64, elements: !3562)
!3562 = !{!3563, !3564, !3567, !3568}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3561, file: !14, line: 729, baseType: !1670, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3561, file: !14, line: 730, baseType: !3565, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3561, file: !14, line: 731, baseType: !292, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3561, file: !14, line: 732, baseType: !7, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !374, file: !14, line: 735, baseType: !443, size: 32, offset: 4608)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !374, file: !14, line: 738, baseType: !443, size: 32, offset: 4640)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !374, file: !14, line: 739, baseType: !3248, size: 64, offset: 4672)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !374, file: !14, line: 750, baseType: !364, size: 64, offset: 4736)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !370, file: !14, line: 474, baseType: !1113, size: 128, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !370, file: !14, line: 475, baseType: !846, size: 320, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !370, file: !14, line: 476, baseType: !1118, size: 32, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !370, file: !14, line: 477, baseType: !242, size: 32, offset: 544)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !370, file: !14, line: 482, baseType: !2197, size: 128, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !370, file: !14, line: 483, baseType: !342, size: 64, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !370, file: !14, line: 484, baseType: !342, size: 64, offset: 768)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !370, file: !14, line: 485, baseType: !3581, size: 64, offset: 832)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3583)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3584)
!3584 = !{!3585, !3589, !3659, !3663, !3667, !3673, !3677, !3681, !3686, !3690, !3694, !3698, !3699, !3703, !3707, !3711, !3716, !3720, !3727, !3728}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3583, file: !14, line: 405, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!109, !1447, !608}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3583, file: !14, line: 406, baseType: !3590, size: 64, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!109, !1033, !3593}
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !3595)
!3595 = !{!3596, !3626, !3640}
!3596 = !DIDerivedType(tag: DW_TAG_member, scope: !3594, file: !27, line: 295, baseType: !3597, size: 512)
!3597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3594, file: !27, line: 295, size: 512, elements: !3598)
!3598 = !{!3599, !3625}
!3599 = !DIDerivedType(tag: DW_TAG_member, scope: !3597, file: !27, line: 296, baseType: !3600, size: 448)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3597, file: !27, line: 296, size: 448, elements: !3601)
!3601 = !{!3602, !3603, !3612, !3613, !3614, !3623, !3624}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3600, file: !27, line: 298, baseType: !342, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, scope: !3600, file: !27, line: 299, baseType: !3604, size: 128, offset: 64)
!3604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3600, file: !27, line: 299, size: 128, elements: !3605)
!3605 = !{!3606, !3607}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3604, file: !27, line: 300, baseType: !192, size: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, scope: !3604, file: !27, line: 302, baseType: !3608, size: 128)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3604, file: !27, line: 302, size: 128, elements: !3609)
!3609 = !{!3610, !3611}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3608, file: !27, line: 303, baseType: !364, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3608, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3600, file: !27, line: 310, baseType: !369, size: 64, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3600, file: !27, line: 311, baseType: !342, size: 64, offset: 256)
!3614 = !DIDerivedType(tag: DW_TAG_member, scope: !3600, file: !27, line: 312, baseType: !3615, size: 64, offset: 320)
!3615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3600, file: !27, line: 312, size: 64, elements: !3616)
!3616 = !{!3617, !3618}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3615, file: !27, line: 313, baseType: !364, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3615, file: !27, line: 314, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !3620)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !3621)
!3621 = !{!3622}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3620, file: !27, line: 256, baseType: !342, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3600, file: !27, line: 316, baseType: !242, size: 32, offset: 384)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3600, file: !27, line: 317, baseType: !242, size: 32, offset: 416)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3597, file: !27, line: 323, baseType: !1448, size: 512, align: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, scope: !3594, file: !27, line: 325, baseType: !3627, size: 512, offset: 512)
!3627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3594, file: !27, line: 325, size: 512, elements: !3628)
!3628 = !{!3629, !3639}
!3629 = !DIDerivedType(tag: DW_TAG_member, scope: !3627, file: !27, line: 326, baseType: !3630, size: 320)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3627, file: !27, line: 326, size: 320, elements: !3631)
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637, !3638}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3630, file: !27, line: 327, baseType: !342, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3630, file: !27, line: 328, baseType: !342, size: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3630, file: !27, line: 329, baseType: !342, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3630, file: !27, line: 331, baseType: !242, size: 32, offset: 192)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3630, file: !27, line: 332, baseType: !242, size: 32, offset: 224)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3630, file: !27, line: 333, baseType: !242, size: 32, offset: 256)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3630, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3627, file: !27, line: 339, baseType: !1448, size: 512, align: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !3594, file: !27, line: 341, baseType: !3641, size: 512, offset: 1024)
!3641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3594, file: !27, line: 341, size: 512, elements: !3642)
!3642 = !{!3643, !3652, !3658}
!3643 = !DIDerivedType(tag: DW_TAG_member, scope: !3641, file: !27, line: 342, baseType: !3644, size: 384)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3641, file: !27, line: 342, size: 384, elements: !3645)
!3645 = !{!3646, !3647, !3648, !3649, !3650, !3651}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3644, file: !27, line: 343, baseType: !342, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3644, file: !27, line: 344, baseType: !342, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3644, file: !27, line: 346, baseType: !364, size: 64, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3644, file: !27, line: 347, baseType: !364, size: 64, offset: 192)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3644, file: !27, line: 348, baseType: !364, size: 64, offset: 256)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3644, file: !27, line: 349, baseType: !364, size: 64, offset: 320)
!3652 = !DIDerivedType(tag: DW_TAG_member, scope: !3641, file: !27, line: 352, baseType: !3653, size: 256)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3641, file: !27, line: 352, size: 256, elements: !3654)
!3654 = !{!3655, !3656, !3657}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3653, file: !27, line: 353, baseType: !342, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3653, file: !27, line: 354, baseType: !342, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3653, file: !27, line: 356, baseType: !192, size: 128, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3641, file: !27, line: 359, baseType: !1448, size: 512, align: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3583, file: !14, line: 409, baseType: !3660, size: 64, offset: 128)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!109, !369, !608}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3583, file: !14, line: 412, baseType: !3664, size: 64, offset: 192)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!905, !369, !3593}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3583, file: !14, line: 414, baseType: !3668, size: 64, offset: 256)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{null, !3671}
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3583, file: !14, line: 416, baseType: !3674, size: 64, offset: 320)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!109, !1033, !369, !534, !7, !2997, !1686}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3583, file: !14, line: 419, baseType: !3678, size: 64, offset: 384)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!109, !1033, !369, !534, !7, !7, !1447, !364}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3583, file: !14, line: 424, baseType: !3682, size: 64, offset: 448)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!3685, !369, !3685}
!3685 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !193, line: 131, baseType: !446)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3583, file: !14, line: 425, baseType: !3687, size: 64, offset: 512)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{null, !3593, !339, !339}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3583, file: !14, line: 426, baseType: !3691, size: 64, offset: 576)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!905, !3593, !1118}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3583, file: !14, line: 427, baseType: !3695, size: 64, offset: 640)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{null, !3593}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3583, file: !14, line: 428, baseType: !1043, size: 64, offset: 704)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3583, file: !14, line: 433, baseType: !3700, size: 64, offset: 768)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!109, !369, !3593, !3593, !74}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3583, file: !14, line: 435, baseType: !3704, size: 64, offset: 832)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!109, !3593}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3583, file: !14, line: 436, baseType: !3708, size: 64, offset: 896)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!905, !3593, !339, !339}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3583, file: !14, line: 438, baseType: !3712, size: 64, offset: 960)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{null, !3593, !3715, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3583, file: !14, line: 439, baseType: !3717, size: 64, offset: 1024)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!109, !369, !1447}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3583, file: !14, line: 442, baseType: !3721, size: 64, offset: 1088)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!109, !3724, !1033, !3726}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3583, file: !14, line: 444, baseType: !1678, size: 64, offset: 1152)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3583, file: !14, line: 445, baseType: !3729, size: 64, offset: 1216)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!109, !1046, !1068}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !14, line: 486, baseType: !342, size: 64, offset: 896)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !370, file: !14, line: 487, baseType: !846, size: 320, offset: 960)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !370, file: !14, line: 488, baseType: !1721, size: 32, offset: 1280)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !370, file: !14, line: 489, baseType: !222, size: 32, offset: 1312)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !370, file: !14, line: 490, baseType: !192, size: 128, offset: 1344)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !370, file: !14, line: 491, baseType: !364, size: 64, offset: 1472)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !359, file: !318, line: 180, baseType: !3739, size: 64, offset: 320)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!324, !1033, !215, !358, !292, !534, !339}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !359, file: !318, line: 182, baseType: !3739, size: 64, offset: 384)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !359, file: !318, line: 184, baseType: !3744, size: 64, offset: 448)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!109, !1033, !215, !358, !1173}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !347, file: !318, line: 90, baseType: !3748, size: 64, offset: 192)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !347, file: !318, line: 91, baseType: !3750, size: 64, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !308, file: !208, line: 120, baseType: !3752, size: 64, offset: 192)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!3755, !275}
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3757)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3758)
!3758 = !{!3759, !3760, !3764, !3768, !3774, !3778}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3757, file: !82, line: 40, baseType: !81, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3757, file: !82, line: 41, baseType: !3761, size: 64, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!905}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3757, file: !82, line: 42, baseType: !3765, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!364}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3757, file: !82, line: 43, baseType: !3769, size: 64, offset: 192)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!1301, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3757, file: !82, line: 44, baseType: !3775, size: 64, offset: 256)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!1301}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3757, file: !82, line: 45, baseType: !3351, size: 64, offset: 320)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !308, file: !208, line: 121, baseType: !3780, size: 64, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!1301, !275}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !308, file: !208, line: 122, baseType: !3784, size: 64, offset: 320)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{null, !275, !3787, !3788}
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !207, file: !208, line: 70, baseType: !3790, size: 64, offset: 384)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !549, line: 190, size: 1152, elements: !3792)
!3792 = !{!3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3872, !3873, !3874, !3875, !3876, !3879}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3791, file: !549, line: 191, baseType: !242, size: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3791, file: !549, line: 192, baseType: !242, size: 32, offset: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3791, file: !549, line: 202, baseType: !3790, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3791, file: !549, line: 203, baseType: !211, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3791, file: !549, line: 205, baseType: !838, size: 192, align: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3791, file: !549, line: 207, baseType: !1301, size: 64, offset: 384)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3791, file: !549, line: 208, baseType: !7, size: 32, offset: 448)
!3800 = !DIDerivedType(tag: DW_TAG_member, scope: !3791, file: !549, line: 209, baseType: !3801, size: 256, offset: 512)
!3801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3791, file: !549, line: 209, size: 256, elements: !3802)
!3802 = !{!3803, !3812, !3816}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3801, file: !549, line: 210, baseType: !3804, size: 256)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !549, line: 153, size: 256, elements: !3805)
!3805 = !{!3806, !3807, !3808, !3811}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3804, file: !549, line: 154, baseType: !342, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3804, file: !549, line: 156, baseType: !2200, size: 64, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3804, file: !549, line: 162, baseType: !3809, size: 64, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !549, line: 162, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3804, file: !549, line: 167, baseType: !342, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3801, file: !549, line: 211, baseType: !3813, size: 64)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !549, line: 170, size: 64, elements: !3814)
!3814 = !{!3815}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3813, file: !549, line: 171, baseType: !3790, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3801, file: !549, line: 212, baseType: !3817, size: 256)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !549, line: 174, size: 256, elements: !3818)
!3818 = !{!3819, !3867, !3870, !3871}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3817, file: !549, line: 175, baseType: !3820, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3822)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !549, line: 271, size: 768, elements: !3823)
!3823 = !{!3824, !3844, !3848, !3849, !3850, !3851, !3852, !3856, !3857, !3858, !3859, !3863}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3822, file: !549, line: 276, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!109, !3828}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !549, line: 251, size: 1216, elements: !3830)
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3829, file: !549, line: 253, baseType: !3790, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3829, file: !549, line: 254, baseType: !1033, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3829, file: !549, line: 255, baseType: !646, size: 64, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3829, file: !549, line: 256, baseType: !364, size: 64, offset: 192)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3829, file: !549, line: 259, baseType: !658, size: 256, offset: 256)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3829, file: !549, line: 260, baseType: !658, size: 256, offset: 512)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3829, file: !549, line: 261, baseType: !109, size: 32, offset: 768)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3829, file: !549, line: 262, baseType: !192, size: 128, offset: 832)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3829, file: !549, line: 263, baseType: !292, size: 64, offset: 960)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3829, file: !549, line: 265, baseType: !339, size: 64, offset: 1024)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3829, file: !549, line: 266, baseType: !905, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3829, file: !549, line: 267, baseType: !905, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3829, file: !549, line: 268, baseType: !1383, size: 64, offset: 1152)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3822, file: !549, line: 277, baseType: !3845, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{null, !3828}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3822, file: !549, line: 290, baseType: !697, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3822, file: !549, line: 292, baseType: !684, size: 64, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3822, file: !549, line: 293, baseType: !693, size: 64, offset: 256)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3822, file: !549, line: 294, baseType: !689, size: 64, offset: 320)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3822, file: !549, line: 296, baseType: !3853, size: 64, offset: 384)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!324, !3828, !292, !339, !534}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3822, file: !549, line: 306, baseType: !339, size: 64, offset: 448)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3822, file: !549, line: 313, baseType: !905, size: 8, offset: 512)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3822, file: !549, line: 314, baseType: !3853, size: 64, offset: 576)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3822, file: !549, line: 317, baseType: !3860, size: 64, offset: 640)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!1151, !3828, !1153}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3822, file: !549, line: 320, baseType: !3864, size: 64, offset: 704)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!109, !3828, !1173}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3817, file: !549, line: 176, baseType: !3868, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !549, line: 35, flags: DIFlagFwdDecl)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3817, file: !549, line: 177, baseType: !534, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3817, file: !549, line: 178, baseType: !3790, size: 64, offset: 192)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3791, file: !549, line: 215, baseType: !364, size: 64, offset: 768)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3791, file: !549, line: 221, baseType: !446, size: 64, offset: 832)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3791, file: !549, line: 223, baseType: !262, size: 16, offset: 896)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3791, file: !549, line: 224, baseType: !334, size: 16, offset: 912)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3791, file: !549, line: 225, baseType: !3877, size: 64, offset: 960)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !549, line: 36, flags: DIFlagFwdDecl)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3791, file: !549, line: 227, baseType: !716, size: 128, align: 64, offset: 1024)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !207, file: !208, line: 71, baseType: !3881, size: 32, offset: 448)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3882, line: 19, size: 32, elements: !3883)
!3882 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3883 = !{!3884}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3881, file: !3882, line: 20, baseType: !761, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !207, file: !208, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !207, file: !208, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !207, file: !208, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !207, file: !208, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !207, file: !208, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !204, file: !6, line: 47, baseType: !187, size: 64, offset: 512)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !204, file: !6, line: 48, baseType: !215, size: 64, offset: 576)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !204, file: !6, line: 49, baseType: !3893, size: 64, offset: 640)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !204, file: !6, line: 50, baseType: !2416, size: 64, offset: 704)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !188, file: !6, line: 418, baseType: !3897, size: 64, offset: 1408)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3899)
!3899 = !{!3900, !3901, !3906, !3910, !3914, !3918}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3898, file: !6, line: 54, baseType: !330, size: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3898, file: !6, line: 55, baseType: !3902, size: 64, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!324, !3897, !3905, !292}
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3898, file: !6, line: 57, baseType: !3907, size: 64, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!324, !3897, !3905, !211, !339}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3898, file: !6, line: 59, baseType: !3911, size: 64, offset: 256)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{null, !187, !211}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3898, file: !6, line: 60, baseType: !3915, size: 64, offset: 320)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!109, !187}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3898, file: !6, line: 61, baseType: !3919, size: 64, offset: 384)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{null, !187}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !188, file: !6, line: 419, baseType: !211, size: 64, offset: 1472)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !188, file: !6, line: 420, baseType: !211, size: 64, offset: 1536)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !188, file: !6, line: 421, baseType: !215, size: 64, offset: 1600)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !188, file: !6, line: 424, baseType: !3926, size: 64, offset: 1664)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3928)
!3928 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !188, file: !6, line: 425, baseType: !3930, size: 64, offset: 1728)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !188, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !188, file: !6, line: 435, baseType: !658, size: 256, offset: 1856)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !188, file: !6, line: 437, baseType: !3935, size: 64, offset: 2112)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3937, line: 69, size: 320, elements: !3938)
!3937 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3938 = !{!3939, !3940, !3941, !3958, !3960, !3964, !3965}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3936, file: !3937, line: 70, baseType: !211, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3936, file: !3937, line: 71, baseType: !187, size: 64, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3936, file: !3937, line: 72, baseType: !3942, size: 64, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3944)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3937, line: 47, size: 256, elements: !3945)
!3945 = !{!3946, !3947, !3953, !3957}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3944, file: !3937, line: 49, baseType: !7, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3944, file: !3937, line: 51, baseType: !3948, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!109, !211, !3951}
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3936)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3944, file: !3937, line: 53, baseType: !3954, size: 64, offset: 128)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!109, !292, !3951}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3944, file: !3937, line: 55, baseType: !3351, size: 64, offset: 192)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3936, file: !3937, line: 73, baseType: !3959, size: 16, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3936, file: !3937, line: 74, baseType: !3961, size: 8, offset: 208)
!3961 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !251, line: 16, baseType: !3962)
!3962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !253, line: 20, baseType: !3963)
!3963 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3936, file: !3937, line: 75, baseType: !250, size: 8, offset: 216)
!3965 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !3937, line: 76, baseType: !3966, size: 64, offset: 256)
!3966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3936, file: !3937, line: 76, size: 64, elements: !3967)
!3967 = !{!3968, !3969, !3976}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3966, file: !3937, line: 77, baseType: !364, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3966, file: !3937, line: 78, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3972)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3937, line: 86, size: 128, elements: !3973)
!3973 = !{!3974, !3975}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3972, file: !3937, line: 87, baseType: !7, size: 32)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3972, file: !3937, line: 88, baseType: !292, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3966, file: !3937, line: 79, baseType: !3977, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3979)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3937, line: 92, size: 256, elements: !3980)
!3980 = !{!3981, !3982, !3983, !3984, !3985}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3979, file: !3937, line: 94, baseType: !7, size: 32)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3979, file: !3937, line: 95, baseType: !7, size: 32, offset: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3979, file: !3937, line: 96, baseType: !2021, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3979, file: !3937, line: 97, baseType: !3942, size: 64, offset: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3979, file: !3937, line: 98, baseType: !364, size: 64, offset: 192)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !188, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !188, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !188, file: !6, line: 442, baseType: !3926, size: 64, offset: 2240)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !188, file: !6, line: 443, baseType: !3930, size: 64, offset: 2304)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !188, file: !6, line: 444, baseType: !905, size: 8, offset: 2368)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !188, file: !6, line: 451, baseType: !905, size: 8, offset: 2376)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !188, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !188, file: !6, line: 455, baseType: !3994, size: 64, offset: 2432)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3996, line: 23, size: 96, elements: !3997)
!3996 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3997 = !{!3998, !3999, !4000}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3995, file: !3996, line: 24, baseType: !109, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3995, file: !3996, line: 24, baseType: !109, size: 32, offset: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3995, file: !3996, line: 24, baseType: !109, size: 32, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !188, file: !6, line: 458, baseType: !4002, size: 64, offset: 2496)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!109}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !188, file: !6, line: 460, baseType: !4006, size: 4032, align: 512, offset: 2560)
!4006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4007, size: 4032, elements: !4021)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !4008)
!4008 = !{!4009, !4010, !4011}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4007, file: !6, line: 363, baseType: !364, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4007, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4007, file: !6, line: 367, baseType: !4012, size: 448, offset: 128)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !4013)
!4013 = !{!4014, !4015}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4012, file: !6, line: 320, baseType: !187, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4012, file: !6, line: 321, baseType: !4016, size: 384, offset: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4017, line: 40, size: 384, elements: !4018)
!4017 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4018 = !{!4019}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4016, file: !4017, line: 41, baseType: !4020, size: 384, align: 64)
!4020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 384, align: 64, elements: !2540)
!4021 = !{!4022}
!4022 = !DISubrange(count: 7)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !188, file: !6, line: 463, baseType: !4024, size: 192, offset: 6592)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4025, line: 8, size: 192, elements: !4026)
!4025 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4026 = !{!4027, !4028, !4029}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4024, file: !4025, line: 10, baseType: !7, size: 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4024, file: !4025, line: 11, baseType: !640, size: 64, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4024, file: !4025, line: 12, baseType: !4030, size: 64, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4032, line: 59, size: 48, elements: !4033)
!4032 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4033 = !{!4034, !4035, !4036, !4037, !4038, !4039}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4031, file: !4032, line: 60, baseType: !1318, size: 16)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4031, file: !4032, line: 61, baseType: !1318, size: 16, offset: 16)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4031, file: !4032, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4031, file: !4032, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4031, file: !4032, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4031, file: !4032, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !188, file: !6, line: 465, baseType: !342, size: 64, offset: 6784)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !188, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !188, file: !6, line: 470, baseType: !192, size: 128, offset: 6912)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !188, file: !6, line: 471, baseType: !4044, size: 64, offset: 7040)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4046, line: 33, size: 96, elements: !4047)
!4046 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4047 = !{!4048, !4049, !4050, !4051}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4045, file: !4046, line: 37, baseType: !109, size: 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4045, file: !4046, line: 43, baseType: !109, size: 32, offset: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4045, file: !4046, line: 45, baseType: !262, size: 16, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4045, file: !4046, line: 47, baseType: !262, size: 16, offset: 80)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !188, file: !6, line: 476, baseType: !4053, size: 64, offset: 7104)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4055)
!4055 = !{!4056, !4072, !4073, !4074}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4054, file: !6, line: 379, baseType: !4057, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4059, line: 204, baseType: !4060)
!4059 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4059, line: 197, size: 192, elements: !4061)
!4061 = !{!4062, !4064, !4065, !4066, !4068, !4070}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4060, file: !4059, line: 198, baseType: !4063, size: 32)
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4059, line: 21, baseType: !443)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4060, file: !4059, line: 199, baseType: !254, size: 8, offset: 32)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4060, file: !4059, line: 200, baseType: !254, size: 8, offset: 40)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4060, file: !4059, line: 201, baseType: !4067, size: 16, offset: 48)
!4067 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4059, line: 17, baseType: !261)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4060, file: !4059, line: 202, baseType: !4069, size: 64, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4059, line: 16, baseType: !447)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4060, file: !4059, line: 203, baseType: !4071, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4059, line: 22, baseType: !447)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4054, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4054, file: !6, line: 381, baseType: !292, size: 64, offset: 128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4054, file: !6, line: 382, baseType: !292, size: 64, offset: 192)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !188, file: !6, line: 477, baseType: !4054, size: 256, offset: 7168)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !188, file: !6, line: 480, baseType: !4077, size: 64, offset: 7424)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !188, file: !6, line: 483, baseType: !4080, size: 64, offset: 7488)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !188, file: !6, line: 488, baseType: !292, size: 64, offset: 7552)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !188, file: !6, line: 492, baseType: !364, size: 64, offset: 7616)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !188, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !188, file: !6, line: 495, baseType: !364, size: 64, offset: 7744)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !188, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !188, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !188, file: !6, line: 500, baseType: !4089, size: 64, offset: 7872)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4091, line: 45, baseType: !4092)
!4091 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !188, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !188, file: !6, line: 504, baseType: !4095, size: 64, offset: 8000)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4098, line: 96, size: 192, elements: !4099)
!4098 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4099 = !{!4100, !4101, !4144, !4146}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4097, file: !4098, line: 97, baseType: !7, size: 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4097, file: !4098, line: 98, baseType: !4102, size: 64, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4098, line: 24, size: 3072, elements: !4104)
!4104 = !{!4105, !4107, !4108, !4109, !4110, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4141, !4142, !4143}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4103, file: !4098, line: 26, baseType: !4106, size: 128)
!4106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 128, elements: !2540)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4103, file: !4098, line: 27, baseType: !4106, size: 128, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4103, file: !4098, line: 28, baseType: !109, size: 32, offset: 256)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4103, file: !4098, line: 31, baseType: !222, size: 32, align: 512, offset: 512)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4103, file: !4098, line: 32, baseType: !4111, size: 960, offset: 576)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4112, line: 206, size: 960, elements: !4113)
!4112 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4113 = !{!4114, !4115, !4118, !4120, !4121, !4123}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4111, file: !4112, line: 207, baseType: !719, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4111, file: !4112, line: 208, baseType: !4116, size: 256, offset: 64)
!4116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4117, size: 256, elements: !770)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4111, file: !4112, line: 209, baseType: !4119, size: 256, offset: 320)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 256, elements: !770)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4111, file: !4112, line: 213, baseType: !328, size: 64, offset: 576)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4111, file: !4112, line: 215, baseType: !4122, size: 256, offset: 640)
!4122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 256, elements: !770)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4111, file: !4112, line: 216, baseType: !250, size: 8, offset: 896)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4103, file: !4098, line: 33, baseType: !342, size: 64, offset: 1536)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4103, file: !4098, line: 34, baseType: !342, size: 64, offset: 1600)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4103, file: !4098, line: 35, baseType: !905, size: 8, offset: 1664)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4103, file: !4098, line: 36, baseType: !2976, size: 320, offset: 1728)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4103, file: !4098, line: 37, baseType: !1340, size: 256, offset: 2048)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4103, file: !4098, line: 38, baseType: !716, size: 128, align: 64, offset: 2304)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4103, file: !4098, line: 39, baseType: !4131, size: 64, offset: 2432)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4098, line: 49, size: 768, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139, !4140}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4132, file: !4098, line: 50, baseType: !222, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4132, file: !4098, line: 51, baseType: !4119, size: 256, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4132, file: !4098, line: 53, baseType: !4119, size: 256, offset: 320)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4132, file: !4098, line: 54, baseType: !342, size: 64, offset: 576)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4132, file: !4098, line: 55, baseType: !4131, size: 64, offset: 640)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4132, file: !4098, line: 56, baseType: !109, size: 32, offset: 704)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4132, file: !4098, line: 57, baseType: !109, size: 32, offset: 736)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4103, file: !4098, line: 40, baseType: !342, size: 64, offset: 2496)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4103, file: !4098, line: 42, baseType: !109, size: 32, offset: 2560)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4103, file: !4098, line: 43, baseType: !4096, size: 64, offset: 2624)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4097, file: !4098, line: 99, baseType: !4145, offset: 128)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !576, line: 211, elements: !577)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4097, file: !4098, line: 100, baseType: !4147, size: 64, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4098, line: 63, size: 3008, elements: !4149)
!4149 = !{!4150, !4151, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4179}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4148, file: !4098, line: 64, baseType: !4131, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4148, file: !4098, line: 65, baseType: !4152, size: 192, offset: 64)
!4152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4131, size: 192, elements: !293)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4148, file: !4098, line: 67, baseType: !109, size: 32, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4148, file: !4098, line: 68, baseType: !658, size: 256, offset: 320)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4148, file: !4098, line: 69, baseType: !222, size: 32, offset: 576)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4148, file: !4098, line: 70, baseType: !658, size: 256, offset: 640)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4148, file: !4098, line: 71, baseType: !342, size: 64, offset: 896)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4148, file: !4098, line: 72, baseType: !342, size: 64, offset: 960)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4148, file: !4098, line: 73, baseType: !342, size: 64, offset: 1024)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4148, file: !4098, line: 74, baseType: !342, size: 64, offset: 1088)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4148, file: !4098, line: 75, baseType: !342, size: 64, offset: 1152)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4148, file: !4098, line: 76, baseType: !342, size: 64, offset: 1216)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4148, file: !4098, line: 77, baseType: !342, size: 64, offset: 1280)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4148, file: !4098, line: 78, baseType: !342, size: 64, offset: 1344)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4148, file: !4098, line: 79, baseType: !905, size: 8, offset: 1408)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4148, file: !4098, line: 80, baseType: !342, size: 64, offset: 1472)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4148, file: !4098, line: 81, baseType: !658, size: 256, offset: 1536)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4148, file: !4098, line: 82, baseType: !1532, size: 256, offset: 1792)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4148, file: !4098, line: 84, baseType: !242, size: 32, offset: 2048)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4148, file: !4098, line: 87, baseType: !342, size: 64, offset: 2112)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4148, file: !4098, line: 88, baseType: !342, size: 64, offset: 2176)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4148, file: !4098, line: 89, baseType: !4173, size: 704, offset: 2240)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1341, line: 111, size: 704, elements: !4174)
!4174 = !{!4175, !4176, !4177, !4178}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4173, file: !1341, line: 112, baseType: !1340, size: 256)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4173, file: !1341, line: 113, baseType: !2976, size: 320, offset: 256)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4173, file: !1341, line: 116, baseType: !3283, size: 64, offset: 576)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4173, file: !1341, line: 117, baseType: !109, size: 32, offset: 640)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4148, file: !4098, line: 90, baseType: !4096, size: 64, offset: 2944)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !188, file: !6, line: 515, baseType: !4181, size: 64, offset: 8064)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4183, line: 117, size: 128, elements: !4184)
!4183 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4184 = !{!4185, !4186, !4187}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4182, file: !4183, line: 118, baseType: !831, size: 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4182, file: !4183, line: 119, baseType: !831, size: 32, offset: 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4182, file: !4183, line: 120, baseType: !328, size: 64, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !188, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !188, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !188, file: !6, line: 520, baseType: !4191, size: 64, offset: 8192)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !188, file: !6, line: 523, baseType: !4193, size: 64, offset: 8256)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !188, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !188, file: !6, line: 525, baseType: !4198, size: 64, offset: 8384)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !188, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !188, file: !6, line: 533, baseType: !364, size: 64, offset: 8512)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !188, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !188, file: !6, line: 535, baseType: !4205, size: 64, offset: 8640)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !188, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !188, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !188, file: !6, line: 540, baseType: !4209, size: 64, offset: 8768)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4211, line: 32, size: 64, elements: !4212)
!4211 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4212 = !{!4213, !4214}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4210, file: !4211, line: 33, baseType: !831, size: 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4210, file: !4211, line: 34, baseType: !831, size: 32, offset: 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !188, file: !6, line: 563, baseType: !192, size: 128, offset: 8832)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !188, file: !6, line: 565, baseType: !192, size: 128, offset: 8960)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !188, file: !6, line: 568, baseType: !4218, size: 64, offset: 9088)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !188, file: !6, line: 570, baseType: !242, size: 32, offset: 9152)
!4220 = !{!4221, !4223, !4228, !4233, !4235, !4240, !4245, !4247, !4252, !4257, !4259, !4261, !4263, !4265, !4267, !4269, !4271, !4273, !4275, !0, !4277, !4279, !4284, !4286, !4288, !4290, !4295, !4298, !4303, !4308, !4313, !4318}
!4221 = !DIGlobalVariableExpression(var: !4222, expr: !DIExpression())
!4222 = distinct !DIGlobalVariable(name: "__param_preallocate_dma", scope: !2, file: !3, line: 21, type: !3952, isLocal: true, isDefinition: true, align: 64)
!4223 = !DIGlobalVariableExpression(var: !4224, expr: !DIExpression())
!4224 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_preallocate_dmatype289", scope: !2, file: !3, line: 21, type: !4225, isLocal: true, isDefinition: true, align: 8)
!4225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 296, elements: !4226)
!4226 = !{!4227}
!4227 = !DISubrange(count: 37)
!4228 = !DIGlobalVariableExpression(var: !4229, expr: !DIExpression())
!4229 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_preallocate_dma290", scope: !2, file: !3, line: 22, type: !4230, isLocal: true, isDefinition: true, align: 8)
!4230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 720, elements: !4231)
!4231 = !{!4232}
!4232 = !DISubrange(count: 90)
!4233 = !DIGlobalVariableExpression(var: !4234, expr: !DIExpression())
!4234 = distinct !DIGlobalVariable(name: "__param_maximum_substreams", scope: !2, file: !3, line: 25, type: !3952, isLocal: true, isDefinition: true, align: 64)
!4235 = !DIGlobalVariableExpression(var: !4236, expr: !DIExpression())
!4236 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_maximum_substreamstype291", scope: !2, file: !3, line: 25, type: !4237, isLocal: true, isDefinition: true, align: 8)
!4237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 320, elements: !4238)
!4238 = !{!4239}
!4239 = !DISubrange(count: 40)
!4240 = !DIGlobalVariableExpression(var: !4241, expr: !DIExpression())
!4241 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_maximum_substreams292", scope: !2, file: !3, line: 26, type: !4242, isLocal: true, isDefinition: true, align: 8)
!4242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 648, elements: !4243)
!4243 = !{!4244}
!4244 = !DISubrange(count: 81)
!4245 = !DIGlobalVariableExpression(var: !4246, expr: !DIExpression())
!4246 = distinct !DIGlobalVariable(name: "__param_max_alloc_per_card", scope: !2, file: !3, line: 31, type: !3952, isLocal: true, isDefinition: true, align: 64)
!4247 = !DIGlobalVariableExpression(var: !4248, expr: !DIExpression())
!4248 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_max_alloc_per_cardtype293", scope: !2, file: !3, line: 31, type: !4249, isLocal: true, isDefinition: true, align: 8)
!4249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 336, elements: !4250)
!4250 = !{!4251}
!4251 = !DISubrange(count: 42)
!4252 = !DIGlobalVariableExpression(var: !4253, expr: !DIExpression())
!4253 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_max_alloc_per_card294", scope: !2, file: !3, line: 32, type: !4254, isLocal: true, isDefinition: true, align: 8)
!4254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 552, elements: !4255)
!4255 = !{!4256}
!4256 = !DISubrange(count: 69)
!4257 = !DIGlobalVariableExpression(var: !4258, expr: !DIExpression())
!4258 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_lib_preallocate_free_for_all295", scope: !2, file: !3, line: 153, type: !364, isLocal: true, isDefinition: true)
!4259 = !DIGlobalVariableExpression(var: !4260, expr: !DIExpression())
!4260 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_lib_preallocate_pages296", scope: !2, file: !3, line: 332, type: !364, isLocal: true, isDefinition: true)
!4261 = !DIGlobalVariableExpression(var: !4262, expr: !DIExpression())
!4262 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_lib_preallocate_pages_for_all297", scope: !2, file: !3, line: 351, type: !364, isLocal: true, isDefinition: true)
!4263 = !DIGlobalVariableExpression(var: !4264, expr: !DIExpression())
!4264 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_set_managed_buffer298", scope: !2, file: !3, line: 389, type: !364, isLocal: true, isDefinition: true)
!4265 = !DIGlobalVariableExpression(var: !4266, expr: !DIExpression())
!4266 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_set_managed_buffer_all299", scope: !2, file: !3, line: 411, type: !364, isLocal: true, isDefinition: true)
!4267 = !DIGlobalVariableExpression(var: !4268, expr: !DIExpression())
!4268 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_lib_malloc_pages300", scope: !2, file: !3, line: 476, type: !364, isLocal: true, isDefinition: true)
!4269 = !DIGlobalVariableExpression(var: !4270, expr: !DIExpression())
!4270 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_lib_free_pages301", scope: !2, file: !3, line: 505, type: !364, isLocal: true, isDefinition: true)
!4271 = !DIGlobalVariableExpression(var: !4272, expr: !DIExpression())
!4272 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__snd_pcm_lib_alloc_vmalloc_buffer302", scope: !2, file: !3, line: 526, type: !364, isLocal: true, isDefinition: true)
!4273 = !DIGlobalVariableExpression(var: !4274, expr: !DIExpression())
!4274 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_lib_free_vmalloc_buffer303", scope: !2, file: !3, line: 546, type: !364, isLocal: true, isDefinition: true)
!4275 = !DIGlobalVariableExpression(var: !4276, expr: !DIExpression())
!4276 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_lib_get_vmalloc_page304", scope: !2, file: !3, line: 563, type: !364, isLocal: true, isDefinition: true)
!4277 = !DIGlobalVariableExpression(var: !4278, expr: !DIExpression())
!4278 = distinct !DIGlobalVariable(name: "preallocate_dma", scope: !2, file: !3, line: 20, type: !109, isLocal: true, isDefinition: true)
!4279 = !DIGlobalVariableExpression(var: !4280, expr: !DIExpression())
!4280 = distinct !DIGlobalVariable(name: "__param_str_maximum_substreams", scope: !2, file: !3, line: 25, type: !4281, isLocal: true, isDefinition: true)
!4281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 216, elements: !4282)
!4282 = !{!4283}
!4283 = !DISubrange(count: 27)
!4284 = !DIGlobalVariableExpression(var: !4285, expr: !DIExpression())
!4285 = distinct !DIGlobalVariable(name: "maximum_substreams", scope: !2, file: !3, line: 24, type: !109, isLocal: true, isDefinition: true)
!4286 = !DIGlobalVariableExpression(var: !4287, expr: !DIExpression())
!4287 = distinct !DIGlobalVariable(name: "__param_str_max_alloc_per_card", scope: !2, file: !3, line: 31, type: !4281, isLocal: true, isDefinition: true)
!4288 = !DIGlobalVariableExpression(var: !4289, expr: !DIExpression())
!4289 = distinct !DIGlobalVariable(name: "max_alloc_per_card", scope: !2, file: !3, line: 30, type: !342, isLocal: true, isDefinition: true)
!4290 = !DIGlobalVariableExpression(var: !4291, expr: !DIExpression())
!4291 = distinct !DIGlobalVariable(scope: null, file: !3, line: 49, type: !4292, isLocal: true, isDefinition: true)
!4292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 192, elements: !4293)
!4293 = !{!4294}
!4294 = !DISubrange(count: 24)
!4295 = !DIGlobalVariableExpression(var: !4296, expr: !DIExpression(DW_OP_constu, 16384, DW_OP_stack_value))
!4296 = distinct !DIGlobalVariable(name: "snd_minimum_buffer", scope: !2, file: !3, line: 28, type: !4297, isLocal: true, isDefinition: true)
!4297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!4298 = !DIGlobalVariableExpression(var: !4299, expr: !DIExpression())
!4299 = distinct !DIGlobalVariable(scope: null, file: !3, line: 121, type: !4300, isLocal: true, isDefinition: true)
!4300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 472, elements: !4301)
!4301 = !{!4302}
!4302 = !DISubrange(count: 59)
!4303 = !DIGlobalVariableExpression(var: !4304, expr: !DIExpression())
!4304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 241, type: !4305, isLocal: true, isDefinition: true)
!4305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 72, elements: !4306)
!4306 = !{!4307}
!4307 = !DISubrange(count: 9)
!4308 = !DIGlobalVariableExpression(var: !4309, expr: !DIExpression())
!4309 = distinct !DIGlobalVariable(scope: null, file: !3, line: 249, type: !4310, isLocal: true, isDefinition: true)
!4310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 104, elements: !4311)
!4311 = !{!4312}
!4312 = !DISubrange(count: 13)
!4313 = !DIGlobalVariableExpression(var: !4314, expr: !DIExpression())
!4314 = distinct !DIGlobalVariable(scope: null, file: !3, line: 165, type: !4315, isLocal: true, isDefinition: true)
!4315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 40, elements: !4316)
!4316 = !{!4317}
!4317 = !DISubrange(count: 5)
!4318 = !DIGlobalVariableExpression(var: !4319, expr: !DIExpression())
!4319 = distinct !DIGlobalVariable(scope: null, file: !171, line: 480, type: !4320, isLocal: true, isDefinition: true)
!4320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 168, elements: !4321)
!4321 = !{!4322}
!4322 = !DISubrange(count: 21)
!4323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 192, elements: !4293)
!4324 = !{i32 7, !"Dwarf Version", i32 5}
!4325 = !{i32 2, !"Debug Info Version", i32 3}
!4326 = !{i32 1, !"wchar_size", i32 2}
!4327 = !{i32 8, !"cf-protection-branch", i32 1}
!4328 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4329 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4330 = !{i32 1, !"Code Model", i32 2}
!4331 = !{i32 1, !"override-stack-alignment", i32 8}
!4332 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4333 = distinct !DISubprogram(name: "snd_pcm_lib_preallocate_free", scope: !3, file: !3, line: 134, type: !4334, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5332)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{null, !4336}
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_substream", file: !4338, line: 447, size: 2944, elements: !4339)
!4338 = !DIFile(filename: "./include/sound/pcm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02d4b94f1676d26c9d7732dfeb7c2922")
!4339 = !{!4340, !5033, !5035, !5036, !5037, !5038, !5039, !5045, !5046, !5063, !5064, !5161, !5307, !5310, !5311, !5312, !5313, !5314, !5321, !5323, !5324, !5325, !5326, !5328, !5329, !5330, !5331}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "pcm", scope: !4337, file: !4338, line: 448, baseType: !4341, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm", file: !4338, line: 514, size: 3008, elements: !4343)
!4343 = !{!4344, !5001, !5002, !5003, !5004, !5005, !5006, !5008, !5009, !5023, !5024, !5025, !5026, !5030, !5031, !5032}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4342, file: !4338, line: 515, baseType: !4345, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !4347, line: 80, size: 12288, elements: !4348)
!4347 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!4348 = !{!4349, !4350, !4351, !4352, !4353, !4357, !4358, !4359, !4363, !4364, !4365, !4369, !4370, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4978, !4979, !4980, !4983, !4984, !4985, !4986, !4987, !4988, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4346, file: !4347, line: 81, baseType: !109, size: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4346, file: !4347, line: 84, baseType: !2458, size: 128, offset: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4346, file: !4347, line: 85, baseType: !2458, size: 128, offset: 160)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !4346, file: !4347, line: 86, baseType: !3251, size: 256, offset: 288)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !4346, file: !4347, line: 87, baseType: !4354, size: 640, offset: 544)
!4354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 640, elements: !4355)
!4355 = !{!4356}
!4356 = !DISubrange(count: 80)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !4346, file: !4347, line: 88, baseType: !3251, size: 256, offset: 1184)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !4346, file: !4347, line: 89, baseType: !4354, size: 640, offset: 1440)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !4346, file: !4347, line: 90, baseType: !4360, size: 1024, offset: 2080)
!4360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 1024, elements: !4361)
!4361 = !{!4362}
!4362 = !DISubrange(count: 128)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4346, file: !4347, line: 92, baseType: !187, size: 64, offset: 3136)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4346, file: !4347, line: 94, baseType: !364, size: 64, offset: 3200)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4346, file: !4347, line: 95, baseType: !4366, size: 64, offset: 3264)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{null, !4345}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4346, file: !4347, line: 97, baseType: !192, size: 128, offset: 3328)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !4346, file: !4347, line: 99, baseType: !4371, size: 64, offset: 3456)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4373)
!4373 = !{!4374, !4375, !4376, !4379, !4380, !4433, !4503, !4504, !4505, !4506, !4507, !4514, !4672, !4685, !4695, !4699, !4701, !4702, !4703, !4707, !4714, !4715, !4718, !4721, !4725, !4829, !4830, !4831, !4832, !4833, !4834, !4864, !4865, !4866, !4869, !4872, !4881, !4882, !4883, !4884, !4885, !4886}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4372, file: !94, line: 706, baseType: !207, size: 512)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4372, file: !94, line: 707, baseType: !4371, size: 64, offset: 512)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4372, file: !94, line: 709, baseType: !4377, size: 64, offset: 576)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4372, file: !94, line: 711, baseType: !211, size: 64, offset: 640)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4372, file: !94, line: 712, baseType: !4381, size: 64, offset: 704)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4383)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4384)
!4384 = !{!4385, !4386, !4387, !4393, !4398, !4402}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4383, file: !94, line: 90, baseType: !211, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4383, file: !94, line: 91, baseType: !344, size: 64, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4383, file: !94, line: 92, baseType: !4388, size: 64, offset: 128)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!109, !4391, !287}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4372)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4383, file: !94, line: 93, baseType: !4394, size: 64, offset: 192)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!292, !4391, !4397, !3787, !3788}
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4383, file: !94, line: 95, baseType: !4399, size: 64, offset: 256)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{null, !4371}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4383, file: !94, line: 97, baseType: !4403, size: 64, offset: 320)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4405)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4406)
!4406 = !{!4407, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4405, file: !101, line: 287, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!109, !4371}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4405, file: !101, line: 288, baseType: !4399, size: 64, offset: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4405, file: !101, line: 289, baseType: !4408, size: 64, offset: 128)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4405, file: !101, line: 290, baseType: !4408, size: 64, offset: 192)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4405, file: !101, line: 291, baseType: !4408, size: 64, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4405, file: !101, line: 292, baseType: !4408, size: 64, offset: 320)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4405, file: !101, line: 293, baseType: !4408, size: 64, offset: 384)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4405, file: !101, line: 294, baseType: !4408, size: 64, offset: 448)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4405, file: !101, line: 295, baseType: !4408, size: 64, offset: 512)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4405, file: !101, line: 296, baseType: !4408, size: 64, offset: 576)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4405, file: !101, line: 297, baseType: !4408, size: 64, offset: 640)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4405, file: !101, line: 298, baseType: !4408, size: 64, offset: 704)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4405, file: !101, line: 299, baseType: !4408, size: 64, offset: 768)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4405, file: !101, line: 300, baseType: !4408, size: 64, offset: 832)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4405, file: !101, line: 301, baseType: !4408, size: 64, offset: 896)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4405, file: !101, line: 302, baseType: !4408, size: 64, offset: 960)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4405, file: !101, line: 303, baseType: !4408, size: 64, offset: 1024)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4405, file: !101, line: 304, baseType: !4408, size: 64, offset: 1088)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4405, file: !101, line: 305, baseType: !4408, size: 64, offset: 1152)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4405, file: !101, line: 306, baseType: !4408, size: 64, offset: 1216)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4405, file: !101, line: 307, baseType: !4408, size: 64, offset: 1280)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4405, file: !101, line: 308, baseType: !4408, size: 64, offset: 1344)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4405, file: !101, line: 309, baseType: !4408, size: 64, offset: 1408)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4372, file: !94, line: 714, baseType: !4434, size: 64, offset: 768)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4436)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4437, line: 80, size: 1344, elements: !4438)
!4437 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4438 = !{!4439, !4440, !4441, !4442, !4443, !4444, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4502}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4436, file: !4437, line: 81, baseType: !211, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4436, file: !4437, line: 82, baseType: !211, size: 64, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4436, file: !4437, line: 83, baseType: !344, size: 64, offset: 128)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4436, file: !4437, line: 84, baseType: !344, size: 64, offset: 192)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4436, file: !4437, line: 85, baseType: !344, size: 64, offset: 256)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4436, file: !4437, line: 87, baseType: !4445, size: 64, offset: 320)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!109, !4371, !4448}
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4450)
!4450 = !{!4451, !4452, !4453, !4454, !4455, !4456, !4457, !4461, !4465, !4466, !4467, !4468, !4469, !4477, !4478, !4479, !4480, !4481, !4482}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4449, file: !88, line: 97, baseType: !211, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4449, file: !88, line: 98, baseType: !4434, size: 64, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4449, file: !88, line: 100, baseType: !187, size: 64, offset: 128)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4449, file: !88, line: 101, baseType: !211, size: 64, offset: 192)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4449, file: !88, line: 103, baseType: !905, size: 8, offset: 256)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4449, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4449, file: !88, line: 106, baseType: !4458, size: 64, offset: 320)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4460)
!4460 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4449, file: !88, line: 107, baseType: !4462, size: 64, offset: 384)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4464)
!4464 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4449, file: !88, line: 109, baseType: !4408, size: 64, offset: 448)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4449, file: !88, line: 110, baseType: !4399, size: 64, offset: 512)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4449, file: !88, line: 111, baseType: !4408, size: 64, offset: 576)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4449, file: !88, line: 112, baseType: !4399, size: 64, offset: 640)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4449, file: !88, line: 113, baseType: !4470, size: 64, offset: 704)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!109, !4371, !4473}
!4473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4474)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4475)
!4475 = !{!4476}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4474, file: !101, line: 59, baseType: !109, size: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4449, file: !88, line: 114, baseType: !4408, size: 64, offset: 768)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4449, file: !88, line: 115, baseType: !344, size: 64, offset: 832)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4449, file: !88, line: 116, baseType: !344, size: 64, offset: 896)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4449, file: !88, line: 118, baseType: !4403, size: 64, offset: 960)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4449, file: !88, line: 119, baseType: !4399, size: 64, offset: 1024)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4449, file: !88, line: 121, baseType: !4483, size: 64, offset: 1088)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4436, file: !4437, line: 88, baseType: !4388, size: 64, offset: 384)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4436, file: !4437, line: 89, baseType: !4408, size: 64, offset: 448)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4436, file: !4437, line: 90, baseType: !4399, size: 64, offset: 512)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4436, file: !4437, line: 91, baseType: !4399, size: 64, offset: 576)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4436, file: !4437, line: 92, baseType: !4399, size: 64, offset: 640)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4436, file: !4437, line: 94, baseType: !4408, size: 64, offset: 704)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4436, file: !4437, line: 95, baseType: !4408, size: 64, offset: 768)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4436, file: !4437, line: 97, baseType: !4470, size: 64, offset: 832)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4436, file: !4437, line: 98, baseType: !4408, size: 64, offset: 896)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4436, file: !4437, line: 100, baseType: !4408, size: 64, offset: 960)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4436, file: !4437, line: 102, baseType: !4408, size: 64, offset: 1024)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4436, file: !4437, line: 103, baseType: !4399, size: 64, offset: 1088)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4436, file: !4437, line: 105, baseType: !4403, size: 64, offset: 1152)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4436, file: !4437, line: 107, baseType: !4499, size: 64, offset: 1216)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4501)
!4501 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4437, line: 107, flags: DIFlagFwdDecl)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4436, file: !4437, line: 109, baseType: !905, size: 8, offset: 1280)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4372, file: !94, line: 715, baseType: !4448, size: 64, offset: 832)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4372, file: !94, line: 717, baseType: !364, size: 64, offset: 896)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4372, file: !94, line: 719, baseType: !364, size: 64, offset: 960)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4372, file: !94, line: 721, baseType: !658, size: 256, offset: 1024)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4372, file: !94, line: 725, baseType: !4508, size: 448, offset: 1280)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4509)
!4509 = !{!4510, !4511, !4512, !4513}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4508, file: !94, line: 518, baseType: !192, size: 128)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4508, file: !94, line: 519, baseType: !192, size: 128, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4508, file: !94, line: 520, baseType: !192, size: 128, offset: 256)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4508, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4372, file: !94, line: 726, baseType: !4515, size: 2496, offset: 1728)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4516)
!4516 = !{!4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4599, !4603}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4515, file: !101, line: 664, baseType: !4473, size: 32)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4515, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4515, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4515, file: !101, line: 667, baseType: !905, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4515, file: !101, line: 668, baseType: !905, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4515, file: !101, line: 669, baseType: !905, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4515, file: !101, line: 670, baseType: !905, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4515, file: !101, line: 671, baseType: !905, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4515, file: !101, line: 672, baseType: !905, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4515, file: !101, line: 673, baseType: !905, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4515, file: !101, line: 674, baseType: !905, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4515, file: !101, line: 675, baseType: !442, size: 32, offset: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4515, file: !101, line: 676, baseType: !222, size: 32, offset: 96)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4515, file: !101, line: 678, baseType: !192, size: 128, offset: 128)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4515, file: !101, line: 679, baseType: !1532, size: 256, offset: 256)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4515, file: !101, line: 680, baseType: !4533, size: 64, offset: 512)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4535, line: 43, size: 1536, elements: !4536)
!4535 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4536 = !{!4537, !4538, !4539, !4540, !4541, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4534, file: !4535, line: 44, baseType: !211, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4534, file: !4535, line: 45, baseType: !109, size: 32, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4534, file: !4535, line: 46, baseType: !192, size: 128, offset: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4534, file: !4535, line: 47, baseType: !222, size: 32, offset: 256)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4534, file: !4535, line: 48, baseType: !4542, size: 64, offset: 320)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4534, file: !4535, line: 49, baseType: !2976, size: 320, offset: 384)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4534, file: !4535, line: 50, baseType: !342, size: 64, offset: 704)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4534, file: !4535, line: 51, baseType: !2146, size: 64, offset: 768)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4534, file: !4535, line: 52, baseType: !2146, size: 64, offset: 832)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4534, file: !4535, line: 53, baseType: !2146, size: 64, offset: 896)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4534, file: !4535, line: 54, baseType: !2146, size: 64, offset: 960)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4534, file: !4535, line: 55, baseType: !2146, size: 64, offset: 1024)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4534, file: !4535, line: 56, baseType: !342, size: 64, offset: 1088)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4534, file: !4535, line: 57, baseType: !342, size: 64, offset: 1152)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4534, file: !4535, line: 58, baseType: !342, size: 64, offset: 1216)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4534, file: !4535, line: 59, baseType: !342, size: 64, offset: 1280)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4534, file: !4535, line: 60, baseType: !342, size: 64, offset: 1344)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4534, file: !4535, line: 61, baseType: !4371, size: 64, offset: 1408)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4534, file: !4535, line: 62, baseType: !905, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4534, file: !4535, line: 63, baseType: !905, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4515, file: !101, line: 681, baseType: !905, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4515, file: !101, line: 682, baseType: !905, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4515, file: !101, line: 683, baseType: !905, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4515, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4515, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4515, file: !101, line: 690, baseType: !2138, size: 512, offset: 640)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4515, file: !101, line: 691, baseType: !446, size: 64, offset: 1152)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4515, file: !101, line: 692, baseType: !1340, size: 256, offset: 1216)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4515, file: !101, line: 693, baseType: !774, size: 192, offset: 1472)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4515, file: !101, line: 694, baseType: !4542, size: 64, offset: 1664)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4515, file: !101, line: 695, baseType: !242, size: 32, offset: 1728)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4515, file: !101, line: 696, baseType: !242, size: 32, offset: 1760)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4515, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4515, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4515, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4515, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4515, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4515, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4515, file: !101, line: 703, baseType: !905, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4515, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4515, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4515, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4515, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4515, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4515, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4515, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4515, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4515, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4515, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4515, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4515, file: !101, line: 715, baseType: !446, size: 64, offset: 2048)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4515, file: !101, line: 716, baseType: !446, size: 64, offset: 2112)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4515, file: !101, line: 717, baseType: !446, size: 64, offset: 2176)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4515, file: !101, line: 718, baseType: !446, size: 64, offset: 2240)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4515, file: !101, line: 720, baseType: !4594, size: 64, offset: 2304)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4596)
!4596 = !{!4597, !4598}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4595, file: !101, line: 633, baseType: !222, size: 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4595, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4515, file: !101, line: 721, baseType: !4600, size: 64, offset: 2368)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{null, !4371, !831}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4515, file: !101, line: 722, baseType: !4604, size: 64, offset: 2432)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !117, line: 117, size: 2432, elements: !4606)
!4606 = !{!4607, !4635, !4636, !4643, !4648, !4670, !4671}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !4605, file: !117, line: 118, baseType: !4608, size: 320)
!4608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !117, line: 52, size: 320, elements: !4609)
!4609 = !{!4610, !4614, !4615, !4616, !4617, !4618}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4608, file: !117, line: 53, baseType: !4611, size: 128)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !2307, line: 82, size: 128, elements: !4612)
!4612 = !{!4613}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4611, file: !2307, line: 83, baseType: !192, size: 128)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !4608, file: !117, line: 54, baseType: !831, size: 32, offset: 128)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !4608, file: !117, line: 55, baseType: !831, size: 32, offset: 160)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !4608, file: !117, line: 56, baseType: !831, size: 32, offset: 192)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4608, file: !117, line: 57, baseType: !116, size: 32, offset: 224)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !4608, file: !117, line: 58, baseType: !4619, size: 64, offset: 256)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4621, line: 65, size: 384, elements: !4622)
!4621 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4622 = !{!4623, !4624}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4620, file: !4621, line: 66, baseType: !846, size: 320)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4620, file: !4621, line: 67, baseType: !4625, size: 64, offset: 320)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4621, line: 54, size: 192, elements: !4627)
!4627 = !{!4628, !4633, !4634}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4626, file: !4621, line: 55, baseType: !4629, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4621, line: 51, baseType: !4630)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!109, !4625, !342, !364}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4626, file: !4621, line: 56, baseType: !4625, size: 64, offset: 64)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4626, file: !4621, line: 57, baseType: !109, size: 32, offset: 128)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !4605, file: !117, line: 119, baseType: !4608, size: 320, offset: 320)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4605, file: !117, line: 120, baseType: !4637, size: 1408, offset: 640)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !117, line: 85, size: 1408, elements: !4638)
!4638 = !{!4639, !4640, !4641, !4642}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !4637, file: !117, line: 86, baseType: !4608, size: 320)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !4637, file: !117, line: 87, baseType: !4620, size: 384, offset: 320)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !4637, file: !117, line: 88, baseType: !4608, size: 320, offset: 704)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !4637, file: !117, line: 89, baseType: !4620, size: 384, offset: 1024)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4605, file: !117, line: 121, baseType: !4644, size: 192, offset: 2048)
!4644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !117, line: 71, size: 192, elements: !4645)
!4645 = !{!4646, !4647}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4644, file: !117, line: 72, baseType: !192, size: 128)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !4644, file: !117, line: 73, baseType: !831, size: 32, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !4605, file: !117, line: 122, baseType: !4649, size: 64, offset: 2240)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !117, line: 107, size: 576, elements: !4651)
!4651 = !{!4652, !4653, !4669}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4650, file: !117, line: 108, baseType: !122, size: 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4650, file: !117, line: 113, baseType: !4654, size: 448, offset: 64)
!4654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4650, file: !117, line: 109, size: 448, elements: !4655)
!4655 = !{!4656, !4657, !4662}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4654, file: !117, line: 110, baseType: !2306, size: 320)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !4654, file: !117, line: 111, baseType: !4658, size: 192)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !117, line: 66, size: 192, elements: !4659)
!4659 = !{!4660, !4661}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4658, file: !117, line: 67, baseType: !192, size: 128)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4658, file: !117, line: 68, baseType: !831, size: 32, offset: 128)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4654, file: !117, line: 112, baseType: !4663, size: 448)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !117, line: 92, size: 448, elements: !4664)
!4664 = !{!4665, !4666, !4667}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4663, file: !117, line: 93, baseType: !129, size: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4663, file: !117, line: 94, baseType: !2306, size: 320, offset: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4663, file: !117, line: 95, baseType: !4668, size: 64, offset: 384)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4650, file: !117, line: 114, baseType: !4371, size: 64, offset: 512)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !4605, file: !117, line: 123, baseType: !4649, size: 64, offset: 2304)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !4605, file: !117, line: 124, baseType: !4649, size: 64, offset: 2368)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4372, file: !94, line: 727, baseType: !4673, size: 64, offset: 4224)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4675)
!4675 = !{!4676, !4677, !4678, !4682, !4683, !4684}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4674, file: !101, line: 743, baseType: !4405, size: 1472)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4674, file: !101, line: 744, baseType: !4408, size: 64, offset: 1472)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4674, file: !101, line: 745, baseType: !4679, size: 64, offset: 1536)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{null, !4371, !905}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4674, file: !101, line: 746, baseType: !4408, size: 64, offset: 1600)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4674, file: !101, line: 747, baseType: !4399, size: 64, offset: 1664)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4674, file: !101, line: 748, baseType: !4399, size: 64, offset: 1728)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4372, file: !94, line: 736, baseType: !4686, size: 128, offset: 4288)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4687)
!4687 = !{!4688, !4692}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4686, file: !94, line: 531, baseType: !4689, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4691, line: 13, flags: DIFlagFwdDecl)
!4691 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4686, file: !94, line: 532, baseType: !4693, size: 64, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4372, file: !94, line: 738, baseType: !4696, size: 64, offset: 4416)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4698)
!4698 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4372, file: !94, line: 740, baseType: !4700, size: 64, offset: 4480)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4372, file: !94, line: 741, baseType: !446, size: 64, offset: 4544)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4372, file: !94, line: 746, baseType: !446, size: 64, offset: 4608)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4372, file: !94, line: 747, baseType: !4704, size: 64, offset: 4672)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4706)
!4706 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4372, file: !94, line: 749, baseType: !4708, size: 64, offset: 4736)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4710)
!4710 = !{!4711, !4712, !4713}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4709, file: !94, line: 433, baseType: !7, size: 32)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4709, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4709, file: !94, line: 435, baseType: !342, size: 64, offset: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4372, file: !94, line: 751, baseType: !192, size: 128, offset: 4800)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4372, file: !94, line: 762, baseType: !4716, size: 64, offset: 4928)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4372, file: !94, line: 770, baseType: !4719, offset: 4992)
!4719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4720, line: 5, elements: !577)
!4720 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4372, file: !94, line: 772, baseType: !4722, size: 64, offset: 4992)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4724, line: 18, flags: DIFlagFwdDecl)
!4724 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4372, file: !94, line: 773, baseType: !4726, size: 64, offset: 5056)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4728, line: 41, size: 512, elements: !4729)
!4728 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4729 = !{!4730, !4731, !4825, !4826, !4827, !4828}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4727, file: !4728, line: 42, baseType: !4726, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4727, file: !4728, line: 43, baseType: !4732, size: 64, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4734)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4728, line: 125, size: 1408, elements: !4735)
!4735 = !{!4736, !4740, !4744, !4750, !4754, !4755, !4760, !4764, !4768, !4772, !4776, !4777, !4781, !4785, !4789, !4800, !4801, !4802, !4803, !4813, !4817, !4821}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4734, file: !4728, line: 126, baseType: !4737, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!4726, !4726}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4734, file: !4728, line: 127, baseType: !4741, size: 64, offset: 64)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{null, !4726}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4734, file: !4728, line: 128, baseType: !4745, size: 64, offset: 128)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!905, !4748}
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4727)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4734, file: !4728, line: 129, baseType: !4751, size: 64, offset: 192)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!1301, !4748, !4391}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4734, file: !4728, line: 131, baseType: !4745, size: 64, offset: 256)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4734, file: !4728, line: 133, baseType: !4756, size: 64, offset: 320)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!4759, !4748}
!4759 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4728, line: 132, flags: DIFlagFwdDecl)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4734, file: !4728, line: 134, baseType: !4761, size: 64, offset: 384)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!905, !4748, !211}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4734, file: !4728, line: 136, baseType: !4765, size: 64, offset: 448)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!109, !4748, !211, !7, !364, !339}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4734, file: !4728, line: 141, baseType: !4769, size: 64, offset: 512)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!109, !4748, !211, !4191, !339}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4734, file: !4728, line: 144, baseType: !4773, size: 64, offset: 576)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!211, !4748}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4734, file: !4728, line: 145, baseType: !4773, size: 64, offset: 640)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4734, file: !4728, line: 146, baseType: !4778, size: 64, offset: 704)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!4726, !4748}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4734, file: !4728, line: 148, baseType: !4782, size: 64, offset: 768)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!4726, !4748, !4726}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4734, file: !4728, line: 151, baseType: !4786, size: 64, offset: 832)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!4726, !4748, !211}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4734, file: !4728, line: 153, baseType: !4790, size: 64, offset: 896)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!109, !4748, !211, !211, !7, !7, !4793}
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4728, line: 94, size: 640, elements: !4795)
!4795 = !{!4796, !4797, !4798}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4794, file: !4728, line: 95, baseType: !4726, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4794, file: !4728, line: 96, baseType: !7, size: 32, offset: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4794, file: !4728, line: 97, baseType: !4799, size: 512, offset: 128)
!4799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 512, elements: !2181)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4734, file: !4728, line: 158, baseType: !4782, size: 64, offset: 960)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4734, file: !4728, line: 161, baseType: !4778, size: 64, offset: 1024)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4734, file: !4728, line: 163, baseType: !4737, size: 64, offset: 1088)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4734, file: !4728, line: 164, baseType: !4804, size: 64, offset: 1152)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!109, !4748, !4807}
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4728, line: 73, size: 128, elements: !4809)
!4809 = !{!4810, !4811, !4812}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4808, file: !4728, line: 74, baseType: !7, size: 32)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4808, file: !4728, line: 75, baseType: !7, size: 32, offset: 32)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4808, file: !4728, line: 76, baseType: !4748, size: 64, offset: 64)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4734, file: !4728, line: 166, baseType: !4814, size: 64, offset: 1216)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!364, !4726, !109}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4734, file: !4728, line: 167, baseType: !4818, size: 64, offset: 1280)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!109, !4748, !7}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4734, file: !4728, line: 168, baseType: !4822, size: 64, offset: 1344)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!109, !4726}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4727, file: !4728, line: 44, baseType: !4371, size: 64, offset: 128)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4727, file: !4728, line: 45, baseType: !192, size: 128, offset: 192)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4727, file: !4728, line: 46, baseType: !192, size: 128, offset: 320)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4727, file: !4728, line: 47, baseType: !250, size: 8, offset: 448)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4372, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4372, file: !94, line: 778, baseType: !529, size: 32, offset: 5152)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4372, file: !94, line: 779, baseType: !442, size: 32, offset: 5184)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4372, file: !94, line: 781, baseType: !222, size: 32, offset: 5216)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4372, file: !94, line: 782, baseType: !192, size: 128, offset: 5248)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4372, file: !94, line: 784, baseType: !4835, size: 64, offset: 5376)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4837)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4838, line: 52, size: 768, elements: !4839)
!4838 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4839 = !{!4840, !4841, !4842, !4843, !4844, !4848, !4852, !4853, !4854, !4855, !4859, !4863}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4837, file: !4838, line: 53, baseType: !211, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4837, file: !4838, line: 55, baseType: !344, size: 64, offset: 64)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4837, file: !4838, line: 56, baseType: !344, size: 64, offset: 128)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4837, file: !4838, line: 58, baseType: !4388, size: 64, offset: 192)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4837, file: !4838, line: 59, baseType: !4845, size: 64, offset: 256)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!292, !4391, !4397}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4837, file: !4838, line: 61, baseType: !4849, size: 64, offset: 320)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{null, !4835}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4837, file: !4838, line: 62, baseType: !4399, size: 64, offset: 384)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4837, file: !4838, line: 64, baseType: !4408, size: 64, offset: 448)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4837, file: !4838, line: 66, baseType: !3755, size: 64, offset: 512)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4837, file: !4838, line: 67, baseType: !4856, size: 64, offset: 576)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!1301, !4391}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4837, file: !4838, line: 69, baseType: !4860, size: 64, offset: 640)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{null, !4391, !3787, !3788}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4837, file: !4838, line: 71, baseType: !4403, size: 64, offset: 704)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4372, file: !94, line: 785, baseType: !344, size: 64, offset: 5440)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4372, file: !94, line: 787, baseType: !4399, size: 64, offset: 5504)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4372, file: !94, line: 788, baseType: !4867, size: 64, offset: 5568)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4372, file: !94, line: 789, baseType: !4870, size: 64, offset: 5632)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4372, file: !94, line: 791, baseType: !4873, size: 64, offset: 5696)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4875)
!4875 = !{!4876, !4877, !4878, !4879, !4880}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4874, file: !94, line: 598, baseType: !133, size: 32)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4874, file: !94, line: 599, baseType: !142, size: 32, offset: 32)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4874, file: !94, line: 600, baseType: !147, size: 32, offset: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4874, file: !94, line: 601, baseType: !905, size: 8, offset: 96)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4874, file: !94, line: 602, baseType: !905, size: 8, offset: 104)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4372, file: !94, line: 793, baseType: !152, size: 32, offset: 5760)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4372, file: !94, line: 795, baseType: !905, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4372, file: !94, line: 796, baseType: !905, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4372, file: !94, line: 797, baseType: !905, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4372, file: !94, line: 798, baseType: !905, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4372, file: !94, line: 799, baseType: !905, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !4346, file: !4347, line: 100, baseType: !7, size: 32, offset: 3520)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !4346, file: !4347, line: 101, baseType: !846, size: 320, offset: 3584)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !4346, file: !4347, line: 102, baseType: !736, size: 64, offset: 3904)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !4346, file: !4347, line: 103, baseType: !109, size: 32, offset: 3968)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !4346, file: !4347, line: 104, baseType: !339, size: 64, offset: 4032)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !4346, file: !4347, line: 105, baseType: !192, size: 128, offset: 4096)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !4346, file: !4347, line: 106, baseType: !192, size: 128, offset: 4224)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !4346, file: !4347, line: 108, baseType: !1113, size: 128, offset: 4352)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !4346, file: !4347, line: 109, baseType: !1113, size: 128, offset: 4480)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !4346, file: !4347, line: 110, baseType: !905, size: 8, offset: 4608)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !4346, file: !4347, line: 113, baseType: !4898, size: 64, offset: 4672)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !4900, line: 60, size: 1216, elements: !4901)
!4900 = !DIFile(filename: "./include/sound/info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "060f8a4a29808d9f7cc7b628d26ba172")
!4901 = !{!4902, !4903, !4904, !4905, !4906, !4965, !4966, !4967, !4968, !4972, !4975, !4976, !4977}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4899, file: !4900, line: 61, baseType: !211, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4899, file: !4900, line: 62, baseType: !334, size: 16, offset: 64)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4899, file: !4900, line: 63, baseType: !328, size: 64, offset: 128)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !4899, file: !4900, line: 64, baseType: !262, size: 16, offset: 192)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4899, file: !4900, line: 68, baseType: !4907, size: 128, offset: 256)
!4907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4899, file: !4900, line: 65, size: 128, elements: !4908)
!4908 = !{!4909, !4926}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !4907, file: !4900, line: 66, baseType: !4910, size: 128)
!4910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_text", file: !4900, line: 29, size: 128, elements: !4911)
!4911 = !{!4912, !4925}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4910, file: !4900, line: 30, baseType: !4913, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{null, !4898, !4916}
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_buffer", file: !4900, line: 15, size: 256, elements: !4918)
!4918 = !{!4919, !4920, !4921, !4922, !4923, !4924}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4917, file: !4900, line: 16, baseType: !292, size: 64)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !4917, file: !4900, line: 17, baseType: !7, size: 32, offset: 64)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4917, file: !4900, line: 18, baseType: !7, size: 32, offset: 96)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4917, file: !4900, line: 19, baseType: !7, size: 32, offset: 128)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4917, file: !4900, line: 20, baseType: !109, size: 32, offset: 160)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4917, file: !4900, line: 21, baseType: !109, size: 32, offset: 192)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4910, file: !4900, line: 32, baseType: !4913, size: 64, offset: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4907, file: !4900, line: 67, baseType: !4927, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4929)
!4929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_ops", file: !4900, line: 36, size: 512, elements: !4930)
!4930 = !{!4931, !4935, !4939, !4943, !4947, !4951, !4957, !4961}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4929, file: !4900, line: 37, baseType: !4932, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{!109, !4898, !262, !1686}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4929, file: !4900, line: 39, baseType: !4936, size: 64, offset: 64)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!109, !4898, !262, !364}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4929, file: !4900, line: 41, baseType: !4940, size: 64, offset: 128)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!324, !4898, !364, !1033, !292, !339, !534}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4929, file: !4900, line: 44, baseType: !4944, size: 64, offset: 192)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!324, !4898, !364, !1033, !211, !339, !534}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4929, file: !4900, line: 47, baseType: !4948, size: 64, offset: 256)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!534, !4898, !364, !1033, !534, !109}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4929, file: !4900, line: 50, baseType: !4952, size: 64, offset: 320)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!1151, !4898, !364, !1033, !4955}
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1155, line: 40, baseType: !1154)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4929, file: !4900, line: 53, baseType: !4958, size: 64, offset: 384)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!109, !4898, !364, !1033, !7, !342}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4929, file: !4900, line: 55, baseType: !4962, size: 64, offset: 448)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!109, !4898, !364, !373, !1033, !1173}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4899, file: !4900, line: 69, baseType: !4898, size: 64, offset: 384)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4899, file: !4900, line: 70, baseType: !187, size: 64, offset: 448)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4899, file: !4900, line: 71, baseType: !364, size: 64, offset: 512)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4899, file: !4900, line: 72, baseType: !4969, size: 64, offset: 576)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{null, !4898}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4899, file: !4900, line: 73, baseType: !4973, size: 64, offset: 640)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4347, line: 114, flags: DIFlagFwdDecl)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !4899, file: !4900, line: 74, baseType: !658, size: 256, offset: 704)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4899, file: !4900, line: 75, baseType: !192, size: 128, offset: 960)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4899, file: !4900, line: 76, baseType: !192, size: 128, offset: 1088)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !4346, file: !4347, line: 114, baseType: !4973, size: 64, offset: 4736)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !4346, file: !4347, line: 116, baseType: !192, size: 128, offset: 4800)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !4346, file: !4347, line: 117, baseType: !4981, size: 64, offset: 4928)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !4347, line: 117, flags: DIFlagFwdDecl)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !4346, file: !4347, line: 119, baseType: !222, size: 32, offset: 4992)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4346, file: !4347, line: 120, baseType: !109, size: 32, offset: 5024)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !4346, file: !4347, line: 121, baseType: !2416, size: 64, offset: 5056)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4346, file: !4347, line: 122, baseType: !4371, size: 64, offset: 5120)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !4346, file: !4347, line: 123, baseType: !4372, size: 5824, offset: 5184)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4346, file: !4347, line: 124, baseType: !4989, size: 256, offset: 11008)
!4989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 256, elements: !770)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4346, file: !4347, line: 125, baseType: !905, size: 8, offset: 11264)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4346, file: !4347, line: 126, baseType: !905, size: 8, offset: 11272)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !4346, file: !4347, line: 127, baseType: !905, size: 8, offset: 11280)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !4346, file: !4347, line: 128, baseType: !109, size: 32, offset: 11296)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !4346, file: !4347, line: 129, baseType: !774, size: 192, offset: 11328)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !4346, file: !4347, line: 131, baseType: !339, size: 64, offset: 11520)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !4346, file: !4347, line: 132, baseType: !658, size: 256, offset: 11584)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4346, file: !4347, line: 138, baseType: !7, size: 32, offset: 11840)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !4346, file: !4347, line: 139, baseType: !242, size: 32, offset: 11872)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !4346, file: !4347, line: 140, baseType: !774, size: 192, offset: 11904)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !4346, file: !4347, line: 141, baseType: !774, size: 192, offset: 12096)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4342, file: !4338, line: 516, baseType: !192, size: 128, offset: 64)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4342, file: !4338, line: 517, baseType: !109, size: 32, offset: 192)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !4342, file: !4338, line: 518, baseType: !7, size: 32, offset: 224)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "dev_class", scope: !4342, file: !4338, line: 519, baseType: !262, size: 16, offset: 256)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "dev_subclass", scope: !4342, file: !4338, line: 520, baseType: !262, size: 16, offset: 272)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4342, file: !4338, line: 521, baseType: !5007, size: 512, offset: 288)
!5007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 512, elements: !297)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4342, file: !4338, line: 522, baseType: !4354, size: 640, offset: 800)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4342, file: !4338, line: 523, baseType: !5010, size: 896, offset: 1472)
!5010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5011, size: 896, elements: !2540)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_str", file: !4338, line: 493, size: 448, elements: !5012)
!5012 = !{!5013, !5014, !5015, !5016, !5017, !5018, !5019, !5022}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !5011, file: !4338, line: 494, baseType: !109, size: 32)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "pcm", scope: !5011, file: !4338, line: 495, baseType: !4341, size: 64, offset: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "substream_count", scope: !5011, file: !4338, line: 497, baseType: !7, size: 32, offset: 128)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "substream_opened", scope: !5011, file: !4338, line: 498, baseType: !7, size: 32, offset: 160)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "substream", scope: !5011, file: !4338, line: 499, baseType: !4336, size: 64, offset: 192)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !5011, file: !4338, line: 505, baseType: !4898, size: 64, offset: 256)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "chmap_kctl", scope: !5011, file: !4338, line: 510, baseType: !5020, size: 64, offset: 320)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_kcontrol", file: !4338, line: 510, flags: DIFlagFwdDecl)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5011, file: !4338, line: 511, baseType: !4371, size: 64, offset: 384)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !4342, file: !4338, line: 524, baseType: !658, size: 256, offset: 2368)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !4342, file: !4338, line: 525, baseType: !774, size: 192, offset: 2624)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4342, file: !4338, line: 526, baseType: !364, size: 64, offset: 2816)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4342, file: !4338, line: 527, baseType: !5027, size: 64, offset: 2880)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{null, !4341}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !4342, file: !4338, line: 528, baseType: !905, size: 8, offset: 2944)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "nonatomic", scope: !4342, file: !4338, line: 529, baseType: !905, size: 8, offset: 2952)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "no_device_suspend", scope: !4342, file: !4338, line: 530, baseType: !905, size: 8, offset: 2960)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "pstr", scope: !4337, file: !4338, line: 449, baseType: !5034, size: 64, offset: 64)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4337, file: !4338, line: 450, baseType: !364, size: 64, offset: 128)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4337, file: !4338, line: 451, baseType: !109, size: 32, offset: 192)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4337, file: !4338, line: 452, baseType: !3251, size: 256, offset: 224)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !4337, file: !4338, line: 453, baseType: !109, size: 32, offset: 480)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "latency_pm_qos_req", scope: !4337, file: !4338, line: 454, baseType: !5040, size: 384, offset: 512)
!5040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_request", file: !117, line: 61, size: 384, elements: !5041)
!5041 = !{!5042, !5043}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5040, file: !117, line: 62, baseType: !2306, size: 320)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !5040, file: !117, line: 63, baseType: !5044, size: 64, offset: 320)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_bytes_max", scope: !4337, file: !4338, line: 455, baseType: !339, size: 64, offset: 896)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buffer", scope: !4337, file: !4338, line: 456, baseType: !5047, size: 448, offset: 960)
!5047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_buffer", file: !5048, line: 60, size: 448, elements: !5049)
!5048 = !DIFile(filename: "./include/sound/memalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5a311c7e83a04625a087234f49540c88")
!5049 = !{!5050, !5057, !5059, !5061, !5062}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5047, file: !5048, line: 61, baseType: !5051, size: 192)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_device", file: !5048, line: 22, size: 192, elements: !5052)
!5052 = !{!5053, !5054, !5055, !5056}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5051, file: !5048, line: 23, baseType: !109, size: 32)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5051, file: !5048, line: 24, baseType: !158, size: 32, offset: 32)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "need_sync", scope: !5051, file: !5048, line: 25, baseType: !905, size: 8, offset: 64)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5051, file: !5048, line: 26, baseType: !4371, size: 64, offset: 128)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !5047, file: !5048, line: 62, baseType: !5058, size: 64, offset: 192)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5047, file: !5048, line: 63, baseType: !5060, size: 64, offset: 256)
!5060 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !193, line: 149, baseType: !446)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !5047, file: !5048, line: 64, baseType: !339, size: 64, offset: 320)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !5047, file: !5048, line: 65, baseType: !364, size: 64, offset: 384)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "dma_max", scope: !4337, file: !4338, line: 457, baseType: !339, size: 64, offset: 1408)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4337, file: !4338, line: 459, baseType: !5065, size: 64, offset: 1472)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5067)
!5067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_ops", file: !4338, line: 54, size: 960, elements: !5068)
!5068 = !{!5069, !5073, !5074, !5078, !5116, !5117, !5118, !5122, !5123, !5127, !5144, !5148, !5152, !5156, !5160}
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5067, file: !4338, line: 55, baseType: !5070, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!109, !4336}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5067, file: !4338, line: 56, baseType: !5070, size: 64, offset: 64)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5067, file: !4338, line: 57, baseType: !5075, size: 64, offset: 128)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!109, !4336, !7, !364}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "hw_params", scope: !5067, file: !4338, line: 59, baseType: !5079, size: 64, offset: 192)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!109, !4336, !5082}
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_hw_params", file: !181, line: 405, size: 4864, elements: !5084)
!5084 = !{!5085, !5086, !5092, !5094, !5104, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5114}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5083, file: !181, line: 406, baseType: !7, size: 32)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "masks", scope: !5083, file: !181, line: 407, baseType: !5087, size: 768, offset: 32)
!5087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5088, size: 768, elements: !293)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_mask", file: !181, line: 401, size: 256, elements: !5089)
!5089 = !{!5090}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !5088, file: !181, line: 402, baseType: !5091, size: 256)
!5091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 256, elements: !2181)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "mres", scope: !5083, file: !181, line: 409, baseType: !5093, size: 1280, offset: 800)
!5093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5088, size: 1280, elements: !4316)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "intervals", scope: !5083, file: !181, line: 410, baseType: !5095, size: 1152, offset: 2080)
!5095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5096, size: 1152, elements: !3130)
!5096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_interval", file: !181, line: 391, size: 96, elements: !5097)
!5097 = !{!5098, !5099, !5100, !5101, !5102, !5103}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !5096, file: !181, line: 392, baseType: !7, size: 32)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5096, file: !181, line: 392, baseType: !7, size: 32, offset: 32)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "openmin", scope: !5096, file: !181, line: 393, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "openmax", scope: !5096, file: !181, line: 394, baseType: !7, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !5096, file: !181, line: 395, baseType: !7, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "empty", scope: !5096, file: !181, line: 396, baseType: !7, size: 1, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "ires", scope: !5083, file: !181, line: 412, baseType: !5105, size: 864, offset: 3232)
!5105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5096, size: 864, elements: !4306)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "rmask", scope: !5083, file: !181, line: 413, baseType: !7, size: 32, offset: 4096)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "cmask", scope: !5083, file: !181, line: 414, baseType: !7, size: 32, offset: 4128)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5083, file: !181, line: 415, baseType: !7, size: 32, offset: 4160)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "msbits", scope: !5083, file: !181, line: 416, baseType: !7, size: 32, offset: 4192)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "rate_num", scope: !5083, file: !181, line: 417, baseType: !7, size: 32, offset: 4224)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "rate_den", scope: !5083, file: !181, line: 418, baseType: !7, size: 32, offset: 4256)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_size", scope: !5083, file: !181, line: 419, baseType: !5113, size: 64, offset: 4288)
!5113 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_uframes_t", file: !181, line: 147, baseType: !342)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5083, file: !181, line: 420, baseType: !5115, size: 512, offset: 4352)
!5115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 512, elements: !297)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "hw_free", scope: !5067, file: !4338, line: 61, baseType: !5070, size: 64, offset: 256)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5067, file: !4338, line: 62, baseType: !5070, size: 64, offset: 320)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !5067, file: !4338, line: 63, baseType: !5119, size: 64, offset: 384)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!109, !4336, !109}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "sync_stop", scope: !5067, file: !4338, line: 64, baseType: !5070, size: 64, offset: 448)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5067, file: !4338, line: 65, baseType: !5124, size: 64, offset: 512)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!5113, !4336}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "get_time_info", scope: !5067, file: !4338, line: 66, baseType: !5128, size: 64, offset: 576)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!109, !4336, !5131, !5131, !5132, !5137}
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_audio_tstamp_config", file: !4338, line: 297, size: 32, elements: !5134)
!5134 = !{!5135, !5136}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "type_requested", scope: !5133, file: !4338, line: 299, baseType: !442, size: 4, flags: DIFlagBitField, extraData: i64 0)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "report_delay", scope: !5133, file: !4338, line: 300, baseType: !442, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_audio_tstamp_report", file: !4338, line: 314, size: 64, elements: !5139)
!5139 = !{!5140, !5141, !5142, !5143}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5138, file: !4338, line: 318, baseType: !442, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !5138, file: !4338, line: 321, baseType: !442, size: 4, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "accuracy_report", scope: !5138, file: !4338, line: 324, baseType: !442, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "accuracy", scope: !5138, file: !4338, line: 325, baseType: !442, size: 32, offset: 32)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "fill_silence", scope: !5067, file: !4338, line: 70, baseType: !5145, size: 64, offset: 640)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!109, !4336, !109, !342, !342}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !5067, file: !4338, line: 72, baseType: !5149, size: 64, offset: 704)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!109, !4336, !109, !342, !1068, !342}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5067, file: !4338, line: 74, baseType: !5153, size: 64, offset: 768)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!1447, !4336, !342}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5067, file: !4338, line: 76, baseType: !5157, size: 64, offset: 832)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!109, !4336, !1173}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !5067, file: !4338, line: 77, baseType: !5070, size: 64, offset: 896)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !4337, file: !4338, line: 461, baseType: !5162, size: 64, offset: 1536)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_runtime", file: !4338, line: 345, size: 6528, elements: !5164)
!5164 = !{!5165, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5179, !5180, !5182, !5184, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5217, !5235, !5245, !5246, !5247, !5248, !5251, !5252, !5253, !5254, !5255, !5259, !5275, !5296, !5297, !5298, !5299, !5300, !5301, !5303, !5304, !5305, !5306}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5163, file: !4338, line: 347, baseType: !5166, size: 32)
!5166 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_state_t", file: !181, line: 303, baseType: !109)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_state", scope: !5163, file: !4338, line: 348, baseType: !5166, size: 32, offset: 32)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_master", scope: !5163, file: !4338, line: 349, baseType: !4336, size: 64, offset: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_tstamp", scope: !5163, file: !4338, line: 350, baseType: !3426, size: 128, offset: 128)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_tstamp_latched", scope: !5163, file: !4338, line: 351, baseType: !905, size: 8, offset: 256)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "overrange", scope: !5163, file: !4338, line: 352, baseType: !109, size: 32, offset: 288)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "avail_max", scope: !5163, file: !4338, line: 353, baseType: !5113, size: 64, offset: 320)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ptr_base", scope: !5163, file: !4338, line: 354, baseType: !5113, size: 64, offset: 384)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ptr_interrupt", scope: !5163, file: !4338, line: 355, baseType: !5113, size: 64, offset: 448)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ptr_jiffies", scope: !5163, file: !4338, line: 356, baseType: !342, size: 64, offset: 512)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ptr_buffer_jiffies", scope: !5163, file: !4338, line: 357, baseType: !342, size: 64, offset: 576)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !5163, file: !4338, line: 358, baseType: !5178, size: 64, offset: 640)
!5178 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_sframes_t", file: !181, line: 148, baseType: !328)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ptr_wrap", scope: !5163, file: !4338, line: 359, baseType: !446, size: 64, offset: 704)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !5163, file: !4338, line: 362, baseType: !5181, size: 32, offset: 768)
!5181 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_access_t", file: !181, line: 172, baseType: !109)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5163, file: !4338, line: 363, baseType: !5183, size: 32, offset: 800)
!5183 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_format_t", file: !181, line: 180, baseType: !109)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "subformat", scope: !5163, file: !4338, line: 364, baseType: !5185, size: 32, offset: 832)
!5185 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_subformat_t", file: !181, line: 268, baseType: !109)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !5163, file: !4338, line: 365, baseType: !7, size: 32, offset: 864)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5163, file: !4338, line: 366, baseType: !7, size: 32, offset: 896)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "period_size", scope: !5163, file: !4338, line: 367, baseType: !5113, size: 64, offset: 960)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "periods", scope: !5163, file: !4338, line: 368, baseType: !7, size: 32, offset: 1024)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !5163, file: !4338, line: 369, baseType: !5113, size: 64, offset: 1088)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !5163, file: !4338, line: 370, baseType: !5113, size: 64, offset: 1152)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "byte_align", scope: !5163, file: !4338, line: 371, baseType: !339, size: 64, offset: 1216)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "frame_bits", scope: !5163, file: !4338, line: 372, baseType: !7, size: 32, offset: 1280)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "sample_bits", scope: !5163, file: !4338, line: 373, baseType: !7, size: 32, offset: 1312)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5163, file: !4338, line: 374, baseType: !7, size: 32, offset: 1344)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "rate_num", scope: !5163, file: !4338, line: 375, baseType: !7, size: 32, offset: 1376)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "rate_den", scope: !5163, file: !4338, line: 376, baseType: !7, size: 32, offset: 1408)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "no_period_wakeup", scope: !5163, file: !4338, line: 377, baseType: !7, size: 1, offset: 1440, flags: DIFlagBitField, extraData: i64 1440)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp_mode", scope: !5163, file: !4338, line: 380, baseType: !109, size: 32, offset: 1472)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "period_step", scope: !5163, file: !4338, line: 381, baseType: !7, size: 32, offset: 1504)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "start_threshold", scope: !5163, file: !4338, line: 382, baseType: !5113, size: 64, offset: 1536)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "stop_threshold", scope: !5163, file: !4338, line: 383, baseType: !5113, size: 64, offset: 1600)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "silence_threshold", scope: !5163, file: !4338, line: 384, baseType: !5113, size: 64, offset: 1664)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "silence_size", scope: !5163, file: !4338, line: 385, baseType: !5113, size: 64, offset: 1728)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "boundary", scope: !5163, file: !4338, line: 386, baseType: !5113, size: 64, offset: 1792)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "silence_start", scope: !5163, file: !4338, line: 389, baseType: !5113, size: 64, offset: 1856)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "silence_filled", scope: !5163, file: !4338, line: 390, baseType: !5113, size: 64, offset: 1920)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5163, file: !4338, line: 392, baseType: !5209, size: 128, offset: 1984)
!5209 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_pcm_sync_id", file: !181, line: 330, size: 128, elements: !5210)
!5210 = !{!5211, !5213, !5215}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5209, file: !181, line: 331, baseType: !5212, size: 128)
!5212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 128, elements: !2459)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "id16", scope: !5209, file: !181, line: 332, baseType: !5214, size: 128)
!5214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 128, elements: !2181)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "id32", scope: !5209, file: !181, line: 333, baseType: !5216, size: 128)
!5216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !770)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5163, file: !4338, line: 395, baseType: !5218, size: 64, offset: 2112)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_mmap_status", file: !181, line: 567, size: 448, elements: !5220)
!5220 = !{!5221, !5222, !5223, !5228, !5229, !5231, !5232, !5233, !5234}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5219, file: !181, line: 568, baseType: !5166, size: 32)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !5219, file: !181, line: 569, baseType: !443, size: 32, offset: 32)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5219, file: !181, line: 570, baseType: !5224, offset: 64)
!5224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pad_before_uframe", file: !181, line: 563, baseType: !5225)
!5225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, elements: !5226)
!5226 = !{!5227}
!5227 = !DISubrange(count: 0)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ptr", scope: !5219, file: !181, line: 571, baseType: !5113, size: 64, offset: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5219, file: !181, line: 572, baseType: !5230, offset: 128)
!5230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pad_after_uframe", file: !181, line: 564, baseType: !5225)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !5219, file: !181, line: 573, baseType: !2368, size: 128, offset: 128)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_state", scope: !5219, file: !181, line: 574, baseType: !5166, size: 32, offset: 256)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "pad3", scope: !5219, file: !181, line: 575, baseType: !443, size: 32, offset: 288)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "audio_tstamp", scope: !5219, file: !181, line: 576, baseType: !2368, size: 128, offset: 320)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !5163, file: !4338, line: 396, baseType: !5236, size: 64, offset: 2176)
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5237, size: 64)
!5237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_mmap_control", file: !181, line: 579, size: 128, elements: !5238)
!5238 = !{!5239, !5240, !5241, !5242, !5243, !5244}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5237, file: !181, line: 580, baseType: !5224)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "appl_ptr", scope: !5237, file: !181, line: 581, baseType: !5113, size: 64)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5237, file: !181, line: 582, baseType: !5224, offset: 64)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5237, file: !181, line: 585, baseType: !5224, offset: 64)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "avail_min", scope: !5237, file: !181, line: 586, baseType: !5113, size: 64, offset: 64)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5237, file: !181, line: 587, baseType: !5230, offset: 128)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "twake", scope: !5163, file: !4338, line: 399, baseType: !5113, size: 64, offset: 2240)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !5163, file: !4338, line: 400, baseType: !774, size: 192, offset: 2304)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "tsleep", scope: !5163, file: !4338, line: 401, baseType: !774, size: 192, offset: 2496)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !5163, file: !4338, line: 402, baseType: !5249, size: 64, offset: 2688)
!5249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5250, size: 64)
!5250 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_fasync", file: !4347, line: 511, flags: DIFlagFwdDecl)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "stop_operating", scope: !5163, file: !4338, line: 403, baseType: !905, size: 8, offset: 2752)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_mutex", scope: !5163, file: !4338, line: 404, baseType: !658, size: 256, offset: 2816)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_accessing", scope: !5163, file: !4338, line: 405, baseType: !242, size: 32, offset: 3072)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !5163, file: !4338, line: 408, baseType: !364, size: 64, offset: 3136)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !5163, file: !4338, line: 409, baseType: !5256, size: 64, offset: 3200)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{null, !5162}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !5163, file: !4338, line: 412, baseType: !5260, size: 640, offset: 3264)
!5260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_hardware", file: !4338, line: 32, size: 640, elements: !5261)
!5261 = !{!5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5260, file: !4338, line: 33, baseType: !7, size: 32)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "formats", scope: !5260, file: !4338, line: 34, baseType: !446, size: 64, offset: 64)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "rates", scope: !5260, file: !4338, line: 35, baseType: !7, size: 32, offset: 128)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "rate_min", scope: !5260, file: !4338, line: 36, baseType: !7, size: 32, offset: 160)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "rate_max", scope: !5260, file: !4338, line: 37, baseType: !7, size: 32, offset: 192)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "channels_min", scope: !5260, file: !4338, line: 38, baseType: !7, size: 32, offset: 224)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "channels_max", scope: !5260, file: !4338, line: 39, baseType: !7, size: 32, offset: 256)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_bytes_max", scope: !5260, file: !4338, line: 40, baseType: !339, size: 64, offset: 320)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "period_bytes_min", scope: !5260, file: !4338, line: 41, baseType: !339, size: 64, offset: 384)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "period_bytes_max", scope: !5260, file: !4338, line: 42, baseType: !339, size: 64, offset: 448)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "periods_min", scope: !5260, file: !4338, line: 43, baseType: !7, size: 32, offset: 512)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "periods_max", scope: !5260, file: !4338, line: 44, baseType: !7, size: 32, offset: 544)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_size", scope: !5260, file: !4338, line: 45, baseType: !339, size: 64, offset: 576)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "hw_constraints", scope: !5163, file: !4338, line: 413, baseType: !5276, size: 2048, offset: 3904)
!5276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_hw_constraints", file: !4338, line: 239, size: 2048, elements: !5277)
!5277 = !{!5278, !5279, !5280, !5281, !5282}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "masks", scope: !5276, file: !4338, line: 240, baseType: !5087, size: 768)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "intervals", scope: !5276, file: !4338, line: 242, baseType: !5095, size: 1152, offset: 768)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "rules_num", scope: !5276, file: !4338, line: 244, baseType: !7, size: 32, offset: 1920)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "rules_all", scope: !5276, file: !4338, line: 245, baseType: !7, size: 32, offset: 1952)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "rules", scope: !5276, file: !4338, line: 246, baseType: !5283, size: 64, offset: 1984)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_hw_rule", file: !4338, line: 230, size: 384, elements: !5285)
!5285 = !{!5286, !5287, !5288, !5290, !5295}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !5284, file: !4338, line: 231, baseType: !7, size: 32)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !5284, file: !4338, line: 232, baseType: !109, size: 32, offset: 32)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !5284, file: !4338, line: 233, baseType: !5289, size: 160, offset: 64)
!5289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 160, elements: !4316)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5284, file: !4338, line: 235, baseType: !5291, size: 64, offset: 256)
!5291 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_hw_rule_func_t", file: !4338, line: 227, baseType: !5292)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5293, size: 64)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!109, !5082, !5283}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5284, file: !4338, line: 236, baseType: !364, size: 64, offset: 320)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "timer_resolution", scope: !5163, file: !4338, line: 416, baseType: !7, size: 32, offset: 5952)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp_type", scope: !5163, file: !4338, line: 417, baseType: !109, size: 32, offset: 5984)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "dma_area", scope: !5163, file: !4338, line: 420, baseType: !5058, size: 64, offset: 6016)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !5163, file: !4338, line: 421, baseType: !5060, size: 64, offset: 6080)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "dma_bytes", scope: !5163, file: !4338, line: 422, baseType: !339, size: 64, offset: 6144)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buffer_p", scope: !5163, file: !4338, line: 424, baseType: !5302, size: 64, offset: 6208)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_changed", scope: !5163, file: !4338, line: 425, baseType: !7, size: 1, offset: 6272, flags: DIFlagBitField, extraData: i64 6272)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "audio_tstamp_config", scope: !5163, file: !4338, line: 428, baseType: !5133, size: 32, offset: 6304)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "audio_tstamp_report", scope: !5163, file: !4338, line: 429, baseType: !5138, size: 64, offset: 6336)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "driver_tstamp", scope: !5163, file: !4338, line: 430, baseType: !3426, size: 128, offset: 6400)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4337, file: !4338, line: 463, baseType: !5308, size: 64, offset: 1600)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_timer", file: !4338, line: 463, flags: DIFlagFwdDecl)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "timer_running", scope: !4337, file: !4338, line: 464, baseType: !7, size: 1, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "wait_time", scope: !4337, file: !4338, line: 465, baseType: !328, size: 64, offset: 1728)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4337, file: !4338, line: 467, baseType: !4336, size: 64, offset: 1792)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "link_list", scope: !4337, file: !4338, line: 469, baseType: !192, size: 128, offset: 1856)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "self_group", scope: !4337, file: !4338, line: 470, baseType: !5315, size: 512, offset: 1984)
!5315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_group", file: !4338, line: 438, size: 512, elements: !5316)
!5316 = !{!5317, !5318, !5319, !5320}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5315, file: !4338, line: 439, baseType: !222, size: 32)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5315, file: !4338, line: 440, baseType: !658, size: 256, offset: 64)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "substreams", scope: !5315, file: !4338, line: 441, baseType: !192, size: 128, offset: 320)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !5315, file: !4338, line: 442, baseType: !761, size: 32, offset: 448)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !4337, file: !4338, line: 471, baseType: !5322, size: 64, offset: 2496)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5315, size: 64)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !4337, file: !4338, line: 473, baseType: !109, size: 32, offset: 2560)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !4337, file: !4338, line: 474, baseType: !242, size: 32, offset: 2592)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !4337, file: !4338, line: 475, baseType: !7, size: 32, offset: 2624)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "pcm_release", scope: !4337, file: !4338, line: 476, baseType: !5327, size: 64, offset: 2688)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4337, file: !4338, line: 477, baseType: !757, size: 64, offset: 2752)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !4337, file: !4338, line: 483, baseType: !4898, size: 64, offset: 2816)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "hw_opened", scope: !4337, file: !4338, line: 486, baseType: !7, size: 1, offset: 2880, flags: DIFlagBitField, extraData: i64 2880)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "managed_buffer_alloc", scope: !4337, file: !4338, line: 487, baseType: !7, size: 1, offset: 2881, flags: DIFlagBitField, extraData: i64 2880)
!5332 = !{!5333}
!5333 = !DILocalVariable(name: "substream", arg: 1, scope: !4333, file: !3, line: 134, type: !4336)
!5334 = !DILocation(line: 134, column: 61, scope: !4333)
!5335 = !DILocation(line: 136, column: 16, scope: !4333)
!5336 = !DILocation(line: 136, column: 27, scope: !4333)
!5337 = !DILocation(line: 136, column: 32, scope: !4333)
!5338 = !DILocation(line: 136, column: 39, scope: !4333)
!5339 = !DILocation(line: 136, column: 50, scope: !4333)
!5340 = !DILocation(line: 136, column: 2, scope: !4333)
!5341 = !DILocation(line: 137, column: 1, scope: !4333)
!5342 = distinct !DISubprogram(name: "do_free_pages", scope: !3, file: !3, line: 88, type: !5343, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5345)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{null, !4345, !5302}
!5345 = !{!5346, !5347}
!5346 = !DILocalVariable(name: "card", arg: 1, scope: !5342, file: !3, line: 88, type: !4345)
!5347 = !DILocalVariable(name: "dmab", arg: 2, scope: !5342, file: !3, line: 88, type: !5302)
!5348 = !DILocation(line: 88, column: 44, scope: !5342)
!5349 = !DILocation(line: 88, column: 73, scope: !5342)
!5350 = !DILocation(line: 90, column: 7, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 90, column: 6)
!5352 = !DILocation(line: 90, column: 13, scope: !5351)
!5353 = !DILocation(line: 90, column: 6, scope: !5342)
!5354 = !DILocation(line: 91, column: 3, scope: !5351)
!5355 = !DILocation(line: 92, column: 26, scope: !5342)
!5356 = !DILocation(line: 92, column: 32, scope: !5342)
!5357 = !DILocation(line: 92, column: 38, scope: !5342)
!5358 = !DILocation(line: 92, column: 2, scope: !5342)
!5359 = !DILocation(line: 93, column: 21, scope: !5342)
!5360 = !DILocation(line: 93, column: 2, scope: !5342)
!5361 = !DILocation(line: 94, column: 2, scope: !5342)
!5362 = !DILocation(line: 94, column: 8, scope: !5342)
!5363 = !DILocation(line: 94, column: 13, scope: !5342)
!5364 = !DILocation(line: 95, column: 1, scope: !5342)
!5365 = distinct !DISubprogram(name: "snd_pcm_lib_preallocate_free_for_all", scope: !3, file: !3, line: 145, type: !5028, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5366)
!5366 = !{!5367, !5368, !5369}
!5367 = !DILocalVariable(name: "pcm", arg: 1, scope: !5365, file: !3, line: 145, type: !4341)
!5368 = !DILocalVariable(name: "substream", scope: !5365, file: !3, line: 147, type: !4336)
!5369 = !DILocalVariable(name: "stream", scope: !5365, file: !3, line: 148, type: !109)
!5370 = !DILocation(line: 145, column: 59, scope: !5365)
!5371 = !DILocation(line: 147, column: 2, scope: !5365)
!5372 = !DILocation(line: 147, column: 28, scope: !5365)
!5373 = !DILocation(line: 148, column: 2, scope: !5365)
!5374 = !DILocation(line: 148, column: 6, scope: !5365)
!5375 = !DILocation(line: 150, column: 2, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 150, column: 2)
!5377 = !DILocation(line: 150, column: 2, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 150, column: 2)
!5379 = !DILocation(line: 150, column: 2, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 150, column: 2)
!5381 = !DILocation(line: 150, column: 2, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 150, column: 2)
!5383 = !DILocation(line: 151, column: 32, scope: !5382)
!5384 = !DILocation(line: 151, column: 3, scope: !5382)
!5385 = distinct !{!5385, !5379, !5386, !5387, !5388}
!5386 = !DILocation(line: 151, column: 41, scope: !5380)
!5387 = !{!"llvm.loop.mustprogress"}
!5388 = !{!"llvm.loop.unroll.disable"}
!5389 = distinct !{!5389, !5375, !5390, !5387, !5388}
!5390 = !DILocation(line: 151, column: 41, scope: !5376)
!5391 = !DILocation(line: 152, column: 1, scope: !5365)
!5392 = distinct !DISubprogram(name: "snd_pcm_lib_preallocate_pages", scope: !3, file: !3, line: 326, type: !5393, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5395)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{null, !4336, !109, !4371, !339, !339}
!5395 = !{!5396, !5397, !5398, !5399, !5400}
!5396 = !DILocalVariable(name: "substream", arg: 1, scope: !5392, file: !3, line: 326, type: !4336)
!5397 = !DILocalVariable(name: "type", arg: 2, scope: !5392, file: !3, line: 327, type: !109)
!5398 = !DILocalVariable(name: "data", arg: 3, scope: !5392, file: !3, line: 327, type: !4371)
!5399 = !DILocalVariable(name: "size", arg: 4, scope: !5392, file: !3, line: 328, type: !339)
!5400 = !DILocalVariable(name: "max", arg: 5, scope: !5392, file: !3, line: 328, type: !339)
!5401 = !DILocation(line: 326, column: 62, scope: !5392)
!5402 = !DILocation(line: 327, column: 11, scope: !5392)
!5403 = !DILocation(line: 327, column: 32, scope: !5392)
!5404 = !DILocation(line: 328, column: 14, scope: !5392)
!5405 = !DILocation(line: 328, column: 27, scope: !5392)
!5406 = !DILocation(line: 330, column: 20, scope: !5392)
!5407 = !DILocation(line: 330, column: 31, scope: !5392)
!5408 = !DILocation(line: 330, column: 37, scope: !5392)
!5409 = !DILocation(line: 330, column: 43, scope: !5392)
!5410 = !DILocation(line: 330, column: 49, scope: !5392)
!5411 = !DILocation(line: 330, column: 2, scope: !5392)
!5412 = !DILocation(line: 331, column: 1, scope: !5392)
!5413 = distinct !DISubprogram(name: "preallocate_pages", scope: !3, file: !3, line: 265, type: !5414, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5416)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!109, !4336, !109, !4371, !339, !339, !905}
!5416 = !{!5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424}
!5417 = !DILocalVariable(name: "substream", arg: 1, scope: !5413, file: !3, line: 265, type: !4336)
!5418 = !DILocalVariable(name: "type", arg: 2, scope: !5413, file: !3, line: 266, type: !109)
!5419 = !DILocalVariable(name: "data", arg: 3, scope: !5413, file: !3, line: 266, type: !4371)
!5420 = !DILocalVariable(name: "size", arg: 4, scope: !5413, file: !3, line: 267, type: !339)
!5421 = !DILocalVariable(name: "max", arg: 5, scope: !5413, file: !3, line: 267, type: !339)
!5422 = !DILocalVariable(name: "managed", arg: 6, scope: !5413, file: !3, line: 267, type: !905)
!5423 = !DILocalVariable(name: "err", scope: !5413, file: !3, line: 269, type: !109)
!5424 = !DILocalVariable(name: "__ret_warn_on", scope: !5425, file: !3, line: 271, type: !109)
!5425 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 271, column: 6)
!5426 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 271, column: 6)
!5427 = !DILocation(line: 265, column: 56, scope: !5413)
!5428 = !DILocation(line: 266, column: 14, scope: !5413)
!5429 = !DILocation(line: 266, column: 35, scope: !5413)
!5430 = !DILocation(line: 267, column: 17, scope: !5413)
!5431 = !DILocation(line: 267, column: 30, scope: !5413)
!5432 = !DILocation(line: 267, column: 40, scope: !5413)
!5433 = !DILocation(line: 269, column: 2, scope: !5413)
!5434 = !DILocation(line: 269, column: 6, scope: !5413)
!5435 = !DILocation(line: 271, column: 6, scope: !5425)
!5436 = !DILocation(line: 271, column: 6, scope: !5426)
!5437 = !DILocation(line: 271, column: 6, scope: !5413)
!5438 = !DILocation(line: 272, column: 3, scope: !5426)
!5439 = !DILocation(line: 274, column: 35, scope: !5413)
!5440 = !DILocation(line: 274, column: 2, scope: !5413)
!5441 = !DILocation(line: 274, column: 13, scope: !5413)
!5442 = !DILocation(line: 274, column: 24, scope: !5413)
!5443 = !DILocation(line: 274, column: 28, scope: !5413)
!5444 = !DILocation(line: 274, column: 33, scope: !5413)
!5445 = !DILocation(line: 275, column: 34, scope: !5413)
!5446 = !DILocation(line: 275, column: 2, scope: !5413)
!5447 = !DILocation(line: 275, column: 13, scope: !5413)
!5448 = !DILocation(line: 275, column: 24, scope: !5413)
!5449 = !DILocation(line: 275, column: 28, scope: !5413)
!5450 = !DILocation(line: 275, column: 32, scope: !5413)
!5451 = !DILocation(line: 277, column: 6, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 277, column: 6)
!5453 = !DILocation(line: 277, column: 11, scope: !5452)
!5454 = !DILocation(line: 277, column: 6, scope: !5413)
!5455 = !DILocation(line: 278, column: 8, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 278, column: 7)
!5457 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 277, column: 16)
!5458 = !DILocation(line: 278, column: 7, scope: !5457)
!5459 = !DILocation(line: 280, column: 32, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 278, column: 13)
!5461 = !DILocation(line: 280, column: 43, scope: !5460)
!5462 = !DILocation(line: 280, column: 10, scope: !5460)
!5463 = !DILocation(line: 280, column: 8, scope: !5460)
!5464 = !DILocation(line: 281, column: 8, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 281, column: 8)
!5466 = !DILocation(line: 281, column: 12, scope: !5465)
!5467 = !DILocation(line: 281, column: 8, scope: !5460)
!5468 = !DILocation(line: 282, column: 12, scope: !5465)
!5469 = !DILocation(line: 282, column: 5, scope: !5465)
!5470 = !DILocation(line: 283, column: 3, scope: !5460)
!5471 = !DILocation(line: 283, column: 14, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 283, column: 14)
!5473 = !DILocation(line: 283, column: 30, scope: !5472)
!5474 = !DILocation(line: 284, column: 7, scope: !5472)
!5475 = !DILocation(line: 284, column: 18, scope: !5472)
!5476 = !DILocation(line: 284, column: 27, scope: !5472)
!5477 = !DILocation(line: 284, column: 25, scope: !5472)
!5478 = !DILocation(line: 283, column: 14, scope: !5456)
!5479 = !DILocation(line: 285, column: 32, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 284, column: 47)
!5481 = !DILocation(line: 285, column: 43, scope: !5480)
!5482 = !DILocation(line: 285, column: 10, scope: !5480)
!5483 = !DILocation(line: 285, column: 8, scope: !5480)
!5484 = !DILocation(line: 286, column: 8, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 286, column: 8)
!5486 = !DILocation(line: 286, column: 12, scope: !5485)
!5487 = !DILocation(line: 286, column: 16, scope: !5485)
!5488 = !DILocation(line: 286, column: 19, scope: !5485)
!5489 = !DILocation(line: 286, column: 23, scope: !5485)
!5490 = !DILocation(line: 286, column: 8, scope: !5480)
!5491 = !DILocation(line: 287, column: 12, scope: !5485)
!5492 = !DILocation(line: 287, column: 5, scope: !5485)
!5493 = !DILocation(line: 288, column: 3, scope: !5480)
!5494 = !DILocation(line: 289, column: 2, scope: !5457)
!5495 = !DILocation(line: 291, column: 6, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 291, column: 6)
!5497 = !DILocation(line: 291, column: 17, scope: !5496)
!5498 = !DILocation(line: 291, column: 28, scope: !5496)
!5499 = !DILocation(line: 291, column: 34, scope: !5496)
!5500 = !DILocation(line: 291, column: 6, scope: !5413)
!5501 = !DILocation(line: 292, column: 33, scope: !5496)
!5502 = !DILocation(line: 292, column: 44, scope: !5496)
!5503 = !DILocation(line: 292, column: 55, scope: !5496)
!5504 = !DILocation(line: 292, column: 3, scope: !5496)
!5505 = !DILocation(line: 292, column: 14, scope: !5496)
!5506 = !DILocation(line: 292, column: 31, scope: !5496)
!5507 = !DILocation(line: 293, column: 23, scope: !5413)
!5508 = !DILocation(line: 293, column: 2, scope: !5413)
!5509 = !DILocation(line: 293, column: 13, scope: !5413)
!5510 = !DILocation(line: 293, column: 21, scope: !5413)
!5511 = !DILocation(line: 294, column: 6, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 294, column: 6)
!5513 = !DILocation(line: 294, column: 10, scope: !5512)
!5514 = !DILocation(line: 294, column: 6, scope: !5413)
!5515 = !DILocation(line: 295, column: 25, scope: !5512)
!5516 = !DILocation(line: 295, column: 3, scope: !5512)
!5517 = !DILocation(line: 296, column: 6, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 296, column: 6)
!5519 = !{i8 0, i8 2}
!5520 = !DILocation(line: 296, column: 6, scope: !5413)
!5521 = !DILocation(line: 297, column: 3, scope: !5518)
!5522 = !DILocation(line: 297, column: 14, scope: !5518)
!5523 = !DILocation(line: 297, column: 35, scope: !5518)
!5524 = !DILocation(line: 298, column: 2, scope: !5413)
!5525 = !DILocation(line: 299, column: 1, scope: !5413)
!5526 = distinct !DISubprogram(name: "snd_pcm_lib_preallocate_pages_for_all", scope: !3, file: !3, line: 345, type: !5527, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5529)
!5527 = !DISubroutineType(types: !5528)
!5528 = !{null, !4341, !109, !364, !339, !339}
!5529 = !{!5530, !5531, !5532, !5533, !5534}
!5530 = !DILocalVariable(name: "pcm", arg: 1, scope: !5526, file: !3, line: 345, type: !4341)
!5531 = !DILocalVariable(name: "type", arg: 2, scope: !5526, file: !3, line: 346, type: !109)
!5532 = !DILocalVariable(name: "data", arg: 3, scope: !5526, file: !3, line: 346, type: !364)
!5533 = !DILocalVariable(name: "size", arg: 4, scope: !5526, file: !3, line: 347, type: !339)
!5534 = !DILocalVariable(name: "max", arg: 5, scope: !5526, file: !3, line: 347, type: !339)
!5535 = !DILocation(line: 345, column: 60, scope: !5526)
!5536 = !DILocation(line: 346, column: 12, scope: !5526)
!5537 = !DILocation(line: 346, column: 24, scope: !5526)
!5538 = !DILocation(line: 347, column: 15, scope: !5526)
!5539 = !DILocation(line: 347, column: 28, scope: !5526)
!5540 = !DILocation(line: 349, column: 28, scope: !5526)
!5541 = !DILocation(line: 349, column: 33, scope: !5526)
!5542 = !DILocation(line: 349, column: 39, scope: !5526)
!5543 = !DILocation(line: 349, column: 45, scope: !5526)
!5544 = !DILocation(line: 349, column: 51, scope: !5526)
!5545 = !DILocation(line: 349, column: 2, scope: !5526)
!5546 = !DILocation(line: 350, column: 1, scope: !5526)
!5547 = distinct !DISubprogram(name: "preallocate_pages_for_all", scope: !3, file: !3, line: 301, type: !5548, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5550)
!5548 = !DISubroutineType(types: !5549)
!5549 = !{!109, !4341, !109, !364, !339, !339, !905}
!5550 = !{!5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559}
!5551 = !DILocalVariable(name: "pcm", arg: 1, scope: !5547, file: !3, line: 301, type: !4341)
!5552 = !DILocalVariable(name: "type", arg: 2, scope: !5547, file: !3, line: 301, type: !109)
!5553 = !DILocalVariable(name: "data", arg: 3, scope: !5547, file: !3, line: 302, type: !364)
!5554 = !DILocalVariable(name: "size", arg: 4, scope: !5547, file: !3, line: 302, type: !339)
!5555 = !DILocalVariable(name: "max", arg: 5, scope: !5547, file: !3, line: 302, type: !339)
!5556 = !DILocalVariable(name: "managed", arg: 6, scope: !5547, file: !3, line: 303, type: !905)
!5557 = !DILocalVariable(name: "substream", scope: !5547, file: !3, line: 305, type: !4336)
!5558 = !DILocalVariable(name: "stream", scope: !5547, file: !3, line: 306, type: !109)
!5559 = !DILocalVariable(name: "err", scope: !5547, file: !3, line: 306, type: !109)
!5560 = !DILocation(line: 301, column: 54, scope: !5547)
!5561 = !DILocation(line: 301, column: 63, scope: !5547)
!5562 = !DILocation(line: 302, column: 17, scope: !5547)
!5563 = !DILocation(line: 302, column: 30, scope: !5547)
!5564 = !DILocation(line: 302, column: 43, scope: !5547)
!5565 = !DILocation(line: 303, column: 16, scope: !5547)
!5566 = !DILocation(line: 305, column: 2, scope: !5547)
!5567 = !DILocation(line: 305, column: 28, scope: !5547)
!5568 = !DILocation(line: 306, column: 2, scope: !5547)
!5569 = !DILocation(line: 306, column: 6, scope: !5547)
!5570 = !DILocation(line: 306, column: 14, scope: !5547)
!5571 = !DILocation(line: 308, column: 2, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 308, column: 2)
!5573 = !DILocation(line: 308, column: 2, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 308, column: 2)
!5575 = !DILocation(line: 308, column: 2, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 308, column: 2)
!5577 = !DILocation(line: 308, column: 2, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 308, column: 2)
!5579 = !DILocation(line: 309, column: 27, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 308, column: 49)
!5581 = !DILocation(line: 309, column: 38, scope: !5580)
!5582 = !DILocation(line: 309, column: 44, scope: !5580)
!5583 = !DILocation(line: 309, column: 50, scope: !5580)
!5584 = !DILocation(line: 309, column: 56, scope: !5580)
!5585 = !DILocation(line: 309, column: 61, scope: !5580)
!5586 = !DILocation(line: 309, column: 9, scope: !5580)
!5587 = !DILocation(line: 309, column: 7, scope: !5580)
!5588 = !DILocation(line: 310, column: 7, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 310, column: 7)
!5590 = !DILocation(line: 310, column: 11, scope: !5589)
!5591 = !DILocation(line: 310, column: 7, scope: !5580)
!5592 = !DILocation(line: 311, column: 11, scope: !5589)
!5593 = !DILocation(line: 311, column: 4, scope: !5589)
!5594 = !DILocation(line: 312, column: 2, scope: !5580)
!5595 = distinct !{!5595, !5575, !5596, !5387, !5388}
!5596 = !DILocation(line: 312, column: 2, scope: !5576)
!5597 = distinct !{!5597, !5571, !5598, !5387, !5388}
!5598 = !DILocation(line: 312, column: 2, scope: !5572)
!5599 = !DILocation(line: 313, column: 2, scope: !5547)
!5600 = !DILocation(line: 314, column: 1, scope: !5547)
!5601 = distinct !DISubprogram(name: "snd_pcm_set_managed_buffer", scope: !3, file: !3, line: 384, type: !5602, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5604)
!5602 = !DISubroutineType(types: !5603)
!5603 = !{!109, !4336, !109, !4371, !339, !339}
!5604 = !{!5605, !5606, !5607, !5608, !5609}
!5605 = !DILocalVariable(name: "substream", arg: 1, scope: !5601, file: !3, line: 384, type: !4336)
!5606 = !DILocalVariable(name: "type", arg: 2, scope: !5601, file: !3, line: 384, type: !109)
!5607 = !DILocalVariable(name: "data", arg: 3, scope: !5601, file: !3, line: 385, type: !4371)
!5608 = !DILocalVariable(name: "size", arg: 4, scope: !5601, file: !3, line: 385, type: !339)
!5609 = !DILocalVariable(name: "max", arg: 5, scope: !5601, file: !3, line: 385, type: !339)
!5610 = !DILocation(line: 384, column: 58, scope: !5601)
!5611 = !DILocation(line: 384, column: 73, scope: !5601)
!5612 = !DILocation(line: 385, column: 20, scope: !5601)
!5613 = !DILocation(line: 385, column: 33, scope: !5601)
!5614 = !DILocation(line: 385, column: 46, scope: !5601)
!5615 = !DILocation(line: 387, column: 27, scope: !5601)
!5616 = !DILocation(line: 387, column: 38, scope: !5601)
!5617 = !DILocation(line: 387, column: 44, scope: !5601)
!5618 = !DILocation(line: 387, column: 50, scope: !5601)
!5619 = !DILocation(line: 387, column: 56, scope: !5601)
!5620 = !DILocation(line: 387, column: 9, scope: !5601)
!5621 = !DILocation(line: 387, column: 2, scope: !5601)
!5622 = distinct !DISubprogram(name: "snd_pcm_set_managed_buffer_all", scope: !3, file: !3, line: 405, type: !5623, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5625)
!5623 = !DISubroutineType(types: !5624)
!5624 = !{!109, !4341, !109, !4371, !339, !339}
!5625 = !{!5626, !5627, !5628, !5629, !5630}
!5626 = !DILocalVariable(name: "pcm", arg: 1, scope: !5622, file: !3, line: 405, type: !4341)
!5627 = !DILocalVariable(name: "type", arg: 2, scope: !5622, file: !3, line: 405, type: !109)
!5628 = !DILocalVariable(name: "data", arg: 3, scope: !5622, file: !3, line: 406, type: !4371)
!5629 = !DILocalVariable(name: "size", arg: 4, scope: !5622, file: !3, line: 407, type: !339)
!5630 = !DILocalVariable(name: "max", arg: 5, scope: !5622, file: !3, line: 407, type: !339)
!5631 = !DILocation(line: 405, column: 52, scope: !5622)
!5632 = !DILocation(line: 405, column: 61, scope: !5622)
!5633 = !DILocation(line: 406, column: 23, scope: !5622)
!5634 = !DILocation(line: 407, column: 15, scope: !5622)
!5635 = !DILocation(line: 407, column: 28, scope: !5622)
!5636 = !DILocation(line: 409, column: 35, scope: !5622)
!5637 = !DILocation(line: 409, column: 40, scope: !5622)
!5638 = !DILocation(line: 409, column: 46, scope: !5622)
!5639 = !DILocation(line: 409, column: 52, scope: !5622)
!5640 = !DILocation(line: 409, column: 58, scope: !5622)
!5641 = !DILocation(line: 409, column: 9, scope: !5622)
!5642 = !DILocation(line: 409, column: 2, scope: !5622)
!5643 = distinct !DISubprogram(name: "snd_pcm_lib_malloc_pages", scope: !3, file: !3, line: 424, type: !5644, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5646)
!5644 = !DISubroutineType(types: !5645)
!5645 = !{!109, !4336, !339}
!5646 = !{!5647, !5648, !5649, !5650, !5651, !5652, !5655}
!5647 = !DILocalVariable(name: "substream", arg: 1, scope: !5643, file: !3, line: 424, type: !4336)
!5648 = !DILocalVariable(name: "size", arg: 2, scope: !5643, file: !3, line: 424, type: !339)
!5649 = !DILocalVariable(name: "card", scope: !5643, file: !3, line: 426, type: !4345)
!5650 = !DILocalVariable(name: "runtime", scope: !5643, file: !3, line: 427, type: !5162)
!5651 = !DILocalVariable(name: "dmab", scope: !5643, file: !3, line: 428, type: !5302)
!5652 = !DILocalVariable(name: "__ret_warn_on", scope: !5653, file: !3, line: 430, type: !109)
!5653 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 430, column: 6)
!5654 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 430, column: 6)
!5655 = !DILocalVariable(name: "__ret_warn_on", scope: !5656, file: !3, line: 432, type: !109)
!5656 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 432, column: 6)
!5657 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 432, column: 6)
!5658 = !DILocation(line: 424, column: 56, scope: !5643)
!5659 = !DILocation(line: 424, column: 74, scope: !5643)
!5660 = !DILocation(line: 426, column: 2, scope: !5643)
!5661 = !DILocation(line: 426, column: 19, scope: !5643)
!5662 = !DILocation(line: 427, column: 2, scope: !5643)
!5663 = !DILocation(line: 427, column: 26, scope: !5643)
!5664 = !DILocation(line: 428, column: 2, scope: !5643)
!5665 = !DILocation(line: 428, column: 25, scope: !5643)
!5666 = !DILocation(line: 430, column: 6, scope: !5653)
!5667 = !DILocation(line: 430, column: 6, scope: !5654)
!5668 = !DILocation(line: 430, column: 6, scope: !5643)
!5669 = !DILocation(line: 431, column: 3, scope: !5654)
!5670 = !DILocation(line: 432, column: 6, scope: !5656)
!5671 = !DILocation(line: 432, column: 6, scope: !5657)
!5672 = !DILocation(line: 432, column: 6, scope: !5643)
!5673 = !DILocation(line: 434, column: 3, scope: !5657)
!5674 = !DILocation(line: 435, column: 12, scope: !5643)
!5675 = !DILocation(line: 435, column: 23, scope: !5643)
!5676 = !DILocation(line: 435, column: 10, scope: !5643)
!5677 = !DILocation(line: 436, column: 9, scope: !5643)
!5678 = !DILocation(line: 436, column: 20, scope: !5643)
!5679 = !DILocation(line: 436, column: 25, scope: !5643)
!5680 = !DILocation(line: 436, column: 7, scope: !5643)
!5681 = !DILocation(line: 438, column: 6, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 438, column: 6)
!5683 = !DILocation(line: 438, column: 15, scope: !5682)
!5684 = !DILocation(line: 438, column: 6, scope: !5643)
!5685 = !DILocation(line: 442, column: 7, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 442, column: 7)
!5687 = distinct !DILexicalBlock(scope: !5682, file: !3, line: 438, column: 29)
!5688 = !DILocation(line: 442, column: 16, scope: !5686)
!5689 = !DILocation(line: 442, column: 30, scope: !5686)
!5690 = !DILocation(line: 442, column: 39, scope: !5686)
!5691 = !DILocation(line: 442, column: 36, scope: !5686)
!5692 = !DILocation(line: 442, column: 7, scope: !5687)
!5693 = !DILocation(line: 443, column: 25, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 442, column: 45)
!5695 = !DILocation(line: 443, column: 4, scope: !5694)
!5696 = !DILocation(line: 443, column: 13, scope: !5694)
!5697 = !DILocation(line: 443, column: 23, scope: !5694)
!5698 = !DILocation(line: 444, column: 4, scope: !5694)
!5699 = !DILocation(line: 446, column: 26, scope: !5687)
!5700 = !DILocation(line: 446, column: 3, scope: !5687)
!5701 = !DILocation(line: 447, column: 2, scope: !5687)
!5702 = !DILocation(line: 448, column: 6, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 448, column: 6)
!5704 = !DILocation(line: 448, column: 17, scope: !5703)
!5705 = !DILocation(line: 448, column: 28, scope: !5703)
!5706 = !DILocation(line: 448, column: 33, scope: !5703)
!5707 = !DILocation(line: 448, column: 41, scope: !5703)
!5708 = !DILocation(line: 449, column: 6, scope: !5703)
!5709 = !DILocation(line: 449, column: 17, scope: !5703)
!5710 = !DILocation(line: 449, column: 28, scope: !5703)
!5711 = !DILocation(line: 449, column: 37, scope: !5703)
!5712 = !DILocation(line: 449, column: 34, scope: !5703)
!5713 = !DILocation(line: 448, column: 6, scope: !5643)
!5714 = !DILocation(line: 450, column: 11, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 449, column: 43)
!5716 = !DILocation(line: 450, column: 22, scope: !5715)
!5717 = !DILocation(line: 450, column: 8, scope: !5715)
!5718 = !DILocation(line: 451, column: 2, scope: !5715)
!5719 = !DILocation(line: 453, column: 7, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 453, column: 7)
!5721 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 451, column: 9)
!5722 = !DILocation(line: 453, column: 18, scope: !5720)
!5723 = !DILocation(line: 453, column: 29, scope: !5720)
!5724 = !DILocation(line: 453, column: 34, scope: !5720)
!5725 = !DILocation(line: 453, column: 38, scope: !5720)
!5726 = !DILocation(line: 453, column: 49, scope: !5720)
!5727 = !DILocation(line: 453, column: 7, scope: !5721)
!5728 = !DILocation(line: 454, column: 4, scope: !5720)
!5729 = !DILocation(line: 455, column: 10, scope: !5721)
!5730 = !DILocation(line: 455, column: 8, scope: !5721)
!5731 = !DILocation(line: 456, column: 9, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 456, column: 7)
!5733 = !DILocation(line: 456, column: 7, scope: !5721)
!5734 = !DILocation(line: 457, column: 4, scope: !5732)
!5735 = !DILocation(line: 458, column: 3, scope: !5721)
!5736 = !DILocation(line: 458, column: 9, scope: !5721)
!5737 = !DILocation(line: 458, column: 15, scope: !5721)
!5738 = !DILocation(line: 458, column: 26, scope: !5721)
!5739 = !DILocation(line: 458, column: 37, scope: !5721)
!5740 = !DILocation(line: 459, column: 22, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 459, column: 7)
!5742 = !DILocation(line: 460, column: 8, scope: !5741)
!5743 = !DILocation(line: 460, column: 19, scope: !5741)
!5744 = !DILocation(line: 460, column: 30, scope: !5741)
!5745 = !DILocation(line: 460, column: 34, scope: !5741)
!5746 = !DILocation(line: 461, column: 8, scope: !5741)
!5747 = !DILocation(line: 461, column: 19, scope: !5741)
!5748 = !DILocation(line: 461, column: 30, scope: !5741)
!5749 = !DILocation(line: 461, column: 34, scope: !5741)
!5750 = !DILocation(line: 462, column: 8, scope: !5741)
!5751 = !DILocation(line: 462, column: 19, scope: !5741)
!5752 = !DILocation(line: 463, column: 8, scope: !5741)
!5753 = !DILocation(line: 463, column: 14, scope: !5741)
!5754 = !DILocation(line: 459, column: 7, scope: !5741)
!5755 = !DILocation(line: 463, column: 20, scope: !5741)
!5756 = !DILocation(line: 459, column: 7, scope: !5721)
!5757 = !DILocation(line: 464, column: 10, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 463, column: 25)
!5759 = !DILocation(line: 464, column: 4, scope: !5758)
!5760 = !DILocation(line: 465, column: 4, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5762, file: !3, line: 465, column: 4)
!5762 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 465, column: 4)
!5763 = !DILocation(line: 465, column: 4, scope: !5762)
!5764 = !DILocation(line: 469, column: 4, scope: !5758)
!5765 = !DILocation(line: 472, column: 29, scope: !5643)
!5766 = !DILocation(line: 472, column: 40, scope: !5643)
!5767 = !DILocation(line: 472, column: 2, scope: !5643)
!5768 = !DILocation(line: 473, column: 23, scope: !5643)
!5769 = !DILocation(line: 473, column: 2, scope: !5643)
!5770 = !DILocation(line: 473, column: 11, scope: !5643)
!5771 = !DILocation(line: 473, column: 21, scope: !5643)
!5772 = !DILocation(line: 474, column: 2, scope: !5643)
!5773 = !DILocation(line: 475, column: 1, scope: !5643)
!5774 = distinct !DISubprogram(name: "snd_pcm_lib_free_pages", scope: !3, file: !3, line: 486, type: !5071, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5775)
!5775 = !{!5776, !5777, !5778, !5781}
!5776 = !DILocalVariable(name: "substream", arg: 1, scope: !5774, file: !3, line: 486, type: !4336)
!5777 = !DILocalVariable(name: "runtime", scope: !5774, file: !3, line: 488, type: !5162)
!5778 = !DILocalVariable(name: "__ret_warn_on", scope: !5779, file: !3, line: 490, type: !109)
!5779 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 490, column: 6)
!5780 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 490, column: 6)
!5781 = !DILocalVariable(name: "card", scope: !5782, file: !3, line: 496, type: !4345)
!5782 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 495, column: 55)
!5783 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 495, column: 6)
!5784 = !DILocation(line: 486, column: 54, scope: !5774)
!5785 = !DILocation(line: 488, column: 2, scope: !5774)
!5786 = !DILocation(line: 488, column: 26, scope: !5774)
!5787 = !DILocation(line: 490, column: 6, scope: !5779)
!5788 = !DILocation(line: 490, column: 6, scope: !5780)
!5789 = !DILocation(line: 490, column: 6, scope: !5774)
!5790 = !DILocation(line: 491, column: 3, scope: !5780)
!5791 = !DILocation(line: 492, column: 12, scope: !5774)
!5792 = !DILocation(line: 492, column: 23, scope: !5774)
!5793 = !DILocation(line: 492, column: 10, scope: !5774)
!5794 = !DILocation(line: 493, column: 6, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 493, column: 6)
!5796 = !DILocation(line: 493, column: 15, scope: !5795)
!5797 = !DILocation(line: 493, column: 24, scope: !5795)
!5798 = !DILocation(line: 493, column: 6, scope: !5774)
!5799 = !DILocation(line: 494, column: 3, scope: !5795)
!5800 = !DILocation(line: 495, column: 6, scope: !5783)
!5801 = !DILocation(line: 495, column: 15, scope: !5783)
!5802 = !DILocation(line: 495, column: 32, scope: !5783)
!5803 = !DILocation(line: 495, column: 43, scope: !5783)
!5804 = !DILocation(line: 495, column: 28, scope: !5783)
!5805 = !DILocation(line: 495, column: 6, scope: !5774)
!5806 = !DILocation(line: 496, column: 3, scope: !5782)
!5807 = !DILocation(line: 496, column: 20, scope: !5782)
!5808 = !DILocation(line: 496, column: 27, scope: !5782)
!5809 = !DILocation(line: 496, column: 38, scope: !5782)
!5810 = !DILocation(line: 496, column: 43, scope: !5782)
!5811 = !DILocation(line: 499, column: 17, scope: !5782)
!5812 = !DILocation(line: 499, column: 23, scope: !5782)
!5813 = !DILocation(line: 499, column: 32, scope: !5782)
!5814 = !DILocation(line: 499, column: 3, scope: !5782)
!5815 = !DILocation(line: 500, column: 9, scope: !5782)
!5816 = !DILocation(line: 500, column: 18, scope: !5782)
!5817 = !DILocation(line: 500, column: 3, scope: !5782)
!5818 = !DILocation(line: 501, column: 2, scope: !5783)
!5819 = !DILocation(line: 501, column: 2, scope: !5782)
!5820 = !DILocation(line: 502, column: 29, scope: !5774)
!5821 = !DILocation(line: 502, column: 2, scope: !5774)
!5822 = !DILocation(line: 503, column: 2, scope: !5774)
!5823 = !DILocation(line: 504, column: 1, scope: !5774)
!5824 = distinct !DISubprogram(name: "kzalloc", scope: !171, file: !171, line: 719, type: !5825, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5827)
!5825 = !DISubroutineType(types: !5826)
!5826 = !{!364, !339, !1118}
!5827 = !{!5828, !5829}
!5828 = !DILocalVariable(name: "size", arg: 1, scope: !5824, file: !171, line: 719, type: !339)
!5829 = !DILocalVariable(name: "flags", arg: 2, scope: !5824, file: !171, line: 719, type: !1118)
!5830 = !DILocation(line: 719, column: 52, scope: !5824)
!5831 = !DILocation(line: 719, column: 64, scope: !5824)
!5832 = !DILocation(line: 721, column: 17, scope: !5824)
!5833 = !DILocation(line: 721, column: 23, scope: !5824)
!5834 = !DILocation(line: 721, column: 29, scope: !5824)
!5835 = !DILocation(line: 721, column: 9, scope: !5824)
!5836 = !DILocation(line: 721, column: 2, scope: !5824)
!5837 = distinct !DISubprogram(name: "do_alloc_pages", scope: !3, file: !3, line: 54, type: !5838, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5840)
!5838 = !DISubroutineType(types: !5839)
!5839 = !{!109, !4345, !109, !4371, !109, !339, !5302}
!5840 = !{!5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848}
!5841 = !DILocalVariable(name: "card", arg: 1, scope: !5837, file: !3, line: 54, type: !4345)
!5842 = !DILocalVariable(name: "type", arg: 2, scope: !5837, file: !3, line: 54, type: !109)
!5843 = !DILocalVariable(name: "dev", arg: 3, scope: !5837, file: !3, line: 54, type: !4371)
!5844 = !DILocalVariable(name: "str", arg: 4, scope: !5837, file: !3, line: 55, type: !109)
!5845 = !DILocalVariable(name: "size", arg: 5, scope: !5837, file: !3, line: 55, type: !339)
!5846 = !DILocalVariable(name: "dmab", arg: 6, scope: !5837, file: !3, line: 55, type: !5302)
!5847 = !DILocalVariable(name: "dir", scope: !5837, file: !3, line: 57, type: !158)
!5848 = !DILocalVariable(name: "err", scope: !5837, file: !3, line: 58, type: !109)
!5849 = !DILocation(line: 54, column: 44, scope: !5837)
!5850 = !DILocation(line: 54, column: 54, scope: !5837)
!5851 = !DILocation(line: 54, column: 75, scope: !5837)
!5852 = !DILocation(line: 55, column: 10, scope: !5837)
!5853 = !DILocation(line: 55, column: 22, scope: !5837)
!5854 = !DILocation(line: 55, column: 51, scope: !5837)
!5855 = !DILocation(line: 57, column: 2, scope: !5837)
!5856 = !DILocation(line: 57, column: 26, scope: !5837)
!5857 = !DILocation(line: 58, column: 2, scope: !5837)
!5858 = !DILocation(line: 58, column: 6, scope: !5837)
!5859 = !DILocation(line: 61, column: 14, scope: !5837)
!5860 = !DILocation(line: 61, column: 20, scope: !5837)
!5861 = !DILocation(line: 61, column: 2, scope: !5837)
!5862 = !DILocation(line: 62, column: 6, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 62, column: 6)
!5864 = !DILocation(line: 62, column: 25, scope: !5863)
!5865 = !DILocation(line: 63, column: 6, scope: !5863)
!5866 = !DILocation(line: 63, column: 12, scope: !5863)
!5867 = !DILocation(line: 63, column: 36, scope: !5863)
!5868 = !DILocation(line: 63, column: 34, scope: !5863)
!5869 = !DILocation(line: 63, column: 43, scope: !5863)
!5870 = !DILocation(line: 63, column: 41, scope: !5863)
!5871 = !DILocation(line: 62, column: 6, scope: !5837)
!5872 = !DILocation(line: 64, column: 17, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 63, column: 63)
!5874 = !DILocation(line: 64, column: 23, scope: !5873)
!5875 = !DILocation(line: 64, column: 3, scope: !5873)
!5876 = !DILocation(line: 65, column: 3, scope: !5873)
!5877 = !DILocation(line: 67, column: 26, scope: !5837)
!5878 = !DILocation(line: 67, column: 32, scope: !5837)
!5879 = !DILocation(line: 67, column: 2, scope: !5837)
!5880 = !DILocation(line: 68, column: 16, scope: !5837)
!5881 = !DILocation(line: 68, column: 22, scope: !5837)
!5882 = !DILocation(line: 68, column: 2, scope: !5837)
!5883 = !DILocation(line: 70, column: 6, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 70, column: 6)
!5885 = !DILocation(line: 70, column: 10, scope: !5884)
!5886 = !DILocation(line: 70, column: 6, scope: !5837)
!5887 = !DILocation(line: 71, column: 7, scope: !5884)
!5888 = !DILocation(line: 71, column: 3, scope: !5884)
!5889 = !DILocation(line: 73, column: 7, scope: !5884)
!5890 = !DILocation(line: 74, column: 32, scope: !5837)
!5891 = !DILocation(line: 74, column: 38, scope: !5837)
!5892 = !DILocation(line: 74, column: 43, scope: !5837)
!5893 = !DILocation(line: 74, column: 48, scope: !5837)
!5894 = !DILocation(line: 74, column: 54, scope: !5837)
!5895 = !DILocation(line: 74, column: 8, scope: !5837)
!5896 = !DILocation(line: 74, column: 6, scope: !5837)
!5897 = !DILocation(line: 75, column: 7, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 75, column: 6)
!5899 = !DILocation(line: 75, column: 6, scope: !5837)
!5900 = !DILocation(line: 79, column: 7, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 79, column: 7)
!5902 = distinct !DILexicalBlock(scope: !5898, file: !3, line: 75, column: 12)
!5903 = !DILocation(line: 79, column: 13, scope: !5901)
!5904 = !DILocation(line: 79, column: 22, scope: !5901)
!5905 = !DILocation(line: 79, column: 19, scope: !5901)
!5906 = !DILocation(line: 79, column: 7, scope: !5902)
!5907 = !DILocation(line: 80, column: 26, scope: !5901)
!5908 = !DILocation(line: 80, column: 32, scope: !5901)
!5909 = !DILocation(line: 80, column: 38, scope: !5901)
!5910 = !DILocation(line: 80, column: 46, scope: !5901)
!5911 = !DILocation(line: 80, column: 44, scope: !5901)
!5912 = !DILocation(line: 80, column: 4, scope: !5901)
!5913 = !DILocation(line: 81, column: 2, scope: !5902)
!5914 = !DILocation(line: 83, column: 27, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5898, file: !3, line: 81, column: 9)
!5916 = !DILocation(line: 83, column: 33, scope: !5915)
!5917 = !DILocation(line: 83, column: 3, scope: !5915)
!5918 = !DILocation(line: 85, column: 9, scope: !5837)
!5919 = !DILocation(line: 85, column: 2, scope: !5837)
!5920 = !DILocation(line: 86, column: 1, scope: !5837)
!5921 = !DISubprogram(name: "kfree", scope: !171, file: !171, line: 227, type: !5922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5922 = !DISubroutineType(types: !5923)
!5923 = !{null, !1301}
!5924 = distinct !DISubprogram(name: "snd_pcm_set_runtime_buffer", scope: !4338, file: !4338, line: 1222, type: !5925, scopeLine: 1224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5927)
!5925 = !DISubroutineType(types: !5926)
!5926 = !{null, !4336, !5302}
!5927 = !{!5928, !5929, !5930}
!5928 = !DILocalVariable(name: "substream", arg: 1, scope: !5924, file: !4338, line: 1222, type: !4336)
!5929 = !DILocalVariable(name: "bufp", arg: 2, scope: !5924, file: !4338, line: 1223, type: !5302)
!5930 = !DILocalVariable(name: "runtime", scope: !5924, file: !4338, line: 1225, type: !5162)
!5931 = !DILocation(line: 1222, column: 73, scope: !5924)
!5932 = !DILocation(line: 1223, column: 35, scope: !5924)
!5933 = !DILocation(line: 1225, column: 2, scope: !5924)
!5934 = !DILocation(line: 1225, column: 26, scope: !5924)
!5935 = !DILocation(line: 1225, column: 36, scope: !5924)
!5936 = !DILocation(line: 1225, column: 47, scope: !5924)
!5937 = !DILocation(line: 1226, column: 6, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5924, file: !4338, line: 1226, column: 6)
!5939 = !DILocation(line: 1226, column: 6, scope: !5924)
!5940 = !DILocation(line: 1227, column: 27, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5938, file: !4338, line: 1226, column: 12)
!5942 = !DILocation(line: 1227, column: 3, scope: !5941)
!5943 = !DILocation(line: 1227, column: 12, scope: !5941)
!5944 = !DILocation(line: 1227, column: 25, scope: !5941)
!5945 = !DILocation(line: 1228, column: 23, scope: !5941)
!5946 = !DILocation(line: 1228, column: 29, scope: !5941)
!5947 = !DILocation(line: 1228, column: 3, scope: !5941)
!5948 = !DILocation(line: 1228, column: 12, scope: !5941)
!5949 = !DILocation(line: 1228, column: 21, scope: !5941)
!5950 = !DILocation(line: 1229, column: 23, scope: !5941)
!5951 = !DILocation(line: 1229, column: 29, scope: !5941)
!5952 = !DILocation(line: 1229, column: 3, scope: !5941)
!5953 = !DILocation(line: 1229, column: 12, scope: !5941)
!5954 = !DILocation(line: 1229, column: 21, scope: !5941)
!5955 = !DILocation(line: 1230, column: 24, scope: !5941)
!5956 = !DILocation(line: 1230, column: 30, scope: !5941)
!5957 = !DILocation(line: 1230, column: 3, scope: !5941)
!5958 = !DILocation(line: 1230, column: 12, scope: !5941)
!5959 = !DILocation(line: 1230, column: 22, scope: !5941)
!5960 = !DILocation(line: 1231, column: 2, scope: !5941)
!5961 = !DILocation(line: 1232, column: 3, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5938, file: !4338, line: 1231, column: 9)
!5963 = !DILocation(line: 1232, column: 12, scope: !5962)
!5964 = !DILocation(line: 1232, column: 25, scope: !5962)
!5965 = !DILocation(line: 1233, column: 3, scope: !5962)
!5966 = !DILocation(line: 1233, column: 12, scope: !5962)
!5967 = !DILocation(line: 1233, column: 21, scope: !5962)
!5968 = !DILocation(line: 1234, column: 3, scope: !5962)
!5969 = !DILocation(line: 1234, column: 12, scope: !5962)
!5970 = !DILocation(line: 1234, column: 21, scope: !5962)
!5971 = !DILocation(line: 1235, column: 3, scope: !5962)
!5972 = !DILocation(line: 1235, column: 12, scope: !5962)
!5973 = !DILocation(line: 1235, column: 22, scope: !5962)
!5974 = !DILocation(line: 1237, column: 1, scope: !5924)
!5975 = distinct !DISubprogram(name: "_snd_pcm_lib_alloc_vmalloc_buffer", scope: !3, file: !3, line: 507, type: !5976, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5978)
!5976 = !DISubroutineType(types: !5977)
!5977 = !{!109, !4336, !339, !1118}
!5978 = !{!5979, !5980, !5981, !5982, !5983}
!5979 = !DILocalVariable(name: "substream", arg: 1, scope: !5975, file: !3, line: 507, type: !4336)
!5980 = !DILocalVariable(name: "size", arg: 2, scope: !5975, file: !3, line: 508, type: !339)
!5981 = !DILocalVariable(name: "gfp_flags", arg: 3, scope: !5975, file: !3, line: 508, type: !1118)
!5982 = !DILocalVariable(name: "runtime", scope: !5975, file: !3, line: 510, type: !5162)
!5983 = !DILocalVariable(name: "__ret_warn_on", scope: !5984, file: !3, line: 512, type: !109)
!5984 = distinct !DILexicalBlock(scope: !5985, file: !3, line: 512, column: 6)
!5985 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 512, column: 6)
!5986 = !DILocation(line: 507, column: 65, scope: !5975)
!5987 = !DILocation(line: 508, column: 18, scope: !5975)
!5988 = !DILocation(line: 508, column: 30, scope: !5975)
!5989 = !DILocation(line: 510, column: 2, scope: !5975)
!5990 = !DILocation(line: 510, column: 26, scope: !5975)
!5991 = !DILocation(line: 512, column: 6, scope: !5984)
!5992 = !DILocation(line: 512, column: 6, scope: !5985)
!5993 = !DILocation(line: 512, column: 6, scope: !5975)
!5994 = !DILocation(line: 513, column: 3, scope: !5985)
!5995 = !DILocation(line: 514, column: 12, scope: !5975)
!5996 = !DILocation(line: 514, column: 23, scope: !5975)
!5997 = !DILocation(line: 514, column: 10, scope: !5975)
!5998 = !DILocation(line: 515, column: 6, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 515, column: 6)
!6000 = !DILocation(line: 515, column: 15, scope: !5999)
!6001 = !DILocation(line: 515, column: 6, scope: !5975)
!6002 = !DILocation(line: 516, column: 7, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !6004, file: !3, line: 516, column: 7)
!6004 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 515, column: 25)
!6005 = !DILocation(line: 516, column: 16, scope: !6003)
!6006 = !DILocation(line: 516, column: 29, scope: !6003)
!6007 = !DILocation(line: 516, column: 26, scope: !6003)
!6008 = !DILocation(line: 516, column: 7, scope: !6004)
!6009 = !DILocation(line: 517, column: 4, scope: !6003)
!6010 = !DILocation(line: 518, column: 9, scope: !6004)
!6011 = !DILocation(line: 518, column: 18, scope: !6004)
!6012 = !DILocation(line: 518, column: 3, scope: !6004)
!6013 = !DILocation(line: 519, column: 2, scope: !6004)
!6014 = !DILocation(line: 520, column: 32, scope: !5975)
!6015 = !DILocation(line: 520, column: 38, scope: !5975)
!6016 = !DILocation(line: 520, column: 22, scope: !5975)
!6017 = !DILocation(line: 520, column: 2, scope: !5975)
!6018 = !DILocation(line: 520, column: 11, scope: !5975)
!6019 = !DILocation(line: 520, column: 20, scope: !5975)
!6020 = !DILocation(line: 521, column: 7, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 521, column: 6)
!6022 = !DILocation(line: 521, column: 16, scope: !6021)
!6023 = !DILocation(line: 521, column: 6, scope: !5975)
!6024 = !DILocation(line: 522, column: 3, scope: !6021)
!6025 = !DILocation(line: 523, column: 23, scope: !5975)
!6026 = !DILocation(line: 523, column: 2, scope: !5975)
!6027 = !DILocation(line: 523, column: 11, scope: !5975)
!6028 = !DILocation(line: 523, column: 21, scope: !5975)
!6029 = !DILocation(line: 524, column: 2, scope: !5975)
!6030 = !DILocation(line: 525, column: 1, scope: !5975)
!6031 = !DISubprogram(name: "vfree", scope: !2990, file: !2990, line: 161, type: !5922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6032 = !DISubprogram(name: "__vmalloc", scope: !2990, file: !2990, line: 147, type: !6033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6033 = !DISubroutineType(types: !6034)
!6034 = !{!364, !342, !1118}
!6035 = distinct !DISubprogram(name: "snd_pcm_lib_free_vmalloc_buffer", scope: !3, file: !3, line: 535, type: !5071, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6036)
!6036 = !{!6037, !6038, !6039}
!6037 = !DILocalVariable(name: "substream", arg: 1, scope: !6035, file: !3, line: 535, type: !4336)
!6038 = !DILocalVariable(name: "runtime", scope: !6035, file: !3, line: 537, type: !5162)
!6039 = !DILocalVariable(name: "__ret_warn_on", scope: !6040, file: !3, line: 539, type: !109)
!6040 = distinct !DILexicalBlock(scope: !6041, file: !3, line: 539, column: 6)
!6041 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 539, column: 6)
!6042 = !DILocation(line: 535, column: 63, scope: !6035)
!6043 = !DILocation(line: 537, column: 2, scope: !6035)
!6044 = !DILocation(line: 537, column: 26, scope: !6035)
!6045 = !DILocation(line: 539, column: 6, scope: !6040)
!6046 = !DILocation(line: 539, column: 6, scope: !6041)
!6047 = !DILocation(line: 539, column: 6, scope: !6035)
!6048 = !DILocation(line: 540, column: 3, scope: !6041)
!6049 = !DILocation(line: 541, column: 12, scope: !6035)
!6050 = !DILocation(line: 541, column: 23, scope: !6035)
!6051 = !DILocation(line: 541, column: 10, scope: !6035)
!6052 = !DILocation(line: 542, column: 8, scope: !6035)
!6053 = !DILocation(line: 542, column: 17, scope: !6035)
!6054 = !DILocation(line: 542, column: 2, scope: !6035)
!6055 = !DILocation(line: 543, column: 2, scope: !6035)
!6056 = !DILocation(line: 543, column: 11, scope: !6035)
!6057 = !DILocation(line: 543, column: 20, scope: !6035)
!6058 = !DILocation(line: 544, column: 2, scope: !6035)
!6059 = !DILocation(line: 545, column: 1, scope: !6035)
!6060 = distinct !DISubprogram(name: "snd_pcm_lib_get_vmalloc_page", scope: !3, file: !3, line: 558, type: !5154, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6061)
!6061 = !{!6062, !6063}
!6062 = !DILocalVariable(name: "substream", arg: 1, scope: !6060, file: !3, line: 558, type: !4336)
!6063 = !DILocalVariable(name: "offset", arg: 2, scope: !6060, file: !3, line: 559, type: !342)
!6064 = !DILocation(line: 558, column: 69, scope: !6060)
!6065 = !DILocation(line: 559, column: 22, scope: !6060)
!6066 = !DILocation(line: 561, column: 25, scope: !6060)
!6067 = !DILocation(line: 561, column: 36, scope: !6060)
!6068 = !DILocation(line: 561, column: 45, scope: !6060)
!6069 = !DILocation(line: 561, column: 56, scope: !6060)
!6070 = !DILocation(line: 561, column: 54, scope: !6060)
!6071 = !DILocation(line: 561, column: 9, scope: !6060)
!6072 = !DILocation(line: 561, column: 2, scope: !6060)
!6073 = !DISubprogram(name: "vmalloc_to_page", scope: !1386, file: !1386, line: 1138, type: !6074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6074 = !DISubroutineType(types: !6075)
!6075 = !{!1447, !1301}
!6076 = distinct !DISubprogram(name: "decrease_allocated_size", scope: !3, file: !3, line: 46, type: !6077, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6079)
!6077 = !DISubroutineType(types: !6078)
!6078 = !{null, !4345, !339}
!6079 = !{!6080, !6081, !6082, !6084}
!6080 = !DILocalVariable(name: "card", arg: 1, scope: !6076, file: !3, line: 46, type: !4345)
!6081 = !DILocalVariable(name: "bytes", arg: 2, scope: !6076, file: !3, line: 46, type: !339)
!6082 = !DILocalVariable(name: "__ret_warn_on", scope: !6083, file: !3, line: 49, type: !109)
!6083 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 49, column: 2)
!6084 = !DILocalVariable(name: "__flags", scope: !6085, file: !3, line: 49, type: !109)
!6085 = distinct !DILexicalBlock(scope: !6086, file: !3, line: 49, column: 2)
!6086 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 49, column: 2)
!6087 = !DILocation(line: 46, column: 54, scope: !6076)
!6088 = !DILocation(line: 46, column: 67, scope: !6076)
!6089 = !DILocation(line: 48, column: 14, scope: !6076)
!6090 = !DILocation(line: 48, column: 20, scope: !6076)
!6091 = !DILocation(line: 48, column: 2, scope: !6076)
!6092 = !DILocation(line: 49, column: 2, scope: !6083)
!6093 = !DILocation(line: 49, column: 2, scope: !6086)
!6094 = !DILocation(line: 49, column: 2, scope: !6085)
!6095 = !DILocation(line: 49, column: 2, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 49, column: 2)
!6097 = !DILocation(line: 49, column: 2, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 49, column: 2)
!6099 = !{i64 2154745834, i64 2154745863, i64 2154745909, i64 2154745967, i64 2154746021, i64 2154746075, i64 2154746130, i64 2154746161, i64 2154746469, i64 2154746475, i64 2154746522, i64 2154746545, i64 2154746571}
!6100 = !DILocation(line: 49, column: 2, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 49, column: 2)
!6102 = !DILocation(line: 49, column: 2, scope: !6076)
!6103 = !DILocation(line: 50, column: 26, scope: !6076)
!6104 = !DILocation(line: 50, column: 42, scope: !6076)
!6105 = !DILocation(line: 50, column: 32, scope: !6076)
!6106 = !DILocation(line: 50, column: 2, scope: !6076)
!6107 = !DILocation(line: 51, column: 16, scope: !6076)
!6108 = !DILocation(line: 51, column: 22, scope: !6076)
!6109 = !DILocation(line: 51, column: 2, scope: !6076)
!6110 = !DILocation(line: 52, column: 1, scope: !6076)
!6111 = !DISubprogram(name: "snd_dma_free_pages", scope: !5048, file: !5048, line: 89, type: !6112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6112 = !DISubroutineType(types: !6113)
!6113 = !{null, !5302}
!6114 = !DISubprogram(name: "mutex_lock", scope: !659, file: !659, line: 227, type: !6115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{null, !6117}
!6117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!6118 = distinct !DISubprogram(name: "__update_allocated_size", scope: !3, file: !3, line: 34, type: !6119, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6121)
!6119 = !DISubroutineType(types: !6120)
!6120 = !{null, !4345, !324}
!6121 = !{!6122, !6123}
!6122 = !DILocalVariable(name: "card", arg: 1, scope: !6118, file: !3, line: 34, type: !4345)
!6123 = !DILocalVariable(name: "bytes", arg: 2, scope: !6118, file: !3, line: 34, type: !324)
!6124 = !DILocation(line: 34, column: 54, scope: !6118)
!6125 = !DILocation(line: 34, column: 68, scope: !6118)
!6126 = !DILocation(line: 36, column: 33, scope: !6118)
!6127 = !DILocation(line: 36, column: 2, scope: !6118)
!6128 = !DILocation(line: 36, column: 8, scope: !6118)
!6129 = !DILocation(line: 36, column: 30, scope: !6118)
!6130 = !DILocation(line: 37, column: 1, scope: !6118)
!6131 = !DISubprogram(name: "mutex_unlock", scope: !659, file: !659, line: 246, type: !6115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6132 = distinct !DISubprogram(name: "preallocate_pcm_pages", scope: !3, file: !3, line: 103, type: !6133, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6135)
!6133 = !DISubroutineType(types: !6134)
!6134 = !{!109, !4336, !339, !905}
!6135 = !{!6136, !6137, !6138, !6139, !6140, !6141, !6142}
!6136 = !DILocalVariable(name: "substream", arg: 1, scope: !6132, file: !3, line: 103, type: !4336)
!6137 = !DILocalVariable(name: "size", arg: 2, scope: !6132, file: !3, line: 104, type: !339)
!6138 = !DILocalVariable(name: "no_fallback", arg: 3, scope: !6132, file: !3, line: 104, type: !905)
!6139 = !DILocalVariable(name: "dmab", scope: !6132, file: !3, line: 106, type: !5302)
!6140 = !DILocalVariable(name: "card", scope: !6132, file: !3, line: 107, type: !4345)
!6141 = !DILocalVariable(name: "orig_size", scope: !6132, file: !3, line: 108, type: !339)
!6142 = !DILocalVariable(name: "err", scope: !6132, file: !3, line: 109, type: !109)
!6143 = !DILocation(line: 103, column: 60, scope: !6132)
!6144 = !DILocation(line: 104, column: 13, scope: !6132)
!6145 = !DILocation(line: 104, column: 24, scope: !6132)
!6146 = !DILocation(line: 106, column: 2, scope: !6132)
!6147 = !DILocation(line: 106, column: 25, scope: !6132)
!6148 = !DILocation(line: 106, column: 33, scope: !6132)
!6149 = !DILocation(line: 106, column: 44, scope: !6132)
!6150 = !DILocation(line: 107, column: 2, scope: !6132)
!6151 = !DILocation(line: 107, column: 19, scope: !6132)
!6152 = !DILocation(line: 107, column: 26, scope: !6132)
!6153 = !DILocation(line: 107, column: 37, scope: !6132)
!6154 = !DILocation(line: 107, column: 42, scope: !6132)
!6155 = !DILocation(line: 108, column: 2, scope: !6132)
!6156 = !DILocation(line: 108, column: 9, scope: !6132)
!6157 = !DILocation(line: 108, column: 21, scope: !6132)
!6158 = !DILocation(line: 109, column: 2, scope: !6132)
!6159 = !DILocation(line: 109, column: 6, scope: !6132)
!6160 = !DILocation(line: 111, column: 2, scope: !6132)
!6161 = !DILocation(line: 112, column: 24, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 111, column: 5)
!6163 = !DILocation(line: 112, column: 30, scope: !6162)
!6164 = !DILocation(line: 112, column: 36, scope: !6162)
!6165 = !DILocation(line: 112, column: 40, scope: !6162)
!6166 = !DILocation(line: 112, column: 46, scope: !6162)
!6167 = !DILocation(line: 112, column: 52, scope: !6162)
!6168 = !DILocation(line: 112, column: 56, scope: !6162)
!6169 = !DILocation(line: 113, column: 10, scope: !6162)
!6170 = !DILocation(line: 113, column: 21, scope: !6162)
!6171 = !DILocation(line: 113, column: 29, scope: !6162)
!6172 = !DILocation(line: 113, column: 35, scope: !6162)
!6173 = !DILocation(line: 112, column: 9, scope: !6162)
!6174 = !DILocation(line: 112, column: 7, scope: !6162)
!6175 = !DILocation(line: 114, column: 7, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6162, file: !3, line: 114, column: 7)
!6177 = !DILocation(line: 114, column: 11, scope: !6176)
!6178 = !DILocation(line: 114, column: 7, scope: !6162)
!6179 = !DILocation(line: 115, column: 11, scope: !6176)
!6180 = !DILocation(line: 115, column: 4, scope: !6176)
!6181 = !DILocation(line: 116, column: 7, scope: !6182)
!6182 = distinct !DILexicalBlock(scope: !6162, file: !3, line: 116, column: 7)
!6183 = !DILocation(line: 116, column: 7, scope: !6162)
!6184 = !DILocation(line: 117, column: 4, scope: !6182)
!6185 = !DILocation(line: 118, column: 8, scope: !6162)
!6186 = !DILocation(line: 119, column: 2, scope: !6162)
!6187 = !DILocation(line: 119, column: 11, scope: !6132)
!6188 = !DILocation(line: 119, column: 16, scope: !6132)
!6189 = distinct !{!6189, !6160, !6190, !5387, !5388}
!6190 = !DILocation(line: 119, column: 37, scope: !6132)
!6191 = !DILocation(line: 120, column: 2, scope: !6132)
!6192 = !DILocation(line: 120, column: 8, scope: !6132)
!6193 = !DILocation(line: 120, column: 14, scope: !6132)
!6194 = !DILocation(line: 121, column: 2, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 121, column: 2)
!6196 = !DILocation(line: 121, column: 2, scope: !6197)
!6197 = distinct !DILexicalBlock(scope: !6195, file: !3, line: 121, column: 2)
!6198 = !DILocation(line: 125, column: 2, scope: !6132)
!6199 = !DILocation(line: 126, column: 1, scope: !6132)
!6200 = distinct !DISubprogram(name: "preallocate_info_init", scope: !3, file: !3, line: 237, type: !4334, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6201)
!6201 = !{!6202, !6203}
!6202 = !DILocalVariable(name: "substream", arg: 1, scope: !6200, file: !3, line: 237, type: !4336)
!6203 = !DILocalVariable(name: "entry", scope: !6200, file: !3, line: 239, type: !4898)
!6204 = !DILocation(line: 237, column: 68, scope: !6200)
!6205 = !DILocation(line: 239, column: 2, scope: !6200)
!6206 = !DILocation(line: 239, column: 25, scope: !6200)
!6207 = !DILocation(line: 241, column: 37, scope: !6200)
!6208 = !DILocation(line: 241, column: 48, scope: !6200)
!6209 = !DILocation(line: 241, column: 53, scope: !6200)
!6210 = !DILocation(line: 242, column: 9, scope: !6200)
!6211 = !DILocation(line: 242, column: 20, scope: !6200)
!6212 = !DILocation(line: 241, column: 10, scope: !6200)
!6213 = !DILocation(line: 241, column: 8, scope: !6200)
!6214 = !DILocation(line: 243, column: 6, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6200, file: !3, line: 243, column: 6)
!6216 = !DILocation(line: 243, column: 6, scope: !6200)
!6217 = !DILocation(line: 244, column: 25, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6215, file: !3, line: 243, column: 13)
!6219 = !DILocation(line: 244, column: 32, scope: !6218)
!6220 = !DILocation(line: 244, column: 3, scope: !6218)
!6221 = !DILocation(line: 246, column: 3, scope: !6218)
!6222 = !DILocation(line: 246, column: 10, scope: !6218)
!6223 = !DILocation(line: 246, column: 17, scope: !6218)
!6224 = !DILocation(line: 246, column: 23, scope: !6218)
!6225 = !DILocation(line: 247, column: 3, scope: !6218)
!6226 = !DILocation(line: 247, column: 10, scope: !6218)
!6227 = !DILocation(line: 247, column: 15, scope: !6218)
!6228 = !DILocation(line: 248, column: 2, scope: !6218)
!6229 = !DILocation(line: 249, column: 37, scope: !6200)
!6230 = !DILocation(line: 249, column: 48, scope: !6200)
!6231 = !DILocation(line: 249, column: 53, scope: !6200)
!6232 = !DILocation(line: 250, column: 9, scope: !6200)
!6233 = !DILocation(line: 250, column: 20, scope: !6200)
!6234 = !DILocation(line: 249, column: 10, scope: !6200)
!6235 = !DILocation(line: 249, column: 8, scope: !6200)
!6236 = !DILocation(line: 251, column: 6, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6200, file: !3, line: 251, column: 6)
!6238 = !DILocation(line: 251, column: 6, scope: !6200)
!6239 = !DILocation(line: 252, column: 25, scope: !6237)
!6240 = !DILocation(line: 252, column: 32, scope: !6237)
!6241 = !DILocation(line: 252, column: 3, scope: !6237)
!6242 = !DILocation(line: 254, column: 1, scope: !6200)
!6243 = !DISubprogram(name: "_printk", scope: !6244, file: !6244, line: 153, type: !6245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6244 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!109, !211, null}
!6247 = !DISubprogram(name: "snd_info_create_card_entry", scope: !4900, file: !4900, line: 117, type: !6248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!4898, !4345, !211, !4898}
!6250 = distinct !DISubprogram(name: "snd_info_set_text_ops", scope: !4900, file: !4900, line: 137, type: !6251, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6253)
!6251 = !DISubroutineType(types: !6252)
!6252 = !{null, !4898, !364, !4913}
!6253 = !{!6254, !6255, !6256}
!6254 = !DILocalVariable(name: "entry", arg: 1, scope: !6250, file: !4900, line: 137, type: !4898)
!6255 = !DILocalVariable(name: "private_data", arg: 2, scope: !6250, file: !4900, line: 138, type: !364)
!6256 = !DILocalVariable(name: "read", arg: 3, scope: !6250, file: !4900, line: 139, type: !4913)
!6257 = !DILocation(line: 137, column: 65, scope: !6250)
!6258 = !DILocation(line: 138, column: 8, scope: !6250)
!6259 = !DILocation(line: 139, column: 9, scope: !6250)
!6260 = !DILocation(line: 141, column: 24, scope: !6250)
!6261 = !DILocation(line: 141, column: 2, scope: !6250)
!6262 = !DILocation(line: 141, column: 9, scope: !6250)
!6263 = !DILocation(line: 141, column: 22, scope: !6250)
!6264 = !DILocation(line: 142, column: 23, scope: !6250)
!6265 = !DILocation(line: 142, column: 2, scope: !6250)
!6266 = !DILocation(line: 142, column: 9, scope: !6250)
!6267 = !DILocation(line: 142, column: 16, scope: !6250)
!6268 = !DILocation(line: 142, column: 21, scope: !6250)
!6269 = !DILocation(line: 143, column: 1, scope: !6250)
!6270 = distinct !DISubprogram(name: "snd_pcm_lib_preallocate_proc_read", scope: !3, file: !3, line: 161, type: !4914, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6271)
!6271 = !{!6272, !6273, !6274}
!6272 = !DILocalVariable(name: "entry", arg: 1, scope: !6270, file: !3, line: 161, type: !4898)
!6273 = !DILocalVariable(name: "buffer", arg: 2, scope: !6270, file: !3, line: 162, type: !4916)
!6274 = !DILocalVariable(name: "substream", scope: !6270, file: !3, line: 164, type: !4336)
!6275 = !DILocation(line: 161, column: 70, scope: !6270)
!6276 = !DILocation(line: 162, column: 36, scope: !6270)
!6277 = !DILocation(line: 164, column: 2, scope: !6270)
!6278 = !DILocation(line: 164, column: 28, scope: !6270)
!6279 = !DILocation(line: 164, column: 40, scope: !6270)
!6280 = !DILocation(line: 164, column: 47, scope: !6270)
!6281 = !DILocation(line: 165, column: 2, scope: !6270)
!6282 = !DILocation(line: 166, column: 1, scope: !6270)
!6283 = distinct !DISubprogram(name: "snd_pcm_lib_preallocate_proc_write", scope: !3, file: !3, line: 185, type: !4914, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6284)
!6284 = !{!6285, !6286, !6287, !6288, !6289, !6290, !6291, !6292, !6293}
!6285 = !DILocalVariable(name: "entry", arg: 1, scope: !6283, file: !3, line: 185, type: !4898)
!6286 = !DILocalVariable(name: "buffer", arg: 2, scope: !6283, file: !3, line: 186, type: !4916)
!6287 = !DILocalVariable(name: "substream", scope: !6283, file: !3, line: 188, type: !4336)
!6288 = !DILocalVariable(name: "card", scope: !6283, file: !3, line: 189, type: !4345)
!6289 = !DILocalVariable(name: "line", scope: !6283, file: !3, line: 190, type: !5007)
!6290 = !DILocalVariable(name: "str", scope: !6283, file: !3, line: 190, type: !5007)
!6291 = !DILocalVariable(name: "size", scope: !6283, file: !3, line: 191, type: !339)
!6292 = !DILocalVariable(name: "new_dmab", scope: !6283, file: !3, line: 192, type: !5047)
!6293 = !DILabel(scope: !6283, name: "unlock", file: !3, line: 233)
!6294 = !DILocation(line: 185, column: 71, scope: !6283)
!6295 = !DILocation(line: 186, column: 37, scope: !6283)
!6296 = !DILocation(line: 188, column: 2, scope: !6283)
!6297 = !DILocation(line: 188, column: 28, scope: !6283)
!6298 = !DILocation(line: 188, column: 40, scope: !6283)
!6299 = !DILocation(line: 188, column: 47, scope: !6283)
!6300 = !DILocation(line: 189, column: 2, scope: !6283)
!6301 = !DILocation(line: 189, column: 19, scope: !6283)
!6302 = !DILocation(line: 189, column: 26, scope: !6283)
!6303 = !DILocation(line: 189, column: 37, scope: !6283)
!6304 = !DILocation(line: 189, column: 42, scope: !6283)
!6305 = !DILocation(line: 190, column: 2, scope: !6283)
!6306 = !DILocation(line: 190, column: 7, scope: !6283)
!6307 = !DILocation(line: 190, column: 17, scope: !6283)
!6308 = !DILocation(line: 191, column: 2, scope: !6283)
!6309 = !DILocation(line: 191, column: 9, scope: !6283)
!6310 = !DILocation(line: 192, column: 2, scope: !6283)
!6311 = !DILocation(line: 192, column: 24, scope: !6283)
!6312 = !DILocation(line: 194, column: 14, scope: !6283)
!6313 = !DILocation(line: 194, column: 25, scope: !6283)
!6314 = !DILocation(line: 194, column: 30, scope: !6283)
!6315 = !DILocation(line: 194, column: 2, scope: !6283)
!6316 = !DILocation(line: 195, column: 6, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6283, file: !3, line: 195, column: 6)
!6318 = !DILocation(line: 195, column: 17, scope: !6317)
!6319 = !DILocation(line: 195, column: 6, scope: !6283)
!6320 = !DILocation(line: 196, column: 3, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6317, file: !3, line: 195, column: 26)
!6322 = !DILocation(line: 196, column: 11, scope: !6321)
!6323 = !DILocation(line: 196, column: 17, scope: !6321)
!6324 = !DILocation(line: 197, column: 3, scope: !6321)
!6325 = !DILocation(line: 199, column: 25, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6283, file: !3, line: 199, column: 6)
!6327 = !DILocation(line: 199, column: 33, scope: !6326)
!6328 = !DILocation(line: 199, column: 7, scope: !6326)
!6329 = !DILocation(line: 199, column: 6, scope: !6283)
!6330 = !DILocation(line: 200, column: 20, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6326, file: !3, line: 199, column: 54)
!6332 = !DILocation(line: 200, column: 25, scope: !6331)
!6333 = !DILocation(line: 200, column: 3, scope: !6331)
!6334 = !DILocation(line: 201, column: 25, scope: !6331)
!6335 = !DILocation(line: 201, column: 10, scope: !6331)
!6336 = !DILocation(line: 201, column: 40, scope: !6331)
!6337 = !DILocation(line: 201, column: 8, scope: !6331)
!6338 = !DILocation(line: 202, column: 8, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 202, column: 7)
!6340 = !DILocation(line: 202, column: 13, scope: !6339)
!6341 = !DILocation(line: 202, column: 18, scope: !6339)
!6342 = !DILocation(line: 202, column: 21, scope: !6339)
!6343 = !DILocation(line: 202, column: 26, scope: !6339)
!6344 = !DILocation(line: 202, column: 34, scope: !6339)
!6345 = !DILocation(line: 202, column: 37, scope: !6339)
!6346 = !DILocation(line: 202, column: 44, scope: !6339)
!6347 = !DILocation(line: 202, column: 55, scope: !6339)
!6348 = !DILocation(line: 202, column: 42, scope: !6339)
!6349 = !DILocation(line: 202, column: 7, scope: !6331)
!6350 = !DILocation(line: 203, column: 4, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6339, file: !3, line: 202, column: 64)
!6352 = !DILocation(line: 203, column: 12, scope: !6351)
!6353 = !DILocation(line: 203, column: 18, scope: !6351)
!6354 = !DILocation(line: 204, column: 4, scope: !6351)
!6355 = !DILocation(line: 206, column: 7, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 206, column: 7)
!6357 = !DILocation(line: 206, column: 18, scope: !6356)
!6358 = !DILocation(line: 206, column: 29, scope: !6356)
!6359 = !DILocation(line: 206, column: 38, scope: !6356)
!6360 = !DILocation(line: 206, column: 35, scope: !6356)
!6361 = !DILocation(line: 206, column: 7, scope: !6331)
!6362 = !DILocation(line: 207, column: 4, scope: !6356)
!6363 = !DILocation(line: 208, column: 3, scope: !6331)
!6364 = !DILocation(line: 209, column: 12, scope: !6331)
!6365 = !DILocation(line: 209, column: 18, scope: !6331)
!6366 = !DILocation(line: 209, column: 29, scope: !6331)
!6367 = !DILocation(line: 209, column: 40, scope: !6331)
!6368 = !DILocation(line: 210, column: 7, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 210, column: 7)
!6370 = !DILocation(line: 210, column: 12, scope: !6369)
!6371 = !DILocation(line: 210, column: 7, scope: !6331)
!6372 = !DILocation(line: 211, column: 23, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 211, column: 8)
!6374 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 210, column: 17)
!6375 = !DILocation(line: 212, column: 9, scope: !6373)
!6376 = !DILocation(line: 212, column: 20, scope: !6373)
!6377 = !DILocation(line: 212, column: 31, scope: !6373)
!6378 = !DILocation(line: 212, column: 35, scope: !6373)
!6379 = !DILocation(line: 213, column: 9, scope: !6373)
!6380 = !DILocation(line: 213, column: 20, scope: !6373)
!6381 = !DILocation(line: 213, column: 31, scope: !6373)
!6382 = !DILocation(line: 213, column: 35, scope: !6373)
!6383 = !DILocation(line: 214, column: 9, scope: !6373)
!6384 = !DILocation(line: 214, column: 20, scope: !6373)
!6385 = !DILocation(line: 215, column: 9, scope: !6373)
!6386 = !DILocation(line: 211, column: 8, scope: !6373)
!6387 = !DILocation(line: 215, column: 26, scope: !6373)
!6388 = !DILocation(line: 211, column: 8, scope: !6374)
!6389 = !DILocation(line: 216, column: 5, scope: !6390)
!6390 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 215, column: 31)
!6391 = !DILocation(line: 216, column: 13, scope: !6390)
!6392 = !DILocation(line: 216, column: 19, scope: !6390)
!6393 = !DILocation(line: 217, column: 5, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 217, column: 5)
!6395 = distinct !DILexicalBlock(scope: !6390, file: !3, line: 217, column: 5)
!6396 = !DILocation(line: 217, column: 5, scope: !6395)
!6397 = !DILocation(line: 221, column: 5, scope: !6390)
!6398 = !DILocation(line: 223, column: 34, scope: !6374)
!6399 = !DILocation(line: 223, column: 4, scope: !6374)
!6400 = !DILocation(line: 223, column: 15, scope: !6374)
!6401 = !DILocation(line: 223, column: 32, scope: !6374)
!6402 = !DILocation(line: 224, column: 3, scope: !6374)
!6403 = !DILocation(line: 225, column: 4, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6369, file: !3, line: 224, column: 10)
!6405 = !DILocation(line: 225, column: 15, scope: !6404)
!6406 = !DILocation(line: 225, column: 32, scope: !6404)
!6407 = !DILocation(line: 227, column: 7, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 227, column: 7)
!6409 = !DILocation(line: 227, column: 18, scope: !6408)
!6410 = !DILocation(line: 227, column: 29, scope: !6408)
!6411 = !DILocation(line: 227, column: 7, scope: !6331)
!6412 = !DILocation(line: 228, column: 18, scope: !6408)
!6413 = !DILocation(line: 228, column: 25, scope: !6408)
!6414 = !DILocation(line: 228, column: 36, scope: !6408)
!6415 = !DILocation(line: 228, column: 4, scope: !6408)
!6416 = !DILocation(line: 229, column: 3, scope: !6331)
!6417 = !DILocation(line: 229, column: 14, scope: !6331)
!6418 = !DILocation(line: 229, column: 27, scope: !6331)
!6419 = !DILocation(line: 230, column: 2, scope: !6331)
!6420 = !DILocation(line: 231, column: 3, scope: !6421)
!6421 = distinct !DILexicalBlock(scope: !6326, file: !3, line: 230, column: 9)
!6422 = !DILocation(line: 231, column: 11, scope: !6421)
!6423 = !DILocation(line: 231, column: 17, scope: !6421)
!6424 = !DILocation(line: 199, column: 51, scope: !6326)
!6425 = !DILocation(line: 233, column: 2, scope: !6283)
!6426 = !DILocation(line: 234, column: 16, scope: !6283)
!6427 = !DILocation(line: 234, column: 27, scope: !6283)
!6428 = !DILocation(line: 234, column: 32, scope: !6283)
!6429 = !DILocation(line: 234, column: 2, scope: !6283)
!6430 = !DILocation(line: 235, column: 1, scope: !6283)
!6431 = distinct !DISubprogram(name: "snd_pcm_lib_preallocate_max_proc_read", scope: !3, file: !3, line: 173, type: !4914, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6432)
!6432 = !{!6433, !6434, !6435}
!6433 = !DILocalVariable(name: "entry", arg: 1, scope: !6431, file: !3, line: 173, type: !4898)
!6434 = !DILocalVariable(name: "buffer", arg: 2, scope: !6431, file: !3, line: 174, type: !4916)
!6435 = !DILocalVariable(name: "substream", scope: !6431, file: !3, line: 176, type: !4336)
!6436 = !DILocation(line: 173, column: 74, scope: !6431)
!6437 = !DILocation(line: 174, column: 33, scope: !6431)
!6438 = !DILocation(line: 176, column: 2, scope: !6431)
!6439 = !DILocation(line: 176, column: 28, scope: !6431)
!6440 = !DILocation(line: 176, column: 40, scope: !6431)
!6441 = !DILocation(line: 176, column: 47, scope: !6431)
!6442 = !DILocation(line: 177, column: 2, scope: !6431)
!6443 = !DILocation(line: 178, column: 1, scope: !6431)
!6444 = !DISubprogram(name: "seq_printf", scope: !648, file: !648, line: 119, type: !6445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6445 = !DISubroutineType(types: !6446)
!6446 = !{null, !646, !211, null}
!6447 = !DISubprogram(name: "snd_info_get_line", scope: !4900, file: !4900, line: 112, type: !6448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6448 = !DISubroutineType(types: !6449)
!6449 = !{!109, !4916, !292, !109}
!6450 = !DISubprogram(name: "snd_info_get_str", scope: !4900, file: !4900, line: 113, type: !6451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6451 = !DISubroutineType(types: !6452)
!6452 = !{!211, !292, !211, !109}
!6453 = !DISubprogram(name: "simple_strtoul", scope: !6454, file: !6454, line: 145, type: !6455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6454 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!6455 = !DISubroutineType(types: !6456)
!6456 = !{!342, !211, !6457, !7}
!6457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!6458 = distinct !DISubprogram(name: "kmalloc", scope: !171, file: !171, line: 591, type: !5825, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6459)
!6459 = !{!6460, !6461, !6462}
!6460 = !DILocalVariable(name: "size", arg: 1, scope: !6458, file: !171, line: 591, type: !339)
!6461 = !DILocalVariable(name: "flags", arg: 2, scope: !6458, file: !171, line: 591, type: !1118)
!6462 = !DILocalVariable(name: "index", scope: !6463, file: !171, line: 594, type: !7)
!6463 = distinct !DILexicalBlock(scope: !6464, file: !171, line: 593, column: 42)
!6464 = distinct !DILexicalBlock(scope: !6458, file: !171, line: 593, column: 6)
!6465 = !DILocation(line: 591, column: 61, scope: !6458)
!6466 = !DILocation(line: 591, column: 73, scope: !6458)
!6467 = !DILocation(line: 593, column: 27, scope: !6464)
!6468 = !DILocation(line: 593, column: 6, scope: !6464)
!6469 = !DILocation(line: 593, column: 33, scope: !6464)
!6470 = !DILocation(line: 593, column: 36, scope: !6464)
!6471 = !DILocation(line: 593, column: 6, scope: !6458)
!6472 = !DILocation(line: 594, column: 3, scope: !6463)
!6473 = !DILocation(line: 594, column: 16, scope: !6463)
!6474 = !DILocation(line: 596, column: 7, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6463, file: !171, line: 596, column: 7)
!6476 = !DILocation(line: 596, column: 12, scope: !6475)
!6477 = !DILocation(line: 596, column: 7, scope: !6463)
!6478 = !DILocation(line: 597, column: 25, scope: !6475)
!6479 = !DILocation(line: 597, column: 31, scope: !6475)
!6480 = !DILocation(line: 597, column: 11, scope: !6475)
!6481 = !DILocation(line: 597, column: 4, scope: !6475)
!6482 = !DILocation(line: 599, column: 11, scope: !6463)
!6483 = !DILocation(line: 599, column: 9, scope: !6463)
!6484 = !DILocation(line: 601, column: 33, scope: !6463)
!6485 = !DILocation(line: 601, column: 40, scope: !6463)
!6486 = !DILocation(line: 601, column: 20, scope: !6463)
!6487 = !DILocation(line: 601, column: 5, scope: !6463)
!6488 = !DILocation(line: 601, column: 51, scope: !6463)
!6489 = !DILocation(line: 602, column: 5, scope: !6463)
!6490 = !DILocation(line: 602, column: 12, scope: !6463)
!6491 = !DILocation(line: 600, column: 10, scope: !6463)
!6492 = !DILocation(line: 600, column: 3, scope: !6463)
!6493 = !DILocation(line: 603, column: 2, scope: !6464)
!6494 = !DILocation(line: 604, column: 19, scope: !6458)
!6495 = !DILocation(line: 604, column: 25, scope: !6458)
!6496 = !DILocation(line: 604, column: 9, scope: !6458)
!6497 = !DILocation(line: 604, column: 2, scope: !6458)
!6498 = !DILocation(line: 605, column: 1, scope: !6458)
!6499 = !DISubprogram(name: "kmalloc_large", scope: !171, file: !171, line: 531, type: !5825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6500 = distinct !DISubprogram(name: "__kmalloc_index", scope: !171, file: !171, line: 444, type: !6501, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6503)
!6501 = !DISubroutineType(types: !6502)
!6502 = !{!7, !339, !905}
!6503 = !{!6504, !6505}
!6504 = !DILocalVariable(name: "size", arg: 1, scope: !6500, file: !171, line: 444, type: !339)
!6505 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6500, file: !171, line: 445, type: !905)
!6506 = !DILocation(line: 444, column: 60, scope: !6500)
!6507 = !DILocation(line: 445, column: 16, scope: !6500)
!6508 = !DILocation(line: 447, column: 7, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 447, column: 6)
!6510 = !DILocation(line: 447, column: 6, scope: !6500)
!6511 = !DILocation(line: 448, column: 3, scope: !6509)
!6512 = !DILocation(line: 450, column: 6, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 450, column: 6)
!6514 = !DILocation(line: 450, column: 11, scope: !6513)
!6515 = !DILocation(line: 450, column: 6, scope: !6500)
!6516 = !DILocation(line: 451, column: 3, scope: !6513)
!6517 = !DILocation(line: 453, column: 32, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 453, column: 6)
!6519 = !DILocation(line: 453, column: 37, scope: !6518)
!6520 = !DILocation(line: 453, column: 42, scope: !6518)
!6521 = !DILocation(line: 453, column: 45, scope: !6518)
!6522 = !DILocation(line: 453, column: 50, scope: !6518)
!6523 = !DILocation(line: 453, column: 6, scope: !6500)
!6524 = !DILocation(line: 454, column: 3, scope: !6518)
!6525 = !DILocation(line: 455, column: 32, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 455, column: 6)
!6527 = !DILocation(line: 455, column: 37, scope: !6526)
!6528 = !DILocation(line: 455, column: 43, scope: !6526)
!6529 = !DILocation(line: 455, column: 46, scope: !6526)
!6530 = !DILocation(line: 455, column: 51, scope: !6526)
!6531 = !DILocation(line: 455, column: 6, scope: !6500)
!6532 = !DILocation(line: 456, column: 3, scope: !6526)
!6533 = !DILocation(line: 457, column: 6, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 457, column: 6)
!6535 = !DILocation(line: 457, column: 11, scope: !6534)
!6536 = !DILocation(line: 457, column: 6, scope: !6500)
!6537 = !DILocation(line: 457, column: 26, scope: !6534)
!6538 = !DILocation(line: 458, column: 6, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 458, column: 6)
!6540 = !DILocation(line: 458, column: 11, scope: !6539)
!6541 = !DILocation(line: 458, column: 6, scope: !6500)
!6542 = !DILocation(line: 458, column: 26, scope: !6539)
!6543 = !DILocation(line: 459, column: 6, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 459, column: 6)
!6545 = !DILocation(line: 459, column: 11, scope: !6544)
!6546 = !DILocation(line: 459, column: 6, scope: !6500)
!6547 = !DILocation(line: 459, column: 26, scope: !6544)
!6548 = !DILocation(line: 460, column: 6, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 460, column: 6)
!6550 = !DILocation(line: 460, column: 11, scope: !6549)
!6551 = !DILocation(line: 460, column: 6, scope: !6500)
!6552 = !DILocation(line: 460, column: 26, scope: !6549)
!6553 = !DILocation(line: 461, column: 6, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 461, column: 6)
!6555 = !DILocation(line: 461, column: 11, scope: !6554)
!6556 = !DILocation(line: 461, column: 6, scope: !6500)
!6557 = !DILocation(line: 461, column: 26, scope: !6554)
!6558 = !DILocation(line: 462, column: 6, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 462, column: 6)
!6560 = !DILocation(line: 462, column: 11, scope: !6559)
!6561 = !DILocation(line: 462, column: 6, scope: !6500)
!6562 = !DILocation(line: 462, column: 26, scope: !6559)
!6563 = !DILocation(line: 463, column: 6, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 463, column: 6)
!6565 = !DILocation(line: 463, column: 11, scope: !6564)
!6566 = !DILocation(line: 463, column: 6, scope: !6500)
!6567 = !DILocation(line: 463, column: 26, scope: !6564)
!6568 = !DILocation(line: 464, column: 6, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 464, column: 6)
!6570 = !DILocation(line: 464, column: 11, scope: !6569)
!6571 = !DILocation(line: 464, column: 6, scope: !6500)
!6572 = !DILocation(line: 464, column: 26, scope: !6569)
!6573 = !DILocation(line: 465, column: 6, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 465, column: 6)
!6575 = !DILocation(line: 465, column: 11, scope: !6574)
!6576 = !DILocation(line: 465, column: 6, scope: !6500)
!6577 = !DILocation(line: 465, column: 26, scope: !6574)
!6578 = !DILocation(line: 466, column: 6, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 466, column: 6)
!6580 = !DILocation(line: 466, column: 11, scope: !6579)
!6581 = !DILocation(line: 466, column: 6, scope: !6500)
!6582 = !DILocation(line: 466, column: 26, scope: !6579)
!6583 = !DILocation(line: 467, column: 6, scope: !6584)
!6584 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 467, column: 6)
!6585 = !DILocation(line: 467, column: 11, scope: !6584)
!6586 = !DILocation(line: 467, column: 6, scope: !6500)
!6587 = !DILocation(line: 467, column: 26, scope: !6584)
!6588 = !DILocation(line: 468, column: 6, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 468, column: 6)
!6590 = !DILocation(line: 468, column: 11, scope: !6589)
!6591 = !DILocation(line: 468, column: 6, scope: !6500)
!6592 = !DILocation(line: 468, column: 26, scope: !6589)
!6593 = !DILocation(line: 469, column: 6, scope: !6594)
!6594 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 469, column: 6)
!6595 = !DILocation(line: 469, column: 11, scope: !6594)
!6596 = !DILocation(line: 469, column: 6, scope: !6500)
!6597 = !DILocation(line: 469, column: 26, scope: !6594)
!6598 = !DILocation(line: 470, column: 6, scope: !6599)
!6599 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 470, column: 6)
!6600 = !DILocation(line: 470, column: 11, scope: !6599)
!6601 = !DILocation(line: 470, column: 6, scope: !6500)
!6602 = !DILocation(line: 470, column: 26, scope: !6599)
!6603 = !DILocation(line: 471, column: 6, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 471, column: 6)
!6605 = !DILocation(line: 471, column: 11, scope: !6604)
!6606 = !DILocation(line: 471, column: 6, scope: !6500)
!6607 = !DILocation(line: 471, column: 26, scope: !6604)
!6608 = !DILocation(line: 472, column: 6, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 472, column: 6)
!6610 = !DILocation(line: 472, column: 11, scope: !6609)
!6611 = !DILocation(line: 472, column: 6, scope: !6500)
!6612 = !DILocation(line: 472, column: 26, scope: !6609)
!6613 = !DILocation(line: 473, column: 6, scope: !6614)
!6614 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 473, column: 6)
!6615 = !DILocation(line: 473, column: 11, scope: !6614)
!6616 = !DILocation(line: 473, column: 6, scope: !6500)
!6617 = !DILocation(line: 473, column: 26, scope: !6614)
!6618 = !DILocation(line: 474, column: 6, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 474, column: 6)
!6620 = !DILocation(line: 474, column: 11, scope: !6619)
!6621 = !DILocation(line: 474, column: 6, scope: !6500)
!6622 = !DILocation(line: 474, column: 27, scope: !6619)
!6623 = !DILocation(line: 475, column: 6, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 475, column: 6)
!6625 = !DILocation(line: 475, column: 11, scope: !6624)
!6626 = !DILocation(line: 475, column: 6, scope: !6500)
!6627 = !DILocation(line: 475, column: 32, scope: !6624)
!6628 = !DILocation(line: 477, column: 50, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6500, file: !171, line: 477, column: 6)
!6630 = !DILocation(line: 477, column: 6, scope: !6500)
!6631 = !DILocation(line: 478, column: 3, scope: !6629)
!6632 = !DILocation(line: 478, column: 3, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6634, file: !171, line: 478, column: 3)
!6634 = distinct !DILexicalBlock(scope: !6629, file: !171, line: 478, column: 3)
!6635 = !{i32 -2143436539}
!6636 = !DILocation(line: 478, column: 3, scope: !6634)
!6637 = !DILocation(line: 480, column: 3, scope: !6629)
!6638 = !DILocation(line: 480, column: 3, scope: !6639)
!6639 = distinct !DILexicalBlock(scope: !6629, file: !171, line: 480, column: 3)
!6640 = !DILocation(line: 480, column: 3, scope: !6641)
!6641 = distinct !DILexicalBlock(scope: !6639, file: !171, line: 480, column: 3)
!6642 = !DILocation(line: 480, column: 3, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6639, file: !171, line: 480, column: 3)
!6644 = !{i64 2151530960, i64 2151530989, i64 2151531035, i64 2151531093, i64 2151531147, i64 2151531201, i64 2151531256, i64 2151531287}
!6645 = !DILocation(line: 483, column: 2, scope: !6500)
!6646 = !DILocation(line: 484, column: 1, scope: !6500)
!6647 = !DISubprogram(name: "kmalloc_trace", scope: !171, file: !171, line: 525, type: !6648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6648 = !DISubroutineType(types: !6649)
!6649 = !{!364, !6650, !1118, !339}
!6650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6651, size: 64)
!6651 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6652, line: 11, flags: DIFlagFwdDecl)
!6652 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6653 = distinct !DISubprogram(name: "kmalloc_type", scope: !171, file: !171, line: 401, type: !6654, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6656)
!6654 = !DISubroutineType(types: !6655)
!6655 = !{!170, !1118, !342}
!6656 = !{!6657, !6658}
!6657 = !DILocalVariable(name: "flags", arg: 1, scope: !6653, file: !171, line: 401, type: !1118)
!6658 = !DILocalVariable(name: "caller", arg: 2, scope: !6653, file: !171, line: 401, type: !342)
!6659 = !DILocation(line: 401, column: 67, scope: !6653)
!6660 = !DILocation(line: 401, column: 88, scope: !6653)
!6661 = !DILocation(line: 407, column: 6, scope: !6662)
!6662 = distinct !DILexicalBlock(scope: !6653, file: !171, line: 407, column: 6)
!6663 = !DILocation(line: 407, column: 6, scope: !6653)
!6664 = !DILocation(line: 413, column: 3, scope: !6662)
!6665 = !DILocation(line: 423, column: 38, scope: !6666)
!6666 = distinct !DILexicalBlock(scope: !6653, file: !171, line: 423, column: 6)
!6667 = !DILocation(line: 423, column: 44, scope: !6666)
!6668 = !DILocation(line: 423, column: 6, scope: !6653)
!6669 = !DILocation(line: 424, column: 3, scope: !6666)
!6670 = !DILocation(line: 426, column: 3, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6653, file: !171, line: 425, column: 6)
!6672 = !DILocation(line: 429, column: 1, scope: !6653)
!6673 = !DISubprogram(name: "__kmalloc", scope: !171, file: !171, line: 488, type: !5825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6674 = !DISubprogram(name: "__compiletime_assert_117", scope: !171, file: !171, line: 478, type: !2654, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6675 = !DISubprogram(name: "snd_dma_alloc_dir_pages", scope: !5048, file: !5048, line: 77, type: !6676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6676 = !DISubroutineType(types: !6677)
!6677 = !{!109, !109, !4371, !158, !339, !5302}
!6678 = distinct !DISubprogram(name: "update_allocated_size", scope: !3, file: !3, line: 39, type: !6119, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6679)
!6679 = !{!6680, !6681}
!6680 = !DILocalVariable(name: "card", arg: 1, scope: !6678, file: !3, line: 39, type: !4345)
!6681 = !DILocalVariable(name: "bytes", arg: 2, scope: !6678, file: !3, line: 39, type: !324)
!6682 = !DILocation(line: 39, column: 52, scope: !6678)
!6683 = !DILocation(line: 39, column: 66, scope: !6678)
!6684 = !DILocation(line: 41, column: 14, scope: !6678)
!6685 = !DILocation(line: 41, column: 20, scope: !6678)
!6686 = !DILocation(line: 41, column: 2, scope: !6678)
!6687 = !DILocation(line: 42, column: 26, scope: !6678)
!6688 = !DILocation(line: 42, column: 32, scope: !6678)
!6689 = !DILocation(line: 42, column: 2, scope: !6678)
!6690 = !DILocation(line: 43, column: 16, scope: !6678)
!6691 = !DILocation(line: 43, column: 22, scope: !6678)
!6692 = !DILocation(line: 43, column: 2, scope: !6678)
!6693 = !DILocation(line: 44, column: 1, scope: !6678)
