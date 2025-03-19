; ModuleID = 'drivers/dma/hsu/hsu.c'
source_filename = "drivers/dma/hsu/hsu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hsu_dma_get_status: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hsu_dma_get_status ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hsu_dma_do_irq: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hsu_dma_do_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hsu_dma_probe: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hsu_dma_probe ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hsu_dma_remove: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hsu_dma_remove ; .previous"

%struct.hsu_dma_chip = type { ptr, i32, ptr, i32, i32, ptr }
%struct.hsu_dma = type { %struct.dma_device, ptr, i16 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i64] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.hsu_dma_chan = type { %struct.virt_dma_chan, ptr, i32, %struct.dma_slave_config, ptr }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i64, %struct.atomic_t, i8, %union.anon.13, i64 }
%union.anon.13 = type { ptr }
%struct.dma_slave_config = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i8, ptr, i64 }
%struct.hsu_dma_desc = type { %struct.virt_dma_desc, i32, ptr, i32, i64, i32, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_chan_percpu = type { i64, i64 }
%struct.scatterlist = type { i64, i32, i32, i64, i32, i32 }
%struct.hsu_dma_sg = type { i64, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__UNIQUE_ID___addressable_hsu_dma_get_status290 = internal global ptr @hsu_dma_get_status, section ".discard.addressable", align 8, !dbg !0
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@__UNIQUE_ID___addressable_hsu_dma_do_irq291 = internal global ptr @hsu_dma_do_irq, section ".discard.addressable", align 8, !dbg !5102
@.str = private unnamed_addr constant [28 x i8] c"Found HSU DMA, %d channels\0A\00", align 1, !dbg !5104
@__UNIQUE_ID___addressable_hsu_dma_probe292 = internal global ptr @hsu_dma_probe, section ".discard.addressable", align 8, !dbg !5109
@__UNIQUE_ID___addressable_hsu_dma_remove293 = internal global ptr @hsu_dma_remove, section ".discard.addressable", align 8, !dbg !5111
@__UNIQUE_ID_file294 = internal constant [37 x i8] c"hsu_dma.file=drivers/dma/hsu/hsu_dma\00", section ".modinfo", align 1, !dbg !5113
@__UNIQUE_ID_license295 = internal constant [23 x i8] c"hsu_dma.license=GPL v2\00", section ".modinfo", align 1, !dbg !5118
@__UNIQUE_ID_description296 = internal constant [52 x i8] c"hsu_dma.description=High Speed UART DMA core driver\00", section ".modinfo", align 1, !dbg !5123
@__UNIQUE_ID_author297 = internal constant [67 x i8] c"hsu_dma.author=Andy Shevchenko <andriy.shevchenko@linux.intel.com>\00", section ".modinfo", align 1, !dbg !5126
@.str.1 = private unnamed_addr constant [31 x i8] c"drivers/dma/hsu/../dmaengine.h\00", align 1, !dbg !5131
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5137
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_hsu_dma_get_status290, ptr @__UNIQUE_ID___addressable_hsu_dma_do_irq291, ptr @__UNIQUE_ID___addressable_hsu_dma_probe292, ptr @__UNIQUE_ID___addressable_hsu_dma_remove293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_author297], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hsu_dma_get_status(ptr noundef %chip, i16 noundef zeroext %nr, ptr noundef %status) #0 align 16 !dbg !5151 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca ptr, align 8
  %nr.addr = alloca i16, align 2
  %status.addr = alloca ptr, align 8
  %hsuc = alloca ptr, align 8
  %flags = alloca i64, align 8
  %sr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %chip, ptr %chip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chip.addr, metadata !5171, metadata !DIExpression()), !dbg !5182
  store i16 %nr, ptr %nr.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5172, metadata !DIExpression()), !dbg !5183
  store ptr %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !5173, metadata !DIExpression()), !dbg !5184
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsuc) #18, !dbg !5185
  call void @llvm.dbg.declare(metadata ptr %hsuc, metadata !5174, metadata !DIExpression()), !dbg !5186
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !5187
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5175, metadata !DIExpression()), !dbg !5188
  call void @llvm.lifetime.start.p0(i64 4, ptr %sr) #18, !dbg !5189
  call void @llvm.dbg.declare(metadata ptr %sr, metadata !5176, metadata !DIExpression()), !dbg !5190
  %0 = load i16, ptr %nr.addr, align 2, !dbg !5191
  %conv = zext i16 %0 to i32, !dbg !5191
  %1 = load ptr, ptr %chip.addr, align 8, !dbg !5193
  %hsu = getelementptr inbounds %struct.hsu_dma_chip, ptr %1, i32 0, i32 5, !dbg !5194
  %2 = load ptr, ptr %hsu, align 8, !dbg !5194
  %nr_channels = getelementptr inbounds %struct.hsu_dma, ptr %2, i32 0, i32 2, !dbg !5195
  %3 = load i16, ptr %nr_channels, align 8, !dbg !5195
  %conv1 = zext i16 %3 to i32, !dbg !5193
  %cmp = icmp sge i32 %conv, %conv1, !dbg !5196
  br i1 %cmp, label %if.then, label %if.end, !dbg !5197

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5198

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %chip.addr, align 8, !dbg !5199
  %hsu3 = getelementptr inbounds %struct.hsu_dma_chip, ptr %4, i32 0, i32 5, !dbg !5200
  %5 = load ptr, ptr %hsu3, align 8, !dbg !5200
  %chan = getelementptr inbounds %struct.hsu_dma, ptr %5, i32 0, i32 1, !dbg !5201
  %6 = load ptr, ptr %chan, align 8, !dbg !5201
  %7 = load i16, ptr %nr.addr, align 2, !dbg !5202
  %idxprom = zext i16 %7 to i64, !dbg !5199
  %arrayidx = getelementptr %struct.hsu_dma_chan, ptr %6, i64 %idxprom, !dbg !5199
  store ptr %arrayidx, ptr %hsuc, align 8, !dbg !5203
  br label %do.body, !dbg !5204

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5205

do.body4:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !5206
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5177, metadata !DIExpression()), !dbg !5206
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !5206
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5181, metadata !DIExpression()), !dbg !5206
  %cmp5 = icmp eq ptr %__dummy, %__dummy2, !dbg !5206
  %conv6 = zext i1 %cmp5 to i32, !dbg !5206
  store i32 1, ptr %tmp, align 4, !dbg !5206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !5207
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !5207
  %8 = load i32, ptr %tmp, align 4, !dbg !5206
  %9 = load ptr, ptr %hsuc, align 8, !dbg !5207
  %vchan = getelementptr inbounds %struct.hsu_dma_chan, ptr %9, i32 0, i32 0, !dbg !5207
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan, i32 0, i32 3, !dbg !5207
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !5207
  %call7 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !5207
  store i64 %call7, ptr %flags, align 8, !dbg !5207
  br label %do.cond, !dbg !5207

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !5207

do.end:                                           ; preds = %do.cond
  br label %do.cond8, !dbg !5205

do.cond8:                                         ; preds = %do.end
  br label %do.end9, !dbg !5205

do.end9:                                          ; preds = %do.cond8
  %10 = load ptr, ptr %hsuc, align 8, !dbg !5208
  %call10 = call i32 @hsu_chan_readl(ptr noundef %10, i32 noundef 0) #19, !dbg !5209
  store i32 %call10, ptr %sr, align 4, !dbg !5210
  %11 = load ptr, ptr %hsuc, align 8, !dbg !5211
  %vchan11 = getelementptr inbounds %struct.hsu_dma_chan, ptr %11, i32 0, i32 0, !dbg !5212
  %lock12 = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan11, i32 0, i32 3, !dbg !5213
  %12 = load i64, ptr %flags, align 8, !dbg !5214
  call void @spin_unlock_irqrestore(ptr noundef %lock12, i64 noundef %12) #19, !dbg !5215
  %13 = load i32, ptr %sr, align 4, !dbg !5216
  %conv13 = zext i32 %13 to i64, !dbg !5216
  %and = and i64 %conv13, -3222208513, !dbg !5216
  %conv14 = trunc i64 %and to i32, !dbg !5216
  store i32 %conv14, ptr %sr, align 4, !dbg !5216
  %14 = load i32, ptr %sr, align 4, !dbg !5217
  %tobool = icmp ne i32 %14, 0, !dbg !5217
  br i1 %tobool, label %if.end16, label %if.then15, !dbg !5219

if.then15:                                        ; preds = %do.end9
  store i32 -5, ptr %retval, align 4, !dbg !5220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5220

if.end16:                                         ; preds = %do.end9
  %15 = load i32, ptr %sr, align 4, !dbg !5221
  %conv17 = zext i32 %15 to i64, !dbg !5221
  %and18 = and i64 %conv17, 3840, !dbg !5223
  %tobool19 = icmp ne i64 %and18, 0, !dbg !5223
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5224

if.then20:                                        ; preds = %if.end16
  call void @__const_udelay(i64 noundef 8590) #19, !dbg !5225
  br label %if.end21, !dbg !5230

if.end21:                                         ; preds = %if.then20, %if.end16
  %16 = load i32, ptr %sr, align 4, !dbg !5231
  %conv22 = zext i32 %16 to i64, !dbg !5231
  %and23 = and i64 %conv22, -3841, !dbg !5231
  %conv24 = trunc i64 %and23 to i32, !dbg !5231
  store i32 %conv24, ptr %sr, align 4, !dbg !5231
  %17 = load i32, ptr %sr, align 4, !dbg !5232
  %18 = load ptr, ptr %status.addr, align 8, !dbg !5233
  store i32 %17, ptr %18, align 4, !dbg !5234
  %19 = load i32, ptr %sr, align 4, !dbg !5235
  %tobool25 = icmp ne i32 %19, 0, !dbg !5235
  %20 = zext i1 %tobool25 to i64, !dbg !5235
  %cond = select i1 %tobool25, i32 0, i32 1, !dbg !5235
  store i32 %cond, ptr %retval, align 4, !dbg !5236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5236

cleanup:                                          ; preds = %if.end21, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sr) #18, !dbg !5237
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !5237
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsuc) #18, !dbg !5237
  %21 = load i32, ptr %retval, align 4, !dbg !5237
  ret i32 %21, !dbg !5237
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5238 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !5243 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5250
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5251
  ret ptr %1, !dbg !5252
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hsu_chan_readl(ptr noundef %hsuc, i32 noundef %offset) #5 align 16 !dbg !5253 {
entry:
  %hsuc.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  store ptr %hsuc, ptr %hsuc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hsuc.addr, metadata !5257, metadata !DIExpression()), !dbg !5259
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5258, metadata !DIExpression()), !dbg !5260
  %0 = load ptr, ptr %hsuc.addr, align 8, !dbg !5261
  %reg = getelementptr inbounds %struct.hsu_dma_chan, ptr %0, i32 0, i32 1, !dbg !5262
  %1 = load ptr, ptr %reg, align 8, !dbg !5262
  %2 = load i32, ptr %offset.addr, align 4, !dbg !5263
  %idx.ext = sext i32 %2 to i64, !dbg !5264
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext, !dbg !5264
  %call = call i32 @readl(ptr noundef %add.ptr) #19, !dbg !5265
  ret i32 %call, !dbg !5266
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !5267 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5271, metadata !DIExpression()), !dbg !5277
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5272, metadata !DIExpression()), !dbg !5278
  br label %do.body, !dbg !5279

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !5280
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5273, metadata !DIExpression()), !dbg !5280
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !5280
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5276, metadata !DIExpression()), !dbg !5280
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5280
  %conv = zext i1 %cmp to i32, !dbg !5280
  store i32 1, ptr %tmp, align 4, !dbg !5280
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !5281
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !5281
  %0 = load i32, ptr %tmp, align 4, !dbg !5280
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5281
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5281
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5281
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #19, !dbg !5281
  br label %do.end, !dbg !5281

do.end:                                           ; preds = %do.body
  ret void, !dbg !5282
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5283 dso_local void @__const_udelay(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hsu_dma_do_irq(ptr noundef %chip, i16 noundef zeroext %nr, i32 noundef %status) #0 align 16 !dbg !5285 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca ptr, align 8
  %nr.addr = alloca i16, align 2
  %status.addr = alloca i32, align 4
  %stat = alloca ptr, align 8
  %hsuc = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store ptr %chip, ptr %chip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chip.addr, metadata !5289, metadata !DIExpression()), !dbg !5306
  store i16 %nr, ptr %nr.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5290, metadata !DIExpression()), !dbg !5307
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !5291, metadata !DIExpression()), !dbg !5308
  call void @llvm.lifetime.start.p0(i64 8, ptr %stat) #18, !dbg !5309
  call void @llvm.dbg.declare(metadata ptr %stat, metadata !5292, metadata !DIExpression()), !dbg !5310
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsuc) #18, !dbg !5311
  call void @llvm.dbg.declare(metadata ptr %hsuc, metadata !5293, metadata !DIExpression()), !dbg !5312
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #18, !dbg !5313
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5294, metadata !DIExpression()), !dbg !5314
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !5315
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5295, metadata !DIExpression()), !dbg !5316
  %0 = load i16, ptr %nr.addr, align 2, !dbg !5317
  %conv = zext i16 %0 to i32, !dbg !5317
  %1 = load ptr, ptr %chip.addr, align 8, !dbg !5319
  %hsu = getelementptr inbounds %struct.hsu_dma_chip, ptr %1, i32 0, i32 5, !dbg !5320
  %2 = load ptr, ptr %hsu, align 8, !dbg !5320
  %nr_channels = getelementptr inbounds %struct.hsu_dma, ptr %2, i32 0, i32 2, !dbg !5321
  %3 = load i16, ptr %nr_channels, align 8, !dbg !5321
  %conv1 = zext i16 %3 to i32, !dbg !5319
  %cmp = icmp sge i32 %conv, %conv1, !dbg !5322
  br i1 %cmp, label %if.then, label %if.end, !dbg !5323

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5324

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %chip.addr, align 8, !dbg !5325
  %hsu3 = getelementptr inbounds %struct.hsu_dma_chip, ptr %4, i32 0, i32 5, !dbg !5326
  %5 = load ptr, ptr %hsu3, align 8, !dbg !5326
  %chan = getelementptr inbounds %struct.hsu_dma, ptr %5, i32 0, i32 1, !dbg !5327
  %6 = load ptr, ptr %chan, align 8, !dbg !5327
  %7 = load i16, ptr %nr.addr, align 2, !dbg !5328
  %idxprom = zext i16 %7 to i64, !dbg !5325
  %arrayidx = getelementptr %struct.hsu_dma_chan, ptr %6, i64 %idxprom, !dbg !5325
  store ptr %arrayidx, ptr %hsuc, align 8, !dbg !5329
  br label %do.body, !dbg !5330

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #18, !dbg !5331
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5296, metadata !DIExpression()), !dbg !5331
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5331
  %8 = load ptr, ptr %__vpp_verify, align 8, !dbg !5331
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #18, !dbg !5330
  br label %do.cond, !dbg !5331

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5331

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #18, !dbg !5332
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !5299, metadata !DIExpression()), !dbg !5332
  %9 = load ptr, ptr %hsuc, align 8, !dbg !5332
  %vchan = getelementptr inbounds %struct.hsu_dma_chan, ptr %9, i32 0, i32 0, !dbg !5332
  %chan4 = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan, i32 0, i32 0, !dbg !5332
  %local = getelementptr inbounds %struct.dma_chan, ptr %chan4, i32 0, i32 9, !dbg !5332
  %10 = load ptr, ptr %local, align 8, !dbg !5332
  %11 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr %10) #20, !dbg !5332, !srcloc !5333
  store i64 %11, ptr %tcp_ptr__, align 8, !dbg !5332
  %12 = load i64, ptr %tcp_ptr__, align 8, !dbg !5332
  %13 = inttoptr i64 %12 to ptr, !dbg !5332
  store ptr %13, ptr %tmp5, align 8, !dbg !5332
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #18, !dbg !5330
  %14 = load ptr, ptr %tmp5, align 8, !dbg !5332
  store ptr %14, ptr %tmp, align 8, !dbg !5331
  %15 = load ptr, ptr %tmp, align 8, !dbg !5330
  store ptr %15, ptr %stat, align 8, !dbg !5334
  br label %do.body6, !dbg !5335

do.body6:                                         ; preds = %do.end
  br label %do.body7, !dbg !5336

do.body7:                                         ; preds = %do.body6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5301, metadata !DIExpression()), !dbg !5337
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5305, metadata !DIExpression()), !dbg !5337
  %cmp8 = icmp eq ptr %__dummy, %__dummy2, !dbg !5337
  %conv9 = zext i1 %cmp8 to i32, !dbg !5337
  store i32 1, ptr %tmp10, align 4, !dbg !5337
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !5338
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !5338
  %16 = load i32, ptr %tmp10, align 4, !dbg !5337
  %17 = load ptr, ptr %hsuc, align 8, !dbg !5338
  %vchan11 = getelementptr inbounds %struct.hsu_dma_chan, ptr %17, i32 0, i32 0, !dbg !5338
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan11, i32 0, i32 3, !dbg !5338
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !5338
  %call12 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !5338
  store i64 %call12, ptr %flags, align 8, !dbg !5338
  br label %do.cond13, !dbg !5338

do.cond13:                                        ; preds = %do.body7
  br label %do.end14, !dbg !5338

do.end14:                                         ; preds = %do.cond13
  br label %do.cond15, !dbg !5336

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5336

do.end16:                                         ; preds = %do.cond15
  %18 = load ptr, ptr %hsuc, align 8, !dbg !5339
  %desc17 = getelementptr inbounds %struct.hsu_dma_chan, ptr %18, i32 0, i32 4, !dbg !5340
  %19 = load ptr, ptr %desc17, align 8, !dbg !5340
  store ptr %19, ptr %desc, align 8, !dbg !5341
  %20 = load ptr, ptr %desc, align 8, !dbg !5342
  %tobool = icmp ne ptr %20, null, !dbg !5342
  br i1 %tobool, label %if.then18, label %if.end30, !dbg !5344

if.then18:                                        ; preds = %do.end16
  %21 = load i32, ptr %status.addr, align 4, !dbg !5345
  %conv19 = zext i32 %21 to i64, !dbg !5345
  %and = and i64 %conv19, 32768, !dbg !5348
  %tobool20 = icmp ne i64 %and, 0, !dbg !5348
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !5349

if.then21:                                        ; preds = %if.then18
  %22 = load ptr, ptr %desc, align 8, !dbg !5350
  %status22 = getelementptr inbounds %struct.hsu_dma_desc, ptr %22, i32 0, i32 6, !dbg !5352
  store i32 3, ptr %status22, align 4, !dbg !5353
  br label %if.end29, !dbg !5354

if.else:                                          ; preds = %if.then18
  %23 = load ptr, ptr %desc, align 8, !dbg !5355
  %active = getelementptr inbounds %struct.hsu_dma_desc, ptr %23, i32 0, i32 5, !dbg !5357
  %24 = load i32, ptr %active, align 8, !dbg !5357
  %25 = load ptr, ptr %desc, align 8, !dbg !5358
  %nents = getelementptr inbounds %struct.hsu_dma_desc, ptr %25, i32 0, i32 3, !dbg !5359
  %26 = load i32, ptr %nents, align 8, !dbg !5359
  %cmp23 = icmp ult i32 %24, %26, !dbg !5360
  br i1 %cmp23, label %if.then25, label %if.else26, !dbg !5361

if.then25:                                        ; preds = %if.else
  %27 = load ptr, ptr %hsuc, align 8, !dbg !5362
  call void @hsu_dma_start_channel(ptr noundef %27) #19, !dbg !5364
  br label %if.end28, !dbg !5365

if.else26:                                        ; preds = %if.else
  %28 = load ptr, ptr %desc, align 8, !dbg !5366
  %vdesc = getelementptr inbounds %struct.hsu_dma_desc, ptr %28, i32 0, i32 0, !dbg !5368
  call void @vchan_cookie_complete(ptr noundef %vdesc) #19, !dbg !5369
  %29 = load ptr, ptr %desc, align 8, !dbg !5370
  %status27 = getelementptr inbounds %struct.hsu_dma_desc, ptr %29, i32 0, i32 6, !dbg !5371
  store i32 0, ptr %status27, align 4, !dbg !5372
  %30 = load ptr, ptr %desc, align 8, !dbg !5373
  %length = getelementptr inbounds %struct.hsu_dma_desc, ptr %30, i32 0, i32 4, !dbg !5374
  %31 = load i64, ptr %length, align 8, !dbg !5374
  %32 = load ptr, ptr %stat, align 8, !dbg !5375
  %bytes_transferred = getelementptr inbounds %struct.dma_chan_percpu, ptr %32, i32 0, i32 1, !dbg !5376
  %33 = load i64, ptr %bytes_transferred, align 8, !dbg !5377
  %add = add i64 %33, %31, !dbg !5377
  store i64 %add, ptr %bytes_transferred, align 8, !dbg !5377
  %34 = load ptr, ptr %hsuc, align 8, !dbg !5378
  call void @hsu_dma_start_transfer(ptr noundef %34) #19, !dbg !5379
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then25
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then21
  br label %if.end30, !dbg !5380

if.end30:                                         ; preds = %if.end29, %do.end16
  %35 = load ptr, ptr %hsuc, align 8, !dbg !5381
  %vchan31 = getelementptr inbounds %struct.hsu_dma_chan, ptr %35, i32 0, i32 0, !dbg !5382
  %lock32 = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan31, i32 0, i32 3, !dbg !5383
  %36 = load i64, ptr %flags, align 8, !dbg !5384
  call void @spin_unlock_irqrestore(ptr noundef %lock32, i64 noundef %36) #19, !dbg !5385
  store i32 1, ptr %retval, align 4, !dbg !5386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5386

cleanup:                                          ; preds = %if.end30, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !5387
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #18, !dbg !5387
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsuc) #18, !dbg !5387
  call void @llvm.lifetime.end.p0(i64 8, ptr %stat) #18, !dbg !5387
  %37 = load i32, ptr %retval, align 4, !dbg !5387
  ret i32 %37, !dbg !5387
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsu_dma_start_channel(ptr noundef %hsuc) #0 align 16 !dbg !5388 {
entry:
  %hsuc.addr = alloca ptr, align 8
  store ptr %hsuc, ptr %hsuc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hsuc.addr, metadata !5392, metadata !DIExpression()), !dbg !5393
  %0 = load ptr, ptr %hsuc.addr, align 8, !dbg !5394
  call void @hsu_dma_chan_start(ptr noundef %0) #19, !dbg !5395
  ret void, !dbg !5396
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vchan_cookie_complete(ptr noundef %vd) #5 align 16 !dbg !5397 {
entry:
  %vd.addr = alloca ptr, align 8
  %vc = alloca ptr, align 8
  %cookie = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !5399, metadata !DIExpression()), !dbg !5402
  call void @llvm.lifetime.start.p0(i64 8, ptr %vc) #18, !dbg !5403
  call void @llvm.dbg.declare(metadata ptr %vc, metadata !5400, metadata !DIExpression()), !dbg !5404
  %0 = load ptr, ptr %vd.addr, align 8, !dbg !5405
  %tx = getelementptr inbounds %struct.virt_dma_desc, ptr %0, i32 0, i32 0, !dbg !5406
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3, !dbg !5407
  %1 = load ptr, ptr %chan, align 8, !dbg !5407
  %call = call ptr @to_virt_chan(ptr noundef %1) #19, !dbg !5408
  store ptr %call, ptr %vc, align 8, !dbg !5404
  call void @llvm.lifetime.start.p0(i64 4, ptr %cookie) #18, !dbg !5409
  call void @llvm.dbg.declare(metadata ptr %cookie, metadata !5401, metadata !DIExpression()), !dbg !5410
  %2 = load ptr, ptr %vd.addr, align 8, !dbg !5411
  %tx1 = getelementptr inbounds %struct.virt_dma_desc, ptr %2, i32 0, i32 0, !dbg !5412
  %cookie2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx1, i32 0, i32 0, !dbg !5413
  %3 = load i32, ptr %cookie2, align 8, !dbg !5413
  store i32 %3, ptr %cookie, align 4, !dbg !5414
  %4 = load ptr, ptr %vd.addr, align 8, !dbg !5415
  %tx3 = getelementptr inbounds %struct.virt_dma_desc, ptr %4, i32 0, i32 0, !dbg !5416
  call void @dma_cookie_complete(ptr noundef %tx3) #19, !dbg !5417
  %5 = load ptr, ptr %vd.addr, align 8, !dbg !5418
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %5, i32 0, i32 2, !dbg !5419
  %6 = load ptr, ptr %vc, align 8, !dbg !5420
  %desc_completed = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 7, !dbg !5421
  call void @list_add_tail(ptr noundef %node, ptr noundef %desc_completed) #19, !dbg !5422
  %7 = load ptr, ptr %vc, align 8, !dbg !5423
  %task = getelementptr inbounds %struct.virt_dma_chan, ptr %7, i32 0, i32 1, !dbg !5424
  call void @tasklet_schedule(ptr noundef %task) #19, !dbg !5425
  call void @llvm.lifetime.end.p0(i64 4, ptr %cookie) #18, !dbg !5426
  call void @llvm.lifetime.end.p0(i64 8, ptr %vc) #18, !dbg !5426
  ret void, !dbg !5426
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsu_dma_start_transfer(ptr noundef %hsuc) #0 align 16 !dbg !5427 {
entry:
  %hsuc.addr = alloca ptr, align 8
  %vdesc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hsuc, ptr %hsuc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hsuc.addr, metadata !5429, metadata !DIExpression()), !dbg !5431
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdesc) #18, !dbg !5432
  call void @llvm.dbg.declare(metadata ptr %vdesc, metadata !5430, metadata !DIExpression()), !dbg !5433
  %0 = load ptr, ptr %hsuc.addr, align 8, !dbg !5434
  %vchan = getelementptr inbounds %struct.hsu_dma_chan, ptr %0, i32 0, i32 0, !dbg !5435
  %call = call ptr @vchan_next_desc(ptr noundef %vchan) #19, !dbg !5436
  store ptr %call, ptr %vdesc, align 8, !dbg !5437
  %1 = load ptr, ptr %vdesc, align 8, !dbg !5438
  %tobool = icmp ne ptr %1, null, !dbg !5438
  br i1 %tobool, label %if.end, label %if.then, !dbg !5440

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %hsuc.addr, align 8, !dbg !5441
  %desc = getelementptr inbounds %struct.hsu_dma_chan, ptr %2, i32 0, i32 4, !dbg !5443
  store ptr null, ptr %desc, align 8, !dbg !5444
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5445

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %vdesc, align 8, !dbg !5446
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %3, i32 0, i32 2, !dbg !5447
  call void @list_del(ptr noundef %node) #19, !dbg !5448
  %4 = load ptr, ptr %vdesc, align 8, !dbg !5449
  %call1 = call ptr @to_hsu_dma_desc(ptr noundef %4) #19, !dbg !5450
  %5 = load ptr, ptr %hsuc.addr, align 8, !dbg !5451
  %desc2 = getelementptr inbounds %struct.hsu_dma_chan, ptr %5, i32 0, i32 4, !dbg !5452
  store ptr %call1, ptr %desc2, align 8, !dbg !5453
  %6 = load ptr, ptr %hsuc.addr, align 8, !dbg !5454
  call void @hsu_dma_start_channel(ptr noundef %6) #19, !dbg !5455
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5456
  br label %cleanup, !dbg !5456

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdesc) #18, !dbg !5456
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5456

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hsu_dma_probe(ptr noundef %chip) #0 align 16 !dbg !5457 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca ptr, align 8
  %hsu = alloca ptr, align 8
  %addr = alloca ptr, align 8
  %i = alloca i16, align 2
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %hsuc = alloca ptr, align 8
  store ptr %chip, ptr %chip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chip.addr, metadata !5461, metadata !DIExpression()), !dbg !5470
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsu) #18, !dbg !5471
  call void @llvm.dbg.declare(metadata ptr %hsu, metadata !5462, metadata !DIExpression()), !dbg !5472
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #18, !dbg !5473
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !5463, metadata !DIExpression()), !dbg !5474
  %0 = load ptr, ptr %chip.addr, align 8, !dbg !5475
  %regs = getelementptr inbounds %struct.hsu_dma_chip, ptr %0, i32 0, i32 2, !dbg !5476
  %1 = load ptr, ptr %regs, align 8, !dbg !5476
  %2 = load ptr, ptr %chip.addr, align 8, !dbg !5477
  %offset = getelementptr inbounds %struct.hsu_dma_chip, ptr %2, i32 0, i32 4, !dbg !5478
  %3 = load i32, ptr %offset, align 4, !dbg !5478
  %idx.ext = zext i32 %3 to i64, !dbg !5479
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext, !dbg !5479
  store ptr %add.ptr, ptr %addr, align 8, !dbg !5474
  call void @llvm.lifetime.start.p0(i64 2, ptr %i) #18, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5464, metadata !DIExpression()), !dbg !5481
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5482
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5465, metadata !DIExpression()), !dbg !5483
  %4 = load ptr, ptr %chip.addr, align 8, !dbg !5484
  %dev = getelementptr inbounds %struct.hsu_dma_chip, ptr %4, i32 0, i32 0, !dbg !5485
  %5 = load ptr, ptr %dev, align 8, !dbg !5485
  %call = call ptr @devm_kzalloc(ptr noundef %5, i64 noundef 400, i32 noundef 3264) #19, !dbg !5486
  store ptr %call, ptr %hsu, align 8, !dbg !5487
  %6 = load ptr, ptr %hsu, align 8, !dbg !5488
  %tobool = icmp ne ptr %6, null, !dbg !5488
  br i1 %tobool, label %if.end, label %if.then, !dbg !5490

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5491

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %hsu, align 8, !dbg !5492
  %8 = load ptr, ptr %chip.addr, align 8, !dbg !5493
  %hsu1 = getelementptr inbounds %struct.hsu_dma_chip, ptr %8, i32 0, i32 5, !dbg !5494
  store ptr %7, ptr %hsu1, align 8, !dbg !5495
  %9 = load ptr, ptr %chip.addr, align 8, !dbg !5496
  %length = getelementptr inbounds %struct.hsu_dma_chip, ptr %9, i32 0, i32 3, !dbg !5497
  %10 = load i32, ptr %length, align 8, !dbg !5497
  %11 = load ptr, ptr %chip.addr, align 8, !dbg !5498
  %offset2 = getelementptr inbounds %struct.hsu_dma_chip, ptr %11, i32 0, i32 4, !dbg !5499
  %12 = load i32, ptr %offset2, align 4, !dbg !5499
  %sub = sub i32 %10, %12, !dbg !5500
  %div = udiv i32 %sub, 64, !dbg !5501
  %conv = trunc i32 %div to i16, !dbg !5502
  %13 = load ptr, ptr %hsu, align 8, !dbg !5503
  %nr_channels = getelementptr inbounds %struct.hsu_dma, ptr %13, i32 0, i32 2, !dbg !5504
  store i16 %conv, ptr %nr_channels, align 8, !dbg !5505
  %14 = load ptr, ptr %chip.addr, align 8, !dbg !5506
  %dev3 = getelementptr inbounds %struct.hsu_dma_chip, ptr %14, i32 0, i32 0, !dbg !5507
  %15 = load ptr, ptr %dev3, align 8, !dbg !5507
  %16 = load ptr, ptr %hsu, align 8, !dbg !5508
  %nr_channels4 = getelementptr inbounds %struct.hsu_dma, ptr %16, i32 0, i32 2, !dbg !5509
  %17 = load i16, ptr %nr_channels4, align 8, !dbg !5509
  %conv5 = zext i16 %17 to i64, !dbg !5508
  %call6 = call ptr @devm_kcalloc(ptr noundef %15, i64 noundef %conv5, i64 noundef 352, i32 noundef 3264) #19, !dbg !5510
  %18 = load ptr, ptr %hsu, align 8, !dbg !5511
  %chan = getelementptr inbounds %struct.hsu_dma, ptr %18, i32 0, i32 1, !dbg !5512
  store ptr %call6, ptr %chan, align 8, !dbg !5513
  %19 = load ptr, ptr %hsu, align 8, !dbg !5514
  %chan7 = getelementptr inbounds %struct.hsu_dma, ptr %19, i32 0, i32 1, !dbg !5516
  %20 = load ptr, ptr %chan7, align 8, !dbg !5516
  %tobool8 = icmp ne ptr %20, null, !dbg !5514
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5517

if.then9:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5518

if.end10:                                         ; preds = %if.end
  %21 = load ptr, ptr %hsu, align 8, !dbg !5519
  %dma = getelementptr inbounds %struct.hsu_dma, ptr %21, i32 0, i32 0, !dbg !5520
  %channels = getelementptr inbounds %struct.dma_device, ptr %dma, i32 0, i32 3, !dbg !5521
  call void @INIT_LIST_HEAD(ptr noundef %channels) #19, !dbg !5522
  store i16 0, ptr %i, align 2, !dbg !5523
  br label %for.cond, !dbg !5524

for.cond:                                         ; preds = %for.inc, %if.end10
  %22 = load i16, ptr %i, align 2, !dbg !5525
  %conv11 = zext i16 %22 to i32, !dbg !5525
  %23 = load ptr, ptr %hsu, align 8, !dbg !5526
  %nr_channels12 = getelementptr inbounds %struct.hsu_dma, ptr %23, i32 0, i32 2, !dbg !5527
  %24 = load i16, ptr %nr_channels12, align 8, !dbg !5527
  %conv13 = zext i16 %24 to i32, !dbg !5526
  %cmp = icmp slt i32 %conv11, %conv13, !dbg !5528
  br i1 %cmp, label %for.body, label %for.end, !dbg !5529

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsuc) #18, !dbg !5530
  call void @llvm.dbg.declare(metadata ptr %hsuc, metadata !5466, metadata !DIExpression()), !dbg !5531
  %25 = load ptr, ptr %hsu, align 8, !dbg !5532
  %chan15 = getelementptr inbounds %struct.hsu_dma, ptr %25, i32 0, i32 1, !dbg !5533
  %26 = load ptr, ptr %chan15, align 8, !dbg !5533
  %27 = load i16, ptr %i, align 2, !dbg !5534
  %idxprom = zext i16 %27 to i64, !dbg !5532
  %arrayidx = getelementptr %struct.hsu_dma_chan, ptr %26, i64 %idxprom, !dbg !5532
  store ptr %arrayidx, ptr %hsuc, align 8, !dbg !5531
  %28 = load ptr, ptr %hsuc, align 8, !dbg !5535
  %vchan = getelementptr inbounds %struct.hsu_dma_chan, ptr %28, i32 0, i32 0, !dbg !5536
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan, i32 0, i32 2, !dbg !5537
  store ptr @hsu_dma_desc_free, ptr %desc_free, align 8, !dbg !5538
  %29 = load ptr, ptr %hsuc, align 8, !dbg !5539
  %vchan16 = getelementptr inbounds %struct.hsu_dma_chan, ptr %29, i32 0, i32 0, !dbg !5540
  %30 = load ptr, ptr %hsu, align 8, !dbg !5541
  %dma17 = getelementptr inbounds %struct.hsu_dma, ptr %30, i32 0, i32 0, !dbg !5542
  call void @vchan_init(ptr noundef %vchan16, ptr noundef %dma17) #19, !dbg !5543
  %31 = load i16, ptr %i, align 2, !dbg !5544
  %conv18 = zext i16 %31 to i32, !dbg !5544
  %and = and i32 %conv18, 1, !dbg !5545
  %tobool19 = icmp ne i32 %and, 0, !dbg !5546
  %32 = zext i1 %tobool19 to i64, !dbg !5546
  %cond = select i1 %tobool19, i32 2, i32 1, !dbg !5546
  %33 = load ptr, ptr %hsuc, align 8, !dbg !5547
  %direction = getelementptr inbounds %struct.hsu_dma_chan, ptr %33, i32 0, i32 2, !dbg !5548
  store i32 %cond, ptr %direction, align 8, !dbg !5549
  %34 = load ptr, ptr %addr, align 8, !dbg !5550
  %35 = load i16, ptr %i, align 2, !dbg !5551
  %conv20 = zext i16 %35 to i32, !dbg !5551
  %mul = mul i32 %conv20, 64, !dbg !5552
  %idx.ext21 = sext i32 %mul to i64, !dbg !5553
  %add.ptr22 = getelementptr i8, ptr %34, i64 %idx.ext21, !dbg !5553
  %36 = load ptr, ptr %hsuc, align 8, !dbg !5554
  %reg = getelementptr inbounds %struct.hsu_dma_chan, ptr %36, i32 0, i32 1, !dbg !5555
  store ptr %add.ptr22, ptr %reg, align 8, !dbg !5556
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsuc) #18, !dbg !5557
  br label %for.inc, !dbg !5558

for.inc:                                          ; preds = %for.body
  %37 = load i16, ptr %i, align 2, !dbg !5559
  %inc = add i16 %37, 1, !dbg !5559
  store i16 %inc, ptr %i, align 2, !dbg !5559
  br label %for.cond, !dbg !5560, !llvm.loop !5561

for.end:                                          ; preds = %for.cond
  %38 = load ptr, ptr %hsu, align 8, !dbg !5565
  %dma23 = getelementptr inbounds %struct.hsu_dma, ptr %38, i32 0, i32 0, !dbg !5565
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %dma23, i32 0, i32 6, !dbg !5565
  call void @__dma_cap_set(i32 noundef 10, ptr noundef %cap_mask) #19, !dbg !5565
  %39 = load ptr, ptr %hsu, align 8, !dbg !5566
  %dma24 = getelementptr inbounds %struct.hsu_dma, ptr %39, i32 0, i32 0, !dbg !5566
  %cap_mask25 = getelementptr inbounds %struct.dma_device, ptr %dma24, i32 0, i32 6, !dbg !5566
  call void @__dma_cap_set(i32 noundef 8, ptr noundef %cap_mask25) #19, !dbg !5566
  %40 = load ptr, ptr %hsu, align 8, !dbg !5567
  %dma26 = getelementptr inbounds %struct.hsu_dma, ptr %40, i32 0, i32 0, !dbg !5568
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %dma26, i32 0, i32 28, !dbg !5569
  store ptr @hsu_dma_free_chan_resources, ptr %device_free_chan_resources, align 8, !dbg !5570
  %41 = load ptr, ptr %hsu, align 8, !dbg !5571
  %dma27 = getelementptr inbounds %struct.hsu_dma, ptr %41, i32 0, i32 0, !dbg !5572
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %dma27, i32 0, i32 37, !dbg !5573
  store ptr @hsu_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 8, !dbg !5574
  %42 = load ptr, ptr %hsu, align 8, !dbg !5575
  %dma28 = getelementptr inbounds %struct.hsu_dma, ptr %42, i32 0, i32 0, !dbg !5576
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %dma28, i32 0, i32 48, !dbg !5577
  store ptr @hsu_dma_issue_pending, ptr %device_issue_pending, align 8, !dbg !5578
  %43 = load ptr, ptr %hsu, align 8, !dbg !5579
  %dma29 = getelementptr inbounds %struct.hsu_dma, ptr %43, i32 0, i32 0, !dbg !5580
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %dma29, i32 0, i32 47, !dbg !5581
  store ptr @hsu_dma_tx_status, ptr %device_tx_status, align 8, !dbg !5582
  %44 = load ptr, ptr %hsu, align 8, !dbg !5583
  %dma30 = getelementptr inbounds %struct.hsu_dma, ptr %44, i32 0, i32 0, !dbg !5584
  %device_config = getelementptr inbounds %struct.dma_device, ptr %dma30, i32 0, i32 42, !dbg !5585
  store ptr @hsu_dma_slave_config, ptr %device_config, align 8, !dbg !5586
  %45 = load ptr, ptr %hsu, align 8, !dbg !5587
  %dma31 = getelementptr inbounds %struct.hsu_dma, ptr %45, i32 0, i32 0, !dbg !5588
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %dma31, i32 0, i32 43, !dbg !5589
  store ptr @hsu_dma_pause, ptr %device_pause, align 8, !dbg !5590
  %46 = load ptr, ptr %hsu, align 8, !dbg !5591
  %dma32 = getelementptr inbounds %struct.hsu_dma, ptr %46, i32 0, i32 0, !dbg !5592
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %dma32, i32 0, i32 44, !dbg !5593
  store ptr @hsu_dma_resume, ptr %device_resume, align 8, !dbg !5594
  %47 = load ptr, ptr %hsu, align 8, !dbg !5595
  %dma33 = getelementptr inbounds %struct.hsu_dma, ptr %47, i32 0, i32 0, !dbg !5596
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %dma33, i32 0, i32 45, !dbg !5597
  store ptr @hsu_dma_terminate_all, ptr %device_terminate_all, align 8, !dbg !5598
  %48 = load ptr, ptr %hsu, align 8, !dbg !5599
  %dma34 = getelementptr inbounds %struct.hsu_dma, ptr %48, i32 0, i32 0, !dbg !5600
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %dma34, i32 0, i32 46, !dbg !5601
  store ptr @hsu_dma_synchronize, ptr %device_synchronize, align 8, !dbg !5602
  %49 = load ptr, ptr %hsu, align 8, !dbg !5603
  %dma35 = getelementptr inbounds %struct.hsu_dma, ptr %49, i32 0, i32 0, !dbg !5604
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %dma35, i32 0, i32 18, !dbg !5605
  store i32 65823, ptr %src_addr_widths, align 8, !dbg !5606
  %50 = load ptr, ptr %hsu, align 8, !dbg !5607
  %dma36 = getelementptr inbounds %struct.hsu_dma, ptr %50, i32 0, i32 0, !dbg !5608
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %dma36, i32 0, i32 19, !dbg !5609
  store i32 65823, ptr %dst_addr_widths, align 4, !dbg !5610
  %51 = load ptr, ptr %hsu, align 8, !dbg !5611
  %dma37 = getelementptr inbounds %struct.hsu_dma, ptr %51, i32 0, i32 0, !dbg !5612
  %directions = getelementptr inbounds %struct.dma_device, ptr %dma37, i32 0, i32 20, !dbg !5613
  store i32 6, ptr %directions, align 8, !dbg !5614
  %52 = load ptr, ptr %hsu, align 8, !dbg !5615
  %dma38 = getelementptr inbounds %struct.hsu_dma, ptr %52, i32 0, i32 0, !dbg !5616
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %dma38, i32 0, i32 25, !dbg !5617
  store i32 2, ptr %residue_granularity, align 4, !dbg !5618
  %53 = load ptr, ptr %chip.addr, align 8, !dbg !5619
  %dev39 = getelementptr inbounds %struct.hsu_dma_chip, ptr %53, i32 0, i32 0, !dbg !5620
  %54 = load ptr, ptr %dev39, align 8, !dbg !5620
  %55 = load ptr, ptr %hsu, align 8, !dbg !5621
  %dma40 = getelementptr inbounds %struct.hsu_dma, ptr %55, i32 0, i32 0, !dbg !5622
  %dev41 = getelementptr inbounds %struct.dma_device, ptr %dma40, i32 0, i32 15, !dbg !5623
  store ptr %54, ptr %dev41, align 8, !dbg !5624
  %56 = load ptr, ptr %hsu, align 8, !dbg !5625
  %dma42 = getelementptr inbounds %struct.hsu_dma, ptr %56, i32 0, i32 0, !dbg !5626
  %dev43 = getelementptr inbounds %struct.dma_device, ptr %dma42, i32 0, i32 15, !dbg !5627
  %57 = load ptr, ptr %dev43, align 8, !dbg !5627
  %call44 = call i32 @dma_set_max_seg_size(ptr noundef %57, i32 noundef 65535) #19, !dbg !5628
  %58 = load ptr, ptr %hsu, align 8, !dbg !5629
  %dma45 = getelementptr inbounds %struct.hsu_dma, ptr %58, i32 0, i32 0, !dbg !5630
  %call46 = call i32 @dma_async_device_register(ptr noundef %dma45) #19, !dbg !5631
  store i32 %call46, ptr %ret, align 4, !dbg !5632
  %59 = load i32, ptr %ret, align 4, !dbg !5633
  %tobool47 = icmp ne i32 %59, 0, !dbg !5633
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !5635

if.then48:                                        ; preds = %for.end
  %60 = load i32, ptr %ret, align 4, !dbg !5636
  store i32 %60, ptr %retval, align 4, !dbg !5637
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5637

if.end49:                                         ; preds = %for.end
  br label %do.body, !dbg !5638

do.body:                                          ; preds = %if.end49
  br label %do.cond, !dbg !5640

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5640

do.end:                                           ; preds = %do.cond
  %61 = load ptr, ptr %chip.addr, align 8, !dbg !5638
  %dev50 = getelementptr inbounds %struct.hsu_dma_chip, ptr %61, i32 0, i32 0, !dbg !5638
  %62 = load ptr, ptr %dev50, align 8, !dbg !5638
  %63 = load ptr, ptr %hsu, align 8, !dbg !5638
  %nr_channels51 = getelementptr inbounds %struct.hsu_dma, ptr %63, i32 0, i32 2, !dbg !5638
  %64 = load i16, ptr %nr_channels51, align 8, !dbg !5638
  %conv52 = zext i16 %64 to i32, !dbg !5638
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef @.str, i32 noundef %conv52) #21, !dbg !5638
  store i32 0, ptr %retval, align 4, !dbg !5642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5642

cleanup:                                          ; preds = %do.end, %if.then48, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 2, ptr %i) #18, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #18, !dbg !5643
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsu) #18, !dbg !5643
  %65 = load i32, ptr %retval, align 4, !dbg !5643
  ret i32 %65, !dbg !5643
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kzalloc(ptr noundef %dev, i64 noundef %size, i32 noundef %gfp) #5 align 16 !dbg !5644 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5648, metadata !DIExpression()), !dbg !5651
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5649, metadata !DIExpression()), !dbg !5652
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5650, metadata !DIExpression()), !dbg !5653
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5654
  %1 = load i64, ptr %size.addr, align 8, !dbg !5655
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !5656
  %or = or i32 %2, 256, !dbg !5657
  %call = call noalias ptr @devm_kmalloc(ptr noundef %0, i64 noundef %1, i32 noundef %or) #22, !dbg !5658
  ret ptr %call, !dbg !5659
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kcalloc(ptr noundef %dev, i64 noundef %n, i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5660 {
entry:
  %dev.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5664, metadata !DIExpression()), !dbg !5668
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5665, metadata !DIExpression()), !dbg !5669
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5666, metadata !DIExpression()), !dbg !5670
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5667, metadata !DIExpression()), !dbg !5671
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5672
  %1 = load i64, ptr %n.addr, align 8, !dbg !5673
  %2 = load i64, ptr %size.addr, align 8, !dbg !5674
  %3 = load i32, ptr %flags.addr, align 4, !dbg !5675
  %or = or i32 %3, 256, !dbg !5676
  %call = call ptr @devm_kmalloc_array(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %or) #19, !dbg !5677
  ret ptr %call, !dbg !5678
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !5679 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5684, metadata !DIExpression()), !dbg !5685
  br label %do.body, !dbg !5686

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5687

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5689

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5687

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5691
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5691
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5691
  store volatile ptr %0, ptr %next, align 8, !dbg !5691
  br label %do.end3, !dbg !5691

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5687

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5693

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5694

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5696

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5694

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5698
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5698
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5698
  store volatile ptr %2, ptr %prev, align 8, !dbg !5698
  br label %do.end9, !dbg !5698

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5694

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5700
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsu_dma_desc_free(ptr noundef %vdesc) #0 align 16 !dbg !5701 {
entry:
  %vdesc.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  store ptr %vdesc, ptr %vdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdesc.addr, metadata !5703, metadata !DIExpression()), !dbg !5705
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #18, !dbg !5706
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5704, metadata !DIExpression()), !dbg !5707
  %0 = load ptr, ptr %vdesc.addr, align 8, !dbg !5708
  %call = call ptr @to_hsu_dma_desc(ptr noundef %0) #19, !dbg !5709
  store ptr %call, ptr %desc, align 8, !dbg !5707
  %1 = load ptr, ptr %desc, align 8, !dbg !5710
  %sg = getelementptr inbounds %struct.hsu_dma_desc, ptr %1, i32 0, i32 2, !dbg !5711
  %2 = load ptr, ptr %sg, align 8, !dbg !5711
  call void @kfree(ptr noundef %2) #19, !dbg !5712
  %3 = load ptr, ptr %desc, align 8, !dbg !5713
  call void @kfree(ptr noundef %3) #19, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #18, !dbg !5715
  ret void, !dbg !5715
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5716 dso_local void @vchan_init(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__dma_cap_set(i32 noundef %tx_type, ptr noundef %dstp) #5 align 16 !dbg !5719 {
entry:
  %tx_type.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %tx_type, ptr %tx_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tx_type.addr, metadata !5724, metadata !DIExpression()), !dbg !5726
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !5725, metadata !DIExpression()), !dbg !5727
  %0 = load i32, ptr %tx_type.addr, align 4, !dbg !5728
  %conv = zext i32 %0 to i64, !dbg !5728
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !5729
  %bits = getelementptr inbounds %struct.dma_cap_mask_t, ptr %1, i32 0, i32 0, !dbg !5730
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5729
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #19, !dbg !5731
  ret void, !dbg !5732
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsu_dma_free_chan_resources(ptr noundef %chan) #0 align 16 !dbg !5733 {
entry:
  %chan.addr = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !5735, metadata !DIExpression()), !dbg !5736
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !5737
  %call = call ptr @to_virt_chan(ptr noundef %0) #19, !dbg !5738
  call void @vchan_free_chan_resources(ptr noundef %call) #19, !dbg !5739
  ret void, !dbg !5740
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hsu_dma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i64 noundef %flags, ptr noundef %context) #0 align 16 !dbg !5741 {
entry:
  %retval = alloca ptr, align 8
  %chan.addr = alloca ptr, align 8
  %sgl.addr = alloca ptr, align 8
  %sg_len.addr = alloca i32, align 4
  %direction.addr = alloca i32, align 4
  %flags.addr = alloca i64, align 8
  %context.addr = alloca ptr, align 8
  %hsuc = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %sg = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !5743, metadata !DIExpression()), !dbg !5753
  store ptr %sgl, ptr %sgl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sgl.addr, metadata !5744, metadata !DIExpression()), !dbg !5754
  store i32 %sg_len, ptr %sg_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sg_len.addr, metadata !5745, metadata !DIExpression()), !dbg !5755
  store i32 %direction, ptr %direction.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %direction.addr, metadata !5746, metadata !DIExpression()), !dbg !5756
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5747, metadata !DIExpression()), !dbg !5757
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !5748, metadata !DIExpression()), !dbg !5758
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsuc) #18, !dbg !5759
  call void @llvm.dbg.declare(metadata ptr %hsuc, metadata !5749, metadata !DIExpression()), !dbg !5760
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !5761
  %call = call ptr @to_hsu_dma_chan(ptr noundef %0) #19, !dbg !5762
  store ptr %call, ptr %hsuc, align 8, !dbg !5760
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #18, !dbg !5763
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5750, metadata !DIExpression()), !dbg !5764
  call void @llvm.lifetime.start.p0(i64 8, ptr %sg) #18, !dbg !5765
  call void @llvm.dbg.declare(metadata ptr %sg, metadata !5751, metadata !DIExpression()), !dbg !5766
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !5767
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5752, metadata !DIExpression()), !dbg !5768
  %1 = load i32, ptr %sg_len.addr, align 4, !dbg !5769
  %call1 = call ptr @hsu_dma_alloc_desc(i32 noundef %1) #19, !dbg !5770
  store ptr %call1, ptr %desc, align 8, !dbg !5771
  %2 = load ptr, ptr %desc, align 8, !dbg !5772
  %tobool = icmp ne ptr %2, null, !dbg !5772
  br i1 %tobool, label %if.end, label %if.then, !dbg !5774

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5775
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5775

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !5776
  %3 = load ptr, ptr %sgl.addr, align 8, !dbg !5776
  store ptr %3, ptr %sg, align 8, !dbg !5776
  br label %for.cond, !dbg !5776

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !5778
  %5 = load i32, ptr %sg_len.addr, align 4, !dbg !5778
  %cmp = icmp ult i32 %4, %5, !dbg !5778
  br i1 %cmp, label %for.body, label %for.end, !dbg !5776

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %sg, align 8, !dbg !5780
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 3, !dbg !5780
  %7 = load i64, ptr %dma_address, align 8, !dbg !5780
  %8 = load ptr, ptr %desc, align 8, !dbg !5782
  %sg2 = getelementptr inbounds %struct.hsu_dma_desc, ptr %8, i32 0, i32 2, !dbg !5783
  %9 = load ptr, ptr %sg2, align 8, !dbg !5783
  %10 = load i32, ptr %i, align 4, !dbg !5784
  %idxprom = zext i32 %10 to i64, !dbg !5782
  %arrayidx = getelementptr %struct.hsu_dma_sg, ptr %9, i64 %idxprom, !dbg !5782
  %addr = getelementptr inbounds %struct.hsu_dma_sg, ptr %arrayidx, i32 0, i32 0, !dbg !5785
  store i64 %7, ptr %addr, align 8, !dbg !5786
  %11 = load ptr, ptr %sg, align 8, !dbg !5787
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 4, !dbg !5787
  %12 = load i32, ptr %dma_length, align 8, !dbg !5787
  %13 = load ptr, ptr %desc, align 8, !dbg !5788
  %sg3 = getelementptr inbounds %struct.hsu_dma_desc, ptr %13, i32 0, i32 2, !dbg !5789
  %14 = load ptr, ptr %sg3, align 8, !dbg !5789
  %15 = load i32, ptr %i, align 4, !dbg !5790
  %idxprom4 = zext i32 %15 to i64, !dbg !5788
  %arrayidx5 = getelementptr %struct.hsu_dma_sg, ptr %14, i64 %idxprom4, !dbg !5788
  %len = getelementptr inbounds %struct.hsu_dma_sg, ptr %arrayidx5, i32 0, i32 1, !dbg !5791
  store i32 %12, ptr %len, align 8, !dbg !5792
  %16 = load ptr, ptr %sg, align 8, !dbg !5793
  %dma_length6 = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 4, !dbg !5793
  %17 = load i32, ptr %dma_length6, align 8, !dbg !5793
  %conv = zext i32 %17 to i64, !dbg !5793
  %18 = load ptr, ptr %desc, align 8, !dbg !5794
  %length = getelementptr inbounds %struct.hsu_dma_desc, ptr %18, i32 0, i32 4, !dbg !5795
  %19 = load i64, ptr %length, align 8, !dbg !5796
  %add = add i64 %19, %conv, !dbg !5796
  store i64 %add, ptr %length, align 8, !dbg !5796
  br label %for.inc, !dbg !5797

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4, !dbg !5778
  %inc = add i32 %20, 1, !dbg !5778
  store i32 %inc, ptr %i, align 4, !dbg !5778
  %21 = load ptr, ptr %sg, align 8, !dbg !5778
  %call7 = call ptr @sg_next(ptr noundef %21) #19, !dbg !5778
  store ptr %call7, ptr %sg, align 8, !dbg !5778
  br label %for.cond, !dbg !5778, !llvm.loop !5798

for.end:                                          ; preds = %for.cond
  %22 = load i32, ptr %sg_len.addr, align 4, !dbg !5800
  %23 = load ptr, ptr %desc, align 8, !dbg !5801
  %nents = getelementptr inbounds %struct.hsu_dma_desc, ptr %23, i32 0, i32 3, !dbg !5802
  store i32 %22, ptr %nents, align 8, !dbg !5803
  %24 = load i32, ptr %direction.addr, align 4, !dbg !5804
  %25 = load ptr, ptr %desc, align 8, !dbg !5805
  %direction8 = getelementptr inbounds %struct.hsu_dma_desc, ptr %25, i32 0, i32 1, !dbg !5806
  store i32 %24, ptr %direction8, align 8, !dbg !5807
  %26 = load ptr, ptr %desc, align 8, !dbg !5808
  %status = getelementptr inbounds %struct.hsu_dma_desc, ptr %26, i32 0, i32 6, !dbg !5809
  store i32 1, ptr %status, align 4, !dbg !5810
  %27 = load ptr, ptr %hsuc, align 8, !dbg !5811
  %vchan = getelementptr inbounds %struct.hsu_dma_chan, ptr %27, i32 0, i32 0, !dbg !5812
  %28 = load ptr, ptr %desc, align 8, !dbg !5813
  %vdesc = getelementptr inbounds %struct.hsu_dma_desc, ptr %28, i32 0, i32 0, !dbg !5814
  %29 = load i64, ptr %flags.addr, align 8, !dbg !5815
  %call9 = call ptr @vchan_tx_prep(ptr noundef %vchan, ptr noundef %vdesc, i64 noundef %29) #19, !dbg !5816
  store ptr %call9, ptr %retval, align 8, !dbg !5817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5817

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !5818
  call void @llvm.lifetime.end.p0(i64 8, ptr %sg) #18, !dbg !5818
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #18, !dbg !5818
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsuc) #18, !dbg !5818
  %30 = load ptr, ptr %retval, align 8, !dbg !5818
  ret ptr %30, !dbg !5818
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsu_dma_issue_pending(ptr noundef %chan) #0 align 16 !dbg !5819 {
entry:
  %chan.addr = alloca ptr, align 8
  %hsuc = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !5821, metadata !DIExpression()), !dbg !5829
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsuc) #18, !dbg !5830
  call void @llvm.dbg.declare(metadata ptr %hsuc, metadata !5822, metadata !DIExpression()), !dbg !5831
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !5832
  %call = call ptr @to_hsu_dma_chan(ptr noundef %0) #19, !dbg !5833
  store ptr %call, ptr %hsuc, align 8, !dbg !5831
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !5834
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5823, metadata !DIExpression()), !dbg !5835
  br label %do.body, !dbg !5836

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5837

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !5838
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5824, metadata !DIExpression()), !dbg !5838
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !5838
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5828, metadata !DIExpression()), !dbg !5838
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5838
  %conv = zext i1 %cmp to i32, !dbg !5838
  store i32 1, ptr %tmp, align 4, !dbg !5838
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !5839
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !5839
  %1 = load i32, ptr %tmp, align 4, !dbg !5838
  %2 = load ptr, ptr %hsuc, align 8, !dbg !5839
  %vchan = getelementptr inbounds %struct.hsu_dma_chan, ptr %2, i32 0, i32 0, !dbg !5839
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan, i32 0, i32 3, !dbg !5839
  %call2 = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !5839
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #19, !dbg !5839
  store i64 %call3, ptr %flags, align 8, !dbg !5839
  br label %do.cond, !dbg !5839

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5839

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5837

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5837

do.end5:                                          ; preds = %do.cond4
  %3 = load ptr, ptr %hsuc, align 8, !dbg !5840
  %vchan6 = getelementptr inbounds %struct.hsu_dma_chan, ptr %3, i32 0, i32 0, !dbg !5842
  %call7 = call zeroext i1 @vchan_issue_pending(ptr noundef %vchan6) #19, !dbg !5843
  br i1 %call7, label %land.lhs.true, label %if.end, !dbg !5844

land.lhs.true:                                    ; preds = %do.end5
  %4 = load ptr, ptr %hsuc, align 8, !dbg !5845
  %desc = getelementptr inbounds %struct.hsu_dma_chan, ptr %4, i32 0, i32 4, !dbg !5846
  %5 = load ptr, ptr %desc, align 8, !dbg !5846
  %tobool = icmp ne ptr %5, null, !dbg !5845
  br i1 %tobool, label %if.end, label %if.then, !dbg !5847

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %hsuc, align 8, !dbg !5848
  call void @hsu_dma_start_transfer(ptr noundef %6) #19, !dbg !5849
  br label %if.end, !dbg !5849

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end5
  %7 = load ptr, ptr %hsuc, align 8, !dbg !5850
  %vchan9 = getelementptr inbounds %struct.hsu_dma_chan, ptr %7, i32 0, i32 0, !dbg !5851
  %lock10 = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan9, i32 0, i32 3, !dbg !5852
  %8 = load i64, ptr %flags, align 8, !dbg !5853
  call void @spin_unlock_irqrestore(ptr noundef %lock10, i64 noundef %8) #19, !dbg !5854
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !5855
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsuc) #18, !dbg !5855
  ret void, !dbg !5855
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hsu_dma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef %state) #0 align 16 !dbg !5856 {
entry:
  %retval = alloca i32, align 4
  %chan.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %hsuc = alloca ptr, align 8
  %vdesc = alloca ptr, align 8
  %status = alloca i32, align 4
  %bytes = alloca i64, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !5858, metadata !DIExpression()), !dbg !5871
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !5859, metadata !DIExpression()), !dbg !5872
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5860, metadata !DIExpression()), !dbg !5873
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsuc) #18, !dbg !5874
  call void @llvm.dbg.declare(metadata ptr %hsuc, metadata !5861, metadata !DIExpression()), !dbg !5875
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !5876
  %call = call ptr @to_hsu_dma_chan(ptr noundef %0) #19, !dbg !5877
  store ptr %call, ptr %hsuc, align 8, !dbg !5875
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdesc) #18, !dbg !5878
  call void @llvm.dbg.declare(metadata ptr %vdesc, metadata !5862, metadata !DIExpression()), !dbg !5879
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #18, !dbg !5880
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5863, metadata !DIExpression()), !dbg !5881
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !5882
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5864, metadata !DIExpression()), !dbg !5883
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !5884
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5865, metadata !DIExpression()), !dbg !5885
  %1 = load ptr, ptr %chan.addr, align 8, !dbg !5886
  %2 = load i32, ptr %cookie.addr, align 4, !dbg !5887
  %3 = load ptr, ptr %state.addr, align 8, !dbg !5888
  %call1 = call i32 @dma_cookie_status(ptr noundef %1, i32 noundef %2, ptr noundef %3) #19, !dbg !5889
  store i32 %call1, ptr %status, align 4, !dbg !5890
  %4 = load i32, ptr %status, align 4, !dbg !5891
  %cmp = icmp eq i32 %4, 0, !dbg !5893
  br i1 %cmp, label %if.then, label %if.end, !dbg !5894

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %status, align 4, !dbg !5895
  store i32 %5, ptr %retval, align 4, !dbg !5896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5896

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5897

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !5898

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !5899
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5866, metadata !DIExpression()), !dbg !5899
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !5899
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5870, metadata !DIExpression()), !dbg !5899
  %cmp3 = icmp eq ptr %__dummy, %__dummy2, !dbg !5899
  %conv = zext i1 %cmp3 to i32, !dbg !5899
  store i32 1, ptr %tmp, align 4, !dbg !5899
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !5900
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !5900
  %6 = load i32, ptr %tmp, align 4, !dbg !5899
  %7 = load ptr, ptr %hsuc, align 8, !dbg !5900
  %vchan = getelementptr inbounds %struct.hsu_dma_chan, ptr %7, i32 0, i32 0, !dbg !5900
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan, i32 0, i32 3, !dbg !5900
  %call4 = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !5900
  %call5 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call4) #19, !dbg !5900
  store i64 %call5, ptr %flags, align 8, !dbg !5900
  br label %do.cond, !dbg !5900

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5900

do.end:                                           ; preds = %do.cond
  br label %do.cond6, !dbg !5898

do.cond6:                                         ; preds = %do.end
  br label %do.end7, !dbg !5898

do.end7:                                          ; preds = %do.cond6
  %8 = load ptr, ptr %hsuc, align 8, !dbg !5901
  %vchan8 = getelementptr inbounds %struct.hsu_dma_chan, ptr %8, i32 0, i32 0, !dbg !5902
  %9 = load i32, ptr %cookie.addr, align 4, !dbg !5903
  %call9 = call ptr @vchan_find_desc(ptr noundef %vchan8, i32 noundef %9) #19, !dbg !5904
  store ptr %call9, ptr %vdesc, align 8, !dbg !5905
  %10 = load ptr, ptr %hsuc, align 8, !dbg !5906
  %desc = getelementptr inbounds %struct.hsu_dma_chan, ptr %10, i32 0, i32 4, !dbg !5908
  %11 = load ptr, ptr %desc, align 8, !dbg !5908
  %tobool = icmp ne ptr %11, null, !dbg !5906
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !5909

land.lhs.true:                                    ; preds = %do.end7
  %12 = load i32, ptr %cookie.addr, align 4, !dbg !5910
  %13 = load ptr, ptr %hsuc, align 8, !dbg !5911
  %desc10 = getelementptr inbounds %struct.hsu_dma_chan, ptr %13, i32 0, i32 4, !dbg !5912
  %14 = load ptr, ptr %desc10, align 8, !dbg !5912
  %vdesc11 = getelementptr inbounds %struct.hsu_dma_desc, ptr %14, i32 0, i32 0, !dbg !5913
  %tx = getelementptr inbounds %struct.virt_dma_desc, ptr %vdesc11, i32 0, i32 0, !dbg !5914
  %cookie12 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 0, !dbg !5915
  %15 = load i32, ptr %cookie12, align 8, !dbg !5915
  %cmp13 = icmp eq i32 %12, %15, !dbg !5916
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !5917

if.then15:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %hsuc, align 8, !dbg !5918
  %call16 = call i64 @hsu_dma_active_desc_size(ptr noundef %16) #19, !dbg !5920
  store i64 %call16, ptr %bytes, align 8, !dbg !5921
  %17 = load ptr, ptr %state.addr, align 8, !dbg !5922
  %18 = load i64, ptr %bytes, align 8, !dbg !5923
  %conv17 = trunc i64 %18 to i32, !dbg !5923
  call void @dma_set_residue(ptr noundef %17, i32 noundef %conv17) #19, !dbg !5924
  %19 = load ptr, ptr %hsuc, align 8, !dbg !5925
  %desc18 = getelementptr inbounds %struct.hsu_dma_chan, ptr %19, i32 0, i32 4, !dbg !5926
  %20 = load ptr, ptr %desc18, align 8, !dbg !5926
  %status19 = getelementptr inbounds %struct.hsu_dma_desc, ptr %20, i32 0, i32 6, !dbg !5927
  %21 = load i32, ptr %status19, align 4, !dbg !5927
  store i32 %21, ptr %status, align 4, !dbg !5928
  br label %if.end25, !dbg !5929

if.else:                                          ; preds = %land.lhs.true, %do.end7
  %22 = load ptr, ptr %vdesc, align 8, !dbg !5930
  %tobool20 = icmp ne ptr %22, null, !dbg !5930
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !5932

if.then21:                                        ; preds = %if.else
  %23 = load ptr, ptr %vdesc, align 8, !dbg !5933
  %call22 = call ptr @to_hsu_dma_desc(ptr noundef %23) #19, !dbg !5935
  %length = getelementptr inbounds %struct.hsu_dma_desc, ptr %call22, i32 0, i32 4, !dbg !5936
  %24 = load i64, ptr %length, align 8, !dbg !5936
  store i64 %24, ptr %bytes, align 8, !dbg !5937
  %25 = load ptr, ptr %state.addr, align 8, !dbg !5938
  %26 = load i64, ptr %bytes, align 8, !dbg !5939
  %conv23 = trunc i64 %26 to i32, !dbg !5939
  call void @dma_set_residue(ptr noundef %25, i32 noundef %conv23) #19, !dbg !5940
  br label %if.end24, !dbg !5941

if.end24:                                         ; preds = %if.then21, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then15
  %27 = load ptr, ptr %hsuc, align 8, !dbg !5942
  %vchan26 = getelementptr inbounds %struct.hsu_dma_chan, ptr %27, i32 0, i32 0, !dbg !5943
  %lock27 = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan26, i32 0, i32 3, !dbg !5944
  %28 = load i64, ptr %flags, align 8, !dbg !5945
  call void @spin_unlock_irqrestore(ptr noundef %lock27, i64 noundef %28) #19, !dbg !5946
  %29 = load i32, ptr %status, align 4, !dbg !5947
  store i32 %29, ptr %retval, align 4, !dbg !5948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5948

cleanup:                                          ; preds = %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !5949
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !5949
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #18, !dbg !5949
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdesc) #18, !dbg !5949
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsuc) #18, !dbg !5949
  %30 = load i32, ptr %retval, align 4, !dbg !5949
  ret i32 %30, !dbg !5949
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hsu_dma_slave_config(ptr noundef %chan, ptr noundef %config) #0 align 16 !dbg !5950 {
entry:
  %chan.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %hsuc = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !5952, metadata !DIExpression()), !dbg !5955
  store ptr %config, ptr %config.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !5953, metadata !DIExpression()), !dbg !5956
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsuc) #18, !dbg !5957
  call void @llvm.dbg.declare(metadata ptr %hsuc, metadata !5954, metadata !DIExpression()), !dbg !5958
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !5959
  %call = call ptr @to_hsu_dma_chan(ptr noundef %0) #19, !dbg !5960
  store ptr %call, ptr %hsuc, align 8, !dbg !5958
  %1 = load ptr, ptr %hsuc, align 8, !dbg !5961
  %config1 = getelementptr inbounds %struct.hsu_dma_chan, ptr %1, i32 0, i32 3, !dbg !5962
  %2 = load ptr, ptr %config.addr, align 8, !dbg !5963
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %config1, ptr align 8 %2, i64 72, i1 false), !dbg !5964
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsuc) #18, !dbg !5965
  ret i32 0, !dbg !5966
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hsu_dma_pause(ptr noundef %chan) #0 align 16 !dbg !5967 {
entry:
  %chan.addr = alloca ptr, align 8
  %hsuc = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !5969, metadata !DIExpression()), !dbg !5977
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsuc) #18, !dbg !5978
  call void @llvm.dbg.declare(metadata ptr %hsuc, metadata !5970, metadata !DIExpression()), !dbg !5979
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !5980
  %call = call ptr @to_hsu_dma_chan(ptr noundef %0) #19, !dbg !5981
  store ptr %call, ptr %hsuc, align 8, !dbg !5979
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !5982
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5971, metadata !DIExpression()), !dbg !5983
  br label %do.body, !dbg !5984

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5985

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !5986
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5972, metadata !DIExpression()), !dbg !5986
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !5986
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5976, metadata !DIExpression()), !dbg !5986
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5986
  %conv = zext i1 %cmp to i32, !dbg !5986
  store i32 1, ptr %tmp, align 4, !dbg !5986
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !5987
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !5987
  %1 = load i32, ptr %tmp, align 4, !dbg !5986
  %2 = load ptr, ptr %hsuc, align 8, !dbg !5987
  %vchan = getelementptr inbounds %struct.hsu_dma_chan, ptr %2, i32 0, i32 0, !dbg !5987
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan, i32 0, i32 3, !dbg !5987
  %call2 = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !5987
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #19, !dbg !5987
  store i64 %call3, ptr %flags, align 8, !dbg !5987
  br label %do.cond, !dbg !5987

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5987

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5985

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5985

do.end5:                                          ; preds = %do.cond4
  %3 = load ptr, ptr %hsuc, align 8, !dbg !5988
  %desc = getelementptr inbounds %struct.hsu_dma_chan, ptr %3, i32 0, i32 4, !dbg !5990
  %4 = load ptr, ptr %desc, align 8, !dbg !5990
  %tobool = icmp ne ptr %4, null, !dbg !5988
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5991

land.lhs.true:                                    ; preds = %do.end5
  %5 = load ptr, ptr %hsuc, align 8, !dbg !5992
  %desc6 = getelementptr inbounds %struct.hsu_dma_chan, ptr %5, i32 0, i32 4, !dbg !5993
  %6 = load ptr, ptr %desc6, align 8, !dbg !5993
  %status = getelementptr inbounds %struct.hsu_dma_desc, ptr %6, i32 0, i32 6, !dbg !5994
  %7 = load i32, ptr %status, align 4, !dbg !5994
  %cmp7 = icmp eq i32 %7, 1, !dbg !5995
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5996

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %hsuc, align 8, !dbg !5997
  call void @hsu_chan_disable(ptr noundef %8) #19, !dbg !5999
  %9 = load ptr, ptr %hsuc, align 8, !dbg !6000
  %desc9 = getelementptr inbounds %struct.hsu_dma_chan, ptr %9, i32 0, i32 4, !dbg !6001
  %10 = load ptr, ptr %desc9, align 8, !dbg !6001
  %status10 = getelementptr inbounds %struct.hsu_dma_desc, ptr %10, i32 0, i32 6, !dbg !6002
  store i32 2, ptr %status10, align 4, !dbg !6003
  br label %if.end, !dbg !6004

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end5
  %11 = load ptr, ptr %hsuc, align 8, !dbg !6005
  %vchan11 = getelementptr inbounds %struct.hsu_dma_chan, ptr %11, i32 0, i32 0, !dbg !6006
  %lock12 = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan11, i32 0, i32 3, !dbg !6007
  %12 = load i64, ptr %flags, align 8, !dbg !6008
  call void @spin_unlock_irqrestore(ptr noundef %lock12, i64 noundef %12) #19, !dbg !6009
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !6010
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsuc) #18, !dbg !6010
  ret i32 0, !dbg !6011
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hsu_dma_resume(ptr noundef %chan) #0 align 16 !dbg !6012 {
entry:
  %chan.addr = alloca ptr, align 8
  %hsuc = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !6014, metadata !DIExpression()), !dbg !6022
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsuc) #18, !dbg !6023
  call void @llvm.dbg.declare(metadata ptr %hsuc, metadata !6015, metadata !DIExpression()), !dbg !6024
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !6025
  %call = call ptr @to_hsu_dma_chan(ptr noundef %0) #19, !dbg !6026
  store ptr %call, ptr %hsuc, align 8, !dbg !6024
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !6027
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6016, metadata !DIExpression()), !dbg !6028
  br label %do.body, !dbg !6029

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6030

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !6031
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6017, metadata !DIExpression()), !dbg !6031
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !6031
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6021, metadata !DIExpression()), !dbg !6031
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6031
  %conv = zext i1 %cmp to i32, !dbg !6031
  store i32 1, ptr %tmp, align 4, !dbg !6031
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !6032
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !6032
  %1 = load i32, ptr %tmp, align 4, !dbg !6031
  %2 = load ptr, ptr %hsuc, align 8, !dbg !6032
  %vchan = getelementptr inbounds %struct.hsu_dma_chan, ptr %2, i32 0, i32 0, !dbg !6032
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan, i32 0, i32 3, !dbg !6032
  %call2 = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !6032
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #19, !dbg !6032
  store i64 %call3, ptr %flags, align 8, !dbg !6032
  br label %do.cond, !dbg !6032

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6032

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !6030

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !6030

do.end5:                                          ; preds = %do.cond4
  %3 = load ptr, ptr %hsuc, align 8, !dbg !6033
  %desc = getelementptr inbounds %struct.hsu_dma_chan, ptr %3, i32 0, i32 4, !dbg !6035
  %4 = load ptr, ptr %desc, align 8, !dbg !6035
  %tobool = icmp ne ptr %4, null, !dbg !6033
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6036

land.lhs.true:                                    ; preds = %do.end5
  %5 = load ptr, ptr %hsuc, align 8, !dbg !6037
  %desc6 = getelementptr inbounds %struct.hsu_dma_chan, ptr %5, i32 0, i32 4, !dbg !6038
  %6 = load ptr, ptr %desc6, align 8, !dbg !6038
  %status = getelementptr inbounds %struct.hsu_dma_desc, ptr %6, i32 0, i32 6, !dbg !6039
  %7 = load i32, ptr %status, align 4, !dbg !6039
  %cmp7 = icmp eq i32 %7, 2, !dbg !6040
  br i1 %cmp7, label %if.then, label %if.end, !dbg !6041

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %hsuc, align 8, !dbg !6042
  %desc9 = getelementptr inbounds %struct.hsu_dma_chan, ptr %8, i32 0, i32 4, !dbg !6044
  %9 = load ptr, ptr %desc9, align 8, !dbg !6044
  %status10 = getelementptr inbounds %struct.hsu_dma_desc, ptr %9, i32 0, i32 6, !dbg !6045
  store i32 1, ptr %status10, align 4, !dbg !6046
  %10 = load ptr, ptr %hsuc, align 8, !dbg !6047
  call void @hsu_chan_enable(ptr noundef %10) #19, !dbg !6048
  br label %if.end, !dbg !6049

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end5
  %11 = load ptr, ptr %hsuc, align 8, !dbg !6050
  %vchan11 = getelementptr inbounds %struct.hsu_dma_chan, ptr %11, i32 0, i32 0, !dbg !6051
  %lock12 = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan11, i32 0, i32 3, !dbg !6052
  %12 = load i64, ptr %flags, align 8, !dbg !6053
  call void @spin_unlock_irqrestore(ptr noundef %lock12, i64 noundef %12) #19, !dbg !6054
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !6055
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsuc) #18, !dbg !6055
  ret i32 0, !dbg !6056
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hsu_dma_terminate_all(ptr noundef %chan) #0 align 16 !dbg !6057 {
entry:
  %chan.addr = alloca ptr, align 8
  %hsuc = alloca ptr, align 8
  %flags = alloca i64, align 8
  %head = alloca %struct.list_head, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !6059, metadata !DIExpression()), !dbg !6068
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsuc) #18, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %hsuc, metadata !6060, metadata !DIExpression()), !dbg !6070
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !6071
  %call = call ptr @to_hsu_dma_chan(ptr noundef %0) #19, !dbg !6072
  store ptr %call, ptr %hsuc, align 8, !dbg !6070
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !6073
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6061, metadata !DIExpression()), !dbg !6074
  call void @llvm.lifetime.start.p0(i64 16, ptr %head) #18, !dbg !6075
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6062, metadata !DIExpression()), !dbg !6075
  %next = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 0, !dbg !6075
  store ptr %head, ptr %next, align 8, !dbg !6075
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1, !dbg !6075
  store ptr %head, ptr %prev, align 8, !dbg !6075
  br label %do.body, !dbg !6076

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6077

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6063, metadata !DIExpression()), !dbg !6078
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6067, metadata !DIExpression()), !dbg !6078
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6078
  %conv = zext i1 %cmp to i32, !dbg !6078
  store i32 1, ptr %tmp, align 4, !dbg !6078
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !6079
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !6079
  %1 = load i32, ptr %tmp, align 4, !dbg !6078
  %2 = load ptr, ptr %hsuc, align 8, !dbg !6079
  %vchan = getelementptr inbounds %struct.hsu_dma_chan, ptr %2, i32 0, i32 0, !dbg !6079
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan, i32 0, i32 3, !dbg !6079
  %call2 = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !6079
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #19, !dbg !6079
  store i64 %call3, ptr %flags, align 8, !dbg !6079
  br label %do.cond, !dbg !6079

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6079

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !6077

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !6077

do.end5:                                          ; preds = %do.cond4
  %3 = load ptr, ptr %hsuc, align 8, !dbg !6080
  call void @hsu_dma_stop_channel(ptr noundef %3) #19, !dbg !6081
  %4 = load ptr, ptr %hsuc, align 8, !dbg !6082
  %desc = getelementptr inbounds %struct.hsu_dma_chan, ptr %4, i32 0, i32 4, !dbg !6084
  %5 = load ptr, ptr %desc, align 8, !dbg !6084
  %tobool = icmp ne ptr %5, null, !dbg !6082
  br i1 %tobool, label %if.then, label %if.end, !dbg !6085

if.then:                                          ; preds = %do.end5
  %6 = load ptr, ptr %hsuc, align 8, !dbg !6086
  %desc6 = getelementptr inbounds %struct.hsu_dma_chan, ptr %6, i32 0, i32 4, !dbg !6088
  %7 = load ptr, ptr %desc6, align 8, !dbg !6088
  %vdesc = getelementptr inbounds %struct.hsu_dma_desc, ptr %7, i32 0, i32 0, !dbg !6089
  call void @hsu_dma_desc_free(ptr noundef %vdesc) #19, !dbg !6090
  %8 = load ptr, ptr %hsuc, align 8, !dbg !6091
  %desc7 = getelementptr inbounds %struct.hsu_dma_chan, ptr %8, i32 0, i32 4, !dbg !6092
  store ptr null, ptr %desc7, align 8, !dbg !6093
  br label %if.end, !dbg !6094

if.end:                                           ; preds = %if.then, %do.end5
  %9 = load ptr, ptr %hsuc, align 8, !dbg !6095
  %vchan8 = getelementptr inbounds %struct.hsu_dma_chan, ptr %9, i32 0, i32 0, !dbg !6096
  call void @vchan_get_all_descriptors(ptr noundef %vchan8, ptr noundef %head) #19, !dbg !6097
  %10 = load ptr, ptr %hsuc, align 8, !dbg !6098
  %vchan9 = getelementptr inbounds %struct.hsu_dma_chan, ptr %10, i32 0, i32 0, !dbg !6099
  %lock10 = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan9, i32 0, i32 3, !dbg !6100
  %11 = load i64, ptr %flags, align 8, !dbg !6101
  call void @spin_unlock_irqrestore(ptr noundef %lock10, i64 noundef %11) #19, !dbg !6102
  %12 = load ptr, ptr %hsuc, align 8, !dbg !6103
  %vchan11 = getelementptr inbounds %struct.hsu_dma_chan, ptr %12, i32 0, i32 0, !dbg !6104
  call void @vchan_dma_desc_free_list(ptr noundef %vchan11, ptr noundef %head) #19, !dbg !6105
  call void @llvm.lifetime.end.p0(i64 16, ptr %head) #18, !dbg !6106
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !6106
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsuc) #18, !dbg !6106
  ret i32 0, !dbg !6107
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsu_dma_synchronize(ptr noundef %chan) #0 align 16 !dbg !6108 {
entry:
  %chan.addr = alloca ptr, align 8
  %hsuc = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !6110, metadata !DIExpression()), !dbg !6112
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsuc) #18, !dbg !6113
  call void @llvm.dbg.declare(metadata ptr %hsuc, metadata !6111, metadata !DIExpression()), !dbg !6114
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !6115
  %call = call ptr @to_hsu_dma_chan(ptr noundef %0) #19, !dbg !6116
  store ptr %call, ptr %hsuc, align 8, !dbg !6114
  %1 = load ptr, ptr %hsuc, align 8, !dbg !6117
  %vchan = getelementptr inbounds %struct.hsu_dma_chan, ptr %1, i32 0, i32 0, !dbg !6118
  call void @vchan_synchronize(ptr noundef %vchan) #19, !dbg !6119
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsuc) #18, !dbg !6120
  ret void, !dbg !6120
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_set_max_seg_size(ptr noundef %dev, i32 noundef %size) #5 align 16 !dbg !6121 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6126, metadata !DIExpression()), !dbg !6128
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6127, metadata !DIExpression()), !dbg !6129
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6130
  %dma_parms = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19, !dbg !6132
  %1 = load ptr, ptr %dma_parms, align 8, !dbg !6132
  %tobool = icmp ne ptr %1, null, !dbg !6130
  br i1 %tobool, label %if.then, label %if.end, !dbg !6133

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %size.addr, align 4, !dbg !6134
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6136
  %dma_parms1 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 19, !dbg !6137
  %4 = load ptr, ptr %dma_parms1, align 8, !dbg !6137
  %max_segment_size = getelementptr inbounds %struct.device_dma_parameters, ptr %4, i32 0, i32 0, !dbg !6138
  store i32 %2, ptr %max_segment_size, align 8, !dbg !6139
  store i32 0, ptr %retval, align 4, !dbg !6140
  br label %return, !dbg !6140

if.end:                                           ; preds = %entry
  store i32 -5, ptr %retval, align 4, !dbg !6141
  br label %return, !dbg !6141

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !6142
  ret i32 %5, !dbg !6142
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6143 dso_local i32 @dma_async_device_register(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6146 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hsu_dma_remove(ptr noundef %chip) #0 align 16 !dbg !6150 {
entry:
  %chip.addr = alloca ptr, align 8
  %hsu = alloca ptr, align 8
  %i = alloca i16, align 2
  %hsuc = alloca ptr, align 8
  store ptr %chip, ptr %chip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chip.addr, metadata !6152, metadata !DIExpression()), !dbg !6159
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsu) #18, !dbg !6160
  call void @llvm.dbg.declare(metadata ptr %hsu, metadata !6153, metadata !DIExpression()), !dbg !6161
  %0 = load ptr, ptr %chip.addr, align 8, !dbg !6162
  %hsu1 = getelementptr inbounds %struct.hsu_dma_chip, ptr %0, i32 0, i32 5, !dbg !6163
  %1 = load ptr, ptr %hsu1, align 8, !dbg !6163
  store ptr %1, ptr %hsu, align 8, !dbg !6161
  call void @llvm.lifetime.start.p0(i64 2, ptr %i) #18, !dbg !6164
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6154, metadata !DIExpression()), !dbg !6165
  %2 = load ptr, ptr %hsu, align 8, !dbg !6166
  %dma = getelementptr inbounds %struct.hsu_dma, ptr %2, i32 0, i32 0, !dbg !6167
  call void @dma_async_device_unregister(ptr noundef %dma) #19, !dbg !6168
  store i16 0, ptr %i, align 2, !dbg !6169
  br label %for.cond, !dbg !6170

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i16, ptr %i, align 2, !dbg !6171
  %conv = zext i16 %3 to i32, !dbg !6171
  %4 = load ptr, ptr %hsu, align 8, !dbg !6172
  %nr_channels = getelementptr inbounds %struct.hsu_dma, ptr %4, i32 0, i32 2, !dbg !6173
  %5 = load i16, ptr %nr_channels, align 8, !dbg !6173
  %conv2 = zext i16 %5 to i32, !dbg !6172
  %cmp = icmp slt i32 %conv, %conv2, !dbg !6174
  br i1 %cmp, label %for.body, label %for.end, !dbg !6175

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsuc) #18, !dbg !6176
  call void @llvm.dbg.declare(metadata ptr %hsuc, metadata !6155, metadata !DIExpression()), !dbg !6177
  %6 = load ptr, ptr %hsu, align 8, !dbg !6178
  %chan = getelementptr inbounds %struct.hsu_dma, ptr %6, i32 0, i32 1, !dbg !6179
  %7 = load ptr, ptr %chan, align 8, !dbg !6179
  %8 = load i16, ptr %i, align 2, !dbg !6180
  %idxprom = zext i16 %8 to i64, !dbg !6178
  %arrayidx = getelementptr %struct.hsu_dma_chan, ptr %7, i64 %idxprom, !dbg !6178
  store ptr %arrayidx, ptr %hsuc, align 8, !dbg !6177
  %9 = load ptr, ptr %hsuc, align 8, !dbg !6181
  %vchan = getelementptr inbounds %struct.hsu_dma_chan, ptr %9, i32 0, i32 0, !dbg !6182
  %task = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan, i32 0, i32 1, !dbg !6183
  call void @tasklet_kill(ptr noundef %task) #19, !dbg !6184
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsuc) #18, !dbg !6185
  br label %for.inc, !dbg !6186

for.inc:                                          ; preds = %for.body
  %10 = load i16, ptr %i, align 2, !dbg !6187
  %inc = add i16 %10, 1, !dbg !6187
  store i16 %inc, ptr %i, align 2, !dbg !6187
  br label %for.cond, !dbg !6188, !llvm.loop !6189

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 2, ptr %i) #18, !dbg !6191
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsu) #18, !dbg !6191
  ret i32 0, !dbg !6192
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6193 dso_local void @dma_async_device_unregister(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6194 dso_local void @tasklet_kill(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #5 align 16 !dbg !6195 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6203, metadata !DIExpression()), !dbg !6205
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6204, metadata !DIExpression()), !dbg !6205
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6205
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #18, !dbg !6205, !srcloc !6206
  store i32 %1, ptr %ret, align 4, !dbg !6205
  %2 = load i32, ptr %ret, align 4, !dbg !6205
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6205
  ret i32 %2, !dbg !6205
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6207 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsu_dma_chan_start(ptr noundef %hsuc) #0 align 16 !dbg !6210 {
entry:
  %hsuc.addr = alloca ptr, align 8
  %config = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %bsr = alloca i32, align 4
  %mtsr = alloca i32, align 4
  %dcr = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  store ptr %hsuc, ptr %hsuc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hsuc.addr, metadata !6212, metadata !DIExpression()), !dbg !6220
  call void @llvm.lifetime.start.p0(i64 8, ptr %config) #18, !dbg !6221
  call void @llvm.dbg.declare(metadata ptr %config, metadata !6213, metadata !DIExpression()), !dbg !6222
  %0 = load ptr, ptr %hsuc.addr, align 8, !dbg !6223
  %config1 = getelementptr inbounds %struct.hsu_dma_chan, ptr %0, i32 0, i32 3, !dbg !6224
  store ptr %config1, ptr %config, align 8, !dbg !6222
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #18, !dbg !6225
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !6214, metadata !DIExpression()), !dbg !6226
  %1 = load ptr, ptr %hsuc.addr, align 8, !dbg !6227
  %desc2 = getelementptr inbounds %struct.hsu_dma_chan, ptr %1, i32 0, i32 4, !dbg !6228
  %2 = load ptr, ptr %desc2, align 8, !dbg !6228
  store ptr %2, ptr %desc, align 8, !dbg !6226
  call void @llvm.lifetime.start.p0(i64 4, ptr %bsr) #18, !dbg !6229
  call void @llvm.dbg.declare(metadata ptr %bsr, metadata !6215, metadata !DIExpression()), !dbg !6230
  store i32 0, ptr %bsr, align 4, !dbg !6230
  call void @llvm.lifetime.start.p0(i64 4, ptr %mtsr) #18, !dbg !6229
  call void @llvm.dbg.declare(metadata ptr %mtsr, metadata !6216, metadata !DIExpression()), !dbg !6231
  store i32 0, ptr %mtsr, align 4, !dbg !6231
  call void @llvm.lifetime.start.p0(i64 4, ptr %dcr) #18, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %dcr, metadata !6217, metadata !DIExpression()), !dbg !6233
  store i32 8421376, ptr %dcr, align 4, !dbg !6233
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !6234
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6218, metadata !DIExpression()), !dbg !6235
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #18, !dbg !6234
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6219, metadata !DIExpression()), !dbg !6236
  %3 = load ptr, ptr %hsuc.addr, align 8, !dbg !6237
  %direction = getelementptr inbounds %struct.hsu_dma_chan, ptr %3, i32 0, i32 2, !dbg !6239
  %4 = load i32, ptr %direction, align 8, !dbg !6239
  %cmp = icmp eq i32 %4, 1, !dbg !6240
  br i1 %cmp, label %if.then, label %if.else, !dbg !6241

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %config, align 8, !dbg !6242
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 6, !dbg !6244
  %6 = load i32, ptr %dst_maxburst, align 4, !dbg !6244
  store i32 %6, ptr %bsr, align 4, !dbg !6245
  %7 = load ptr, ptr %config, align 8, !dbg !6246
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 4, !dbg !6247
  %8 = load i32, ptr %dst_addr_width, align 4, !dbg !6247
  store i32 %8, ptr %mtsr, align 4, !dbg !6248
  br label %if.end6, !dbg !6249

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %hsuc.addr, align 8, !dbg !6250
  %direction3 = getelementptr inbounds %struct.hsu_dma_chan, ptr %9, i32 0, i32 2, !dbg !6252
  %10 = load i32, ptr %direction3, align 8, !dbg !6252
  %cmp4 = icmp eq i32 %10, 2, !dbg !6253
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !6254

if.then5:                                         ; preds = %if.else
  %11 = load ptr, ptr %config, align 8, !dbg !6255
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %11, i32 0, i32 5, !dbg !6257
  %12 = load i32, ptr %src_maxburst, align 8, !dbg !6257
  store i32 %12, ptr %bsr, align 4, !dbg !6258
  %13 = load ptr, ptr %config, align 8, !dbg !6259
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %13, i32 0, i32 3, !dbg !6260
  %14 = load i32, ptr %src_addr_width, align 8, !dbg !6260
  store i32 %14, ptr %mtsr, align 4, !dbg !6261
  br label %if.end, !dbg !6262

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %15 = load ptr, ptr %hsuc.addr, align 8, !dbg !6263
  call void @hsu_chan_disable(ptr noundef %15) #19, !dbg !6264
  %16 = load ptr, ptr %hsuc.addr, align 8, !dbg !6265
  call void @hsu_chan_writel(ptr noundef %16, i32 noundef 8, i32 noundef 0) #19, !dbg !6266
  %17 = load ptr, ptr %hsuc.addr, align 8, !dbg !6267
  %18 = load i32, ptr %bsr, align 4, !dbg !6268
  call void @hsu_chan_writel(ptr noundef %17, i32 noundef 16, i32 noundef %18) #19, !dbg !6269
  %19 = load ptr, ptr %hsuc.addr, align 8, !dbg !6270
  %20 = load i32, ptr %mtsr, align 4, !dbg !6271
  call void @hsu_chan_writel(ptr noundef %19, i32 noundef 20, i32 noundef %20) #19, !dbg !6272
  %21 = load ptr, ptr %desc, align 8, !dbg !6273
  %nents = getelementptr inbounds %struct.hsu_dma_desc, ptr %21, i32 0, i32 3, !dbg !6274
  %22 = load i32, ptr %nents, align 8, !dbg !6274
  %23 = load ptr, ptr %desc, align 8, !dbg !6275
  %active = getelementptr inbounds %struct.hsu_dma_desc, ptr %23, i32 0, i32 5, !dbg !6276
  %24 = load i32, ptr %active, align 8, !dbg !6276
  %sub = sub i32 %22, %24, !dbg !6277
  store i32 %sub, ptr %count, align 4, !dbg !6278
  store i32 0, ptr %i, align 4, !dbg !6279
  br label %for.cond, !dbg !6281

for.cond:                                         ; preds = %for.inc, %if.end6
  %25 = load i32, ptr %i, align 4, !dbg !6282
  %26 = load i32, ptr %count, align 4, !dbg !6284
  %cmp7 = icmp ult i32 %25, %26, !dbg !6285
  br i1 %cmp7, label %land.rhs, label %land.end, !dbg !6286

land.rhs:                                         ; preds = %for.cond
  %27 = load i32, ptr %i, align 4, !dbg !6287
  %cmp8 = icmp ult i32 %27, 4, !dbg !6288
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %28 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ], !dbg !6289
  br i1 %28, label %for.body, label %for.end, !dbg !6290

for.body:                                         ; preds = %land.end
  %29 = load ptr, ptr %hsuc.addr, align 8, !dbg !6291
  %30 = load i32, ptr %i, align 4, !dbg !6293
  %mul = mul i32 8, %30, !dbg !6293
  %add = add i32 32, %mul, !dbg !6293
  %31 = load ptr, ptr %desc, align 8, !dbg !6294
  %sg = getelementptr inbounds %struct.hsu_dma_desc, ptr %31, i32 0, i32 2, !dbg !6295
  %32 = load ptr, ptr %sg, align 8, !dbg !6295
  %33 = load i32, ptr %i, align 4, !dbg !6296
  %idxprom = zext i32 %33 to i64, !dbg !6294
  %arrayidx = getelementptr %struct.hsu_dma_sg, ptr %32, i64 %idxprom, !dbg !6294
  %addr = getelementptr inbounds %struct.hsu_dma_sg, ptr %arrayidx, i32 0, i32 0, !dbg !6297
  %34 = load i64, ptr %addr, align 8, !dbg !6297
  %conv = trunc i64 %34 to i32, !dbg !6294
  call void @hsu_chan_writel(ptr noundef %29, i32 noundef %add, i32 noundef %conv) #19, !dbg !6298
  %35 = load ptr, ptr %hsuc.addr, align 8, !dbg !6299
  %36 = load i32, ptr %i, align 4, !dbg !6300
  %mul9 = mul i32 8, %36, !dbg !6300
  %add10 = add i32 36, %mul9, !dbg !6300
  %37 = load ptr, ptr %desc, align 8, !dbg !6301
  %sg11 = getelementptr inbounds %struct.hsu_dma_desc, ptr %37, i32 0, i32 2, !dbg !6302
  %38 = load ptr, ptr %sg11, align 8, !dbg !6302
  %39 = load i32, ptr %i, align 4, !dbg !6303
  %idxprom12 = zext i32 %39 to i64, !dbg !6301
  %arrayidx13 = getelementptr %struct.hsu_dma_sg, ptr %38, i64 %idxprom12, !dbg !6301
  %len = getelementptr inbounds %struct.hsu_dma_sg, ptr %arrayidx13, i32 0, i32 1, !dbg !6304
  %40 = load i32, ptr %len, align 8, !dbg !6304
  call void @hsu_chan_writel(ptr noundef %35, i32 noundef %add10, i32 noundef %40) #19, !dbg !6305
  %41 = load i32, ptr %i, align 4, !dbg !6306
  %add14 = add i32 0, %41, !dbg !6306
  %sh_prom = zext i32 %add14 to i64, !dbg !6306
  %shl = shl i64 1, %sh_prom, !dbg !6306
  %42 = load i32, ptr %dcr, align 4, !dbg !6307
  %conv15 = zext i32 %42 to i64, !dbg !6307
  %or = or i64 %conv15, %shl, !dbg !6307
  %conv16 = trunc i64 %or to i32, !dbg !6307
  store i32 %conv16, ptr %dcr, align 4, !dbg !6307
  %43 = load i32, ptr %i, align 4, !dbg !6308
  %add17 = add i32 24, %43, !dbg !6308
  %sh_prom18 = zext i32 %add17 to i64, !dbg !6308
  %shl19 = shl i64 1, %sh_prom18, !dbg !6308
  %44 = load i32, ptr %dcr, align 4, !dbg !6309
  %conv20 = zext i32 %44 to i64, !dbg !6309
  %or21 = or i64 %conv20, %shl19, !dbg !6309
  %conv22 = trunc i64 %or21 to i32, !dbg !6309
  store i32 %conv22, ptr %dcr, align 4, !dbg !6309
  %45 = load ptr, ptr %desc, align 8, !dbg !6310
  %active23 = getelementptr inbounds %struct.hsu_dma_desc, ptr %45, i32 0, i32 5, !dbg !6311
  %46 = load i32, ptr %active23, align 8, !dbg !6312
  %inc = add i32 %46, 1, !dbg !6312
  store i32 %inc, ptr %active23, align 8, !dbg !6312
  br label %for.inc, !dbg !6313

for.inc:                                          ; preds = %for.body
  %47 = load i32, ptr %i, align 4, !dbg !6314
  %inc24 = add i32 %47, 1, !dbg !6314
  store i32 %inc24, ptr %i, align 4, !dbg !6314
  br label %for.cond, !dbg !6315, !llvm.loop !6316

for.end:                                          ; preds = %land.end
  %48 = load i32, ptr %count, align 4, !dbg !6318
  %sub25 = sub i32 %48, 1, !dbg !6318
  %add26 = add i32 8, %sub25, !dbg !6318
  %sh_prom27 = zext i32 %add26 to i64, !dbg !6318
  %shl28 = shl i64 1, %sh_prom27, !dbg !6318
  %49 = load i32, ptr %dcr, align 4, !dbg !6319
  %conv29 = zext i32 %49 to i64, !dbg !6319
  %or30 = or i64 %conv29, %shl28, !dbg !6319
  %conv31 = trunc i64 %or30 to i32, !dbg !6319
  store i32 %conv31, ptr %dcr, align 4, !dbg !6319
  %50 = load i32, ptr %count, align 4, !dbg !6320
  %sub32 = sub i32 %50, 1, !dbg !6320
  %add33 = add i32 16, %sub32, !dbg !6320
  %sh_prom34 = zext i32 %add33 to i64, !dbg !6320
  %shl35 = shl i64 1, %sh_prom34, !dbg !6320
  %51 = load i32, ptr %dcr, align 4, !dbg !6321
  %conv36 = zext i32 %51 to i64, !dbg !6321
  %or37 = or i64 %conv36, %shl35, !dbg !6321
  %conv38 = trunc i64 %or37 to i32, !dbg !6321
  store i32 %conv38, ptr %dcr, align 4, !dbg !6321
  %52 = load ptr, ptr %hsuc.addr, align 8, !dbg !6322
  %53 = load i32, ptr %dcr, align 4, !dbg !6323
  call void @hsu_chan_writel(ptr noundef %52, i32 noundef 8, i32 noundef %53) #19, !dbg !6324
  %54 = load ptr, ptr %hsuc.addr, align 8, !dbg !6325
  call void @hsu_chan_enable(ptr noundef %54) #19, !dbg !6326
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #18, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 4, ptr %dcr) #18, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 4, ptr %mtsr) #18, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 4, ptr %bsr) #18, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #18, !dbg !6327
  call void @llvm.lifetime.end.p0(i64 8, ptr %config) #18, !dbg !6327
  ret void, !dbg !6327
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsu_chan_disable(ptr noundef %hsuc) #5 align 16 !dbg !6328 {
entry:
  %hsuc.addr = alloca ptr, align 8
  store ptr %hsuc, ptr %hsuc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hsuc.addr, metadata !6330, metadata !DIExpression()), !dbg !6331
  %0 = load ptr, ptr %hsuc.addr, align 8, !dbg !6332
  call void @hsu_chan_writel(ptr noundef %0, i32 noundef 4, i32 noundef 0) #19, !dbg !6333
  ret void, !dbg !6334
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsu_chan_writel(ptr noundef %hsuc, i32 noundef %offset, i32 noundef %value) #5 align 16 !dbg !6335 {
entry:
  %hsuc.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %hsuc, ptr %hsuc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hsuc.addr, metadata !6339, metadata !DIExpression()), !dbg !6342
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6340, metadata !DIExpression()), !dbg !6343
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6341, metadata !DIExpression()), !dbg !6344
  %0 = load i32, ptr %value.addr, align 4, !dbg !6345
  %1 = load ptr, ptr %hsuc.addr, align 8, !dbg !6346
  %reg = getelementptr inbounds %struct.hsu_dma_chan, ptr %1, i32 0, i32 1, !dbg !6347
  %2 = load ptr, ptr %reg, align 8, !dbg !6347
  %3 = load i32, ptr %offset.addr, align 4, !dbg !6348
  %idx.ext = sext i32 %3 to i64, !dbg !6349
  %add.ptr = getelementptr i8, ptr %2, i64 %idx.ext, !dbg !6349
  call void @writel(i32 noundef %0, ptr noundef %add.ptr) #19, !dbg !6350
  ret void, !dbg !6351
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsu_chan_enable(ptr noundef %hsuc) #5 align 16 !dbg !6352 {
entry:
  %hsuc.addr = alloca ptr, align 8
  %cr = alloca i32, align 4
  store ptr %hsuc, ptr %hsuc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hsuc.addr, metadata !6354, metadata !DIExpression()), !dbg !6356
  call void @llvm.lifetime.start.p0(i64 4, ptr %cr) #18, !dbg !6357
  call void @llvm.dbg.declare(metadata ptr %cr, metadata !6355, metadata !DIExpression()), !dbg !6358
  store i32 1, ptr %cr, align 4, !dbg !6358
  %0 = load ptr, ptr %hsuc.addr, align 8, !dbg !6359
  %direction = getelementptr inbounds %struct.hsu_dma_chan, ptr %0, i32 0, i32 2, !dbg !6361
  %1 = load i32, ptr %direction, align 8, !dbg !6361
  %cmp = icmp eq i32 %1, 1, !dbg !6362
  br i1 %cmp, label %if.then, label %if.else, !dbg !6363

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %cr, align 4, !dbg !6364
  %conv = zext i32 %2 to i64, !dbg !6364
  %and = and i64 %conv, -3, !dbg !6364
  %conv1 = trunc i64 %and to i32, !dbg !6364
  store i32 %conv1, ptr %cr, align 4, !dbg !6364
  br label %if.end8, !dbg !6365

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %hsuc.addr, align 8, !dbg !6366
  %direction2 = getelementptr inbounds %struct.hsu_dma_chan, ptr %3, i32 0, i32 2, !dbg !6368
  %4 = load i32, ptr %direction2, align 8, !dbg !6368
  %cmp3 = icmp eq i32 %4, 2, !dbg !6369
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !6370

if.then5:                                         ; preds = %if.else
  %5 = load i32, ptr %cr, align 4, !dbg !6371
  %conv6 = zext i32 %5 to i64, !dbg !6371
  %or = or i64 %conv6, 2, !dbg !6371
  %conv7 = trunc i64 %or to i32, !dbg !6371
  store i32 %conv7, ptr %cr, align 4, !dbg !6371
  br label %if.end, !dbg !6372

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %6 = load ptr, ptr %hsuc.addr, align 8, !dbg !6373
  %7 = load i32, ptr %cr, align 4, !dbg !6374
  call void @hsu_chan_writel(ptr noundef %6, i32 noundef 4, i32 noundef %7) #19, !dbg !6375
  call void @llvm.lifetime.end.p0(i64 4, ptr %cr) #18, !dbg !6376
  ret void, !dbg !6376
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writel(i32 noundef %val, ptr noundef %addr) #5 align 16 !dbg !6377 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6382, metadata !DIExpression()), !dbg !6384
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6383, metadata !DIExpression()), !dbg !6384
  %0 = load i32, ptr %val.addr, align 4, !dbg !6384
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6384
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #18, !dbg !6384, !srcloc !6385
  ret void, !dbg !6384
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_virt_chan(ptr noundef %chan) #5 align 16 !dbg !6386 {
entry:
  %chan.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !6390, metadata !DIExpression()), !dbg !6393
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6394
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6391, metadata !DIExpression()), !dbg !6394
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !6394
  store ptr %0, ptr %__mptr, align 8, !dbg !6394
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6394
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6394
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6394
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6395
  %2 = load ptr, ptr %tmp, align 8, !dbg !6394
  ret ptr %2, !dbg !6396
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_cookie_complete(ptr noundef %tx) #5 align 16 !dbg !6397 {
entry:
  %tx.addr = alloca ptr, align 8
  store ptr %tx, ptr %tx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tx.addr, metadata !6401, metadata !DIExpression()), !dbg !6402
  br label %do.body, !dbg !6403

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %tx.addr, align 8, !dbg !6404
  %cookie = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 0, !dbg !6404
  %1 = load i32, ptr %cookie, align 8, !dbg !6404
  %cmp = icmp slt i32 %1, 1, !dbg !6404
  %lnot = xor i1 %cmp, true, !dbg !6404
  %lnot1 = xor i1 %lnot, true, !dbg !6404
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6404
  %conv = sext i32 %lnot.ext to i64, !dbg !6404
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6404
  %tobool = icmp ne i64 %expval, 0, !dbg !6404
  br i1 %tobool, label %if.then, label %if.end, !dbg !6407

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !6404

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !6408

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !6410

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !6408

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 54, i32 0, i64 12) #18, !dbg !6412, !srcloc !6414
  br label %do.end5, !dbg !6412

do.end5:                                          ; preds = %do.body4
  unreachable, !dbg !6408

do.end6:                                          ; No predecessors!
  br label %if.end, !dbg !6408

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.end7, !dbg !6407

do.end7:                                          ; preds = %if.end
  %2 = load ptr, ptr %tx.addr, align 8, !dbg !6415
  %cookie8 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %2, i32 0, i32 0, !dbg !6416
  %3 = load i32, ptr %cookie8, align 8, !dbg !6416
  %4 = load ptr, ptr %tx.addr, align 8, !dbg !6417
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %4, i32 0, i32 3, !dbg !6418
  %5 = load ptr, ptr %chan, align 8, !dbg !6418
  %completed_cookie = getelementptr inbounds %struct.dma_chan, ptr %5, i32 0, i32 3, !dbg !6419
  store i32 %3, ptr %completed_cookie, align 4, !dbg !6420
  %6 = load ptr, ptr %tx.addr, align 8, !dbg !6421
  %cookie9 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %6, i32 0, i32 0, !dbg !6422
  store i32 0, ptr %cookie9, align 8, !dbg !6423
  ret void, !dbg !6424
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !6425 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6429, metadata !DIExpression()), !dbg !6431
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6430, metadata !DIExpression()), !dbg !6432
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6433
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6434
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6435
  %2 = load ptr, ptr %prev, align 8, !dbg !6435
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6436
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #19, !dbg !6437
  ret void, !dbg !6438
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tasklet_schedule(ptr noundef %t) #5 align 16 !dbg !6439 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !6441, metadata !DIExpression()), !dbg !6442
  %0 = load ptr, ptr %t.addr, align 8, !dbg !6443
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1, !dbg !6445
  %call = call zeroext i1 @test_and_set_bit(i64 noundef 0, ptr noundef %state) #19, !dbg !6446
  br i1 %call, label %if.end, label %if.then, !dbg !6447

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %t.addr, align 8, !dbg !6448
  call void @__tasklet_schedule(ptr noundef %1) #19, !dbg !6449
  br label %if.end, !dbg !6449

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6450
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6451 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6455, metadata !DIExpression()), !dbg !6458
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6456, metadata !DIExpression()), !dbg !6459
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6457, metadata !DIExpression()), !dbg !6460
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6461
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6463
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6464
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19, !dbg !6465
  br i1 %call, label %if.end, label %if.then, !dbg !6466

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6467

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6468
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6469
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6470
  store ptr %3, ptr %prev1, align 8, !dbg !6471
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6472
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6473
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6474
  store ptr %5, ptr %next2, align 8, !dbg !6475
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6476
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6477
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6478
  store ptr %7, ptr %prev3, align 8, !dbg !6479
  br label %do.body, !dbg !6480

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6481

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6483

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6481

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6485
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6485
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6485
  store volatile ptr %9, ptr %next6, align 8, !dbg !6485
  br label %do.end7, !dbg !6485

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6481

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6487
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6488 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6492, metadata !DIExpression()), !dbg !6495
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6493, metadata !DIExpression()), !dbg !6496
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6494, metadata !DIExpression()), !dbg !6497
  ret i1 true, !dbg !6498
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6499 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6506, metadata !DIExpression()), !dbg !6508
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6507, metadata !DIExpression()), !dbg !6509
  br label %do.body, !dbg !6510

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6511

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6513
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6514
  %div = sdiv i64 %1, 64, !dbg !6514
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6515
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !6516
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6517
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6518
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !6519
  ret i1 %call, !dbg !6520
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6521 dso_local void @__tasklet_schedule(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6522 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6527, metadata !DIExpression()), !dbg !6529
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6528, metadata !DIExpression()), !dbg !6530
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6531
  %1 = load i64, ptr %size.addr, align 8, !dbg !6532
  %conv = trunc i64 %1 to i32, !dbg !6532
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !6533
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6534
  %3 = load i64, ptr %size.addr, align 8, !dbg !6534
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #19, !dbg !6534
  ret void, !dbg !6535
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6536 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6539, metadata !DIExpression()), !dbg !6543
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6540, metadata !DIExpression()), !dbg !6544
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #18, !dbg !6545
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6541, metadata !DIExpression()), !dbg !6545
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6545
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6545
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #18, !dbg !6545, !srcloc !6546
  %3 = icmp ult i8 %2, 2, !dbg !6545
  call void @llvm.assume(i1 %3), !dbg !6545
  store i8 %2, ptr %c, align 1, !dbg !6545
  %4 = load i8, ptr %c, align 1, !dbg !6545, !range !6547, !noundef !1046
  %tobool = trunc i8 %4 to i1, !dbg !6545
  %frombool = zext i1 %tobool to i8, !dbg !6545
  store i8 %frombool, ptr %tmp, align 1, !dbg !6545
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #18, !dbg !6548
  %5 = load i8, ptr %tmp, align 1, !dbg !6545, !range !6547, !noundef !1046
  %tobool1 = trunc i8 %5 to i1, !dbg !6545
  ret i1 %tobool1, !dbg !6549
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6550 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6555, metadata !DIExpression()), !dbg !6557
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6556, metadata !DIExpression()), !dbg !6558
  ret i1 true, !dbg !6559
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6560 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6565, metadata !DIExpression()), !dbg !6568
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6566, metadata !DIExpression()), !dbg !6569
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6567, metadata !DIExpression()), !dbg !6570
  ret void, !dbg !6571
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @vchan_next_desc(ptr noundef %vc) #5 align 16 !dbg !6572 {
entry:
  %vc.addr = alloca ptr, align 8
  %head__ = alloca ptr, align 8
  %pos__ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !6576, metadata !DIExpression()), !dbg !6582
  call void @llvm.lifetime.start.p0(i64 8, ptr %head__) #18, !dbg !6583
  call void @llvm.dbg.declare(metadata ptr %head__, metadata !6577, metadata !DIExpression()), !dbg !6583
  %0 = load ptr, ptr %vc.addr, align 8, !dbg !6583
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, !dbg !6583
  store ptr %desc_issued, ptr %head__, align 8, !dbg !6583
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos__) #18, !dbg !6583
  call void @llvm.dbg.declare(metadata ptr %pos__, metadata !6579, metadata !DIExpression()), !dbg !6583
  br label %do.body, !dbg !6584

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6586

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6586

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %head__, align 8, !dbg !6584
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6584
  %2 = load volatile ptr, ptr %next, align 8, !dbg !6584
  store ptr %2, ptr %tmp, align 8, !dbg !6586
  %3 = load ptr, ptr %tmp, align 8, !dbg !6584
  store ptr %3, ptr %pos__, align 8, !dbg !6583
  %4 = load ptr, ptr %pos__, align 8, !dbg !6583
  %5 = load ptr, ptr %head__, align 8, !dbg !6583
  %cmp = icmp ne ptr %4, %5, !dbg !6583
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6583

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6588
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6580, metadata !DIExpression()), !dbg !6588
  %6 = load ptr, ptr %pos__, align 8, !dbg !6588
  store ptr %6, ptr %__mptr, align 8, !dbg !6588
  %7 = load ptr, ptr %__mptr, align 8, !dbg !6588
  %add.ptr = getelementptr i8, ptr %7, i64 -96, !dbg !6588
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !6588
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6583
  %8 = load ptr, ptr %tmp2, align 8, !dbg !6588
  br label %cond.end, !dbg !6583

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !6583

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !6583
  store ptr %cond, ptr %tmp1, align 8, !dbg !6583
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos__) #18, !dbg !6589
  call void @llvm.lifetime.end.p0(i64 8, ptr %head__) #18, !dbg !6589
  %9 = load ptr, ptr %tmp1, align 8, !dbg !6583
  ret ptr %9, !dbg !6590
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !6591 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6593, metadata !DIExpression()), !dbg !6594
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6595
  call void @__list_del_entry(ptr noundef %0) #19, !dbg !6596
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6597
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6598
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6599
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6600
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6601
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6602
  ret void, !dbg !6603
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_hsu_dma_desc(ptr noundef %vdesc) #5 align 16 !dbg !6604 {
entry:
  %vdesc.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %vdesc, ptr %vdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdesc.addr, metadata !6608, metadata !DIExpression()), !dbg !6611
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6612
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6609, metadata !DIExpression()), !dbg !6612
  %0 = load ptr, ptr %vdesc.addr, align 8, !dbg !6612
  store ptr %0, ptr %__mptr, align 8, !dbg !6612
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6612
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6612
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6612
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6613
  %2 = load ptr, ptr %tmp, align 8, !dbg !6612
  ret ptr %2, !dbg !6614
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !6615 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6617, metadata !DIExpression()), !dbg !6618
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6619
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #19, !dbg !6621
  br i1 %call, label %if.end, label %if.then, !dbg !6622

if.then:                                          ; preds = %entry
  br label %return, !dbg !6623

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6624
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6625
  %2 = load ptr, ptr %prev, align 8, !dbg !6625
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6626
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6627
  %4 = load ptr, ptr %next, align 8, !dbg !6627
  call void @__list_del(ptr noundef %2, ptr noundef %4) #19, !dbg !6628
  br label %return, !dbg !6629

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6629
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !6630 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6634, metadata !DIExpression()), !dbg !6635
  ret i1 true, !dbg !6636
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6637 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6639, metadata !DIExpression()), !dbg !6641
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6640, metadata !DIExpression()), !dbg !6642
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6643
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6644
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6645
  store ptr %0, ptr %prev1, align 8, !dbg !6646
  br label %do.body, !dbg !6647

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6648

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6650

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6648

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6652
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6652
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6652
  store volatile ptr %2, ptr %next4, align 8, !dbg !6652
  br label %do.end5, !dbg !6652

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6648

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6654
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !6655 dso_local noalias ptr @devm_kmalloc(ptr noundef, i64 noundef, i32 noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kmalloc_array(ptr noundef %dev, i64 noundef %n, i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !6656 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6658, metadata !DIExpression()), !dbg !6663
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6659, metadata !DIExpression()), !dbg !6664
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6660, metadata !DIExpression()), !dbg !6665
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6661, metadata !DIExpression()), !dbg !6666
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !6667
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6662, metadata !DIExpression()), !dbg !6668
  %0 = load i64, ptr %n.addr, align 8, !dbg !6669
  %1 = load i64, ptr %size.addr, align 8, !dbg !6669
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6669
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6669
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6669
  store i64 %4, ptr %bytes, align 8, !dbg !6669
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #19, !dbg !6669
  %lnot = xor i1 %call, true, !dbg !6669
  %lnot1 = xor i1 %lnot, true, !dbg !6669
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6669
  %conv = sext i32 %lnot.ext to i64, !dbg !6669
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6669
  %tobool = icmp ne i64 %expval, 0, !dbg !6669
  br i1 %tobool, label %if.then, label %if.end, !dbg !6671

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6672
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6672

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6673
  %6 = load i64, ptr %bytes, align 8, !dbg !6674
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6675
  %call2 = call noalias ptr @devm_kmalloc(ptr noundef %5, i64 noundef %6, i32 noundef %7) #22, !dbg !6676
  store ptr %call2, ptr %retval, align 8, !dbg !6677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6677

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !6678
  %8 = load ptr, ptr %retval, align 8, !dbg !6678
  ret ptr %8, !dbg !6678
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #5 align 16 !dbg !6679 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6684, metadata !DIExpression()), !dbg !6685
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6686, !range !6547, !noundef !1046
  %tobool = trunc i8 %0 to i1, !dbg !6686
  %lnot = xor i1 %tobool, true, !dbg !6686
  %lnot1 = xor i1 %lnot, true, !dbg !6686
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6686
  %conv = sext i32 %lnot.ext to i64, !dbg !6686
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6686
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6686
  ret i1 %tobool2, !dbg !6687
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6688 dso_local void @kfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6691 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6695, metadata !DIExpression()), !dbg !6697
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6696, metadata !DIExpression()), !dbg !6698
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6699
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6700
  %div = sdiv i64 %1, 64, !dbg !6700
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6701
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !6702
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6703
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6704
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !6705
  ret void, !dbg !6706
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6707 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6709, metadata !DIExpression()), !dbg !6711
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6710, metadata !DIExpression()), !dbg !6712
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6713
  %1 = load i64, ptr %size.addr, align 8, !dbg !6714
  %conv = trunc i64 %1 to i32, !dbg !6714
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !6715
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6716
  %3 = load i64, ptr %size.addr, align 8, !dbg !6716
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #19, !dbg !6716
  ret void, !dbg !6717
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6718 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6720, metadata !DIExpression()), !dbg !6722
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6721, metadata !DIExpression()), !dbg !6723
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6724
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6726
  br i1 %1, label %if.then, label %if.else, !dbg !6727

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6728
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6728
  %shr = ashr i64 %3, 3, !dbg !6728
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6728
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6730
  %and = and i64 %4, 7, !dbg !6730
  %sh_prom = trunc i64 %and to i32, !dbg !6730
  %shl = shl i32 1, %sh_prom, !dbg !6730
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #18, !dbg !6731, !srcloc !6732
  br label %if.end, !dbg !6733

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6734
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6736
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #18, !dbg !6737, !srcloc !6738
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6739
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vchan_free_chan_resources(ptr noundef %vc) #5 align 16 !dbg !6740 {
entry:
  %vc.addr = alloca ptr, align 8
  %vd = alloca ptr, align 8
  %flags = alloca i64, align 8
  %head = alloca %struct.list_head, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !6744, metadata !DIExpression()), !dbg !6759
  call void @llvm.lifetime.start.p0(i64 8, ptr %vd) #18, !dbg !6760
  call void @llvm.dbg.declare(metadata ptr %vd, metadata !6745, metadata !DIExpression()), !dbg !6761
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !6762
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6746, metadata !DIExpression()), !dbg !6763
  call void @llvm.lifetime.start.p0(i64 16, ptr %head) #18, !dbg !6764
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6747, metadata !DIExpression()), !dbg !6764
  %next = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 0, !dbg !6764
  store ptr %head, ptr %next, align 8, !dbg !6764
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1, !dbg !6764
  store ptr %head, ptr %prev, align 8, !dbg !6764
  br label %do.body, !dbg !6765

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6766

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !6767
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6748, metadata !DIExpression()), !dbg !6767
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !6767
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6752, metadata !DIExpression()), !dbg !6767
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6767
  %conv = zext i1 %cmp to i32, !dbg !6767
  store i32 1, ptr %tmp, align 4, !dbg !6767
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !6768
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !6768
  %0 = load i32, ptr %tmp, align 4, !dbg !6767
  %1 = load ptr, ptr %vc.addr, align 8, !dbg !6768
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 3, !dbg !6768
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !6768
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !6768
  store i64 %call2, ptr %flags, align 8, !dbg !6768
  br label %do.cond, !dbg !6768

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6768

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6766

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6766

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %vc.addr, align 8, !dbg !6769
  call void @vchan_get_all_descriptors(ptr noundef %2, ptr noundef %head) #19, !dbg !6770
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6771
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6753, metadata !DIExpression()), !dbg !6771
  %next5 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 0, !dbg !6771
  %3 = load ptr, ptr %next5, align 8, !dbg !6771
  store ptr %3, ptr %__mptr, align 8, !dbg !6771
  %4 = load ptr, ptr %__mptr, align 8, !dbg !6771
  %add.ptr = getelementptr i8, ptr %4, i64 -96, !dbg !6771
  store ptr %add.ptr, ptr %tmp6, align 8, !dbg !6771
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6772
  %5 = load ptr, ptr %tmp6, align 8, !dbg !6771
  store ptr %5, ptr %vd, align 8, !dbg !6772
  br label %for.cond, !dbg !6772

for.cond:                                         ; preds = %for.inc, %do.end4
  %6 = load ptr, ptr %vd, align 8, !dbg !6773
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %6, i32 0, i32 2, !dbg !6773
  %cmp7 = icmp eq ptr %node, %head, !dbg !6773
  %lnot = xor i1 %cmp7, true, !dbg !6773
  br i1 %lnot, label %for.body, label %for.end, !dbg !6772

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %vd, align 8, !dbg !6774
  %tx = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 0, !dbg !6775
  call void @dmaengine_desc_clear_reuse(ptr noundef %tx) #19, !dbg !6776
  br label %for.inc, !dbg !6776

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #18, !dbg !6777
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !6756, metadata !DIExpression()), !dbg !6777
  %8 = load ptr, ptr %vd, align 8, !dbg !6777
  %node10 = getelementptr inbounds %struct.virt_dma_desc, ptr %8, i32 0, i32 2, !dbg !6777
  %next11 = getelementptr inbounds %struct.list_head, ptr %node10, i32 0, i32 0, !dbg !6777
  %9 = load ptr, ptr %next11, align 8, !dbg !6777
  store ptr %9, ptr %__mptr9, align 8, !dbg !6777
  %10 = load ptr, ptr %__mptr9, align 8, !dbg !6777
  %add.ptr13 = getelementptr i8, ptr %10, i64 -96, !dbg !6777
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !6777
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #18, !dbg !6773
  %11 = load ptr, ptr %tmp12, align 8, !dbg !6777
  store ptr %11, ptr %vd, align 8, !dbg !6773
  br label %for.cond, !dbg !6773, !llvm.loop !6778

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %vc.addr, align 8, !dbg !6780
  %lock14 = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 3, !dbg !6781
  %13 = load i64, ptr %flags, align 8, !dbg !6782
  call void @spin_unlock_irqrestore(ptr noundef %lock14, i64 noundef %13) #19, !dbg !6783
  %14 = load ptr, ptr %vc.addr, align 8, !dbg !6784
  call void @vchan_dma_desc_free_list(ptr noundef %14, ptr noundef %head) #19, !dbg !6785
  call void @llvm.lifetime.end.p0(i64 16, ptr %head) #18, !dbg !6786
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !6786
  call void @llvm.lifetime.end.p0(i64 8, ptr %vd) #18, !dbg !6786
  ret void, !dbg !6786
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vchan_get_all_descriptors(ptr noundef %vc, ptr noundef %head) #5 align 16 !dbg !6787 {
entry:
  %vc.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !6791, metadata !DIExpression()), !dbg !6793
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6792, metadata !DIExpression()), !dbg !6794
  %0 = load ptr, ptr %vc.addr, align 8, !dbg !6795
  %desc_allocated = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, !dbg !6796
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6797
  call void @list_splice_tail_init(ptr noundef %desc_allocated, ptr noundef %1) #19, !dbg !6798
  %2 = load ptr, ptr %vc.addr, align 8, !dbg !6799
  %desc_submitted = getelementptr inbounds %struct.virt_dma_chan, ptr %2, i32 0, i32 5, !dbg !6800
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6801
  call void @list_splice_tail_init(ptr noundef %desc_submitted, ptr noundef %3) #19, !dbg !6802
  %4 = load ptr, ptr %vc.addr, align 8, !dbg !6803
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %4, i32 0, i32 6, !dbg !6804
  %5 = load ptr, ptr %head.addr, align 8, !dbg !6805
  call void @list_splice_tail_init(ptr noundef %desc_issued, ptr noundef %5) #19, !dbg !6806
  %6 = load ptr, ptr %vc.addr, align 8, !dbg !6807
  %desc_completed = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 7, !dbg !6808
  %7 = load ptr, ptr %head.addr, align 8, !dbg !6809
  call void @list_splice_tail_init(ptr noundef %desc_completed, ptr noundef %7) #19, !dbg !6810
  %8 = load ptr, ptr %vc.addr, align 8, !dbg !6811
  %desc_terminated = getelementptr inbounds %struct.virt_dma_chan, ptr %8, i32 0, i32 8, !dbg !6812
  %9 = load ptr, ptr %head.addr, align 8, !dbg !6813
  call void @list_splice_tail_init(ptr noundef %desc_terminated, ptr noundef %9) #19, !dbg !6814
  ret void, !dbg !6815
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dmaengine_desc_clear_reuse(ptr noundef %tx) #5 align 16 !dbg !6816 {
entry:
  %tx.addr = alloca ptr, align 8
  store ptr %tx, ptr %tx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tx.addr, metadata !6818, metadata !DIExpression()), !dbg !6819
  %0 = load ptr, ptr %tx.addr, align 8, !dbg !6820
  %flags = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 1, !dbg !6821
  %1 = load i32, ptr %flags, align 4, !dbg !6822
  %and = and i32 %1, -65, !dbg !6822
  store i32 %and, ptr %flags, align 4, !dbg !6822
  ret void, !dbg !6823
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6824 dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_splice_tail_init(ptr noundef %list, ptr noundef %head) #5 align 16 !dbg !6825 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6827, metadata !DIExpression()), !dbg !6829
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6828, metadata !DIExpression()), !dbg !6830
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6831
  %call = call i32 @list_empty(ptr noundef %0) #19, !dbg !6833
  %tobool = icmp ne i32 %call, 0, !dbg !6833
  br i1 %tobool, label %if.end, label %if.then, !dbg !6834

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6835
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6837
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6838
  %3 = load ptr, ptr %prev, align 8, !dbg !6838
  %4 = load ptr, ptr %head.addr, align 8, !dbg !6839
  call void @__list_splice(ptr noundef %1, ptr noundef %3, ptr noundef %4) #19, !dbg !6840
  %5 = load ptr, ptr %list.addr, align 8, !dbg !6841
  call void @INIT_LIST_HEAD(ptr noundef %5) #19, !dbg !6842
  br label %if.end, !dbg !6843

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6844
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #5 align 16 !dbg !6845 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6851, metadata !DIExpression()), !dbg !6852
  br label %do.body, !dbg !6853

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6855

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6853
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6853
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6853
  store ptr %1, ptr %tmp, align 8, !dbg !6855
  %2 = load ptr, ptr %tmp, align 8, !dbg !6853
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6857
  %cmp = icmp eq ptr %2, %3, !dbg !6858
  %conv = zext i1 %cmp to i32, !dbg !6858
  ret i32 %conv, !dbg !6859
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_splice(ptr noundef %list, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6860 {
entry:
  %list.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6864, metadata !DIExpression()), !dbg !6869
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6865, metadata !DIExpression()), !dbg !6870
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6866, metadata !DIExpression()), !dbg !6871
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #18, !dbg !6872
  call void @llvm.dbg.declare(metadata ptr %first, metadata !6867, metadata !DIExpression()), !dbg !6873
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6874
  %next1 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6875
  %1 = load ptr, ptr %next1, align 8, !dbg !6875
  store ptr %1, ptr %first, align 8, !dbg !6873
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #18, !dbg !6876
  call void @llvm.dbg.declare(metadata ptr %last, metadata !6868, metadata !DIExpression()), !dbg !6877
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6878
  %prev2 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6879
  %3 = load ptr, ptr %prev2, align 8, !dbg !6879
  store ptr %3, ptr %last, align 8, !dbg !6877
  %4 = load ptr, ptr %prev.addr, align 8, !dbg !6880
  %5 = load ptr, ptr %first, align 8, !dbg !6881
  %prev3 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1, !dbg !6882
  store ptr %4, ptr %prev3, align 8, !dbg !6883
  %6 = load ptr, ptr %first, align 8, !dbg !6884
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6885
  %next4 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !6886
  store ptr %6, ptr %next4, align 8, !dbg !6887
  %8 = load ptr, ptr %next.addr, align 8, !dbg !6888
  %9 = load ptr, ptr %last, align 8, !dbg !6889
  %next5 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !6890
  store ptr %8, ptr %next5, align 8, !dbg !6891
  %10 = load ptr, ptr %last, align 8, !dbg !6892
  %11 = load ptr, ptr %next.addr, align 8, !dbg !6893
  %prev6 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1, !dbg !6894
  store ptr %10, ptr %prev6, align 8, !dbg !6895
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #18, !dbg !6896
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #18, !dbg !6896
  ret void, !dbg !6896
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_hsu_dma_chan(ptr noundef %chan) #5 align 16 !dbg !6897 {
entry:
  %chan.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !6901, metadata !DIExpression()), !dbg !6904
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6905
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6902, metadata !DIExpression()), !dbg !6905
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !6905
  store ptr %0, ptr %__mptr, align 8, !dbg !6905
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6905
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6905
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6905
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6906
  %2 = load ptr, ptr %tmp, align 8, !dbg !6905
  ret ptr %2, !dbg !6907
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hsu_dma_alloc_desc(i32 noundef %nents) #0 align 16 !dbg !6908 {
entry:
  %retval = alloca ptr, align 8
  %nents.addr = alloca i32, align 4
  %desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %nents, ptr %nents.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nents.addr, metadata !6912, metadata !DIExpression()), !dbg !6914
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #18, !dbg !6915
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !6913, metadata !DIExpression()), !dbg !6916
  %call = call noalias ptr @kzalloc(i64 noundef 152, i32 noundef 2048) #23, !dbg !6917
  store ptr %call, ptr %desc, align 8, !dbg !6918
  %0 = load ptr, ptr %desc, align 8, !dbg !6919
  %tobool = icmp ne ptr %0, null, !dbg !6919
  br i1 %tobool, label %if.end, label %if.then, !dbg !6921

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6922

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %nents.addr, align 4, !dbg !6923
  %conv = zext i32 %1 to i64, !dbg !6923
  %call1 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 16, i32 noundef 2048) #24, !dbg !6924
  %2 = load ptr, ptr %desc, align 8, !dbg !6925
  %sg = getelementptr inbounds %struct.hsu_dma_desc, ptr %2, i32 0, i32 2, !dbg !6926
  store ptr %call1, ptr %sg, align 8, !dbg !6927
  %3 = load ptr, ptr %desc, align 8, !dbg !6928
  %sg2 = getelementptr inbounds %struct.hsu_dma_desc, ptr %3, i32 0, i32 2, !dbg !6930
  %4 = load ptr, ptr %sg2, align 8, !dbg !6930
  %tobool3 = icmp ne ptr %4, null, !dbg !6928
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6931

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %desc, align 8, !dbg !6932
  call void @kfree(ptr noundef %5) #19, !dbg !6934
  store ptr null, ptr %retval, align 8, !dbg !6935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6935

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %desc, align 8, !dbg !6936
  store ptr %6, ptr %retval, align 8, !dbg !6937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6937

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #18, !dbg !6938
  %7 = load ptr, ptr %retval, align 8, !dbg !6938
  ret ptr %7, !dbg !6938
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6939 dso_local ptr @sg_next(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @vchan_tx_prep(ptr noundef %vc, ptr noundef %vd, i64 noundef %tx_flags) #5 align 16 !dbg !6942 {
entry:
  %vc.addr = alloca ptr, align 8
  %vd.addr = alloca ptr, align 8
  %tx_flags.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !6946, metadata !DIExpression()), !dbg !6955
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !6947, metadata !DIExpression()), !dbg !6956
  store i64 %tx_flags, ptr %tx_flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tx_flags.addr, metadata !6948, metadata !DIExpression()), !dbg !6957
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !6958
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6949, metadata !DIExpression()), !dbg !6959
  %0 = load ptr, ptr %vd.addr, align 8, !dbg !6960
  %tx = getelementptr inbounds %struct.virt_dma_desc, ptr %0, i32 0, i32 0, !dbg !6961
  %1 = load ptr, ptr %vc.addr, align 8, !dbg !6962
  %chan = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 0, !dbg !6963
  call void @dma_async_tx_descriptor_init(ptr noundef %tx, ptr noundef %chan) #19, !dbg !6964
  %2 = load i64, ptr %tx_flags.addr, align 8, !dbg !6965
  %conv = trunc i64 %2 to i32, !dbg !6965
  %3 = load ptr, ptr %vd.addr, align 8, !dbg !6966
  %tx1 = getelementptr inbounds %struct.virt_dma_desc, ptr %3, i32 0, i32 0, !dbg !6967
  %flags2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx1, i32 0, i32 1, !dbg !6968
  store i32 %conv, ptr %flags2, align 4, !dbg !6969
  %4 = load ptr, ptr %vd.addr, align 8, !dbg !6970
  %tx3 = getelementptr inbounds %struct.virt_dma_desc, ptr %4, i32 0, i32 0, !dbg !6971
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx3, i32 0, i32 4, !dbg !6972
  store ptr @vchan_tx_submit, ptr %tx_submit, align 8, !dbg !6973
  %5 = load ptr, ptr %vd.addr, align 8, !dbg !6974
  %tx4 = getelementptr inbounds %struct.virt_dma_desc, ptr %5, i32 0, i32 0, !dbg !6975
  %desc_free = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx4, i32 0, i32 5, !dbg !6976
  store ptr @vchan_tx_desc_free, ptr %desc_free, align 8, !dbg !6977
  %6 = load ptr, ptr %vd.addr, align 8, !dbg !6978
  %tx_result = getelementptr inbounds %struct.virt_dma_desc, ptr %6, i32 0, i32 1, !dbg !6979
  %result = getelementptr inbounds %struct.dmaengine_result, ptr %tx_result, i32 0, i32 0, !dbg !6980
  store i32 0, ptr %result, align 8, !dbg !6981
  %7 = load ptr, ptr %vd.addr, align 8, !dbg !6982
  %tx_result5 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 1, !dbg !6983
  %residue = getelementptr inbounds %struct.dmaengine_result, ptr %tx_result5, i32 0, i32 1, !dbg !6984
  store i32 0, ptr %residue, align 4, !dbg !6985
  br label %do.body, !dbg !6986

do.body:                                          ; preds = %entry
  br label %do.body6, !dbg !6987

do.body6:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !6988
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6950, metadata !DIExpression()), !dbg !6988
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !6988
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6954, metadata !DIExpression()), !dbg !6988
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6988
  %conv7 = zext i1 %cmp to i32, !dbg !6988
  store i32 1, ptr %tmp, align 4, !dbg !6988
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !6989
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !6989
  %8 = load i32, ptr %tmp, align 4, !dbg !6988
  %9 = load ptr, ptr %vc.addr, align 8, !dbg !6989
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 3, !dbg !6989
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !6989
  %call8 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !6989
  store i64 %call8, ptr %flags, align 8, !dbg !6989
  br label %do.cond, !dbg !6989

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !6989

do.end:                                           ; preds = %do.cond
  br label %do.cond9, !dbg !6987

do.cond9:                                         ; preds = %do.end
  br label %do.end10, !dbg !6987

do.end10:                                         ; preds = %do.cond9
  %10 = load ptr, ptr %vd.addr, align 8, !dbg !6990
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2, !dbg !6991
  %11 = load ptr, ptr %vc.addr, align 8, !dbg !6992
  %desc_allocated = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 4, !dbg !6993
  call void @list_add_tail(ptr noundef %node, ptr noundef %desc_allocated) #19, !dbg !6994
  %12 = load ptr, ptr %vc.addr, align 8, !dbg !6995
  %lock11 = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 3, !dbg !6996
  %13 = load i64, ptr %flags, align 8, !dbg !6997
  call void @spin_unlock_irqrestore(ptr noundef %lock11, i64 noundef %13) #19, !dbg !6998
  %14 = load ptr, ptr %vd.addr, align 8, !dbg !6999
  %tx12 = getelementptr inbounds %struct.virt_dma_desc, ptr %14, i32 0, i32 0, !dbg !7000
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !7001
  ret ptr %tx12, !dbg !7002
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !7003 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7007, metadata !DIExpression()), !dbg !7009
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7008, metadata !DIExpression()), !dbg !7010
  %0 = load i64, ptr %size.addr, align 8, !dbg !7011
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7012
  %or = or i32 %1, 256, !dbg !7013
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #23, !dbg !7014
  ret ptr %call, !dbg !7015
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !7016 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7020, metadata !DIExpression()), !dbg !7023
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7021, metadata !DIExpression()), !dbg !7024
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7022, metadata !DIExpression()), !dbg !7025
  %0 = load i64, ptr %n.addr, align 8, !dbg !7026
  %1 = load i64, ptr %size.addr, align 8, !dbg !7027
  %2 = load i32, ptr %flags.addr, align 4, !dbg !7028
  %or = or i32 %2, 256, !dbg !7029
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #24, !dbg !7030
  ret ptr %call, !dbg !7031
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !7032 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7034, metadata !DIExpression()), !dbg !7039
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7035, metadata !DIExpression()), !dbg !7040
  %0 = load i64, ptr %size.addr, align 8, !dbg !7041
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7042
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7043

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7044
  %tobool = icmp ne i64 %2, 0, !dbg !7044
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7045

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !7046
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7036, metadata !DIExpression()), !dbg !7047
  %3 = load i64, ptr %size.addr, align 8, !dbg !7048
  %cmp = icmp ugt i64 %3, 8192, !dbg !7050
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7051

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7052
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7053
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #23, !dbg !7054
  store ptr %call, ptr %retval, align 8, !dbg !7055
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7055

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7056
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !7056
  store i32 %call2, ptr %index, align 4, !dbg !7057
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7058
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7059
  %9 = ptrtoint ptr %8 to i64, !dbg !7059
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !7060
  %idxprom = zext i32 %call3 to i64, !dbg !7061
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7061
  %10 = load i32, ptr %index, align 4, !dbg !7062
  %idxprom4 = zext i32 %10 to i64, !dbg !7061
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7061
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7061
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7063
  %13 = load i64, ptr %size.addr, align 8, !dbg !7064
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #25, !dbg !7065
  store ptr %call6, ptr %retval, align 8, !dbg !7066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7066

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !7067
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7068
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7069
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #23, !dbg !7070
  store ptr %call8, ptr %retval, align 8, !dbg !7071
  br label %return, !dbg !7071

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7072
  ret ptr %16, !dbg !7072
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7073 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !7074 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7078, metadata !DIExpression()), !dbg !7080
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7079, metadata !DIExpression()), !dbg !7081
  %0 = load i64, ptr %size.addr, align 8, !dbg !7082
  %tobool = icmp ne i64 %0, 0, !dbg !7082
  br i1 %tobool, label %if.end, label %if.then, !dbg !7084

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7085
  br label %return, !dbg !7085

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7086
  %cmp = icmp ule i64 %1, 8, !dbg !7088
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7089

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7090
  br label %return, !dbg !7090

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7091
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7093
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7094

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7095
  %cmp4 = icmp ule i64 %3, 96, !dbg !7096
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7097

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7098
  br label %return, !dbg !7098

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7099
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7101
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7102

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7103
  %cmp9 = icmp ule i64 %5, 192, !dbg !7104
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7105

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7106
  br label %return, !dbg !7106

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7107
  %cmp12 = icmp ule i64 %6, 8, !dbg !7109
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7110

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7111
  br label %return, !dbg !7111

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7112
  %cmp15 = icmp ule i64 %7, 16, !dbg !7114
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7115

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7116
  br label %return, !dbg !7116

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7117
  %cmp18 = icmp ule i64 %8, 32, !dbg !7119
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7120

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7121
  br label %return, !dbg !7121

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7122
  %cmp21 = icmp ule i64 %9, 64, !dbg !7124
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7125

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7126
  br label %return, !dbg !7126

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7127
  %cmp24 = icmp ule i64 %10, 128, !dbg !7129
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7130

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7131
  br label %return, !dbg !7131

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7132
  %cmp27 = icmp ule i64 %11, 256, !dbg !7134
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7135

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7136
  br label %return, !dbg !7136

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7137
  %cmp30 = icmp ule i64 %12, 512, !dbg !7139
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7140

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7141
  br label %return, !dbg !7141

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7142
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7144
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7145

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7146
  br label %return, !dbg !7146

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7147
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7149
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7150

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7151
  br label %return, !dbg !7151

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7152
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7154
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7155

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7156
  br label %return, !dbg !7156

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7157
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7159
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7160

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7161
  br label %return, !dbg !7161

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7162
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7164
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7165

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7166
  br label %return, !dbg !7166

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7167
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7169
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7170

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7171
  br label %return, !dbg !7171

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7172
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7174
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7175

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7176
  br label %return, !dbg !7176

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7177
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7179
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7180

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7181
  br label %return, !dbg !7181

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7182
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7184
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7185

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7186
  br label %return, !dbg !7186

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7187
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7189
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7190

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7191
  br label %return, !dbg !7191

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7192
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7194
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7195

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7196
  br label %return, !dbg !7196

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7197
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7199
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7200

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7201
  br label %return, !dbg !7201

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7202, !range !6547, !noundef !1046
  %tobool69 = trunc i8 %25 to i1, !dbg !7202
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7204

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7205

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_229() #26, !dbg !7206, !srcloc !7209
  unreachable, !dbg !7206

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7210

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7211

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7212

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7214

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7212

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #18, !dbg !7216, !srcloc !7218
  br label %do.end75, !dbg !7216

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7212

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7219
  br label %return, !dbg !7219

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7220
  ret i32 %26, !dbg !7220
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7221 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !7227 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7231, metadata !DIExpression()), !dbg !7233
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7232, metadata !DIExpression()), !dbg !7234
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7235
  %and = and i32 %0, 17, !dbg !7235
  %cmp = icmp eq i32 %and, 0, !dbg !7235
  %lnot = xor i1 %cmp, true, !dbg !7235
  %lnot1 = xor i1 %lnot, true, !dbg !7235
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7235
  %conv = sext i32 %lnot.ext to i64, !dbg !7235
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7235
  %tobool = icmp ne i64 %expval, 0, !dbg !7235
  br i1 %tobool, label %if.then, label %if.end, !dbg !7237

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7238
  br label %return, !dbg !7238

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7239
  %and2 = and i32 %1, 1, !dbg !7241
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7241
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7242

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7243
  br label %return, !dbg !7243

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7244
  br label %return, !dbg !7244

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7246
  ret i32 %2, !dbg !7246
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7247 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7248 dso_local void @__compiletime_assert_229() #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !7249 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7251, metadata !DIExpression()), !dbg !7255
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7252, metadata !DIExpression()), !dbg !7256
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7253, metadata !DIExpression()), !dbg !7257
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !7258
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !7254, metadata !DIExpression()), !dbg !7259
  %0 = load i64, ptr %n.addr, align 8, !dbg !7260
  %1 = load i64, ptr %size.addr, align 8, !dbg !7260
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !7260
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !7260
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !7260
  store i64 %4, ptr %bytes, align 8, !dbg !7260
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #19, !dbg !7260
  %lnot = xor i1 %call, true, !dbg !7260
  %lnot1 = xor i1 %lnot, true, !dbg !7260
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7260
  %conv = sext i32 %lnot.ext to i64, !dbg !7260
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7260
  %tobool = icmp ne i64 %expval, 0, !dbg !7260
  br i1 %tobool, label %if.then, label %if.end, !dbg !7262

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !7263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7263

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !7264
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !7266
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !7267

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !7268
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !7269
  br i1 %8, label %if.then2, label %if.end4, !dbg !7270

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !7271
  %10 = load i32, ptr %flags.addr, align 4, !dbg !7272
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #23, !dbg !7273
  store ptr %call3, ptr %retval, align 8, !dbg !7274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7274

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !7275
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7276
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #23, !dbg !7277
  store ptr %call5, ptr %retval, align 8, !dbg !7278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7278

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !7279
  %13 = load ptr, ptr %retval, align 8, !dbg !7279
  ret ptr %13, !dbg !7279
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7280 dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vchan_issue_pending(ptr noundef %vc) #5 align 16 !dbg !7283 {
entry:
  %vc.addr = alloca ptr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !7287, metadata !DIExpression()), !dbg !7288
  %0 = load ptr, ptr %vc.addr, align 8, !dbg !7289
  %desc_submitted = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, !dbg !7290
  %1 = load ptr, ptr %vc.addr, align 8, !dbg !7291
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 6, !dbg !7292
  call void @list_splice_tail_init(ptr noundef %desc_submitted, ptr noundef %desc_issued) #19, !dbg !7293
  %2 = load ptr, ptr %vc.addr, align 8, !dbg !7294
  %desc_issued1 = getelementptr inbounds %struct.virt_dma_chan, ptr %2, i32 0, i32 6, !dbg !7295
  %call = call i32 @list_empty(ptr noundef %desc_issued1) #19, !dbg !7296
  %tobool = icmp ne i32 %call, 0, !dbg !7297
  %lnot = xor i1 %tobool, true, !dbg !7297
  ret i1 %lnot, !dbg !7298
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_cookie_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef %state) #5 align 16 !dbg !7299 {
entry:
  %chan.addr = alloca ptr, align 8
  %cookie.addr = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %used = alloca i32, align 4
  %complete = alloca i32, align 4
  store ptr %chan, ptr %chan.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chan.addr, metadata !7301, metadata !DIExpression()), !dbg !7306
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !7302, metadata !DIExpression()), !dbg !7307
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !7303, metadata !DIExpression()), !dbg !7308
  call void @llvm.lifetime.start.p0(i64 4, ptr %used) #18, !dbg !7309
  call void @llvm.dbg.declare(metadata ptr %used, metadata !7304, metadata !DIExpression()), !dbg !7310
  call void @llvm.lifetime.start.p0(i64 4, ptr %complete) #18, !dbg !7309
  call void @llvm.dbg.declare(metadata ptr %complete, metadata !7305, metadata !DIExpression()), !dbg !7311
  %0 = load ptr, ptr %chan.addr, align 8, !dbg !7312
  %cookie1 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2, !dbg !7313
  %1 = load i32, ptr %cookie1, align 8, !dbg !7313
  store i32 %1, ptr %used, align 4, !dbg !7314
  %2 = load ptr, ptr %chan.addr, align 8, !dbg !7315
  %completed_cookie = getelementptr inbounds %struct.dma_chan, ptr %2, i32 0, i32 3, !dbg !7316
  %3 = load i32, ptr %completed_cookie, align 4, !dbg !7316
  store i32 %3, ptr %complete, align 4, !dbg !7317
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !7318, !srcloc !7319
  %4 = load ptr, ptr %state.addr, align 8, !dbg !7320
  %tobool = icmp ne ptr %4, null, !dbg !7320
  br i1 %tobool, label %if.then, label %if.end, !dbg !7322

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %complete, align 4, !dbg !7323
  %6 = load ptr, ptr %state.addr, align 8, !dbg !7325
  %last = getelementptr inbounds %struct.dma_tx_state, ptr %6, i32 0, i32 0, !dbg !7326
  store i32 %5, ptr %last, align 4, !dbg !7327
  %7 = load i32, ptr %used, align 4, !dbg !7328
  %8 = load ptr, ptr %state.addr, align 8, !dbg !7329
  %used2 = getelementptr inbounds %struct.dma_tx_state, ptr %8, i32 0, i32 1, !dbg !7330
  store i32 %7, ptr %used2, align 4, !dbg !7331
  %9 = load ptr, ptr %state.addr, align 8, !dbg !7332
  %residue = getelementptr inbounds %struct.dma_tx_state, ptr %9, i32 0, i32 2, !dbg !7333
  store i32 0, ptr %residue, align 4, !dbg !7334
  %10 = load ptr, ptr %state.addr, align 8, !dbg !7335
  %in_flight_bytes = getelementptr inbounds %struct.dma_tx_state, ptr %10, i32 0, i32 3, !dbg !7336
  store i32 0, ptr %in_flight_bytes, align 4, !dbg !7337
  br label %if.end, !dbg !7338

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %cookie.addr, align 4, !dbg !7339
  %12 = load i32, ptr %complete, align 4, !dbg !7340
  %13 = load i32, ptr %used, align 4, !dbg !7341
  %call = call i32 @dma_async_is_complete(i32 noundef %11, i32 noundef %12, i32 noundef %13) #19, !dbg !7342
  call void @llvm.lifetime.end.p0(i64 4, ptr %complete) #18, !dbg !7343
  call void @llvm.lifetime.end.p0(i64 4, ptr %used) #18, !dbg !7343
  ret i32 %call, !dbg !7344
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7345 dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hsu_dma_active_desc_size(ptr noundef %hsuc) #0 align 16 !dbg !7348 {
entry:
  %hsuc.addr = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %bytes = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %hsuc, ptr %hsuc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hsuc.addr, metadata !7352, metadata !DIExpression()), !dbg !7356
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #18, !dbg !7357
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !7353, metadata !DIExpression()), !dbg !7358
  %0 = load ptr, ptr %hsuc.addr, align 8, !dbg !7359
  %desc1 = getelementptr inbounds %struct.hsu_dma_chan, ptr %0, i32 0, i32 4, !dbg !7360
  %1 = load ptr, ptr %desc1, align 8, !dbg !7360
  store ptr %1, ptr %desc, align 8, !dbg !7358
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !7361
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !7354, metadata !DIExpression()), !dbg !7362
  store i64 0, ptr %bytes, align 8, !dbg !7362
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !7363
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7355, metadata !DIExpression()), !dbg !7364
  %2 = load ptr, ptr %desc, align 8, !dbg !7365
  %active = getelementptr inbounds %struct.hsu_dma_desc, ptr %2, i32 0, i32 5, !dbg !7367
  %3 = load i32, ptr %active, align 8, !dbg !7367
  store i32 %3, ptr %i, align 4, !dbg !7368
  br label %for.cond, !dbg !7369

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !7370
  %5 = load ptr, ptr %desc, align 8, !dbg !7372
  %nents = getelementptr inbounds %struct.hsu_dma_desc, ptr %5, i32 0, i32 3, !dbg !7373
  %6 = load i32, ptr %nents, align 8, !dbg !7373
  %cmp = icmp ult i32 %4, %6, !dbg !7374
  br i1 %cmp, label %for.body, label %for.end, !dbg !7375

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %desc, align 8, !dbg !7376
  %sg = getelementptr inbounds %struct.hsu_dma_desc, ptr %7, i32 0, i32 2, !dbg !7377
  %8 = load ptr, ptr %sg, align 8, !dbg !7377
  %9 = load i32, ptr %i, align 4, !dbg !7378
  %idxprom = sext i32 %9 to i64, !dbg !7376
  %arrayidx = getelementptr %struct.hsu_dma_sg, ptr %8, i64 %idxprom, !dbg !7376
  %len = getelementptr inbounds %struct.hsu_dma_sg, ptr %arrayidx, i32 0, i32 1, !dbg !7379
  %10 = load i32, ptr %len, align 8, !dbg !7379
  %conv = zext i32 %10 to i64, !dbg !7376
  %11 = load i64, ptr %bytes, align 8, !dbg !7380
  %add = add i64 %11, %conv, !dbg !7380
  store i64 %add, ptr %bytes, align 8, !dbg !7380
  br label %for.inc, !dbg !7381

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !7382
  %inc = add i32 %12, 1, !dbg !7382
  store i32 %inc, ptr %i, align 4, !dbg !7382
  br label %for.cond, !dbg !7383, !llvm.loop !7384

for.end:                                          ; preds = %for.cond
  store i32 3, ptr %i, align 4, !dbg !7386
  br label %do.body, !dbg !7387

do.body:                                          ; preds = %do.cond, %for.end
  %13 = load ptr, ptr %hsuc.addr, align 8, !dbg !7388
  %14 = load i32, ptr %i, align 4, !dbg !7390
  %mul = mul i32 8, %14, !dbg !7390
  %add2 = add i32 36, %mul, !dbg !7390
  %call = call i32 @hsu_chan_readl(ptr noundef %13, i32 noundef %add2) #19, !dbg !7391
  %conv3 = zext i32 %call to i64, !dbg !7391
  %15 = load i64, ptr %bytes, align 8, !dbg !7392
  %add4 = add i64 %15, %conv3, !dbg !7392
  store i64 %add4, ptr %bytes, align 8, !dbg !7392
  br label %do.cond, !dbg !7393

do.cond:                                          ; preds = %do.body
  %16 = load i32, ptr %i, align 4, !dbg !7394
  %dec = add i32 %16, -1, !dbg !7394
  store i32 %dec, ptr %i, align 4, !dbg !7394
  %cmp5 = icmp sge i32 %dec, 0, !dbg !7395
  br i1 %cmp5, label %do.body, label %do.end, !dbg !7393, !llvm.loop !7396

do.end:                                           ; preds = %do.cond
  %17 = load i64, ptr %bytes, align 8, !dbg !7398
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !7399
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !7399
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #18, !dbg !7399
  ret i64 %17, !dbg !7400
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_set_residue(ptr noundef %state, i32 noundef %residue) #5 align 16 !dbg !7401 {
entry:
  %state.addr = alloca ptr, align 8
  %residue.addr = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !7405, metadata !DIExpression()), !dbg !7407
  store i32 %residue, ptr %residue.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %residue.addr, metadata !7406, metadata !DIExpression()), !dbg !7408
  %0 = load ptr, ptr %state.addr, align 8, !dbg !7409
  %tobool = icmp ne ptr %0, null, !dbg !7409
  br i1 %tobool, label %if.then, label %if.end, !dbg !7411

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %residue.addr, align 4, !dbg !7412
  %2 = load ptr, ptr %state.addr, align 8, !dbg !7413
  %residue1 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2, !dbg !7414
  store i32 %1, ptr %residue1, align 4, !dbg !7415
  br label %if.end, !dbg !7413

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7416
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_async_is_complete(i32 noundef %cookie, i32 noundef %last_complete, i32 noundef %last_used) #5 align 16 !dbg !7417 {
entry:
  %retval = alloca i32, align 4
  %cookie.addr = alloca i32, align 4
  %last_complete.addr = alloca i32, align 4
  %last_used.addr = alloca i32, align 4
  store i32 %cookie, ptr %cookie.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !7421, metadata !DIExpression()), !dbg !7424
  store i32 %last_complete, ptr %last_complete.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %last_complete.addr, metadata !7422, metadata !DIExpression()), !dbg !7425
  store i32 %last_used, ptr %last_used.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %last_used.addr, metadata !7423, metadata !DIExpression()), !dbg !7426
  %0 = load i32, ptr %last_complete.addr, align 4, !dbg !7427
  %1 = load i32, ptr %last_used.addr, align 4, !dbg !7429
  %cmp = icmp sle i32 %0, %1, !dbg !7430
  br i1 %cmp, label %if.then, label %if.else, !dbg !7431

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %cookie.addr, align 4, !dbg !7432
  %3 = load i32, ptr %last_complete.addr, align 4, !dbg !7435
  %cmp1 = icmp sle i32 %2, %3, !dbg !7436
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !7437

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i32, ptr %cookie.addr, align 4, !dbg !7438
  %5 = load i32, ptr %last_used.addr, align 4, !dbg !7439
  %cmp2 = icmp sgt i32 %4, %5, !dbg !7440
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !7441

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  store i32 0, ptr %retval, align 4, !dbg !7442
  br label %return, !dbg !7442

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end8, !dbg !7443

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %cookie.addr, align 4, !dbg !7444
  %7 = load i32, ptr %last_complete.addr, align 4, !dbg !7447
  %cmp4 = icmp sle i32 %6, %7, !dbg !7448
  br i1 %cmp4, label %land.lhs.true, label %if.end7, !dbg !7449

land.lhs.true:                                    ; preds = %if.else
  %8 = load i32, ptr %cookie.addr, align 4, !dbg !7450
  %9 = load i32, ptr %last_used.addr, align 4, !dbg !7451
  %cmp5 = icmp sgt i32 %8, %9, !dbg !7452
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !7453

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !7454
  br label %return, !dbg !7454

if.end7:                                          ; preds = %land.lhs.true, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  store i32 1, ptr %retval, align 4, !dbg !7455
  br label %return, !dbg !7455

return:                                           ; preds = %if.end8, %if.then6, %if.then3
  %10 = load i32, ptr %retval, align 4, !dbg !7456
  ret i32 %10, !dbg !7456
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hsu_dma_stop_channel(ptr noundef %hsuc) #0 align 16 !dbg !7457 {
entry:
  %hsuc.addr = alloca ptr, align 8
  store ptr %hsuc, ptr %hsuc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hsuc.addr, metadata !7459, metadata !DIExpression()), !dbg !7460
  %0 = load ptr, ptr %hsuc.addr, align 8, !dbg !7461
  call void @hsu_chan_disable(ptr noundef %0) #19, !dbg !7462
  %1 = load ptr, ptr %hsuc.addr, align 8, !dbg !7463
  call void @hsu_chan_writel(ptr noundef %1, i32 noundef 8, i32 noundef 0) #19, !dbg !7464
  ret void, !dbg !7465
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vchan_synchronize(ptr noundef %vc) #5 align 16 !dbg !7466 {
entry:
  %vc.addr = alloca ptr, align 8
  %head = alloca %struct.list_head, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %vc, ptr %vc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vc.addr, metadata !7468, metadata !DIExpression()), !dbg !7476
  call void @llvm.lifetime.start.p0(i64 16, ptr %head) #18, !dbg !7477
  call void @llvm.dbg.declare(metadata ptr %head, metadata !7469, metadata !DIExpression()), !dbg !7477
  %next = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 0, !dbg !7477
  store ptr %head, ptr %next, align 8, !dbg !7477
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1, !dbg !7477
  store ptr %head, ptr %prev, align 8, !dbg !7477
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !7478
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !7470, metadata !DIExpression()), !dbg !7479
  %0 = load ptr, ptr %vc.addr, align 8, !dbg !7480
  %task = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 1, !dbg !7481
  call void @tasklet_kill(ptr noundef %task) #19, !dbg !7482
  br label %do.body, !dbg !7483

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !7484

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !7485
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !7471, metadata !DIExpression()), !dbg !7485
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !7485
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !7475, metadata !DIExpression()), !dbg !7485
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !7485
  %conv = zext i1 %cmp to i32, !dbg !7485
  store i32 1, ptr %tmp, align 4, !dbg !7485
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !7486
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !7486
  %1 = load i32, ptr %tmp, align 4, !dbg !7485
  %2 = load ptr, ptr %vc.addr, align 8, !dbg !7486
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %2, i32 0, i32 3, !dbg !7486
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !7486
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !7486
  store i64 %call2, ptr %flags, align 8, !dbg !7486
  br label %do.cond, !dbg !7486

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !7486

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !7484

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !7484

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %vc.addr, align 8, !dbg !7487
  %desc_terminated = getelementptr inbounds %struct.virt_dma_chan, ptr %3, i32 0, i32 8, !dbg !7488
  call void @list_splice_tail_init(ptr noundef %desc_terminated, ptr noundef %head) #19, !dbg !7489
  %4 = load ptr, ptr %vc.addr, align 8, !dbg !7490
  %lock5 = getelementptr inbounds %struct.virt_dma_chan, ptr %4, i32 0, i32 3, !dbg !7491
  %5 = load i64, ptr %flags, align 8, !dbg !7492
  call void @spin_unlock_irqrestore(ptr noundef %lock5, i64 noundef %5) #19, !dbg !7493
  %6 = load ptr, ptr %vc.addr, align 8, !dbg !7494
  call void @vchan_dma_desc_free_list(ptr noundef %6, ptr noundef %head) #19, !dbg !7495
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !7496
  call void @llvm.lifetime.end.p0(i64 16, ptr %head) #18, !dbg !7496
  ret void, !dbg !7496
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { noredzone }
attributes #20 = { nounwind memory(read) }
attributes #21 = { cold noredzone }
attributes #22 = { noredzone allocsize(1) }
attributes #23 = { noredzone allocsize(0) }
attributes #24 = { noredzone allocsize(0,1) }
attributes #25 = { noredzone allocsize(2) }
attributes #26 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149}
!llvm.ident = !{!5150}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hsu_dma_get_status290", scope: !2, file: !3, line: 194, type: !251, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/dma/hsu/.hsu.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/dma/hsu/hsu_dma\22 -D KBUILD_BASENAME=\22hsu\22 -D KBUILD_MODNAME=\22hsu_dma\22 -D __KBUILD_MODNAME=kmod_hsu_dma -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/dma/hsu/hsu.ll drivers/dma/hsu/hsu.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !250, globals: !5101, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/dma/hsu/hsu.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9950d65f1cb359c08a658703aa36e62f")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !147, !158, !163, !175, !181, !185, !192, !204, !211, !230, !235, !240}
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_desc_metadata_mode", file: !142, line: 282, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/dmaengine.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0cbc91064c120734c9b4d09ca2ee7349")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "DESC_METADATA_NONE", value: 0)
!145 = !DIEnumerator(name: "DESC_METADATA_CLIENT", value: 1)
!146 = !DIEnumerator(name: "DESC_METADATA_ENGINE", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmaengine_alignment", file: !142, line: 736, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157}
!149 = !DIEnumerator(name: "DMAENGINE_ALIGN_1_BYTE", value: 0)
!150 = !DIEnumerator(name: "DMAENGINE_ALIGN_2_BYTES", value: 1)
!151 = !DIEnumerator(name: "DMAENGINE_ALIGN_4_BYTES", value: 2)
!152 = !DIEnumerator(name: "DMAENGINE_ALIGN_8_BYTES", value: 3)
!153 = !DIEnumerator(name: "DMAENGINE_ALIGN_16_BYTES", value: 4)
!154 = !DIEnumerator(name: "DMAENGINE_ALIGN_32_BYTES", value: 5)
!155 = !DIEnumerator(name: "DMAENGINE_ALIGN_64_BYTES", value: 6)
!156 = !DIEnumerator(name: "DMAENGINE_ALIGN_128_BYTES", value: 7)
!157 = !DIEnumerator(name: "DMAENGINE_ALIGN_256_BYTES", value: 8)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_residue_granularity", file: !142, line: 472, baseType: !7, size: 32, elements: !159)
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_DESCRIPTOR", value: 0)
!161 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_SEGMENT", value: 1)
!162 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_BURST", value: 2)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_ctrl_flags", file: !142, line: 194, baseType: !7, size: 32, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!165 = !DIEnumerator(name: "DMA_PREP_INTERRUPT", value: 1)
!166 = !DIEnumerator(name: "DMA_CTRL_ACK", value: 2)
!167 = !DIEnumerator(name: "DMA_PREP_PQ_DISABLE_P", value: 4)
!168 = !DIEnumerator(name: "DMA_PREP_PQ_DISABLE_Q", value: 8)
!169 = !DIEnumerator(name: "DMA_PREP_CONTINUE", value: 16)
!170 = !DIEnumerator(name: "DMA_PREP_FENCE", value: 32)
!171 = !DIEnumerator(name: "DMA_CTRL_REUSE", value: 64)
!172 = !DIEnumerator(name: "DMA_PREP_CMD", value: 128)
!173 = !DIEnumerator(name: "DMA_PREP_REPEAT", value: 256)
!174 = !DIEnumerator(name: "DMA_PREP_LOAD_EOT", value: 512)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmaengine_tx_result", file: !142, line: 537, baseType: !7, size: 32, elements: !176)
!176 = !{!177, !178, !179, !180}
!177 = !DIEnumerator(name: "DMA_TRANS_NOERROR", value: 0)
!178 = !DIEnumerator(name: "DMA_TRANS_READ_FAILED", value: 1)
!179 = !DIEnumerator(name: "DMA_TRANS_WRITE_FAILED", value: 2)
!180 = !DIEnumerator(name: "DMA_TRANS_ABORTED", value: 3)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sum_check_flags", file: !142, line: 220, baseType: !7, size: 32, elements: !182)
!182 = !{!183, !184}
!183 = !DIEnumerator(name: "SUM_CHECK_P_RESULT", value: 1)
!184 = !DIEnumerator(name: "SUM_CHECK_Q_RESULT", value: 2)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_transfer_direction", file: !142, line: 79, baseType: !7, size: 32, elements: !186)
!186 = !{!187, !188, !189, !190, !191}
!187 = !DIEnumerator(name: "DMA_MEM_TO_MEM", value: 0)
!188 = !DIEnumerator(name: "DMA_MEM_TO_DEV", value: 1)
!189 = !DIEnumerator(name: "DMA_DEV_TO_MEM", value: 2)
!190 = !DIEnumerator(name: "DMA_DEV_TO_DEV", value: 3)
!191 = !DIEnumerator(name: "DMA_TRANS_NONE", value: 4)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_slave_buswidth", file: !142, line: 373, baseType: !7, size: 32, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!194 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_UNDEFINED", value: 0)
!195 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_1_BYTE", value: 1)
!196 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_2_BYTES", value: 2)
!197 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_3_BYTES", value: 3)
!198 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_4_BYTES", value: 4)
!199 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_8_BYTES", value: 8)
!200 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_16_BYTES", value: 16)
!201 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_32_BYTES", value: 32)
!202 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_64_BYTES", value: 64)
!203 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_128_BYTES", value: 128)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_status", file: !142, line: 37, baseType: !7, size: 32, elements: !205)
!205 = !{!206, !207, !208, !209, !210}
!206 = !DIEnumerator(name: "DMA_COMPLETE", value: 0)
!207 = !DIEnumerator(name: "DMA_IN_PROGRESS", value: 1)
!208 = !DIEnumerator(name: "DMA_PAUSED", value: 2)
!209 = !DIEnumerator(name: "DMA_ERROR", value: 3)
!210 = !DIEnumerator(name: "DMA_OUT_OF_ORDER", value: 4)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_transaction_type", file: !142, line: 51, baseType: !7, size: 32, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!213 = !DIEnumerator(name: "DMA_MEMCPY", value: 0)
!214 = !DIEnumerator(name: "DMA_XOR", value: 1)
!215 = !DIEnumerator(name: "DMA_PQ", value: 2)
!216 = !DIEnumerator(name: "DMA_XOR_VAL", value: 3)
!217 = !DIEnumerator(name: "DMA_PQ_VAL", value: 4)
!218 = !DIEnumerator(name: "DMA_MEMSET", value: 5)
!219 = !DIEnumerator(name: "DMA_MEMSET_SG", value: 6)
!220 = !DIEnumerator(name: "DMA_INTERRUPT", value: 7)
!221 = !DIEnumerator(name: "DMA_PRIVATE", value: 8)
!222 = !DIEnumerator(name: "DMA_ASYNC_TX", value: 9)
!223 = !DIEnumerator(name: "DMA_SLAVE", value: 10)
!224 = !DIEnumerator(name: "DMA_CYCLIC", value: 11)
!225 = !DIEnumerator(name: "DMA_INTERLEAVE", value: 12)
!226 = !DIEnumerator(name: "DMA_COMPLETION_NO_ORDER", value: 13)
!227 = !DIEnumerator(name: "DMA_REPEAT", value: 14)
!228 = !DIEnumerator(name: "DMA_LOAD_EOT", value: 15)
!229 = !DIEnumerator(name: "DMA_TX_TYPE_END", value: 16)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !231, line: 10, baseType: !7, size: 32, elements: !232)
!231 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!232 = !{!233, !234}
!233 = !DIEnumerator(name: "false", value: 0)
!234 = !DIEnumerator(name: "true", value: 1)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !236, line: 684, baseType: !7, size: 32, elements: !237)
!236 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!237 = !{!238, !239}
!238 = !DIEnumerator(name: "TASKLET_STATE_SCHED", value: 0)
!239 = !DIEnumerator(name: "TASKLET_STATE_RUN", value: 1)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !241, line: 364, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!242 = !{!243, !244, !245, !246, !247, !248, !249}
!243 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!244 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!245 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!246 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!247 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!248 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!249 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!250 = !{!109, !251, !252, !258, !260, !262, !5069, !5071, !5056, !5073, !5089, !5091, !5093, !256}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan_percpu", file: !142, line: 293, size: 128, elements: !254)
!254 = !{!255, !257}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_count", scope: !253, file: !142, line: 295, baseType: !256, size: 64)
!256 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_transferred", scope: !253, file: !142, line: 296, baseType: !256, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !259, line: 154, baseType: !7)
!259 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virt_dma_chan", file: !264, line: 22, size: 2048, elements: !265)
!264 = !DIFile(filename: "drivers/dma/hsu/../virt-dma.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ebf769ed4158fa3a9ccd0a483deaa4f3")
!265 = !{!266, !5032, !5052, !5062, !5063, !5064, !5065, !5066, !5067, !5068}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !263, file: !264, line: 23, baseType: !267, size: 896)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan", file: !142, line: 328, size: 896, elements: !268)
!268 = !{!269, !5003, !5004, !5005, !5006, !5007, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5030, !5031}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !267, file: !142, line: 329, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_device", file: !142, line: 854, size: 3072, elements: !272)
!272 = !{!273, !287, !288, !289, !295, !296, !319, !327, !328, !330, !331, !332, !333, !334, !335, !336, !4776, !4777, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4794, !4795, !4799, !4865, !4870, !4875, !4879, !4883, !4887, !4901, !4905, !4909, !4913, !4937, !4941, !4959, !4978, !4979, !4980, !4981, !4982, !4993, !4994, !4998, !5002}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !271, file: !142, line: 855, baseType: !274, size: 32)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !275, line: 19, size: 32, elements: !276)
!275 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !274, file: !275, line: 20, baseType: !278, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !279, line: 113, baseType: !280)
!279 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !279, line: 111, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !280, file: !279, line: 112, baseType: !283, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !259, line: 174, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 172, size: 32, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !284, file: !259, line: 173, baseType: !109, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "chancnt", scope: !271, file: !142, line: 856, baseType: !7, size: 32, offset: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "privatecnt", scope: !271, file: !142, line: 857, baseType: !7, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !271, file: !142, line: 858, baseType: !290, size: 128, offset: 128)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !259, line: 190, size: 128, elements: !291)
!291 = !{!292, !294}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !259, line: 191, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !290, file: !259, line: 191, baseType: !293, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "global_node", scope: !271, file: !142, line: 859, baseType: !290, size: 128, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !271, file: !142, line: 860, baseType: !297, size: 192, offset: 384)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_filter", file: !142, line: 768, size: 192, elements: !298)
!298 = !{!299, !307, !308}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !297, file: !142, line: 769, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_filter_fn", file: !142, line: 533, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !306, !251}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !259, line: 35, baseType: !305)
!305 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mapcnt", scope: !297, file: !142, line: 770, baseType: !109, size: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !297, file: !142, line: 771, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_map", file: !142, line: 755, size: 192, elements: !312)
!312 = !{!313, !317, !318}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !311, file: !142, line: 756, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !311, file: !142, line: 757, baseType: !314, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !311, file: !142, line: 758, baseType: !251, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "cap_mask", scope: !271, file: !142, line: 861, baseType: !320, size: 64, offset: 576)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_cap_mask_t", file: !142, line: 230, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 230, size: 64, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !321, file: !142, line: 230, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 64, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 1)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "desc_metadata_modes", scope: !271, file: !142, line: 862, baseType: !141, size: 32, offset: 640)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "max_xor", scope: !271, file: !142, line: 863, baseType: !329, size: 16, offset: 672)
!329 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "max_pq", scope: !271, file: !142, line: 864, baseType: !329, size: 16, offset: 688)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "copy_align", scope: !271, file: !142, line: 865, baseType: !147, size: 32, offset: 704)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "xor_align", scope: !271, file: !142, line: 866, baseType: !147, size: 32, offset: 736)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pq_align", scope: !271, file: !142, line: 867, baseType: !147, size: 32, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "fill_align", scope: !271, file: !142, line: 868, baseType: !147, size: 32, offset: 800)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !271, file: !142, line: 871, baseType: !109, size: 32, offset: 832)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !271, file: !142, line: 872, baseType: !337, size: 64, offset: 896)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !339)
!339 = !{!340, !4330, !4331, !4334, !4335, !4388, !4458, !4459, !4460, !4461, !4462, !4469, !4561, !4574, !4584, !4588, !4590, !4591, !4592, !4596, !4603, !4604, !4607, !4610, !4614, !4718, !4719, !4720, !4721, !4722, !4723, !4753, !4754, !4755, !4758, !4761, !4770, !4771, !4772, !4773, !4774, !4775}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !338, file: !94, line: 706, baseType: !341, size: 512)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !342, line: 64, size: 512, elements: !343)
!342 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!343 = !{!344, !345, !346, !348, !432, !4233, !4324, !4325, !4326, !4327, !4328, !4329}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !341, file: !342, line: 65, baseType: !314, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !341, file: !342, line: 66, baseType: !290, size: 128, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !341, file: !342, line: 67, baseType: !347, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !341, file: !342, line: 68, baseType: !349, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !342, line: 168, size: 768, elements: !351)
!351 = !{!352, !353, !391, !392}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !350, file: !342, line: 169, baseType: !290, size: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !350, file: !342, line: 170, baseType: !354, size: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !355, line: 29, baseType: !356)
!355 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !355, line: 17, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !355, line: 18, baseType: !359, size: 32)
!359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !355, line: 18, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !359, file: !355, line: 19, baseType: !362, size: 32)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !363, line: 14, size: 32, elements: !364)
!363 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !362, file: !363, line: 15, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !367, line: 44, baseType: !368)
!367 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !367, line: 14, size: 32, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !367, line: 15, baseType: !371, size: 32)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !367, line: 15, size: 32, elements: !372)
!372 = !{!373, !374, !384}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !371, file: !367, line: 16, baseType: !283, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !367, line: 24, baseType: !375, size: 16)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !367, line: 24, size: 16, elements: !376)
!376 = !{!377, !383}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !375, file: !367, line: 25, baseType: !378, size: 8)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !379, line: 17, baseType: !380)
!379 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !381, line: 21, baseType: !382)
!381 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!382 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !375, file: !367, line: 26, baseType: !378, size: 8, offset: 8)
!384 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !367, line: 28, baseType: !385, size: 32)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !367, line: 28, size: 32, elements: !386)
!386 = !{!387, !390}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !385, file: !367, line: 29, baseType: !388, size: 16)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !379, line: 19, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !381, line: 24, baseType: !329)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !385, file: !367, line: 30, baseType: !388, size: 16, offset: 16)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !350, file: !342, line: 171, baseType: !341, size: 512, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !350, file: !342, line: 172, baseType: !393, size: 64, offset: 704)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !342, line: 133, size: 192, elements: !396)
!396 = !{!397, !404, !409}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !395, file: !342, line: 134, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!109, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !395, file: !342, line: 135, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!314, !402}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !395, file: !342, line: 136, baseType: !410, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!109, !402, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !342, line: 125, size: 20736, elements: !416)
!416 = !{!417, !422, !426, !427, !431}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !415, file: !342, line: 126, baseType: !418, size: 192)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 192, elements: !420)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!420 = !{!421}
!421 = !DISubrange(count: 3)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !415, file: !342, line: 127, baseType: !423, size: 4096, offset: 192)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 4096, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !415, file: !342, line: 128, baseType: !109, size: 32, offset: 4288)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !415, file: !342, line: 129, baseType: !428, size: 16384, offset: 4320)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 16384, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 2048)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !415, file: !342, line: 130, baseType: !109, size: 32, offset: 20704)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !341, file: !342, line: 69, baseType: !433, size: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !342, line: 116, size: 384, elements: !436)
!436 = !{!437, !441, !469, !4195, !4223, !4227}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !435, file: !342, line: 117, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !347}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !435, file: !342, line: 118, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !445, line: 254, size: 128, elements: !446)
!445 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!446 = !{!447, !462}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !444, file: !445, line: 255, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!451, !347, !456, !419}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !259, line: 66, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !453, line: 73, baseType: !454)
!453 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !453, line: 15, baseType: !455)
!455 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !445, line: 30, size: 128, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !457, file: !445, line: 31, baseType: !314, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !457, file: !445, line: 32, baseType: !461, size: 16, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !259, line: 24, baseType: !329)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !444, file: !445, line: 256, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!451, !347, !456, !314, !466}
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !259, line: 61, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !453, line: 72, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !453, line: 16, baseType: !256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !435, file: !342, line: 119, baseType: !470, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !445, line: 84, size: 320, elements: !474)
!474 = !{!475, !476, !480, !4191, !4193}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !473, file: !445, line: 85, baseType: !314, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !473, file: !445, line: 86, baseType: !477, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!461, !347, !456, !109}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !473, file: !445, line: 88, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!461, !347, !484, !109}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !445, line: 175, size: 512, elements: !486)
!486 = !{!487, !488, !489, !490, !4182, !4186, !4187}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !485, file: !445, line: 176, baseType: !457, size: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !485, file: !445, line: 177, baseType: !466, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !485, file: !445, line: 178, baseType: !251, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !485, file: !445, line: 179, baseType: !491, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !496)
!496 = !{!497, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4176, !4177, !4178, !4179, !4180, !4181}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !495, file: !14, line: 473, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !500)
!500 = !{!501, !502, !503, !511, !512, !519, !520, !523, !524, !3955, !3956, !3957, !3958, !3959, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3999, !4002, !4003, !4004, !4013, !4014, !4015, !4016}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !499, file: !14, line: 642, baseType: !461, size: 16)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !499, file: !14, line: 643, baseType: !329, size: 16, offset: 16)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !499, file: !14, line: 644, baseType: !504, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !505, line: 23, baseType: !506)
!505 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 21, size: 32, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !506, file: !505, line: 22, baseType: !509, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !259, line: 37, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !453, line: 49, baseType: !7)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !499, file: !14, line: 645, baseType: !290, size: 128, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !499, file: !14, line: 646, baseType: !513, size: 32, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !505, line: 28, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 26, size: 32, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !514, file: !505, line: 27, baseType: !517, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !259, line: 38, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !453, line: 50, baseType: !7)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !499, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !499, file: !14, line: 650, baseType: !521, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !499, file: !14, line: 651, baseType: !521, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !499, file: !14, line: 654, baseType: !525, size: 64, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !528)
!528 = !{!529, !3789, !3799, !3803, !3807, !3811, !3815, !3819, !3823, !3827, !3831, !3832, !3836, !3840, !3877, !3906, !3910, !3916, !3920, !3924, !3928, !3932, !3936, !3942, !3946}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !527, file: !14, line: 1967, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!533, !498, !533, !7}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !535, line: 82, size: 1536, elements: !536)
!535 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!536 = !{!537, !538, !548, !556, !557, !577, !578, !582, !595, !3772, !3773, !3774, !3775, !3781, !3782, !3783}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !534, file: !535, line: 84, baseType: !7, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !534, file: !535, line: 85, baseType: !539, size: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !540, line: 275, baseType: !541)
!540 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !540, line: 275, size: 32, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !541, file: !540, line: 275, baseType: !544, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !540, line: 69, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !540, line: 64, size: 32, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !545, file: !540, line: 65, baseType: !7, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !534, file: !535, line: 86, baseType: !549, size: 128, offset: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !550, line: 38, size: 128, elements: !551)
!550 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!551 = !{!552, !554}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !550, line: 39, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !549, file: !550, line: 39, baseType: !555, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !534, file: !535, line: 87, baseType: !533, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !534, file: !535, line: 88, baseType: !558, size: 128, offset: 256)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !535, line: 49, size: 128, elements: !559)
!559 = !{!560, !574}
!560 = !DIDerivedType(tag: DW_TAG_member, scope: !558, file: !535, line: 50, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !558, file: !535, line: 50, size: 64, elements: !562)
!562 = !{!563, !570}
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !561, file: !535, line: 51, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !561, file: !535, line: 51, size: 64, elements: !565)
!565 = !{!566, !569}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !564, file: !535, line: 52, baseType: !567, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !379, line: 21, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !381, line: 27, baseType: !7)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !564, file: !535, line: 52, baseType: !567, size: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !561, file: !535, line: 54, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !379, line: 23, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !381, line: 31, baseType: !573)
!573 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !558, file: !535, line: 56, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !534, file: !535, line: 89, baseType: !498, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !534, file: !535, line: 91, baseType: !579, size: 256, offset: 448)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 256, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !534, file: !535, line: 94, baseType: !583, size: 64, offset: 704)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !584, line: 25, size: 64, elements: !585)
!584 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!585 = !{!586}
!586 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !584, line: 26, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !584, line: 26, size: 64, elements: !588)
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !587, file: !584, line: 28, baseType: !572, size: 64, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, scope: !587, file: !584, line: 30, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !587, file: !584, line: 30, size: 64, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !591, file: !584, line: 31, baseType: !354, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !591, file: !584, line: 32, baseType: !109, size: 32, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !534, file: !535, line: 95, baseType: !596, size: 64, offset: 768)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !535, line: 128, size: 1024, align: 512, elements: !599)
!599 = !{!600, !604, !605, !612, !618, !622, !626, !630, !631, !635, !639, !3762, !3766}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !598, file: !535, line: 129, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!109, !533, !7}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !598, file: !535, line: 130, baseType: !601, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !598, file: !535, line: 131, baseType: !606, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!109, !609, !611}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !598, file: !535, line: 132, baseType: !613, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!109, !609, !7, !314, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !598, file: !535, line: 134, baseType: !619, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!109, !609}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !598, file: !535, line: 135, baseType: !623, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!109, !533}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !598, file: !535, line: 136, baseType: !627, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !533}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !598, file: !535, line: 137, baseType: !627, size: 64, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !598, file: !535, line: 138, baseType: !632, size: 64, offset: 512)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !533, !498}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !598, file: !535, line: 139, baseType: !636, size: 64, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!419, !533, !419, !109}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !598, file: !535, line: 140, baseType: !640, size: 64, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!643, !3761}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !645, line: 70, size: 256, elements: !646)
!645 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!646 = !{!647, !648, !3757, !3758}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !644, file: !645, line: 71, baseType: !533, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !644, file: !645, line: 72, baseType: !649, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !651)
!651 = !{!652, !653, !656, !657, !658, !662, !1140, !2273, !2313, !2398, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2415, !2419, !2420, !2423, !2426, !2429, !2432, !2433, !2434, !2475, !3690, !3691, !3692, !3693, !3694, !3695, !3698, !3700, !3707, !3708, !3709, !3710, !3711, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !650, file: !14, line: 1191, baseType: !290, size: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !650, file: !14, line: 1192, baseType: !654, size: 32, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !259, line: 21, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !259, line: 18, baseType: !567)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !650, file: !14, line: 1193, baseType: !382, size: 8, offset: 160)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !650, file: !14, line: 1194, baseType: !256, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !650, file: !14, line: 1195, baseType: !659, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !259, line: 52, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !453, line: 88, baseType: !661)
!661 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !650, file: !14, line: 1196, baseType: !663, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !665)
!665 = !{!666, !667, !668, !675, !679, !683, !687, !1125, !1126, !1130, !1132, !1133, !1134, !1136, !1137, !1138, !1139}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !664, file: !14, line: 2367, baseType: !314, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !664, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !664, file: !14, line: 2376, baseType: !669, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!109, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !674, line: 32, flags: DIFlagFwdDecl)
!674 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!675 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !664, file: !14, line: 2377, baseType: !676, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !664, file: !14, line: 2378, baseType: !680, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!533, !663, !109, !314, !251}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !664, file: !14, line: 2380, baseType: !684, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !649}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !664, file: !14, line: 2381, baseType: !688, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !690)
!690 = !{!691, !692, !693, !697, !719, !745, !746, !747, !748, !752, !757, !758, !778, !834, !835, !836, !837, !838, !839, !840, !841, !849, !853, !880, !901, !902, !903, !904, !913, !936, !937, !940, !943, !944, !945, !946, !947, !948, !949, !954, !955, !1083, !1091, !1092, !1093, !1095, !1099, !1100, !1104, !1105, !1106, !1107, !1109, !1110, !1111, !1118, !1119, !1120, !1124}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !689, file: !6, line: 403, baseType: !5, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !689, file: !6, line: 406, baseType: !290, size: 128, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !689, file: !6, line: 409, baseType: !694, size: 448, offset: 192)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 448, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 56)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !689, file: !6, line: 417, baseType: !698, size: 768, offset: 640)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !699)
!699 = !{!700, !701, !702, !703, !706}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !698, file: !6, line: 46, baseType: !341, size: 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !698, file: !6, line: 47, baseType: !688, size: 64, offset: 512)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !698, file: !6, line: 48, baseType: !347, size: 64, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !698, file: !6, line: 49, baseType: !704, size: 64, offset: 640)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !698, file: !6, line: 50, baseType: !707, size: 64, offset: 704)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !709, line: 26, size: 256, elements: !710)
!709 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !708, file: !709, line: 27, baseType: !7, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !708, file: !709, line: 28, baseType: !713, size: 192, offset: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !714, line: 43, size: 192, elements: !715)
!714 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!715 = !{!716, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !713, file: !714, line: 44, baseType: !717, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !363, line: 23, baseType: !362)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !713, file: !714, line: 45, baseType: !290, size: 128, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !689, file: !6, line: 418, baseType: !720, size: 64, offset: 1408)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !722)
!722 = !{!723, !724, !729, !733, !737, !741}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !721, file: !6, line: 54, baseType: !457, size: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !721, file: !6, line: 55, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!451, !720, !728, !419}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !721, file: !6, line: 57, baseType: !730, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!451, !720, !728, !314, !466}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !721, file: !6, line: 59, baseType: !734, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !688, !314}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !721, file: !6, line: 60, baseType: !738, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!109, !688}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !721, file: !6, line: 61, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !688}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !689, file: !6, line: 419, baseType: !314, size: 64, offset: 1472)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !689, file: !6, line: 420, baseType: !314, size: 64, offset: 1536)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !689, file: !6, line: 421, baseType: !347, size: 64, offset: 1600)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !689, file: !6, line: 424, baseType: !749, size: 64, offset: 1664)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !689, file: !6, line: 425, baseType: !753, size: 64, offset: 1728)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !379, line: 20, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !381, line: 26, baseType: !109)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !689, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !689, file: !6, line: 435, baseType: !759, size: 256, offset: 1856)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !760, line: 66, size: 256, elements: !761)
!760 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!761 = !{!762, !771, !772, !777}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !759, file: !760, line: 67, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !764, line: 13, baseType: !765)
!764 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !259, line: 181, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 179, size: 64, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !766, file: !259, line: 180, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !379, line: 22, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !381, line: 30, baseType: !661)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !759, file: !760, line: 68, baseType: !717, size: 32, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !759, file: !760, line: 70, baseType: !773, size: 32, offset: 96)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !774, line: 15, size: 32, elements: !775)
!774 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !773, file: !774, line: 20, baseType: !283, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !759, file: !760, line: 72, baseType: !290, size: 128, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !689, file: !6, line: 437, baseType: !779, size: 64, offset: 2112)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !781, line: 69, size: 320, elements: !782)
!781 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!782 = !{!783, !784, !785, !805, !807, !811, !812}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !780, file: !781, line: 70, baseType: !314, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !780, file: !781, line: 71, baseType: !688, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !780, file: !781, line: 72, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !781, line: 47, size: 256, elements: !789)
!789 = !{!790, !791, !797, !801}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !781, line: 49, baseType: !7, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !788, file: !781, line: 51, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!109, !314, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !788, file: !781, line: 53, baseType: !798, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!109, !419, !795}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !788, file: !781, line: 55, baseType: !802, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !251}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !780, file: !781, line: 73, baseType: !806, size: 16, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !780, file: !781, line: 74, baseType: !808, size: 8, offset: 208)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !379, line: 16, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !381, line: 20, baseType: !810)
!810 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !781, line: 75, baseType: !378, size: 8, offset: 216)
!812 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !781, line: 76, baseType: !813, size: 64, offset: 256)
!813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !781, line: 76, size: 64, elements: !814)
!814 = !{!815, !816, !823}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !813, file: !781, line: 77, baseType: !251, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !813, file: !781, line: 78, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !781, line: 86, size: 128, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !819, file: !781, line: 87, baseType: !7, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !819, file: !781, line: 88, baseType: !419, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !813, file: !781, line: 79, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !781, line: 92, size: 256, elements: !827)
!827 = !{!828, !829, !830, !832, !833}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !826, file: !781, line: 94, baseType: !7, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !826, file: !781, line: 95, baseType: !7, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !826, file: !781, line: 96, baseType: !831, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !826, file: !781, line: 97, baseType: !786, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !826, file: !781, line: 98, baseType: !251, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !689, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !689, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !689, file: !6, line: 442, baseType: !749, size: 64, offset: 2240)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !689, file: !6, line: 443, baseType: !753, size: 64, offset: 2304)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !689, file: !6, line: 444, baseType: !304, size: 8, offset: 2368)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !689, file: !6, line: 451, baseType: !304, size: 8, offset: 2376)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !689, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !689, file: !6, line: 455, baseType: !842, size: 64, offset: 2432)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !844, line: 23, size: 96, elements: !845)
!844 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!845 = !{!846, !847, !848}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !843, file: !844, line: 24, baseType: !109, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !843, file: !844, line: 24, baseType: !109, size: 32, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !843, file: !844, line: 24, baseType: !109, size: 32, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !689, file: !6, line: 458, baseType: !850, size: 64, offset: 2496)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!109}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !689, file: !6, line: 460, baseType: !854, size: 4032, align: 512, offset: 2560)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !855, size: 4032, elements: !878)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !856)
!856 = !{!857, !858, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !855, file: !6, line: 363, baseType: !251, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !855, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !855, file: !6, line: 367, baseType: !860, size: 448, offset: 128)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !860, file: !6, line: 320, baseType: !688, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !860, file: !6, line: 321, baseType: !864, size: 384, offset: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !865, line: 40, size: 384, elements: !866)
!865 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!866 = !{!867}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !864, file: !865, line: 41, baseType: !868, size: 384, align: 64)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 384, align: 64, elements: !876)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !870, line: 5, size: 192, align: 64, elements: !871)
!870 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!871 = !{!872, !873, !875}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !869, file: !870, line: 6, baseType: !256, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !869, file: !870, line: 7, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !869, file: !870, line: 8, baseType: !874, size: 64, offset: 128)
!876 = !{!877}
!877 = !DISubrange(count: 2)
!878 = !{!879}
!879 = !DISubrange(count: 7)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !689, file: !6, line: 463, baseType: !881, size: 192, offset: 6592)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !882, line: 8, size: 192, elements: !883)
!882 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!883 = !{!884, !885, !887}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !881, file: !882, line: 10, baseType: !7, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !881, file: !882, line: 11, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !881, file: !882, line: 12, baseType: !888, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !890, line: 59, size: 48, elements: !891)
!890 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!891 = !{!892, !896, !897, !898, !899, !900}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !889, file: !890, line: 60, baseType: !893, size: 16)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !379, line: 18, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !381, line: 23, baseType: !895)
!895 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !889, file: !890, line: 61, baseType: !893, size: 16, offset: 16)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !889, file: !890, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !889, file: !890, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !889, file: !890, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !889, file: !890, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !689, file: !6, line: 465, baseType: !256, size: 64, offset: 6784)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !689, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !689, file: !6, line: 470, baseType: !290, size: 128, offset: 6912)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !689, file: !6, line: 471, baseType: !905, size: 64, offset: 7040)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !907, line: 33, size: 96, elements: !908)
!907 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!908 = !{!909, !910, !911, !912}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !906, file: !907, line: 37, baseType: !109, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !906, file: !907, line: 43, baseType: !109, size: 32, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !906, file: !907, line: 45, baseType: !329, size: 16, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !906, file: !907, line: 47, baseType: !329, size: 16, offset: 80)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !689, file: !6, line: 476, baseType: !914, size: 64, offset: 7104)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !916)
!916 = !{!917, !933, !934, !935}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !915, file: !6, line: 379, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !920, line: 204, baseType: !921)
!920 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !920, line: 197, size: 192, elements: !922)
!922 = !{!923, !925, !926, !927, !929, !931}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !921, file: !920, line: 198, baseType: !924, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !920, line: 21, baseType: !568)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !921, file: !920, line: 199, baseType: !382, size: 8, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !921, file: !920, line: 200, baseType: !382, size: 8, offset: 40)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !921, file: !920, line: 201, baseType: !928, size: 16, offset: 48)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !920, line: 17, baseType: !389)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !921, file: !920, line: 202, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !920, line: 16, baseType: !572)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !921, file: !920, line: 203, baseType: !932, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !920, line: 22, baseType: !572)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !915, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !915, file: !6, line: 381, baseType: !419, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !915, file: !6, line: 382, baseType: !419, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !689, file: !6, line: 477, baseType: !915, size: 256, offset: 7168)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !689, file: !6, line: 480, baseType: !938, size: 64, offset: 7424)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !689, file: !6, line: 483, baseType: !941, size: 64, offset: 7488)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !689, file: !6, line: 488, baseType: !419, size: 64, offset: 7552)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !689, file: !6, line: 492, baseType: !251, size: 64, offset: 7616)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !689, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !689, file: !6, line: 495, baseType: !251, size: 64, offset: 7744)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !689, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !689, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !689, file: !6, line: 500, baseType: !950, size: 64, offset: 7872)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !952, line: 45, baseType: !953)
!952 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !689, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !689, file: !6, line: 504, baseType: !956, size: 64, offset: 8000)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !959, line: 96, size: 192, elements: !960)
!959 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!960 = !{!961, !962, !1043, !1047}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !958, file: !959, line: 97, baseType: !7, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !958, file: !959, line: 98, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !959, line: 24, size: 3072, elements: !965)
!965 = !{!966, !968, !969, !970, !971, !995, !996, !997, !998, !1016, !1028, !1029, !1040, !1041, !1042}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !964, file: !959, line: 26, baseType: !967, size: 128)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 128, elements: !876)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !964, file: !959, line: 27, baseType: !967, size: 128, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !964, file: !959, line: 28, baseType: !109, size: 32, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !964, file: !959, line: 31, baseType: !354, size: 32, align: 512, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !964, file: !959, line: 32, baseType: !972, size: 960, offset: 576)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !973, line: 206, size: 960, elements: !974)
!973 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!974 = !{!975, !984, !989, !991, !992, !994}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !972, file: !973, line: 207, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !259, line: 232, size: 128, align: 64, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !977, file: !259, line: 233, baseType: !976, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !977, file: !259, line: 234, baseType: !981, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !976}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !972, file: !973, line: 208, baseType: !985, size: 256, offset: 64)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 256, elements: !987)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!987 = !{!988}
!988 = !DISubrange(count: 4)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !972, file: !973, line: 209, baseType: !990, size: 256, offset: 320)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 256, elements: !987)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !972, file: !973, line: 213, baseType: !455, size: 64, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !972, file: !973, line: 215, baseType: !993, size: 256, offset: 640)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 256, elements: !987)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !972, file: !973, line: 216, baseType: !378, size: 8, offset: 896)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !964, file: !959, line: 33, baseType: !256, size: 64, offset: 1536)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !964, file: !959, line: 34, baseType: !256, size: 64, offset: 1600)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !964, file: !959, line: 35, baseType: !304, size: 8, offset: 1664)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !964, file: !959, line: 36, baseType: !999, size: 320, offset: 1728)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1000, line: 11, size: 320, elements: !1001)
!1000 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1001 = !{!1002, !1009, !1010, !1015}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !999, file: !1000, line: 16, baseType: !1003, size: 128)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !259, line: 198, size: 128, elements: !1004)
!1004 = !{!1005, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1003, file: !259, line: 199, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1003, file: !259, line: 199, baseType: !1008, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !999, file: !1000, line: 17, baseType: !256, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !999, file: !1000, line: 18, baseType: !1011, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !999, file: !1000, line: 19, baseType: !567, size: 32, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !964, file: !959, line: 37, baseType: !1017, size: 256, offset: 2048)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1018, line: 98, size: 256, elements: !1019)
!1018 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1019 = !{!1020, !1021, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1017, file: !1018, line: 99, baseType: !763, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1017, file: !1018, line: 100, baseType: !290, size: 128, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1017, file: !1018, line: 101, baseType: !1023, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1018, line: 21, baseType: !1024)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !964, file: !959, line: 38, baseType: !977, size: 128, align: 64, offset: 2304)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !964, file: !959, line: 39, baseType: !1030, size: 64, offset: 2432)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !959, line: 49, size: 768, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1031, file: !959, line: 50, baseType: !354, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1031, file: !959, line: 51, baseType: !990, size: 256, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1031, file: !959, line: 53, baseType: !990, size: 256, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1031, file: !959, line: 54, baseType: !256, size: 64, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1031, file: !959, line: 55, baseType: !1030, size: 64, offset: 640)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1031, file: !959, line: 56, baseType: !109, size: 32, offset: 704)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1031, file: !959, line: 57, baseType: !109, size: 32, offset: 736)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !964, file: !959, line: 40, baseType: !256, size: 64, offset: 2496)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !964, file: !959, line: 42, baseType: !109, size: 32, offset: 2560)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !964, file: !959, line: 43, baseType: !957, size: 64, offset: 2624)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !958, file: !959, line: 99, baseType: !1044, offset: 128)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1045, line: 211, elements: !1046)
!1045 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1046 = !{}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !958, file: !959, line: 100, baseType: !1048, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !959, line: 63, size: 3008, elements: !1050)
!1050 = !{!1051, !1052, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1082}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1049, file: !959, line: 64, baseType: !1030, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1049, file: !959, line: 65, baseType: !1053, size: 192, offset: 64)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1030, size: 192, elements: !420)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1049, file: !959, line: 67, baseType: !109, size: 32, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1049, file: !959, line: 68, baseType: !759, size: 256, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1049, file: !959, line: 69, baseType: !354, size: 32, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1049, file: !959, line: 70, baseType: !759, size: 256, offset: 640)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1049, file: !959, line: 71, baseType: !256, size: 64, offset: 896)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1049, file: !959, line: 72, baseType: !256, size: 64, offset: 960)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1049, file: !959, line: 73, baseType: !256, size: 64, offset: 1024)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1049, file: !959, line: 74, baseType: !256, size: 64, offset: 1088)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1049, file: !959, line: 75, baseType: !256, size: 64, offset: 1152)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1049, file: !959, line: 76, baseType: !256, size: 64, offset: 1216)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1049, file: !959, line: 77, baseType: !256, size: 64, offset: 1280)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1049, file: !959, line: 78, baseType: !256, size: 64, offset: 1344)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1049, file: !959, line: 79, baseType: !304, size: 8, offset: 1408)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1049, file: !959, line: 80, baseType: !256, size: 64, offset: 1472)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1049, file: !959, line: 81, baseType: !759, size: 256, offset: 1536)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1049, file: !959, line: 82, baseType: !708, size: 256, offset: 1792)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1049, file: !959, line: 84, baseType: !283, size: 32, offset: 2048)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1049, file: !959, line: 87, baseType: !256, size: 64, offset: 2112)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1049, file: !959, line: 88, baseType: !256, size: 64, offset: 2176)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1049, file: !959, line: 89, baseType: !1074, size: 704, offset: 2240)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1018, line: 111, size: 704, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1081}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1074, file: !1018, line: 112, baseType: !1017, size: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1074, file: !1018, line: 113, baseType: !999, size: 320, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1074, file: !1018, line: 116, baseType: !1079, size: 64, offset: 576)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1018, line: 18, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1074, file: !1018, line: 117, baseType: !109, size: 32, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1049, file: !959, line: 90, baseType: !957, size: 64, offset: 2944)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !689, file: !6, line: 515, baseType: !1084, size: 64, offset: 8064)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1086, line: 117, size: 128, elements: !1087)
!1086 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1087 = !{!1088, !1089, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1085, file: !1086, line: 118, baseType: !755, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1085, file: !1086, line: 119, baseType: !755, size: 32, offset: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1085, file: !1086, line: 120, baseType: !455, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !689, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !689, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !689, file: !6, line: 520, baseType: !1094, size: 64, offset: 8192)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !689, file: !6, line: 523, baseType: !1096, size: 64, offset: 8256)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !689, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !689, file: !6, line: 525, baseType: !1101, size: 64, offset: 8384)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !689, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !689, file: !6, line: 533, baseType: !251, size: 64, offset: 8512)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !689, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !689, file: !6, line: 535, baseType: !1108, size: 64, offset: 8640)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !689, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !689, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !689, file: !6, line: 540, baseType: !1112, size: 64, offset: 8768)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1114, line: 32, size: 64, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1113, file: !1114, line: 33, baseType: !755, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1113, file: !1114, line: 34, baseType: !755, size: 32, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !689, file: !6, line: 563, baseType: !290, size: 128, offset: 8832)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !689, file: !6, line: 565, baseType: !290, size: 128, offset: 8960)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !689, file: !6, line: 568, baseType: !1121, size: 64, offset: 9088)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !689, file: !6, line: 570, baseType: !283, size: 32, offset: 9152)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !664, file: !14, line: 2382, baseType: !663, size: 64, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !664, file: !14, line: 2383, baseType: !1127, size: 64, offset: 512)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !259, line: 194, size: 64, elements: !1128)
!1128 = !{!1129}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1127, file: !259, line: 195, baseType: !1006, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !664, file: !14, line: 2385, baseType: !1131, offset: 576)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1045, line: 206, elements: !1046)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !664, file: !14, line: 2386, baseType: !1131, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !664, file: !14, line: 2387, baseType: !1131, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !664, file: !14, line: 2388, baseType: !1135, offset: 576)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1131, elements: !420)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !664, file: !14, line: 2390, baseType: !1131, offset: 576)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !664, file: !14, line: 2391, baseType: !1131, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !664, file: !14, line: 2392, baseType: !1131, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !664, file: !14, line: 2393, baseType: !1131, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !650, file: !14, line: 1197, baseType: !1141, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1144)
!1144 = !{!1145, !1149, !1153, !1154, !1158, !1164, !1168, !1169, !1170, !1174, !1178, !1182, !1183, !1184, !1190, !1194, !1195, !2198, !2199, !2200, !2201, !2205, !2209, !2256, !2271, !2272}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1143, file: !14, line: 2058, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!498, !649}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1143, file: !14, line: 2059, baseType: !1150, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !498}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1143, file: !14, line: 2060, baseType: !1150, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1143, file: !14, line: 2062, baseType: !1155, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !498, !109}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1143, file: !14, line: 2063, baseType: !1159, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!109, !498, !1162}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1143, file: !14, line: 2064, baseType: !1165, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!109, !498}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1143, file: !14, line: 2065, baseType: !1150, size: 64, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1143, file: !14, line: 2066, baseType: !684, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1143, file: !14, line: 2067, baseType: !1171, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!109, !649, !109}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1143, file: !14, line: 2068, baseType: !1175, size: 64, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!109, !649, !13}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1143, file: !14, line: 2069, baseType: !1179, size: 64, offset: 640)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!109, !649}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1143, file: !14, line: 2070, baseType: !1175, size: 64, offset: 704)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1143, file: !14, line: 2071, baseType: !1179, size: 64, offset: 768)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1143, file: !14, line: 2072, baseType: !1185, size: 64, offset: 832)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!109, !533, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1143, file: !14, line: 2073, baseType: !1191, size: 64, offset: 896)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!109, !649, !886, !419}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1143, file: !14, line: 2074, baseType: !684, size: 64, offset: 960)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1143, file: !14, line: 2076, baseType: !1196, size: 64, offset: 1024)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!109, !1199, !533}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1201, line: 17, size: 960, elements: !1202)
!1201 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1233, !1234, !2197}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1200, file: !1201, line: 18, baseType: !419, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1200, file: !1201, line: 19, baseType: !466, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1200, file: !1201, line: 20, baseType: !466, size: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1200, file: !1201, line: 21, baseType: !466, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1200, file: !1201, line: 22, baseType: !466, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1200, file: !1201, line: 23, baseType: !659, size: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1200, file: !1201, line: 24, baseType: !659, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1200, file: !1201, line: 25, baseType: !759, size: 256, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1200, file: !1201, line: 26, baseType: !1212, size: 64, offset: 704)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1201, line: 32, size: 256, elements: !1215)
!1215 = !{!1216, !1221, !1225, !1229}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1214, file: !1201, line: 33, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!251, !1199, !1220}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1214, file: !1201, line: 34, baseType: !1222, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !1199, !251}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1214, file: !1201, line: 35, baseType: !1226, size: 64, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!251, !1199, !251, !1220}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1214, file: !1201, line: 36, baseType: !1230, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!109, !1199, !251}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1200, file: !1201, line: 27, baseType: !109, size: 32, offset: 768)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1200, file: !1201, line: 28, baseType: !1235, size: 64, offset: 832)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1238)
!1238 = !{!1239, !1250, !1251, !1253, !1254, !1255, !1256, !1257, !1313, !1513, !1522, !1528, !1529, !2187, !2188, !2189, !2190, !2192, !2193, !2196}
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !14, line: 995, baseType: !1240, size: 128)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1237, file: !14, line: 995, size: 128, elements: !1241)
!1241 = !{!1242, !1248, !1249}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1240, file: !14, line: 996, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1244, line: 60, size: 64, elements: !1245)
!1244 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1245 = !{!1246}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1243, file: !1244, line: 61, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1240, file: !14, line: 997, baseType: !977, size: 128, align: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1240, file: !14, line: 998, baseType: !7, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1237, file: !14, line: 1005, baseType: !354, size: 32, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1237, file: !14, line: 1006, baseType: !1252, size: 32, offset: 160)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !259, line: 156, baseType: !7)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1237, file: !14, line: 1007, baseType: !763, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1237, file: !14, line: 1008, baseType: !759, size: 256, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1237, file: !14, line: 1009, baseType: !659, size: 64, offset: 512)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1237, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1237, file: !14, line: 1011, baseType: !1258, size: 256, offset: 640)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1259)
!1259 = !{!1260, !1281, !1309, !1310, !1311, !1312}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1258, file: !14, line: 949, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1262, line: 34, baseType: !1263)
!1262 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1262, line: 25, size: 64, elements: !1264)
!1264 = !{!1265}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1263, file: !1262, line: 26, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1267, line: 27, baseType: !1268)
!1267 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1267, line: 13, size: 64, elements: !1269)
!1269 = !{!1270, !1280}
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1268, file: !1267, line: 14, baseType: !1271, size: 32)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1268, file: !1267, line: 14, size: 32, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1271, file: !1267, line: 15, baseType: !283, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1267, line: 16, baseType: !1275, size: 32)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1271, file: !1267, line: 16, size: 32, elements: !1276)
!1276 = !{!1277, !1278}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1275, file: !1267, line: 18, baseType: !378, size: 8)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1275, file: !1267, line: 19, baseType: !1279, size: 24, offset: 8)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 24, elements: !420)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1268, file: !1267, line: 26, baseType: !366, size: 32, offset: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1258, file: !14, line: 950, baseType: !1282, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1290, !1291, !1298, !1299}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1283, file: !19, line: 61, baseType: !278, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1283, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1283, file: !19, line: 63, baseType: !354, size: 32, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1283, file: !19, line: 65, baseType: !1289, size: 256, offset: 128)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1127, size: 256, elements: !987)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1283, file: !19, line: 66, baseType: !1127, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1283, file: !19, line: 68, baseType: !1292, size: 192, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1293, line: 41, baseType: !1294)
!1293 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1293, line: 37, size: 192, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1294, file: !1293, line: 38, baseType: !354, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1294, file: !1293, line: 39, baseType: !290, size: 128, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1283, file: !19, line: 69, baseType: !977, size: 128, align: 64, offset: 640)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1283, file: !19, line: 70, baseType: !1300, offset: 768)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1301, elements: !1307)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1301, file: !19, line: 55, baseType: !109, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1301, file: !19, line: 56, baseType: !1305, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!1307 = !{!1308}
!1308 = !DISubrange(count: -1)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1258, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1258, file: !14, line: 952, baseType: !504, size: 32, offset: 160)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1258, file: !14, line: 952, baseType: !504, size: 32, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1258, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1237, file: !14, line: 1012, baseType: !1314, size: 64, offset: 896)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1316)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1317, line: 110, size: 1472, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1335, !1336, !1337, !1338, !1339, !1340, !1458, !1459, !1460, !1461, !1462, !1493, !1496, !1500, !1508}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1316, file: !1317, line: 111, baseType: !763, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1316, file: !1317, line: 112, baseType: !504, size: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1316, file: !1317, line: 113, baseType: !513, size: 32, offset: 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1316, file: !1317, line: 114, baseType: !504, size: 32, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1316, file: !1317, line: 115, baseType: !513, size: 32, offset: 160)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1316, file: !1317, line: 116, baseType: !504, size: 32, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1316, file: !1317, line: 117, baseType: !513, size: 32, offset: 224)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1316, file: !1317, line: 118, baseType: !504, size: 32, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1316, file: !1317, line: 119, baseType: !513, size: 32, offset: 288)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1316, file: !1317, line: 120, baseType: !7, size: 32, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1316, file: !1317, line: 121, baseType: !1330, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1331, line: 24, baseType: !1332)
!1331 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1331, line: 24, size: 64, elements: !1333)
!1333 = !{!1334}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1332, file: !1331, line: 24, baseType: !571, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1316, file: !1317, line: 122, baseType: !1330, size: 64, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1316, file: !1317, line: 123, baseType: !1330, size: 64, offset: 512)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1316, file: !1317, line: 124, baseType: !1330, size: 64, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1316, file: !1317, line: 125, baseType: !1330, size: 64, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1316, file: !1317, line: 127, baseType: !382, size: 8, offset: 704)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1316, file: !1317, line: 129, baseType: !1341, size: 64, offset: 768)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1343, line: 195, size: 1728, elements: !1344)
!1343 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1344 = !{!1345, !1346, !1349, !1354, !1363, !1366, !1367, !1374, !1375, !1376, !1377, !1380, !1381, !1382, !1383, !1384, !1422, !1443}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1342, file: !1343, line: 196, baseType: !278, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1342, file: !1343, line: 197, baseType: !1347, size: 32, offset: 32)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1343, line: 28, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !259, line: 104, baseType: !755)
!1349 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !1343, line: 198, baseType: !1350, size: 192, offset: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1342, file: !1343, line: 198, size: 192, elements: !1351)
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1350, file: !1343, line: 199, baseType: !290, size: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1350, file: !1343, line: 200, baseType: !869, size: 192, align: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1342, file: !1343, line: 205, baseType: !1355, size: 320, offset: 256)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1356, line: 48, size: 320, elements: !1357)
!1356 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1357 = !{!1358, !1359, !1360, !1361, !1362}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1355, file: !1356, line: 49, baseType: !763, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1355, file: !1356, line: 55, baseType: !763, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1355, file: !1356, line: 57, baseType: !773, size: 32, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1355, file: !1356, line: 59, baseType: !717, size: 32, offset: 160)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1355, file: !1356, line: 60, baseType: !290, size: 128, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1342, file: !1343, line: 206, baseType: !1364, size: 64, offset: 576)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1343, line: 206, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1342, file: !1343, line: 207, baseType: !251, size: 64, offset: 640)
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !1343, line: 208, baseType: !1368, size: 64, offset: 704)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1342, file: !1343, line: 208, size: 64, elements: !1369)
!1369 = !{!1370, !1373}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1368, file: !1343, line: 209, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1372, line: 8, baseType: !770)
!1372 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1368, file: !1343, line: 210, baseType: !1371, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1342, file: !1343, line: 212, baseType: !1371, size: 64, offset: 768)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1342, file: !1343, line: 213, baseType: !504, size: 32, offset: 832)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1342, file: !1343, line: 214, baseType: !513, size: 32, offset: 864)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1342, file: !1343, line: 215, baseType: !1378, size: 32, offset: 896)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1343, line: 31, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !259, line: 110, baseType: !567)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1342, file: !1343, line: 216, baseType: !329, size: 16, offset: 928)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1342, file: !1343, line: 217, baseType: !329, size: 16, offset: 944)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1342, file: !1343, line: 221, baseType: !895, size: 16, offset: 960)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1342, file: !1343, line: 228, baseType: !256, size: 64, offset: 1024)
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !1343, line: 245, baseType: !1385, size: 320, offset: 1088)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1342, file: !1343, line: 245, size: 320, elements: !1386)
!1386 = !{!1387, !1414}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1385, file: !1343, line: 246, baseType: !1388, size: 320)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1343, line: 114, size: 320, elements: !1389)
!1389 = !{!1390, !1391, !1403, !1406, !1413}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1388, file: !1343, line: 116, baseType: !256, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !1343, line: 117, baseType: !1392, size: 64, offset: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !1343, line: 117, size: 64, elements: !1393)
!1393 = !{!1394, !1402}
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !1343, line: 118, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !1343, line: 118, size: 64, elements: !1396)
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1395, file: !1343, line: 120, baseType: !388, size: 16)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1395, file: !1343, line: 121, baseType: !1399, size: 48, offset: 16)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 48, elements: !1400)
!1400 = !{!1401}
!1401 = !DISubrange(count: 6)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1392, file: !1343, line: 127, baseType: !256, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1388, file: !1343, line: 129, baseType: !1404, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1343, line: 102, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1388, file: !1343, line: 130, baseType: !1407, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1343, line: 108, size: 192, elements: !1409)
!1409 = !{!1410, !1411, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1408, file: !1343, line: 109, baseType: !977, size: 128, align: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1408, file: !1343, line: 110, baseType: !278, size: 32, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1408, file: !1343, line: 111, baseType: !304, size: 8, offset: 160)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1388, file: !1343, line: 131, baseType: !314, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !1343, line: 247, baseType: !1415, size: 320)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !1343, line: 247, size: 320, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1421}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1415, file: !1343, line: 248, baseType: !256, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1415, file: !1343, line: 249, baseType: !256, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1415, file: !1343, line: 250, baseType: !1404, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1415, file: !1343, line: 251, baseType: !1407, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1415, file: !1343, line: 252, baseType: !419, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !1343, line: 260, baseType: !1423, size: 256, offset: 1408)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1342, file: !1343, line: 260, size: 256, elements: !1424)
!1424 = !{!1425, !1431}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1423, file: !1343, line: 261, baseType: !1426, size: 256)
!1426 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1343, line: 134, size: 256, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1426, file: !1343, line: 135, baseType: !251, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1426, file: !1343, line: 136, baseType: !1430, size: 256)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 256, elements: !987)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1343, line: 262, baseType: !1432, size: 256)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1423, file: !1343, line: 262, size: 256, elements: !1433)
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1432, file: !1343, line: 264, baseType: !290, size: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1432, file: !1343, line: 265, baseType: !1436, size: 128, offset: 128)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1437, line: 22, size: 128, elements: !1438)
!1437 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1438 = !{!1439, !1442}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1436, file: !1437, line: 23, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1437, line: 23, flags: DIFlagFwdDecl)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1436, file: !1437, line: 24, baseType: !256, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1342, file: !1343, line: 280, baseType: !1444, size: 64, offset: 1664)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1343, line: 176, size: 192, elements: !1446)
!1446 = !{!1447, !1456, !1457}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1445, file: !1343, line: 177, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1343, line: 171, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!109, !1341, !1452, !1454, !1341}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1405)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1426)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1445, file: !1343, line: 178, baseType: !1341, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1445, file: !1343, line: 179, baseType: !1404, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1316, file: !1317, line: 130, baseType: !1341, size: 64, offset: 832)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1316, file: !1317, line: 131, baseType: !1341, size: 64, offset: 896)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1316, file: !1317, line: 132, baseType: !1341, size: 64, offset: 960)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1316, file: !1317, line: 135, baseType: !251, size: 64, offset: 1024)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1316, file: !1317, line: 137, baseType: !1463, size: 64, offset: 1088)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1465, line: 14, size: 1088, elements: !1466)
!1465 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1466 = !{!1467, !1468, !1477, !1478, !1479, !1480, !1481, !1482}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1464, file: !1465, line: 15, baseType: !278, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1464, file: !1465, line: 17, baseType: !1469, size: 320, offset: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1470, line: 22, size: 320, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1471 = !{!1472, !1473, !1474, !1475}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1469, file: !1470, line: 23, baseType: !717, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1469, file: !1470, line: 24, baseType: !769, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1469, file: !1470, line: 26, baseType: !290, size: 128, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1469, file: !1470, line: 28, baseType: !1476, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1464, file: !1465, line: 19, baseType: !256, size: 64, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1464, file: !1465, line: 20, baseType: !763, size: 64, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1464, file: !1465, line: 23, baseType: !1003, size: 128, offset: 512)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1464, file: !1465, line: 24, baseType: !504, size: 32, offset: 640)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1464, file: !1465, line: 29, baseType: !763, size: 64, offset: 704)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1464, file: !1465, line: 36, baseType: !1483, size: 320, offset: 768)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1484, line: 15, size: 320, elements: !1485)
!1484 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1492}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1483, file: !1484, line: 16, baseType: !717, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1483, file: !1484, line: 18, baseType: !109, size: 32, offset: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1483, file: !1484, line: 19, baseType: !109, size: 32, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1483, file: !1484, line: 20, baseType: !109, size: 32, offset: 96)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1483, file: !1484, line: 21, baseType: !109, size: 32, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1483, file: !1484, line: 22, baseType: !256, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1483, file: !1484, line: 23, baseType: !256, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1316, file: !1317, line: 138, baseType: !1494, size: 64, offset: 1152)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !505, line: 18, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1316, file: !1317, line: 139, baseType: !1497, size: 64, offset: 1216)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1499, line: 16, flags: DIFlagFwdDecl)
!1499 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1316, file: !1317, line: 140, baseType: !1501, size: 64, offset: 1280)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1317, line: 25, size: 64, elements: !1503)
!1503 = !{!1504, !1505, !1506}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1502, file: !1317, line: 26, baseType: !283, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1502, file: !1317, line: 27, baseType: !109, size: 32, offset: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1502, file: !1317, line: 28, baseType: !1507, offset: 64)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, elements: !1307)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1317, line: 142, baseType: !1509, size: 128, offset: 1344)
!1509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1316, file: !1317, line: 142, size: 128, elements: !1510)
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1509, file: !1317, line: 143, baseType: !109, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1509, file: !1317, line: 144, baseType: !977, size: 128, align: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1237, file: !14, line: 1013, baseType: !1514, size: 256, offset: 960)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1514, file: !14, line: 971, baseType: !256, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1514, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1514, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1514, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1514, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1514, file: !14, line: 976, baseType: !659, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1237, file: !14, line: 1014, baseType: !1523, size: 128, offset: 1216)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1524, line: 8, size: 128, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1523, file: !1524, line: 9, baseType: !643, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1523, file: !1524, line: 10, baseType: !533, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1237, file: !14, line: 1015, baseType: !498, size: 64, offset: 1344)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1237, file: !14, line: 1016, baseType: !1530, size: 64, offset: 1408)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1532)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1533)
!1533 = !{!1534, !1535, !1540, !1544, !1548, !1632, !1633, !1639, !1652, !1660, !1664, !1665, !2109, !2110, !2114, !2119, !2120, !2124, !2128, !2134, !2135, !2139, !2140, !2146, !2150, !2154, !2160, !2164, !2168, !2172, !2176, !2177, !2183}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1532, file: !14, line: 1915, baseType: !688, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1532, file: !14, line: 1916, baseType: !1536, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!659, !1539, !659, !109}
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1532, file: !14, line: 1917, baseType: !1541, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!451, !1539, !419, !466, !1220}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1532, file: !14, line: 1918, baseType: !1545, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!451, !1539, !314, !466, !1220}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1532, file: !14, line: 1919, baseType: !1549, size: 64, offset: 256)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!451, !1552, !1574}
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1554)
!1554 = !{!1555, !1556, !1557, !1561, !1562, !1563, !1564}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1553, file: !14, line: 374, baseType: !1539, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1553, file: !14, line: 375, baseType: !659, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1553, file: !14, line: 376, baseType: !1558, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !1552, !455}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1553, file: !14, line: 377, baseType: !251, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1553, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1553, file: !14, line: 379, baseType: !388, size: 16, offset: 288)
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1553, file: !14, line: 380, baseType: !1565, size: 64, offset: 320)
!1565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1553, file: !14, line: 380, size: 64, elements: !1566)
!1566 = !{!1567, !1570}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1565, file: !14, line: 386, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1565, file: !14, line: 395, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!451, !251}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1576, line: 41, size: 320, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1583, !1588, !1627}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1575, file: !1576, line: 42, baseType: !378, size: 8)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1575, file: !1576, line: 43, baseType: !304, size: 8, offset: 8)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1575, file: !1576, line: 44, baseType: !304, size: 8, offset: 16)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1575, file: !1576, line: 45, baseType: !304, size: 8, offset: 24)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1575, file: !1576, line: 46, baseType: !304, size: 8, offset: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 47, baseType: !1584, size: 64, offset: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 47, size: 64, elements: !1585)
!1585 = !{!1586, !1587}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1584, file: !1576, line: 48, baseType: !466, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1584, file: !1576, line: 49, baseType: !109, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 61, baseType: !1589, size: 128, offset: 128)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 61, size: 128, elements: !1590)
!1590 = !{!1591, !1597}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1589, file: !1576, line: 67, baseType: !1592, size: 128)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1593, line: 17, size: 128, elements: !1594)
!1593 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1592, file: !1593, line: 19, baseType: !251, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1592, file: !1593, line: 20, baseType: !467, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !1576, line: 68, baseType: !1598, size: 128)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1589, file: !1576, line: 68, size: 128, elements: !1599)
!1599 = !{!1600, !1626}
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !1576, line: 69, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !1576, line: 69, size: 64, elements: !1602)
!1602 = !{!1603, !1606, !1613, !1617, !1625}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1601, file: !1576, line: 71, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1592)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1601, file: !1576, line: 72, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1576, line: 17, size: 128, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1609, file: !1576, line: 18, baseType: !251, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1609, file: !1576, line: 19, baseType: !466, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1601, file: !1576, line: 73, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1616)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1576, line: 73, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1601, file: !1576, line: 74, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1620, line: 296, size: 128, elements: !1621)
!1620 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1621 = !{!1622, !1623, !1624}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1619, file: !1620, line: 297, baseType: !354, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1619, file: !1620, line: 299, baseType: !258, size: 32, offset: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1619, file: !1620, line: 300, baseType: !251, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1601, file: !1576, line: 75, baseType: !251, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1598, file: !1576, line: 77, baseType: !466, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1576, line: 80, baseType: !1628, size: 64, offset: 256)
!1628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1576, line: 80, size: 64, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1628, file: !1576, line: 81, baseType: !256, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1628, file: !1576, line: 82, baseType: !659, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1532, file: !14, line: 1920, baseType: !1549, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1532, file: !14, line: 1921, baseType: !1634, size: 64, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!109, !1552, !1637, !7}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1532, file: !14, line: 1923, baseType: !1640, size: 64, offset: 448)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!109, !1539, !1643}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1645)
!1645 = !{!1646, !1651}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1644, file: !14, line: 1859, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1648)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!304, !1643, !314, !109, !659, !571, !7}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1644, file: !14, line: 1860, baseType: !659, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1532, file: !14, line: 1924, baseType: !1653, size: 64, offset: 512)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!1656, !1539, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1657, line: 59, baseType: !7)
!1657 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !674, line: 31, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1532, file: !14, line: 1925, baseType: !1661, size: 64, offset: 576)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!455, !1539, !7, !256}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1532, file: !14, line: 1926, baseType: !1661, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1532, file: !14, line: 1927, baseType: !1666, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!109, !1539, !1669}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !1671)
!1671 = !{!1672, !1681, !1836, !1842, !1849, !1850, !1855, !1856, !1861, !1862, !1865, !2102, !2103, !2104, !2105, !2106, !2107}
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !27, line: 628, baseType: !1673, size: 128)
!1673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !27, line: 628, size: 128, elements: !1674)
!1674 = !{!1675, !1680}
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !27, line: 629, baseType: !1676, size: 128)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1673, file: !27, line: 629, size: 128, elements: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1676, file: !27, line: 631, baseType: !256, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1676, file: !27, line: 632, baseType: !256, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1673, file: !27, line: 635, baseType: !977, size: 128, align: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1670, file: !27, line: 639, baseType: !1682, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !1684)
!1684 = !{!1685, !1834}
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !27, line: 734, baseType: !1686, size: 10240)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !27, line: 734, size: 10240, elements: !1687)
!1687 = !{!1688, !1692, !1705, !1709, !1710, !1711, !1712, !1713, !1714, !1723, !1724, !1725, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1764, !1766, !1769, !1814, !1815, !1816, !1819, !1820, !1821, !1824, !1825, !1826, !1832, !1833}
!1688 = !DIDerivedType(tag: DW_TAG_member, scope: !1686, file: !27, line: 739, baseType: !1689, size: 512, align: 512)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1686, file: !27, line: 739, size: 512, align: 512, elements: !1690)
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1689, file: !27, line: 747, baseType: !283, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1686, file: !27, line: 750, baseType: !1693, size: 128, offset: 512)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1694, line: 218, size: 128, elements: !1695)
!1694 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1695 = !{!1696, !1703, !1704}
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !1694, line: 219, baseType: !1697, size: 32)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1693, file: !1694, line: 219, size: 32, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1697, file: !1694, line: 220, baseType: !354, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1697, file: !1694, line: 221, baseType: !1701)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1694, line: 197, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1694, line: 197, elements: !1046)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1693, file: !1694, line: 223, baseType: !7, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1693, file: !1694, line: 224, baseType: !251, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1686, file: !27, line: 752, baseType: !1706, size: 64, offset: 640)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!256, !1539, !256, !256, !256, !256}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1686, file: !27, line: 756, baseType: !256, size: 64, offset: 704)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1686, file: !27, line: 757, baseType: !256, size: 64, offset: 768)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1686, file: !27, line: 760, baseType: !256, size: 64, offset: 832)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1686, file: !27, line: 761, baseType: !256, size: 64, offset: 896)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1686, file: !27, line: 763, baseType: !256, size: 64, offset: 960)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1686, file: !27, line: 764, baseType: !1715, size: 64, offset: 1024)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1717, line: 299, baseType: !1718)
!1717 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1717, line: 299, size: 64, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1718, file: !1717, line: 299, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1722, line: 18, baseType: !256)
!1722 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1686, file: !27, line: 773, baseType: !283, size: 32, offset: 1088)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1686, file: !27, line: 785, baseType: !283, size: 32, offset: 1120)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1686, file: !27, line: 795, baseType: !1726, size: 64, offset: 1152)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1727, file: !27, line: 727, baseType: !571, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1727, file: !27, line: 728, baseType: !109, size: 32, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1686, file: !27, line: 801, baseType: !256, size: 64, offset: 1216)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1686, file: !27, line: 804, baseType: !763, size: 64, offset: 1280)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1686, file: !27, line: 806, baseType: !109, size: 32, offset: 1344)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1686, file: !27, line: 808, baseType: !354, size: 32, offset: 1376)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1686, file: !27, line: 823, baseType: !1355, size: 320, offset: 1408)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1686, file: !27, line: 825, baseType: !290, size: 128, offset: 1728)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1686, file: !27, line: 845, baseType: !109, size: 32, offset: 1856)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1686, file: !27, line: 849, baseType: !256, size: 64, offset: 1920)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1686, file: !27, line: 850, baseType: !256, size: 64, offset: 1984)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1686, file: !27, line: 852, baseType: !256, size: 64, offset: 2048)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1686, file: !27, line: 853, baseType: !256, size: 64, offset: 2112)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1686, file: !27, line: 854, baseType: !765, size: 64, offset: 2176)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1686, file: !27, line: 855, baseType: !256, size: 64, offset: 2240)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1686, file: !27, line: 856, baseType: !256, size: 64, offset: 2304)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1686, file: !27, line: 857, baseType: !256, size: 64, offset: 2368)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1686, file: !27, line: 858, baseType: !256, size: 64, offset: 2432)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1686, file: !27, line: 865, baseType: !544, size: 32, offset: 2496)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1686, file: !27, line: 867, baseType: !354, size: 32, offset: 2528)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1686, file: !27, line: 869, baseType: !256, size: 64, offset: 2560)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1686, file: !27, line: 869, baseType: !256, size: 64, offset: 2624)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1686, file: !27, line: 869, baseType: !256, size: 64, offset: 2688)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1686, file: !27, line: 869, baseType: !256, size: 64, offset: 2752)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1686, file: !27, line: 870, baseType: !256, size: 64, offset: 2816)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1686, file: !27, line: 870, baseType: !256, size: 64, offset: 2880)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1686, file: !27, line: 870, baseType: !256, size: 64, offset: 2944)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1686, file: !27, line: 871, baseType: !256, size: 64, offset: 3008)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1686, file: !27, line: 871, baseType: !256, size: 64, offset: 3072)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1686, file: !27, line: 871, baseType: !256, size: 64, offset: 3136)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1686, file: !27, line: 871, baseType: !256, size: 64, offset: 3200)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1686, file: !27, line: 873, baseType: !1761, size: 3328, offset: 3264)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 3328, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 52)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1686, file: !27, line: 875, baseType: !1765, size: 1280, offset: 6592)
!1765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1469, size: 1280, elements: !987)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1686, file: !27, line: 877, baseType: !1767, size: 64, offset: 7872)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1686, file: !27, line: 880, baseType: !1770, size: 1088, offset: 7936)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1771, line: 72, baseType: !1772)
!1771 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1771, line: 23, size: 1088, elements: !1773)
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1781, !1782, !1783, !1784, !1811, !1812, !1813}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1772, file: !1771, line: 28, baseType: !571, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1772, file: !1771, line: 38, baseType: !765, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1772, file: !1771, line: 40, baseType: !256, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1772, file: !1771, line: 43, baseType: !1355, size: 320, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1772, file: !1771, line: 44, baseType: !1779, size: 64, offset: 512)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1771, line: 44, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1772, file: !1771, line: 48, baseType: !256, size: 64, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1772, file: !1771, line: 59, baseType: !759, size: 256, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1772, file: !1771, line: 60, baseType: !251, size: 64, offset: 896)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1772, file: !1771, line: 61, baseType: !1785, size: 64, offset: 960)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1788, line: 13, size: 1216, elements: !1789)
!1788 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1787, file: !1788, line: 14, baseType: !251, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1787, file: !1788, line: 15, baseType: !256, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1787, file: !1788, line: 17, baseType: !256, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1787, file: !1788, line: 17, baseType: !256, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1787, file: !1788, line: 18, baseType: !256, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1787, file: !1788, line: 18, baseType: !256, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1787, file: !1788, line: 19, baseType: !1797, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1787, file: !1788, line: 21, baseType: !455, size: 64, offset: 448)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1787, file: !1788, line: 23, baseType: !455, size: 64, offset: 512)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1787, file: !1788, line: 24, baseType: !455, size: 64, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1787, file: !1788, line: 25, baseType: !455, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1787, file: !1788, line: 26, baseType: !455, size: 64, offset: 704)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1787, file: !1788, line: 27, baseType: !455, size: 64, offset: 768)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1787, file: !1788, line: 28, baseType: !455, size: 64, offset: 832)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1787, file: !1788, line: 29, baseType: !455, size: 64, offset: 896)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1787, file: !1788, line: 30, baseType: !455, size: 64, offset: 960)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1787, file: !1788, line: 31, baseType: !455, size: 64, offset: 1024)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1787, file: !1788, line: 32, baseType: !455, size: 64, offset: 1088)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1787, file: !1788, line: 33, baseType: !455, size: 64, offset: 1152)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1772, file: !1771, line: 63, baseType: !283, size: 32, offset: 1024)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1772, file: !1771, line: 69, baseType: !388, size: 16, offset: 1056)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1772, file: !1771, line: 70, baseType: !893, size: 16, offset: 1072)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1686, file: !27, line: 882, baseType: !256, size: 64, offset: 9024)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1686, file: !27, line: 885, baseType: !354, size: 32, offset: 9088)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1686, file: !27, line: 886, baseType: !1817, size: 64, offset: 9152)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1686, file: !27, line: 901, baseType: !1494, size: 64, offset: 9216)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1686, file: !27, line: 904, baseType: !1539, size: 64, offset: 9280)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1686, file: !27, line: 906, baseType: !1822, size: 64, offset: 9344)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1686, file: !27, line: 930, baseType: !283, size: 32, offset: 9408)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1686, file: !27, line: 933, baseType: !283, size: 32, offset: 9440)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1686, file: !27, line: 935, baseType: !1827, size: 64, offset: 9472)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1828)
!1828 = !{!1829}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1827, file: !68, line: 104, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1686, file: !27, line: 940, baseType: !763, size: 64, offset: 9536)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1686, file: !27, line: 942, baseType: !1017, size: 256, offset: 9600)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1683, file: !27, line: 986, baseType: !1835, offset: 10240)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, elements: !1307)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1670, file: !27, line: 640, baseType: !1837, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1717, line: 297, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1717, line: 297, size: 64, elements: !1839)
!1839 = !{!1840}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1838, file: !1717, line: 297, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1722, line: 19, baseType: !256)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !27, line: 646, baseType: !1843, size: 64, offset: 256)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !27, line: 646, size: 64, elements: !1844)
!1844 = !{!1845, !1848}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1843, file: !27, line: 647, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1847)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1843, file: !27, line: 648, baseType: !1847, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1670, file: !27, line: 666, baseType: !109, size: 32, offset: 320)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1670, file: !27, line: 667, baseType: !1851, size: 64, offset: 384)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !1853)
!1853 = !{!1854}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1852, file: !27, line: 580, baseType: !1355, size: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1670, file: !27, line: 670, baseType: !304, size: 8, offset: 448)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1670, file: !27, line: 681, baseType: !1857, size: 256, offset: 512)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1670, file: !27, line: 678, size: 256, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1857, file: !27, line: 679, baseType: !869, size: 192, align: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1857, file: !27, line: 680, baseType: !256, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1670, file: !27, line: 689, baseType: !290, size: 128, offset: 768)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1670, file: !27, line: 691, baseType: !1863, size: 64, offset: 896)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1670, file: !27, line: 694, baseType: !1866, size: 64, offset: 960)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1868)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1869, line: 563, size: 1024, elements: !1870)
!1869 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1870 = !{!1871, !1875, !1876, !1880, !1884, !1888, !2065, !2069, !2073, !2077, !2078, !2079, !2083, !2087, !2094, !2098}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1868, file: !1869, line: 564, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !1669}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1868, file: !1869, line: 569, baseType: !1872, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1868, file: !1869, line: 571, baseType: !1877, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!109, !1669, !256}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1868, file: !1869, line: 572, baseType: !1881, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!109, !1669}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1868, file: !1869, line: 578, baseType: !1885, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!109, !1669, !256, !256, !256}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1868, file: !1869, line: 580, baseType: !1889, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1869, line: 512, size: 896, elements: !1895)
!1895 = !{!1896, !1904, !1905, !1912, !1919, !1929, !2058, !2059, !2061, !2063}
!1896 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1869, line: 513, baseType: !1897, size: 320)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1869, line: 513, size: 320, elements: !1898)
!1898 = !{!1899, !1900, !1901, !1902, !1903}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1897, file: !1869, line: 514, baseType: !1669, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1897, file: !1869, line: 515, baseType: !258, size: 32, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1897, file: !1869, line: 516, baseType: !256, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1897, file: !1869, line: 517, baseType: !256, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1897, file: !1869, line: 518, baseType: !256, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1894, file: !1869, line: 520, baseType: !26, size: 32, offset: 320)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1894, file: !1869, line: 522, baseType: !1906, size: 64, offset: 384)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1722, line: 22, baseType: !1908)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1722, line: 22, size: 64, elements: !1909)
!1909 = !{!1910}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1908, file: !1722, line: 22, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1722, line: 15, baseType: !256)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1894, file: !1869, line: 524, baseType: !1913, size: 64, offset: 448)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1717, line: 372, baseType: !1915)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1717, line: 372, size: 64, elements: !1916)
!1916 = !{!1917}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1915, file: !1717, line: 372, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1722, line: 16, baseType: !256)
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1869, line: 527, baseType: !1920, size: 64, offset: 512)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1894, file: !1869, line: 527, size: 64, elements: !1921)
!1921 = !{!1922, !1928}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1920, file: !1869, line: 528, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1722, line: 21, baseType: !1924)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1722, line: 21, size: 64, elements: !1925)
!1925 = !{!1926}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1924, file: !1722, line: 21, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1722, line: 14, baseType: !256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1920, file: !1869, line: 529, baseType: !1907, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1894, file: !1869, line: 534, baseType: !1930, size: 64, offset: 576)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !1932)
!1932 = !{!1933, !1934, !2052, !2057}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1931, file: !27, line: 75, baseType: !256, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, scope: !1931, file: !27, line: 83, baseType: !1935, size: 320, offset: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1931, file: !27, line: 83, size: 320, elements: !1936)
!1936 = !{!1937, !1958, !1972, !1976, !2051}
!1937 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !27, line: 84, baseType: !1938, size: 320)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !27, line: 84, size: 320, elements: !1939)
!1939 = !{!1940, !1951, !1952, !1957}
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1938, file: !27, line: 90, baseType: !1941, size: 128)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1938, file: !27, line: 90, size: 128, elements: !1942)
!1942 = !{!1943, !1944, !1949, !1950}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1941, file: !27, line: 91, baseType: !290, size: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !27, line: 94, baseType: !1945, size: 128)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1941, file: !27, line: 94, size: 128, elements: !1946)
!1946 = !{!1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1945, file: !27, line: 96, baseType: !251, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1945, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1941, file: !27, line: 102, baseType: !290, size: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1941, file: !27, line: 103, baseType: !290, size: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1938, file: !27, line: 106, baseType: !494, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1938, file: !27, line: 107, baseType: !1953, size: 64, offset: 192)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1938, file: !27, line: 107, size: 64, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1953, file: !27, line: 108, baseType: !256, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1953, file: !27, line: 109, baseType: !256, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1938, file: !27, line: 117, baseType: !256, size: 64, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !27, line: 119, baseType: !1959, size: 320)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !27, line: 119, size: 320, elements: !1960)
!1960 = !{!1961, !1962, !1965, !1966, !1967}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1959, file: !27, line: 124, baseType: !256, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1959, file: !27, line: 125, baseType: !1963, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1959, file: !27, line: 126, baseType: !256, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1959, file: !27, line: 127, baseType: !256, size: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, scope: !1959, file: !27, line: 128, baseType: !1968, size: 64, offset: 256)
!1968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1959, file: !27, line: 128, size: 64, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1968, file: !27, line: 133, baseType: !256, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1968, file: !27, line: 138, baseType: !763, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !27, line: 141, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !27, line: 141, size: 64, elements: !1974)
!1974 = !{!1975}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1973, file: !27, line: 142, baseType: !256, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !27, line: 144, baseType: !1977, size: 128)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !27, line: 144, size: 128, elements: !1978)
!1978 = !{!1979, !2050}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1977, file: !27, line: 146, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !1982)
!1982 = !{!1983, !1993, !2014, !2015, !2016, !2017, !2018, !2032, !2033, !2034}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1981, file: !43, line: 127, baseType: !1984, size: 384)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !1985)
!1985 = !{!1986, !1987, !1989, !1990, !1991, !1992}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1984, file: !43, line: 22, baseType: !256, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1984, file: !43, line: 23, baseType: !1988, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1984, file: !43, line: 24, baseType: !1988, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1984, file: !43, line: 25, baseType: !256, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1984, file: !43, line: 26, baseType: !256, size: 64, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1984, file: !43, line: 27, baseType: !256, size: 64, offset: 320)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1981, file: !43, line: 128, baseType: !1994, size: 128, offset: 384)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1995, line: 105, size: 128, elements: !1996)
!1995 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1994, file: !1995, line: 110, baseType: !256, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1994, file: !1995, line: 118, baseType: !1999, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1995, line: 95, size: 448, elements: !2001)
!2001 = !{!2002, !2003, !2009, !2010, !2011, !2012, !2013}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2000, file: !1995, line: 96, baseType: !763, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2000, file: !1995, line: 97, baseType: !2004, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1995, line: 60, baseType: !2006)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !2008}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2000, file: !1995, line: 98, baseType: !2004, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2000, file: !1995, line: 99, baseType: !304, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2000, file: !1995, line: 100, baseType: !304, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2000, file: !1995, line: 101, baseType: !977, size: 128, align: 64, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2000, file: !1995, line: 102, baseType: !2008, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1981, file: !43, line: 129, baseType: !708, size: 256, offset: 512)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1981, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1981, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1981, file: !43, line: 132, baseType: !256, size: 64, offset: 832)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1981, file: !43, line: 133, baseType: !2019, size: 64, offset: 896)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2021)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !2022)
!2022 = !{!2023, !2027, !2028}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2021, file: !43, line: 83, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !1930}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2021, file: !43, line: 89, baseType: !1889, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2021, file: !43, line: 100, baseType: !2029, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!109, !1980, !256, !256, !109}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1981, file: !43, line: 134, baseType: !251, size: 64, offset: 960)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1981, file: !43, line: 135, baseType: !109, size: 32, offset: 1024)
!2034 = !DIDerivedType(tag: DW_TAG_member, scope: !1981, file: !43, line: 136, baseType: !2035, size: 128, offset: 1088)
!2035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1981, file: !43, line: 136, size: 128, elements: !2036)
!2036 = !{!2037, !2043}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2035, file: !43, line: 137, baseType: !2038, size: 128)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2039, line: 6, size: 128, elements: !2040)
!2039 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2038, file: !2039, line: 7, baseType: !571, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2038, file: !2039, line: 8, baseType: !571, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, scope: !2035, file: !43, line: 138, baseType: !2044)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2035, file: !43, line: 138, elements: !2045)
!2045 = !{!2046, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2044, file: !43, line: 138, baseType: !2047)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2044, file: !43, line: 138, elements: !1046)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2044, file: !43, line: 138, baseType: !2049)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2038, elements: !1307)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1977, file: !27, line: 147, baseType: !251, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1935, file: !27, line: 161, baseType: !977, size: 128, align: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, scope: !1931, file: !27, line: 164, baseType: !2053, size: 32, offset: 384)
!2053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1931, file: !27, line: 164, size: 32, elements: !2054)
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2053, file: !27, line: 169, baseType: !283, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2053, file: !27, line: 177, baseType: !7, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1931, file: !27, line: 181, baseType: !283, size: 32, offset: 416)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1894, file: !1869, line: 535, baseType: !1930, size: 64, offset: 640)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1894, file: !1869, line: 541, baseType: !2060, size: 64, offset: 704)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1894, file: !1869, line: 545, baseType: !2062, size: 64, offset: 768)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1894, file: !1869, line: 549, baseType: !2064, size: 64, offset: 832)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1717, line: 520, baseType: !1930)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1868, file: !1869, line: 581, baseType: !2066, size: 64, offset: 384)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!1892, !1893, !7}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1868, file: !1869, line: 582, baseType: !2070, size: 64, offset: 448)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!1892, !1893, !256, !256}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1868, file: !1869, line: 584, baseType: !2074, size: 64, offset: 512)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!256, !1669}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1868, file: !1869, line: 588, baseType: !1889, size: 64, offset: 576)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1868, file: !1869, line: 591, baseType: !1889, size: 64, offset: 640)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1868, file: !1869, line: 597, baseType: !2080, size: 64, offset: 704)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!109, !1669, !256, !251, !109, !109}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1868, file: !1869, line: 603, baseType: !2084, size: 64, offset: 768)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!314, !1669}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1868, file: !1869, line: 613, baseType: !2088, size: 64, offset: 832)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!109, !1669, !2091}
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !2093, line: 54, flags: DIFlagFwdDecl)
!2093 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1868, file: !1869, line: 625, baseType: !2095, size: 64, offset: 896)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!2091, !1669, !256}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1868, file: !1869, line: 633, baseType: !2099, size: 64, offset: 960)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!1930, !1669, !256}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1670, file: !27, line: 697, baseType: !256, size: 64, offset: 1024)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1670, file: !27, line: 699, baseType: !1539, size: 64, offset: 1088)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1670, file: !27, line: 700, baseType: !251, size: 64, offset: 1152)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1670, file: !27, line: 711, baseType: !763, size: 64, offset: 1216)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1670, file: !27, line: 717, baseType: !2091, size: 64, offset: 1280)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1670, file: !27, line: 722, baseType: !2108, offset: 1344)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !1046)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1532, file: !14, line: 1928, baseType: !256, size: 64, offset: 768)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1532, file: !14, line: 1929, baseType: !2111, size: 64, offset: 832)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!109, !498, !1539}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1532, file: !14, line: 1930, baseType: !2115, size: 64, offset: 896)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!109, !1539, !2118}
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !251)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1532, file: !14, line: 1931, baseType: !2111, size: 64, offset: 960)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1532, file: !14, line: 1932, baseType: !2121, size: 64, offset: 1024)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!109, !1539, !659, !659, !109}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1532, file: !14, line: 1933, baseType: !2125, size: 64, offset: 1088)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!109, !109, !1539, !109}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1532, file: !14, line: 1934, baseType: !2129, size: 64, offset: 1152)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!109, !1539, !109, !2132}
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1532, file: !14, line: 1935, baseType: !1706, size: 64, offset: 1216)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1532, file: !14, line: 1936, baseType: !2136, size: 64, offset: 1280)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!109, !109}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1532, file: !14, line: 1937, baseType: !2129, size: 64, offset: 1344)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1532, file: !14, line: 1938, baseType: !2141, size: 64, offset: 1408)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!451, !2144, !1539, !1220, !466, !7}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2093, line: 59, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1532, file: !14, line: 1939, baseType: !2147, size: 64, offset: 1472)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!451, !1539, !1220, !2144, !466, !7}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1532, file: !14, line: 1940, baseType: !2151, size: 64, offset: 1536)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{null, !1539}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1532, file: !14, line: 1941, baseType: !2155, size: 64, offset: 1600)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!109, !1539, !109, !2158, !2159}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1532, file: !14, line: 1942, baseType: !2161, size: 64, offset: 1664)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!455, !1539, !109, !659, !659}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1532, file: !14, line: 1944, baseType: !2165, size: 64, offset: 1728)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{null, !1199, !1539}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1532, file: !14, line: 1948, baseType: !2169, size: 64, offset: 1792)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!451, !1539, !659, !1539, !659, !466, !7}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1532, file: !14, line: 1950, baseType: !2173, size: 64, offset: 1856)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!659, !1539, !659, !1539, !659, !659, !7}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1532, file: !14, line: 1953, baseType: !2121, size: 64, offset: 1920)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1532, file: !14, line: 1954, baseType: !2178, size: 64, offset: 1984)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!109, !2181, !7}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1532, file: !14, line: 1955, baseType: !2184, size: 64, offset: 2048)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!109, !2181, !1637, !7}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1237, file: !14, line: 1018, baseType: !571, size: 64, offset: 1472)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1237, file: !14, line: 1020, baseType: !251, size: 64, offset: 1536)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1237, file: !14, line: 1023, baseType: !251, size: 64, offset: 1600)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1237, file: !14, line: 1027, baseType: !2191, size: 64, offset: 1664)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1237, file: !14, line: 1029, baseType: !494, size: 64, offset: 1728)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1237, file: !14, line: 1030, baseType: !2194, size: 32, offset: 1792)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2195, line: 8, baseType: !567)
!2195 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1237, file: !14, line: 1031, baseType: !2194, size: 32, offset: 1824)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1200, file: !1201, line: 29, baseType: !251, size: 64, offset: 896)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1143, file: !14, line: 2077, baseType: !1196, size: 64, offset: 1088)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1143, file: !14, line: 2078, baseType: !1196, size: 64, offset: 1152)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1143, file: !14, line: 2079, baseType: !1196, size: 64, offset: 1216)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1143, file: !14, line: 2081, baseType: !2202, size: 64, offset: 1280)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!451, !649, !109, !419, !466, !659}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1143, file: !14, line: 2082, baseType: !2206, size: 64, offset: 1344)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!451, !649, !109, !314, !466, !659}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1143, file: !14, line: 2083, baseType: !2210, size: 64, offset: 1408)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!2213, !498}
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !2216)
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2241, !2242, !2243}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2215, file: !51, line: 297, baseType: !1003, size: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2215, file: !51, line: 298, baseType: !290, size: 128, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2215, file: !51, line: 299, baseType: !290, size: 128, offset: 256)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2215, file: !51, line: 300, baseType: !290, size: 128, offset: 384)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2215, file: !51, line: 301, baseType: !759, size: 256, offset: 512)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2215, file: !51, line: 302, baseType: !354, size: 32, offset: 768)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2215, file: !51, line: 303, baseType: !283, size: 32, offset: 800)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2215, file: !51, line: 304, baseType: !649, size: 64, offset: 832)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2215, file: !51, line: 305, baseType: !2226, size: 64, offset: 896)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !2227)
!2227 = !{!2228, !2240}
!2228 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !51, line: 69, baseType: !2229, size: 32)
!2229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2226, file: !51, line: 69, size: 32, elements: !2230)
!2230 = !{!2231, !2232, !2233}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2229, file: !51, line: 70, baseType: !504, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2229, file: !51, line: 71, baseType: !513, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2229, file: !51, line: 72, baseType: !2234, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2235, line: 24, baseType: !2236)
!2235 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2235, line: 22, size: 32, elements: !2237)
!2237 = !{!2238}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2236, file: !2235, line: 23, baseType: !2239, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2235, line: 20, baseType: !510)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2226, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2215, file: !51, line: 306, baseType: !659, size: 64, offset: 960)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2215, file: !51, line: 307, baseType: !256, size: 64, offset: 1024)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2215, file: !51, line: 308, baseType: !2244, size: 576, offset: 1088)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !2245)
!2245 = !{!2246, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2244, file: !51, line: 206, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !661)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2244, file: !51, line: 207, baseType: !2247, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2244, file: !51, line: 208, baseType: !2247, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2244, file: !51, line: 209, baseType: !2247, size: 64, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2244, file: !51, line: 210, baseType: !2247, size: 64, offset: 256)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2244, file: !51, line: 211, baseType: !2247, size: 64, offset: 320)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2244, file: !51, line: 212, baseType: !2247, size: 64, offset: 384)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2244, file: !51, line: 213, baseType: !1371, size: 64, offset: 448)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2244, file: !51, line: 214, baseType: !1371, size: 64, offset: 512)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1143, file: !14, line: 2085, baseType: !2257, size: 64, offset: 1472)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!455, !649, !2260}
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2262, line: 15, size: 256, elements: !2263)
!2262 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2263 = !{!2264, !2265, !2266, !2267, !2268}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2261, file: !2262, line: 16, baseType: !258, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2261, file: !2262, line: 19, baseType: !109, size: 32, offset: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2261, file: !2262, line: 26, baseType: !256, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2261, file: !2262, line: 33, baseType: !256, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2261, file: !2262, line: 36, baseType: !2269, size: 64, offset: 192)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !27, line: 33, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1143, file: !14, line: 2087, baseType: !2257, size: 64, offset: 1536)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1143, file: !14, line: 2089, baseType: !684, size: 64, offset: 1600)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !650, file: !14, line: 1198, baseType: !2274, size: 64, offset: 448)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2276)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !2277)
!2277 = !{!2278, !2282, !2286, !2290, !2291, !2292, !2293, !2294, !2299, !2304, !2308}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2276, file: !51, line: 325, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!109, !2214}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2276, file: !51, line: 326, baseType: !2283, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!2214, !649, !109}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2276, file: !51, line: 327, baseType: !2287, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{null, !2214}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2276, file: !51, line: 328, baseType: !2279, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2276, file: !51, line: 329, baseType: !2279, size: 64, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2276, file: !51, line: 330, baseType: !2279, size: 64, offset: 320)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2276, file: !51, line: 331, baseType: !1171, size: 64, offset: 384)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2276, file: !51, line: 334, baseType: !2295, size: 64, offset: 448)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!2298, !498}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2276, file: !51, line: 335, baseType: !2300, size: 64, offset: 512)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!109, !498, !2303}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2276, file: !51, line: 337, baseType: !2305, size: 64, offset: 576)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!109, !498, !2298}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2276, file: !51, line: 339, baseType: !2309, size: 64, offset: 640)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!109, !649, !2312}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !650, file: !14, line: 1199, baseType: !2314, size: 64, offset: 512)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2316)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !2317)
!2317 = !{!2318, !2324, !2325, !2329, !2330, !2331, !2346, !2369, !2373, !2374, !2397}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2316, file: !51, line: 431, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!109, !649, !109, !109, !2322}
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2316, file: !51, line: 432, baseType: !1171, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2316, file: !51, line: 433, baseType: !2326, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!109, !649, !7}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2316, file: !51, line: 434, baseType: !2326, size: 64, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2316, file: !51, line: 435, baseType: !1171, size: 64, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2316, file: !51, line: 436, baseType: !2332, size: 64, offset: 320)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!109, !649, !109, !2335}
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2336, file: !51, line: 418, baseType: !109, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2336, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2336, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2336, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2336, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2336, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2336, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2336, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2316, file: !51, line: 437, baseType: !2347, size: 64, offset: 384)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!109, !649, !2226, !2350}
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !2352)
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2351, file: !51, line: 346, baseType: !109, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2351, file: !51, line: 347, baseType: !571, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2351, file: !51, line: 348, baseType: !571, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2351, file: !51, line: 349, baseType: !571, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2351, file: !51, line: 350, baseType: !571, size: 64, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2351, file: !51, line: 351, baseType: !571, size: 64, offset: 320)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2351, file: !51, line: 352, baseType: !571, size: 64, offset: 384)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2351, file: !51, line: 353, baseType: !769, size: 64, offset: 448)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2351, file: !51, line: 355, baseType: !769, size: 64, offset: 512)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2351, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2351, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2351, file: !51, line: 358, baseType: !571, size: 64, offset: 640)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2351, file: !51, line: 359, baseType: !571, size: 64, offset: 704)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2351, file: !51, line: 360, baseType: !571, size: 64, offset: 768)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2351, file: !51, line: 361, baseType: !769, size: 64, offset: 832)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2351, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2316, file: !51, line: 438, baseType: !2370, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!109, !649, !2312, !2350}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2316, file: !51, line: 440, baseType: !2347, size: 64, offset: 512)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2316, file: !51, line: 441, baseType: !2375, size: 64, offset: 576)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!109, !649, !2378}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2380)
!2380 = !{!2381, !2382}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2379, file: !51, line: 412, baseType: !7, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2379, file: !51, line: 413, baseType: !2383, size: 1344, offset: 64)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2384, size: 1344, elements: !420)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2385)
!2385 = !{!2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2396}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2384, file: !51, line: 398, baseType: !7, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2384, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2384, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2384, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2384, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2384, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2384, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2384, file: !51, line: 406, baseType: !573, size: 64, offset: 256)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2384, file: !51, line: 407, baseType: !2395, size: 64, offset: 320)
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !259, line: 132, baseType: !571)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2384, file: !51, line: 408, baseType: !2395, size: 64, offset: 384)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2316, file: !51, line: 442, baseType: !2326, size: 64, offset: 640)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !650, file: !14, line: 1200, baseType: !2399, size: 64, offset: 576)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !650, file: !14, line: 1201, baseType: !256, size: 64, offset: 640)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !650, file: !14, line: 1202, baseType: !256, size: 64, offset: 704)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !650, file: !14, line: 1203, baseType: !256, size: 64, offset: 768)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !650, file: !14, line: 1204, baseType: !533, size: 64, offset: 832)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !650, file: !14, line: 1205, baseType: !1355, size: 320, offset: 896)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !650, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !650, file: !14, line: 1207, baseType: !283, size: 32, offset: 1248)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !650, file: !14, line: 1209, baseType: !251, size: 64, offset: 1280)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !650, file: !14, line: 1211, baseType: !2411, size: 64, offset: 1344)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2414)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !650, file: !14, line: 1223, baseType: !2416, size: 64, offset: 1408)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !550, line: 34, size: 64, elements: !2417)
!2417 = !{!2418}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2416, file: !550, line: 35, baseType: !553, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !650, file: !14, line: 1224, baseType: !290, size: 128, offset: 1472)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !650, file: !14, line: 1225, baseType: !2421, size: 64, offset: 1600)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !650, file: !14, line: 1226, baseType: !2424, size: 64, offset: 1664)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !650, file: !14, line: 1227, baseType: !2427, size: 64, offset: 1728)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !650, file: !14, line: 1228, baseType: !2430, size: 64, offset: 1792)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !650, file: !14, line: 1229, baseType: !1003, size: 128, offset: 1856)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !650, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !650, file: !14, line: 1231, baseType: !2435, size: 2496, offset: 2048)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2441, !2473}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2435, file: !51, line: 522, baseType: !7, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2435, file: !51, line: 523, baseType: !1355, size: 320, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2435, file: !51, line: 524, baseType: !2440, size: 192, offset: 384)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !498, size: 192, elements: !420)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2435, file: !51, line: 525, baseType: !2442, size: 1728, offset: 576)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2443, size: 1728, elements: !420)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !2444)
!2444 = !{!2445, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2443, file: !51, line: 223, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !2448)
!2448 = !{!2449, !2450, !2463, !2464}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2447, file: !51, line: 446, baseType: !109, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2447, file: !51, line: 447, baseType: !2451, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2453)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !2454)
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2453, file: !51, line: 313, baseType: !1171, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2453, file: !51, line: 314, baseType: !1171, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2453, file: !51, line: 315, baseType: !1171, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2453, file: !51, line: 316, baseType: !1171, size: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2453, file: !51, line: 317, baseType: !2279, size: 64, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2453, file: !51, line: 318, baseType: !2279, size: 64, offset: 320)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2453, file: !51, line: 319, baseType: !2279, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2453, file: !51, line: 320, baseType: !2309, size: 64, offset: 448)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2447, file: !51, line: 448, baseType: !688, size: 64, offset: 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2447, file: !51, line: 449, baseType: !2446, size: 64, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2443, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2443, file: !51, line: 226, baseType: !290, size: 128, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2443, file: !51, line: 227, baseType: !256, size: 64, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2443, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2443, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2443, file: !51, line: 230, baseType: !2247, size: 64, offset: 384)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2443, file: !51, line: 231, baseType: !2247, size: 64, offset: 448)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2443, file: !51, line: 232, baseType: !251, size: 64, offset: 512)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2435, file: !51, line: 526, baseType: !2474, size: 192, offset: 2304)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2451, size: 192, elements: !420)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !650, file: !14, line: 1233, baseType: !2476, size: 2368, offset: 4544)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2477)
!2477 = !{!2478, !2479, !2480}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2476, file: !14, line: 1185, baseType: !329, size: 16)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2476, file: !14, line: 1186, baseType: !329, size: 16, offset: 16)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2476, file: !14, line: 1187, baseType: !2481, size: 2304, offset: 64)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2482, size: 2304, elements: !420)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2483, line: 12, size: 768, elements: !2484)
!2483 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2484 = !{!2485, !2493, !2494, !3688, !3689}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2482, file: !2483, line: 13, baseType: !2486, size: 384)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2487, line: 17, size: 384, elements: !2488)
!2487 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2488 = !{!2489, !2490, !2491, !2492}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2486, file: !2487, line: 18, baseType: !109, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2486, file: !2487, line: 19, baseType: !109, size: 32, offset: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2486, file: !2487, line: 20, baseType: !1292, size: 192, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2486, file: !2487, line: 22, baseType: !977, size: 128, align: 64, offset: 256)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2482, file: !2483, line: 14, baseType: !831, size: 64, offset: 384)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2482, file: !2483, line: 15, baseType: !2495, size: 64, offset: 448)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2496, line: 16, size: 64, elements: !2497)
!2496 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2497 = !{!2498}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2495, file: !2496, line: 17, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2093, line: 746, size: 58368, elements: !2501)
!2501 = !{!2502, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2582, !2593, !2688, !2692, !2695, !2726, !2727, !2728, !2729, !2737, !2739, !2740, !2741, !2742, !2743, !2744, !2755, !2756, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2773, !2774, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2862, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2910, !2916, !2917, !2918, !2919, !2920, !2924, !2927, !2934, !2939, !2942, !2945, !2948, !2951, !3089, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3127, !3128, !3129, !3138, !3146, !3147, !3148, !3149, !3150, !3155, !3156, !3157, !3160, !3161, !3164, !3167, !3170, !3178, !3181, !3182, !3268, !3269, !3270, !3271, !3272, !3278, !3279, !3280, !3281, !3284, !3285, !3288, !3291, !3292, !3295, !3296, !3297, !3300, !3301, !3302, !3303, !3304, !3305, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3337, !3338, !3344, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3356, !3428, !3430, !3431, !3432, !3433, !3434, !3435, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3465, !3466, !3467}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2500, file: !2093, line: 752, baseType: !2503, size: 192)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2504, line: 56, size: 192, elements: !2505)
!2504 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2505 = !{!2506, !2507, !2508, !2509}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2503, file: !2504, line: 57, baseType: !256, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2503, file: !2504, line: 58, baseType: !256, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2503, file: !2504, line: 59, baseType: !567, size: 32, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2503, file: !2504, line: 61, baseType: !567, size: 32, offset: 160)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2500, file: !2093, line: 754, baseType: !7, size: 32, offset: 192)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2500, file: !2093, line: 767, baseType: !251, size: 64, offset: 256)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2500, file: !2093, line: 768, baseType: !278, size: 32, offset: 320)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2500, file: !2093, line: 770, baseType: !7, size: 32, offset: 352)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2500, file: !2093, line: 771, baseType: !7, size: 32, offset: 384)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2500, file: !2093, line: 774, baseType: !109, size: 32, offset: 416)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2500, file: !2093, line: 775, baseType: !2517, size: 128, offset: 448)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2518, line: 58, size: 128, elements: !2519)
!2518 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2519 = !{!2520, !2521, !2526, !2527}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2517, file: !2518, line: 59, baseType: !1243, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, scope: !2517, file: !2518, line: 60, baseType: !2522, size: 32, offset: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2517, file: !2518, line: 60, size: 32, elements: !2523)
!2523 = !{!2524, !2525}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2522, file: !2518, line: 61, baseType: !7, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2522, file: !2518, line: 62, baseType: !283, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2517, file: !2518, line: 65, baseType: !388, size: 16, offset: 96)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2517, file: !2518, line: 65, baseType: !388, size: 16, offset: 112)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2500, file: !2093, line: 776, baseType: !7, size: 32, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2500, file: !2093, line: 777, baseType: !256, size: 64, offset: 640)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2500, file: !2093, line: 778, baseType: !2499, size: 64, offset: 704)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2500, file: !2093, line: 787, baseType: !109, size: 32, offset: 768)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2500, file: !2093, line: 788, baseType: !109, size: 32, offset: 800)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2500, file: !2093, line: 790, baseType: !109, size: 32, offset: 832)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2500, file: !2093, line: 792, baseType: !109, size: 32, offset: 864)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2500, file: !2093, line: 793, baseType: !109, size: 32, offset: 896)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2500, file: !2093, line: 794, baseType: !109, size: 32, offset: 928)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2500, file: !2093, line: 795, baseType: !7, size: 32, offset: 960)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2500, file: !2093, line: 797, baseType: !2539, size: 2048, offset: 1024)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2093, line: 551, size: 2048, elements: !2540)
!2540 = !{!2541, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2561, !2564, !2565, !2566}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2539, file: !2093, line: 553, baseType: !2542, size: 128)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2093, line: 411, size: 128, elements: !2543)
!2543 = !{!2544, !2545}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2542, file: !2093, line: 412, baseType: !256, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2542, file: !2093, line: 413, baseType: !567, size: 32, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2539, file: !2093, line: 554, baseType: !869, size: 192, align: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2539, file: !2093, line: 555, baseType: !571, size: 64, offset: 320)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2539, file: !2093, line: 556, baseType: !571, size: 64, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2539, file: !2093, line: 558, baseType: !290, size: 128, offset: 448)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2539, file: !2093, line: 559, baseType: !7, size: 32, offset: 576)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2539, file: !2093, line: 561, baseType: !571, size: 64, offset: 640)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2539, file: !2093, line: 562, baseType: !571, size: 64, offset: 704)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2539, file: !2093, line: 563, baseType: !571, size: 64, offset: 768)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2539, file: !2093, line: 564, baseType: !571, size: 64, offset: 832)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2539, file: !2093, line: 565, baseType: !769, size: 64, offset: 896)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2539, file: !2093, line: 566, baseType: !571, size: 64, offset: 960)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2539, file: !2093, line: 568, baseType: !571, size: 64, offset: 1024)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2539, file: !2093, line: 571, baseType: !109, size: 32, offset: 1088)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2539, file: !2093, line: 572, baseType: !2560, size: 64, offset: 1152)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2539, file: !2093, line: 574, baseType: !2562, size: 64, offset: 1216)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2093, line: 49, flags: DIFlagFwdDecl)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2539, file: !2093, line: 576, baseType: !2562, size: 64, offset: 1280)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2539, file: !2093, line: 578, baseType: !256, size: 64, offset: 1344)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2539, file: !2093, line: 588, baseType: !2567, size: 512, align: 512, offset: 1536)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2093, line: 497, size: 512, align: 512, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2567, file: !2093, line: 498, baseType: !571, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2567, file: !2093, line: 499, baseType: !571, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2567, file: !2093, line: 500, baseType: !571, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2567, file: !2093, line: 501, baseType: !567, size: 32, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2567, file: !2093, line: 502, baseType: !567, size: 32, offset: 224)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2567, file: !2093, line: 503, baseType: !256, size: 64, offset: 256)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2567, file: !2093, line: 504, baseType: !256, size: 64, offset: 320)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2567, file: !2093, line: 505, baseType: !256, size: 64, offset: 384)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2567, file: !2093, line: 506, baseType: !2578, size: 64, align: 64, offset: 448)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2093, line: 445, size: 64, align: 64, elements: !2579)
!2579 = !{!2580, !2581}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2578, file: !2093, line: 446, baseType: !7, size: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2578, file: !2093, line: 447, baseType: !7, size: 32, offset: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2500, file: !2093, line: 798, baseType: !2583, size: 384, offset: 3072)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2093, line: 592, size: 384, elements: !2584)
!2584 = !{!2585, !2586, !2587, !2588, !2589, !2590, !2591}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2583, file: !2093, line: 593, baseType: !290, size: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2583, file: !2093, line: 594, baseType: !256, size: 64, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2583, file: !2093, line: 595, baseType: !256, size: 64, offset: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2583, file: !2093, line: 596, baseType: !7, size: 32, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2583, file: !2093, line: 597, baseType: !329, size: 16, offset: 288)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2583, file: !2093, line: 598, baseType: !329, size: 16, offset: 304)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2583, file: !2093, line: 600, baseType: !2592, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2500, file: !2093, line: 799, baseType: !2594, size: 1792, offset: 3456)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2093, line: 610, size: 1792, elements: !2595)
!2595 = !{!2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2685, !2686}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2594, file: !2093, line: 611, baseType: !869, size: 192, align: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2594, file: !2093, line: 618, baseType: !571, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2594, file: !2093, line: 619, baseType: !571, size: 64, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2594, file: !2093, line: 620, baseType: !571, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2594, file: !2093, line: 621, baseType: !571, size: 64, offset: 384)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2594, file: !2093, line: 622, baseType: !571, size: 64, offset: 448)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2594, file: !2093, line: 629, baseType: !769, size: 64, offset: 512)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2594, file: !2093, line: 630, baseType: !571, size: 64, offset: 576)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2594, file: !2093, line: 631, baseType: !7, size: 32, offset: 640)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2594, file: !2093, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2594, file: !2093, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2594, file: !2093, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2594, file: !2093, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2594, file: !2093, line: 662, baseType: !2610, size: 512, offset: 704)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2611)
!2611 = !{!2612, !2620, !2621, !2626, !2681, !2682, !2683, !2684}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2610, file: !57, line: 119, baseType: !2613, size: 256)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2614, line: 9, size: 256, elements: !2615)
!2614 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2615 = !{!2616, !2617}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2613, file: !2614, line: 10, baseType: !869, size: 192, align: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2613, file: !2614, line: 11, baseType: !2618, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2619, line: 29, baseType: !769)
!2619 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2610, file: !57, line: 120, baseType: !2618, size: 64, offset: 256)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2610, file: !57, line: 121, baseType: !2622, size: 64, offset: 320)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!56, !2625}
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2610, file: !57, line: 122, baseType: !2627, size: 64, offset: 384)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2629)
!2629 = !{!2630, !2655, !2656, !2659, !2664, !2665, !2676, !2680}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2628, file: !57, line: 160, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2633)
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2632, file: !57, line: 216, baseType: !717, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2632, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2632, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2632, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2632, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2632, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2632, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2632, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2632, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2632, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2632, file: !57, line: 227, baseType: !329, size: 16, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2632, file: !57, line: 228, baseType: !329, size: 16, offset: 208)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2632, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2632, file: !57, line: 235, baseType: !2618, size: 64, offset: 256)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2632, file: !57, line: 236, baseType: !2625, size: 64, offset: 320)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2632, file: !57, line: 237, baseType: !2618, size: 64, offset: 384)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2632, file: !57, line: 238, baseType: !2625, size: 64, offset: 448)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2632, file: !57, line: 239, baseType: !2652, size: 4096, align: 512, offset: 512)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2628, size: 4096, align: 512, elements: !2653)
!2653 = !{!2654}
!2654 = !DISubrange(count: 8)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2628, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2628, file: !57, line: 162, baseType: !2657, size: 32, offset: 96)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !259, line: 32, baseType: !2658)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !453, line: 96, baseType: !109)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2628, file: !57, line: 163, baseType: !2660, size: 32, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !540, line: 274, baseType: !2661)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !540, line: 274, size: 32, elements: !2662)
!2662 = !{!2663}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2661, file: !540, line: 274, baseType: !544, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2628, file: !57, line: 164, baseType: !2625, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2628, file: !57, line: 165, baseType: !2666, size: 128, offset: 256)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2614, line: 14, size: 128, elements: !2667)
!2667 = !{!2668}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2666, file: !2614, line: 15, baseType: !2669, size: 128)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !870, line: 26, size: 128, elements: !2670)
!2670 = !{!2671, !2675}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2669, file: !870, line: 27, baseType: !2672, size: 64)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !870, line: 12, size: 64, elements: !2673)
!2673 = !{!2674}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2672, file: !870, line: 13, baseType: !874, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2669, file: !870, line: 28, baseType: !874, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2628, file: !57, line: 166, baseType: !2677, size: 64, offset: 384)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!2618}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2628, file: !57, line: 167, baseType: !2618, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2610, file: !57, line: 123, baseType: !378, size: 8, offset: 448)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2610, file: !57, line: 124, baseType: !378, size: 8, offset: 456)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2610, file: !57, line: 125, baseType: !378, size: 8, offset: 464)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2610, file: !57, line: 126, baseType: !378, size: 8, offset: 472)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2594, file: !2093, line: 671, baseType: !2610, size: 512, offset: 1216)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2594, file: !2093, line: 679, baseType: !2687, size: 64, offset: 1728)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2500, file: !2093, line: 800, baseType: !2689, size: 64, offset: 5248)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2691)
!2691 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2093, line: 800, flags: DIFlagFwdDecl)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2500, file: !2093, line: 809, baseType: !2693, size: 64, offset: 5312)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2093, line: 70, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2500, file: !2093, line: 825, baseType: !2696, size: 2048, align: 512, offset: 5632)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2093, line: 509, size: 2048, align: 512, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2696, file: !2093, line: 511, baseType: !571, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2696, file: !2093, line: 512, baseType: !571, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2696, file: !2093, line: 513, baseType: !571, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2696, file: !2093, line: 514, baseType: !571, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2696, file: !2093, line: 515, baseType: !571, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2696, file: !2093, line: 516, baseType: !571, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2696, file: !2093, line: 518, baseType: !571, size: 64, offset: 384)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2696, file: !2093, line: 519, baseType: !571, size: 64, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2696, file: !2093, line: 520, baseType: !769, size: 64, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2696, file: !2093, line: 522, baseType: !571, size: 64, offset: 576)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2696, file: !2093, line: 523, baseType: !571, size: 64, offset: 640)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2696, file: !2093, line: 524, baseType: !769, size: 64, offset: 704)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2696, file: !2093, line: 526, baseType: !769, size: 64, offset: 768)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2696, file: !2093, line: 527, baseType: !571, size: 64, offset: 832)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2696, file: !2093, line: 529, baseType: !571, size: 64, offset: 896)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2696, file: !2093, line: 530, baseType: !571, size: 64, offset: 960)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2696, file: !2093, line: 531, baseType: !571, size: 64, offset: 1024)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2696, file: !2093, line: 532, baseType: !571, size: 64, offset: 1088)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2696, file: !2093, line: 533, baseType: !571, size: 64, offset: 1152)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2696, file: !2093, line: 535, baseType: !571, size: 64, offset: 1216)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2696, file: !2093, line: 536, baseType: !571, size: 64, offset: 1280)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2696, file: !2093, line: 537, baseType: !571, size: 64, offset: 1344)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2696, file: !2093, line: 538, baseType: !571, size: 64, offset: 1408)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2696, file: !2093, line: 539, baseType: !571, size: 64, offset: 1472)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2696, file: !2093, line: 540, baseType: !571, size: 64, offset: 1536)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2696, file: !2093, line: 541, baseType: !571, size: 64, offset: 1600)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2696, file: !2093, line: 542, baseType: !571, size: 64, offset: 1664)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2696, file: !2093, line: 543, baseType: !571, size: 64, offset: 1728)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2500, file: !2093, line: 833, baseType: !7, size: 32, offset: 7680)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2500, file: !2093, line: 836, baseType: !7, size: 32, offset: 7712)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2500, file: !2093, line: 837, baseType: !109, size: 32, offset: 7744)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2500, file: !2093, line: 838, baseType: !2730, size: 64, offset: 7808)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2732)
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2733, line: 19, baseType: !2734)
!2733 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2733, line: 19, size: 64, elements: !2735)
!2735 = !{!2736}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2734, file: !2733, line: 19, baseType: !324, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2500, file: !2093, line: 839, baseType: !2738, size: 64, offset: 7872)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2500, file: !2093, line: 840, baseType: !2732, size: 64, offset: 7936)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2500, file: !2093, line: 841, baseType: !251, size: 64, offset: 8000)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2500, file: !2093, line: 843, baseType: !329, size: 16, offset: 8064)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2500, file: !2093, line: 845, baseType: !329, size: 16, offset: 8080)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2500, file: !2093, line: 848, baseType: !109, size: 32, offset: 8096)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2500, file: !2093, line: 849, baseType: !2745, size: 32, offset: 8128)
!2745 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2093, line: 718, size: 32, elements: !2746)
!2746 = !{!2747, !2754}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2745, file: !2093, line: 724, baseType: !2748, size: 32)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2745, file: !2093, line: 719, size: 32, elements: !2749)
!2749 = !{!2750, !2751, !2752, !2753}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2748, file: !2093, line: 720, baseType: !378, size: 8)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2748, file: !2093, line: 721, baseType: !378, size: 8, offset: 8)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2748, file: !2093, line: 722, baseType: !378, size: 8, offset: 16)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2748, file: !2093, line: 723, baseType: !378, size: 8, offset: 24)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2745, file: !2093, line: 725, baseType: !567, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2500, file: !2093, line: 850, baseType: !290, size: 128, offset: 8192)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2500, file: !2093, line: 851, baseType: !2757, size: 64, offset: 8320)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2093, line: 60, flags: DIFlagFwdDecl)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2500, file: !2093, line: 855, baseType: !256, size: 64, offset: 8384)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2500, file: !2093, line: 856, baseType: !378, size: 8, offset: 8448)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2500, file: !2093, line: 857, baseType: !378, size: 8, offset: 8456)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2500, file: !2093, line: 858, baseType: !109, size: 32, offset: 8480)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2500, file: !2093, line: 859, baseType: !290, size: 128, offset: 8512)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2500, file: !2093, line: 860, baseType: !109, size: 32, offset: 8640)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2500, file: !2093, line: 861, baseType: !290, size: 128, offset: 8704)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2500, file: !2093, line: 873, baseType: !2767, size: 256, offset: 8832)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2093, line: 376, size: 256, elements: !2768)
!2768 = !{!2769, !2770, !2771, !2772}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2767, file: !2093, line: 381, baseType: !256, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2767, file: !2093, line: 384, baseType: !573, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2767, file: !2093, line: 389, baseType: !573, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2767, file: !2093, line: 392, baseType: !573, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2500, file: !2093, line: 875, baseType: !290, size: 128, offset: 9088)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2500, file: !2093, line: 877, baseType: !2775, size: 320, offset: 9216)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2776, line: 86, size: 320, elements: !2777)
!2776 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2777 = !{!2778, !2779, !2780}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2775, file: !2776, line: 87, baseType: !109, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2775, file: !2776, line: 88, baseType: !290, size: 128, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2775, file: !2776, line: 89, baseType: !290, size: 128, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2500, file: !2093, line: 878, baseType: !869, size: 192, align: 64, offset: 9536)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2500, file: !2093, line: 881, baseType: !1682, size: 64, offset: 9728)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2500, file: !2093, line: 882, baseType: !1682, size: 64, offset: 9792)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2500, file: !2093, line: 884, baseType: !109, size: 32, offset: 9856)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2500, file: !2093, line: 885, baseType: !109, size: 32, offset: 9888)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2500, file: !2093, line: 886, baseType: !109, size: 32, offset: 9920)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2500, file: !2093, line: 888, baseType: !109, size: 32, offset: 9952)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2500, file: !2093, line: 890, baseType: !256, size: 64, offset: 9984)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2500, file: !2093, line: 893, baseType: !7, size: 32, offset: 10048)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2500, file: !2093, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2500, file: !2093, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2500, file: !2093, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2500, file: !2093, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2500, file: !2093, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2500, file: !2093, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2500, file: !2093, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2500, file: !2093, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2500, file: !2093, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2500, file: !2093, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2500, file: !2093, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2500, file: !2093, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2500, file: !2093, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2500, file: !2093, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2500, file: !2093, line: 969, baseType: !256, size: 64, offset: 10176)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2500, file: !2093, line: 971, baseType: !2806, size: 448, offset: 10240)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2807)
!2807 = !{!2808, !2809, !2814}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2806, file: !62, line: 26, baseType: !256, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2806, file: !62, line: 27, baseType: !2810, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!455, !2813}
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, scope: !2806, file: !62, line: 28, baseType: !2815, size: 320, offset: 128)
!2815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2806, file: !62, line: 28, size: 320, elements: !2816)
!2816 = !{!2817, !2827, !2852}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2815, file: !62, line: 37, baseType: !2818, size: 320)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2815, file: !62, line: 30, size: 320, elements: !2819)
!2819 = !{!2820, !2822, !2823, !2824, !2825, !2826}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2818, file: !62, line: 31, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2818, file: !62, line: 32, baseType: !567, size: 32, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2818, file: !62, line: 33, baseType: !567, size: 32, offset: 96)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2818, file: !62, line: 34, baseType: !567, size: 32, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2818, file: !62, line: 35, baseType: !571, size: 64, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2818, file: !62, line: 36, baseType: !2821, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2815, file: !62, line: 47, baseType: !2828, size: 192)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2815, file: !62, line: 39, size: 192, elements: !2829)
!2829 = !{!2830, !2831, !2832, !2851}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2828, file: !62, line: 40, baseType: !2657, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2828, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, scope: !2828, file: !62, line: 42, baseType: !2833, size: 64, offset: 64)
!2833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2828, file: !62, line: 42, size: 64, elements: !2834)
!2834 = !{!2835, !2843}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2833, file: !62, line: 43, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2838, line: 7, size: 128, elements: !2839)
!2838 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2839 = !{!2840, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2837, file: !2838, line: 8, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !453, line: 93, baseType: !661)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2837, file: !2838, line: 9, baseType: !661, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2833, file: !62, line: 44, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2846, line: 7, size: 64, elements: !2847)
!2846 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2847 = !{!2848, !2850}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2845, file: !2846, line: 8, baseType: !2849, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2846, line: 5, baseType: !755)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2845, file: !2846, line: 9, baseType: !755, size: 32, offset: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2828, file: !62, line: 46, baseType: !571, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2815, file: !62, line: 55, baseType: !2853, size: 256)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2815, file: !62, line: 49, size: 256, elements: !2854)
!2854 = !{!2855, !2858, !2859, !2860, !2861}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2853, file: !62, line: 50, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2853, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2853, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2853, file: !62, line: 53, baseType: !256, size: 64, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2853, file: !62, line: 54, baseType: !256, size: 64, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2500, file: !2093, line: 973, baseType: !2863, size: 32, offset: 10688)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !259, line: 27, baseType: !2864)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !453, line: 28, baseType: !109)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2500, file: !2093, line: 974, baseType: !2863, size: 32, offset: 10720)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2500, file: !2093, line: 978, baseType: !256, size: 64, offset: 10752)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2500, file: !2093, line: 987, baseType: !2499, size: 64, offset: 10816)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2500, file: !2093, line: 990, baseType: !2499, size: 64, offset: 10880)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2500, file: !2093, line: 995, baseType: !290, size: 128, offset: 10944)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2500, file: !2093, line: 996, baseType: !290, size: 128, offset: 11072)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2500, file: !2093, line: 997, baseType: !2499, size: 64, offset: 11200)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2500, file: !2093, line: 1005, baseType: !290, size: 128, offset: 11264)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2500, file: !2093, line: 1006, baseType: !290, size: 128, offset: 11392)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2500, file: !2093, line: 1009, baseType: !1282, size: 64, offset: 11520)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2500, file: !2093, line: 1010, baseType: !2876, size: 512, offset: 11584)
!2876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1003, size: 512, elements: !987)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2500, file: !2093, line: 1011, baseType: !290, size: 128, offset: 12096)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2500, file: !2093, line: 1012, baseType: !290, size: 128, offset: 12224)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2500, file: !2093, line: 1014, baseType: !707, size: 64, offset: 12352)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2500, file: !2093, line: 1017, baseType: !886, size: 64, offset: 12416)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2500, file: !2093, line: 1020, baseType: !886, size: 64, offset: 12480)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2500, file: !2093, line: 1023, baseType: !251, size: 64, offset: 12544)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2500, file: !2093, line: 1025, baseType: !571, size: 64, offset: 12608)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2500, file: !2093, line: 1026, baseType: !571, size: 64, offset: 12672)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2500, file: !2093, line: 1031, baseType: !571, size: 64, offset: 12736)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2500, file: !2093, line: 1032, baseType: !2887, size: 192, offset: 12800)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2093, line: 324, size: 192, elements: !2888)
!2888 = !{!2889, !2890, !2891}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2887, file: !2093, line: 326, baseType: !571, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2887, file: !2093, line: 327, baseType: !571, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2887, file: !2093, line: 328, baseType: !717, size: 32, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2500, file: !2093, line: 1041, baseType: !256, size: 64, offset: 12992)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2500, file: !2093, line: 1042, baseType: !256, size: 64, offset: 13056)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2500, file: !2093, line: 1045, baseType: !571, size: 64, offset: 13120)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2500, file: !2093, line: 1048, baseType: !571, size: 64, offset: 13184)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2500, file: !2093, line: 1051, baseType: !256, size: 64, offset: 13248)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2500, file: !2093, line: 1052, baseType: !256, size: 64, offset: 13312)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2500, file: !2093, line: 1055, baseType: !2899, size: 640, offset: 13376)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2900, line: 132, size: 640, elements: !2901)
!2900 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2901 = !{!2902, !2908, !2909}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2899, file: !2900, line: 133, baseType: !2903, size: 576)
!2903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2904, size: 576, elements: !420)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2900, line: 117, size: 192, elements: !2905)
!2905 = !{!2906, !2907}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2904, file: !2900, line: 118, baseType: !571, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2904, file: !2900, line: 119, baseType: !2666, size: 128, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2899, file: !2900, line: 134, baseType: !7, size: 32, offset: 576)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2899, file: !2900, line: 135, baseType: !7, size: 32, offset: 608)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2500, file: !2093, line: 1058, baseType: !2911, size: 448, offset: 14016)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2900, line: 144, size: 448, elements: !2912)
!2912 = !{!2913, !2914, !2915}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2911, file: !2900, line: 145, baseType: !977, size: 128, align: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2911, file: !2900, line: 146, baseType: !759, size: 256, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2911, file: !2900, line: 147, baseType: !7, size: 32, offset: 384)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2500, file: !2093, line: 1064, baseType: !1314, size: 64, offset: 14464)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2500, file: !2093, line: 1067, baseType: !1314, size: 64, offset: 14528)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2500, file: !2093, line: 1070, baseType: !1314, size: 64, offset: 14592)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2500, file: !2093, line: 1074, baseType: !1341, size: 64, offset: 14656)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2500, file: !2093, line: 1084, baseType: !2921, size: 128, offset: 14720)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 128, elements: !2922)
!2922 = !{!2923}
!2923 = !DISubrange(count: 16)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2500, file: !2093, line: 1086, baseType: !2925, size: 64, offset: 14848)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2093, line: 55, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2500, file: !2093, line: 1089, baseType: !2928, size: 64, offset: 14912)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2929, line: 12, size: 64, elements: !2930)
!2929 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2930 = !{!2931}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2928, file: !2929, line: 13, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2929, line: 8, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2500, file: !2093, line: 1090, baseType: !2935, size: 128, offset: 14976)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2936, line: 13, size: 128, elements: !2937)
!2936 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2937 = !{!2938}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2935, file: !2936, line: 14, baseType: !290, size: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2500, file: !2093, line: 1097, baseType: !2940, size: 64, offset: 15104)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2093, line: 50, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2500, file: !2093, line: 1100, baseType: !2943, size: 64, offset: 15168)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2093, line: 1100, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2500, file: !2093, line: 1103, baseType: !2946, size: 64, offset: 15232)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2093, line: 53, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2500, file: !2093, line: 1107, baseType: !2949, size: 64, offset: 15296)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2093, line: 56, flags: DIFlagFwdDecl)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2500, file: !2093, line: 1110, baseType: !2952, size: 64, offset: 15360)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2954, line: 93, size: 8768, elements: !2955)
!2954 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !3003, !3012, !3013, !3015, !3016, !3017, !3020, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3058, !3059, !3066, !3076, !3079, !3080, !3083, !3084, !3085, !3086, !3087, !3088}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2953, file: !2954, line: 94, baseType: !278, size: 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2953, file: !2954, line: 95, baseType: !283, size: 32, offset: 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2953, file: !2954, line: 96, baseType: !109, size: 32, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2953, file: !2954, line: 97, baseType: !109, size: 32, offset: 96)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2953, file: !2954, line: 98, baseType: !290, size: 128, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2953, file: !2954, line: 100, baseType: !1292, size: 192, offset: 256)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2953, file: !2954, line: 103, baseType: !2499, size: 64, offset: 448)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2953, file: !2954, line: 106, baseType: !2964, size: 192, offset: 512)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1499, line: 32, size: 192, elements: !2965)
!2965 = !{!2966, !2967}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2964, file: !1499, line: 33, baseType: !290, size: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2964, file: !1499, line: 34, baseType: !2968, size: 64, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2969, line: 25, baseType: !2970)
!2969 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2969, line: 23, size: 64, elements: !2971)
!2971 = !{!2972}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2970, file: !2969, line: 24, baseType: !324, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2953, file: !2954, line: 109, baseType: !1127, size: 64, offset: 704)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2953, file: !2954, line: 112, baseType: !109, size: 32, offset: 768)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2953, file: !2954, line: 114, baseType: !109, size: 32, offset: 800)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2953, file: !2954, line: 115, baseType: !2499, size: 64, offset: 832)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2953, file: !2954, line: 118, baseType: !109, size: 32, offset: 896)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2953, file: !2954, line: 119, baseType: !7, size: 32, offset: 928)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2953, file: !2954, line: 121, baseType: !2980, size: 64, offset: 960)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2954, line: 80, size: 448, elements: !2982)
!2982 = !{!2983, !2984, !2990}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2981, file: !2954, line: 81, baseType: !283, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2981, file: !2954, line: 82, baseType: !2985, size: 128, offset: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2954, line: 75, size: 128, elements: !2986)
!2986 = !{!2987, !2988}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2985, file: !2954, line: 76, baseType: !2499, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2985, file: !2954, line: 77, baseType: !2989, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2981, file: !2954, line: 83, baseType: !708, size: 256, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2953, file: !2954, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2953, file: !2954, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2953, file: !2954, line: 138, baseType: !7, size: 32, offset: 1056)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2953, file: !2954, line: 139, baseType: !290, size: 128, offset: 1088)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2953, file: !2954, line: 142, baseType: !2610, size: 512, offset: 1216)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2953, file: !2954, line: 143, baseType: !2618, size: 64, offset: 1728)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2953, file: !2954, line: 150, baseType: !2998, size: 256, offset: 1792)
!2998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2999, size: 256, elements: !876)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2954, line: 38, size: 128, elements: !3000)
!3000 = !{!3001, !3002}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2999, file: !2954, line: 39, baseType: !571, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2999, file: !2954, line: 40, baseType: !571, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2953, file: !2954, line: 156, baseType: !3004, size: 192, offset: 2048)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2954, line: 66, size: 192, elements: !3005)
!3005 = !{!3006}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3004, file: !2954, line: 67, baseType: !3007, size: 192)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2954, line: 47, size: 192, elements: !3008)
!3008 = !{!3009, !3010, !3011}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3007, file: !2954, line: 48, baseType: !765, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3007, file: !2954, line: 49, baseType: !765, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3007, file: !2954, line: 50, baseType: !765, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2953, file: !2954, line: 160, baseType: !2899, size: 640, offset: 2240)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2953, file: !2954, line: 163, baseType: !3014, size: 256, offset: 2880)
!3014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 256, elements: !987)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2953, file: !2954, line: 169, baseType: !1282, size: 64, offset: 3136)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2953, file: !2954, line: 172, baseType: !109, size: 32, offset: 3200)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2953, file: !2954, line: 174, baseType: !3018, size: 64, offset: 3264)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2954, line: 174, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2953, file: !2954, line: 185, baseType: !3021, size: 64, offset: 3328)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !540, line: 860, baseType: !3022)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !540, line: 853, size: 64, elements: !3023)
!3023 = !{!3024, !3025}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3022, file: !540, line: 858, baseType: !539, size: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3022, file: !540, line: 859, baseType: !354, size: 32, offset: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2953, file: !2954, line: 186, baseType: !571, size: 64, offset: 3392)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2953, file: !2954, line: 186, baseType: !571, size: 64, offset: 3456)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2953, file: !2954, line: 186, baseType: !571, size: 64, offset: 3520)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2953, file: !2954, line: 186, baseType: !571, size: 64, offset: 3584)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2953, file: !2954, line: 187, baseType: !571, size: 64, offset: 3648)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2953, file: !2954, line: 188, baseType: !571, size: 64, offset: 3712)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2953, file: !2954, line: 189, baseType: !2887, size: 192, offset: 3776)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2953, file: !2954, line: 190, baseType: !256, size: 64, offset: 3968)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2953, file: !2954, line: 190, baseType: !256, size: 64, offset: 4032)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2953, file: !2954, line: 190, baseType: !256, size: 64, offset: 4096)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2953, file: !2954, line: 190, baseType: !256, size: 64, offset: 4160)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2953, file: !2954, line: 191, baseType: !256, size: 64, offset: 4224)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2953, file: !2954, line: 191, baseType: !256, size: 64, offset: 4288)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2953, file: !2954, line: 191, baseType: !256, size: 64, offset: 4352)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2953, file: !2954, line: 191, baseType: !256, size: 64, offset: 4416)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2953, file: !2954, line: 192, baseType: !256, size: 64, offset: 4480)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2953, file: !2954, line: 192, baseType: !256, size: 64, offset: 4544)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2953, file: !2954, line: 192, baseType: !256, size: 64, offset: 4608)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2953, file: !2954, line: 192, baseType: !256, size: 64, offset: 4672)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2953, file: !2954, line: 193, baseType: !256, size: 64, offset: 4736)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2953, file: !2954, line: 193, baseType: !256, size: 64, offset: 4800)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2953, file: !2954, line: 194, baseType: !3048, size: 448, offset: 4864)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3049, line: 12, size: 448, elements: !3050)
!3049 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3050 = !{!3051, !3052, !3053, !3054, !3055, !3056, !3057}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3048, file: !3049, line: 15, baseType: !571, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3048, file: !3049, line: 17, baseType: !571, size: 64, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3048, file: !3049, line: 19, baseType: !571, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3048, file: !3049, line: 21, baseType: !571, size: 64, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3048, file: !3049, line: 29, baseType: !571, size: 64, offset: 256)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3048, file: !3049, line: 35, baseType: !571, size: 64, offset: 320)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3048, file: !3049, line: 44, baseType: !571, size: 64, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2953, file: !2954, line: 202, baseType: !573, size: 64, offset: 5312)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2953, file: !2954, line: 213, baseType: !3060, size: 2048, offset: 5376)
!3060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3061, size: 2048, elements: !2922)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3062, line: 43, size: 128, elements: !3063)
!3062 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3063 = !{!3064, !3065}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3061, file: !3062, line: 44, baseType: !468, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3061, file: !3062, line: 45, baseType: !468, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2953, file: !2954, line: 216, baseType: !3067, size: 448, offset: 7424)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2954, line: 30, size: 448, elements: !3068)
!3068 = !{!3069, !3070, !3071, !3072, !3073, !3074, !3075}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3067, file: !2954, line: 31, baseType: !109, size: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3067, file: !2954, line: 32, baseType: !455, size: 64, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3067, file: !2954, line: 33, baseType: !256, size: 64, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3067, file: !2954, line: 34, baseType: !571, size: 64, offset: 192)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3067, file: !2954, line: 34, baseType: !571, size: 64, offset: 256)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3067, file: !2954, line: 35, baseType: !256, size: 64, offset: 320)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3067, file: !2954, line: 35, baseType: !256, size: 64, offset: 384)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2953, file: !2954, line: 219, baseType: !3077, size: 64, offset: 7872)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2954, line: 219, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2953, file: !2954, line: 222, baseType: !7, size: 32, offset: 7936)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2953, file: !2954, line: 223, baseType: !3081, size: 64, offset: 8000)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2954, line: 223, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2953, file: !2954, line: 230, baseType: !304, size: 8, offset: 8064)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2953, file: !2954, line: 231, baseType: !895, size: 16, offset: 8080)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2953, file: !2954, line: 232, baseType: !895, size: 16, offset: 8096)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2953, file: !2954, line: 234, baseType: !1682, size: 64, offset: 8128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2953, file: !2954, line: 237, baseType: !759, size: 256, offset: 8192)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2953, file: !2954, line: 243, baseType: !1355, size: 320, offset: 8448)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2500, file: !2093, line: 1111, baseType: !3090, size: 64, offset: 15424)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2954, line: 20, size: 16640, elements: !3092)
!3092 = !{!3093, !3094, !3095, !3096}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3091, file: !2954, line: 21, baseType: !354, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3091, file: !2954, line: 22, baseType: !278, size: 32, offset: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3091, file: !2954, line: 23, baseType: !1292, size: 192, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3091, file: !2954, line: 24, baseType: !3097, size: 16384, offset: 256)
!3097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3098, size: 16384, elements: !424)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1499, line: 51, size: 256, elements: !3099)
!3099 = !{!3100}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3098, file: !1499, line: 52, baseType: !3101, size: 256)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1499, line: 37, size: 256, elements: !3102)
!3102 = !{!3103, !3110, !3111, !3115}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3101, file: !1499, line: 39, baseType: !3104, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3105, line: 83, baseType: !3106)
!3105 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3105, line: 82, baseType: !3108)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{null, !109}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3101, file: !1499, line: 40, baseType: !256, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3101, file: !1499, line: 46, baseType: !3112, size: 64, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3105, line: 86, baseType: !3113)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3105, line: 85, baseType: !1122)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3101, file: !1499, line: 48, baseType: !2968, size: 64, offset: 192)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2500, file: !2093, line: 1112, baseType: !2968, size: 64, offset: 15488)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2500, file: !2093, line: 1113, baseType: !2968, size: 64, offset: 15552)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2500, file: !2093, line: 1115, baseType: !2968, size: 64, offset: 15616)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2500, file: !2093, line: 1116, baseType: !2964, size: 192, offset: 15680)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2500, file: !2093, line: 1117, baseType: !256, size: 64, offset: 15872)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2500, file: !2093, line: 1118, baseType: !466, size: 64, offset: 15936)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2500, file: !2093, line: 1119, baseType: !7, size: 32, offset: 16000)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2500, file: !2093, line: 1121, baseType: !976, size: 64, offset: 16064)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2500, file: !2093, line: 1125, baseType: !3125, size: 64, offset: 16128)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2093, line: 43, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2500, file: !2093, line: 1127, baseType: !504, size: 32, offset: 16192)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2500, file: !2093, line: 1128, baseType: !7, size: 32, offset: 16224)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2500, file: !2093, line: 1130, baseType: !3130, size: 128, offset: 16256)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3131, line: 37, size: 128, elements: !3132)
!3131 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3132 = !{!3133, !3134, !3135}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3130, file: !3131, line: 38, baseType: !109, size: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3130, file: !3131, line: 39, baseType: !283, size: 32, offset: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3130, file: !3131, line: 40, baseType: !3136, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3131, line: 24, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2500, file: !2093, line: 1131, baseType: !3139, size: 256, offset: 16384)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3140, line: 12, size: 256, elements: !3141)
!3140 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3141 = !{!3142, !3143, !3144, !3145}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3139, file: !3140, line: 13, baseType: !419, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3139, file: !3140, line: 14, baseType: !256, size: 64, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3139, file: !3140, line: 15, baseType: !256, size: 64, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3139, file: !3140, line: 16, baseType: !304, size: 8, offset: 192)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2500, file: !2093, line: 1134, baseType: !571, size: 64, offset: 16640)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2500, file: !2093, line: 1135, baseType: !571, size: 64, offset: 16704)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2500, file: !2093, line: 1138, baseType: !354, size: 32, offset: 16768)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2500, file: !2093, line: 1141, baseType: !717, size: 32, offset: 16800)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2500, file: !2093, line: 1143, baseType: !3151, size: 64, offset: 16832)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2093, line: 735, size: 64, elements: !3152)
!3152 = !{!3153}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3151, file: !2093, line: 736, baseType: !3154, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2500, file: !2093, line: 1147, baseType: !2669, size: 128, offset: 16896)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2500, file: !2093, line: 1149, baseType: !2499, size: 64, offset: 17024)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2500, file: !2093, line: 1151, baseType: !3158, size: 64, offset: 17088)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2093, line: 1151, flags: DIFlagFwdDecl)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2500, file: !2093, line: 1188, baseType: !251, size: 64, offset: 17152)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2500, file: !2093, line: 1191, baseType: !3162, size: 64, offset: 17216)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2093, line: 44, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2500, file: !2093, line: 1194, baseType: !3165, size: 64, offset: 17280)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2093, line: 45, flags: DIFlagFwdDecl)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2500, file: !2093, line: 1197, baseType: !3168, size: 64, offset: 17344)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2093, line: 61, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2500, file: !2093, line: 1199, baseType: !3171, size: 64, offset: 17408)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3173, line: 99, size: 128, elements: !3174)
!3173 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3174 = !{!3175, !3176, !3177}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3172, file: !3173, line: 100, baseType: !763, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3172, file: !3173, line: 101, baseType: !283, size: 32, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3172, file: !3173, line: 103, baseType: !329, size: 16, offset: 96)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2500, file: !2093, line: 1202, baseType: !3179, size: 64, offset: 17472)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2093, line: 48, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2500, file: !2093, line: 1205, baseType: !256, size: 64, offset: 17536)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2500, file: !2093, line: 1206, baseType: !3183, size: 64, offset: 17600)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1499, line: 14, baseType: !3185)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1499, line: 12, size: 384, elements: !3186)
!3186 = !{!3187}
!3187 = !DIDerivedType(tag: DW_TAG_member, scope: !3185, file: !1499, line: 13, baseType: !3188, size: 384)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3185, file: !1499, line: 13, size: 384, elements: !3189)
!3189 = !{!3190, !3191, !3192, !3193}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3188, file: !1499, line: 13, baseType: !109, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3188, file: !1499, line: 13, baseType: !109, size: 32, offset: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3188, file: !1499, line: 13, baseType: !109, size: 32, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3188, file: !1499, line: 13, baseType: !3194, size: 256, offset: 128)
!3194 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3195, line: 37, size: 256, elements: !3196)
!3195 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3196 = !{!3197, !3202, !3215, !3221, !3230, !3257, !3262}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3194, file: !3195, line: 42, baseType: !3198, size: 64)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3194, file: !3195, line: 39, size: 64, elements: !3199)
!3199 = !{!3200, !3201}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3198, file: !3195, line: 40, baseType: !2864, size: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3198, file: !3195, line: 41, baseType: !510, size: 32, offset: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3194, file: !3195, line: 50, baseType: !3203, size: 192)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3194, file: !3195, line: 45, size: 192, elements: !3204)
!3204 = !{!3205, !3207, !3208, !3214}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3203, file: !3195, line: 46, baseType: !3206, size: 32)
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !453, line: 95, baseType: !109)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3203, file: !3195, line: 47, baseType: !109, size: 32, offset: 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3203, file: !3195, line: 48, baseType: !3209, size: 64, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3195, line: 11, baseType: !3210)
!3210 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3195, line: 8, size: 64, elements: !3211)
!3211 = !{!3212, !3213}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3210, file: !3195, line: 9, baseType: !109, size: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3210, file: !3195, line: 10, baseType: !251, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3203, file: !3195, line: 49, baseType: !109, size: 32, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3194, file: !3195, line: 57, baseType: !3216, size: 128)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3194, file: !3195, line: 53, size: 128, elements: !3217)
!3217 = !{!3218, !3219, !3220}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3216, file: !3195, line: 54, baseType: !2864, size: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3216, file: !3195, line: 55, baseType: !510, size: 32, offset: 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3216, file: !3195, line: 56, baseType: !3209, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3194, file: !3195, line: 66, baseType: !3222, size: 256)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3194, file: !3195, line: 60, size: 256, elements: !3223)
!3223 = !{!3224, !3225, !3226, !3227, !3229}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3222, file: !3195, line: 61, baseType: !2864, size: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3222, file: !3195, line: 62, baseType: !510, size: 32, offset: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3222, file: !3195, line: 63, baseType: !109, size: 32, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3222, file: !3195, line: 64, baseType: !3228, size: 64, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !453, line: 94, baseType: !454)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3222, file: !3195, line: 65, baseType: !3228, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3194, file: !3195, line: 105, baseType: !3231, size: 256)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3194, file: !3195, line: 69, size: 256, elements: !3232)
!3232 = !{!3233, !3234}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3231, file: !3195, line: 70, baseType: !251, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, scope: !3231, file: !3195, line: 79, baseType: !3235, size: 192, offset: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3231, file: !3195, line: 79, size: 192, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3246, !3251}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3235, file: !3195, line: 81, baseType: !109, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3235, file: !3195, line: 86, baseType: !895, size: 16)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3235, file: !3195, line: 92, baseType: !3240, size: 192)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3235, file: !3195, line: 88, size: 192, elements: !3241)
!3241 = !{!3242, !3244, !3245}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3240, file: !3195, line: 89, baseType: !3243, size: 64)
!3243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 64, elements: !2653)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3240, file: !3195, line: 90, baseType: !251, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3240, file: !3195, line: 91, baseType: !251, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3235, file: !3195, line: 97, baseType: !3247, size: 96)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3235, file: !3195, line: 94, size: 96, elements: !3248)
!3248 = !{!3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3247, file: !3195, line: 95, baseType: !3243, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3247, file: !3195, line: 96, baseType: !568, size: 32, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3235, file: !3195, line: 103, baseType: !3252, size: 128)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3235, file: !3195, line: 99, size: 128, elements: !3253)
!3253 = !{!3254, !3255, !3256}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3252, file: !3195, line: 100, baseType: !256, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3252, file: !3195, line: 101, baseType: !568, size: 32, offset: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3252, file: !3195, line: 102, baseType: !568, size: 32, offset: 96)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3194, file: !3195, line: 111, baseType: !3258, size: 128)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3194, file: !3195, line: 108, size: 128, elements: !3259)
!3259 = !{!3260, !3261}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3258, file: !3195, line: 109, baseType: !455, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3258, file: !3195, line: 110, baseType: !109, size: 32, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3194, file: !3195, line: 118, baseType: !3263, size: 128)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3194, file: !3195, line: 114, size: 128, elements: !3264)
!3264 = !{!3265, !3266, !3267}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3263, file: !3195, line: 115, baseType: !251, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3263, file: !3195, line: 116, baseType: !109, size: 32, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3263, file: !3195, line: 117, baseType: !7, size: 32, offset: 96)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2500, file: !2093, line: 1208, baseType: !3048, size: 448, offset: 17664)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2500, file: !2093, line: 1215, baseType: !571, size: 64, offset: 18112)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2500, file: !2093, line: 1217, baseType: !571, size: 64, offset: 18176)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2500, file: !2093, line: 1219, baseType: !571, size: 64, offset: 18240)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2500, file: !2093, line: 1223, baseType: !3273, size: 64, offset: 18304)
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3274, line: 99, baseType: !3275)
!3274 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3274, line: 99, size: 64, elements: !3276)
!3276 = !{!3277}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3275, file: !3274, line: 99, baseType: !324, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2500, file: !2093, line: 1225, baseType: !539, size: 32, offset: 18368)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2500, file: !2093, line: 1226, baseType: !109, size: 32, offset: 18400)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2500, file: !2093, line: 1227, baseType: !109, size: 32, offset: 18432)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2500, file: !2093, line: 1231, baseType: !3282, size: 64, offset: 18496)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2093, line: 1231, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2500, file: !2093, line: 1233, baseType: !290, size: 128, offset: 18560)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2500, file: !2093, line: 1240, baseType: !3286, size: 64, offset: 18688)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2093, line: 62, flags: DIFlagFwdDecl)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2500, file: !2093, line: 1242, baseType: !3289, size: 64, offset: 18752)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2093, line: 1242, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2500, file: !2093, line: 1244, baseType: !290, size: 128, offset: 18816)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2500, file: !2093, line: 1245, baseType: !3293, size: 64, offset: 18944)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2093, line: 51, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2500, file: !2093, line: 1246, baseType: !759, size: 256, offset: 19008)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2500, file: !2093, line: 1247, baseType: !7, size: 32, offset: 19264)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2500, file: !2093, line: 1250, baseType: !3298, size: 64, offset: 19328)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2093, line: 57, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2500, file: !2093, line: 1251, baseType: !759, size: 256, offset: 19392)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2500, file: !2093, line: 1252, baseType: !290, size: 128, offset: 19648)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2500, file: !2093, line: 1259, baseType: !2091, size: 64, offset: 19776)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2500, file: !2093, line: 1260, baseType: !895, size: 16, offset: 19840)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2500, file: !2093, line: 1261, baseType: !895, size: 16, offset: 19856)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2500, file: !2093, line: 1314, baseType: !3306, size: 64, offset: 19904)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3308, line: 62, size: 256, align: 256, elements: !3309)
!3308 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3309 = !{!3310, !3311, !3312, !3313, !3314, !3315, !3316}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3307, file: !3308, line: 75, baseType: !568, size: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3307, file: !3308, line: 90, baseType: !568, size: 32, offset: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3307, file: !3308, line: 112, baseType: !572, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3307, file: !3308, line: 132, baseType: !568, size: 32, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3307, file: !3308, line: 140, baseType: !568, size: 32, offset: 160)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3307, file: !3308, line: 149, baseType: !568, size: 32, offset: 192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3307, file: !3308, line: 154, baseType: !3317, offset: 224)
!3317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, elements: !1307)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2500, file: !2093, line: 1315, baseType: !567, size: 32, offset: 19968)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2500, file: !2093, line: 1316, baseType: !567, size: 32, offset: 20000)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2500, file: !2093, line: 1321, baseType: !256, size: 64, offset: 20032)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2500, file: !2093, line: 1325, baseType: !109, size: 32, offset: 20096)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2500, file: !2093, line: 1326, baseType: !109, size: 32, offset: 20128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2500, file: !2093, line: 1327, baseType: !109, size: 32, offset: 20160)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2500, file: !2093, line: 1328, baseType: !109, size: 32, offset: 20192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2500, file: !2093, line: 1329, baseType: !977, size: 128, align: 64, offset: 20224)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2500, file: !2093, line: 1332, baseType: !3327, size: 128, offset: 20352)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3328, line: 51, size: 128, elements: !3329)
!3328 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3329 = !{!3330, !3335, !3336}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3327, file: !3328, line: 60, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3332, line: 7, size: 64, elements: !3333)
!3332 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3333 = !{!3334}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3331, file: !3332, line: 12, baseType: !2734, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3327, file: !3328, line: 63, baseType: !304, size: 8, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3327, file: !3328, line: 70, baseType: !304, size: 8, offset: 72)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2500, file: !2093, line: 1335, baseType: !2144, size: 64, offset: 20480)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2500, file: !2093, line: 1337, baseType: !3339, size: 128, offset: 20544)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3328, line: 39, size: 128, elements: !3340)
!3340 = !{!3341, !3342, !3343}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3339, file: !3328, line: 40, baseType: !1930, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3339, file: !3328, line: 42, baseType: !568, size: 32, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3339, file: !3328, line: 43, baseType: !568, size: 32, offset: 96)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2500, file: !2093, line: 1340, baseType: !3345, size: 64, offset: 20672)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2093, line: 69, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2500, file: !2093, line: 1351, baseType: !109, size: 32, offset: 20736)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2500, file: !2093, line: 1352, baseType: !109, size: 32, offset: 20768)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2500, file: !2093, line: 1354, baseType: !256, size: 64, offset: 20800)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2500, file: !2093, line: 1364, baseType: !571, size: 64, offset: 20864)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2500, file: !2093, line: 1365, baseType: !571, size: 64, offset: 20928)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2500, file: !2093, line: 1412, baseType: !256, size: 64, offset: 20992)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2500, file: !2093, line: 1453, baseType: !3354, size: 64, offset: 21056)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2093, line: 1453, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2500, file: !2093, line: 1457, baseType: !3357, size: 64, offset: 21120)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3359)
!3359 = !{!3360, !3361, !3380, !3383, !3384, !3417, !3427}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3358, file: !68, line: 62, baseType: !67, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, scope: !3358, file: !68, line: 64, baseType: !3362, size: 192, offset: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3358, file: !68, line: 64, size: 192, elements: !3363)
!3363 = !{!3364, !3375}
!3364 = !DIDerivedType(tag: DW_TAG_member, scope: !3362, file: !68, line: 65, baseType: !3365, size: 192)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3362, file: !68, line: 65, size: 192, elements: !3366)
!3366 = !{!3367, !3374}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3365, file: !68, line: 66, baseType: !3368, size: 128)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3369, line: 50, size: 128, elements: !3370)
!3369 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3370 = !{!3371, !3372, !3373}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3368, file: !3369, line: 52, baseType: !256, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3368, file: !3369, line: 54, baseType: !7, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3368, file: !3369, line: 55, baseType: !7, size: 32, offset: 96)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3365, file: !68, line: 67, baseType: !256, size: 64, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, scope: !3362, file: !68, line: 70, baseType: !3376, size: 192)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3362, file: !68, line: 70, size: 192, elements: !3377)
!3377 = !{!3378, !3379}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3376, file: !68, line: 71, baseType: !977, size: 128, align: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3376, file: !68, line: 72, baseType: !256, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3358, file: !68, line: 76, baseType: !3381, size: 64, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3358, file: !68, line: 77, baseType: !256, size: 64, offset: 320)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3358, file: !68, line: 79, baseType: !3385, size: 64, offset: 384)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3369, line: 25, size: 256, elements: !3387)
!3387 = !{!3388, !3394, !3398}
!3388 = !DIDerivedType(tag: DW_TAG_member, scope: !3386, file: !3369, line: 26, baseType: !3389, size: 128)
!3389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3386, file: !3369, line: 26, size: 128, elements: !3390)
!3390 = !{!3391, !3393}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3389, file: !3369, line: 27, baseType: !3392, size: 128)
!3392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 128, elements: !2922)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3389, file: !3369, line: 28, baseType: !3392, size: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3386, file: !3369, line: 31, baseType: !3395, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3397)
!3397 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3369, line: 23, flags: DIFlagFwdDecl)
!3398 = !DIDerivedType(tag: DW_TAG_member, scope: !3386, file: !3369, line: 33, baseType: !3399, size: 64, offset: 192)
!3399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3386, file: !3369, line: 33, size: 64, elements: !3400)
!3400 = !{!3401, !3407, !3412}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3399, file: !3369, line: 38, baseType: !3402, size: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3399, file: !3369, line: 34, size: 64, elements: !3403)
!3403 = !{!3404, !3405, !3406}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3402, file: !3369, line: 35, baseType: !755, size: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3402, file: !3369, line: 36, baseType: !378, size: 8, offset: 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3402, file: !3369, line: 37, baseType: !378, size: 8, offset: 40)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3399, file: !3369, line: 42, baseType: !3408, size: 16)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3399, file: !3369, line: 39, size: 16, elements: !3409)
!3409 = !{!3410, !3411}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3408, file: !3369, line: 40, baseType: !378, size: 8)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3408, file: !3369, line: 41, baseType: !378, size: 8, offset: 8)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3399, file: !3369, line: 46, baseType: !3413, size: 16)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3399, file: !3369, line: 43, size: 16, elements: !3414)
!3414 = !{!3415, !3416}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3413, file: !3369, line: 44, baseType: !378, size: 8)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3413, file: !3369, line: 45, baseType: !378, size: 8, offset: 8)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3358, file: !68, line: 81, baseType: !3418, size: 64, offset: 448)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3420)
!3420 = !{!3421, !3422, !3423, !3424, !3425, !3426}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3419, file: !68, line: 86, baseType: !3381, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3419, file: !68, line: 87, baseType: !256, size: 64, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3419, file: !68, line: 88, baseType: !256, size: 64, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3419, file: !68, line: 89, baseType: !256, size: 64, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3419, file: !68, line: 90, baseType: !304, size: 8, offset: 256)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3419, file: !68, line: 92, baseType: !3418, size: 64, offset: 320)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3358, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2500, file: !2093, line: 1463, baseType: !3429, offset: 21184)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2093, line: 739, elements: !1046)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2500, file: !2093, line: 1470, baseType: !977, size: 128, align: 64, offset: 21184)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2500, file: !2093, line: 1471, baseType: !278, size: 32, offset: 21312)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2500, file: !2093, line: 1472, baseType: !109, size: 32, offset: 21344)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2500, file: !2093, line: 1474, baseType: !2499, size: 64, offset: 21376)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2500, file: !2093, line: 1475, baseType: !999, size: 320, offset: 21440)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2500, file: !2093, line: 1478, baseType: !3436, size: 64, offset: 21760)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3438, line: 49, size: 512, elements: !3439)
!3438 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3446, !3447, !3448, !3450}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3437, file: !3438, line: 50, baseType: !3436, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3437, file: !3438, line: 51, baseType: !251, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3437, file: !3438, line: 52, baseType: !256, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3437, file: !3438, line: 53, baseType: !256, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3437, file: !3438, line: 54, baseType: !3445, size: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3437, file: !3438, line: 56, baseType: !7, size: 32, offset: 320)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3437, file: !3438, line: 58, baseType: !7, size: 32, offset: 352)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3437, file: !3438, line: 59, baseType: !3449, size: 64, offset: 384)
!3449 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !259, line: 159, baseType: !571)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3437, file: !3438, line: 60, baseType: !1797, size: 64, offset: 448)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2500, file: !2093, line: 1482, baseType: !278, size: 32, offset: 21824)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2500, file: !2093, line: 1489, baseType: !251, size: 64, offset: 21888)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2500, file: !2093, line: 1504, baseType: !251, size: 64, offset: 21952)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2500, file: !2093, line: 1505, baseType: !572, size: 64, offset: 22016)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2500, file: !2093, line: 1506, baseType: !571, size: 64, offset: 22080)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2500, file: !2093, line: 1507, baseType: !572, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2500, file: !2093, line: 1508, baseType: !572, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2500, file: !2093, line: 1509, baseType: !572, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2500, file: !2093, line: 1510, baseType: !977, size: 128, align: 64, offset: 22208)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2500, file: !2093, line: 1511, baseType: !109, size: 32, offset: 22336)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2500, file: !2093, line: 1515, baseType: !3462, size: 64, offset: 22400)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1244, line: 56, size: 64, elements: !3463)
!3463 = !{!3464}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3462, file: !1244, line: 57, baseType: !1247, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2500, file: !2093, line: 1518, baseType: !3462, size: 64, offset: 22464)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2500, file: !2093, line: 1528, baseType: !977, size: 128, align: 64, offset: 22528)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2500, file: !2093, line: 1552, baseType: !3468, size: 35328, offset: 23040)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3469, line: 430, size: 35328, elements: !3470)
!3469 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3470 = !{!3471, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3500, !3501, !3502, !3503, !3504, !3505, !3508, !3509, !3510, !3511}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3468, file: !3469, line: 432, baseType: !3472, size: 192)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3473, size: 192, elements: !420)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3474, line: 16, size: 64, elements: !3475)
!3474 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3473, file: !3474, line: 17, baseType: !388, size: 16)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3473, file: !3474, line: 18, baseType: !388, size: 16, offset: 16)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3473, file: !3474, line: 19, baseType: !388, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3473, file: !3474, line: 19, baseType: !388, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3473, file: !3474, line: 19, baseType: !388, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3473, file: !3474, line: 19, baseType: !388, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3473, file: !3474, line: 19, baseType: !388, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3473, file: !3474, line: 20, baseType: !388, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3473, file: !3474, line: 20, baseType: !388, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3473, file: !3474, line: 20, baseType: !388, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3473, file: !3474, line: 20, baseType: !388, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3473, file: !3474, line: 20, baseType: !388, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3473, file: !3474, line: 20, baseType: !388, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3468, file: !3469, line: 436, baseType: !256, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3468, file: !3469, line: 440, baseType: !329, size: 16, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3468, file: !3469, line: 441, baseType: !329, size: 16, offset: 272)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3468, file: !3469, line: 442, baseType: !329, size: 16, offset: 288)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3468, file: !3469, line: 443, baseType: !329, size: 16, offset: 304)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3468, file: !3469, line: 447, baseType: !256, size: 64, offset: 320)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3468, file: !3469, line: 448, baseType: !256, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3468, file: !3469, line: 459, baseType: !3497, size: 256, offset: 448)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3498, size: 256, elements: !987)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3469, line: 428, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3468, file: !3469, line: 461, baseType: !256, size: 64, offset: 704)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3468, file: !3469, line: 463, baseType: !256, size: 64, offset: 768)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3468, file: !3469, line: 465, baseType: !256, size: 64, offset: 832)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3468, file: !3469, line: 466, baseType: !256, size: 64, offset: 896)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3468, file: !3469, line: 467, baseType: !256, size: 64, offset: 960)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3468, file: !3469, line: 473, baseType: !3506, size: 64, offset: 1024)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3469, line: 10, flags: DIFlagFwdDecl)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3468, file: !3469, line: 480, baseType: !256, size: 64, offset: 1088)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3468, file: !3469, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3468, file: !3469, line: 491, baseType: !567, size: 32, offset: 1184)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3468, file: !3469, line: 501, baseType: !3512, size: 33792, offset: 1536)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3513, line: 448, size: 33792, elements: !3514)
!3513 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3514 = !{!3515, !3516, !3517, !3679, !3680, !3686, !3687}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3512, file: !3513, line: 461, baseType: !7, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3512, file: !3513, line: 468, baseType: !256, size: 64, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3512, file: !3513, line: 476, baseType: !3518, size: 64, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3513, line: 356, size: 33280, align: 512, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3519, file: !3513, line: 358, baseType: !7, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3519, file: !3513, line: 361, baseType: !7, size: 32, offset: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3519, file: !3513, line: 364, baseType: !571, size: 64, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3519, file: !3513, line: 367, baseType: !571, size: 64, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3519, file: !3513, line: 370, baseType: !571, size: 64, offset: 192)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3519, file: !3513, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3519, file: !3513, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3519, file: !3513, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3519, file: !3513, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3519, file: !3513, line: 397, baseType: !3531, size: 32768, offset: 512)
!3531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3513, line: 348, size: 32768, elements: !3532)
!3532 = !{!3533, !3548, !3585, !3662, !3675}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3531, file: !3513, line: 349, baseType: !3534, size: 896)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3513, line: 12, size: 896, elements: !3535)
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3547}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3534, file: !3513, line: 13, baseType: !567, size: 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3534, file: !3513, line: 14, baseType: !567, size: 32, offset: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3534, file: !3513, line: 15, baseType: !567, size: 32, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3534, file: !3513, line: 16, baseType: !567, size: 32, offset: 96)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3534, file: !3513, line: 17, baseType: !567, size: 32, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3534, file: !3513, line: 18, baseType: !567, size: 32, offset: 160)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3534, file: !3513, line: 19, baseType: !567, size: 32, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3534, file: !3513, line: 22, baseType: !3544, size: 640, offset: 224)
!3544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 640, elements: !3545)
!3545 = !{!3546}
!3546 = !DISubrange(count: 20)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3534, file: !3513, line: 25, baseType: !567, size: 32, offset: 864)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3531, file: !3513, line: 350, baseType: !3549, size: 4096, align: 128)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3513, line: 34, size: 4096, align: 128, elements: !3550)
!3550 = !{!3551, !3552, !3553, !3554, !3555, !3570, !3571, !3572, !3574, !3576, !3580}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3549, file: !3513, line: 35, baseType: !388, size: 16)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3549, file: !3513, line: 36, baseType: !388, size: 16, offset: 16)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3549, file: !3513, line: 37, baseType: !388, size: 16, offset: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3549, file: !3513, line: 38, baseType: !388, size: 16, offset: 48)
!3555 = !DIDerivedType(tag: DW_TAG_member, scope: !3549, file: !3513, line: 39, baseType: !3556, size: 128, offset: 64)
!3556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3549, file: !3513, line: 39, size: 128, elements: !3557)
!3557 = !{!3558, !3563}
!3558 = !DIDerivedType(tag: DW_TAG_member, scope: !3556, file: !3513, line: 40, baseType: !3559, size: 128)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3556, file: !3513, line: 40, size: 128, elements: !3560)
!3560 = !{!3561, !3562}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3559, file: !3513, line: 41, baseType: !571, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3559, file: !3513, line: 42, baseType: !571, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, scope: !3556, file: !3513, line: 44, baseType: !3564, size: 128)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3556, file: !3513, line: 44, size: 128, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3569}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3564, file: !3513, line: 45, baseType: !567, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3564, file: !3513, line: 46, baseType: !567, size: 32, offset: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3564, file: !3513, line: 47, baseType: !567, size: 32, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3564, file: !3513, line: 48, baseType: !567, size: 32, offset: 96)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3549, file: !3513, line: 51, baseType: !567, size: 32, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3549, file: !3513, line: 52, baseType: !567, size: 32, offset: 224)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3549, file: !3513, line: 55, baseType: !3573, size: 1024, offset: 256)
!3573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 1024, elements: !580)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3549, file: !3513, line: 58, baseType: !3575, size: 2048, offset: 1280)
!3575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 2048, elements: !424)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3549, file: !3513, line: 60, baseType: !3577, size: 384, offset: 3328)
!3577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 384, elements: !3578)
!3578 = !{!3579}
!3579 = !DISubrange(count: 12)
!3580 = !DIDerivedType(tag: DW_TAG_member, scope: !3549, file: !3513, line: 62, baseType: !3581, size: 384, offset: 3712)
!3581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3549, file: !3513, line: 62, size: 384, elements: !3582)
!3582 = !{!3583, !3584}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3581, file: !3513, line: 63, baseType: !3577, size: 384)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3581, file: !3513, line: 64, baseType: !3577, size: 384)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3531, file: !3513, line: 351, baseType: !3586, size: 1088)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3513, line: 79, size: 1088, elements: !3587)
!3587 = !{!3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3661}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3586, file: !3513, line: 80, baseType: !567, size: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3586, file: !3513, line: 81, baseType: !567, size: 32, offset: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3586, file: !3513, line: 82, baseType: !567, size: 32, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3586, file: !3513, line: 83, baseType: !567, size: 32, offset: 96)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3586, file: !3513, line: 84, baseType: !567, size: 32, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3586, file: !3513, line: 85, baseType: !567, size: 32, offset: 160)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3586, file: !3513, line: 86, baseType: !567, size: 32, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3586, file: !3513, line: 88, baseType: !3544, size: 640, offset: 224)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3586, file: !3513, line: 89, baseType: !378, size: 8, offset: 864)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3586, file: !3513, line: 90, baseType: !378, size: 8, offset: 872)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3586, file: !3513, line: 91, baseType: !378, size: 8, offset: 880)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3586, file: !3513, line: 92, baseType: !378, size: 8, offset: 888)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3586, file: !3513, line: 93, baseType: !378, size: 8, offset: 896)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3586, file: !3513, line: 94, baseType: !378, size: 8, offset: 904)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3586, file: !3513, line: 95, baseType: !3603, size: 64, offset: 960)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3605, line: 11, size: 128, elements: !3606)
!3605 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3606 = !{!3607, !3608}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3604, file: !3605, line: 12, baseType: !455, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3604, file: !3605, line: 13, baseType: !3609, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3611, line: 103, size: 1344, elements: !3612)
!3611 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3612 = !{!3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3641, !3642, !3643}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3610, file: !3611, line: 109, baseType: !256, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3610, file: !3611, line: 110, baseType: !256, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3610, file: !3611, line: 111, baseType: !256, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3610, file: !3611, line: 112, baseType: !256, size: 64, offset: 192)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3610, file: !3611, line: 113, baseType: !256, size: 64, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3610, file: !3611, line: 114, baseType: !256, size: 64, offset: 320)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3610, file: !3611, line: 117, baseType: !256, size: 64, offset: 384)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3610, file: !3611, line: 118, baseType: !256, size: 64, offset: 448)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3610, file: !3611, line: 119, baseType: !256, size: 64, offset: 512)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3610, file: !3611, line: 120, baseType: !256, size: 64, offset: 576)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3610, file: !3611, line: 121, baseType: !256, size: 64, offset: 640)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3610, file: !3611, line: 122, baseType: !256, size: 64, offset: 704)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3610, file: !3611, line: 123, baseType: !256, size: 64, offset: 768)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3610, file: !3611, line: 124, baseType: !256, size: 64, offset: 832)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3610, file: !3611, line: 125, baseType: !256, size: 64, offset: 896)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3610, file: !3611, line: 139, baseType: !256, size: 64, offset: 960)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3610, file: !3611, line: 142, baseType: !256, size: 64, offset: 1024)
!3630 = !DIDerivedType(tag: DW_TAG_member, scope: !3610, file: !3611, line: 144, baseType: !3631, size: 64, offset: 1088)
!3631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3610, file: !3611, line: 144, size: 64, elements: !3632)
!3632 = !{!3633, !3634, !3635}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3631, file: !3611, line: 146, baseType: !388, size: 16)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3631, file: !3611, line: 148, baseType: !571, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3631, file: !3611, line: 150, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3611, line: 59, size: 64, elements: !3637)
!3637 = !{!3638, !3639, !3640}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3636, file: !3611, line: 61, baseType: !571, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3636, file: !3611, line: 63, baseType: !571, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3636, file: !3611, line: 65, baseType: !571, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3610, file: !3611, line: 153, baseType: !256, size: 64, offset: 1152)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3610, file: !3611, line: 154, baseType: !256, size: 64, offset: 1216)
!3643 = !DIDerivedType(tag: DW_TAG_member, scope: !3610, file: !3611, line: 156, baseType: !3644, size: 64, offset: 1280)
!3644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3610, file: !3611, line: 156, size: 64, elements: !3645)
!3645 = !{!3646, !3647, !3648}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3644, file: !3611, line: 158, baseType: !388, size: 16)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3644, file: !3611, line: 160, baseType: !571, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3644, file: !3611, line: 162, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3611, line: 69, size: 64, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3649, file: !3611, line: 71, baseType: !571, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3649, file: !3611, line: 73, baseType: !571, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3649, file: !3611, line: 75, baseType: !571, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3649, file: !3611, line: 77, baseType: !571, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3649, file: !3611, line: 80, baseType: !571, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3649, file: !3611, line: 83, baseType: !571, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3649, file: !3611, line: 86, baseType: !571, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3649, file: !3611, line: 88, baseType: !571, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3649, file: !3611, line: 93, baseType: !571, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3649, file: !3611, line: 100, baseType: !571, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3586, file: !3513, line: 96, baseType: !567, size: 32, offset: 1024)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3531, file: !3513, line: 352, baseType: !3663, size: 4608, align: 512)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3513, line: 333, size: 4608, align: 512, elements: !3664)
!3664 = !{!3665, !3666, !3673}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3663, file: !3513, line: 334, baseType: !3549, size: 4096, align: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3663, file: !3513, line: 335, baseType: !3667, size: 512, offset: 4096)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3513, line: 312, size: 512, elements: !3668)
!3668 = !{!3669, !3670, !3671}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3667, file: !3513, line: 313, baseType: !571, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3667, file: !3513, line: 314, baseType: !571, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3667, file: !3513, line: 315, baseType: !3672, size: 384, offset: 128)
!3672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 384, elements: !1400)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3663, file: !3513, line: 336, baseType: !3674, offset: 4608)
!3674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, elements: !1307)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3531, file: !3513, line: 353, baseType: !3676, size: 32768)
!3676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 32768, elements: !3677)
!3677 = !{!3678}
!3678 = !DISubrange(count: 4096)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3512, file: !3513, line: 484, baseType: !3518, size: 64, offset: 192)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3512, file: !3513, line: 491, baseType: !3681, size: 128, offset: 256)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3513, line: 404, size: 128, elements: !3682)
!3682 = !{!3683, !3684, !3685}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3681, file: !3513, line: 424, baseType: !571, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3681, file: !3513, line: 432, baseType: !7, size: 32, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3681, file: !3513, line: 440, baseType: !7, size: 32, offset: 96)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3512, file: !3513, line: 498, baseType: !3681, size: 128, offset: 384)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3512, file: !3513, line: 508, baseType: !3519, size: 33280, align: 512, offset: 512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2482, file: !2483, line: 16, baseType: !1292, size: 192, offset: 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2482, file: !2483, line: 17, baseType: !283, size: 32, offset: 704)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !650, file: !14, line: 1240, baseType: !251, size: 64, offset: 6912)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !650, file: !14, line: 1243, baseType: !567, size: 32, offset: 6976)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !650, file: !14, line: 1245, baseType: !1371, size: 64, offset: 7040)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !650, file: !14, line: 1246, baseType: !1371, size: 64, offset: 7104)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !650, file: !14, line: 1248, baseType: !568, size: 32, offset: 7168)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !650, file: !14, line: 1249, baseType: !3696, size: 64, offset: 7232)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !650, file: !14, line: 1252, baseType: !3699, size: 256, offset: 7296)
!3699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 256, elements: !580)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !650, file: !14, line: 1253, baseType: !3701, size: 128, offset: 7552)
!3701 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3702, line: 21, baseType: !3703)
!3702 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3702, line: 19, size: 128, elements: !3704)
!3704 = !{!3705}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3703, file: !3702, line: 20, baseType: !3706, size: 128)
!3706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 128, elements: !2922)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !650, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !650, file: !14, line: 1261, baseType: !759, size: 256, offset: 7744)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !650, file: !14, line: 1267, baseType: !314, size: 64, offset: 8000)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !650, file: !14, line: 1269, baseType: !596, size: 64, offset: 8064)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !650, file: !14, line: 1271, baseType: !3712, size: 448, offset: 8128)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2262, line: 63, size: 448, elements: !3713)
!3713 = !{!3714, !3719, !3720, !3721, !3722, !3723, !3724}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3712, file: !2262, line: 64, baseType: !3715, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!256, !3718, !2260}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3712, file: !2262, line: 66, baseType: !3715, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3712, file: !2262, line: 69, baseType: !455, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3712, file: !2262, line: 70, baseType: !109, size: 32, offset: 192)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3712, file: !2262, line: 71, baseType: !7, size: 32, offset: 224)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3712, file: !2262, line: 74, baseType: !290, size: 128, offset: 256)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3712, file: !2262, line: 85, baseType: !3725, size: 64, offset: 384)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !650, file: !14, line: 1274, baseType: !763, size: 64, offset: 8576)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !650, file: !14, line: 1280, baseType: !763, size: 64, offset: 8640)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !650, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !650, file: !14, line: 1286, baseType: !2194, size: 32, offset: 8736)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !650, file: !14, line: 1289, baseType: !1079, size: 64, offset: 8768)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !650, file: !14, line: 1290, baseType: !1127, size: 64, offset: 8832)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !650, file: !14, line: 1297, baseType: !1494, size: 64, offset: 8896)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !650, file: !14, line: 1304, baseType: !3734, size: 64, offset: 8960)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3735, line: 49, size: 64, elements: !3736)
!3735 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3736 = !{!3737}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3734, file: !3735, line: 50, baseType: !3738, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3735, line: 41, size: 512, align: 512, elements: !3740)
!3740 = !{!3741, !3742, !3747}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3739, file: !3735, line: 43, baseType: !354, size: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3739, file: !3735, line: 45, baseType: !3743, size: 192, offset: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3735, line: 29, size: 192, elements: !3744)
!3744 = !{!3745, !3746}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3743, file: !3735, line: 30, baseType: !290, size: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3743, file: !3735, line: 32, baseType: !455, size: 64, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3739, file: !3735, line: 46, baseType: !455, size: 64, offset: 256)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !650, file: !14, line: 1305, baseType: !3734, size: 64, offset: 9024)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !650, file: !14, line: 1306, baseType: !977, size: 128, align: 64, offset: 9088)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !650, file: !14, line: 1307, baseType: !1017, size: 256, offset: 9216)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !650, file: !14, line: 1309, baseType: !759, size: 256, offset: 9472)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !650, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !650, file: !14, line: 1317, baseType: !354, size: 32, align: 512, offset: 10240)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !650, file: !14, line: 1318, baseType: !290, size: 128, offset: 10304)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !650, file: !14, line: 1320, baseType: !354, size: 32, offset: 10432)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !650, file: !14, line: 1321, baseType: !290, size: 128, offset: 10496)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !644, file: !645, line: 73, baseType: !109, size: 32, offset: 128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !644, file: !645, line: 74, baseType: !3759, size: 64, offset: 192)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1331, line: 42, flags: DIFlagFwdDecl)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !598, file: !535, line: 141, baseType: !3763, size: 64, offset: 704)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!109, !2322, !304}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !598, file: !535, line: 142, baseType: !3767, size: 64, offset: 768)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!533, !533, !3770}
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !534, file: !535, line: 96, baseType: !649, size: 64, offset: 832)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !534, file: !535, line: 97, baseType: !256, size: 64, offset: 896)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !534, file: !535, line: 98, baseType: !251, size: 64, offset: 960)
!3775 = !DIDerivedType(tag: DW_TAG_member, scope: !534, file: !535, line: 100, baseType: !3776, size: 128, offset: 1024)
!3776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !534, file: !535, line: 100, size: 128, elements: !3777)
!3777 = !{!3778, !3779}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3776, file: !535, line: 101, baseType: !290, size: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3776, file: !535, line: 102, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !534, file: !535, line: 104, baseType: !290, size: 128, offset: 1152)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !534, file: !535, line: 105, baseType: !290, size: 128, offset: 1280)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !534, file: !535, line: 113, baseType: !3784, size: 128, offset: 1408)
!3784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !534, file: !535, line: 109, size: 128, elements: !3785)
!3785 = !{!3786, !3787, !3788}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3784, file: !535, line: 110, baseType: !1003, size: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3784, file: !535, line: 111, baseType: !549, size: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3784, file: !535, line: 112, baseType: !977, size: 128, align: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !527, file: !14, line: 1968, baseType: !3790, size: 64, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!314, !533, !498, !3793}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3795, line: 10, size: 128, elements: !3796)
!3795 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3796 = !{!3797, !3798}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3794, file: !3795, line: 11, baseType: !802, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3794, file: !3795, line: 12, baseType: !251, size: 64, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !527, file: !14, line: 1969, baseType: !3800, size: 64, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!109, !3759, !498, !109}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !527, file: !14, line: 1970, baseType: !3804, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!521, !498, !109, !304}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !527, file: !14, line: 1972, baseType: !3808, size: 64, offset: 256)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!109, !533, !419, !109}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !527, file: !14, line: 1974, baseType: !3812, size: 64, offset: 320)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!109, !3759, !498, !533, !461, !304}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !527, file: !14, line: 1976, baseType: !3816, size: 64, offset: 384)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!109, !533, !498, !533}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !527, file: !14, line: 1977, baseType: !3820, size: 64, offset: 448)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!109, !498, !533}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !527, file: !14, line: 1978, baseType: !3824, size: 64, offset: 512)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!109, !3759, !498, !533, !314}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !527, file: !14, line: 1980, baseType: !3828, size: 64, offset: 576)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!109, !3759, !498, !533, !461}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !527, file: !14, line: 1982, baseType: !3820, size: 64, offset: 640)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !527, file: !14, line: 1983, baseType: !3833, size: 64, offset: 704)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!109, !3759, !498, !533, !461, !654}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !527, file: !14, line: 1985, baseType: !3837, size: 64, offset: 768)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!109, !3759, !498, !533, !498, !533, !7}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !527, file: !14, line: 1987, baseType: !3841, size: 64, offset: 832)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!109, !3759, !533, !3844}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3846)
!3846 = !{!3847, !3848, !3849, !3859, !3868, !3869, !3874, !3875, !3876}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3845, file: !14, line: 227, baseType: !7, size: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3845, file: !14, line: 228, baseType: !461, size: 16, offset: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, scope: !3845, file: !14, line: 241, baseType: !3850, size: 32, offset: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3845, file: !14, line: 241, size: 32, elements: !3851)
!3851 = !{!3852, !3853}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3850, file: !14, line: 242, baseType: !504, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3850, file: !14, line: 243, baseType: !3854, size: 32)
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3855, line: 16, baseType: !3856)
!3855 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3855, line: 14, size: 32, elements: !3857)
!3857 = !{!3858}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3856, file: !3855, line: 15, baseType: !509, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, scope: !3845, file: !14, line: 245, baseType: !3860, size: 32, offset: 96)
!3860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3845, file: !14, line: 245, size: 32, elements: !3861)
!3861 = !{!3862, !3863}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3860, file: !14, line: 246, baseType: !513, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3860, file: !14, line: 247, baseType: !3864, size: 32)
!3864 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3855, line: 20, baseType: !3865)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3855, line: 18, size: 32, elements: !3866)
!3866 = !{!3867}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3865, file: !3855, line: 19, baseType: !517, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3845, file: !14, line: 249, baseType: !659, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3845, file: !14, line: 250, baseType: !3870, size: 128, offset: 192)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1372, line: 13, size: 128, elements: !3871)
!3871 = !{!3872, !3873}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3870, file: !1372, line: 14, baseType: !1371, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3870, file: !1372, line: 15, baseType: !455, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3845, file: !14, line: 251, baseType: !3870, size: 128, offset: 320)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3845, file: !14, line: 252, baseType: !3870, size: 128, offset: 448)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3845, file: !14, line: 259, baseType: !1539, size: 64, offset: 576)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !527, file: !14, line: 1988, baseType: !3878, size: 64, offset: 896)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!109, !3759, !2322, !3881, !567, !7}
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3883, line: 22, size: 1280, elements: !3884)
!3883 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3884 = !{!3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3882, file: !3883, line: 23, baseType: !567, size: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3882, file: !3883, line: 24, baseType: !461, size: 16, offset: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3882, file: !3883, line: 25, baseType: !7, size: 32, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3882, file: !3883, line: 26, baseType: !1379, size: 32, offset: 96)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3882, file: !3883, line: 27, baseType: !571, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3882, file: !3883, line: 28, baseType: !571, size: 64, offset: 192)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3882, file: !3883, line: 41, baseType: !571, size: 64, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3882, file: !3883, line: 42, baseType: !654, size: 32, offset: 320)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3882, file: !3883, line: 43, baseType: !654, size: 32, offset: 352)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3882, file: !3883, line: 44, baseType: !504, size: 32, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3882, file: !3883, line: 45, baseType: !513, size: 32, offset: 416)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3882, file: !3883, line: 46, baseType: !659, size: 64, offset: 448)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3882, file: !3883, line: 47, baseType: !3870, size: 128, offset: 512)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3882, file: !3883, line: 48, baseType: !3870, size: 128, offset: 640)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3882, file: !3883, line: 49, baseType: !3870, size: 128, offset: 768)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3882, file: !3883, line: 50, baseType: !3870, size: 128, offset: 896)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3882, file: !3883, line: 51, baseType: !571, size: 64, offset: 1024)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3882, file: !3883, line: 52, baseType: !571, size: 64, offset: 1088)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3882, file: !3883, line: 53, baseType: !567, size: 32, offset: 1152)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3882, file: !3883, line: 54, baseType: !567, size: 32, offset: 1184)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3882, file: !3883, line: 55, baseType: !571, size: 64, offset: 1216)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !527, file: !14, line: 1990, baseType: !3907, size: 64, offset: 960)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!451, !533, !419, !466}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !527, file: !14, line: 1991, baseType: !3911, size: 64, offset: 1024)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!109, !498, !3914, !571, !571}
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !527, file: !14, line: 1993, baseType: !3917, size: 64, offset: 1088)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!109, !498, !109}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !527, file: !14, line: 1994, baseType: !3921, size: 64, offset: 1152)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!109, !498, !533, !1539, !7, !461}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !527, file: !14, line: 1997, baseType: !3925, size: 64, offset: 1216)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!109, !3759, !498, !1539, !461}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !527, file: !14, line: 1999, baseType: !3929, size: 64, offset: 1280)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!521, !3759, !533, !109}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !527, file: !14, line: 2001, baseType: !3933, size: 64, offset: 1344)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!109, !3759, !533, !521, !109}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !527, file: !14, line: 2003, baseType: !3937, size: 64, offset: 1408)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!109, !3759, !533, !3940}
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !527, file: !14, line: 2005, baseType: !3943, size: 64, offset: 1472)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!109, !533, !3940}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !527, file: !14, line: 2006, baseType: !3947, size: 64, offset: 1536)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!3950, !498}
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3952)
!3952 = !{!3953, !3954}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3951, file: !14, line: 3193, baseType: !1619, size: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3951, file: !14, line: 3194, baseType: !567, size: 32, offset: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !499, file: !14, line: 655, baseType: !649, size: 64, offset: 448)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !499, file: !14, line: 656, baseType: !494, size: 64, offset: 512)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !499, file: !14, line: 659, baseType: !251, size: 64, offset: 576)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !499, file: !14, line: 663, baseType: !256, size: 64, offset: 640)
!3959 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !14, line: 671, baseType: !3960, size: 32, offset: 704)
!3960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !14, line: 671, size: 32, elements: !3961)
!3961 = !{!3962, !3964}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3960, file: !14, line: 672, baseType: !3963, size: 32)
!3963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3960, file: !14, line: 673, baseType: !7, size: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !499, file: !14, line: 675, baseType: !654, size: 32, offset: 736)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !499, file: !14, line: 676, baseType: !659, size: 64, offset: 768)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !499, file: !14, line: 677, baseType: !3870, size: 128, offset: 832)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !499, file: !14, line: 678, baseType: !3870, size: 128, offset: 960)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !499, file: !14, line: 679, baseType: !3870, size: 128, offset: 1088)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !499, file: !14, line: 680, baseType: !354, size: 32, offset: 1216)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !499, file: !14, line: 681, baseType: !329, size: 16, offset: 1248)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !499, file: !14, line: 682, baseType: !378, size: 8, offset: 1264)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !499, file: !14, line: 683, baseType: !378, size: 8, offset: 1272)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !499, file: !14, line: 684, baseType: !2395, size: 64, offset: 1280)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !499, file: !14, line: 691, baseType: !256, size: 64, offset: 1344)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !499, file: !14, line: 692, baseType: !1355, size: 320, offset: 1408)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !499, file: !14, line: 694, baseType: !256, size: 64, offset: 1728)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !499, file: !14, line: 695, baseType: !256, size: 64, offset: 1792)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !499, file: !14, line: 697, baseType: !1003, size: 128, offset: 1856)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !499, file: !14, line: 698, baseType: !290, size: 128, offset: 1984)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !499, file: !14, line: 707, baseType: !290, size: 128, offset: 2112)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !499, file: !14, line: 708, baseType: !290, size: 128, offset: 2240)
!3983 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !14, line: 709, baseType: !3984, size: 128, offset: 2368)
!3984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !14, line: 709, size: 128, elements: !3985)
!3985 = !{!3986, !3987}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3984, file: !14, line: 710, baseType: !1127, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3984, file: !14, line: 711, baseType: !977, size: 128, align: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !499, file: !14, line: 713, baseType: !765, size: 64, offset: 2496)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !499, file: !14, line: 714, baseType: !765, size: 64, offset: 2560)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !499, file: !14, line: 715, baseType: !283, size: 32, offset: 2624)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !499, file: !14, line: 716, baseType: !283, size: 32, offset: 2656)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !499, file: !14, line: 717, baseType: !283, size: 32, offset: 2688)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !499, file: !14, line: 719, baseType: !283, size: 32, offset: 2720)
!3994 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !14, line: 721, baseType: !3995, size: 64, offset: 2752)
!3995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !14, line: 721, size: 64, elements: !3996)
!3996 = !{!3997, !3998}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3995, file: !14, line: 722, baseType: !1530, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3995, file: !14, line: 723, baseType: !1150, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !499, file: !14, line: 725, baseType: !4000, size: 64, offset: 2816)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !499, file: !14, line: 726, baseType: !495, size: 1536, align: 64, offset: 2880)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !499, file: !14, line: 727, baseType: !290, size: 128, offset: 4416)
!4004 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !14, line: 728, baseType: !4005, size: 64, offset: 4544)
!4005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !14, line: 728, size: 64, elements: !4006)
!4006 = !{!4007, !4008, !4011, !4012}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4005, file: !14, line: 729, baseType: !2144, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4005, file: !14, line: 730, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4005, file: !14, line: 731, baseType: !419, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4005, file: !14, line: 732, baseType: !7, size: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !499, file: !14, line: 735, baseType: !568, size: 32, offset: 4608)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !499, file: !14, line: 738, baseType: !568, size: 32, offset: 4640)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !499, file: !14, line: 739, baseType: !3696, size: 64, offset: 4672)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !499, file: !14, line: 750, baseType: !251, size: 64, offset: 4736)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !495, file: !14, line: 474, baseType: !1619, size: 128, offset: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !495, file: !14, line: 475, baseType: !1355, size: 320, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !495, file: !14, line: 476, baseType: !258, size: 32, offset: 512)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !495, file: !14, line: 477, baseType: !283, size: 32, offset: 544)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !495, file: !14, line: 482, baseType: !2669, size: 128, offset: 576)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !495, file: !14, line: 483, baseType: !256, size: 64, offset: 704)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !495, file: !14, line: 484, baseType: !256, size: 64, offset: 768)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !495, file: !14, line: 485, baseType: !4025, size: 64, offset: 832)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4027)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4028)
!4028 = !{!4029, !4033, !4103, !4107, !4111, !4117, !4121, !4125, !4130, !4134, !4138, !4142, !4143, !4147, !4151, !4155, !4160, !4164, !4171, !4172}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4027, file: !14, line: 405, baseType: !4030, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!109, !1930, !1162}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4027, file: !14, line: 406, baseType: !4034, size: 64, offset: 64)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!109, !1539, !4037}
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !4039)
!4039 = !{!4040, !4070, !4084}
!4040 = !DIDerivedType(tag: DW_TAG_member, scope: !4038, file: !27, line: 295, baseType: !4041, size: 512)
!4041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4038, file: !27, line: 295, size: 512, elements: !4042)
!4042 = !{!4043, !4069}
!4043 = !DIDerivedType(tag: DW_TAG_member, scope: !4041, file: !27, line: 296, baseType: !4044, size: 448)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4041, file: !27, line: 296, size: 448, elements: !4045)
!4045 = !{!4046, !4047, !4056, !4057, !4058, !4067, !4068}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4044, file: !27, line: 298, baseType: !256, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, scope: !4044, file: !27, line: 299, baseType: !4048, size: 128, offset: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4044, file: !27, line: 299, size: 128, elements: !4049)
!4049 = !{!4050, !4051}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4048, file: !27, line: 300, baseType: !290, size: 128)
!4051 = !DIDerivedType(tag: DW_TAG_member, scope: !4048, file: !27, line: 302, baseType: !4052, size: 128)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4048, file: !27, line: 302, size: 128, elements: !4053)
!4053 = !{!4054, !4055}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4052, file: !27, line: 303, baseType: !251, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4052, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4044, file: !27, line: 310, baseType: !494, size: 64, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4044, file: !27, line: 311, baseType: !256, size: 64, offset: 256)
!4058 = !DIDerivedType(tag: DW_TAG_member, scope: !4044, file: !27, line: 312, baseType: !4059, size: 64, offset: 320)
!4059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4044, file: !27, line: 312, size: 64, elements: !4060)
!4060 = !{!4061, !4062}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4059, file: !27, line: 313, baseType: !251, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4059, file: !27, line: 314, baseType: !4063, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !4064)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !4065)
!4065 = !{!4066}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4064, file: !27, line: 256, baseType: !256, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4044, file: !27, line: 316, baseType: !283, size: 32, offset: 384)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4044, file: !27, line: 317, baseType: !283, size: 32, offset: 416)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4041, file: !27, line: 323, baseType: !1931, size: 512, align: 128)
!4070 = !DIDerivedType(tag: DW_TAG_member, scope: !4038, file: !27, line: 325, baseType: !4071, size: 512, offset: 512)
!4071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4038, file: !27, line: 325, size: 512, elements: !4072)
!4072 = !{!4073, !4083}
!4073 = !DIDerivedType(tag: DW_TAG_member, scope: !4071, file: !27, line: 326, baseType: !4074, size: 320)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4071, file: !27, line: 326, size: 320, elements: !4075)
!4075 = !{!4076, !4077, !4078, !4079, !4080, !4081, !4082}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4074, file: !27, line: 327, baseType: !256, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4074, file: !27, line: 328, baseType: !256, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4074, file: !27, line: 329, baseType: !256, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4074, file: !27, line: 331, baseType: !283, size: 32, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4074, file: !27, line: 332, baseType: !283, size: 32, offset: 224)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4074, file: !27, line: 333, baseType: !283, size: 32, offset: 256)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4074, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4071, file: !27, line: 339, baseType: !1931, size: 512, align: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, scope: !4038, file: !27, line: 341, baseType: !4085, size: 512, offset: 1024)
!4085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4038, file: !27, line: 341, size: 512, elements: !4086)
!4086 = !{!4087, !4096, !4102}
!4087 = !DIDerivedType(tag: DW_TAG_member, scope: !4085, file: !27, line: 342, baseType: !4088, size: 384)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4085, file: !27, line: 342, size: 384, elements: !4089)
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4088, file: !27, line: 343, baseType: !256, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4088, file: !27, line: 344, baseType: !256, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4088, file: !27, line: 346, baseType: !251, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4088, file: !27, line: 347, baseType: !251, size: 64, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4088, file: !27, line: 348, baseType: !251, size: 64, offset: 256)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4088, file: !27, line: 349, baseType: !251, size: 64, offset: 320)
!4096 = !DIDerivedType(tag: DW_TAG_member, scope: !4085, file: !27, line: 352, baseType: !4097, size: 256)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4085, file: !27, line: 352, size: 256, elements: !4098)
!4098 = !{!4099, !4100, !4101}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4097, file: !27, line: 353, baseType: !256, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4097, file: !27, line: 354, baseType: !256, size: 64, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4097, file: !27, line: 356, baseType: !290, size: 128, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4085, file: !27, line: 359, baseType: !1931, size: 512, align: 128)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4027, file: !14, line: 409, baseType: !4104, size: 64, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!109, !494, !1162}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4027, file: !14, line: 412, baseType: !4108, size: 64, offset: 192)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!304, !494, !4037}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4027, file: !14, line: 414, baseType: !4112, size: 64, offset: 256)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{null, !4115}
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4027, file: !14, line: 416, baseType: !4118, size: 64, offset: 320)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!109, !1539, !494, !659, !7, !3445, !2159}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4027, file: !14, line: 419, baseType: !4122, size: 64, offset: 384)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!109, !1539, !494, !659, !7, !7, !1930, !251}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4027, file: !14, line: 424, baseType: !4126, size: 64, offset: 448)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!4129, !494, !4129}
!4129 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !259, line: 131, baseType: !571)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4027, file: !14, line: 425, baseType: !4131, size: 64, offset: 512)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{null, !4037, !466, !466}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4027, file: !14, line: 426, baseType: !4135, size: 64, offset: 576)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!304, !4037, !258}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4027, file: !14, line: 427, baseType: !4139, size: 64, offset: 640)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{null, !4037}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4027, file: !14, line: 428, baseType: !1549, size: 64, offset: 704)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4027, file: !14, line: 433, baseType: !4144, size: 64, offset: 768)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!109, !494, !4037, !4037, !74}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4027, file: !14, line: 435, baseType: !4148, size: 64, offset: 832)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!109, !4037}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4027, file: !14, line: 436, baseType: !4152, size: 64, offset: 896)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!304, !4037, !466, !466}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4027, file: !14, line: 438, baseType: !4156, size: 64, offset: 960)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{null, !4037, !4159, !4159}
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4027, file: !14, line: 439, baseType: !4161, size: 64, offset: 1024)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!109, !494, !1930}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4027, file: !14, line: 442, baseType: !4165, size: 64, offset: 1088)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!109, !4168, !1539, !4170}
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4027, file: !14, line: 444, baseType: !2151, size: 64, offset: 1152)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4027, file: !14, line: 445, baseType: !4173, size: 64, offset: 1216)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!109, !1552, !1574}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !14, line: 486, baseType: !256, size: 64, offset: 896)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !495, file: !14, line: 487, baseType: !1355, size: 320, offset: 960)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !495, file: !14, line: 488, baseType: !2194, size: 32, offset: 1280)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !495, file: !14, line: 489, baseType: !354, size: 32, offset: 1312)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !495, file: !14, line: 490, baseType: !290, size: 128, offset: 1344)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !495, file: !14, line: 491, baseType: !251, size: 64, offset: 1472)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !485, file: !445, line: 180, baseType: !4183, size: 64, offset: 320)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!451, !1539, !347, !484, !419, !659, !466}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !485, file: !445, line: 182, baseType: !4183, size: 64, offset: 384)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !485, file: !445, line: 184, baseType: !4188, size: 64, offset: 448)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!109, !1539, !347, !484, !1669}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !473, file: !445, line: 90, baseType: !4192, size: 64, offset: 192)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !473, file: !445, line: 91, baseType: !4194, size: 64, offset: 256)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !435, file: !342, line: 120, baseType: !4196, size: 64, offset: 192)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!4199, !402}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4201)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4202)
!4202 = !{!4203, !4204, !4208, !4212, !4218, !4222}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4201, file: !82, line: 40, baseType: !81, size: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4201, file: !82, line: 41, baseType: !4205, size: 64, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!304}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4201, file: !82, line: 42, baseType: !4209, size: 64, offset: 128)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!251}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4201, file: !82, line: 43, baseType: !4213, size: 64, offset: 192)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!1797, !4216}
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4201, file: !82, line: 44, baseType: !4219, size: 64, offset: 256)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!1797}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4201, file: !82, line: 45, baseType: !802, size: 64, offset: 320)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !435, file: !342, line: 121, baseType: !4224, size: 64, offset: 256)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!1797, !402}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !435, file: !342, line: 122, baseType: !4228, size: 64, offset: 320)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{null, !402, !4231, !4232}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !341, file: !342, line: 70, baseType: !4234, size: 64, offset: 384)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !674, line: 190, size: 1152, elements: !4236)
!4236 = !{!4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4316, !4317, !4318, !4319, !4320, !4323}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4235, file: !674, line: 191, baseType: !283, size: 32)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4235, file: !674, line: 192, baseType: !283, size: 32, offset: 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4235, file: !674, line: 202, baseType: !4234, size: 64, offset: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4235, file: !674, line: 203, baseType: !314, size: 64, offset: 128)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4235, file: !674, line: 205, baseType: !869, size: 192, align: 64, offset: 192)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4235, file: !674, line: 207, baseType: !1797, size: 64, offset: 384)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4235, file: !674, line: 208, baseType: !7, size: 32, offset: 448)
!4244 = !DIDerivedType(tag: DW_TAG_member, scope: !4235, file: !674, line: 209, baseType: !4245, size: 256, offset: 512)
!4245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4235, file: !674, line: 209, size: 256, elements: !4246)
!4246 = !{!4247, !4256, !4260}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4245, file: !674, line: 210, baseType: !4248, size: 256)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !674, line: 153, size: 256, elements: !4249)
!4249 = !{!4250, !4251, !4252, !4255}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4248, file: !674, line: 154, baseType: !256, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4248, file: !674, line: 156, baseType: !2672, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4248, file: !674, line: 162, baseType: !4253, size: 64, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !674, line: 162, flags: DIFlagFwdDecl)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4248, file: !674, line: 167, baseType: !256, size: 64, offset: 192)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4245, file: !674, line: 211, baseType: !4257, size: 64)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !674, line: 170, size: 64, elements: !4258)
!4258 = !{!4259}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4257, file: !674, line: 171, baseType: !4234, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4245, file: !674, line: 212, baseType: !4261, size: 256)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !674, line: 174, size: 256, elements: !4262)
!4262 = !{!4263, !4311, !4314, !4315}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4261, file: !674, line: 175, baseType: !4264, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4266)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !674, line: 271, size: 768, elements: !4267)
!4267 = !{!4268, !4288, !4292, !4293, !4294, !4295, !4296, !4300, !4301, !4302, !4303, !4307}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4266, file: !674, line: 276, baseType: !4269, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!109, !4272}
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !674, line: 251, size: 1216, elements: !4274)
!4274 = !{!4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4273, file: !674, line: 253, baseType: !4234, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4273, file: !674, line: 254, baseType: !1539, size: 64, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4273, file: !674, line: 255, baseType: !1199, size: 64, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4273, file: !674, line: 256, baseType: !251, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4273, file: !674, line: 259, baseType: !759, size: 256, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4273, file: !674, line: 260, baseType: !759, size: 256, offset: 512)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4273, file: !674, line: 261, baseType: !109, size: 32, offset: 768)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4273, file: !674, line: 262, baseType: !290, size: 128, offset: 832)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4273, file: !674, line: 263, baseType: !419, size: 64, offset: 960)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4273, file: !674, line: 265, baseType: !466, size: 64, offset: 1024)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4273, file: !674, line: 266, baseType: !304, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4273, file: !674, line: 267, baseType: !304, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4273, file: !674, line: 268, baseType: !1866, size: 64, offset: 1152)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4266, file: !674, line: 277, baseType: !4289, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{null, !4272}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4266, file: !674, line: 290, baseType: !1230, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4266, file: !674, line: 292, baseType: !1217, size: 64, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4266, file: !674, line: 293, baseType: !1226, size: 64, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4266, file: !674, line: 294, baseType: !1222, size: 64, offset: 320)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4266, file: !674, line: 296, baseType: !4297, size: 64, offset: 384)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!451, !4272, !419, !466, !659}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4266, file: !674, line: 306, baseType: !466, size: 64, offset: 448)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4266, file: !674, line: 313, baseType: !304, size: 8, offset: 512)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4266, file: !674, line: 314, baseType: !4297, size: 64, offset: 576)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4266, file: !674, line: 317, baseType: !4304, size: 64, offset: 640)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!1656, !4272, !1658}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4266, file: !674, line: 320, baseType: !4308, size: 64, offset: 704)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!109, !4272, !1669}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4261, file: !674, line: 176, baseType: !4312, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !674, line: 35, flags: DIFlagFwdDecl)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4261, file: !674, line: 177, baseType: !659, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4261, file: !674, line: 178, baseType: !4234, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4235, file: !674, line: 215, baseType: !251, size: 64, offset: 768)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4235, file: !674, line: 221, baseType: !571, size: 64, offset: 832)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4235, file: !674, line: 223, baseType: !329, size: 16, offset: 896)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4235, file: !674, line: 224, baseType: !461, size: 16, offset: 912)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4235, file: !674, line: 225, baseType: !4321, size: 64, offset: 960)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !674, line: 36, flags: DIFlagFwdDecl)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4235, file: !674, line: 227, baseType: !977, size: 128, align: 64, offset: 1024)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !341, file: !342, line: 71, baseType: !274, size: 32, offset: 448)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !341, file: !342, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !341, file: !342, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !341, file: !342, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !341, file: !342, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !341, file: !342, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !338, file: !94, line: 707, baseType: !337, size: 64, offset: 512)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !338, file: !94, line: 709, baseType: !4332, size: 64, offset: 576)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !338, file: !94, line: 711, baseType: !314, size: 64, offset: 640)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !338, file: !94, line: 712, baseType: !4336, size: 64, offset: 704)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4338)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4339)
!4339 = !{!4340, !4341, !4342, !4348, !4353, !4357}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4338, file: !94, line: 90, baseType: !314, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4338, file: !94, line: 91, baseType: !470, size: 64, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4338, file: !94, line: 92, baseType: !4343, size: 64, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!109, !4346, !414}
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4338, file: !94, line: 93, baseType: !4349, size: 64, offset: 192)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!419, !4346, !4352, !4231, !4232}
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4338, file: !94, line: 95, baseType: !4354, size: 64, offset: 256)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{null, !337}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4338, file: !94, line: 97, baseType: !4358, size: 64, offset: 320)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4360)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4361)
!4361 = !{!4362, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4360, file: !101, line: 287, baseType: !4363, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!109, !337}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4360, file: !101, line: 288, baseType: !4354, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4360, file: !101, line: 289, baseType: !4363, size: 64, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4360, file: !101, line: 290, baseType: !4363, size: 64, offset: 192)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4360, file: !101, line: 291, baseType: !4363, size: 64, offset: 256)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4360, file: !101, line: 292, baseType: !4363, size: 64, offset: 320)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4360, file: !101, line: 293, baseType: !4363, size: 64, offset: 384)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4360, file: !101, line: 294, baseType: !4363, size: 64, offset: 448)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4360, file: !101, line: 295, baseType: !4363, size: 64, offset: 512)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4360, file: !101, line: 296, baseType: !4363, size: 64, offset: 576)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4360, file: !101, line: 297, baseType: !4363, size: 64, offset: 640)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4360, file: !101, line: 298, baseType: !4363, size: 64, offset: 704)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4360, file: !101, line: 299, baseType: !4363, size: 64, offset: 768)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4360, file: !101, line: 300, baseType: !4363, size: 64, offset: 832)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4360, file: !101, line: 301, baseType: !4363, size: 64, offset: 896)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4360, file: !101, line: 302, baseType: !4363, size: 64, offset: 960)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4360, file: !101, line: 303, baseType: !4363, size: 64, offset: 1024)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4360, file: !101, line: 304, baseType: !4363, size: 64, offset: 1088)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4360, file: !101, line: 305, baseType: !4363, size: 64, offset: 1152)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4360, file: !101, line: 306, baseType: !4363, size: 64, offset: 1216)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4360, file: !101, line: 307, baseType: !4363, size: 64, offset: 1280)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4360, file: !101, line: 308, baseType: !4363, size: 64, offset: 1344)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4360, file: !101, line: 309, baseType: !4363, size: 64, offset: 1408)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !338, file: !94, line: 714, baseType: !4389, size: 64, offset: 768)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4391)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4392, line: 80, size: 1344, elements: !4393)
!4392 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4393 = !{!4394, !4395, !4396, !4397, !4398, !4399, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4457}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4391, file: !4392, line: 81, baseType: !314, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4391, file: !4392, line: 82, baseType: !314, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4391, file: !4392, line: 83, baseType: !470, size: 64, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4391, file: !4392, line: 84, baseType: !470, size: 64, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4391, file: !4392, line: 85, baseType: !470, size: 64, offset: 256)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4391, file: !4392, line: 87, baseType: !4400, size: 64, offset: 320)
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!109, !337, !4403}
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4405)
!4405 = !{!4406, !4407, !4408, !4409, !4410, !4411, !4412, !4416, !4420, !4421, !4422, !4423, !4424, !4432, !4433, !4434, !4435, !4436, !4437}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4404, file: !88, line: 97, baseType: !314, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4404, file: !88, line: 98, baseType: !4389, size: 64, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4404, file: !88, line: 100, baseType: !688, size: 64, offset: 128)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4404, file: !88, line: 101, baseType: !314, size: 64, offset: 192)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4404, file: !88, line: 103, baseType: !304, size: 8, offset: 256)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4404, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4404, file: !88, line: 106, baseType: !4413, size: 64, offset: 320)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4415)
!4415 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4404, file: !88, line: 107, baseType: !4417, size: 64, offset: 384)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4419)
!4419 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4404, file: !88, line: 109, baseType: !4363, size: 64, offset: 448)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4404, file: !88, line: 110, baseType: !4354, size: 64, offset: 512)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4404, file: !88, line: 111, baseType: !4363, size: 64, offset: 576)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4404, file: !88, line: 112, baseType: !4354, size: 64, offset: 640)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4404, file: !88, line: 113, baseType: !4425, size: 64, offset: 704)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!109, !337, !4428}
!4428 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4429)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4430)
!4430 = !{!4431}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4429, file: !101, line: 59, baseType: !109, size: 32)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4404, file: !88, line: 114, baseType: !4363, size: 64, offset: 768)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4404, file: !88, line: 115, baseType: !470, size: 64, offset: 832)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4404, file: !88, line: 116, baseType: !470, size: 64, offset: 896)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4404, file: !88, line: 118, baseType: !4358, size: 64, offset: 960)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4404, file: !88, line: 119, baseType: !4354, size: 64, offset: 1024)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4404, file: !88, line: 121, baseType: !4438, size: 64, offset: 1088)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4391, file: !4392, line: 88, baseType: !4343, size: 64, offset: 384)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4391, file: !4392, line: 89, baseType: !4363, size: 64, offset: 448)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4391, file: !4392, line: 90, baseType: !4354, size: 64, offset: 512)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4391, file: !4392, line: 91, baseType: !4354, size: 64, offset: 576)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4391, file: !4392, line: 92, baseType: !4354, size: 64, offset: 640)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4391, file: !4392, line: 94, baseType: !4363, size: 64, offset: 704)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4391, file: !4392, line: 95, baseType: !4363, size: 64, offset: 768)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4391, file: !4392, line: 97, baseType: !4425, size: 64, offset: 832)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4391, file: !4392, line: 98, baseType: !4363, size: 64, offset: 896)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4391, file: !4392, line: 100, baseType: !4363, size: 64, offset: 960)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4391, file: !4392, line: 102, baseType: !4363, size: 64, offset: 1024)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4391, file: !4392, line: 103, baseType: !4354, size: 64, offset: 1088)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4391, file: !4392, line: 105, baseType: !4358, size: 64, offset: 1152)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4391, file: !4392, line: 107, baseType: !4454, size: 64, offset: 1216)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4456)
!4456 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4392, line: 107, flags: DIFlagFwdDecl)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4391, file: !4392, line: 109, baseType: !304, size: 8, offset: 1280)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !338, file: !94, line: 715, baseType: !4403, size: 64, offset: 832)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !338, file: !94, line: 717, baseType: !251, size: 64, offset: 896)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !338, file: !94, line: 719, baseType: !251, size: 64, offset: 960)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !338, file: !94, line: 721, baseType: !759, size: 256, offset: 1024)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !338, file: !94, line: 725, baseType: !4463, size: 448, offset: 1280)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4464)
!4464 = !{!4465, !4466, !4467, !4468}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4463, file: !94, line: 518, baseType: !290, size: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4463, file: !94, line: 519, baseType: !290, size: 128, offset: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4463, file: !94, line: 520, baseType: !290, size: 128, offset: 256)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4463, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !338, file: !94, line: 726, baseType: !4470, size: 2496, offset: 1728)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4471)
!4471 = !{!4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4554, !4558}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4470, file: !101, line: 664, baseType: !4428, size: 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4470, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4470, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4470, file: !101, line: 667, baseType: !304, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4470, file: !101, line: 668, baseType: !304, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4470, file: !101, line: 669, baseType: !304, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4470, file: !101, line: 670, baseType: !304, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4470, file: !101, line: 671, baseType: !304, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4470, file: !101, line: 672, baseType: !304, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4470, file: !101, line: 673, baseType: !304, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4470, file: !101, line: 674, baseType: !304, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4470, file: !101, line: 675, baseType: !567, size: 32, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4470, file: !101, line: 676, baseType: !354, size: 32, offset: 96)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4470, file: !101, line: 678, baseType: !290, size: 128, offset: 128)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4470, file: !101, line: 679, baseType: !708, size: 256, offset: 256)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4470, file: !101, line: 680, baseType: !4488, size: 64, offset: 512)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4490, line: 43, size: 1536, elements: !4491)
!4490 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4491 = !{!4492, !4493, !4494, !4495, !4496, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4489, file: !4490, line: 44, baseType: !314, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4489, file: !4490, line: 45, baseType: !109, size: 32, offset: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4489, file: !4490, line: 46, baseType: !290, size: 128, offset: 128)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4489, file: !4490, line: 47, baseType: !354, size: 32, offset: 256)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4489, file: !4490, line: 48, baseType: !4497, size: 64, offset: 320)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4489, file: !4490, line: 49, baseType: !999, size: 320, offset: 384)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4489, file: !4490, line: 50, baseType: !256, size: 64, offset: 704)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4489, file: !4490, line: 51, baseType: !2618, size: 64, offset: 768)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4489, file: !4490, line: 52, baseType: !2618, size: 64, offset: 832)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4489, file: !4490, line: 53, baseType: !2618, size: 64, offset: 896)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4489, file: !4490, line: 54, baseType: !2618, size: 64, offset: 960)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4489, file: !4490, line: 55, baseType: !2618, size: 64, offset: 1024)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4489, file: !4490, line: 56, baseType: !256, size: 64, offset: 1088)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4489, file: !4490, line: 57, baseType: !256, size: 64, offset: 1152)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4489, file: !4490, line: 58, baseType: !256, size: 64, offset: 1216)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4489, file: !4490, line: 59, baseType: !256, size: 64, offset: 1280)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4489, file: !4490, line: 60, baseType: !256, size: 64, offset: 1344)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4489, file: !4490, line: 61, baseType: !337, size: 64, offset: 1408)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4489, file: !4490, line: 62, baseType: !304, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4489, file: !4490, line: 63, baseType: !304, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4470, file: !101, line: 681, baseType: !304, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4470, file: !101, line: 682, baseType: !304, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4470, file: !101, line: 683, baseType: !304, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4470, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4470, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4470, file: !101, line: 690, baseType: !2610, size: 512, offset: 640)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4470, file: !101, line: 691, baseType: !571, size: 64, offset: 1152)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4470, file: !101, line: 692, baseType: !1017, size: 256, offset: 1216)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4470, file: !101, line: 693, baseType: !1292, size: 192, offset: 1472)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4470, file: !101, line: 694, baseType: !4497, size: 64, offset: 1664)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4470, file: !101, line: 695, baseType: !283, size: 32, offset: 1728)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4470, file: !101, line: 696, baseType: !283, size: 32, offset: 1760)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4470, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4470, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4470, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4470, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4470, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4470, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4470, file: !101, line: 703, baseType: !304, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4470, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4470, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4470, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4470, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4470, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4470, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4470, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4470, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4470, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4470, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4470, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4470, file: !101, line: 715, baseType: !571, size: 64, offset: 2048)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4470, file: !101, line: 716, baseType: !571, size: 64, offset: 2112)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4470, file: !101, line: 717, baseType: !571, size: 64, offset: 2176)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4470, file: !101, line: 718, baseType: !571, size: 64, offset: 2240)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4470, file: !101, line: 720, baseType: !4549, size: 64, offset: 2304)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4551)
!4551 = !{!4552, !4553}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4550, file: !101, line: 633, baseType: !354, size: 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4550, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4470, file: !101, line: 721, baseType: !4555, size: 64, offset: 2368)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{null, !337, !755}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4470, file: !101, line: 722, baseType: !4559, size: 64, offset: 2432)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !338, file: !94, line: 727, baseType: !4562, size: 64, offset: 4224)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4564)
!4564 = !{!4565, !4566, !4567, !4571, !4572, !4573}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4563, file: !101, line: 743, baseType: !4360, size: 1472)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4563, file: !101, line: 744, baseType: !4363, size: 64, offset: 1472)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4563, file: !101, line: 745, baseType: !4568, size: 64, offset: 1536)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{null, !337, !304}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4563, file: !101, line: 746, baseType: !4363, size: 64, offset: 1600)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4563, file: !101, line: 747, baseType: !4354, size: 64, offset: 1664)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4563, file: !101, line: 748, baseType: !4354, size: 64, offset: 1728)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !338, file: !94, line: 736, baseType: !4575, size: 128, offset: 4288)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4576)
!4576 = !{!4577, !4581}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4575, file: !94, line: 531, baseType: !4578, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4580, line: 13, flags: DIFlagFwdDecl)
!4580 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4575, file: !94, line: 532, baseType: !4582, size: 64, offset: 64)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !338, file: !94, line: 738, baseType: !4585, size: 64, offset: 4416)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4587)
!4587 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !338, file: !94, line: 740, baseType: !4589, size: 64, offset: 4480)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !338, file: !94, line: 741, baseType: !571, size: 64, offset: 4544)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !338, file: !94, line: 746, baseType: !571, size: 64, offset: 4608)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !338, file: !94, line: 747, baseType: !4593, size: 64, offset: 4672)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4595)
!4595 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !338, file: !94, line: 749, baseType: !4597, size: 64, offset: 4736)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4599)
!4599 = !{!4600, !4601, !4602}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4598, file: !94, line: 433, baseType: !7, size: 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4598, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4598, file: !94, line: 435, baseType: !256, size: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !338, file: !94, line: 751, baseType: !290, size: 128, offset: 4800)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !338, file: !94, line: 762, baseType: !4605, size: 64, offset: 4928)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !338, file: !94, line: 770, baseType: !4608, offset: 4992)
!4608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4609, line: 5, elements: !1046)
!4609 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !338, file: !94, line: 772, baseType: !4611, size: 64, offset: 4992)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4613, line: 18, flags: DIFlagFwdDecl)
!4613 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !338, file: !94, line: 773, baseType: !4615, size: 64, offset: 5056)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4617, line: 41, size: 512, elements: !4618)
!4617 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4618 = !{!4619, !4620, !4714, !4715, !4716, !4717}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4616, file: !4617, line: 42, baseType: !4615, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4616, file: !4617, line: 43, baseType: !4621, size: 64, offset: 64)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4623)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4617, line: 125, size: 1408, elements: !4624)
!4624 = !{!4625, !4629, !4633, !4639, !4643, !4644, !4649, !4653, !4657, !4661, !4665, !4666, !4670, !4674, !4678, !4689, !4690, !4691, !4692, !4702, !4706, !4710}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4623, file: !4617, line: 126, baseType: !4626, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!4615, !4615}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4623, file: !4617, line: 127, baseType: !4630, size: 64, offset: 64)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{null, !4615}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4623, file: !4617, line: 128, baseType: !4634, size: 64, offset: 128)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!304, !4637}
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4616)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4623, file: !4617, line: 129, baseType: !4640, size: 64, offset: 192)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!1797, !4637, !4346}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4623, file: !4617, line: 131, baseType: !4634, size: 64, offset: 256)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4623, file: !4617, line: 133, baseType: !4645, size: 64, offset: 320)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!4648, !4637}
!4648 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4617, line: 132, flags: DIFlagFwdDecl)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4623, file: !4617, line: 134, baseType: !4650, size: 64, offset: 384)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!304, !4637, !314}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4623, file: !4617, line: 136, baseType: !4654, size: 64, offset: 448)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!109, !4637, !314, !7, !251, !466}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4623, file: !4617, line: 141, baseType: !4658, size: 64, offset: 512)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!109, !4637, !314, !1094, !466}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4623, file: !4617, line: 144, baseType: !4662, size: 64, offset: 576)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!314, !4637}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4623, file: !4617, line: 145, baseType: !4662, size: 64, offset: 640)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4623, file: !4617, line: 146, baseType: !4667, size: 64, offset: 704)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!4615, !4637}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4623, file: !4617, line: 148, baseType: !4671, size: 64, offset: 768)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!4615, !4637, !4615}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4623, file: !4617, line: 151, baseType: !4675, size: 64, offset: 832)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!4615, !4637, !314}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4623, file: !4617, line: 153, baseType: !4679, size: 64, offset: 896)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!109, !4637, !314, !314, !7, !7, !4682}
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4617, line: 94, size: 640, elements: !4684)
!4684 = !{!4685, !4686, !4687}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4683, file: !4617, line: 95, baseType: !4615, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4683, file: !4617, line: 96, baseType: !7, size: 32, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4683, file: !4617, line: 97, baseType: !4688, size: 512, offset: 128)
!4688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 512, elements: !2653)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4623, file: !4617, line: 158, baseType: !4671, size: 64, offset: 960)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4623, file: !4617, line: 161, baseType: !4667, size: 64, offset: 1024)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4623, file: !4617, line: 163, baseType: !4626, size: 64, offset: 1088)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4623, file: !4617, line: 164, baseType: !4693, size: 64, offset: 1152)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!109, !4637, !4696}
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4617, line: 73, size: 128, elements: !4698)
!4698 = !{!4699, !4700, !4701}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4697, file: !4617, line: 74, baseType: !7, size: 32)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4697, file: !4617, line: 75, baseType: !7, size: 32, offset: 32)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4697, file: !4617, line: 76, baseType: !4637, size: 64, offset: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4623, file: !4617, line: 166, baseType: !4703, size: 64, offset: 1216)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!251, !4615, !109}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4623, file: !4617, line: 167, baseType: !4707, size: 64, offset: 1280)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!109, !4637, !7}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4623, file: !4617, line: 168, baseType: !4711, size: 64, offset: 1344)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!109, !4615}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4616, file: !4617, line: 44, baseType: !337, size: 64, offset: 128)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4616, file: !4617, line: 45, baseType: !290, size: 128, offset: 192)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4616, file: !4617, line: 46, baseType: !290, size: 128, offset: 320)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4616, file: !4617, line: 47, baseType: !378, size: 8, offset: 448)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !338, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !338, file: !94, line: 778, baseType: !654, size: 32, offset: 5152)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !338, file: !94, line: 779, baseType: !567, size: 32, offset: 5184)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !338, file: !94, line: 781, baseType: !354, size: 32, offset: 5216)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !338, file: !94, line: 782, baseType: !290, size: 128, offset: 5248)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !338, file: !94, line: 784, baseType: !4724, size: 64, offset: 5376)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4726)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4727, line: 52, size: 768, elements: !4728)
!4727 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4728 = !{!4729, !4730, !4731, !4732, !4733, !4737, !4741, !4742, !4743, !4744, !4748, !4752}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4726, file: !4727, line: 53, baseType: !314, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4726, file: !4727, line: 55, baseType: !470, size: 64, offset: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4726, file: !4727, line: 56, baseType: !470, size: 64, offset: 128)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4726, file: !4727, line: 58, baseType: !4343, size: 64, offset: 192)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4726, file: !4727, line: 59, baseType: !4734, size: 64, offset: 256)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!419, !4346, !4352}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4726, file: !4727, line: 61, baseType: !4738, size: 64, offset: 320)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{null, !4724}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4726, file: !4727, line: 62, baseType: !4354, size: 64, offset: 384)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4726, file: !4727, line: 64, baseType: !4363, size: 64, offset: 448)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4726, file: !4727, line: 66, baseType: !4199, size: 64, offset: 512)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4726, file: !4727, line: 67, baseType: !4745, size: 64, offset: 576)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!1797, !4346}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4726, file: !4727, line: 69, baseType: !4749, size: 64, offset: 640)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{null, !4346, !4231, !4232}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4726, file: !4727, line: 71, baseType: !4358, size: 64, offset: 704)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !338, file: !94, line: 785, baseType: !470, size: 64, offset: 5440)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !338, file: !94, line: 787, baseType: !4354, size: 64, offset: 5504)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !338, file: !94, line: 788, baseType: !4756, size: 64, offset: 5568)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !338, file: !94, line: 789, baseType: !4759, size: 64, offset: 5632)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !338, file: !94, line: 791, baseType: !4762, size: 64, offset: 5696)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4764)
!4764 = !{!4765, !4766, !4767, !4768, !4769}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4763, file: !94, line: 598, baseType: !116, size: 32)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4763, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4763, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4763, file: !94, line: 601, baseType: !304, size: 8, offset: 96)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4763, file: !94, line: 602, baseType: !304, size: 8, offset: 104)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !338, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !338, file: !94, line: 795, baseType: !304, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !338, file: !94, line: 796, baseType: !304, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !338, file: !94, line: 797, baseType: !304, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !338, file: !94, line: 798, baseType: !304, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !338, file: !94, line: 799, baseType: !304, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !271, file: !142, line: 873, baseType: !688, size: 64, offset: 960)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "chan_ida", scope: !271, file: !142, line: 874, baseType: !4778, size: 128, offset: 1024)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !4779, line: 246, size: 128, elements: !4780)
!4779 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4780 = !{!4781}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4778, file: !4779, line: 247, baseType: !1619, size: 128)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_widths", scope: !271, file: !142, line: 876, baseType: !567, size: 32, offset: 1152)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_widths", scope: !271, file: !142, line: 877, baseType: !567, size: 32, offset: 1184)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "directions", scope: !271, file: !142, line: 878, baseType: !567, size: 32, offset: 1216)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "min_burst", scope: !271, file: !142, line: 879, baseType: !567, size: 32, offset: 1248)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "max_burst", scope: !271, file: !142, line: 880, baseType: !567, size: 32, offset: 1280)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "max_sg_burst", scope: !271, file: !142, line: 881, baseType: !567, size: 32, offset: 1312)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_reuse", scope: !271, file: !142, line: 882, baseType: !304, size: 8, offset: 1344)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "residue_granularity", scope: !271, file: !142, line: 883, baseType: !158, size: 32, offset: 1376)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "device_alloc_chan_resources", scope: !271, file: !142, line: 885, baseType: !4791, size: 64, offset: 1408)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!109, !306}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "device_router_config", scope: !271, file: !142, line: 886, baseType: !4791, size: 64, offset: 1472)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "device_free_chan_resources", scope: !271, file: !142, line: 887, baseType: !4796, size: 64, offset: 1536)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{null, !306}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memcpy", scope: !271, file: !142, line: 889, baseType: !4800, size: 64, offset: 1600)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!4803, !306, !4810, !4810, !466, !256}
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_async_tx_descriptor", file: !142, line: 602, size: 704, elements: !4805)
!4805 = !{!4806, !4808, !4809, !4811, !4812, !4816, !4820, !4822, !4833, !4834, !4847, !4848}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !4804, file: !142, line: 603, baseType: !4807, size: 32)
!4807 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_cookie_t", file: !142, line: 22, baseType: !755)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4804, file: !142, line: 604, baseType: !163, size: 32, offset: 32)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4804, file: !142, line: 605, baseType: !4810, size: 64, offset: 64)
!4810 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !259, line: 149, baseType: !571)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !4804, file: !142, line: 606, baseType: !306, size: 64, offset: 128)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "tx_submit", scope: !4804, file: !142, line: 607, baseType: !4813, size: 64, offset: 192)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!4807, !4803}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "desc_free", scope: !4804, file: !142, line: 608, baseType: !4817, size: 64, offset: 256)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!109, !4803}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4804, file: !142, line: 609, baseType: !4821, size: 64, offset: 320)
!4821 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_async_tx_callback", file: !142, line: 535, baseType: !802)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "callback_result", scope: !4804, file: !142, line: 610, baseType: !4823, size: 64, offset: 384)
!4823 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_async_tx_callback_result", file: !142, line: 549, baseType: !4824)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{null, !251, !4827}
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4829)
!4829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmaengine_result", file: !142, line: 544, size: 64, elements: !4830)
!4830 = !{!4831, !4832}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !4829, file: !142, line: 545, baseType: !175, size: 32)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "residue", scope: !4829, file: !142, line: 546, baseType: !567, size: 32, offset: 32)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "callback_param", scope: !4804, file: !142, line: 611, baseType: !251, size: 64, offset: 448)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4804, file: !142, line: 612, baseType: !4835, size: 64, offset: 512)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmaengine_unmap_data", file: !142, line: 552, size: 256, elements: !4837)
!4837 = !{!4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "map_cnt", scope: !4836, file: !142, line: 556, baseType: !378, size: 8)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "to_cnt", scope: !4836, file: !142, line: 558, baseType: !378, size: 8, offset: 8)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "from_cnt", scope: !4836, file: !142, line: 559, baseType: !378, size: 8, offset: 16)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "bidi_cnt", scope: !4836, file: !142, line: 560, baseType: !378, size: 8, offset: 24)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4836, file: !142, line: 561, baseType: !337, size: 64, offset: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4836, file: !142, line: 562, baseType: !274, size: 32, offset: 128)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4836, file: !142, line: 563, baseType: !466, size: 64, offset: 192)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4836, file: !142, line: 564, baseType: !4846, offset: 256)
!4846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4810, elements: !1307)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "desc_metadata_mode", scope: !4804, file: !142, line: 613, baseType: !141, size: 32, offset: 576)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_ops", scope: !4804, file: !142, line: 614, baseType: !4849, size: 64, offset: 640)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_descriptor_metadata_ops", file: !142, line: 569, size: 192, elements: !4851)
!4851 = !{!4852, !4856, !4861}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4850, file: !142, line: 570, baseType: !4853, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!109, !4803, !251, !466}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "get_ptr", scope: !4850, file: !142, line: 573, baseType: !4857, size: 64, offset: 64)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!251, !4803, !4860, !4860}
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "set_len", scope: !4850, file: !142, line: 575, baseType: !4862, size: 64, offset: 128)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!109, !4803, !466}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_xor", scope: !271, file: !142, line: 892, baseType: !4866, size: 64, offset: 1664)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!4803, !306, !4810, !4869, !7, !466, !256}
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_xor_val", scope: !271, file: !142, line: 895, baseType: !4871, size: 64, offset: 1728)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!4803, !306, !4869, !7, !466, !4874, !256}
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_pq", scope: !271, file: !142, line: 898, baseType: !4876, size: 64, offset: 1792)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!4803, !306, !4869, !4869, !7, !575, !466, !256}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_pq_val", scope: !271, file: !142, line: 902, baseType: !4880, size: 64, offset: 1856)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!4803, !306, !4869, !4869, !7, !575, !466, !4874, !256}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memset", scope: !271, file: !142, line: 906, baseType: !4884, size: 64, offset: 1920)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!4803, !306, !4810, !109, !466, !256}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memset_sg", scope: !271, file: !142, line: 909, baseType: !4888, size: 64, offset: 1984)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{!4803, !306, !4891, !7, !109, !256}
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4893, line: 11, size: 256, elements: !4894)
!4893 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!4894 = !{!4895, !4896, !4897, !4898, !4899, !4900}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4892, file: !4893, line: 12, baseType: !256, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4892, file: !4893, line: 13, baseType: !7, size: 32, offset: 64)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4892, file: !4893, line: 14, baseType: !7, size: 32, offset: 96)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4892, file: !4893, line: 15, baseType: !4810, size: 64, offset: 128)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4892, file: !4893, line: 17, baseType: !7, size: 32, offset: 192)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4892, file: !4893, line: 20, baseType: !7, size: 32, offset: 224)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_interrupt", scope: !271, file: !142, line: 912, baseType: !4902, size: 64, offset: 2048)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!4803, !306, !256}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_slave_sg", scope: !271, file: !142, line: 915, baseType: !4906, size: 64, offset: 2112)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!4803, !306, !4891, !7, !185, !256, !251}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_cyclic", scope: !271, file: !142, line: 919, baseType: !4910, size: 64, offset: 2176)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!4803, !306, !4810, !466, !466, !185, !256}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_interleaved_dma", scope: !271, file: !142, line: 923, baseType: !4914, size: 64, offset: 2240)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!4803, !306, !4917, !256}
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_interleaved_template", file: !142, line: 150, size: 320, elements: !4919)
!4919 = !{!4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "src_start", scope: !4918, file: !142, line: 151, baseType: !4810, size: 64)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "dst_start", scope: !4918, file: !142, line: 152, baseType: !4810, size: 64, offset: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4918, file: !142, line: 153, baseType: !185, size: 32, offset: 128)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "src_inc", scope: !4918, file: !142, line: 154, baseType: !304, size: 8, offset: 160)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "dst_inc", scope: !4918, file: !142, line: 155, baseType: !304, size: 8, offset: 168)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "src_sgl", scope: !4918, file: !142, line: 156, baseType: !304, size: 8, offset: 176)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "dst_sgl", scope: !4918, file: !142, line: 157, baseType: !304, size: 8, offset: 184)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "numf", scope: !4918, file: !142, line: 158, baseType: !466, size: 64, offset: 192)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "frame_size", scope: !4918, file: !142, line: 159, baseType: !466, size: 64, offset: 256)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !4918, file: !142, line: 160, baseType: !4930, offset: 320)
!4930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4931, elements: !1307)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_chunk", file: !142, line: 125, size: 256, elements: !4932)
!4932 = !{!4933, !4934, !4935, !4936}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4931, file: !142, line: 126, baseType: !466, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "icg", scope: !4931, file: !142, line: 127, baseType: !466, size: 64, offset: 64)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "dst_icg", scope: !4931, file: !142, line: 128, baseType: !466, size: 64, offset: 128)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "src_icg", scope: !4931, file: !142, line: 129, baseType: !466, size: 64, offset: 192)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_imm_data", scope: !271, file: !142, line: 926, baseType: !4938, size: 64, offset: 2304)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!4803, !306, !4810, !571, !256}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "device_caps", scope: !271, file: !142, line: 930, baseType: !4942, size: 64, offset: 2368)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{null, !306, !4945}
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_caps", file: !142, line: 501, size: 288, elements: !4947)
!4947 = !{!4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_widths", scope: !4946, file: !142, line: 502, baseType: !567, size: 32)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_widths", scope: !4946, file: !142, line: 503, baseType: !567, size: 32, offset: 32)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "directions", scope: !4946, file: !142, line: 504, baseType: !567, size: 32, offset: 64)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "min_burst", scope: !4946, file: !142, line: 505, baseType: !567, size: 32, offset: 96)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "max_burst", scope: !4946, file: !142, line: 506, baseType: !567, size: 32, offset: 128)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "max_sg_burst", scope: !4946, file: !142, line: 507, baseType: !567, size: 32, offset: 160)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_pause", scope: !4946, file: !142, line: 508, baseType: !304, size: 8, offset: 192)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_resume", scope: !4946, file: !142, line: 509, baseType: !304, size: 8, offset: 200)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_terminate", scope: !4946, file: !142, line: 510, baseType: !304, size: 8, offset: 208)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "residue_granularity", scope: !4946, file: !142, line: 511, baseType: !158, size: 32, offset: 224)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_reuse", scope: !4946, file: !142, line: 512, baseType: !304, size: 8, offset: 256)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "device_config", scope: !271, file: !142, line: 931, baseType: !4960, size: 64, offset: 2432)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!109, !306, !4963}
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_config", file: !142, line: 437, size: 576, elements: !4965)
!4965 = !{!4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4964, file: !142, line: 438, baseType: !185, size: 32)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !4964, file: !142, line: 439, baseType: !3449, size: 64, offset: 64)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr", scope: !4964, file: !142, line: 440, baseType: !3449, size: 64, offset: 128)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_width", scope: !4964, file: !142, line: 441, baseType: !192, size: 32, offset: 192)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_width", scope: !4964, file: !142, line: 442, baseType: !192, size: 32, offset: 224)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "src_maxburst", scope: !4964, file: !142, line: 443, baseType: !567, size: 32, offset: 256)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "dst_maxburst", scope: !4964, file: !142, line: 444, baseType: !567, size: 32, offset: 288)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "src_port_window_size", scope: !4964, file: !142, line: 445, baseType: !567, size: 32, offset: 320)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "dst_port_window_size", scope: !4964, file: !142, line: 446, baseType: !567, size: 32, offset: 352)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "device_fc", scope: !4964, file: !142, line: 447, baseType: !304, size: 8, offset: 384)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "peripheral_config", scope: !4964, file: !142, line: 448, baseType: !251, size: 64, offset: 448)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "peripheral_size", scope: !4964, file: !142, line: 449, baseType: !466, size: 64, offset: 512)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "device_pause", scope: !271, file: !142, line: 932, baseType: !4791, size: 64, offset: 2496)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "device_resume", scope: !271, file: !142, line: 933, baseType: !4791, size: 64, offset: 2560)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "device_terminate_all", scope: !271, file: !142, line: 934, baseType: !4791, size: 64, offset: 2624)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "device_synchronize", scope: !271, file: !142, line: 935, baseType: !4796, size: 64, offset: 2688)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "device_tx_status", scope: !271, file: !142, line: 937, baseType: !4983, size: 64, offset: 2752)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!204, !306, !4807, !4986}
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_tx_state", file: !142, line: 725, size: 128, elements: !4988)
!4988 = !{!4989, !4990, !4991, !4992}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4987, file: !142, line: 726, baseType: !4807, size: 32)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4987, file: !142, line: 727, baseType: !4807, size: 32, offset: 32)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "residue", scope: !4987, file: !142, line: 728, baseType: !567, size: 32, offset: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "in_flight_bytes", scope: !4987, file: !142, line: 729, baseType: !567, size: 32, offset: 96)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "device_issue_pending", scope: !271, file: !142, line: 940, baseType: !4796, size: 64, offset: 2816)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !271, file: !142, line: 941, baseType: !4995, size: 64, offset: 2880)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{null, !270}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_summary_show", scope: !271, file: !142, line: 943, baseType: !4999, size: 64, offset: 2944)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{null, !1199, !270}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_dev_root", scope: !271, file: !142, line: 944, baseType: !533, size: 64, offset: 3008)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !267, file: !142, line: 330, baseType: !337, size: 64, offset: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !267, file: !142, line: 331, baseType: !4807, size: 32, offset: 128)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "completed_cookie", scope: !267, file: !142, line: 332, baseType: !4807, size: 32, offset: 160)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "chan_id", scope: !267, file: !142, line: 335, baseType: !109, size: 32, offset: 192)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !267, file: !142, line: 336, baseType: !5008, size: 64, offset: 256)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan_dev", file: !142, line: 362, size: 5952, elements: !5010)
!5010 = !{!5011, !5012, !5013, !5014}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !5009, file: !142, line: 363, baseType: !306, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5009, file: !142, line: 364, baseType: !338, size: 5824, offset: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !5009, file: !142, line: 365, baseType: !109, size: 32, offset: 5888)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "chan_dma_dev", scope: !5009, file: !142, line: 366, baseType: !304, size: 8, offset: 5920)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !142, line: 337, baseType: !314, size: 64, offset: 320)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_client_name", scope: !267, file: !142, line: 339, baseType: !419, size: 64, offset: 384)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !267, file: !142, line: 342, baseType: !290, size: 128, offset: 448)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !267, file: !142, line: 343, baseType: !252, size: 64, offset: 576)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "client_count", scope: !267, file: !142, line: 344, baseType: !109, size: 32, offset: 640)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "table_count", scope: !267, file: !142, line: 345, baseType: !109, size: 32, offset: 672)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "router", scope: !267, file: !142, line: 348, baseType: !5022, size: 64, offset: 704)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_router", file: !142, line: 304, size: 128, elements: !5024)
!5024 = !{!5025, !5026}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5023, file: !142, line: 305, baseType: !337, size: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "route_free", scope: !5023, file: !142, line: 306, baseType: !5027, size: 64, offset: 64)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{null, !337, !251}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "route_data", scope: !267, file: !142, line: 349, baseType: !251, size: 64, offset: 768)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !267, file: !142, line: 351, baseType: !251, size: 64, offset: 832)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !263, file: !264, line: 24, baseType: !5033, size: 320, offset: 896)
!5033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !236, line: 642, size: 320, elements: !5034)
!5034 = !{!5035, !5037, !5038, !5039, !5040, !5051}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5033, file: !236, line: 644, baseType: !5036, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5033, file: !236, line: 645, baseType: !256, size: 64, offset: 64)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5033, file: !236, line: 646, baseType: !283, size: 32, offset: 128)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !5033, file: !236, line: 647, baseType: !304, size: 8, offset: 160)
!5040 = !DIDerivedType(tag: DW_TAG_member, scope: !5033, file: !236, line: 648, baseType: !5041, size: 64, offset: 192)
!5041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5033, file: !236, line: 648, size: 64, elements: !5042)
!5042 = !{!5043, !5047}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5041, file: !236, line: 649, baseType: !5044, size: 64)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{null, !256}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5041, file: !236, line: 650, baseType: !5048, size: 64)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{null, !5036}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5033, file: !236, line: 652, baseType: !256, size: 64, offset: 256)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "desc_free", scope: !263, file: !264, line: 25, baseType: !5053, size: 64, offset: 1216)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{null, !5056}
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virt_dma_desc", file: !264, line: 15, size: 896, elements: !5058)
!5058 = !{!5059, !5060, !5061}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !5057, file: !264, line: 16, baseType: !4804, size: 704)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "tx_result", scope: !5057, file: !264, line: 17, baseType: !4829, size: 64, offset: 704)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5057, file: !264, line: 19, baseType: !290, size: 128, offset: 768)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !263, file: !264, line: 27, baseType: !354, size: 32, offset: 1280)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "desc_allocated", scope: !263, file: !264, line: 30, baseType: !290, size: 128, offset: 1344)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "desc_submitted", scope: !263, file: !264, line: 31, baseType: !290, size: 128, offset: 1472)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "desc_issued", scope: !263, file: !264, line: 32, baseType: !290, size: 128, offset: 1600)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "desc_completed", scope: !263, file: !264, line: 33, baseType: !290, size: 128, offset: 1728)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "desc_terminated", scope: !263, file: !264, line: 34, baseType: !290, size: 128, offset: 1856)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic", scope: !263, file: !264, line: 36, baseType: !5056, size: 64, offset: 1984)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !293)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5070)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hsu_dma_desc", file: !5075, line: 71, size: 1216, elements: !5076)
!5075 = !DIFile(filename: "drivers/dma/hsu/hsu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb81256d6ea779824d4d04ffa47ed695")
!5076 = !{!5077, !5078, !5079, !5085, !5086, !5087, !5088}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "vdesc", scope: !5074, file: !5075, line: 72, baseType: !5057, size: 896)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !5074, file: !5075, line: 73, baseType: !185, size: 32, offset: 896)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5074, file: !5075, line: 74, baseType: !5080, size: 64, offset: 960)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hsu_dma_sg", file: !5075, line: 66, size: 128, elements: !5082)
!5082 = !{!5083, !5084}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5081, file: !5075, line: 67, baseType: !4810, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5081, file: !5075, line: 68, baseType: !7, size: 32, offset: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !5074, file: !5075, line: 75, baseType: !7, size: 32, offset: 1024)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5074, file: !5075, line: 76, baseType: !466, size: 64, offset: 1088)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5074, file: !5075, line: 77, baseType: !7, size: 32, offset: 1152)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5074, file: !5075, line: 78, baseType: !204, size: 32, offset: 1184)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !316)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !455)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hsu_dma_chan", file: !5075, line: 86, size: 2816, elements: !5095)
!5095 = !{!5096, !5097, !5098, !5099, !5100}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "vchan", scope: !5094, file: !5075, line: 87, baseType: !263, size: 2048)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5094, file: !5075, line: 89, baseType: !251, size: 64, offset: 2048)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !5094, file: !5075, line: 92, baseType: !185, size: 32, offset: 2112)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5094, file: !5075, line: 93, baseType: !4964, size: 576, offset: 2176)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5094, file: !5075, line: 95, baseType: !5073, size: 64, offset: 2752)
!5101 = !{!0, !5102, !5104, !5109, !5111, !5113, !5118, !5123, !5126, !5131, !5137}
!5102 = !DIGlobalVariableExpression(var: !5103, expr: !DIExpression())
!5103 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hsu_dma_do_irq291", scope: !2, file: !3, line: 242, type: !251, isLocal: true, isDefinition: true)
!5104 = !DIGlobalVariableExpression(var: !5105, expr: !DIExpression())
!5105 = distinct !DIGlobalVariable(scope: null, file: !3, line: 488, type: !5106, isLocal: true, isDefinition: true)
!5106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 224, elements: !5107)
!5107 = !{!5108}
!5108 = !DISubrange(count: 28)
!5109 = !DIGlobalVariableExpression(var: !5110, expr: !DIExpression())
!5110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hsu_dma_probe292", scope: !2, file: !3, line: 491, type: !251, isLocal: true, isDefinition: true)
!5111 = !DIGlobalVariableExpression(var: !5112, expr: !DIExpression())
!5112 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hsu_dma_remove293", scope: !2, file: !3, line: 508, type: !251, isLocal: true, isDefinition: true)
!5113 = !DIGlobalVariableExpression(var: !5114, expr: !DIExpression())
!5114 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file294", scope: !2, file: !3, line: 510, type: !5115, isLocal: true, isDefinition: true, align: 8)
!5115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 296, elements: !5116)
!5116 = !{!5117}
!5117 = !DISubrange(count: 37)
!5118 = !DIGlobalVariableExpression(var: !5119, expr: !DIExpression())
!5119 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license295", scope: !2, file: !3, line: 510, type: !5120, isLocal: true, isDefinition: true, align: 8)
!5120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 184, elements: !5121)
!5121 = !{!5122}
!5122 = !DISubrange(count: 23)
!5123 = !DIGlobalVariableExpression(var: !5124, expr: !DIExpression())
!5124 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description296", scope: !2, file: !3, line: 511, type: !5125, isLocal: true, isDefinition: true, align: 8)
!5125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 416, elements: !1762)
!5126 = !DIGlobalVariableExpression(var: !5127, expr: !DIExpression())
!5127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author297", scope: !2, file: !3, line: 512, type: !5128, isLocal: true, isDefinition: true, align: 8)
!5128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 536, elements: !5129)
!5129 = !{!5130}
!5130 = !DISubrange(count: 67)
!5131 = !DIGlobalVariableExpression(var: !5132, expr: !DIExpression())
!5132 = distinct !DIGlobalVariable(scope: null, file: !5133, line: 54, type: !5134, isLocal: true, isDefinition: true)
!5133 = !DIFile(filename: "drivers/dma/hsu/../dmaengine.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dfb176701a955c85c3a565a775e4e441")
!5134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 248, elements: !5135)
!5135 = !{!5136}
!5136 = !DISubrange(count: 31)
!5137 = !DIGlobalVariableExpression(var: !5138, expr: !DIExpression())
!5138 = distinct !DIGlobalVariable(scope: null, file: !241, line: 480, type: !5139, isLocal: true, isDefinition: true)
!5139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 168, elements: !5140)
!5140 = !{!5141}
!5141 = !DISubrange(count: 21)
!5142 = !{i32 7, !"Dwarf Version", i32 5}
!5143 = !{i32 2, !"Debug Info Version", i32 3}
!5144 = !{i32 1, !"wchar_size", i32 2}
!5145 = !{i32 8, !"cf-protection-branch", i32 1}
!5146 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5147 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5148 = !{i32 1, !"Code Model", i32 2}
!5149 = !{i32 1, !"override-stack-alignment", i32 8}
!5150 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5151 = distinct !DISubprogram(name: "hsu_dma_get_status", scope: !3, file: !3, line: 151, type: !5152, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5170)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!109, !5154, !329, !2821}
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hsu_dma_chip", file: !5156, line: 30, size: 320, elements: !5157)
!5156 = !DIFile(filename: "./include/linux/dma/hsu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5a0f472dc2aeda50e07ca73eb8121850")
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5163}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5155, file: !5156, line: 31, baseType: !337, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5155, file: !5156, line: 32, baseType: !109, size: 32, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5155, file: !5156, line: 33, baseType: !251, size: 64, offset: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5155, file: !5156, line: 34, baseType: !7, size: 32, offset: 192)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5155, file: !5156, line: 35, baseType: !7, size: 32, offset: 224)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "hsu", scope: !5155, file: !5156, line: 36, baseType: !5164, size: 64, offset: 256)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hsu_dma", file: !5075, line: 114, size: 3200, elements: !5166)
!5166 = !{!5167, !5168, !5169}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5165, file: !5075, line: 115, baseType: !271, size: 3072)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !5165, file: !5075, line: 118, baseType: !5093, size: 64, offset: 3072)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_channels", scope: !5165, file: !5075, line: 119, baseType: !329, size: 16, offset: 3136)
!5170 = !{!5171, !5172, !5173, !5174, !5175, !5176, !5177, !5181}
!5171 = !DILocalVariable(name: "chip", arg: 1, scope: !5151, file: !3, line: 151, type: !5154)
!5172 = !DILocalVariable(name: "nr", arg: 2, scope: !5151, file: !3, line: 151, type: !329)
!5173 = !DILocalVariable(name: "status", arg: 3, scope: !5151, file: !3, line: 152, type: !2821)
!5174 = !DILocalVariable(name: "hsuc", scope: !5151, file: !3, line: 154, type: !5093)
!5175 = !DILocalVariable(name: "flags", scope: !5151, file: !3, line: 155, type: !256)
!5176 = !DILocalVariable(name: "sr", scope: !5151, file: !3, line: 156, type: !567)
!5177 = !DILocalVariable(name: "__dummy", scope: !5178, file: !3, line: 168, type: !256)
!5178 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 168, column: 2)
!5179 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 168, column: 2)
!5180 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 168, column: 2)
!5181 = !DILocalVariable(name: "__dummy2", scope: !5178, file: !3, line: 168, type: !256)
!5182 = !DILocation(line: 151, column: 45, scope: !5151)
!5183 = !DILocation(line: 151, column: 66, scope: !5151)
!5184 = !DILocation(line: 152, column: 15, scope: !5151)
!5185 = !DILocation(line: 154, column: 2, scope: !5151)
!5186 = !DILocation(line: 154, column: 23, scope: !5151)
!5187 = !DILocation(line: 155, column: 2, scope: !5151)
!5188 = !DILocation(line: 155, column: 16, scope: !5151)
!5189 = !DILocation(line: 156, column: 2, scope: !5151)
!5190 = !DILocation(line: 156, column: 6, scope: !5151)
!5191 = !DILocation(line: 159, column: 6, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 159, column: 6)
!5193 = !DILocation(line: 159, column: 12, scope: !5192)
!5194 = !DILocation(line: 159, column: 18, scope: !5192)
!5195 = !DILocation(line: 159, column: 23, scope: !5192)
!5196 = !DILocation(line: 159, column: 9, scope: !5192)
!5197 = !DILocation(line: 159, column: 6, scope: !5151)
!5198 = !DILocation(line: 160, column: 3, scope: !5192)
!5199 = !DILocation(line: 162, column: 10, scope: !5151)
!5200 = !DILocation(line: 162, column: 16, scope: !5151)
!5201 = !DILocation(line: 162, column: 21, scope: !5151)
!5202 = !DILocation(line: 162, column: 26, scope: !5151)
!5203 = !DILocation(line: 162, column: 7, scope: !5151)
!5204 = !DILocation(line: 168, column: 2, scope: !5151)
!5205 = !DILocation(line: 168, column: 2, scope: !5180)
!5206 = !DILocation(line: 168, column: 2, scope: !5178)
!5207 = !DILocation(line: 168, column: 2, scope: !5179)
!5208 = !DILocation(line: 169, column: 22, scope: !5151)
!5209 = !DILocation(line: 169, column: 7, scope: !5151)
!5210 = !DILocation(line: 169, column: 5, scope: !5151)
!5211 = !DILocation(line: 170, column: 26, scope: !5151)
!5212 = !DILocation(line: 170, column: 32, scope: !5151)
!5213 = !DILocation(line: 170, column: 38, scope: !5151)
!5214 = !DILocation(line: 170, column: 44, scope: !5151)
!5215 = !DILocation(line: 170, column: 2, scope: !5151)
!5216 = !DILocation(line: 173, column: 5, scope: !5151)
!5217 = !DILocation(line: 174, column: 7, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 174, column: 6)
!5219 = !DILocation(line: 174, column: 6, scope: !5151)
!5220 = !DILocation(line: 175, column: 3, scope: !5218)
!5221 = !DILocation(line: 178, column: 6, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 178, column: 6)
!5223 = !DILocation(line: 178, column: 9, scope: !5222)
!5224 = !DILocation(line: 178, column: 6, scope: !5151)
!5225 = !DILocation(line: 179, column: 3, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5227, file: !3, line: 179, column: 3)
!5227 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 179, column: 3)
!5228 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 179, column: 3)
!5229 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 179, column: 3)
!5230 = !DILocation(line: 179, column: 3, scope: !5222)
!5231 = !DILocation(line: 188, column: 5, scope: !5151)
!5232 = !DILocation(line: 190, column: 12, scope: !5151)
!5233 = !DILocation(line: 190, column: 3, scope: !5151)
!5234 = !DILocation(line: 190, column: 10, scope: !5151)
!5235 = !DILocation(line: 192, column: 9, scope: !5151)
!5236 = !DILocation(line: 192, column: 2, scope: !5151)
!5237 = !DILocation(line: 193, column: 1, scope: !5151)
!5238 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5239, file: !5239, line: 32, type: !5240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5239 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5240 = !DISubroutineType(types: !5241)
!5241 = !{!256, !5242}
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!5243 = distinct !DISubprogram(name: "spinlock_check", scope: !5244, file: !5244, line: 324, type: !5245, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5247)
!5244 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!5242, !2062}
!5247 = !{!5248}
!5248 = !DILocalVariable(name: "lock", arg: 1, scope: !5243, file: !5244, line: 324, type: !2062)
!5249 = !DILocation(line: 324, column: 67, scope: !5243)
!5250 = !DILocation(line: 326, column: 10, scope: !5243)
!5251 = !DILocation(line: 326, column: 16, scope: !5243)
!5252 = !DILocation(line: 326, column: 2, scope: !5243)
!5253 = distinct !DISubprogram(name: "hsu_chan_readl", scope: !5075, file: !5075, line: 103, type: !5254, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5256)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!567, !5093, !109}
!5256 = !{!5257, !5258}
!5257 = !DILocalVariable(name: "hsuc", arg: 1, scope: !5253, file: !5075, line: 103, type: !5093)
!5258 = !DILocalVariable(name: "offset", arg: 2, scope: !5253, file: !5075, line: 103, type: !109)
!5259 = !DILocation(line: 103, column: 55, scope: !5253)
!5260 = !DILocation(line: 103, column: 65, scope: !5253)
!5261 = !DILocation(line: 105, column: 15, scope: !5253)
!5262 = !DILocation(line: 105, column: 21, scope: !5253)
!5263 = !DILocation(line: 105, column: 27, scope: !5253)
!5264 = !DILocation(line: 105, column: 25, scope: !5253)
!5265 = !DILocation(line: 105, column: 9, scope: !5253)
!5266 = !DILocation(line: 105, column: 2, scope: !5253)
!5267 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5244, file: !5244, line: 404, type: !5268, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5270)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{null, !2062, !256}
!5270 = !{!5271, !5272, !5273, !5276}
!5271 = !DILocalVariable(name: "lock", arg: 1, scope: !5267, file: !5244, line: 404, type: !2062)
!5272 = !DILocalVariable(name: "flags", arg: 2, scope: !5267, file: !5244, line: 404, type: !256)
!5273 = !DILocalVariable(name: "__dummy", scope: !5274, file: !5244, line: 406, type: !256)
!5274 = distinct !DILexicalBlock(scope: !5275, file: !5244, line: 406, column: 2)
!5275 = distinct !DILexicalBlock(scope: !5267, file: !5244, line: 406, column: 2)
!5276 = !DILocalVariable(name: "__dummy2", scope: !5274, file: !5244, line: 406, type: !256)
!5277 = !DILocation(line: 404, column: 64, scope: !5267)
!5278 = !DILocation(line: 404, column: 84, scope: !5267)
!5279 = !DILocation(line: 406, column: 2, scope: !5267)
!5280 = !DILocation(line: 406, column: 2, scope: !5274)
!5281 = !DILocation(line: 406, column: 2, scope: !5275)
!5282 = !DILocation(line: 407, column: 1, scope: !5267)
!5283 = !DISubprogram(name: "__const_udelay", scope: !5284, file: !5284, line: 11, type: !5045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5284 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!5285 = distinct !DISubprogram(name: "hsu_dma_do_irq", scope: !3, file: !3, line: 210, type: !5286, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5288)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!109, !5154, !329, !567}
!5288 = !{!5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5299, !5301, !5305}
!5289 = !DILocalVariable(name: "chip", arg: 1, scope: !5285, file: !3, line: 210, type: !5154)
!5290 = !DILocalVariable(name: "nr", arg: 2, scope: !5285, file: !3, line: 210, type: !329)
!5291 = !DILocalVariable(name: "status", arg: 3, scope: !5285, file: !3, line: 210, type: !567)
!5292 = !DILocalVariable(name: "stat", scope: !5285, file: !3, line: 212, type: !252)
!5293 = !DILocalVariable(name: "hsuc", scope: !5285, file: !3, line: 213, type: !5093)
!5294 = !DILocalVariable(name: "desc", scope: !5285, file: !3, line: 214, type: !5073)
!5295 = !DILocalVariable(name: "flags", scope: !5285, file: !3, line: 215, type: !256)
!5296 = !DILocalVariable(name: "__vpp_verify", scope: !5297, file: !3, line: 222, type: !1797)
!5297 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 222, column: 9)
!5298 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 222, column: 9)
!5299 = !DILocalVariable(name: "tcp_ptr__", scope: !5300, file: !3, line: 222, type: !256)
!5300 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 222, column: 9)
!5301 = !DILocalVariable(name: "__dummy", scope: !5302, file: !3, line: 224, type: !256)
!5302 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 224, column: 2)
!5303 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 224, column: 2)
!5304 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 224, column: 2)
!5305 = !DILocalVariable(name: "__dummy2", scope: !5302, file: !3, line: 224, type: !256)
!5306 = !DILocation(line: 210, column: 41, scope: !5285)
!5307 = !DILocation(line: 210, column: 62, scope: !5285)
!5308 = !DILocation(line: 210, column: 70, scope: !5285)
!5309 = !DILocation(line: 212, column: 2, scope: !5285)
!5310 = !DILocation(line: 212, column: 26, scope: !5285)
!5311 = !DILocation(line: 213, column: 2, scope: !5285)
!5312 = !DILocation(line: 213, column: 23, scope: !5285)
!5313 = !DILocation(line: 214, column: 2, scope: !5285)
!5314 = !DILocation(line: 214, column: 23, scope: !5285)
!5315 = !DILocation(line: 215, column: 2, scope: !5285)
!5316 = !DILocation(line: 215, column: 16, scope: !5285)
!5317 = !DILocation(line: 218, column: 6, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 218, column: 6)
!5319 = !DILocation(line: 218, column: 12, scope: !5318)
!5320 = !DILocation(line: 218, column: 18, scope: !5318)
!5321 = !DILocation(line: 218, column: 23, scope: !5318)
!5322 = !DILocation(line: 218, column: 9, scope: !5318)
!5323 = !DILocation(line: 218, column: 6, scope: !5285)
!5324 = !DILocation(line: 219, column: 3, scope: !5318)
!5325 = !DILocation(line: 221, column: 10, scope: !5285)
!5326 = !DILocation(line: 221, column: 16, scope: !5285)
!5327 = !DILocation(line: 221, column: 21, scope: !5285)
!5328 = !DILocation(line: 221, column: 26, scope: !5285)
!5329 = !DILocation(line: 221, column: 7, scope: !5285)
!5330 = !DILocation(line: 222, column: 9, scope: !5298)
!5331 = !DILocation(line: 222, column: 9, scope: !5297)
!5332 = !DILocation(line: 222, column: 9, scope: !5300)
!5333 = !{i64 2154807049}
!5334 = !DILocation(line: 222, column: 7, scope: !5285)
!5335 = !DILocation(line: 224, column: 2, scope: !5285)
!5336 = !DILocation(line: 224, column: 2, scope: !5304)
!5337 = !DILocation(line: 224, column: 2, scope: !5302)
!5338 = !DILocation(line: 224, column: 2, scope: !5303)
!5339 = !DILocation(line: 225, column: 9, scope: !5285)
!5340 = !DILocation(line: 225, column: 15, scope: !5285)
!5341 = !DILocation(line: 225, column: 7, scope: !5285)
!5342 = !DILocation(line: 226, column: 6, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 226, column: 6)
!5344 = !DILocation(line: 226, column: 6, scope: !5285)
!5345 = !DILocation(line: 227, column: 7, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 227, column: 7)
!5347 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 226, column: 12)
!5348 = !DILocation(line: 227, column: 14, scope: !5346)
!5349 = !DILocation(line: 227, column: 7, scope: !5347)
!5350 = !DILocation(line: 228, column: 4, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 227, column: 31)
!5352 = !DILocation(line: 228, column: 10, scope: !5351)
!5353 = !DILocation(line: 228, column: 17, scope: !5351)
!5354 = !DILocation(line: 229, column: 3, scope: !5351)
!5355 = !DILocation(line: 229, column: 14, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 229, column: 14)
!5357 = !DILocation(line: 229, column: 20, scope: !5356)
!5358 = !DILocation(line: 229, column: 29, scope: !5356)
!5359 = !DILocation(line: 229, column: 35, scope: !5356)
!5360 = !DILocation(line: 229, column: 27, scope: !5356)
!5361 = !DILocation(line: 229, column: 14, scope: !5346)
!5362 = !DILocation(line: 230, column: 26, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 229, column: 42)
!5364 = !DILocation(line: 230, column: 4, scope: !5363)
!5365 = !DILocation(line: 231, column: 3, scope: !5363)
!5366 = !DILocation(line: 232, column: 27, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 231, column: 10)
!5368 = !DILocation(line: 232, column: 33, scope: !5367)
!5369 = !DILocation(line: 232, column: 4, scope: !5367)
!5370 = !DILocation(line: 233, column: 4, scope: !5367)
!5371 = !DILocation(line: 233, column: 10, scope: !5367)
!5372 = !DILocation(line: 233, column: 17, scope: !5367)
!5373 = !DILocation(line: 234, column: 31, scope: !5367)
!5374 = !DILocation(line: 234, column: 37, scope: !5367)
!5375 = !DILocation(line: 234, column: 4, scope: !5367)
!5376 = !DILocation(line: 234, column: 10, scope: !5367)
!5377 = !DILocation(line: 234, column: 28, scope: !5367)
!5378 = !DILocation(line: 235, column: 27, scope: !5367)
!5379 = !DILocation(line: 235, column: 4, scope: !5367)
!5380 = !DILocation(line: 237, column: 2, scope: !5347)
!5381 = !DILocation(line: 238, column: 26, scope: !5285)
!5382 = !DILocation(line: 238, column: 32, scope: !5285)
!5383 = !DILocation(line: 238, column: 38, scope: !5285)
!5384 = !DILocation(line: 238, column: 44, scope: !5285)
!5385 = !DILocation(line: 238, column: 2, scope: !5285)
!5386 = !DILocation(line: 240, column: 2, scope: !5285)
!5387 = !DILocation(line: 241, column: 1, scope: !5285)
!5388 = distinct !DISubprogram(name: "hsu_dma_start_channel", scope: !3, file: !3, line: 111, type: !5389, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5391)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{null, !5093}
!5391 = !{!5392}
!5392 = !DILocalVariable(name: "hsuc", arg: 1, scope: !5388, file: !3, line: 111, type: !5093)
!5393 = !DILocation(line: 111, column: 56, scope: !5388)
!5394 = !DILocation(line: 113, column: 21, scope: !5388)
!5395 = !DILocation(line: 113, column: 2, scope: !5388)
!5396 = !DILocation(line: 114, column: 1, scope: !5388)
!5397 = distinct !DISubprogram(name: "vchan_cookie_complete", scope: !264, file: !264, line: 94, type: !5054, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5398)
!5398 = !{!5399, !5400, !5401}
!5399 = !DILocalVariable(name: "vd", arg: 1, scope: !5397, file: !264, line: 94, type: !5056)
!5400 = !DILocalVariable(name: "vc", scope: !5397, file: !264, line: 96, type: !262)
!5401 = !DILocalVariable(name: "cookie", scope: !5397, file: !264, line: 97, type: !4807)
!5402 = !DILocation(line: 94, column: 64, scope: !5397)
!5403 = !DILocation(line: 96, column: 2, scope: !5397)
!5404 = !DILocation(line: 96, column: 24, scope: !5397)
!5405 = !DILocation(line: 96, column: 42, scope: !5397)
!5406 = !DILocation(line: 96, column: 46, scope: !5397)
!5407 = !DILocation(line: 96, column: 49, scope: !5397)
!5408 = !DILocation(line: 96, column: 29, scope: !5397)
!5409 = !DILocation(line: 97, column: 2, scope: !5397)
!5410 = !DILocation(line: 97, column: 15, scope: !5397)
!5411 = !DILocation(line: 99, column: 11, scope: !5397)
!5412 = !DILocation(line: 99, column: 15, scope: !5397)
!5413 = !DILocation(line: 99, column: 18, scope: !5397)
!5414 = !DILocation(line: 99, column: 9, scope: !5397)
!5415 = !DILocation(line: 100, column: 23, scope: !5397)
!5416 = !DILocation(line: 100, column: 27, scope: !5397)
!5417 = !DILocation(line: 100, column: 2, scope: !5397)
!5418 = !DILocation(line: 103, column: 17, scope: !5397)
!5419 = !DILocation(line: 103, column: 21, scope: !5397)
!5420 = !DILocation(line: 103, column: 28, scope: !5397)
!5421 = !DILocation(line: 103, column: 32, scope: !5397)
!5422 = !DILocation(line: 103, column: 2, scope: !5397)
!5423 = !DILocation(line: 105, column: 20, scope: !5397)
!5424 = !DILocation(line: 105, column: 24, scope: !5397)
!5425 = !DILocation(line: 105, column: 2, scope: !5397)
!5426 = !DILocation(line: 106, column: 1, scope: !5397)
!5427 = distinct !DISubprogram(name: "hsu_dma_start_transfer", scope: !3, file: !3, line: 116, type: !5389, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5428)
!5428 = !{!5429, !5430}
!5429 = !DILocalVariable(name: "hsuc", arg: 1, scope: !5427, file: !3, line: 116, type: !5093)
!5430 = !DILocalVariable(name: "vdesc", scope: !5427, file: !3, line: 118, type: !5056)
!5431 = !DILocation(line: 116, column: 57, scope: !5427)
!5432 = !DILocation(line: 118, column: 2, scope: !5427)
!5433 = !DILocation(line: 118, column: 24, scope: !5427)
!5434 = !DILocation(line: 121, column: 27, scope: !5427)
!5435 = !DILocation(line: 121, column: 33, scope: !5427)
!5436 = !DILocation(line: 121, column: 10, scope: !5427)
!5437 = !DILocation(line: 121, column: 8, scope: !5427)
!5438 = !DILocation(line: 122, column: 7, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 122, column: 6)
!5440 = !DILocation(line: 122, column: 6, scope: !5427)
!5441 = !DILocation(line: 123, column: 3, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 122, column: 14)
!5443 = !DILocation(line: 123, column: 9, scope: !5442)
!5444 = !DILocation(line: 123, column: 14, scope: !5442)
!5445 = !DILocation(line: 124, column: 3, scope: !5442)
!5446 = !DILocation(line: 127, column: 12, scope: !5427)
!5447 = !DILocation(line: 127, column: 19, scope: !5427)
!5448 = !DILocation(line: 127, column: 2, scope: !5427)
!5449 = !DILocation(line: 128, column: 31, scope: !5427)
!5450 = !DILocation(line: 128, column: 15, scope: !5427)
!5451 = !DILocation(line: 128, column: 2, scope: !5427)
!5452 = !DILocation(line: 128, column: 8, scope: !5427)
!5453 = !DILocation(line: 128, column: 13, scope: !5427)
!5454 = !DILocation(line: 131, column: 24, scope: !5427)
!5455 = !DILocation(line: 131, column: 2, scope: !5427)
!5456 = !DILocation(line: 132, column: 1, scope: !5427)
!5457 = distinct !DISubprogram(name: "hsu_dma_probe", scope: !3, file: !3, line: 427, type: !5458, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5460)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{!109, !5154}
!5460 = !{!5461, !5462, !5463, !5464, !5465, !5466}
!5461 = !DILocalVariable(name: "chip", arg: 1, scope: !5457, file: !3, line: 427, type: !5154)
!5462 = !DILocalVariable(name: "hsu", scope: !5457, file: !3, line: 429, type: !5164)
!5463 = !DILocalVariable(name: "addr", scope: !5457, file: !3, line: 430, type: !251)
!5464 = !DILocalVariable(name: "i", scope: !5457, file: !3, line: 431, type: !329)
!5465 = !DILocalVariable(name: "ret", scope: !5457, file: !3, line: 432, type: !109)
!5466 = !DILocalVariable(name: "hsuc", scope: !5467, file: !3, line: 450, type: !5093)
!5467 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 449, column: 41)
!5468 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 449, column: 2)
!5469 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 449, column: 2)
!5470 = !DILocation(line: 427, column: 40, scope: !5457)
!5471 = !DILocation(line: 429, column: 2, scope: !5457)
!5472 = !DILocation(line: 429, column: 18, scope: !5457)
!5473 = !DILocation(line: 430, column: 2, scope: !5457)
!5474 = !DILocation(line: 430, column: 16, scope: !5457)
!5475 = !DILocation(line: 430, column: 23, scope: !5457)
!5476 = !DILocation(line: 430, column: 29, scope: !5457)
!5477 = !DILocation(line: 430, column: 36, scope: !5457)
!5478 = !DILocation(line: 430, column: 42, scope: !5457)
!5479 = !DILocation(line: 430, column: 34, scope: !5457)
!5480 = !DILocation(line: 431, column: 2, scope: !5457)
!5481 = !DILocation(line: 431, column: 17, scope: !5457)
!5482 = !DILocation(line: 432, column: 2, scope: !5457)
!5483 = !DILocation(line: 432, column: 6, scope: !5457)
!5484 = !DILocation(line: 434, column: 21, scope: !5457)
!5485 = !DILocation(line: 434, column: 27, scope: !5457)
!5486 = !DILocation(line: 434, column: 8, scope: !5457)
!5487 = !DILocation(line: 434, column: 6, scope: !5457)
!5488 = !DILocation(line: 435, column: 7, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 435, column: 6)
!5490 = !DILocation(line: 435, column: 6, scope: !5457)
!5491 = !DILocation(line: 436, column: 3, scope: !5489)
!5492 = !DILocation(line: 438, column: 14, scope: !5457)
!5493 = !DILocation(line: 438, column: 2, scope: !5457)
!5494 = !DILocation(line: 438, column: 8, scope: !5457)
!5495 = !DILocation(line: 438, column: 12, scope: !5457)
!5496 = !DILocation(line: 441, column: 22, scope: !5457)
!5497 = !DILocation(line: 441, column: 28, scope: !5457)
!5498 = !DILocation(line: 441, column: 37, scope: !5457)
!5499 = !DILocation(line: 441, column: 43, scope: !5457)
!5500 = !DILocation(line: 441, column: 35, scope: !5457)
!5501 = !DILocation(line: 441, column: 51, scope: !5457)
!5502 = !DILocation(line: 441, column: 21, scope: !5457)
!5503 = !DILocation(line: 441, column: 2, scope: !5457)
!5504 = !DILocation(line: 441, column: 7, scope: !5457)
!5505 = !DILocation(line: 441, column: 19, scope: !5457)
!5506 = !DILocation(line: 443, column: 27, scope: !5457)
!5507 = !DILocation(line: 443, column: 33, scope: !5457)
!5508 = !DILocation(line: 443, column: 38, scope: !5457)
!5509 = !DILocation(line: 443, column: 43, scope: !5457)
!5510 = !DILocation(line: 443, column: 14, scope: !5457)
!5511 = !DILocation(line: 443, column: 2, scope: !5457)
!5512 = !DILocation(line: 443, column: 7, scope: !5457)
!5513 = !DILocation(line: 443, column: 12, scope: !5457)
!5514 = !DILocation(line: 445, column: 7, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 445, column: 6)
!5516 = !DILocation(line: 445, column: 12, scope: !5515)
!5517 = !DILocation(line: 445, column: 6, scope: !5457)
!5518 = !DILocation(line: 446, column: 3, scope: !5515)
!5519 = !DILocation(line: 448, column: 18, scope: !5457)
!5520 = !DILocation(line: 448, column: 23, scope: !5457)
!5521 = !DILocation(line: 448, column: 27, scope: !5457)
!5522 = !DILocation(line: 448, column: 2, scope: !5457)
!5523 = !DILocation(line: 449, column: 9, scope: !5469)
!5524 = !DILocation(line: 449, column: 7, scope: !5469)
!5525 = !DILocation(line: 449, column: 14, scope: !5468)
!5526 = !DILocation(line: 449, column: 18, scope: !5468)
!5527 = !DILocation(line: 449, column: 23, scope: !5468)
!5528 = !DILocation(line: 449, column: 16, scope: !5468)
!5529 = !DILocation(line: 449, column: 2, scope: !5469)
!5530 = !DILocation(line: 450, column: 3, scope: !5467)
!5531 = !DILocation(line: 450, column: 24, scope: !5467)
!5532 = !DILocation(line: 450, column: 32, scope: !5467)
!5533 = !DILocation(line: 450, column: 37, scope: !5467)
!5534 = !DILocation(line: 450, column: 42, scope: !5467)
!5535 = !DILocation(line: 452, column: 3, scope: !5467)
!5536 = !DILocation(line: 452, column: 9, scope: !5467)
!5537 = !DILocation(line: 452, column: 15, scope: !5467)
!5538 = !DILocation(line: 452, column: 25, scope: !5467)
!5539 = !DILocation(line: 453, column: 15, scope: !5467)
!5540 = !DILocation(line: 453, column: 21, scope: !5467)
!5541 = !DILocation(line: 453, column: 29, scope: !5467)
!5542 = !DILocation(line: 453, column: 34, scope: !5467)
!5543 = !DILocation(line: 453, column: 3, scope: !5467)
!5544 = !DILocation(line: 455, column: 22, scope: !5467)
!5545 = !DILocation(line: 455, column: 24, scope: !5467)
!5546 = !DILocation(line: 455, column: 21, scope: !5467)
!5547 = !DILocation(line: 455, column: 3, scope: !5467)
!5548 = !DILocation(line: 455, column: 9, scope: !5467)
!5549 = !DILocation(line: 455, column: 19, scope: !5467)
!5550 = !DILocation(line: 456, column: 15, scope: !5467)
!5551 = !DILocation(line: 456, column: 22, scope: !5467)
!5552 = !DILocation(line: 456, column: 24, scope: !5467)
!5553 = !DILocation(line: 456, column: 20, scope: !5467)
!5554 = !DILocation(line: 456, column: 3, scope: !5467)
!5555 = !DILocation(line: 456, column: 9, scope: !5467)
!5556 = !DILocation(line: 456, column: 13, scope: !5467)
!5557 = !DILocation(line: 457, column: 2, scope: !5468)
!5558 = !DILocation(line: 457, column: 2, scope: !5467)
!5559 = !DILocation(line: 449, column: 37, scope: !5468)
!5560 = !DILocation(line: 449, column: 2, scope: !5468)
!5561 = distinct !{!5561, !5529, !5562, !5563, !5564}
!5562 = !DILocation(line: 457, column: 2, scope: !5469)
!5563 = !{!"llvm.loop.mustprogress"}
!5564 = !{!"llvm.loop.unroll.disable"}
!5565 = !DILocation(line: 459, column: 2, scope: !5457)
!5566 = !DILocation(line: 460, column: 2, scope: !5457)
!5567 = !DILocation(line: 462, column: 2, scope: !5457)
!5568 = !DILocation(line: 462, column: 7, scope: !5457)
!5569 = !DILocation(line: 462, column: 11, scope: !5457)
!5570 = !DILocation(line: 462, column: 38, scope: !5457)
!5571 = !DILocation(line: 464, column: 2, scope: !5457)
!5572 = !DILocation(line: 464, column: 7, scope: !5457)
!5573 = !DILocation(line: 464, column: 11, scope: !5457)
!5574 = !DILocation(line: 464, column: 32, scope: !5457)
!5575 = !DILocation(line: 466, column: 2, scope: !5457)
!5576 = !DILocation(line: 466, column: 7, scope: !5457)
!5577 = !DILocation(line: 466, column: 11, scope: !5457)
!5578 = !DILocation(line: 466, column: 32, scope: !5457)
!5579 = !DILocation(line: 467, column: 2, scope: !5457)
!5580 = !DILocation(line: 467, column: 7, scope: !5457)
!5581 = !DILocation(line: 467, column: 11, scope: !5457)
!5582 = !DILocation(line: 467, column: 28, scope: !5457)
!5583 = !DILocation(line: 469, column: 2, scope: !5457)
!5584 = !DILocation(line: 469, column: 7, scope: !5457)
!5585 = !DILocation(line: 469, column: 11, scope: !5457)
!5586 = !DILocation(line: 469, column: 25, scope: !5457)
!5587 = !DILocation(line: 470, column: 2, scope: !5457)
!5588 = !DILocation(line: 470, column: 7, scope: !5457)
!5589 = !DILocation(line: 470, column: 11, scope: !5457)
!5590 = !DILocation(line: 470, column: 24, scope: !5457)
!5591 = !DILocation(line: 471, column: 2, scope: !5457)
!5592 = !DILocation(line: 471, column: 7, scope: !5457)
!5593 = !DILocation(line: 471, column: 11, scope: !5457)
!5594 = !DILocation(line: 471, column: 25, scope: !5457)
!5595 = !DILocation(line: 472, column: 2, scope: !5457)
!5596 = !DILocation(line: 472, column: 7, scope: !5457)
!5597 = !DILocation(line: 472, column: 11, scope: !5457)
!5598 = !DILocation(line: 472, column: 32, scope: !5457)
!5599 = !DILocation(line: 473, column: 2, scope: !5457)
!5600 = !DILocation(line: 473, column: 7, scope: !5457)
!5601 = !DILocation(line: 473, column: 11, scope: !5457)
!5602 = !DILocation(line: 473, column: 30, scope: !5457)
!5603 = !DILocation(line: 475, column: 2, scope: !5457)
!5604 = !DILocation(line: 475, column: 7, scope: !5457)
!5605 = !DILocation(line: 475, column: 11, scope: !5457)
!5606 = !DILocation(line: 475, column: 27, scope: !5457)
!5607 = !DILocation(line: 476, column: 2, scope: !5457)
!5608 = !DILocation(line: 476, column: 7, scope: !5457)
!5609 = !DILocation(line: 476, column: 11, scope: !5457)
!5610 = !DILocation(line: 476, column: 27, scope: !5457)
!5611 = !DILocation(line: 477, column: 2, scope: !5457)
!5612 = !DILocation(line: 477, column: 7, scope: !5457)
!5613 = !DILocation(line: 477, column: 11, scope: !5457)
!5614 = !DILocation(line: 477, column: 22, scope: !5457)
!5615 = !DILocation(line: 478, column: 2, scope: !5457)
!5616 = !DILocation(line: 478, column: 7, scope: !5457)
!5617 = !DILocation(line: 478, column: 11, scope: !5457)
!5618 = !DILocation(line: 478, column: 31, scope: !5457)
!5619 = !DILocation(line: 480, column: 17, scope: !5457)
!5620 = !DILocation(line: 480, column: 23, scope: !5457)
!5621 = !DILocation(line: 480, column: 2, scope: !5457)
!5622 = !DILocation(line: 480, column: 7, scope: !5457)
!5623 = !DILocation(line: 480, column: 11, scope: !5457)
!5624 = !DILocation(line: 480, column: 15, scope: !5457)
!5625 = !DILocation(line: 482, column: 23, scope: !5457)
!5626 = !DILocation(line: 482, column: 28, scope: !5457)
!5627 = !DILocation(line: 482, column: 32, scope: !5457)
!5628 = !DILocation(line: 482, column: 2, scope: !5457)
!5629 = !DILocation(line: 484, column: 35, scope: !5457)
!5630 = !DILocation(line: 484, column: 40, scope: !5457)
!5631 = !DILocation(line: 484, column: 8, scope: !5457)
!5632 = !DILocation(line: 484, column: 6, scope: !5457)
!5633 = !DILocation(line: 485, column: 6, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 485, column: 6)
!5635 = !DILocation(line: 485, column: 6, scope: !5457)
!5636 = !DILocation(line: 486, column: 10, scope: !5634)
!5637 = !DILocation(line: 486, column: 3, scope: !5634)
!5638 = !DILocation(line: 488, column: 2, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 488, column: 2)
!5640 = !DILocation(line: 488, column: 2, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 488, column: 2)
!5642 = !DILocation(line: 489, column: 2, scope: !5457)
!5643 = !DILocation(line: 490, column: 1, scope: !5457)
!5644 = distinct !DISubprogram(name: "devm_kzalloc", scope: !94, file: !94, line: 312, type: !5645, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5647)
!5645 = !DISubroutineType(types: !5646)
!5646 = !{!251, !337, !466, !258}
!5647 = !{!5648, !5649, !5650}
!5648 = !DILocalVariable(name: "dev", arg: 1, scope: !5644, file: !94, line: 312, type: !337)
!5649 = !DILocalVariable(name: "size", arg: 2, scope: !5644, file: !94, line: 312, type: !466)
!5650 = !DILocalVariable(name: "gfp", arg: 3, scope: !5644, file: !94, line: 312, type: !258)
!5651 = !DILocation(line: 312, column: 49, scope: !5644)
!5652 = !DILocation(line: 312, column: 61, scope: !5644)
!5653 = !DILocation(line: 312, column: 73, scope: !5644)
!5654 = !DILocation(line: 314, column: 22, scope: !5644)
!5655 = !DILocation(line: 314, column: 27, scope: !5644)
!5656 = !DILocation(line: 314, column: 33, scope: !5644)
!5657 = !DILocation(line: 314, column: 37, scope: !5644)
!5658 = !DILocation(line: 314, column: 9, scope: !5644)
!5659 = !DILocation(line: 314, column: 2, scope: !5644)
!5660 = distinct !DISubprogram(name: "devm_kcalloc", scope: !94, file: !94, line: 326, type: !5661, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5663)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!251, !337, !466, !466, !258}
!5663 = !{!5664, !5665, !5666, !5667}
!5664 = !DILocalVariable(name: "dev", arg: 1, scope: !5660, file: !94, line: 326, type: !337)
!5665 = !DILocalVariable(name: "n", arg: 2, scope: !5660, file: !94, line: 327, type: !466)
!5666 = !DILocalVariable(name: "size", arg: 3, scope: !5660, file: !94, line: 327, type: !466)
!5667 = !DILocalVariable(name: "flags", arg: 4, scope: !5660, file: !94, line: 327, type: !258)
!5668 = !DILocation(line: 326, column: 49, scope: !5660)
!5669 = !DILocation(line: 327, column: 13, scope: !5660)
!5670 = !DILocation(line: 327, column: 23, scope: !5660)
!5671 = !DILocation(line: 327, column: 35, scope: !5660)
!5672 = !DILocation(line: 329, column: 28, scope: !5660)
!5673 = !DILocation(line: 329, column: 33, scope: !5660)
!5674 = !DILocation(line: 329, column: 36, scope: !5660)
!5675 = !DILocation(line: 329, column: 42, scope: !5660)
!5676 = !DILocation(line: 329, column: 48, scope: !5660)
!5677 = !DILocation(line: 329, column: 9, scope: !5660)
!5678 = !DILocation(line: 329, column: 2, scope: !5660)
!5679 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5680, file: !5680, line: 35, type: !5681, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5683)
!5680 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5681 = !DISubroutineType(types: !5682)
!5682 = !{null, !293}
!5683 = !{!5684}
!5684 = !DILocalVariable(name: "list", arg: 1, scope: !5679, file: !5680, line: 35, type: !293)
!5685 = !DILocation(line: 35, column: 53, scope: !5679)
!5686 = !DILocation(line: 37, column: 2, scope: !5679)
!5687 = !DILocation(line: 37, column: 2, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5679, file: !5680, line: 37, column: 2)
!5689 = !DILocation(line: 37, column: 2, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5688, file: !5680, line: 37, column: 2)
!5691 = !DILocation(line: 37, column: 2, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5688, file: !5680, line: 37, column: 2)
!5693 = !DILocation(line: 38, column: 2, scope: !5679)
!5694 = !DILocation(line: 38, column: 2, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5679, file: !5680, line: 38, column: 2)
!5696 = !DILocation(line: 38, column: 2, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5695, file: !5680, line: 38, column: 2)
!5698 = !DILocation(line: 38, column: 2, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5695, file: !5680, line: 38, column: 2)
!5700 = !DILocation(line: 39, column: 1, scope: !5679)
!5701 = distinct !DISubprogram(name: "hsu_dma_desc_free", scope: !3, file: !3, line: 261, type: !5054, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5702)
!5702 = !{!5703, !5704}
!5703 = !DILocalVariable(name: "vdesc", arg: 1, scope: !5701, file: !3, line: 261, type: !5056)
!5704 = !DILocalVariable(name: "desc", scope: !5701, file: !3, line: 263, type: !5073)
!5705 = !DILocation(line: 261, column: 53, scope: !5701)
!5706 = !DILocation(line: 263, column: 2, scope: !5701)
!5707 = !DILocation(line: 263, column: 23, scope: !5701)
!5708 = !DILocation(line: 263, column: 46, scope: !5701)
!5709 = !DILocation(line: 263, column: 30, scope: !5701)
!5710 = !DILocation(line: 265, column: 8, scope: !5701)
!5711 = !DILocation(line: 265, column: 14, scope: !5701)
!5712 = !DILocation(line: 265, column: 2, scope: !5701)
!5713 = !DILocation(line: 266, column: 8, scope: !5701)
!5714 = !DILocation(line: 266, column: 2, scope: !5701)
!5715 = !DILocation(line: 267, column: 1, scope: !5701)
!5716 = !DISubprogram(name: "vchan_init", scope: !264, file: !264, line: 45, type: !5717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{null, !262, !270}
!5719 = distinct !DISubprogram(name: "__dma_cap_set", scope: !142, file: !142, line: 1384, type: !5720, scopeLine: 1385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5723)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{null, !211, !5722}
!5722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!5723 = !{!5724, !5725}
!5724 = !DILocalVariable(name: "tx_type", arg: 1, scope: !5719, file: !142, line: 1384, type: !211)
!5725 = !DILocalVariable(name: "dstp", arg: 2, scope: !5719, file: !142, line: 1384, type: !5722)
!5726 = !DILocation(line: 1384, column: 41, scope: !5719)
!5727 = !DILocation(line: 1384, column: 66, scope: !5719)
!5728 = !DILocation(line: 1386, column: 10, scope: !5719)
!5729 = !DILocation(line: 1386, column: 19, scope: !5719)
!5730 = !DILocation(line: 1386, column: 25, scope: !5719)
!5731 = !DILocation(line: 1386, column: 2, scope: !5719)
!5732 = !DILocation(line: 1387, column: 1, scope: !5719)
!5733 = distinct !DISubprogram(name: "hsu_dma_free_chan_resources", scope: !3, file: !3, line: 415, type: !4797, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5734)
!5734 = !{!5735}
!5735 = !DILocalVariable(name: "chan", arg: 1, scope: !5733, file: !3, line: 415, type: !306)
!5736 = !DILocation(line: 415, column: 58, scope: !5733)
!5737 = !DILocation(line: 417, column: 41, scope: !5733)
!5738 = !DILocation(line: 417, column: 28, scope: !5733)
!5739 = !DILocation(line: 417, column: 2, scope: !5733)
!5740 = !DILocation(line: 418, column: 1, scope: !5733)
!5741 = distinct !DISubprogram(name: "hsu_dma_prep_slave_sg", scope: !3, file: !3, line: 269, type: !4907, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5742)
!5742 = !{!5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5752}
!5743 = !DILocalVariable(name: "chan", arg: 1, scope: !5741, file: !3, line: 270, type: !306)
!5744 = !DILocalVariable(name: "sgl", arg: 2, scope: !5741, file: !3, line: 270, type: !4891)
!5745 = !DILocalVariable(name: "sg_len", arg: 3, scope: !5741, file: !3, line: 271, type: !7)
!5746 = !DILocalVariable(name: "direction", arg: 4, scope: !5741, file: !3, line: 271, type: !185)
!5747 = !DILocalVariable(name: "flags", arg: 5, scope: !5741, file: !3, line: 272, type: !256)
!5748 = !DILocalVariable(name: "context", arg: 6, scope: !5741, file: !3, line: 272, type: !251)
!5749 = !DILocalVariable(name: "hsuc", scope: !5741, file: !3, line: 274, type: !5093)
!5750 = !DILocalVariable(name: "desc", scope: !5741, file: !3, line: 275, type: !5073)
!5751 = !DILocalVariable(name: "sg", scope: !5741, file: !3, line: 276, type: !4891)
!5752 = !DILocalVariable(name: "i", scope: !5741, file: !3, line: 277, type: !7)
!5753 = !DILocation(line: 270, column: 20, scope: !5741)
!5754 = !DILocation(line: 270, column: 46, scope: !5741)
!5755 = !DILocation(line: 271, column: 16, scope: !5741)
!5756 = !DILocation(line: 271, column: 52, scope: !5741)
!5757 = !DILocation(line: 272, column: 17, scope: !5741)
!5758 = !DILocation(line: 272, column: 30, scope: !5741)
!5759 = !DILocation(line: 274, column: 2, scope: !5741)
!5760 = !DILocation(line: 274, column: 23, scope: !5741)
!5761 = !DILocation(line: 274, column: 46, scope: !5741)
!5762 = !DILocation(line: 274, column: 30, scope: !5741)
!5763 = !DILocation(line: 275, column: 2, scope: !5741)
!5764 = !DILocation(line: 275, column: 23, scope: !5741)
!5765 = !DILocation(line: 276, column: 2, scope: !5741)
!5766 = !DILocation(line: 276, column: 22, scope: !5741)
!5767 = !DILocation(line: 277, column: 2, scope: !5741)
!5768 = !DILocation(line: 277, column: 15, scope: !5741)
!5769 = !DILocation(line: 279, column: 28, scope: !5741)
!5770 = !DILocation(line: 279, column: 9, scope: !5741)
!5771 = !DILocation(line: 279, column: 7, scope: !5741)
!5772 = !DILocation(line: 280, column: 7, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 280, column: 6)
!5774 = !DILocation(line: 280, column: 6, scope: !5741)
!5775 = !DILocation(line: 281, column: 3, scope: !5773)
!5776 = !DILocation(line: 283, column: 2, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 283, column: 2)
!5778 = !DILocation(line: 283, column: 2, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 283, column: 2)
!5780 = !DILocation(line: 284, column: 22, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5779, file: !3, line: 283, column: 34)
!5782 = !DILocation(line: 284, column: 3, scope: !5781)
!5783 = !DILocation(line: 284, column: 9, scope: !5781)
!5784 = !DILocation(line: 284, column: 12, scope: !5781)
!5785 = !DILocation(line: 284, column: 15, scope: !5781)
!5786 = !DILocation(line: 284, column: 20, scope: !5781)
!5787 = !DILocation(line: 285, column: 21, scope: !5781)
!5788 = !DILocation(line: 285, column: 3, scope: !5781)
!5789 = !DILocation(line: 285, column: 9, scope: !5781)
!5790 = !DILocation(line: 285, column: 12, scope: !5781)
!5791 = !DILocation(line: 285, column: 15, scope: !5781)
!5792 = !DILocation(line: 285, column: 19, scope: !5781)
!5793 = !DILocation(line: 287, column: 19, scope: !5781)
!5794 = !DILocation(line: 287, column: 3, scope: !5781)
!5795 = !DILocation(line: 287, column: 9, scope: !5781)
!5796 = !DILocation(line: 287, column: 16, scope: !5781)
!5797 = !DILocation(line: 288, column: 2, scope: !5781)
!5798 = distinct !{!5798, !5776, !5799, !5563, !5564}
!5799 = !DILocation(line: 288, column: 2, scope: !5777)
!5800 = !DILocation(line: 290, column: 16, scope: !5741)
!5801 = !DILocation(line: 290, column: 2, scope: !5741)
!5802 = !DILocation(line: 290, column: 8, scope: !5741)
!5803 = !DILocation(line: 290, column: 14, scope: !5741)
!5804 = !DILocation(line: 291, column: 20, scope: !5741)
!5805 = !DILocation(line: 291, column: 2, scope: !5741)
!5806 = !DILocation(line: 291, column: 8, scope: !5741)
!5807 = !DILocation(line: 291, column: 18, scope: !5741)
!5808 = !DILocation(line: 293, column: 2, scope: !5741)
!5809 = !DILocation(line: 293, column: 8, scope: !5741)
!5810 = !DILocation(line: 293, column: 15, scope: !5741)
!5811 = !DILocation(line: 295, column: 24, scope: !5741)
!5812 = !DILocation(line: 295, column: 30, scope: !5741)
!5813 = !DILocation(line: 295, column: 38, scope: !5741)
!5814 = !DILocation(line: 295, column: 44, scope: !5741)
!5815 = !DILocation(line: 295, column: 51, scope: !5741)
!5816 = !DILocation(line: 295, column: 9, scope: !5741)
!5817 = !DILocation(line: 295, column: 2, scope: !5741)
!5818 = !DILocation(line: 296, column: 1, scope: !5741)
!5819 = distinct !DISubprogram(name: "hsu_dma_issue_pending", scope: !3, file: !3, line: 298, type: !4797, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5820)
!5820 = !{!5821, !5822, !5823, !5824, !5828}
!5821 = !DILocalVariable(name: "chan", arg: 1, scope: !5819, file: !3, line: 298, type: !306)
!5822 = !DILocalVariable(name: "hsuc", scope: !5819, file: !3, line: 300, type: !5093)
!5823 = !DILocalVariable(name: "flags", scope: !5819, file: !3, line: 301, type: !256)
!5824 = !DILocalVariable(name: "__dummy", scope: !5825, file: !3, line: 303, type: !256)
!5825 = distinct !DILexicalBlock(scope: !5826, file: !3, line: 303, column: 2)
!5826 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 303, column: 2)
!5827 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 303, column: 2)
!5828 = !DILocalVariable(name: "__dummy2", scope: !5825, file: !3, line: 303, type: !256)
!5829 = !DILocation(line: 298, column: 52, scope: !5819)
!5830 = !DILocation(line: 300, column: 2, scope: !5819)
!5831 = !DILocation(line: 300, column: 23, scope: !5819)
!5832 = !DILocation(line: 300, column: 46, scope: !5819)
!5833 = !DILocation(line: 300, column: 30, scope: !5819)
!5834 = !DILocation(line: 301, column: 2, scope: !5819)
!5835 = !DILocation(line: 301, column: 16, scope: !5819)
!5836 = !DILocation(line: 303, column: 2, scope: !5819)
!5837 = !DILocation(line: 303, column: 2, scope: !5827)
!5838 = !DILocation(line: 303, column: 2, scope: !5825)
!5839 = !DILocation(line: 303, column: 2, scope: !5826)
!5840 = !DILocation(line: 304, column: 27, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 304, column: 6)
!5842 = !DILocation(line: 304, column: 33, scope: !5841)
!5843 = !DILocation(line: 304, column: 6, scope: !5841)
!5844 = !DILocation(line: 304, column: 40, scope: !5841)
!5845 = !DILocation(line: 304, column: 44, scope: !5841)
!5846 = !DILocation(line: 304, column: 50, scope: !5841)
!5847 = !DILocation(line: 304, column: 6, scope: !5819)
!5848 = !DILocation(line: 305, column: 26, scope: !5841)
!5849 = !DILocation(line: 305, column: 3, scope: !5841)
!5850 = !DILocation(line: 306, column: 26, scope: !5819)
!5851 = !DILocation(line: 306, column: 32, scope: !5819)
!5852 = !DILocation(line: 306, column: 38, scope: !5819)
!5853 = !DILocation(line: 306, column: 44, scope: !5819)
!5854 = !DILocation(line: 306, column: 2, scope: !5819)
!5855 = !DILocation(line: 307, column: 1, scope: !5819)
!5856 = distinct !DISubprogram(name: "hsu_dma_tx_status", scope: !3, file: !3, line: 326, type: !4984, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5857)
!5857 = !{!5858, !5859, !5860, !5861, !5862, !5863, !5864, !5865, !5866, !5870}
!5858 = !DILocalVariable(name: "chan", arg: 1, scope: !5856, file: !3, line: 326, type: !306)
!5859 = !DILocalVariable(name: "cookie", arg: 2, scope: !5856, file: !3, line: 327, type: !4807)
!5860 = !DILocalVariable(name: "state", arg: 3, scope: !5856, file: !3, line: 327, type: !4986)
!5861 = !DILocalVariable(name: "hsuc", scope: !5856, file: !3, line: 329, type: !5093)
!5862 = !DILocalVariable(name: "vdesc", scope: !5856, file: !3, line: 330, type: !5056)
!5863 = !DILocalVariable(name: "status", scope: !5856, file: !3, line: 331, type: !204)
!5864 = !DILocalVariable(name: "bytes", scope: !5856, file: !3, line: 332, type: !466)
!5865 = !DILocalVariable(name: "flags", scope: !5856, file: !3, line: 333, type: !256)
!5866 = !DILocalVariable(name: "__dummy", scope: !5867, file: !3, line: 339, type: !256)
!5867 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 339, column: 2)
!5868 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 339, column: 2)
!5869 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 339, column: 2)
!5870 = !DILocalVariable(name: "__dummy2", scope: !5867, file: !3, line: 339, type: !256)
!5871 = !DILocation(line: 326, column: 59, scope: !5856)
!5872 = !DILocation(line: 327, column: 15, scope: !5856)
!5873 = !DILocation(line: 327, column: 44, scope: !5856)
!5874 = !DILocation(line: 329, column: 2, scope: !5856)
!5875 = !DILocation(line: 329, column: 23, scope: !5856)
!5876 = !DILocation(line: 329, column: 46, scope: !5856)
!5877 = !DILocation(line: 329, column: 30, scope: !5856)
!5878 = !DILocation(line: 330, column: 2, scope: !5856)
!5879 = !DILocation(line: 330, column: 24, scope: !5856)
!5880 = !DILocation(line: 331, column: 2, scope: !5856)
!5881 = !DILocation(line: 331, column: 18, scope: !5856)
!5882 = !DILocation(line: 332, column: 2, scope: !5856)
!5883 = !DILocation(line: 332, column: 9, scope: !5856)
!5884 = !DILocation(line: 333, column: 2, scope: !5856)
!5885 = !DILocation(line: 333, column: 16, scope: !5856)
!5886 = !DILocation(line: 335, column: 29, scope: !5856)
!5887 = !DILocation(line: 335, column: 35, scope: !5856)
!5888 = !DILocation(line: 335, column: 43, scope: !5856)
!5889 = !DILocation(line: 335, column: 11, scope: !5856)
!5890 = !DILocation(line: 335, column: 9, scope: !5856)
!5891 = !DILocation(line: 336, column: 6, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 336, column: 6)
!5893 = !DILocation(line: 336, column: 13, scope: !5892)
!5894 = !DILocation(line: 336, column: 6, scope: !5856)
!5895 = !DILocation(line: 337, column: 10, scope: !5892)
!5896 = !DILocation(line: 337, column: 3, scope: !5892)
!5897 = !DILocation(line: 339, column: 2, scope: !5856)
!5898 = !DILocation(line: 339, column: 2, scope: !5869)
!5899 = !DILocation(line: 339, column: 2, scope: !5867)
!5900 = !DILocation(line: 339, column: 2, scope: !5868)
!5901 = !DILocation(line: 340, column: 27, scope: !5856)
!5902 = !DILocation(line: 340, column: 33, scope: !5856)
!5903 = !DILocation(line: 340, column: 40, scope: !5856)
!5904 = !DILocation(line: 340, column: 10, scope: !5856)
!5905 = !DILocation(line: 340, column: 8, scope: !5856)
!5906 = !DILocation(line: 341, column: 6, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 341, column: 6)
!5908 = !DILocation(line: 341, column: 12, scope: !5907)
!5909 = !DILocation(line: 341, column: 17, scope: !5907)
!5910 = !DILocation(line: 341, column: 20, scope: !5907)
!5911 = !DILocation(line: 341, column: 30, scope: !5907)
!5912 = !DILocation(line: 341, column: 36, scope: !5907)
!5913 = !DILocation(line: 341, column: 42, scope: !5907)
!5914 = !DILocation(line: 341, column: 48, scope: !5907)
!5915 = !DILocation(line: 341, column: 51, scope: !5907)
!5916 = !DILocation(line: 341, column: 27, scope: !5907)
!5917 = !DILocation(line: 341, column: 6, scope: !5856)
!5918 = !DILocation(line: 342, column: 36, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 341, column: 59)
!5920 = !DILocation(line: 342, column: 11, scope: !5919)
!5921 = !DILocation(line: 342, column: 9, scope: !5919)
!5922 = !DILocation(line: 343, column: 19, scope: !5919)
!5923 = !DILocation(line: 343, column: 26, scope: !5919)
!5924 = !DILocation(line: 343, column: 3, scope: !5919)
!5925 = !DILocation(line: 344, column: 12, scope: !5919)
!5926 = !DILocation(line: 344, column: 18, scope: !5919)
!5927 = !DILocation(line: 344, column: 24, scope: !5919)
!5928 = !DILocation(line: 344, column: 10, scope: !5919)
!5929 = !DILocation(line: 345, column: 2, scope: !5919)
!5930 = !DILocation(line: 345, column: 13, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 345, column: 13)
!5932 = !DILocation(line: 345, column: 13, scope: !5907)
!5933 = !DILocation(line: 346, column: 27, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 345, column: 20)
!5935 = !DILocation(line: 346, column: 11, scope: !5934)
!5936 = !DILocation(line: 346, column: 35, scope: !5934)
!5937 = !DILocation(line: 346, column: 9, scope: !5934)
!5938 = !DILocation(line: 347, column: 19, scope: !5934)
!5939 = !DILocation(line: 347, column: 26, scope: !5934)
!5940 = !DILocation(line: 347, column: 3, scope: !5934)
!5941 = !DILocation(line: 348, column: 2, scope: !5934)
!5942 = !DILocation(line: 349, column: 26, scope: !5856)
!5943 = !DILocation(line: 349, column: 32, scope: !5856)
!5944 = !DILocation(line: 349, column: 38, scope: !5856)
!5945 = !DILocation(line: 349, column: 44, scope: !5856)
!5946 = !DILocation(line: 349, column: 2, scope: !5856)
!5947 = !DILocation(line: 351, column: 9, scope: !5856)
!5948 = !DILocation(line: 351, column: 2, scope: !5856)
!5949 = !DILocation(line: 352, column: 1, scope: !5856)
!5950 = distinct !DISubprogram(name: "hsu_dma_slave_config", scope: !3, file: !3, line: 354, type: !4961, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5951)
!5951 = !{!5952, !5953, !5954}
!5952 = !DILocalVariable(name: "chan", arg: 1, scope: !5950, file: !3, line: 354, type: !306)
!5953 = !DILocalVariable(name: "config", arg: 2, scope: !5950, file: !3, line: 355, type: !4963)
!5954 = !DILocalVariable(name: "hsuc", scope: !5950, file: !3, line: 357, type: !5093)
!5955 = !DILocation(line: 354, column: 50, scope: !5950)
!5956 = !DILocation(line: 355, column: 30, scope: !5950)
!5957 = !DILocation(line: 357, column: 2, scope: !5950)
!5958 = !DILocation(line: 357, column: 23, scope: !5950)
!5959 = !DILocation(line: 357, column: 46, scope: !5950)
!5960 = !DILocation(line: 357, column: 30, scope: !5950)
!5961 = !DILocation(line: 359, column: 10, scope: !5950)
!5962 = !DILocation(line: 359, column: 16, scope: !5950)
!5963 = !DILocation(line: 359, column: 24, scope: !5950)
!5964 = !DILocation(line: 359, column: 2, scope: !5950)
!5965 = !DILocation(line: 362, column: 1, scope: !5950)
!5966 = !DILocation(line: 361, column: 2, scope: !5950)
!5967 = distinct !DISubprogram(name: "hsu_dma_pause", scope: !3, file: !3, line: 364, type: !4792, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5968)
!5968 = !{!5969, !5970, !5971, !5972, !5976}
!5969 = !DILocalVariable(name: "chan", arg: 1, scope: !5967, file: !3, line: 364, type: !306)
!5970 = !DILocalVariable(name: "hsuc", scope: !5967, file: !3, line: 366, type: !5093)
!5971 = !DILocalVariable(name: "flags", scope: !5967, file: !3, line: 367, type: !256)
!5972 = !DILocalVariable(name: "__dummy", scope: !5973, file: !3, line: 369, type: !256)
!5973 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 369, column: 2)
!5974 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 369, column: 2)
!5975 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 369, column: 2)
!5976 = !DILocalVariable(name: "__dummy2", scope: !5973, file: !3, line: 369, type: !256)
!5977 = !DILocation(line: 364, column: 43, scope: !5967)
!5978 = !DILocation(line: 366, column: 2, scope: !5967)
!5979 = !DILocation(line: 366, column: 23, scope: !5967)
!5980 = !DILocation(line: 366, column: 46, scope: !5967)
!5981 = !DILocation(line: 366, column: 30, scope: !5967)
!5982 = !DILocation(line: 367, column: 2, scope: !5967)
!5983 = !DILocation(line: 367, column: 16, scope: !5967)
!5984 = !DILocation(line: 369, column: 2, scope: !5967)
!5985 = !DILocation(line: 369, column: 2, scope: !5975)
!5986 = !DILocation(line: 369, column: 2, scope: !5973)
!5987 = !DILocation(line: 369, column: 2, scope: !5974)
!5988 = !DILocation(line: 370, column: 6, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 370, column: 6)
!5990 = !DILocation(line: 370, column: 12, scope: !5989)
!5991 = !DILocation(line: 370, column: 17, scope: !5989)
!5992 = !DILocation(line: 370, column: 20, scope: !5989)
!5993 = !DILocation(line: 370, column: 26, scope: !5989)
!5994 = !DILocation(line: 370, column: 32, scope: !5989)
!5995 = !DILocation(line: 370, column: 39, scope: !5989)
!5996 = !DILocation(line: 370, column: 6, scope: !5967)
!5997 = !DILocation(line: 371, column: 20, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5989, file: !3, line: 370, column: 59)
!5999 = !DILocation(line: 371, column: 3, scope: !5998)
!6000 = !DILocation(line: 372, column: 3, scope: !5998)
!6001 = !DILocation(line: 372, column: 9, scope: !5998)
!6002 = !DILocation(line: 372, column: 15, scope: !5998)
!6003 = !DILocation(line: 372, column: 22, scope: !5998)
!6004 = !DILocation(line: 373, column: 2, scope: !5998)
!6005 = !DILocation(line: 374, column: 26, scope: !5967)
!6006 = !DILocation(line: 374, column: 32, scope: !5967)
!6007 = !DILocation(line: 374, column: 38, scope: !5967)
!6008 = !DILocation(line: 374, column: 44, scope: !5967)
!6009 = !DILocation(line: 374, column: 2, scope: !5967)
!6010 = !DILocation(line: 377, column: 1, scope: !5967)
!6011 = !DILocation(line: 376, column: 2, scope: !5967)
!6012 = distinct !DISubprogram(name: "hsu_dma_resume", scope: !3, file: !3, line: 379, type: !4792, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6013)
!6013 = !{!6014, !6015, !6016, !6017, !6021}
!6014 = !DILocalVariable(name: "chan", arg: 1, scope: !6012, file: !3, line: 379, type: !306)
!6015 = !DILocalVariable(name: "hsuc", scope: !6012, file: !3, line: 381, type: !5093)
!6016 = !DILocalVariable(name: "flags", scope: !6012, file: !3, line: 382, type: !256)
!6017 = !DILocalVariable(name: "__dummy", scope: !6018, file: !3, line: 384, type: !256)
!6018 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 384, column: 2)
!6019 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 384, column: 2)
!6020 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 384, column: 2)
!6021 = !DILocalVariable(name: "__dummy2", scope: !6018, file: !3, line: 384, type: !256)
!6022 = !DILocation(line: 379, column: 44, scope: !6012)
!6023 = !DILocation(line: 381, column: 2, scope: !6012)
!6024 = !DILocation(line: 381, column: 23, scope: !6012)
!6025 = !DILocation(line: 381, column: 46, scope: !6012)
!6026 = !DILocation(line: 381, column: 30, scope: !6012)
!6027 = !DILocation(line: 382, column: 2, scope: !6012)
!6028 = !DILocation(line: 382, column: 16, scope: !6012)
!6029 = !DILocation(line: 384, column: 2, scope: !6012)
!6030 = !DILocation(line: 384, column: 2, scope: !6020)
!6031 = !DILocation(line: 384, column: 2, scope: !6018)
!6032 = !DILocation(line: 384, column: 2, scope: !6019)
!6033 = !DILocation(line: 385, column: 6, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 385, column: 6)
!6035 = !DILocation(line: 385, column: 12, scope: !6034)
!6036 = !DILocation(line: 385, column: 17, scope: !6034)
!6037 = !DILocation(line: 385, column: 20, scope: !6034)
!6038 = !DILocation(line: 385, column: 26, scope: !6034)
!6039 = !DILocation(line: 385, column: 32, scope: !6034)
!6040 = !DILocation(line: 385, column: 39, scope: !6034)
!6041 = !DILocation(line: 385, column: 6, scope: !6012)
!6042 = !DILocation(line: 386, column: 3, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6034, file: !3, line: 385, column: 54)
!6044 = !DILocation(line: 386, column: 9, scope: !6043)
!6045 = !DILocation(line: 386, column: 15, scope: !6043)
!6046 = !DILocation(line: 386, column: 22, scope: !6043)
!6047 = !DILocation(line: 387, column: 19, scope: !6043)
!6048 = !DILocation(line: 387, column: 3, scope: !6043)
!6049 = !DILocation(line: 388, column: 2, scope: !6043)
!6050 = !DILocation(line: 389, column: 26, scope: !6012)
!6051 = !DILocation(line: 389, column: 32, scope: !6012)
!6052 = !DILocation(line: 389, column: 38, scope: !6012)
!6053 = !DILocation(line: 389, column: 44, scope: !6012)
!6054 = !DILocation(line: 389, column: 2, scope: !6012)
!6055 = !DILocation(line: 392, column: 1, scope: !6012)
!6056 = !DILocation(line: 391, column: 2, scope: !6012)
!6057 = distinct !DISubprogram(name: "hsu_dma_terminate_all", scope: !3, file: !3, line: 394, type: !4792, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6058)
!6058 = !{!6059, !6060, !6061, !6062, !6063, !6067}
!6059 = !DILocalVariable(name: "chan", arg: 1, scope: !6057, file: !3, line: 394, type: !306)
!6060 = !DILocalVariable(name: "hsuc", scope: !6057, file: !3, line: 396, type: !5093)
!6061 = !DILocalVariable(name: "flags", scope: !6057, file: !3, line: 397, type: !256)
!6062 = !DILocalVariable(name: "head", scope: !6057, file: !3, line: 398, type: !290)
!6063 = !DILocalVariable(name: "__dummy", scope: !6064, file: !3, line: 400, type: !256)
!6064 = distinct !DILexicalBlock(scope: !6065, file: !3, line: 400, column: 2)
!6065 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 400, column: 2)
!6066 = distinct !DILexicalBlock(scope: !6057, file: !3, line: 400, column: 2)
!6067 = !DILocalVariable(name: "__dummy2", scope: !6064, file: !3, line: 400, type: !256)
!6068 = !DILocation(line: 394, column: 51, scope: !6057)
!6069 = !DILocation(line: 396, column: 2, scope: !6057)
!6070 = !DILocation(line: 396, column: 23, scope: !6057)
!6071 = !DILocation(line: 396, column: 46, scope: !6057)
!6072 = !DILocation(line: 396, column: 30, scope: !6057)
!6073 = !DILocation(line: 397, column: 2, scope: !6057)
!6074 = !DILocation(line: 397, column: 16, scope: !6057)
!6075 = !DILocation(line: 398, column: 2, scope: !6057)
!6076 = !DILocation(line: 400, column: 2, scope: !6057)
!6077 = !DILocation(line: 400, column: 2, scope: !6066)
!6078 = !DILocation(line: 400, column: 2, scope: !6064)
!6079 = !DILocation(line: 400, column: 2, scope: !6065)
!6080 = !DILocation(line: 402, column: 23, scope: !6057)
!6081 = !DILocation(line: 402, column: 2, scope: !6057)
!6082 = !DILocation(line: 403, column: 6, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6057, file: !3, line: 403, column: 6)
!6084 = !DILocation(line: 403, column: 12, scope: !6083)
!6085 = !DILocation(line: 403, column: 6, scope: !6057)
!6086 = !DILocation(line: 404, column: 22, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 403, column: 18)
!6088 = !DILocation(line: 404, column: 28, scope: !6087)
!6089 = !DILocation(line: 404, column: 34, scope: !6087)
!6090 = !DILocation(line: 404, column: 3, scope: !6087)
!6091 = !DILocation(line: 405, column: 3, scope: !6087)
!6092 = !DILocation(line: 405, column: 9, scope: !6087)
!6093 = !DILocation(line: 405, column: 14, scope: !6087)
!6094 = !DILocation(line: 406, column: 2, scope: !6087)
!6095 = !DILocation(line: 408, column: 29, scope: !6057)
!6096 = !DILocation(line: 408, column: 35, scope: !6057)
!6097 = !DILocation(line: 408, column: 2, scope: !6057)
!6098 = !DILocation(line: 409, column: 26, scope: !6057)
!6099 = !DILocation(line: 409, column: 32, scope: !6057)
!6100 = !DILocation(line: 409, column: 38, scope: !6057)
!6101 = !DILocation(line: 409, column: 44, scope: !6057)
!6102 = !DILocation(line: 409, column: 2, scope: !6057)
!6103 = !DILocation(line: 410, column: 28, scope: !6057)
!6104 = !DILocation(line: 410, column: 34, scope: !6057)
!6105 = !DILocation(line: 410, column: 2, scope: !6057)
!6106 = !DILocation(line: 413, column: 1, scope: !6057)
!6107 = !DILocation(line: 412, column: 2, scope: !6057)
!6108 = distinct !DISubprogram(name: "hsu_dma_synchronize", scope: !3, file: !3, line: 420, type: !4797, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6109)
!6109 = !{!6110, !6111}
!6110 = !DILocalVariable(name: "chan", arg: 1, scope: !6108, file: !3, line: 420, type: !306)
!6111 = !DILocalVariable(name: "hsuc", scope: !6108, file: !3, line: 422, type: !5093)
!6112 = !DILocation(line: 420, column: 50, scope: !6108)
!6113 = !DILocation(line: 422, column: 2, scope: !6108)
!6114 = !DILocation(line: 422, column: 23, scope: !6108)
!6115 = !DILocation(line: 422, column: 46, scope: !6108)
!6116 = !DILocation(line: 422, column: 30, scope: !6108)
!6117 = !DILocation(line: 424, column: 21, scope: !6108)
!6118 = !DILocation(line: 424, column: 27, scope: !6108)
!6119 = !DILocation(line: 424, column: 2, scope: !6108)
!6120 = !DILocation(line: 425, column: 1, scope: !6108)
!6121 = distinct !DISubprogram(name: "dma_set_max_seg_size", scope: !6122, file: !6122, line: 489, type: !6123, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6125)
!6122 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6d71421f89fccf9a1ad0866e8178cd1")
!6123 = !DISubroutineType(types: !6124)
!6124 = !{!109, !337, !7}
!6125 = !{!6126, !6127}
!6126 = !DILocalVariable(name: "dev", arg: 1, scope: !6121, file: !6122, line: 489, type: !337)
!6127 = !DILocalVariable(name: "size", arg: 2, scope: !6121, file: !6122, line: 489, type: !7)
!6128 = !DILocation(line: 489, column: 55, scope: !6121)
!6129 = !DILocation(line: 489, column: 73, scope: !6121)
!6130 = !DILocation(line: 491, column: 6, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6121, file: !6122, line: 491, column: 6)
!6132 = !DILocation(line: 491, column: 11, scope: !6131)
!6133 = !DILocation(line: 491, column: 6, scope: !6121)
!6134 = !DILocation(line: 492, column: 38, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6131, file: !6122, line: 491, column: 22)
!6136 = !DILocation(line: 492, column: 3, scope: !6135)
!6137 = !DILocation(line: 492, column: 8, scope: !6135)
!6138 = !DILocation(line: 492, column: 19, scope: !6135)
!6139 = !DILocation(line: 492, column: 36, scope: !6135)
!6140 = !DILocation(line: 493, column: 3, scope: !6135)
!6141 = !DILocation(line: 495, column: 2, scope: !6121)
!6142 = !DILocation(line: 496, column: 1, scope: !6121)
!6143 = !DISubprogram(name: "dma_async_device_register", scope: !142, file: !142, line: 1576, type: !6144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6144 = !DISubroutineType(types: !6145)
!6145 = !{!109, !270}
!6146 = !DISubprogram(name: "_dev_info", scope: !6147, file: !6147, line: 56, type: !6148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6147 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6148 = !DISubroutineType(types: !6149)
!6149 = !{null, !4346, !314, null}
!6150 = distinct !DISubprogram(name: "hsu_dma_remove", scope: !3, file: !3, line: 493, type: !5458, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6151)
!6151 = !{!6152, !6153, !6154, !6155}
!6152 = !DILocalVariable(name: "chip", arg: 1, scope: !6150, file: !3, line: 493, type: !5154)
!6153 = !DILocalVariable(name: "hsu", scope: !6150, file: !3, line: 495, type: !5164)
!6154 = !DILocalVariable(name: "i", scope: !6150, file: !3, line: 496, type: !329)
!6155 = !DILocalVariable(name: "hsuc", scope: !6156, file: !3, line: 501, type: !5093)
!6156 = distinct !DILexicalBlock(scope: !6157, file: !3, line: 500, column: 41)
!6157 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 500, column: 2)
!6158 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 500, column: 2)
!6159 = !DILocation(line: 493, column: 41, scope: !6150)
!6160 = !DILocation(line: 495, column: 2, scope: !6150)
!6161 = !DILocation(line: 495, column: 18, scope: !6150)
!6162 = !DILocation(line: 495, column: 24, scope: !6150)
!6163 = !DILocation(line: 495, column: 30, scope: !6150)
!6164 = !DILocation(line: 496, column: 2, scope: !6150)
!6165 = !DILocation(line: 496, column: 17, scope: !6150)
!6166 = !DILocation(line: 498, column: 31, scope: !6150)
!6167 = !DILocation(line: 498, column: 36, scope: !6150)
!6168 = !DILocation(line: 498, column: 2, scope: !6150)
!6169 = !DILocation(line: 500, column: 9, scope: !6158)
!6170 = !DILocation(line: 500, column: 7, scope: !6158)
!6171 = !DILocation(line: 500, column: 14, scope: !6157)
!6172 = !DILocation(line: 500, column: 18, scope: !6157)
!6173 = !DILocation(line: 500, column: 23, scope: !6157)
!6174 = !DILocation(line: 500, column: 16, scope: !6157)
!6175 = !DILocation(line: 500, column: 2, scope: !6158)
!6176 = !DILocation(line: 501, column: 3, scope: !6156)
!6177 = !DILocation(line: 501, column: 24, scope: !6156)
!6178 = !DILocation(line: 501, column: 32, scope: !6156)
!6179 = !DILocation(line: 501, column: 37, scope: !6156)
!6180 = !DILocation(line: 501, column: 42, scope: !6156)
!6181 = !DILocation(line: 503, column: 17, scope: !6156)
!6182 = !DILocation(line: 503, column: 23, scope: !6156)
!6183 = !DILocation(line: 503, column: 29, scope: !6156)
!6184 = !DILocation(line: 503, column: 3, scope: !6156)
!6185 = !DILocation(line: 504, column: 2, scope: !6157)
!6186 = !DILocation(line: 504, column: 2, scope: !6156)
!6187 = !DILocation(line: 500, column: 37, scope: !6157)
!6188 = !DILocation(line: 500, column: 2, scope: !6157)
!6189 = distinct !{!6189, !6175, !6190, !5563, !5564}
!6190 = !DILocation(line: 504, column: 2, scope: !6158)
!6191 = !DILocation(line: 507, column: 1, scope: !6150)
!6192 = !DILocation(line: 506, column: 2, scope: !6150)
!6193 = !DISubprogram(name: "dma_async_device_unregister", scope: !142, file: !142, line: 1578, type: !4996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6194 = !DISubprogram(name: "tasklet_kill", scope: !236, file: !236, line: 753, type: !5049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6195 = distinct !DISubprogram(name: "readl", scope: !6196, file: !6196, line: 58, type: !6197, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6202)
!6196 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!6197 = !DISubroutineType(types: !6198)
!6198 = !{!7, !6199}
!6199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6200, size: 64)
!6200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6201)
!6201 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6202 = !{!6203, !6204}
!6203 = !DILocalVariable(name: "addr", arg: 1, scope: !6195, file: !6196, line: 58, type: !6199)
!6204 = !DILocalVariable(name: "ret", scope: !6195, file: !6196, line: 58, type: !7)
!6205 = !DILocation(line: 58, column: 1, scope: !6195)
!6206 = !{i64 2154480198}
!6207 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5239, file: !5239, line: 43, type: !6208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6208 = !DISubroutineType(types: !6209)
!6209 = !{null, !5242, !256}
!6210 = distinct !DISubprogram(name: "hsu_dma_chan_start", scope: !3, file: !3, line: 62, type: !5389, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6211)
!6211 = !{!6212, !6213, !6214, !6215, !6216, !6217, !6218, !6219}
!6212 = !DILocalVariable(name: "hsuc", arg: 1, scope: !6210, file: !3, line: 62, type: !5093)
!6213 = !DILocalVariable(name: "config", scope: !6210, file: !3, line: 64, type: !4963)
!6214 = !DILocalVariable(name: "desc", scope: !6210, file: !3, line: 65, type: !5073)
!6215 = !DILocalVariable(name: "bsr", scope: !6210, file: !3, line: 66, type: !567)
!6216 = !DILocalVariable(name: "mtsr", scope: !6210, file: !3, line: 66, type: !567)
!6217 = !DILocalVariable(name: "dcr", scope: !6210, file: !3, line: 67, type: !567)
!6218 = !DILocalVariable(name: "i", scope: !6210, file: !3, line: 68, type: !7)
!6219 = !DILocalVariable(name: "count", scope: !6210, file: !3, line: 68, type: !7)
!6220 = !DILocation(line: 62, column: 53, scope: !6210)
!6221 = !DILocation(line: 64, column: 2, scope: !6210)
!6222 = !DILocation(line: 64, column: 27, scope: !6210)
!6223 = !DILocation(line: 64, column: 37, scope: !6210)
!6224 = !DILocation(line: 64, column: 43, scope: !6210)
!6225 = !DILocation(line: 65, column: 2, scope: !6210)
!6226 = !DILocation(line: 65, column: 23, scope: !6210)
!6227 = !DILocation(line: 65, column: 30, scope: !6210)
!6228 = !DILocation(line: 65, column: 36, scope: !6210)
!6229 = !DILocation(line: 66, column: 2, scope: !6210)
!6230 = !DILocation(line: 66, column: 6, scope: !6210)
!6231 = !DILocation(line: 66, column: 15, scope: !6210)
!6232 = !DILocation(line: 67, column: 2, scope: !6210)
!6233 = !DILocation(line: 67, column: 6, scope: !6210)
!6234 = !DILocation(line: 68, column: 2, scope: !6210)
!6235 = !DILocation(line: 68, column: 15, scope: !6210)
!6236 = !DILocation(line: 68, column: 18, scope: !6210)
!6237 = !DILocation(line: 70, column: 6, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6210, file: !3, line: 70, column: 6)
!6239 = !DILocation(line: 70, column: 12, scope: !6238)
!6240 = !DILocation(line: 70, column: 22, scope: !6238)
!6241 = !DILocation(line: 70, column: 6, scope: !6210)
!6242 = !DILocation(line: 71, column: 9, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6238, file: !3, line: 70, column: 41)
!6244 = !DILocation(line: 71, column: 17, scope: !6243)
!6245 = !DILocation(line: 71, column: 7, scope: !6243)
!6246 = !DILocation(line: 72, column: 10, scope: !6243)
!6247 = !DILocation(line: 72, column: 18, scope: !6243)
!6248 = !DILocation(line: 72, column: 8, scope: !6243)
!6249 = !DILocation(line: 73, column: 2, scope: !6243)
!6250 = !DILocation(line: 73, column: 13, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6238, file: !3, line: 73, column: 13)
!6252 = !DILocation(line: 73, column: 19, scope: !6251)
!6253 = !DILocation(line: 73, column: 29, scope: !6251)
!6254 = !DILocation(line: 73, column: 13, scope: !6238)
!6255 = !DILocation(line: 74, column: 9, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 73, column: 48)
!6257 = !DILocation(line: 74, column: 17, scope: !6256)
!6258 = !DILocation(line: 74, column: 7, scope: !6256)
!6259 = !DILocation(line: 75, column: 10, scope: !6256)
!6260 = !DILocation(line: 75, column: 18, scope: !6256)
!6261 = !DILocation(line: 75, column: 8, scope: !6256)
!6262 = !DILocation(line: 76, column: 2, scope: !6256)
!6263 = !DILocation(line: 78, column: 19, scope: !6210)
!6264 = !DILocation(line: 78, column: 2, scope: !6210)
!6265 = !DILocation(line: 80, column: 18, scope: !6210)
!6266 = !DILocation(line: 80, column: 2, scope: !6210)
!6267 = !DILocation(line: 81, column: 18, scope: !6210)
!6268 = !DILocation(line: 81, column: 36, scope: !6210)
!6269 = !DILocation(line: 81, column: 2, scope: !6210)
!6270 = !DILocation(line: 82, column: 18, scope: !6210)
!6271 = !DILocation(line: 82, column: 37, scope: !6210)
!6272 = !DILocation(line: 82, column: 2, scope: !6210)
!6273 = !DILocation(line: 85, column: 10, scope: !6210)
!6274 = !DILocation(line: 85, column: 16, scope: !6210)
!6275 = !DILocation(line: 85, column: 24, scope: !6210)
!6276 = !DILocation(line: 85, column: 30, scope: !6210)
!6277 = !DILocation(line: 85, column: 22, scope: !6210)
!6278 = !DILocation(line: 85, column: 8, scope: !6210)
!6279 = !DILocation(line: 86, column: 9, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6210, file: !3, line: 86, column: 2)
!6281 = !DILocation(line: 86, column: 7, scope: !6280)
!6282 = !DILocation(line: 86, column: 14, scope: !6283)
!6283 = distinct !DILexicalBlock(scope: !6280, file: !3, line: 86, column: 2)
!6284 = !DILocation(line: 86, column: 18, scope: !6283)
!6285 = !DILocation(line: 86, column: 16, scope: !6283)
!6286 = !DILocation(line: 86, column: 24, scope: !6283)
!6287 = !DILocation(line: 86, column: 27, scope: !6283)
!6288 = !DILocation(line: 86, column: 29, scope: !6283)
!6289 = !DILocation(line: 0, scope: !6283)
!6290 = !DILocation(line: 86, column: 2, scope: !6280)
!6291 = !DILocation(line: 87, column: 19, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6283, file: !3, line: 86, column: 58)
!6293 = !DILocation(line: 87, column: 25, scope: !6292)
!6294 = !DILocation(line: 87, column: 42, scope: !6292)
!6295 = !DILocation(line: 87, column: 48, scope: !6292)
!6296 = !DILocation(line: 87, column: 51, scope: !6292)
!6297 = !DILocation(line: 87, column: 54, scope: !6292)
!6298 = !DILocation(line: 87, column: 3, scope: !6292)
!6299 = !DILocation(line: 88, column: 19, scope: !6292)
!6300 = !DILocation(line: 88, column: 25, scope: !6292)
!6301 = !DILocation(line: 88, column: 42, scope: !6292)
!6302 = !DILocation(line: 88, column: 48, scope: !6292)
!6303 = !DILocation(line: 88, column: 51, scope: !6292)
!6304 = !DILocation(line: 88, column: 54, scope: !6292)
!6305 = !DILocation(line: 88, column: 3, scope: !6292)
!6306 = !DILocation(line: 91, column: 10, scope: !6292)
!6307 = !DILocation(line: 91, column: 7, scope: !6292)
!6308 = !DILocation(line: 92, column: 10, scope: !6292)
!6309 = !DILocation(line: 92, column: 7, scope: !6292)
!6310 = !DILocation(line: 94, column: 3, scope: !6292)
!6311 = !DILocation(line: 94, column: 9, scope: !6292)
!6312 = !DILocation(line: 94, column: 15, scope: !6292)
!6313 = !DILocation(line: 95, column: 2, scope: !6292)
!6314 = !DILocation(line: 86, column: 54, scope: !6283)
!6315 = !DILocation(line: 86, column: 2, scope: !6283)
!6316 = distinct !{!6316, !6290, !6317, !5563, !5564}
!6317 = !DILocation(line: 95, column: 2, scope: !6280)
!6318 = !DILocation(line: 97, column: 9, scope: !6210)
!6319 = !DILocation(line: 97, column: 6, scope: !6210)
!6320 = !DILocation(line: 98, column: 9, scope: !6210)
!6321 = !DILocation(line: 98, column: 6, scope: !6210)
!6322 = !DILocation(line: 100, column: 18, scope: !6210)
!6323 = !DILocation(line: 100, column: 36, scope: !6210)
!6324 = !DILocation(line: 100, column: 2, scope: !6210)
!6325 = !DILocation(line: 102, column: 18, scope: !6210)
!6326 = !DILocation(line: 102, column: 2, scope: !6210)
!6327 = !DILocation(line: 103, column: 1, scope: !6210)
!6328 = distinct !DISubprogram(name: "hsu_chan_disable", scope: !3, file: !3, line: 45, type: !5389, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6329)
!6329 = !{!6330}
!6330 = !DILocalVariable(name: "hsuc", arg: 1, scope: !6328, file: !3, line: 45, type: !5093)
!6331 = !DILocation(line: 45, column: 58, scope: !6328)
!6332 = !DILocation(line: 47, column: 18, scope: !6328)
!6333 = !DILocation(line: 47, column: 2, scope: !6328)
!6334 = !DILocation(line: 48, column: 1, scope: !6328)
!6335 = distinct !DISubprogram(name: "hsu_chan_writel", scope: !5075, file: !5075, line: 108, type: !6336, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6338)
!6336 = !DISubroutineType(types: !6337)
!6337 = !{null, !5093, !109, !567}
!6338 = !{!6339, !6340, !6341}
!6339 = !DILocalVariable(name: "hsuc", arg: 1, scope: !6335, file: !5075, line: 108, type: !5093)
!6340 = !DILocalVariable(name: "offset", arg: 2, scope: !6335, file: !5075, line: 108, type: !109)
!6341 = !DILocalVariable(name: "value", arg: 3, scope: !6335, file: !5075, line: 109, type: !567)
!6342 = !DILocation(line: 108, column: 57, scope: !6335)
!6343 = !DILocation(line: 108, column: 67, scope: !6335)
!6344 = !DILocation(line: 109, column: 12, scope: !6335)
!6345 = !DILocation(line: 111, column: 9, scope: !6335)
!6346 = !DILocation(line: 111, column: 16, scope: !6335)
!6347 = !DILocation(line: 111, column: 22, scope: !6335)
!6348 = !DILocation(line: 111, column: 28, scope: !6335)
!6349 = !DILocation(line: 111, column: 26, scope: !6335)
!6350 = !DILocation(line: 111, column: 2, scope: !6335)
!6351 = !DILocation(line: 112, column: 1, scope: !6335)
!6352 = distinct !DISubprogram(name: "hsu_chan_enable", scope: !3, file: !3, line: 50, type: !5389, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6353)
!6353 = !{!6354, !6355}
!6354 = !DILocalVariable(name: "hsuc", arg: 1, scope: !6352, file: !3, line: 50, type: !5093)
!6355 = !DILocalVariable(name: "cr", scope: !6352, file: !3, line: 52, type: !567)
!6356 = !DILocation(line: 50, column: 57, scope: !6352)
!6357 = !DILocation(line: 52, column: 2, scope: !6352)
!6358 = !DILocation(line: 52, column: 6, scope: !6352)
!6359 = !DILocation(line: 54, column: 6, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6352, file: !3, line: 54, column: 6)
!6361 = !DILocation(line: 54, column: 12, scope: !6360)
!6362 = !DILocation(line: 54, column: 22, scope: !6360)
!6363 = !DILocation(line: 54, column: 6, scope: !6352)
!6364 = !DILocation(line: 55, column: 6, scope: !6360)
!6365 = !DILocation(line: 55, column: 3, scope: !6360)
!6366 = !DILocation(line: 56, column: 11, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6360, file: !3, line: 56, column: 11)
!6368 = !DILocation(line: 56, column: 17, scope: !6367)
!6369 = !DILocation(line: 56, column: 27, scope: !6367)
!6370 = !DILocation(line: 56, column: 11, scope: !6360)
!6371 = !DILocation(line: 57, column: 6, scope: !6367)
!6372 = !DILocation(line: 57, column: 3, scope: !6367)
!6373 = !DILocation(line: 59, column: 18, scope: !6352)
!6374 = !DILocation(line: 59, column: 35, scope: !6352)
!6375 = !DILocation(line: 59, column: 2, scope: !6352)
!6376 = !DILocation(line: 60, column: 1, scope: !6352)
!6377 = distinct !DISubprogram(name: "writel", scope: !6196, file: !6196, line: 66, type: !6378, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6381)
!6378 = !DISubroutineType(types: !6379)
!6379 = !{null, !7, !6380}
!6380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6201, size: 64)
!6381 = !{!6382, !6383}
!6382 = !DILocalVariable(name: "val", arg: 1, scope: !6377, file: !6196, line: 66, type: !7)
!6383 = !DILocalVariable(name: "addr", arg: 2, scope: !6377, file: !6196, line: 66, type: !6380)
!6384 = !DILocation(line: 66, column: 1, scope: !6377)
!6385 = !{i64 2154482591}
!6386 = distinct !DISubprogram(name: "to_virt_chan", scope: !264, file: !264, line: 39, type: !6387, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6389)
!6387 = !DISubroutineType(types: !6388)
!6388 = !{!262, !306}
!6389 = !{!6390, !6391}
!6390 = !DILocalVariable(name: "chan", arg: 1, scope: !6386, file: !264, line: 39, type: !306)
!6391 = !DILocalVariable(name: "__mptr", scope: !6392, file: !264, line: 41, type: !251)
!6392 = distinct !DILexicalBlock(scope: !6386, file: !264, line: 41, column: 9)
!6393 = !DILocation(line: 39, column: 67, scope: !6386)
!6394 = !DILocation(line: 41, column: 9, scope: !6392)
!6395 = !DILocation(line: 41, column: 9, scope: !6386)
!6396 = !DILocation(line: 41, column: 2, scope: !6386)
!6397 = distinct !DISubprogram(name: "dma_cookie_complete", scope: !5133, file: !5133, line: 52, type: !6398, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6400)
!6398 = !DISubroutineType(types: !6399)
!6399 = !{null, !4803}
!6400 = !{!6401}
!6401 = !DILocalVariable(name: "tx", arg: 1, scope: !6397, file: !5133, line: 52, type: !4803)
!6402 = !DILocation(line: 52, column: 72, scope: !6397)
!6403 = !DILocation(line: 54, column: 2, scope: !6397)
!6404 = !DILocation(line: 54, column: 2, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6406, file: !5133, line: 54, column: 2)
!6406 = distinct !DILexicalBlock(scope: !6397, file: !5133, line: 54, column: 2)
!6407 = !DILocation(line: 54, column: 2, scope: !6406)
!6408 = !DILocation(line: 54, column: 2, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6405, file: !5133, line: 54, column: 2)
!6410 = !DILocation(line: 54, column: 2, scope: !6411)
!6411 = distinct !DILexicalBlock(scope: !6409, file: !5133, line: 54, column: 2)
!6412 = !DILocation(line: 54, column: 2, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6409, file: !5133, line: 54, column: 2)
!6414 = !{i64 2154744939, i64 2154744968, i64 2154745014, i64 2154745072, i64 2154745126, i64 2154745180, i64 2154745235, i64 2154745266}
!6415 = !DILocation(line: 55, column: 31, scope: !6397)
!6416 = !DILocation(line: 55, column: 35, scope: !6397)
!6417 = !DILocation(line: 55, column: 2, scope: !6397)
!6418 = !DILocation(line: 55, column: 6, scope: !6397)
!6419 = !DILocation(line: 55, column: 12, scope: !6397)
!6420 = !DILocation(line: 55, column: 29, scope: !6397)
!6421 = !DILocation(line: 56, column: 2, scope: !6397)
!6422 = !DILocation(line: 56, column: 6, scope: !6397)
!6423 = !DILocation(line: 56, column: 13, scope: !6397)
!6424 = !DILocation(line: 57, column: 1, scope: !6397)
!6425 = distinct !DISubprogram(name: "list_add_tail", scope: !5680, file: !5680, line: 181, type: !6426, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6428)
!6426 = !DISubroutineType(types: !6427)
!6427 = !{null, !293, !293}
!6428 = !{!6429, !6430}
!6429 = !DILocalVariable(name: "new", arg: 1, scope: !6425, file: !5680, line: 181, type: !293)
!6430 = !DILocalVariable(name: "head", arg: 2, scope: !6425, file: !5680, line: 181, type: !293)
!6431 = !DILocation(line: 181, column: 52, scope: !6425)
!6432 = !DILocation(line: 181, column: 75, scope: !6425)
!6433 = !DILocation(line: 183, column: 13, scope: !6425)
!6434 = !DILocation(line: 183, column: 18, scope: !6425)
!6435 = !DILocation(line: 183, column: 24, scope: !6425)
!6436 = !DILocation(line: 183, column: 30, scope: !6425)
!6437 = !DILocation(line: 183, column: 2, scope: !6425)
!6438 = !DILocation(line: 184, column: 1, scope: !6425)
!6439 = distinct !DISubprogram(name: "tasklet_schedule", scope: !236, file: !236, line: 709, type: !5049, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6440)
!6440 = !{!6441}
!6441 = !DILocalVariable(name: "t", arg: 1, scope: !6439, file: !236, line: 709, type: !5036)
!6442 = !DILocation(line: 709, column: 60, scope: !6439)
!6443 = !DILocation(line: 711, column: 46, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6439, file: !236, line: 711, column: 6)
!6445 = !DILocation(line: 711, column: 49, scope: !6444)
!6446 = !DILocation(line: 711, column: 7, scope: !6444)
!6447 = !DILocation(line: 711, column: 6, scope: !6439)
!6448 = !DILocation(line: 712, column: 22, scope: !6444)
!6449 = !DILocation(line: 712, column: 3, scope: !6444)
!6450 = !DILocation(line: 713, column: 1, scope: !6439)
!6451 = distinct !DISubprogram(name: "__list_add", scope: !5680, file: !5680, line: 146, type: !6452, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6454)
!6452 = !DISubroutineType(types: !6453)
!6453 = !{null, !293, !293, !293}
!6454 = !{!6455, !6456, !6457}
!6455 = !DILocalVariable(name: "new", arg: 1, scope: !6451, file: !5680, line: 146, type: !293)
!6456 = !DILocalVariable(name: "prev", arg: 2, scope: !6451, file: !5680, line: 147, type: !293)
!6457 = !DILocalVariable(name: "next", arg: 3, scope: !6451, file: !5680, line: 148, type: !293)
!6458 = !DILocation(line: 146, column: 49, scope: !6451)
!6459 = !DILocation(line: 147, column: 28, scope: !6451)
!6460 = !DILocation(line: 148, column: 28, scope: !6451)
!6461 = !DILocation(line: 150, column: 24, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6451, file: !5680, line: 150, column: 6)
!6463 = !DILocation(line: 150, column: 29, scope: !6462)
!6464 = !DILocation(line: 150, column: 35, scope: !6462)
!6465 = !DILocation(line: 150, column: 7, scope: !6462)
!6466 = !DILocation(line: 150, column: 6, scope: !6451)
!6467 = !DILocation(line: 151, column: 3, scope: !6462)
!6468 = !DILocation(line: 153, column: 15, scope: !6451)
!6469 = !DILocation(line: 153, column: 2, scope: !6451)
!6470 = !DILocation(line: 153, column: 8, scope: !6451)
!6471 = !DILocation(line: 153, column: 13, scope: !6451)
!6472 = !DILocation(line: 154, column: 14, scope: !6451)
!6473 = !DILocation(line: 154, column: 2, scope: !6451)
!6474 = !DILocation(line: 154, column: 7, scope: !6451)
!6475 = !DILocation(line: 154, column: 12, scope: !6451)
!6476 = !DILocation(line: 155, column: 14, scope: !6451)
!6477 = !DILocation(line: 155, column: 2, scope: !6451)
!6478 = !DILocation(line: 155, column: 7, scope: !6451)
!6479 = !DILocation(line: 155, column: 12, scope: !6451)
!6480 = !DILocation(line: 156, column: 2, scope: !6451)
!6481 = !DILocation(line: 156, column: 2, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6451, file: !5680, line: 156, column: 2)
!6483 = !DILocation(line: 156, column: 2, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6482, file: !5680, line: 156, column: 2)
!6485 = !DILocation(line: 156, column: 2, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6482, file: !5680, line: 156, column: 2)
!6487 = !DILocation(line: 157, column: 1, scope: !6451)
!6488 = distinct !DISubprogram(name: "__list_add_valid", scope: !5680, file: !5680, line: 128, type: !6489, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6491)
!6489 = !DISubroutineType(types: !6490)
!6490 = !{!304, !293, !293, !293}
!6491 = !{!6492, !6493, !6494}
!6492 = !DILocalVariable(name: "new", arg: 1, scope: !6488, file: !5680, line: 128, type: !293)
!6493 = !DILocalVariable(name: "prev", arg: 2, scope: !6488, file: !5680, line: 129, type: !293)
!6494 = !DILocalVariable(name: "next", arg: 3, scope: !6488, file: !5680, line: 130, type: !293)
!6495 = !DILocation(line: 128, column: 55, scope: !6488)
!6496 = !DILocation(line: 129, column: 23, scope: !6488)
!6497 = !DILocation(line: 130, column: 23, scope: !6488)
!6498 = !DILocation(line: 132, column: 2, scope: !6488)
!6499 = distinct !DISubprogram(name: "test_and_set_bit", scope: !6500, file: !6500, line: 68, type: !6501, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6505)
!6500 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6501 = !DISubroutineType(types: !6502)
!6502 = !{!304, !455, !6503}
!6503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6504, size: 64)
!6504 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !256)
!6505 = !{!6506, !6507}
!6506 = !DILocalVariable(name: "nr", arg: 1, scope: !6499, file: !6500, line: 68, type: !455)
!6507 = !DILocalVariable(name: "addr", arg: 2, scope: !6499, file: !6500, line: 68, type: !6503)
!6508 = !DILocation(line: 68, column: 51, scope: !6499)
!6509 = !DILocation(line: 68, column: 79, scope: !6499)
!6510 = !DILocation(line: 70, column: 2, scope: !6499)
!6511 = !DILocation(line: 70, column: 2, scope: !6512)
!6512 = distinct !DILexicalBlock(scope: !6499, file: !6500, line: 70, column: 2)
!6513 = !DILocation(line: 71, column: 31, scope: !6499)
!6514 = !DILocation(line: 71, column: 38, scope: !6499)
!6515 = !DILocation(line: 71, column: 36, scope: !6499)
!6516 = !DILocation(line: 71, column: 2, scope: !6499)
!6517 = !DILocation(line: 72, column: 31, scope: !6499)
!6518 = !DILocation(line: 72, column: 35, scope: !6499)
!6519 = !DILocation(line: 72, column: 9, scope: !6499)
!6520 = !DILocation(line: 72, column: 2, scope: !6499)
!6521 = !DISubprogram(name: "__tasklet_schedule", scope: !236, file: !236, line: 707, type: !5049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6522 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6523, file: !6523, line: 94, type: !6524, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6526)
!6523 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6524 = !DISubroutineType(types: !6525)
!6525 = !{null, !6199, !466}
!6526 = !{!6527, !6528}
!6527 = !DILocalVariable(name: "v", arg: 1, scope: !6522, file: !6523, line: 94, type: !6199)
!6528 = !DILocalVariable(name: "size", arg: 2, scope: !6522, file: !6523, line: 94, type: !466)
!6529 = !DILocation(line: 94, column: 79, scope: !6522)
!6530 = !DILocation(line: 94, column: 89, scope: !6522)
!6531 = !DILocation(line: 96, column: 20, scope: !6522)
!6532 = !DILocation(line: 96, column: 23, scope: !6522)
!6533 = !DILocation(line: 96, column: 2, scope: !6522)
!6534 = !DILocation(line: 97, column: 2, scope: !6522)
!6535 = !DILocation(line: 98, column: 1, scope: !6522)
!6536 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !6537, file: !6537, line: 136, type: !6501, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6538)
!6537 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6538 = !{!6539, !6540, !6541}
!6539 = !DILocalVariable(name: "nr", arg: 1, scope: !6536, file: !6537, line: 136, type: !455)
!6540 = !DILocalVariable(name: "addr", arg: 2, scope: !6536, file: !6537, line: 136, type: !6503)
!6541 = !DILocalVariable(name: "c", scope: !6542, file: !6537, line: 138, type: !304)
!6542 = distinct !DILexicalBlock(scope: !6536, file: !6537, line: 138, column: 9)
!6543 = !DILocation(line: 136, column: 28, scope: !6536)
!6544 = !DILocation(line: 136, column: 56, scope: !6536)
!6545 = !DILocation(line: 138, column: 9, scope: !6542)
!6546 = !{i64 2147922628, i64 2147922667, i64 2147922688, i64 2147922725, i64 2147922748, i64 2147922757, i64 2147922860}
!6547 = !{i8 0, i8 2}
!6548 = !DILocation(line: 138, column: 9, scope: !6536)
!6549 = !DILocation(line: 138, column: 2, scope: !6536)
!6550 = distinct !DISubprogram(name: "kasan_check_write", scope: !6551, file: !6551, line: 44, type: !6552, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6554)
!6551 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6552 = !DISubroutineType(types: !6553)
!6553 = !{!304, !6199, !7}
!6554 = !{!6555, !6556}
!6555 = !DILocalVariable(name: "p", arg: 1, scope: !6550, file: !6551, line: 44, type: !6199)
!6556 = !DILocalVariable(name: "size", arg: 2, scope: !6550, file: !6551, line: 44, type: !7)
!6557 = !DILocation(line: 44, column: 59, scope: !6550)
!6558 = !DILocation(line: 44, column: 75, scope: !6550)
!6559 = !DILocation(line: 46, column: 2, scope: !6550)
!6560 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6561, file: !6561, line: 229, type: !6562, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6564)
!6561 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6562 = !DISubroutineType(types: !6563)
!6563 = !{null, !6199, !466, !109}
!6564 = !{!6565, !6566, !6567}
!6565 = !DILocalVariable(name: "ptr", arg: 1, scope: !6560, file: !6561, line: 229, type: !6199)
!6566 = !DILocalVariable(name: "size", arg: 2, scope: !6560, file: !6561, line: 229, type: !466)
!6567 = !DILocalVariable(name: "type", arg: 3, scope: !6560, file: !6561, line: 230, type: !109)
!6568 = !DILocation(line: 229, column: 60, scope: !6560)
!6569 = !DILocation(line: 229, column: 72, scope: !6560)
!6570 = !DILocation(line: 230, column: 15, scope: !6560)
!6571 = !DILocation(line: 230, column: 23, scope: !6560)
!6572 = distinct !DISubprogram(name: "vchan_next_desc", scope: !264, file: !264, line: 161, type: !6573, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6575)
!6573 = !DISubroutineType(types: !6574)
!6574 = !{!5056, !262}
!6575 = !{!6576, !6577, !6579, !6580}
!6576 = !DILocalVariable(name: "vc", arg: 1, scope: !6572, file: !264, line: 161, type: !262)
!6577 = !DILocalVariable(name: "head__", scope: !6578, file: !264, line: 163, type: !293)
!6578 = distinct !DILexicalBlock(scope: !6572, file: !264, line: 163, column: 9)
!6579 = !DILocalVariable(name: "pos__", scope: !6578, file: !264, line: 163, type: !293)
!6580 = !DILocalVariable(name: "__mptr", scope: !6581, file: !264, line: 163, type: !251)
!6581 = distinct !DILexicalBlock(scope: !6578, file: !264, line: 163, column: 9)
!6582 = !DILocation(line: 161, column: 75, scope: !6572)
!6583 = !DILocation(line: 163, column: 9, scope: !6578)
!6584 = !DILocation(line: 163, column: 9, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6578, file: !264, line: 163, column: 9)
!6586 = !DILocation(line: 163, column: 9, scope: !6587)
!6587 = distinct !DILexicalBlock(scope: !6585, file: !264, line: 163, column: 9)
!6588 = !DILocation(line: 163, column: 9, scope: !6581)
!6589 = !DILocation(line: 163, column: 9, scope: !6572)
!6590 = !DILocation(line: 163, column: 2, scope: !6572)
!6591 = distinct !DISubprogram(name: "list_del", scope: !5680, file: !5680, line: 227, type: !5681, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6592)
!6592 = !{!6593}
!6593 = !DILocalVariable(name: "entry", arg: 1, scope: !6591, file: !5680, line: 227, type: !293)
!6594 = !DILocation(line: 227, column: 47, scope: !6591)
!6595 = !DILocation(line: 229, column: 19, scope: !6591)
!6596 = !DILocation(line: 229, column: 2, scope: !6591)
!6597 = !DILocation(line: 230, column: 2, scope: !6591)
!6598 = !DILocation(line: 230, column: 9, scope: !6591)
!6599 = !DILocation(line: 230, column: 14, scope: !6591)
!6600 = !DILocation(line: 231, column: 2, scope: !6591)
!6601 = !DILocation(line: 231, column: 9, scope: !6591)
!6602 = !DILocation(line: 231, column: 14, scope: !6591)
!6603 = !DILocation(line: 232, column: 1, scope: !6591)
!6604 = distinct !DISubprogram(name: "to_hsu_dma_desc", scope: !5075, file: !5075, line: 81, type: !6605, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6607)
!6605 = !DISubroutineType(types: !6606)
!6606 = !{!5073, !5056}
!6607 = !{!6608, !6609}
!6608 = !DILocalVariable(name: "vdesc", arg: 1, scope: !6604, file: !5075, line: 81, type: !5056)
!6609 = !DILocalVariable(name: "__mptr", scope: !6610, file: !5075, line: 83, type: !251)
!6610 = distinct !DILexicalBlock(scope: !6604, file: !5075, line: 83, column: 9)
!6611 = !DILocation(line: 81, column: 74, scope: !6604)
!6612 = !DILocation(line: 83, column: 9, scope: !6610)
!6613 = !DILocation(line: 83, column: 9, scope: !6604)
!6614 = !DILocation(line: 83, column: 2, scope: !6604)
!6615 = distinct !DISubprogram(name: "__list_del_entry", scope: !5680, file: !5680, line: 213, type: !5681, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6616)
!6616 = !{!6617}
!6617 = !DILocalVariable(name: "entry", arg: 1, scope: !6615, file: !5680, line: 213, type: !293)
!6618 = !DILocation(line: 213, column: 55, scope: !6615)
!6619 = !DILocation(line: 215, column: 30, scope: !6620)
!6620 = distinct !DILexicalBlock(scope: !6615, file: !5680, line: 215, column: 6)
!6621 = !DILocation(line: 215, column: 7, scope: !6620)
!6622 = !DILocation(line: 215, column: 6, scope: !6615)
!6623 = !DILocation(line: 216, column: 3, scope: !6620)
!6624 = !DILocation(line: 218, column: 13, scope: !6615)
!6625 = !DILocation(line: 218, column: 20, scope: !6615)
!6626 = !DILocation(line: 218, column: 26, scope: !6615)
!6627 = !DILocation(line: 218, column: 33, scope: !6615)
!6628 = !DILocation(line: 218, column: 2, scope: !6615)
!6629 = !DILocation(line: 219, column: 1, scope: !6615)
!6630 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5680, file: !5680, line: 134, type: !6631, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6633)
!6631 = !DISubroutineType(types: !6632)
!6632 = !{!304, !293}
!6633 = !{!6634}
!6634 = !DILocalVariable(name: "entry", arg: 1, scope: !6630, file: !5680, line: 134, type: !293)
!6635 = !DILocation(line: 134, column: 61, scope: !6630)
!6636 = !DILocation(line: 136, column: 2, scope: !6630)
!6637 = distinct !DISubprogram(name: "__list_del", scope: !5680, file: !5680, line: 193, type: !6426, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6638)
!6638 = !{!6639, !6640}
!6639 = !DILocalVariable(name: "prev", arg: 1, scope: !6637, file: !5680, line: 193, type: !293)
!6640 = !DILocalVariable(name: "next", arg: 2, scope: !6637, file: !5680, line: 193, type: !293)
!6641 = !DILocation(line: 193, column: 50, scope: !6637)
!6642 = !DILocation(line: 193, column: 75, scope: !6637)
!6643 = !DILocation(line: 195, column: 15, scope: !6637)
!6644 = !DILocation(line: 195, column: 2, scope: !6637)
!6645 = !DILocation(line: 195, column: 8, scope: !6637)
!6646 = !DILocation(line: 195, column: 13, scope: !6637)
!6647 = !DILocation(line: 196, column: 2, scope: !6637)
!6648 = !DILocation(line: 196, column: 2, scope: !6649)
!6649 = distinct !DILexicalBlock(scope: !6637, file: !5680, line: 196, column: 2)
!6650 = !DILocation(line: 196, column: 2, scope: !6651)
!6651 = distinct !DILexicalBlock(scope: !6649, file: !5680, line: 196, column: 2)
!6652 = !DILocation(line: 196, column: 2, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6649, file: !5680, line: 196, column: 2)
!6654 = !DILocation(line: 197, column: 1, scope: !6637)
!6655 = !DISubprogram(name: "devm_kmalloc", scope: !94, file: !94, line: 305, type: !5645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6656 = distinct !DISubprogram(name: "devm_kmalloc_array", scope: !94, file: !94, line: 316, type: !5661, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6657)
!6657 = !{!6658, !6659, !6660, !6661, !6662}
!6658 = !DILocalVariable(name: "dev", arg: 1, scope: !6656, file: !94, line: 316, type: !337)
!6659 = !DILocalVariable(name: "n", arg: 2, scope: !6656, file: !94, line: 317, type: !466)
!6660 = !DILocalVariable(name: "size", arg: 3, scope: !6656, file: !94, line: 317, type: !466)
!6661 = !DILocalVariable(name: "flags", arg: 4, scope: !6656, file: !94, line: 317, type: !258)
!6662 = !DILocalVariable(name: "bytes", scope: !6656, file: !94, line: 319, type: !466)
!6663 = !DILocation(line: 316, column: 55, scope: !6656)
!6664 = !DILocation(line: 317, column: 19, scope: !6656)
!6665 = !DILocation(line: 317, column: 29, scope: !6656)
!6666 = !DILocation(line: 317, column: 41, scope: !6656)
!6667 = !DILocation(line: 319, column: 2, scope: !6656)
!6668 = !DILocation(line: 319, column: 9, scope: !6656)
!6669 = !DILocation(line: 321, column: 6, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !6656, file: !94, line: 321, column: 6)
!6671 = !DILocation(line: 321, column: 6, scope: !6656)
!6672 = !DILocation(line: 322, column: 3, scope: !6670)
!6673 = !DILocation(line: 324, column: 22, scope: !6656)
!6674 = !DILocation(line: 324, column: 27, scope: !6656)
!6675 = !DILocation(line: 324, column: 34, scope: !6656)
!6676 = !DILocation(line: 324, column: 9, scope: !6656)
!6677 = !DILocation(line: 324, column: 2, scope: !6656)
!6678 = !DILocation(line: 325, column: 1, scope: !6656)
!6679 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6680, file: !6680, line: 51, type: !6681, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6683)
!6680 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6681 = !DISubroutineType(types: !6682)
!6682 = !{!304, !304}
!6683 = !{!6684}
!6684 = !DILocalVariable(name: "overflow", arg: 1, scope: !6679, file: !6680, line: 51, type: !304)
!6685 = !DILocation(line: 51, column: 60, scope: !6679)
!6686 = !DILocation(line: 53, column: 9, scope: !6679)
!6687 = !DILocation(line: 53, column: 2, scope: !6679)
!6688 = !DISubprogram(name: "kfree", scope: !241, file: !241, line: 227, type: !6689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6689 = !DISubroutineType(types: !6690)
!6690 = !{null, !1797}
!6691 = distinct !DISubprogram(name: "set_bit", scope: !6500, file: !6500, line: 26, type: !6692, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6694)
!6692 = !DISubroutineType(types: !6693)
!6693 = !{null, !455, !6503}
!6694 = !{!6695, !6696}
!6695 = !DILocalVariable(name: "nr", arg: 1, scope: !6691, file: !6500, line: 26, type: !455)
!6696 = !DILocalVariable(name: "addr", arg: 2, scope: !6691, file: !6500, line: 26, type: !6503)
!6697 = !DILocation(line: 26, column: 42, scope: !6691)
!6698 = !DILocation(line: 26, column: 70, scope: !6691)
!6699 = !DILocation(line: 28, column: 26, scope: !6691)
!6700 = !DILocation(line: 28, column: 33, scope: !6691)
!6701 = !DILocation(line: 28, column: 31, scope: !6691)
!6702 = !DILocation(line: 28, column: 2, scope: !6691)
!6703 = !DILocation(line: 29, column: 15, scope: !6691)
!6704 = !DILocation(line: 29, column: 19, scope: !6691)
!6705 = !DILocation(line: 29, column: 2, scope: !6691)
!6706 = !DILocation(line: 30, column: 1, scope: !6691)
!6707 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6523, file: !6523, line: 80, type: !6524, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6708)
!6708 = !{!6709, !6710}
!6709 = !DILocalVariable(name: "v", arg: 1, scope: !6707, file: !6523, line: 80, type: !6199)
!6710 = !DILocalVariable(name: "size", arg: 2, scope: !6707, file: !6523, line: 80, type: !466)
!6711 = !DILocation(line: 80, column: 74, scope: !6707)
!6712 = !DILocation(line: 80, column: 84, scope: !6707)
!6713 = !DILocation(line: 82, column: 20, scope: !6707)
!6714 = !DILocation(line: 82, column: 23, scope: !6707)
!6715 = !DILocation(line: 82, column: 2, scope: !6707)
!6716 = !DILocation(line: 83, column: 2, scope: !6707)
!6717 = !DILocation(line: 84, column: 1, scope: !6707)
!6718 = distinct !DISubprogram(name: "arch_set_bit", scope: !6537, file: !6537, line: 52, type: !6692, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6719)
!6719 = !{!6720, !6721}
!6720 = !DILocalVariable(name: "nr", arg: 1, scope: !6718, file: !6537, line: 52, type: !455)
!6721 = !DILocalVariable(name: "addr", arg: 2, scope: !6718, file: !6537, line: 52, type: !6503)
!6722 = !DILocation(line: 52, column: 19, scope: !6718)
!6723 = !DILocation(line: 52, column: 47, scope: !6718)
!6724 = !DILocation(line: 54, column: 27, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6718, file: !6537, line: 54, column: 6)
!6726 = !DILocation(line: 54, column: 6, scope: !6725)
!6727 = !DILocation(line: 54, column: 6, scope: !6718)
!6728 = !DILocation(line: 56, column: 6, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6725, file: !6537, line: 54, column: 32)
!6730 = !DILocation(line: 57, column: 12, scope: !6729)
!6731 = !DILocation(line: 55, column: 3, scope: !6729)
!6732 = !{i64 2147916177, i64 2147916216, i64 2147916237, i64 2147916274, i64 2147916297, i64 2147916167}
!6733 = !DILocation(line: 59, column: 2, scope: !6729)
!6734 = !DILocation(line: 61, column: 8, scope: !6735)
!6735 = distinct !DILexicalBlock(scope: !6725, file: !6537, line: 59, column: 9)
!6736 = !DILocation(line: 61, column: 32, scope: !6735)
!6737 = !DILocation(line: 60, column: 3, scope: !6735)
!6738 = !{i64 2147916462, i64 2147916501, i64 2147916522, i64 2147916559, i64 2147916582, i64 2147916452}
!6739 = !DILocation(line: 63, column: 1, scope: !6718)
!6740 = distinct !DISubprogram(name: "vchan_free_chan_resources", scope: !264, file: !264, line: 187, type: !6741, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6743)
!6741 = !DISubroutineType(types: !6742)
!6742 = !{null, !262}
!6743 = !{!6744, !6745, !6746, !6747, !6748, !6752, !6753, !6756}
!6744 = !DILocalVariable(name: "vc", arg: 1, scope: !6740, file: !264, line: 187, type: !262)
!6745 = !DILocalVariable(name: "vd", scope: !6740, file: !264, line: 189, type: !5056)
!6746 = !DILocalVariable(name: "flags", scope: !6740, file: !264, line: 190, type: !256)
!6747 = !DILocalVariable(name: "head", scope: !6740, file: !264, line: 191, type: !290)
!6748 = !DILocalVariable(name: "__dummy", scope: !6749, file: !264, line: 193, type: !256)
!6749 = distinct !DILexicalBlock(scope: !6750, file: !264, line: 193, column: 2)
!6750 = distinct !DILexicalBlock(scope: !6751, file: !264, line: 193, column: 2)
!6751 = distinct !DILexicalBlock(scope: !6740, file: !264, line: 193, column: 2)
!6752 = !DILocalVariable(name: "__dummy2", scope: !6749, file: !264, line: 193, type: !256)
!6753 = !DILocalVariable(name: "__mptr", scope: !6754, file: !264, line: 195, type: !251)
!6754 = distinct !DILexicalBlock(scope: !6755, file: !264, line: 195, column: 2)
!6755 = distinct !DILexicalBlock(scope: !6740, file: !264, line: 195, column: 2)
!6756 = !DILocalVariable(name: "__mptr", scope: !6757, file: !264, line: 195, type: !251)
!6757 = distinct !DILexicalBlock(scope: !6758, file: !264, line: 195, column: 2)
!6758 = distinct !DILexicalBlock(scope: !6755, file: !264, line: 195, column: 2)
!6759 = !DILocation(line: 187, column: 68, scope: !6740)
!6760 = !DILocation(line: 189, column: 2, scope: !6740)
!6761 = !DILocation(line: 189, column: 24, scope: !6740)
!6762 = !DILocation(line: 190, column: 2, scope: !6740)
!6763 = !DILocation(line: 190, column: 16, scope: !6740)
!6764 = !DILocation(line: 191, column: 2, scope: !6740)
!6765 = !DILocation(line: 193, column: 2, scope: !6740)
!6766 = !DILocation(line: 193, column: 2, scope: !6751)
!6767 = !DILocation(line: 193, column: 2, scope: !6749)
!6768 = !DILocation(line: 193, column: 2, scope: !6750)
!6769 = !DILocation(line: 194, column: 28, scope: !6740)
!6770 = !DILocation(line: 194, column: 2, scope: !6740)
!6771 = !DILocation(line: 195, column: 2, scope: !6754)
!6772 = !DILocation(line: 195, column: 2, scope: !6755)
!6773 = !DILocation(line: 195, column: 2, scope: !6758)
!6774 = !DILocation(line: 196, column: 31, scope: !6758)
!6775 = !DILocation(line: 196, column: 35, scope: !6758)
!6776 = !DILocation(line: 196, column: 3, scope: !6758)
!6777 = !DILocation(line: 195, column: 2, scope: !6757)
!6778 = distinct !{!6778, !6772, !6779, !5563, !5564}
!6779 = !DILocation(line: 196, column: 37, scope: !6755)
!6780 = !DILocation(line: 197, column: 26, scope: !6740)
!6781 = !DILocation(line: 197, column: 30, scope: !6740)
!6782 = !DILocation(line: 197, column: 36, scope: !6740)
!6783 = !DILocation(line: 197, column: 2, scope: !6740)
!6784 = !DILocation(line: 199, column: 27, scope: !6740)
!6785 = !DILocation(line: 199, column: 2, scope: !6740)
!6786 = !DILocation(line: 200, column: 1, scope: !6740)
!6787 = distinct !DISubprogram(name: "vchan_get_all_descriptors", scope: !264, file: !264, line: 177, type: !6788, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6790)
!6788 = !DISubroutineType(types: !6789)
!6789 = !{null, !262, !293}
!6790 = !{!6791, !6792}
!6791 = !DILocalVariable(name: "vc", arg: 1, scope: !6787, file: !264, line: 177, type: !262)
!6792 = !DILocalVariable(name: "head", arg: 2, scope: !6787, file: !264, line: 178, type: !293)
!6793 = !DILocation(line: 177, column: 68, scope: !6787)
!6794 = !DILocation(line: 178, column: 20, scope: !6787)
!6795 = !DILocation(line: 180, column: 25, scope: !6787)
!6796 = !DILocation(line: 180, column: 29, scope: !6787)
!6797 = !DILocation(line: 180, column: 45, scope: !6787)
!6798 = !DILocation(line: 180, column: 2, scope: !6787)
!6799 = !DILocation(line: 181, column: 25, scope: !6787)
!6800 = !DILocation(line: 181, column: 29, scope: !6787)
!6801 = !DILocation(line: 181, column: 45, scope: !6787)
!6802 = !DILocation(line: 181, column: 2, scope: !6787)
!6803 = !DILocation(line: 182, column: 25, scope: !6787)
!6804 = !DILocation(line: 182, column: 29, scope: !6787)
!6805 = !DILocation(line: 182, column: 42, scope: !6787)
!6806 = !DILocation(line: 182, column: 2, scope: !6787)
!6807 = !DILocation(line: 183, column: 25, scope: !6787)
!6808 = !DILocation(line: 183, column: 29, scope: !6787)
!6809 = !DILocation(line: 183, column: 45, scope: !6787)
!6810 = !DILocation(line: 183, column: 2, scope: !6787)
!6811 = !DILocation(line: 184, column: 25, scope: !6787)
!6812 = !DILocation(line: 184, column: 29, scope: !6787)
!6813 = !DILocation(line: 184, column: 46, scope: !6787)
!6814 = !DILocation(line: 184, column: 2, scope: !6787)
!6815 = !DILocation(line: 185, column: 1, scope: !6787)
!6816 = distinct !DISubprogram(name: "dmaengine_desc_clear_reuse", scope: !142, file: !142, line: 1555, type: !6398, scopeLine: 1556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6817)
!6817 = !{!6818}
!6818 = !DILocalVariable(name: "tx", arg: 1, scope: !6816, file: !142, line: 1555, type: !4803)
!6819 = !DILocation(line: 1555, column: 79, scope: !6816)
!6820 = !DILocation(line: 1557, column: 2, scope: !6816)
!6821 = !DILocation(line: 1557, column: 6, scope: !6816)
!6822 = !DILocation(line: 1557, column: 12, scope: !6816)
!6823 = !DILocation(line: 1558, column: 1, scope: !6816)
!6824 = !DISubprogram(name: "vchan_dma_desc_free_list", scope: !264, file: !264, line: 44, type: !6788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6825 = distinct !DISubprogram(name: "list_splice_tail_init", scope: !5680, file: !5680, line: 585, type: !6426, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6826)
!6826 = !{!6827, !6828}
!6827 = !DILocalVariable(name: "list", arg: 1, scope: !6825, file: !5680, line: 585, type: !293)
!6828 = !DILocalVariable(name: "head", arg: 2, scope: !6825, file: !5680, line: 586, type: !293)
!6829 = !DILocation(line: 585, column: 60, scope: !6825)
!6830 = !DILocation(line: 586, column: 25, scope: !6825)
!6831 = !DILocation(line: 588, column: 18, scope: !6832)
!6832 = distinct !DILexicalBlock(scope: !6825, file: !5680, line: 588, column: 6)
!6833 = !DILocation(line: 588, column: 7, scope: !6832)
!6834 = !DILocation(line: 588, column: 6, scope: !6825)
!6835 = !DILocation(line: 589, column: 17, scope: !6836)
!6836 = distinct !DILexicalBlock(scope: !6832, file: !5680, line: 588, column: 25)
!6837 = !DILocation(line: 589, column: 23, scope: !6836)
!6838 = !DILocation(line: 589, column: 29, scope: !6836)
!6839 = !DILocation(line: 589, column: 35, scope: !6836)
!6840 = !DILocation(line: 589, column: 3, scope: !6836)
!6841 = !DILocation(line: 590, column: 18, scope: !6836)
!6842 = !DILocation(line: 590, column: 3, scope: !6836)
!6843 = !DILocation(line: 591, column: 2, scope: !6836)
!6844 = !DILocation(line: 592, column: 1, scope: !6825)
!6845 = distinct !DISubprogram(name: "list_empty", scope: !5680, file: !5680, line: 371, type: !6846, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6850)
!6846 = !DISubroutineType(types: !6847)
!6847 = !{!109, !6848}
!6848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6849, size: 64)
!6849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!6850 = !{!6851}
!6851 = !DILocalVariable(name: "head", arg: 1, scope: !6845, file: !5680, line: 371, type: !6848)
!6852 = !DILocation(line: 371, column: 54, scope: !6845)
!6853 = !DILocation(line: 373, column: 9, scope: !6854)
!6854 = distinct !DILexicalBlock(scope: !6845, file: !5680, line: 373, column: 9)
!6855 = !DILocation(line: 373, column: 9, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !6854, file: !5680, line: 373, column: 9)
!6857 = !DILocation(line: 373, column: 34, scope: !6845)
!6858 = !DILocation(line: 373, column: 31, scope: !6845)
!6859 = !DILocation(line: 373, column: 2, scope: !6845)
!6860 = distinct !DISubprogram(name: "__list_splice", scope: !5680, file: !5680, line: 523, type: !6861, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6863)
!6861 = !DISubroutineType(types: !6862)
!6862 = !{null, !6848, !293, !293}
!6863 = !{!6864, !6865, !6866, !6867, !6868}
!6864 = !DILocalVariable(name: "list", arg: 1, scope: !6860, file: !5680, line: 523, type: !6848)
!6865 = !DILocalVariable(name: "prev", arg: 2, scope: !6860, file: !5680, line: 524, type: !293)
!6866 = !DILocalVariable(name: "next", arg: 3, scope: !6860, file: !5680, line: 525, type: !293)
!6867 = !DILocalVariable(name: "first", scope: !6860, file: !5680, line: 527, type: !293)
!6868 = !DILocalVariable(name: "last", scope: !6860, file: !5680, line: 528, type: !293)
!6869 = !DILocation(line: 523, column: 58, scope: !6860)
!6870 = !DILocation(line: 524, column: 24, scope: !6860)
!6871 = !DILocation(line: 525, column: 24, scope: !6860)
!6872 = !DILocation(line: 527, column: 2, scope: !6860)
!6873 = !DILocation(line: 527, column: 20, scope: !6860)
!6874 = !DILocation(line: 527, column: 28, scope: !6860)
!6875 = !DILocation(line: 527, column: 34, scope: !6860)
!6876 = !DILocation(line: 528, column: 2, scope: !6860)
!6877 = !DILocation(line: 528, column: 20, scope: !6860)
!6878 = !DILocation(line: 528, column: 27, scope: !6860)
!6879 = !DILocation(line: 528, column: 33, scope: !6860)
!6880 = !DILocation(line: 530, column: 16, scope: !6860)
!6881 = !DILocation(line: 530, column: 2, scope: !6860)
!6882 = !DILocation(line: 530, column: 9, scope: !6860)
!6883 = !DILocation(line: 530, column: 14, scope: !6860)
!6884 = !DILocation(line: 531, column: 15, scope: !6860)
!6885 = !DILocation(line: 531, column: 2, scope: !6860)
!6886 = !DILocation(line: 531, column: 8, scope: !6860)
!6887 = !DILocation(line: 531, column: 13, scope: !6860)
!6888 = !DILocation(line: 533, column: 15, scope: !6860)
!6889 = !DILocation(line: 533, column: 2, scope: !6860)
!6890 = !DILocation(line: 533, column: 8, scope: !6860)
!6891 = !DILocation(line: 533, column: 13, scope: !6860)
!6892 = !DILocation(line: 534, column: 15, scope: !6860)
!6893 = !DILocation(line: 534, column: 2, scope: !6860)
!6894 = !DILocation(line: 534, column: 8, scope: !6860)
!6895 = !DILocation(line: 534, column: 13, scope: !6860)
!6896 = !DILocation(line: 535, column: 1, scope: !6860)
!6897 = distinct !DISubprogram(name: "to_hsu_dma_chan", scope: !5075, file: !5075, line: 98, type: !6898, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6900)
!6898 = !DISubroutineType(types: !6899)
!6899 = !{!5093, !306}
!6900 = !{!6901, !6902}
!6901 = !DILocalVariable(name: "chan", arg: 1, scope: !6897, file: !5075, line: 98, type: !306)
!6902 = !DILocalVariable(name: "__mptr", scope: !6903, file: !5075, line: 100, type: !251)
!6903 = distinct !DILexicalBlock(scope: !6897, file: !5075, line: 100, column: 9)
!6904 = !DILocation(line: 98, column: 69, scope: !6897)
!6905 = !DILocation(line: 100, column: 9, scope: !6903)
!6906 = !DILocation(line: 100, column: 9, scope: !6897)
!6907 = !DILocation(line: 100, column: 2, scope: !6897)
!6908 = distinct !DISubprogram(name: "hsu_dma_alloc_desc", scope: !3, file: !3, line: 244, type: !6909, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6911)
!6909 = !DISubroutineType(types: !6910)
!6910 = !{!5073, !7}
!6911 = !{!6912, !6913}
!6912 = !DILocalVariable(name: "nents", arg: 1, scope: !6908, file: !3, line: 244, type: !7)
!6913 = !DILocalVariable(name: "desc", scope: !6908, file: !3, line: 246, type: !5073)
!6914 = !DILocation(line: 244, column: 61, scope: !6908)
!6915 = !DILocation(line: 246, column: 2, scope: !6908)
!6916 = !DILocation(line: 246, column: 23, scope: !6908)
!6917 = !DILocation(line: 248, column: 9, scope: !6908)
!6918 = !DILocation(line: 248, column: 7, scope: !6908)
!6919 = !DILocation(line: 249, column: 7, scope: !6920)
!6920 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 249, column: 6)
!6921 = !DILocation(line: 249, column: 6, scope: !6908)
!6922 = !DILocation(line: 250, column: 3, scope: !6920)
!6923 = !DILocation(line: 252, column: 21, scope: !6908)
!6924 = !DILocation(line: 252, column: 13, scope: !6908)
!6925 = !DILocation(line: 252, column: 2, scope: !6908)
!6926 = !DILocation(line: 252, column: 8, scope: !6908)
!6927 = !DILocation(line: 252, column: 11, scope: !6908)
!6928 = !DILocation(line: 253, column: 7, scope: !6929)
!6929 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 253, column: 6)
!6930 = !DILocation(line: 253, column: 13, scope: !6929)
!6931 = !DILocation(line: 253, column: 6, scope: !6908)
!6932 = !DILocation(line: 254, column: 9, scope: !6933)
!6933 = distinct !DILexicalBlock(scope: !6929, file: !3, line: 253, column: 17)
!6934 = !DILocation(line: 254, column: 3, scope: !6933)
!6935 = !DILocation(line: 255, column: 3, scope: !6933)
!6936 = !DILocation(line: 258, column: 9, scope: !6908)
!6937 = !DILocation(line: 258, column: 2, scope: !6908)
!6938 = !DILocation(line: 259, column: 1, scope: !6908)
!6939 = !DISubprogram(name: "sg_next", scope: !4893, file: !4893, line: 421, type: !6940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6940 = !DISubroutineType(types: !6941)
!6941 = !{!4891, !4891}
!6942 = distinct !DISubprogram(name: "vchan_tx_prep", scope: !264, file: !264, line: 56, type: !6943, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6945)
!6943 = !DISubroutineType(types: !6944)
!6944 = !{!4803, !262, !5056, !256}
!6945 = !{!6946, !6947, !6948, !6949, !6950, !6954}
!6946 = !DILocalVariable(name: "vc", arg: 1, scope: !6942, file: !264, line: 56, type: !262)
!6947 = !DILocalVariable(name: "vd", arg: 2, scope: !6942, file: !264, line: 57, type: !5056)
!6948 = !DILocalVariable(name: "tx_flags", arg: 3, scope: !6942, file: !264, line: 57, type: !256)
!6949 = !DILocalVariable(name: "flags", scope: !6942, file: !264, line: 59, type: !256)
!6950 = !DILocalVariable(name: "__dummy", scope: !6951, file: !264, line: 69, type: !256)
!6951 = distinct !DILexicalBlock(scope: !6952, file: !264, line: 69, column: 2)
!6952 = distinct !DILexicalBlock(scope: !6953, file: !264, line: 69, column: 2)
!6953 = distinct !DILexicalBlock(scope: !6942, file: !264, line: 69, column: 2)
!6954 = !DILocalVariable(name: "__dummy2", scope: !6951, file: !264, line: 69, type: !256)
!6955 = !DILocation(line: 56, column: 83, scope: !6942)
!6956 = !DILocation(line: 57, column: 24, scope: !6942)
!6957 = !DILocation(line: 57, column: 42, scope: !6942)
!6958 = !DILocation(line: 59, column: 2, scope: !6942)
!6959 = !DILocation(line: 59, column: 16, scope: !6942)
!6960 = !DILocation(line: 61, column: 32, scope: !6942)
!6961 = !DILocation(line: 61, column: 36, scope: !6942)
!6962 = !DILocation(line: 61, column: 41, scope: !6942)
!6963 = !DILocation(line: 61, column: 45, scope: !6942)
!6964 = !DILocation(line: 61, column: 2, scope: !6942)
!6965 = !DILocation(line: 62, column: 17, scope: !6942)
!6966 = !DILocation(line: 62, column: 2, scope: !6942)
!6967 = !DILocation(line: 62, column: 6, scope: !6942)
!6968 = !DILocation(line: 62, column: 9, scope: !6942)
!6969 = !DILocation(line: 62, column: 15, scope: !6942)
!6970 = !DILocation(line: 63, column: 2, scope: !6942)
!6971 = !DILocation(line: 63, column: 6, scope: !6942)
!6972 = !DILocation(line: 63, column: 9, scope: !6942)
!6973 = !DILocation(line: 63, column: 19, scope: !6942)
!6974 = !DILocation(line: 64, column: 2, scope: !6942)
!6975 = !DILocation(line: 64, column: 6, scope: !6942)
!6976 = !DILocation(line: 64, column: 9, scope: !6942)
!6977 = !DILocation(line: 64, column: 19, scope: !6942)
!6978 = !DILocation(line: 66, column: 2, scope: !6942)
!6979 = !DILocation(line: 66, column: 6, scope: !6942)
!6980 = !DILocation(line: 66, column: 16, scope: !6942)
!6981 = !DILocation(line: 66, column: 23, scope: !6942)
!6982 = !DILocation(line: 67, column: 2, scope: !6942)
!6983 = !DILocation(line: 67, column: 6, scope: !6942)
!6984 = !DILocation(line: 67, column: 16, scope: !6942)
!6985 = !DILocation(line: 67, column: 24, scope: !6942)
!6986 = !DILocation(line: 69, column: 2, scope: !6942)
!6987 = !DILocation(line: 69, column: 2, scope: !6953)
!6988 = !DILocation(line: 69, column: 2, scope: !6951)
!6989 = !DILocation(line: 69, column: 2, scope: !6952)
!6990 = !DILocation(line: 70, column: 17, scope: !6942)
!6991 = !DILocation(line: 70, column: 21, scope: !6942)
!6992 = !DILocation(line: 70, column: 28, scope: !6942)
!6993 = !DILocation(line: 70, column: 32, scope: !6942)
!6994 = !DILocation(line: 70, column: 2, scope: !6942)
!6995 = !DILocation(line: 71, column: 26, scope: !6942)
!6996 = !DILocation(line: 71, column: 30, scope: !6942)
!6997 = !DILocation(line: 71, column: 36, scope: !6942)
!6998 = !DILocation(line: 71, column: 2, scope: !6942)
!6999 = !DILocation(line: 73, column: 10, scope: !6942)
!7000 = !DILocation(line: 73, column: 14, scope: !6942)
!7001 = !DILocation(line: 74, column: 1, scope: !6942)
!7002 = !DILocation(line: 73, column: 2, scope: !6942)
!7003 = distinct !DISubprogram(name: "kzalloc", scope: !241, file: !241, line: 719, type: !7004, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7006)
!7004 = !DISubroutineType(types: !7005)
!7005 = !{!251, !466, !258}
!7006 = !{!7007, !7008}
!7007 = !DILocalVariable(name: "size", arg: 1, scope: !7003, file: !241, line: 719, type: !466)
!7008 = !DILocalVariable(name: "flags", arg: 2, scope: !7003, file: !241, line: 719, type: !258)
!7009 = !DILocation(line: 719, column: 52, scope: !7003)
!7010 = !DILocation(line: 719, column: 64, scope: !7003)
!7011 = !DILocation(line: 721, column: 17, scope: !7003)
!7012 = !DILocation(line: 721, column: 23, scope: !7003)
!7013 = !DILocation(line: 721, column: 29, scope: !7003)
!7014 = !DILocation(line: 721, column: 9, scope: !7003)
!7015 = !DILocation(line: 721, column: 2, scope: !7003)
!7016 = distinct !DISubprogram(name: "kcalloc", scope: !241, file: !241, line: 666, type: !7017, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7019)
!7017 = !DISubroutineType(types: !7018)
!7018 = !{!251, !466, !466, !258}
!7019 = !{!7020, !7021, !7022}
!7020 = !DILocalVariable(name: "n", arg: 1, scope: !7016, file: !241, line: 666, type: !466)
!7021 = !DILocalVariable(name: "size", arg: 2, scope: !7016, file: !241, line: 666, type: !466)
!7022 = !DILocalVariable(name: "flags", arg: 3, scope: !7016, file: !241, line: 666, type: !258)
!7023 = !DILocation(line: 666, column: 55, scope: !7016)
!7024 = !DILocation(line: 666, column: 65, scope: !7016)
!7025 = !DILocation(line: 666, column: 77, scope: !7016)
!7026 = !DILocation(line: 668, column: 23, scope: !7016)
!7027 = !DILocation(line: 668, column: 26, scope: !7016)
!7028 = !DILocation(line: 668, column: 32, scope: !7016)
!7029 = !DILocation(line: 668, column: 38, scope: !7016)
!7030 = !DILocation(line: 668, column: 9, scope: !7016)
!7031 = !DILocation(line: 668, column: 2, scope: !7016)
!7032 = distinct !DISubprogram(name: "kmalloc", scope: !241, file: !241, line: 591, type: !7004, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7033)
!7033 = !{!7034, !7035, !7036}
!7034 = !DILocalVariable(name: "size", arg: 1, scope: !7032, file: !241, line: 591, type: !466)
!7035 = !DILocalVariable(name: "flags", arg: 2, scope: !7032, file: !241, line: 591, type: !258)
!7036 = !DILocalVariable(name: "index", scope: !7037, file: !241, line: 594, type: !7)
!7037 = distinct !DILexicalBlock(scope: !7038, file: !241, line: 593, column: 42)
!7038 = distinct !DILexicalBlock(scope: !7032, file: !241, line: 593, column: 6)
!7039 = !DILocation(line: 591, column: 61, scope: !7032)
!7040 = !DILocation(line: 591, column: 73, scope: !7032)
!7041 = !DILocation(line: 593, column: 27, scope: !7038)
!7042 = !DILocation(line: 593, column: 6, scope: !7038)
!7043 = !DILocation(line: 593, column: 33, scope: !7038)
!7044 = !DILocation(line: 593, column: 36, scope: !7038)
!7045 = !DILocation(line: 593, column: 6, scope: !7032)
!7046 = !DILocation(line: 594, column: 3, scope: !7037)
!7047 = !DILocation(line: 594, column: 16, scope: !7037)
!7048 = !DILocation(line: 596, column: 7, scope: !7049)
!7049 = distinct !DILexicalBlock(scope: !7037, file: !241, line: 596, column: 7)
!7050 = !DILocation(line: 596, column: 12, scope: !7049)
!7051 = !DILocation(line: 596, column: 7, scope: !7037)
!7052 = !DILocation(line: 597, column: 25, scope: !7049)
!7053 = !DILocation(line: 597, column: 31, scope: !7049)
!7054 = !DILocation(line: 597, column: 11, scope: !7049)
!7055 = !DILocation(line: 597, column: 4, scope: !7049)
!7056 = !DILocation(line: 599, column: 11, scope: !7037)
!7057 = !DILocation(line: 599, column: 9, scope: !7037)
!7058 = !DILocation(line: 601, column: 33, scope: !7037)
!7059 = !DILocation(line: 601, column: 40, scope: !7037)
!7060 = !DILocation(line: 601, column: 20, scope: !7037)
!7061 = !DILocation(line: 601, column: 5, scope: !7037)
!7062 = !DILocation(line: 601, column: 51, scope: !7037)
!7063 = !DILocation(line: 602, column: 5, scope: !7037)
!7064 = !DILocation(line: 602, column: 12, scope: !7037)
!7065 = !DILocation(line: 600, column: 10, scope: !7037)
!7066 = !DILocation(line: 600, column: 3, scope: !7037)
!7067 = !DILocation(line: 603, column: 2, scope: !7038)
!7068 = !DILocation(line: 604, column: 19, scope: !7032)
!7069 = !DILocation(line: 604, column: 25, scope: !7032)
!7070 = !DILocation(line: 604, column: 9, scope: !7032)
!7071 = !DILocation(line: 604, column: 2, scope: !7032)
!7072 = !DILocation(line: 605, column: 1, scope: !7032)
!7073 = !DISubprogram(name: "kmalloc_large", scope: !241, file: !241, line: 531, type: !7004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7074 = distinct !DISubprogram(name: "__kmalloc_index", scope: !241, file: !241, line: 444, type: !7075, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7077)
!7075 = !DISubroutineType(types: !7076)
!7076 = !{!7, !466, !304}
!7077 = !{!7078, !7079}
!7078 = !DILocalVariable(name: "size", arg: 1, scope: !7074, file: !241, line: 444, type: !466)
!7079 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7074, file: !241, line: 445, type: !304)
!7080 = !DILocation(line: 444, column: 60, scope: !7074)
!7081 = !DILocation(line: 445, column: 16, scope: !7074)
!7082 = !DILocation(line: 447, column: 7, scope: !7083)
!7083 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 447, column: 6)
!7084 = !DILocation(line: 447, column: 6, scope: !7074)
!7085 = !DILocation(line: 448, column: 3, scope: !7083)
!7086 = !DILocation(line: 450, column: 6, scope: !7087)
!7087 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 450, column: 6)
!7088 = !DILocation(line: 450, column: 11, scope: !7087)
!7089 = !DILocation(line: 450, column: 6, scope: !7074)
!7090 = !DILocation(line: 451, column: 3, scope: !7087)
!7091 = !DILocation(line: 453, column: 32, scope: !7092)
!7092 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 453, column: 6)
!7093 = !DILocation(line: 453, column: 37, scope: !7092)
!7094 = !DILocation(line: 453, column: 42, scope: !7092)
!7095 = !DILocation(line: 453, column: 45, scope: !7092)
!7096 = !DILocation(line: 453, column: 50, scope: !7092)
!7097 = !DILocation(line: 453, column: 6, scope: !7074)
!7098 = !DILocation(line: 454, column: 3, scope: !7092)
!7099 = !DILocation(line: 455, column: 32, scope: !7100)
!7100 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 455, column: 6)
!7101 = !DILocation(line: 455, column: 37, scope: !7100)
!7102 = !DILocation(line: 455, column: 43, scope: !7100)
!7103 = !DILocation(line: 455, column: 46, scope: !7100)
!7104 = !DILocation(line: 455, column: 51, scope: !7100)
!7105 = !DILocation(line: 455, column: 6, scope: !7074)
!7106 = !DILocation(line: 456, column: 3, scope: !7100)
!7107 = !DILocation(line: 457, column: 6, scope: !7108)
!7108 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 457, column: 6)
!7109 = !DILocation(line: 457, column: 11, scope: !7108)
!7110 = !DILocation(line: 457, column: 6, scope: !7074)
!7111 = !DILocation(line: 457, column: 26, scope: !7108)
!7112 = !DILocation(line: 458, column: 6, scope: !7113)
!7113 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 458, column: 6)
!7114 = !DILocation(line: 458, column: 11, scope: !7113)
!7115 = !DILocation(line: 458, column: 6, scope: !7074)
!7116 = !DILocation(line: 458, column: 26, scope: !7113)
!7117 = !DILocation(line: 459, column: 6, scope: !7118)
!7118 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 459, column: 6)
!7119 = !DILocation(line: 459, column: 11, scope: !7118)
!7120 = !DILocation(line: 459, column: 6, scope: !7074)
!7121 = !DILocation(line: 459, column: 26, scope: !7118)
!7122 = !DILocation(line: 460, column: 6, scope: !7123)
!7123 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 460, column: 6)
!7124 = !DILocation(line: 460, column: 11, scope: !7123)
!7125 = !DILocation(line: 460, column: 6, scope: !7074)
!7126 = !DILocation(line: 460, column: 26, scope: !7123)
!7127 = !DILocation(line: 461, column: 6, scope: !7128)
!7128 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 461, column: 6)
!7129 = !DILocation(line: 461, column: 11, scope: !7128)
!7130 = !DILocation(line: 461, column: 6, scope: !7074)
!7131 = !DILocation(line: 461, column: 26, scope: !7128)
!7132 = !DILocation(line: 462, column: 6, scope: !7133)
!7133 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 462, column: 6)
!7134 = !DILocation(line: 462, column: 11, scope: !7133)
!7135 = !DILocation(line: 462, column: 6, scope: !7074)
!7136 = !DILocation(line: 462, column: 26, scope: !7133)
!7137 = !DILocation(line: 463, column: 6, scope: !7138)
!7138 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 463, column: 6)
!7139 = !DILocation(line: 463, column: 11, scope: !7138)
!7140 = !DILocation(line: 463, column: 6, scope: !7074)
!7141 = !DILocation(line: 463, column: 26, scope: !7138)
!7142 = !DILocation(line: 464, column: 6, scope: !7143)
!7143 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 464, column: 6)
!7144 = !DILocation(line: 464, column: 11, scope: !7143)
!7145 = !DILocation(line: 464, column: 6, scope: !7074)
!7146 = !DILocation(line: 464, column: 26, scope: !7143)
!7147 = !DILocation(line: 465, column: 6, scope: !7148)
!7148 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 465, column: 6)
!7149 = !DILocation(line: 465, column: 11, scope: !7148)
!7150 = !DILocation(line: 465, column: 6, scope: !7074)
!7151 = !DILocation(line: 465, column: 26, scope: !7148)
!7152 = !DILocation(line: 466, column: 6, scope: !7153)
!7153 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 466, column: 6)
!7154 = !DILocation(line: 466, column: 11, scope: !7153)
!7155 = !DILocation(line: 466, column: 6, scope: !7074)
!7156 = !DILocation(line: 466, column: 26, scope: !7153)
!7157 = !DILocation(line: 467, column: 6, scope: !7158)
!7158 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 467, column: 6)
!7159 = !DILocation(line: 467, column: 11, scope: !7158)
!7160 = !DILocation(line: 467, column: 6, scope: !7074)
!7161 = !DILocation(line: 467, column: 26, scope: !7158)
!7162 = !DILocation(line: 468, column: 6, scope: !7163)
!7163 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 468, column: 6)
!7164 = !DILocation(line: 468, column: 11, scope: !7163)
!7165 = !DILocation(line: 468, column: 6, scope: !7074)
!7166 = !DILocation(line: 468, column: 26, scope: !7163)
!7167 = !DILocation(line: 469, column: 6, scope: !7168)
!7168 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 469, column: 6)
!7169 = !DILocation(line: 469, column: 11, scope: !7168)
!7170 = !DILocation(line: 469, column: 6, scope: !7074)
!7171 = !DILocation(line: 469, column: 26, scope: !7168)
!7172 = !DILocation(line: 470, column: 6, scope: !7173)
!7173 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 470, column: 6)
!7174 = !DILocation(line: 470, column: 11, scope: !7173)
!7175 = !DILocation(line: 470, column: 6, scope: !7074)
!7176 = !DILocation(line: 470, column: 26, scope: !7173)
!7177 = !DILocation(line: 471, column: 6, scope: !7178)
!7178 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 471, column: 6)
!7179 = !DILocation(line: 471, column: 11, scope: !7178)
!7180 = !DILocation(line: 471, column: 6, scope: !7074)
!7181 = !DILocation(line: 471, column: 26, scope: !7178)
!7182 = !DILocation(line: 472, column: 6, scope: !7183)
!7183 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 472, column: 6)
!7184 = !DILocation(line: 472, column: 11, scope: !7183)
!7185 = !DILocation(line: 472, column: 6, scope: !7074)
!7186 = !DILocation(line: 472, column: 26, scope: !7183)
!7187 = !DILocation(line: 473, column: 6, scope: !7188)
!7188 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 473, column: 6)
!7189 = !DILocation(line: 473, column: 11, scope: !7188)
!7190 = !DILocation(line: 473, column: 6, scope: !7074)
!7191 = !DILocation(line: 473, column: 26, scope: !7188)
!7192 = !DILocation(line: 474, column: 6, scope: !7193)
!7193 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 474, column: 6)
!7194 = !DILocation(line: 474, column: 11, scope: !7193)
!7195 = !DILocation(line: 474, column: 6, scope: !7074)
!7196 = !DILocation(line: 474, column: 27, scope: !7193)
!7197 = !DILocation(line: 475, column: 6, scope: !7198)
!7198 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 475, column: 6)
!7199 = !DILocation(line: 475, column: 11, scope: !7198)
!7200 = !DILocation(line: 475, column: 6, scope: !7074)
!7201 = !DILocation(line: 475, column: 32, scope: !7198)
!7202 = !DILocation(line: 477, column: 50, scope: !7203)
!7203 = distinct !DILexicalBlock(scope: !7074, file: !241, line: 477, column: 6)
!7204 = !DILocation(line: 477, column: 6, scope: !7074)
!7205 = !DILocation(line: 478, column: 3, scope: !7203)
!7206 = !DILocation(line: 478, column: 3, scope: !7207)
!7207 = distinct !DILexicalBlock(scope: !7208, file: !241, line: 478, column: 3)
!7208 = distinct !DILexicalBlock(scope: !7203, file: !241, line: 478, column: 3)
!7209 = !{i32 -2141518438}
!7210 = !DILocation(line: 478, column: 3, scope: !7208)
!7211 = !DILocation(line: 480, column: 3, scope: !7203)
!7212 = !DILocation(line: 480, column: 3, scope: !7213)
!7213 = distinct !DILexicalBlock(scope: !7203, file: !241, line: 480, column: 3)
!7214 = !DILocation(line: 480, column: 3, scope: !7215)
!7215 = distinct !DILexicalBlock(scope: !7213, file: !241, line: 480, column: 3)
!7216 = !DILocation(line: 480, column: 3, scope: !7217)
!7217 = distinct !DILexicalBlock(scope: !7213, file: !241, line: 480, column: 3)
!7218 = !{i64 2153449061, i64 2153449090, i64 2153449136, i64 2153449194, i64 2153449248, i64 2153449302, i64 2153449357, i64 2153449388}
!7219 = !DILocation(line: 483, column: 2, scope: !7074)
!7220 = !DILocation(line: 484, column: 1, scope: !7074)
!7221 = !DISubprogram(name: "kmalloc_trace", scope: !241, file: !241, line: 525, type: !7222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7222 = !DISubroutineType(types: !7223)
!7223 = !{!251, !7224, !258, !466}
!7224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7225, size: 64)
!7225 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !7226, line: 11, flags: DIFlagFwdDecl)
!7226 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!7227 = distinct !DISubprogram(name: "kmalloc_type", scope: !241, file: !241, line: 401, type: !7228, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7230)
!7228 = !DISubroutineType(types: !7229)
!7229 = !{!240, !258, !256}
!7230 = !{!7231, !7232}
!7231 = !DILocalVariable(name: "flags", arg: 1, scope: !7227, file: !241, line: 401, type: !258)
!7232 = !DILocalVariable(name: "caller", arg: 2, scope: !7227, file: !241, line: 401, type: !256)
!7233 = !DILocation(line: 401, column: 67, scope: !7227)
!7234 = !DILocation(line: 401, column: 88, scope: !7227)
!7235 = !DILocation(line: 407, column: 6, scope: !7236)
!7236 = distinct !DILexicalBlock(scope: !7227, file: !241, line: 407, column: 6)
!7237 = !DILocation(line: 407, column: 6, scope: !7227)
!7238 = !DILocation(line: 413, column: 3, scope: !7236)
!7239 = !DILocation(line: 423, column: 38, scope: !7240)
!7240 = distinct !DILexicalBlock(scope: !7227, file: !241, line: 423, column: 6)
!7241 = !DILocation(line: 423, column: 44, scope: !7240)
!7242 = !DILocation(line: 423, column: 6, scope: !7227)
!7243 = !DILocation(line: 424, column: 3, scope: !7240)
!7244 = !DILocation(line: 426, column: 3, scope: !7245)
!7245 = distinct !DILexicalBlock(scope: !7227, file: !241, line: 425, column: 6)
!7246 = !DILocation(line: 429, column: 1, scope: !7227)
!7247 = !DISubprogram(name: "__kmalloc", scope: !241, file: !241, line: 488, type: !7004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7248 = !DISubprogram(name: "__compiletime_assert_229", scope: !241, file: !241, line: 478, type: !1122, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7249 = distinct !DISubprogram(name: "kmalloc_array", scope: !241, file: !241, line: 629, type: !7017, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7250)
!7250 = !{!7251, !7252, !7253, !7254}
!7251 = !DILocalVariable(name: "n", arg: 1, scope: !7249, file: !241, line: 629, type: !466)
!7252 = !DILocalVariable(name: "size", arg: 2, scope: !7249, file: !241, line: 629, type: !466)
!7253 = !DILocalVariable(name: "flags", arg: 3, scope: !7249, file: !241, line: 629, type: !258)
!7254 = !DILocalVariable(name: "bytes", scope: !7249, file: !241, line: 631, type: !466)
!7255 = !DILocation(line: 629, column: 61, scope: !7249)
!7256 = !DILocation(line: 629, column: 71, scope: !7249)
!7257 = !DILocation(line: 629, column: 83, scope: !7249)
!7258 = !DILocation(line: 631, column: 2, scope: !7249)
!7259 = !DILocation(line: 631, column: 9, scope: !7249)
!7260 = !DILocation(line: 633, column: 6, scope: !7261)
!7261 = distinct !DILexicalBlock(scope: !7249, file: !241, line: 633, column: 6)
!7262 = !DILocation(line: 633, column: 6, scope: !7249)
!7263 = !DILocation(line: 634, column: 3, scope: !7261)
!7264 = !DILocation(line: 635, column: 27, scope: !7265)
!7265 = distinct !DILexicalBlock(scope: !7249, file: !241, line: 635, column: 6)
!7266 = !DILocation(line: 635, column: 6, scope: !7265)
!7267 = !DILocation(line: 635, column: 30, scope: !7265)
!7268 = !DILocation(line: 635, column: 54, scope: !7265)
!7269 = !DILocation(line: 635, column: 33, scope: !7265)
!7270 = !DILocation(line: 635, column: 6, scope: !7249)
!7271 = !DILocation(line: 636, column: 18, scope: !7265)
!7272 = !DILocation(line: 636, column: 25, scope: !7265)
!7273 = !DILocation(line: 636, column: 10, scope: !7265)
!7274 = !DILocation(line: 636, column: 3, scope: !7265)
!7275 = !DILocation(line: 637, column: 19, scope: !7249)
!7276 = !DILocation(line: 637, column: 26, scope: !7249)
!7277 = !DILocation(line: 637, column: 9, scope: !7249)
!7278 = !DILocation(line: 637, column: 2, scope: !7249)
!7279 = !DILocation(line: 638, column: 1, scope: !7249)
!7280 = !DISubprogram(name: "dma_async_tx_descriptor_init", scope: !142, file: !142, line: 1364, type: !7281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7281 = !DISubroutineType(types: !7282)
!7282 = !{null, !4803, !306}
!7283 = distinct !DISubprogram(name: "vchan_issue_pending", scope: !264, file: !264, line: 82, type: !7284, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7286)
!7284 = !DISubroutineType(types: !7285)
!7285 = !{!304, !262}
!7286 = !{!7287}
!7287 = !DILocalVariable(name: "vc", arg: 1, scope: !7283, file: !264, line: 82, type: !262)
!7288 = !DILocation(line: 82, column: 62, scope: !7283)
!7289 = !DILocation(line: 84, column: 25, scope: !7283)
!7290 = !DILocation(line: 84, column: 29, scope: !7283)
!7291 = !DILocation(line: 84, column: 46, scope: !7283)
!7292 = !DILocation(line: 84, column: 50, scope: !7283)
!7293 = !DILocation(line: 84, column: 2, scope: !7283)
!7294 = !DILocation(line: 85, column: 22, scope: !7283)
!7295 = !DILocation(line: 85, column: 26, scope: !7283)
!7296 = !DILocation(line: 85, column: 10, scope: !7283)
!7297 = !DILocation(line: 85, column: 9, scope: !7283)
!7298 = !DILocation(line: 85, column: 2, scope: !7283)
!7299 = distinct !DISubprogram(name: "dma_cookie_status", scope: !5133, file: !5133, line: 68, type: !4984, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7300)
!7300 = !{!7301, !7302, !7303, !7304, !7305}
!7301 = !DILocalVariable(name: "chan", arg: 1, scope: !7299, file: !5133, line: 68, type: !306)
!7302 = !DILocalVariable(name: "cookie", arg: 2, scope: !7299, file: !5133, line: 69, type: !4807)
!7303 = !DILocalVariable(name: "state", arg: 3, scope: !7299, file: !5133, line: 69, type: !4986)
!7304 = !DILocalVariable(name: "used", scope: !7299, file: !5133, line: 71, type: !4807)
!7305 = !DILocalVariable(name: "complete", scope: !7299, file: !5133, line: 71, type: !4807)
!7306 = !DILocation(line: 68, column: 66, scope: !7299)
!7307 = !DILocation(line: 69, column: 15, scope: !7299)
!7308 = !DILocation(line: 69, column: 44, scope: !7299)
!7309 = !DILocation(line: 71, column: 2, scope: !7299)
!7310 = !DILocation(line: 71, column: 15, scope: !7299)
!7311 = !DILocation(line: 71, column: 21, scope: !7299)
!7312 = !DILocation(line: 73, column: 9, scope: !7299)
!7313 = !DILocation(line: 73, column: 15, scope: !7299)
!7314 = !DILocation(line: 73, column: 7, scope: !7299)
!7315 = !DILocation(line: 74, column: 13, scope: !7299)
!7316 = !DILocation(line: 74, column: 19, scope: !7299)
!7317 = !DILocation(line: 74, column: 11, scope: !7299)
!7318 = !DILocation(line: 75, column: 2, scope: !7299)
!7319 = !{i64 2154745837}
!7320 = !DILocation(line: 76, column: 6, scope: !7321)
!7321 = distinct !DILexicalBlock(scope: !7299, file: !5133, line: 76, column: 6)
!7322 = !DILocation(line: 76, column: 6, scope: !7299)
!7323 = !DILocation(line: 77, column: 17, scope: !7324)
!7324 = distinct !DILexicalBlock(scope: !7321, file: !5133, line: 76, column: 13)
!7325 = !DILocation(line: 77, column: 3, scope: !7324)
!7326 = !DILocation(line: 77, column: 10, scope: !7324)
!7327 = !DILocation(line: 77, column: 15, scope: !7324)
!7328 = !DILocation(line: 78, column: 17, scope: !7324)
!7329 = !DILocation(line: 78, column: 3, scope: !7324)
!7330 = !DILocation(line: 78, column: 10, scope: !7324)
!7331 = !DILocation(line: 78, column: 15, scope: !7324)
!7332 = !DILocation(line: 79, column: 3, scope: !7324)
!7333 = !DILocation(line: 79, column: 10, scope: !7324)
!7334 = !DILocation(line: 79, column: 18, scope: !7324)
!7335 = !DILocation(line: 80, column: 3, scope: !7324)
!7336 = !DILocation(line: 80, column: 10, scope: !7324)
!7337 = !DILocation(line: 80, column: 26, scope: !7324)
!7338 = !DILocation(line: 81, column: 2, scope: !7324)
!7339 = !DILocation(line: 82, column: 31, scope: !7299)
!7340 = !DILocation(line: 82, column: 39, scope: !7299)
!7341 = !DILocation(line: 82, column: 49, scope: !7299)
!7342 = !DILocation(line: 82, column: 9, scope: !7299)
!7343 = !DILocation(line: 83, column: 1, scope: !7299)
!7344 = !DILocation(line: 82, column: 2, scope: !7299)
!7345 = !DISubprogram(name: "vchan_find_desc", scope: !264, file: !264, line: 46, type: !7346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7346 = !DISubroutineType(types: !7347)
!7347 = !{!5056, !262, !4807}
!7348 = distinct !DISubprogram(name: "hsu_dma_active_desc_size", scope: !3, file: !3, line: 309, type: !7349, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7351)
!7349 = !DISubroutineType(types: !7350)
!7350 = !{!466, !5093}
!7351 = !{!7352, !7353, !7354, !7355}
!7352 = !DILocalVariable(name: "hsuc", arg: 1, scope: !7348, file: !3, line: 309, type: !5093)
!7353 = !DILocalVariable(name: "desc", scope: !7348, file: !3, line: 311, type: !5073)
!7354 = !DILocalVariable(name: "bytes", scope: !7348, file: !3, line: 312, type: !466)
!7355 = !DILocalVariable(name: "i", scope: !7348, file: !3, line: 313, type: !109)
!7356 = !DILocation(line: 309, column: 61, scope: !7348)
!7357 = !DILocation(line: 311, column: 2, scope: !7348)
!7358 = !DILocation(line: 311, column: 23, scope: !7348)
!7359 = !DILocation(line: 311, column: 30, scope: !7348)
!7360 = !DILocation(line: 311, column: 36, scope: !7348)
!7361 = !DILocation(line: 312, column: 2, scope: !7348)
!7362 = !DILocation(line: 312, column: 9, scope: !7348)
!7363 = !DILocation(line: 313, column: 2, scope: !7348)
!7364 = !DILocation(line: 313, column: 6, scope: !7348)
!7365 = !DILocation(line: 315, column: 11, scope: !7366)
!7366 = distinct !DILexicalBlock(scope: !7348, file: !3, line: 315, column: 2)
!7367 = !DILocation(line: 315, column: 17, scope: !7366)
!7368 = !DILocation(line: 315, column: 9, scope: !7366)
!7369 = !DILocation(line: 315, column: 7, scope: !7366)
!7370 = !DILocation(line: 315, column: 25, scope: !7371)
!7371 = distinct !DILexicalBlock(scope: !7366, file: !3, line: 315, column: 2)
!7372 = !DILocation(line: 315, column: 29, scope: !7371)
!7373 = !DILocation(line: 315, column: 35, scope: !7371)
!7374 = !DILocation(line: 315, column: 27, scope: !7371)
!7375 = !DILocation(line: 315, column: 2, scope: !7366)
!7376 = !DILocation(line: 316, column: 12, scope: !7371)
!7377 = !DILocation(line: 316, column: 18, scope: !7371)
!7378 = !DILocation(line: 316, column: 21, scope: !7371)
!7379 = !DILocation(line: 316, column: 24, scope: !7371)
!7380 = !DILocation(line: 316, column: 9, scope: !7371)
!7381 = !DILocation(line: 316, column: 3, scope: !7371)
!7382 = !DILocation(line: 315, column: 43, scope: !7371)
!7383 = !DILocation(line: 315, column: 2, scope: !7371)
!7384 = distinct !{!7384, !7375, !7385, !5563, !5564}
!7385 = !DILocation(line: 316, column: 24, scope: !7366)
!7386 = !DILocation(line: 318, column: 4, scope: !7348)
!7387 = !DILocation(line: 319, column: 2, scope: !7348)
!7388 = !DILocation(line: 320, column: 27, scope: !7389)
!7389 = distinct !DILexicalBlock(scope: !7348, file: !3, line: 319, column: 5)
!7390 = !DILocation(line: 320, column: 33, scope: !7389)
!7391 = !DILocation(line: 320, column: 12, scope: !7389)
!7392 = !DILocation(line: 320, column: 9, scope: !7389)
!7393 = !DILocation(line: 321, column: 2, scope: !7389)
!7394 = !DILocation(line: 321, column: 11, scope: !7348)
!7395 = !DILocation(line: 321, column: 15, scope: !7348)
!7396 = distinct !{!7396, !7387, !7397, !5563, !5564}
!7397 = !DILocation(line: 321, column: 19, scope: !7348)
!7398 = !DILocation(line: 323, column: 9, scope: !7348)
!7399 = !DILocation(line: 324, column: 1, scope: !7348)
!7400 = !DILocation(line: 323, column: 2, scope: !7348)
!7401 = distinct !DISubprogram(name: "dma_set_residue", scope: !5133, file: !5133, line: 85, type: !7402, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7404)
!7402 = !DISubroutineType(types: !7403)
!7403 = !{null, !4986, !567}
!7404 = !{!7405, !7406}
!7405 = !DILocalVariable(name: "state", arg: 1, scope: !7401, file: !5133, line: 85, type: !4986)
!7406 = !DILocalVariable(name: "residue", arg: 2, scope: !7401, file: !5133, line: 85, type: !567)
!7407 = !DILocation(line: 85, column: 57, scope: !7401)
!7408 = !DILocation(line: 85, column: 68, scope: !7401)
!7409 = !DILocation(line: 87, column: 6, scope: !7410)
!7410 = distinct !DILexicalBlock(scope: !7401, file: !5133, line: 87, column: 6)
!7411 = !DILocation(line: 87, column: 6, scope: !7401)
!7412 = !DILocation(line: 88, column: 20, scope: !7410)
!7413 = !DILocation(line: 88, column: 3, scope: !7410)
!7414 = !DILocation(line: 88, column: 10, scope: !7410)
!7415 = !DILocation(line: 88, column: 18, scope: !7410)
!7416 = !DILocation(line: 89, column: 1, scope: !7401)
!7417 = distinct !DISubprogram(name: "dma_async_is_complete", scope: !142, file: !142, line: 1458, type: !7418, scopeLine: 1460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7420)
!7418 = !DISubroutineType(types: !7419)
!7419 = !{!204, !4807, !4807, !4807}
!7420 = !{!7421, !7422, !7423}
!7421 = !DILocalVariable(name: "cookie", arg: 1, scope: !7417, file: !142, line: 1458, type: !4807)
!7422 = !DILocalVariable(name: "last_complete", arg: 2, scope: !7417, file: !142, line: 1459, type: !4807)
!7423 = !DILocalVariable(name: "last_used", arg: 3, scope: !7417, file: !142, line: 1459, type: !4807)
!7424 = !DILocation(line: 1458, column: 66, scope: !7417)
!7425 = !DILocation(line: 1459, column: 17, scope: !7417)
!7426 = !DILocation(line: 1459, column: 45, scope: !7417)
!7427 = !DILocation(line: 1461, column: 6, scope: !7428)
!7428 = distinct !DILexicalBlock(scope: !7417, file: !142, line: 1461, column: 6)
!7429 = !DILocation(line: 1461, column: 23, scope: !7428)
!7430 = !DILocation(line: 1461, column: 20, scope: !7428)
!7431 = !DILocation(line: 1461, column: 6, scope: !7417)
!7432 = !DILocation(line: 1462, column: 8, scope: !7433)
!7433 = distinct !DILexicalBlock(scope: !7434, file: !142, line: 1462, column: 7)
!7434 = distinct !DILexicalBlock(scope: !7428, file: !142, line: 1461, column: 34)
!7435 = !DILocation(line: 1462, column: 18, scope: !7433)
!7436 = !DILocation(line: 1462, column: 15, scope: !7433)
!7437 = !DILocation(line: 1462, column: 33, scope: !7433)
!7438 = !DILocation(line: 1462, column: 37, scope: !7433)
!7439 = !DILocation(line: 1462, column: 46, scope: !7433)
!7440 = !DILocation(line: 1462, column: 44, scope: !7433)
!7441 = !DILocation(line: 1462, column: 7, scope: !7434)
!7442 = !DILocation(line: 1463, column: 4, scope: !7433)
!7443 = !DILocation(line: 1464, column: 2, scope: !7434)
!7444 = !DILocation(line: 1465, column: 8, scope: !7445)
!7445 = distinct !DILexicalBlock(scope: !7446, file: !142, line: 1465, column: 7)
!7446 = distinct !DILexicalBlock(scope: !7428, file: !142, line: 1464, column: 9)
!7447 = !DILocation(line: 1465, column: 18, scope: !7445)
!7448 = !DILocation(line: 1465, column: 15, scope: !7445)
!7449 = !DILocation(line: 1465, column: 33, scope: !7445)
!7450 = !DILocation(line: 1465, column: 37, scope: !7445)
!7451 = !DILocation(line: 1465, column: 46, scope: !7445)
!7452 = !DILocation(line: 1465, column: 44, scope: !7445)
!7453 = !DILocation(line: 1465, column: 7, scope: !7446)
!7454 = !DILocation(line: 1466, column: 4, scope: !7445)
!7455 = !DILocation(line: 1468, column: 2, scope: !7417)
!7456 = !DILocation(line: 1469, column: 1, scope: !7417)
!7457 = distinct !DISubprogram(name: "hsu_dma_stop_channel", scope: !3, file: !3, line: 105, type: !5389, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7458)
!7458 = !{!7459}
!7459 = !DILocalVariable(name: "hsuc", arg: 1, scope: !7457, file: !3, line: 105, type: !5093)
!7460 = !DILocation(line: 105, column: 55, scope: !7457)
!7461 = !DILocation(line: 107, column: 19, scope: !7457)
!7462 = !DILocation(line: 107, column: 2, scope: !7457)
!7463 = !DILocation(line: 108, column: 18, scope: !7457)
!7464 = !DILocation(line: 108, column: 2, scope: !7457)
!7465 = !DILocation(line: 109, column: 1, scope: !7457)
!7466 = distinct !DISubprogram(name: "vchan_synchronize", scope: !264, file: !264, line: 211, type: !6741, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7467)
!7467 = !{!7468, !7469, !7470, !7471, !7475}
!7468 = !DILocalVariable(name: "vc", arg: 1, scope: !7466, file: !264, line: 211, type: !262)
!7469 = !DILocalVariable(name: "head", scope: !7466, file: !264, line: 213, type: !290)
!7470 = !DILocalVariable(name: "flags", scope: !7466, file: !264, line: 214, type: !256)
!7471 = !DILocalVariable(name: "__dummy", scope: !7472, file: !264, line: 218, type: !256)
!7472 = distinct !DILexicalBlock(scope: !7473, file: !264, line: 218, column: 2)
!7473 = distinct !DILexicalBlock(scope: !7474, file: !264, line: 218, column: 2)
!7474 = distinct !DILexicalBlock(scope: !7466, file: !264, line: 218, column: 2)
!7475 = !DILocalVariable(name: "__dummy2", scope: !7472, file: !264, line: 218, type: !256)
!7476 = !DILocation(line: 211, column: 60, scope: !7466)
!7477 = !DILocation(line: 213, column: 2, scope: !7466)
!7478 = !DILocation(line: 214, column: 2, scope: !7466)
!7479 = !DILocation(line: 214, column: 16, scope: !7466)
!7480 = !DILocation(line: 216, column: 16, scope: !7466)
!7481 = !DILocation(line: 216, column: 20, scope: !7466)
!7482 = !DILocation(line: 216, column: 2, scope: !7466)
!7483 = !DILocation(line: 218, column: 2, scope: !7466)
!7484 = !DILocation(line: 218, column: 2, scope: !7474)
!7485 = !DILocation(line: 218, column: 2, scope: !7472)
!7486 = !DILocation(line: 218, column: 2, scope: !7473)
!7487 = !DILocation(line: 220, column: 25, scope: !7466)
!7488 = !DILocation(line: 220, column: 29, scope: !7466)
!7489 = !DILocation(line: 220, column: 2, scope: !7466)
!7490 = !DILocation(line: 222, column: 26, scope: !7466)
!7491 = !DILocation(line: 222, column: 30, scope: !7466)
!7492 = !DILocation(line: 222, column: 36, scope: !7466)
!7493 = !DILocation(line: 222, column: 2, scope: !7466)
!7494 = !DILocation(line: 224, column: 27, scope: !7466)
!7495 = !DILocation(line: 224, column: 2, scope: !7466)
!7496 = !DILocation(line: 225, column: 1, scope: !7466)
