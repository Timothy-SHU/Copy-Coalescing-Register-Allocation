; ModuleID = 'drivers/dma/acpi-dma.c'
source_filename = "drivers/dma/acpi-dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dma_controller_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dma_controller_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dma_controller_free: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dma_controller_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_acpi_dma_controller_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_acpi_dma_controller_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_acpi_dma_controller_free: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_acpi_dma_controller_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dma_request_slave_chan_by_index: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dma_request_slave_chan_by_index ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dma_request_slave_chan_by_name: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dma_request_slave_chan_by_name ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_dma_simple_xlate: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_dma_simple_xlate ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.acpi_dma = type { %struct.list_head, ptr, ptr, ptr, i16, i16 }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.13, i32, i32, %struct.list_head }
%struct.anon.13 = type { i8 }
%struct.acpi_device_wakeup = type { ptr, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, ptr, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { ptr, ptr }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, ptr }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_dir = type { ptr }
%struct.acpi_device_data = type { ptr, %struct.list_head, ptr, %struct.list_head }
%struct.acpi_table_csrt = type { %struct.acpi_table_header }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_csrt_group = type { i32, i32, i32, i16, i16, i16, i16, i32 }
%struct.acpi_dma_parser_data = type { %struct.acpi_dma_spec, i64, i64 }
%struct.acpi_dma_spec = type { i32, i32, ptr }
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor, [58 x i8] }
%struct.acpi_resource_vendor = type { i16, [0 x i8] }
%struct.acpi_resource_fixed_dma = type <{ i16, i16, i8 }>
%struct.acpi_dma_filter_info = type { %struct.dma_cap_mask_t, ptr }
%struct.dma_cap_mask_t = type { [1 x i64] }
%struct.resource_entry = type { %struct.list_head, ptr, i64, %struct.resource }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.acpi_csrt_shared_info = type { i16, i16, i32, i32, i32, i8, i8, i8, i8, i16, i16, i32 }

@acpi_dma_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @acpi_dma_lock, i64 16), ptr getelementptr (i8, ptr @acpi_dma_lock, i64 16) } }, align 8, !dbg !0
@acpi_dma_list = internal global %struct.list_head { ptr @acpi_dma_list, ptr @acpi_dma_list }, align 8, !dbg !5399
@__UNIQUE_ID___addressable_acpi_dma_controller_register289 = internal global ptr @acpi_dma_controller_register, section ".discard.addressable", align 8, !dbg !5347
@__UNIQUE_ID___addressable_acpi_dma_controller_free290 = internal global ptr @acpi_dma_controller_free, section ".discard.addressable", align 8, !dbg !5349
@.str = private unnamed_addr constant [22 x i8] c"devm_acpi_dma_release\00", align 1, !dbg !5351
@__UNIQUE_ID___addressable_devm_acpi_dma_controller_register291 = internal global ptr @devm_acpi_dma_controller_register, section ".discard.addressable", align 8, !dbg !5356
@.str.1 = private unnamed_addr constant [23 x i8] c"drivers/dma/acpi-dma.c\00", align 1, !dbg !5358
@__UNIQUE_ID___addressable_devm_acpi_dma_controller_free292 = internal global ptr @devm_acpi_dma_controller_free, section ".discard.addressable", align 8, !dbg !5363
@__UNIQUE_ID___addressable_acpi_dma_request_slave_chan_by_index293 = internal global ptr @acpi_dma_request_slave_chan_by_index, section ".discard.addressable", align 8, !dbg !5365
@.str.2 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1, !dbg !5367
@.str.3 = private unnamed_addr constant [3 x i8] c"tx\00", align 1, !dbg !5372
@.str.4 = private unnamed_addr constant [3 x i8] c"rx\00", align 1, !dbg !5375
@__UNIQUE_ID___addressable_acpi_dma_request_slave_chan_by_name294 = internal global ptr @acpi_dma_request_slave_chan_by_name, section ".discard.addressable", align 8, !dbg !5377
@__UNIQUE_ID___addressable_acpi_dma_simple_xlate295 = internal global ptr @acpi_dma_simple_xlate, section ".discard.addressable", align 8, !dbg !5379
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5381
@.str.6 = private unnamed_addr constant [5 x i8] c"CSRT\00", align 1, !dbg !5386
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to get the CSRT table\0A\00", align 1, !dbg !5389
@.str.8 = private unnamed_addr constant [33 x i8] c"error in parsing resource group\0A\00", align 1, !dbg !5394
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_dma_controller_register289, ptr @__UNIQUE_ID___addressable_acpi_dma_controller_free290, ptr @__UNIQUE_ID___addressable_devm_acpi_dma_controller_register291, ptr @__UNIQUE_ID___addressable_devm_acpi_dma_controller_free292, ptr @__UNIQUE_ID___addressable_acpi_dma_request_slave_chan_by_index293, ptr @__UNIQUE_ID___addressable_acpi_dma_request_slave_chan_by_name294, ptr @__UNIQUE_ID___addressable_acpi_dma_simple_xlate295], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_dma_controller_register(ptr noundef %dev, ptr noundef %acpi_dma_xlate, ptr noundef %data) #0 align 16 !dbg !5410 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %acpi_dma_xlate.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %adma = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5414, metadata !DIExpression()), !dbg !5423
  store ptr %acpi_dma_xlate, ptr %acpi_dma_xlate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acpi_dma_xlate.addr, metadata !5415, metadata !DIExpression()), !dbg !5424
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5416, metadata !DIExpression()), !dbg !5425
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #15, !dbg !5426
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !5417, metadata !DIExpression()), !dbg !5427
  call void @llvm.lifetime.start.p0(i64 8, ptr %adma) #15, !dbg !5428
  call void @llvm.dbg.declare(metadata ptr %adma, metadata !5418, metadata !DIExpression()), !dbg !5429
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5430
  %tobool = icmp ne ptr %0, null, !dbg !5430
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5432

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %acpi_dma_xlate.addr, align 8, !dbg !5433
  %tobool1 = icmp ne ptr %1, null, !dbg !5433
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5434

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !5435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5435

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !5436
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !5419, metadata !DIExpression()), !dbg !5436
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5436
  %fwnode = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 24, !dbg !5436
  %3 = load ptr, ptr %fwnode, align 8, !dbg !5436
  store ptr %3, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !5436
  %4 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !5436
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %4) #16, !dbg !5436
  br i1 %call, label %cond.true, label %cond.false, !dbg !5436

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5437
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5421, metadata !DIExpression()), !dbg !5437
  %5 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !5437
  store ptr %5, ptr %__mptr, align 8, !dbg !5437
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5437
  %add.ptr = getelementptr i8, ptr %6, i64 -16, !dbg !5437
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5436
  %7 = load ptr, ptr %tmp2, align 8, !dbg !5437
  br label %cond.end, !dbg !5436

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5436

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ null, %cond.false ], !dbg !5436
  store ptr %cond, ptr %tmp, align 8, !dbg !5436
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !5438
  %8 = load ptr, ptr %tmp, align 8, !dbg !5436
  store ptr %8, ptr %adev, align 8, !dbg !5439
  %9 = load ptr, ptr %adev, align 8, !dbg !5440
  %tobool3 = icmp ne ptr %9, null, !dbg !5440
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5442

if.then4:                                         ; preds = %cond.end
  store i32 -22, ptr %retval, align 4, !dbg !5443
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5443

if.end5:                                          ; preds = %cond.end
  %call6 = call noalias ptr @kzalloc(i64 noundef 48, i32 noundef 3264) #17, !dbg !5444
  store ptr %call6, ptr %adma, align 8, !dbg !5445
  %10 = load ptr, ptr %adma, align 8, !dbg !5446
  %tobool7 = icmp ne ptr %10, null, !dbg !5446
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5448

if.then8:                                         ; preds = %if.end5
  store i32 -12, ptr %retval, align 4, !dbg !5449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5449

if.end9:                                          ; preds = %if.end5
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5450
  %12 = load ptr, ptr %adma, align 8, !dbg !5451
  %dev10 = getelementptr inbounds %struct.acpi_dma, ptr %12, i32 0, i32 1, !dbg !5452
  store ptr %11, ptr %dev10, align 8, !dbg !5453
  %13 = load ptr, ptr %acpi_dma_xlate.addr, align 8, !dbg !5454
  %14 = load ptr, ptr %adma, align 8, !dbg !5455
  %acpi_dma_xlate11 = getelementptr inbounds %struct.acpi_dma, ptr %14, i32 0, i32 2, !dbg !5456
  store ptr %13, ptr %acpi_dma_xlate11, align 8, !dbg !5457
  %15 = load ptr, ptr %data.addr, align 8, !dbg !5458
  %16 = load ptr, ptr %adma, align 8, !dbg !5459
  %data12 = getelementptr inbounds %struct.acpi_dma, ptr %16, i32 0, i32 3, !dbg !5460
  store ptr %15, ptr %data12, align 8, !dbg !5461
  %17 = load ptr, ptr %adev, align 8, !dbg !5462
  %18 = load ptr, ptr %adma, align 8, !dbg !5463
  call void @acpi_dma_parse_csrt(ptr noundef %17, ptr noundef %18) #16, !dbg !5464
  call void @mutex_lock(ptr noundef @acpi_dma_lock) #16, !dbg !5465
  %19 = load ptr, ptr %adma, align 8, !dbg !5466
  %dma_controllers = getelementptr inbounds %struct.acpi_dma, ptr %19, i32 0, i32 0, !dbg !5467
  call void @list_add_tail(ptr noundef %dma_controllers, ptr noundef @acpi_dma_list) #16, !dbg !5468
  call void @mutex_unlock(ptr noundef @acpi_dma_lock) #16, !dbg !5469
  store i32 0, ptr %retval, align 4, !dbg !5470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5470

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %adma) #15, !dbg !5471
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #15, !dbg !5471
  %20 = load i32, ptr %retval, align 4, !dbg !5471
  ret i32 %20, !dbg !5471
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5472 dso_local zeroext i1 @is_acpi_device_node(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !5473 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5477, metadata !DIExpression()), !dbg !5479
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5478, metadata !DIExpression()), !dbg !5480
  %0 = load i64, ptr %size.addr, align 8, !dbg !5481
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5482
  %or = or i32 %1, 256, !dbg !5483
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !5484
  ret ptr %call, !dbg !5485
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_dma_parse_csrt(ptr noundef %adev, ptr noundef %adma) #0 align 16 !dbg !5486 {
entry:
  %adev.addr = alloca ptr, align 8
  %adma.addr = alloca ptr, align 8
  %grp = alloca ptr, align 8
  %end = alloca ptr, align 8
  %csrt = alloca ptr, align 8
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5490, metadata !DIExpression()), !dbg !5501
  store ptr %adma, ptr %adma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adma.addr, metadata !5491, metadata !DIExpression()), !dbg !5502
  call void @llvm.lifetime.start.p0(i64 8, ptr %grp) #15, !dbg !5503
  call void @llvm.dbg.declare(metadata ptr %grp, metadata !5492, metadata !DIExpression()), !dbg !5504
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !5503
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5493, metadata !DIExpression()), !dbg !5505
  call void @llvm.lifetime.start.p0(i64 8, ptr %csrt) #15, !dbg !5506
  call void @llvm.dbg.declare(metadata ptr %csrt, metadata !5494, metadata !DIExpression()), !dbg !5507
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !5508
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5499, metadata !DIExpression()), !dbg !5509
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5510
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5500, metadata !DIExpression()), !dbg !5511
  %call = call i32 @acpi_get_table(ptr noundef @.str.6, i32 noundef 0, ptr noundef %csrt) #16, !dbg !5512
  store i32 %call, ptr %status, align 4, !dbg !5513
  %0 = load i32, ptr %status, align 4, !dbg !5514
  %tobool = icmp ne i32 %0, 0, !dbg !5514
  br i1 %tobool, label %if.then, label %if.end2, !dbg !5516

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !5517
  %cmp = icmp ne i32 %1, 5, !dbg !5520
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5521

if.then1:                                         ; preds = %if.then
  br label %do.body, !dbg !5522

do.body:                                          ; preds = %if.then1
  br label %do.cond, !dbg !5524

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5524

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !5522
  %dev = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 18, !dbg !5522
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str.7) #18, !dbg !5522
  br label %if.end, !dbg !5526

if.end:                                           ; preds = %do.end, %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5527

if.end2:                                          ; preds = %entry
  %3 = load ptr, ptr %csrt, align 8, !dbg !5528
  %add.ptr = getelementptr %struct.acpi_table_csrt, ptr %3, i64 1, !dbg !5529
  store ptr %add.ptr, ptr %grp, align 8, !dbg !5530
  %4 = load ptr, ptr %csrt, align 8, !dbg !5531
  %5 = load ptr, ptr %csrt, align 8, !dbg !5532
  %header = getelementptr inbounds %struct.acpi_table_csrt, ptr %5, i32 0, i32 0, !dbg !5533
  %length = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 1, !dbg !5534
  %6 = load i32, ptr %length, align 1, !dbg !5534
  %idx.ext = zext i32 %6 to i64, !dbg !5535
  %add.ptr3 = getelementptr i8, ptr %4, i64 %idx.ext, !dbg !5535
  store ptr %add.ptr3, ptr %end, align 8, !dbg !5536
  br label %while.cond, !dbg !5537

while.cond:                                       ; preds = %if.end12, %if.end2
  %7 = load ptr, ptr %grp, align 8, !dbg !5538
  %8 = load ptr, ptr %end, align 8, !dbg !5539
  %cmp4 = icmp ult ptr %7, %8, !dbg !5540
  br i1 %cmp4, label %while.body, label %while.end, !dbg !5537

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %grp, align 8, !dbg !5541
  %10 = load ptr, ptr %adev.addr, align 8, !dbg !5543
  %11 = load ptr, ptr %adma.addr, align 8, !dbg !5544
  %call5 = call i32 @acpi_dma_parse_resource_group(ptr noundef %9, ptr noundef %10, ptr noundef %11) #16, !dbg !5545
  store i32 %call5, ptr %ret, align 4, !dbg !5546
  %12 = load i32, ptr %ret, align 4, !dbg !5547
  %cmp6 = icmp slt i32 %12, 0, !dbg !5549
  br i1 %cmp6, label %if.then7, label %if.end12, !dbg !5550

if.then7:                                         ; preds = %while.body
  br label %do.body8, !dbg !5551

do.body8:                                         ; preds = %if.then7
  br label %do.cond9, !dbg !5554

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5554

do.end10:                                         ; preds = %do.cond9
  %13 = load ptr, ptr %adev.addr, align 8, !dbg !5551
  %dev11 = getelementptr inbounds %struct.acpi_device, ptr %13, i32 0, i32 18, !dbg !5551
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef @.str.8) #18, !dbg !5551
  br label %while.end, !dbg !5556

if.end12:                                         ; preds = %while.body
  %14 = load ptr, ptr %grp, align 8, !dbg !5557
  %15 = load ptr, ptr %grp, align 8, !dbg !5558
  %length13 = getelementptr inbounds %struct.acpi_csrt_group, ptr %15, i32 0, i32 0, !dbg !5559
  %16 = load i32, ptr %length13, align 1, !dbg !5559
  %idx.ext14 = zext i32 %16 to i64, !dbg !5560
  %add.ptr15 = getelementptr i8, ptr %14, i64 %idx.ext14, !dbg !5560
  store ptr %add.ptr15, ptr %grp, align 8, !dbg !5561
  br label %while.cond, !dbg !5537, !llvm.loop !5562

while.end:                                        ; preds = %do.end10, %while.cond
  %17 = load ptr, ptr %csrt, align 8, !dbg !5566
  call void @acpi_put_table(ptr noundef %17) #16, !dbg !5567
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5568
  br label %cleanup, !dbg !5568

cleanup:                                          ; preds = %while.end, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %csrt) #15, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !5568
  call void @llvm.lifetime.end.p0(i64 8, ptr %grp) #15, !dbg !5568
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5568

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5569 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !5573 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5578, metadata !DIExpression()), !dbg !5580
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5579, metadata !DIExpression()), !dbg !5581
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5582
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5583
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5584
  %2 = load ptr, ptr %prev, align 8, !dbg !5584
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5585
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !5586
  ret void, !dbg !5587
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5588 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_dma_controller_free(ptr noundef %dev) #0 align 16 !dbg !5589 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %adma = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5591, metadata !DIExpression()), !dbg !5599
  call void @llvm.lifetime.start.p0(i64 8, ptr %adma) #15, !dbg !5600
  call void @llvm.dbg.declare(metadata ptr %adma, metadata !5592, metadata !DIExpression()), !dbg !5601
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5602
  %tobool = icmp ne ptr %0, null, !dbg !5602
  br i1 %tobool, label %if.end, label %if.then, !dbg !5604

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5605
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5605

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @acpi_dma_lock) #16, !dbg !5606
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5607
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5593, metadata !DIExpression()), !dbg !5607
  %1 = load ptr, ptr @acpi_dma_list, align 8, !dbg !5607
  store ptr %1, ptr %__mptr, align 8, !dbg !5607
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5607
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5607
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5607
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5608
  %3 = load ptr, ptr %tmp, align 8, !dbg !5607
  store ptr %3, ptr %adma, align 8, !dbg !5608
  br label %for.cond, !dbg !5608

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %adma, align 8, !dbg !5609
  %dma_controllers = getelementptr inbounds %struct.acpi_dma, ptr %4, i32 0, i32 0, !dbg !5609
  %cmp = icmp eq ptr %dma_controllers, @acpi_dma_list, !dbg !5609
  %lnot = xor i1 %cmp, true, !dbg !5609
  br i1 %lnot, label %for.body, label %for.end, !dbg !5608

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %adma, align 8, !dbg !5610
  %dev1 = getelementptr inbounds %struct.acpi_dma, ptr %5, i32 0, i32 1, !dbg !5612
  %6 = load ptr, ptr %dev1, align 8, !dbg !5612
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5613
  %cmp2 = icmp eq ptr %6, %7, !dbg !5614
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !5615

if.then3:                                         ; preds = %for.body
  %8 = load ptr, ptr %adma, align 8, !dbg !5616
  %dma_controllers4 = getelementptr inbounds %struct.acpi_dma, ptr %8, i32 0, i32 0, !dbg !5618
  call void @list_del(ptr noundef %dma_controllers4) #16, !dbg !5619
  call void @mutex_unlock(ptr noundef @acpi_dma_lock) #16, !dbg !5620
  %9 = load ptr, ptr %adma, align 8, !dbg !5621
  call void @kfree(ptr noundef %9) #16, !dbg !5622
  store i32 0, ptr %retval, align 4, !dbg !5623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5623

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !5613

for.inc:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #15, !dbg !5624
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !5596, metadata !DIExpression()), !dbg !5624
  %10 = load ptr, ptr %adma, align 8, !dbg !5624
  %dma_controllers7 = getelementptr inbounds %struct.acpi_dma, ptr %10, i32 0, i32 0, !dbg !5624
  %next = getelementptr inbounds %struct.list_head, ptr %dma_controllers7, i32 0, i32 0, !dbg !5624
  %11 = load ptr, ptr %next, align 8, !dbg !5624
  store ptr %11, ptr %__mptr6, align 8, !dbg !5624
  %12 = load ptr, ptr %__mptr6, align 8, !dbg !5624
  %add.ptr9 = getelementptr i8, ptr %12, i64 0, !dbg !5624
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !5624
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #15, !dbg !5609
  %13 = load ptr, ptr %tmp8, align 8, !dbg !5624
  store ptr %13, ptr %adma, align 8, !dbg !5609
  br label %for.cond, !dbg !5609, !llvm.loop !5625

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @acpi_dma_lock) #16, !dbg !5627
  store i32 -19, ptr %retval, align 4, !dbg !5628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5628

cleanup:                                          ; preds = %for.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %adma) #15, !dbg !5629
  %14 = load i32, ptr %retval, align 4, !dbg !5629
  ret i32 %14, !dbg !5629
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !5630 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5636
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !5637
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5638
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5639
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5640
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5641
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5642
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5643
  ret void, !dbg !5644
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5645 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devm_acpi_dma_controller_register(ptr noundef %dev, ptr noundef %acpi_dma_xlate, ptr noundef %data) #0 align 16 !dbg !5648 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %acpi_dma_xlate.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5650, metadata !DIExpression()), !dbg !5655
  store ptr %acpi_dma_xlate, ptr %acpi_dma_xlate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acpi_dma_xlate.addr, metadata !5651, metadata !DIExpression()), !dbg !5656
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5652, metadata !DIExpression()), !dbg !5657
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #15, !dbg !5658
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5653, metadata !DIExpression()), !dbg !5659
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5660
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5654, metadata !DIExpression()), !dbg !5661
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @devm_acpi_dma_release, i64 noundef 0, i32 noundef 3264, i32 noundef -1, ptr noundef @.str) #16, !dbg !5662
  store ptr %call, ptr %res, align 8, !dbg !5663
  %0 = load ptr, ptr %res, align 8, !dbg !5664
  %tobool = icmp ne ptr %0, null, !dbg !5664
  br i1 %tobool, label %if.end, label %if.then, !dbg !5666

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5667

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5668
  %2 = load ptr, ptr %acpi_dma_xlate.addr, align 8, !dbg !5669
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5670
  %call1 = call i32 @acpi_dma_controller_register(ptr noundef %1, ptr noundef %2, ptr noundef %3) #16, !dbg !5671
  store i32 %call1, ptr %ret, align 4, !dbg !5672
  %4 = load i32, ptr %ret, align 4, !dbg !5673
  %tobool2 = icmp ne i32 %4, 0, !dbg !5673
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5675

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %res, align 8, !dbg !5676
  call void @devres_free(ptr noundef %5) #16, !dbg !5678
  %6 = load i32, ptr %ret, align 4, !dbg !5679
  store i32 %6, ptr %retval, align 4, !dbg !5680
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5680

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5681
  %8 = load ptr, ptr %res, align 8, !dbg !5682
  call void @devres_add(ptr noundef %7, ptr noundef %8) #16, !dbg !5683
  store i32 0, ptr %retval, align 4, !dbg !5684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5684

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5685
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #15, !dbg !5685
  %9 = load i32, ptr %retval, align 4, !dbg !5685
  ret i32 %9, !dbg !5685
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5686 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_acpi_dma_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !5690 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5692, metadata !DIExpression()), !dbg !5694
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5693, metadata !DIExpression()), !dbg !5695
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5696
  %call = call i32 @acpi_dma_controller_free(ptr noundef %0) #16, !dbg !5697
  ret void, !dbg !5698
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5699 dso_local void @devres_free(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5700 dso_local void @devres_add(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @devm_acpi_dma_controller_free(ptr noundef %dev) #0 align 16 !dbg !5701 {
entry:
  %dev.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5703, metadata !DIExpression()), !dbg !5709
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5710
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5704, metadata !DIExpression()), !dbg !5710
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5710
  %call = call i32 @devres_release(ptr noundef %0, ptr noundef @devm_acpi_dma_release, ptr noundef null, ptr noundef null) #16, !dbg !5710
  %tobool = icmp ne i32 %call, 0, !dbg !5710
  %lnot = xor i1 %tobool, true, !dbg !5710
  %lnot1 = xor i1 %lnot, true, !dbg !5710
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5710
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5710
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5711
  %tobool2 = icmp ne i32 %1, 0, !dbg !5711
  %lnot3 = xor i1 %tobool2, true, !dbg !5711
  %lnot5 = xor i1 %lnot3, true, !dbg !5711
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5711
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5711
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5711
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5711
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5710

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5711

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5712
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5706, metadata !DIExpression()), !dbg !5712
  store i32 2305, ptr %__flags, align 4, !dbg !5712
  br label %do.body8, !dbg !5712

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5713

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5713

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5712

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5715
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 290, i32 %2, i64 12) #15, !dbg !5715, !srcloc !5717
  br label %do.cond10, !dbg !5715

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5715

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5712

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5718

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5718

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5711
  br label %do.cond15, !dbg !5712

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5712

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5712

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5710
  %tobool17 = icmp ne i32 %3, 0, !dbg !5710
  %lnot18 = xor i1 %tobool17, true, !dbg !5710
  %lnot20 = xor i1 %lnot18, true, !dbg !5710
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5710
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5710
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5710
  store i64 %expval23, ptr %tmp, align 8, !dbg !5711
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5720
  %4 = load i64, ptr %tmp, align 8, !dbg !5710
  ret void, !dbg !5721
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5722 dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_dma_request_slave_chan_by_index(ptr noundef %dev, i64 noundef %index) #0 align 16 !dbg !5729 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  %pdata = alloca %struct.acpi_dma_parser_data, align 8
  %dma_spec = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %resource_list = alloca %struct.list_head, align 8
  %adma = alloca ptr, align 8
  %chan = alloca ptr, align 8
  %found = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr15 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__mptr31 = alloca ptr, align 8
  %tmp33 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5733, metadata !DIExpression()), !dbg !5758
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5734, metadata !DIExpression()), !dbg !5759
  call void @llvm.lifetime.start.p0(i64 32, ptr %pdata) #15, !dbg !5760
  call void @llvm.dbg.declare(metadata ptr %pdata, metadata !5735, metadata !DIExpression()), !dbg !5761
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma_spec) #15, !dbg !5762
  call void @llvm.dbg.declare(metadata ptr %dma_spec, metadata !5741, metadata !DIExpression()), !dbg !5763
  %dma_spec1 = getelementptr inbounds %struct.acpi_dma_parser_data, ptr %pdata, i32 0, i32 0, !dbg !5764
  store ptr %dma_spec1, ptr %dma_spec, align 8, !dbg !5763
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #15, !dbg !5765
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !5742, metadata !DIExpression()), !dbg !5766
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !5767
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !5743, metadata !DIExpression()), !dbg !5767
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5767
  %fwnode = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24, !dbg !5767
  %1 = load ptr, ptr %fwnode, align 8, !dbg !5767
  store ptr %1, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !5767
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !5767
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %2) #16, !dbg !5767
  br i1 %call, label %cond.true, label %cond.false, !dbg !5767

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5768
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5745, metadata !DIExpression()), !dbg !5768
  %3 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !5768
  store ptr %3, ptr %__mptr, align 8, !dbg !5768
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5768
  %add.ptr = getelementptr i8, ptr %4, i64 -16, !dbg !5768
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !5768
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5767
  %5 = load ptr, ptr %tmp2, align 8, !dbg !5768
  br label %cond.end, !dbg !5767

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5767

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !5767
  store ptr %cond, ptr %tmp, align 8, !dbg !5767
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !5769
  %6 = load ptr, ptr %tmp, align 8, !dbg !5767
  store ptr %6, ptr %adev, align 8, !dbg !5766
  call void @llvm.lifetime.start.p0(i64 16, ptr %resource_list) #15, !dbg !5770
  call void @llvm.dbg.declare(metadata ptr %resource_list, metadata !5747, metadata !DIExpression()), !dbg !5771
  call void @llvm.lifetime.start.p0(i64 8, ptr %adma) #15, !dbg !5772
  call void @llvm.dbg.declare(metadata ptr %adma, metadata !5748, metadata !DIExpression()), !dbg !5773
  call void @llvm.lifetime.start.p0(i64 8, ptr %chan) #15, !dbg !5774
  call void @llvm.dbg.declare(metadata ptr %chan, metadata !5749, metadata !DIExpression()), !dbg !5775
  store ptr null, ptr %chan, align 8, !dbg !5775
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #15, !dbg !5776
  call void @llvm.dbg.declare(metadata ptr %found, metadata !5750, metadata !DIExpression()), !dbg !5777
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5778
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5751, metadata !DIExpression()), !dbg !5779
  call void @llvm.memset.p0.i64(ptr align 8 %pdata, i8 0, i64 32, i1 false), !dbg !5780
  %7 = load i64, ptr %index.addr, align 8, !dbg !5781
  %index3 = getelementptr inbounds %struct.acpi_dma_parser_data, ptr %pdata, i32 0, i32 1, !dbg !5782
  store i64 %7, ptr %index3, align 8, !dbg !5783
  %8 = load ptr, ptr %dma_spec, align 8, !dbg !5784
  %chan_id = getelementptr inbounds %struct.acpi_dma_spec, ptr %8, i32 0, i32 0, !dbg !5785
  store i32 -1, ptr %chan_id, align 8, !dbg !5786
  %9 = load ptr, ptr %dma_spec, align 8, !dbg !5787
  %slave_id = getelementptr inbounds %struct.acpi_dma_spec, ptr %9, i32 0, i32 1, !dbg !5788
  store i32 -1, ptr %slave_id, align 4, !dbg !5789
  call void @INIT_LIST_HEAD(ptr noundef %resource_list) #16, !dbg !5790
  %10 = load ptr, ptr %adev, align 8, !dbg !5791
  %call4 = call i32 @acpi_dev_get_resources(ptr noundef %10, ptr noundef %resource_list, ptr noundef @acpi_dma_parse_fixed_dma, ptr noundef %pdata) #16, !dbg !5792
  store i32 %call4, ptr %ret, align 4, !dbg !5793
  call void @acpi_dev_free_resource_list(ptr noundef %resource_list) #16, !dbg !5794
  %11 = load i32, ptr %ret, align 4, !dbg !5795
  %cmp = icmp slt i32 %11, 0, !dbg !5797
  br i1 %cmp, label %if.then, label %if.end, !dbg !5798

if.then:                                          ; preds = %cond.end
  %12 = load i32, ptr %ret, align 4, !dbg !5799
  %conv = sext i32 %12 to i64, !dbg !5799
  %call5 = call ptr @ERR_PTR(i64 noundef %conv) #16, !dbg !5800
  store ptr %call5, ptr %retval, align 8, !dbg !5801
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5801

if.end:                                           ; preds = %cond.end
  %13 = load ptr, ptr %dma_spec, align 8, !dbg !5802
  %slave_id6 = getelementptr inbounds %struct.acpi_dma_spec, ptr %13, i32 0, i32 1, !dbg !5804
  %14 = load i32, ptr %slave_id6, align 4, !dbg !5804
  %cmp7 = icmp slt i32 %14, 0, !dbg !5805
  br i1 %cmp7, label %if.then12, label %lor.lhs.false, !dbg !5806

lor.lhs.false:                                    ; preds = %if.end
  %15 = load ptr, ptr %dma_spec, align 8, !dbg !5807
  %chan_id9 = getelementptr inbounds %struct.acpi_dma_spec, ptr %15, i32 0, i32 0, !dbg !5808
  %16 = load i32, ptr %chan_id9, align 8, !dbg !5808
  %cmp10 = icmp slt i32 %16, 0, !dbg !5809
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !5810

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  %call13 = call ptr @ERR_PTR(i64 noundef -19) #16, !dbg !5811
  store ptr %call13, ptr %retval, align 8, !dbg !5812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5812

if.end14:                                         ; preds = %lor.lhs.false
  call void @mutex_lock(ptr noundef @acpi_dma_lock) #16, !dbg !5813
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #15, !dbg !5814
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !5752, metadata !DIExpression()), !dbg !5814
  %17 = load ptr, ptr @acpi_dma_list, align 8, !dbg !5814
  store ptr %17, ptr %__mptr15, align 8, !dbg !5814
  %18 = load ptr, ptr %__mptr15, align 8, !dbg !5814
  %add.ptr17 = getelementptr i8, ptr %18, i64 0, !dbg !5814
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !5814
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #15, !dbg !5815
  %19 = load ptr, ptr %tmp16, align 8, !dbg !5814
  store ptr %19, ptr %adma, align 8, !dbg !5815
  br label %for.cond, !dbg !5815

for.cond:                                         ; preds = %for.inc, %if.end14
  %20 = load ptr, ptr %adma, align 8, !dbg !5816
  %dma_controllers = getelementptr inbounds %struct.acpi_dma, ptr %20, i32 0, i32 0, !dbg !5816
  %cmp18 = icmp eq ptr %dma_controllers, @acpi_dma_list, !dbg !5816
  %lnot = xor i1 %cmp18, true, !dbg !5816
  br i1 %lnot, label %for.body, label %for.end, !dbg !5815

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %adma, align 8, !dbg !5817
  %22 = load ptr, ptr %dma_spec, align 8, !dbg !5819
  %call20 = call i32 @acpi_dma_update_dma_spec(ptr noundef %21, ptr noundef %22) #16, !dbg !5820
  store i32 %call20, ptr %found, align 4, !dbg !5821
  %23 = load i32, ptr %found, align 4, !dbg !5822
  %cmp21 = icmp slt i32 %23, 0, !dbg !5824
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !5825

if.then23:                                        ; preds = %for.body
  br label %for.inc, !dbg !5826

if.end24:                                         ; preds = %for.body
  %24 = load ptr, ptr %adma, align 8, !dbg !5827
  %acpi_dma_xlate = getelementptr inbounds %struct.acpi_dma, ptr %24, i32 0, i32 2, !dbg !5828
  %25 = load ptr, ptr %acpi_dma_xlate, align 8, !dbg !5828
  %26 = load ptr, ptr %dma_spec, align 8, !dbg !5829
  %27 = load ptr, ptr %adma, align 8, !dbg !5830
  %call25 = call ptr %25(ptr noundef %26, ptr noundef %27) #16, !dbg !5827
  store ptr %call25, ptr %chan, align 8, !dbg !5831
  %28 = load i32, ptr %found, align 4, !dbg !5832
  %cmp26 = icmp sgt i32 %28, 0, !dbg !5834
  br i1 %cmp26, label %if.then29, label %lor.lhs.false28, !dbg !5835

lor.lhs.false28:                                  ; preds = %if.end24
  %29 = load ptr, ptr %chan, align 8, !dbg !5836
  %tobool = icmp ne ptr %29, null, !dbg !5836
  br i1 %tobool, label %if.then29, label %if.end30, !dbg !5837

if.then29:                                        ; preds = %lor.lhs.false28, %if.end24
  br label %for.end, !dbg !5838

if.end30:                                         ; preds = %lor.lhs.false28
  br label %for.inc, !dbg !5839

for.inc:                                          ; preds = %if.end30, %if.then23
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr31) #15, !dbg !5840
  call void @llvm.dbg.declare(metadata ptr %__mptr31, metadata !5755, metadata !DIExpression()), !dbg !5840
  %30 = load ptr, ptr %adma, align 8, !dbg !5840
  %dma_controllers32 = getelementptr inbounds %struct.acpi_dma, ptr %30, i32 0, i32 0, !dbg !5840
  %next = getelementptr inbounds %struct.list_head, ptr %dma_controllers32, i32 0, i32 0, !dbg !5840
  %31 = load ptr, ptr %next, align 8, !dbg !5840
  store ptr %31, ptr %__mptr31, align 8, !dbg !5840
  %32 = load ptr, ptr %__mptr31, align 8, !dbg !5840
  %add.ptr34 = getelementptr i8, ptr %32, i64 0, !dbg !5840
  store ptr %add.ptr34, ptr %tmp33, align 8, !dbg !5840
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr31) #15, !dbg !5816
  %33 = load ptr, ptr %tmp33, align 8, !dbg !5840
  store ptr %33, ptr %adma, align 8, !dbg !5816
  br label %for.cond, !dbg !5816, !llvm.loop !5841

for.end:                                          ; preds = %if.then29, %for.cond
  call void @mutex_unlock(ptr noundef @acpi_dma_lock) #16, !dbg !5843
  %34 = load ptr, ptr %chan, align 8, !dbg !5844
  %tobool35 = icmp ne ptr %34, null, !dbg !5844
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5844

cond.true36:                                      ; preds = %for.end
  %35 = load ptr, ptr %chan, align 8, !dbg !5845
  br label %cond.end39, !dbg !5844

cond.false37:                                     ; preds = %for.end
  %call38 = call ptr @ERR_PTR(i64 noundef -517) #16, !dbg !5846
  br label %cond.end39, !dbg !5844

cond.end39:                                       ; preds = %cond.false37, %cond.true36
  %cond40 = phi ptr [ %35, %cond.true36 ], [ %call38, %cond.false37 ], !dbg !5844
  store ptr %cond40, ptr %retval, align 8, !dbg !5847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5847

cleanup:                                          ; preds = %cond.end39, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5848
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #15, !dbg !5848
  call void @llvm.lifetime.end.p0(i64 8, ptr %chan) #15, !dbg !5848
  call void @llvm.lifetime.end.p0(i64 8, ptr %adma) #15, !dbg !5848
  call void @llvm.lifetime.end.p0(i64 16, ptr %resource_list) #15, !dbg !5848
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #15, !dbg !5848
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma_spec) #15, !dbg !5848
  call void @llvm.lifetime.end.p0(i64 32, ptr %pdata) #15, !dbg !5848
  %36 = load ptr, ptr %retval, align 8, !dbg !5848
  ret ptr %36, !dbg !5848
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !5849 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5851, metadata !DIExpression()), !dbg !5852
  br label %do.body, !dbg !5853

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5854

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5856

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5854

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5858
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5858
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5858
  store volatile ptr %0, ptr %next, align 8, !dbg !5858
  br label %do.end3, !dbg !5858

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5854

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5860

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5861

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5863

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5861

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5865
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5865
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5865
  store volatile ptr %2, ptr %prev, align 8, !dbg !5865
  br label %do.end9, !dbg !5865

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5861

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5867
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5868 dso_local i32 @acpi_dev_get_resources(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_dma_parse_fixed_dma(ptr noundef %res, ptr noundef %data) #0 align 16 !dbg !6286 {
entry:
  %res.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %pdata = alloca ptr, align 8
  %dma = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6288, metadata !DIExpression()), !dbg !6296
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6289, metadata !DIExpression()), !dbg !6297
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdata) #15, !dbg !6298
  call void @llvm.dbg.declare(metadata ptr %pdata, metadata !6290, metadata !DIExpression()), !dbg !6299
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6300
  store ptr %0, ptr %pdata, align 8, !dbg !6299
  %1 = load ptr, ptr %res.addr, align 8, !dbg !6301
  %type = getelementptr inbounds %struct.acpi_resource, ptr %1, i32 0, i32 0, !dbg !6302
  %2 = load i32, ptr %type, align 1, !dbg !6302
  %cmp = icmp eq i32 %2, 18, !dbg !6303
  br i1 %cmp, label %if.then, label %if.end6, !dbg !6304

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma) #15, !dbg !6305
  call void @llvm.dbg.declare(metadata ptr %dma, metadata !6292, metadata !DIExpression()), !dbg !6306
  %3 = load ptr, ptr %res.addr, align 8, !dbg !6307
  %data1 = getelementptr inbounds %struct.acpi_resource, ptr %3, i32 0, i32 2, !dbg !6308
  store ptr %data1, ptr %dma, align 8, !dbg !6306
  %4 = load ptr, ptr %pdata, align 8, !dbg !6309
  %n = getelementptr inbounds %struct.acpi_dma_parser_data, ptr %4, i32 0, i32 2, !dbg !6311
  %5 = load i64, ptr %n, align 8, !dbg !6312
  %inc = add i64 %5, 1, !dbg !6312
  store i64 %inc, ptr %n, align 8, !dbg !6312
  %6 = load ptr, ptr %pdata, align 8, !dbg !6313
  %index = getelementptr inbounds %struct.acpi_dma_parser_data, ptr %6, i32 0, i32 1, !dbg !6314
  %7 = load i64, ptr %index, align 8, !dbg !6314
  %cmp2 = icmp eq i64 %5, %7, !dbg !6315
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !6316

if.then3:                                         ; preds = %if.then
  %8 = load ptr, ptr %dma, align 8, !dbg !6317
  %channels = getelementptr inbounds %struct.acpi_resource_fixed_dma, ptr %8, i32 0, i32 1, !dbg !6319
  %9 = load i16, ptr %channels, align 1, !dbg !6319
  %conv = zext i16 %9 to i32, !dbg !6317
  %10 = load ptr, ptr %pdata, align 8, !dbg !6320
  %dma_spec = getelementptr inbounds %struct.acpi_dma_parser_data, ptr %10, i32 0, i32 0, !dbg !6321
  %chan_id = getelementptr inbounds %struct.acpi_dma_spec, ptr %dma_spec, i32 0, i32 0, !dbg !6322
  store i32 %conv, ptr %chan_id, align 8, !dbg !6323
  %11 = load ptr, ptr %dma, align 8, !dbg !6324
  %request_lines = getelementptr inbounds %struct.acpi_resource_fixed_dma, ptr %11, i32 0, i32 0, !dbg !6325
  %12 = load i16, ptr %request_lines, align 1, !dbg !6325
  %conv4 = zext i16 %12 to i32, !dbg !6324
  %13 = load ptr, ptr %pdata, align 8, !dbg !6326
  %dma_spec5 = getelementptr inbounds %struct.acpi_dma_parser_data, ptr %13, i32 0, i32 0, !dbg !6327
  %slave_id = getelementptr inbounds %struct.acpi_dma_spec, ptr %dma_spec5, i32 0, i32 1, !dbg !6328
  store i32 %conv4, ptr %slave_id, align 4, !dbg !6329
  br label %if.end, !dbg !6330

if.end:                                           ; preds = %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma) #15, !dbg !6331
  br label %if.end6, !dbg !6332

if.end6:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdata) #15, !dbg !6333
  ret i32 1, !dbg !6334
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6335 dso_local void @acpi_dev_free_resource_list(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !6336 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6341, metadata !DIExpression()), !dbg !6342
  %0 = load i64, ptr %error.addr, align 8, !dbg !6343
  %1 = inttoptr i64 %0 to ptr, !dbg !6344
  ret ptr %1, !dbg !6345
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_dma_update_dma_spec(ptr noundef %adma, ptr noundef %dma_spec) #0 align 16 !dbg !6346 {
entry:
  %retval = alloca i32, align 4
  %adma.addr = alloca ptr, align 8
  %dma_spec.addr = alloca ptr, align 8
  store ptr %adma, ptr %adma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adma.addr, metadata !6350, metadata !DIExpression()), !dbg !6352
  store ptr %dma_spec, ptr %dma_spec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_spec.addr, metadata !6351, metadata !DIExpression()), !dbg !6353
  %0 = load ptr, ptr %adma.addr, align 8, !dbg !6354
  %dev = getelementptr inbounds %struct.acpi_dma, ptr %0, i32 0, i32 1, !dbg !6355
  %1 = load ptr, ptr %dev, align 8, !dbg !6355
  %2 = load ptr, ptr %dma_spec.addr, align 8, !dbg !6356
  %dev1 = getelementptr inbounds %struct.acpi_dma_spec, ptr %2, i32 0, i32 2, !dbg !6357
  store ptr %1, ptr %dev1, align 8, !dbg !6358
  %3 = load ptr, ptr %adma.addr, align 8, !dbg !6359
  %base_request_line = getelementptr inbounds %struct.acpi_dma, ptr %3, i32 0, i32 4, !dbg !6361
  %4 = load i16, ptr %base_request_line, align 8, !dbg !6361
  %conv = zext i16 %4 to i32, !dbg !6359
  %cmp = icmp eq i32 %conv, 0, !dbg !6362
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6363

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %adma.addr, align 8, !dbg !6364
  %end_request_line = getelementptr inbounds %struct.acpi_dma, ptr %5, i32 0, i32 5, !dbg !6365
  %6 = load i16, ptr %end_request_line, align 2, !dbg !6365
  %conv3 = zext i16 %6 to i32, !dbg !6364
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !6366
  br i1 %cmp4, label %if.then, label %if.end, !dbg !6367

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !6368
  br label %return, !dbg !6368

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr %dma_spec.addr, align 8, !dbg !6369
  %slave_id = getelementptr inbounds %struct.acpi_dma_spec, ptr %7, i32 0, i32 1, !dbg !6371
  %8 = load i32, ptr %slave_id, align 4, !dbg !6371
  %9 = load ptr, ptr %adma.addr, align 8, !dbg !6372
  %base_request_line6 = getelementptr inbounds %struct.acpi_dma, ptr %9, i32 0, i32 4, !dbg !6373
  %10 = load i16, ptr %base_request_line6, align 8, !dbg !6373
  %conv7 = zext i16 %10 to i32, !dbg !6372
  %cmp8 = icmp slt i32 %8, %conv7, !dbg !6374
  br i1 %cmp8, label %if.then15, label %lor.lhs.false, !dbg !6375

lor.lhs.false:                                    ; preds = %if.end
  %11 = load ptr, ptr %dma_spec.addr, align 8, !dbg !6376
  %slave_id10 = getelementptr inbounds %struct.acpi_dma_spec, ptr %11, i32 0, i32 1, !dbg !6377
  %12 = load i32, ptr %slave_id10, align 4, !dbg !6377
  %13 = load ptr, ptr %adma.addr, align 8, !dbg !6378
  %end_request_line11 = getelementptr inbounds %struct.acpi_dma, ptr %13, i32 0, i32 5, !dbg !6379
  %14 = load i16, ptr %end_request_line11, align 2, !dbg !6379
  %conv12 = zext i16 %14 to i32, !dbg !6378
  %cmp13 = icmp sgt i32 %12, %conv12, !dbg !6380
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !6381

if.then15:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, ptr %retval, align 4, !dbg !6382
  br label %return, !dbg !6382

if.end16:                                         ; preds = %lor.lhs.false
  %15 = load ptr, ptr %adma.addr, align 8, !dbg !6383
  %base_request_line17 = getelementptr inbounds %struct.acpi_dma, ptr %15, i32 0, i32 4, !dbg !6384
  %16 = load i16, ptr %base_request_line17, align 8, !dbg !6384
  %conv18 = zext i16 %16 to i32, !dbg !6383
  %17 = load ptr, ptr %dma_spec.addr, align 8, !dbg !6385
  %slave_id19 = getelementptr inbounds %struct.acpi_dma_spec, ptr %17, i32 0, i32 1, !dbg !6386
  %18 = load i32, ptr %slave_id19, align 4, !dbg !6387
  %sub = sub i32 %18, %conv18, !dbg !6387
  store i32 %sub, ptr %slave_id19, align 4, !dbg !6387
  store i32 1, ptr %retval, align 4, !dbg !6388
  br label %return, !dbg !6388

return:                                           ; preds = %if.end16, %if.then15, %if.then
  %19 = load i32, ptr %retval, align 4, !dbg !6389
  ret i32 %19, !dbg !6389
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_dma_request_slave_chan_by_name(ptr noundef %dev, ptr noundef %name) #0 align 16 !dbg !6390 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6394, metadata !DIExpression()), !dbg !6397
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6395, metadata !DIExpression()), !dbg !6398
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6399
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6396, metadata !DIExpression()), !dbg !6400
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6401
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6402
  %call = call i32 @device_property_match_string(ptr noundef %0, ptr noundef @.str.2, ptr noundef %1) #16, !dbg !6403
  store i32 %call, ptr %index, align 4, !dbg !6404
  %2 = load i32, ptr %index, align 4, !dbg !6405
  %cmp = icmp slt i32 %2, 0, !dbg !6407
  br i1 %cmp, label %if.then, label %if.end9, !dbg !6408

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %name.addr, align 8, !dbg !6409
  %call1 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.3) #16, !dbg !6412
  %tobool = icmp ne i32 %call1, 0, !dbg !6412
  br i1 %tobool, label %if.else, label %if.then2, !dbg !6413

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %index, align 4, !dbg !6414
  br label %if.end8, !dbg !6415

if.else:                                          ; preds = %if.then
  %4 = load ptr, ptr %name.addr, align 8, !dbg !6416
  %call3 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.4) #16, !dbg !6418
  %tobool4 = icmp ne i32 %call3, 0, !dbg !6418
  br i1 %tobool4, label %if.else6, label %if.then5, !dbg !6419

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %index, align 4, !dbg !6420
  br label %if.end, !dbg !6421

if.else6:                                         ; preds = %if.else
  %call7 = call ptr @ERR_PTR(i64 noundef -19) #16, !dbg !6422
  store ptr %call7, ptr %retval, align 8, !dbg !6423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6423

if.end:                                           ; preds = %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then2
  br label %if.end9, !dbg !6424

if.end9:                                          ; preds = %if.end8, %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6425
  %6 = load i32, ptr %index, align 4, !dbg !6426
  %conv = sext i32 %6 to i64, !dbg !6426
  %call10 = call ptr @acpi_dma_request_slave_chan_by_index(ptr noundef %5, i64 noundef %conv) #16, !dbg !6427
  store ptr %call10, ptr %retval, align 8, !dbg !6428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6428

cleanup:                                          ; preds = %if.end9, %if.else6
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6429
  %7 = load ptr, ptr %retval, align 8, !dbg !6429
  ret ptr %7, !dbg !6429
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6430 dso_local i32 @device_property_match_string(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6433 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_dma_simple_xlate(ptr noundef %dma_spec, ptr noundef %adma) #0 align 16 !dbg !6437 {
entry:
  %retval = alloca ptr, align 8
  %dma_spec.addr = alloca ptr, align 8
  %adma.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dma_spec, ptr %dma_spec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma_spec.addr, metadata !6439, metadata !DIExpression()), !dbg !6447
  store ptr %adma, ptr %adma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adma.addr, metadata !6440, metadata !DIExpression()), !dbg !6448
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #15, !dbg !6449
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6441, metadata !DIExpression()), !dbg !6450
  %0 = load ptr, ptr %adma.addr, align 8, !dbg !6451
  %data = getelementptr inbounds %struct.acpi_dma, ptr %0, i32 0, i32 3, !dbg !6452
  %1 = load ptr, ptr %data, align 8, !dbg !6452
  store ptr %1, ptr %info, align 8, !dbg !6450
  %2 = load ptr, ptr %info, align 8, !dbg !6453
  %tobool = icmp ne ptr %2, null, !dbg !6453
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6455

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %info, align 8, !dbg !6456
  %filter_fn = getelementptr inbounds %struct.acpi_dma_filter_info, ptr %3, i32 0, i32 1, !dbg !6457
  %4 = load ptr, ptr %filter_fn, align 8, !dbg !6457
  %tobool1 = icmp ne ptr %4, null, !dbg !6456
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6458

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !6459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6459

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %info, align 8, !dbg !6460
  %dma_cap = getelementptr inbounds %struct.acpi_dma_filter_info, ptr %5, i32 0, i32 0, !dbg !6460
  %6 = load ptr, ptr %info, align 8, !dbg !6460
  %filter_fn2 = getelementptr inbounds %struct.acpi_dma_filter_info, ptr %6, i32 0, i32 1, !dbg !6460
  %7 = load ptr, ptr %filter_fn2, align 8, !dbg !6460
  %8 = load ptr, ptr %dma_spec.addr, align 8, !dbg !6460
  %call = call ptr @__dma_request_channel(ptr noundef %dma_cap, ptr noundef %7, ptr noundef %8, ptr noundef null) #16, !dbg !6460
  store ptr %call, ptr %retval, align 8, !dbg !6461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6461

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #15, !dbg !6462
  %9 = load ptr, ptr %retval, align 8, !dbg !6462
  ret ptr %9, !dbg !6462
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6463 dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6468 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6470, metadata !DIExpression()), !dbg !6475
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6471, metadata !DIExpression()), !dbg !6476
  %0 = load i64, ptr %size.addr, align 8, !dbg !6477
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6478
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6479

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6480
  %tobool = icmp ne i64 %2, 0, !dbg !6480
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6481

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6482
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6472, metadata !DIExpression()), !dbg !6483
  %3 = load i64, ptr %size.addr, align 8, !dbg !6484
  %cmp = icmp ugt i64 %3, 8192, !dbg !6486
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6487

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6488
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6489
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !6490
  store ptr %call, ptr %retval, align 8, !dbg !6491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6491

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6492
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !6492
  store i32 %call2, ptr %index, align 4, !dbg !6493
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6494
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6495
  %9 = ptrtoint ptr %8 to i64, !dbg !6495
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !6496
  %idxprom = zext i32 %call3 to i64, !dbg !6497
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6497
  %10 = load i32, ptr %index, align 4, !dbg !6498
  %idxprom4 = zext i32 %10 to i64, !dbg !6497
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6497
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6497
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6499
  %13 = load i64, ptr %size.addr, align 8, !dbg !6500
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !6501
  store ptr %call6, ptr %retval, align 8, !dbg !6502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6502

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6503
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6504
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6505
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !6506
  store ptr %call8, ptr %retval, align 8, !dbg !6507
  br label %return, !dbg !6507

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6508
  ret ptr %16, !dbg !6508
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6509 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !6510 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6514, metadata !DIExpression()), !dbg !6516
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6515, metadata !DIExpression()), !dbg !6517
  %0 = load i64, ptr %size.addr, align 8, !dbg !6518
  %tobool = icmp ne i64 %0, 0, !dbg !6518
  br i1 %tobool, label %if.end, label %if.then, !dbg !6520

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6521
  br label %return, !dbg !6521

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6522
  %cmp = icmp ule i64 %1, 8, !dbg !6524
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6525

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6526
  br label %return, !dbg !6526

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6527
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6529
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6530

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6531
  %cmp4 = icmp ule i64 %3, 96, !dbg !6532
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6533

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6534
  br label %return, !dbg !6534

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6535
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6537
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6538

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6539
  %cmp9 = icmp ule i64 %5, 192, !dbg !6540
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6541

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6542
  br label %return, !dbg !6542

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6543
  %cmp12 = icmp ule i64 %6, 8, !dbg !6545
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6546

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6547
  br label %return, !dbg !6547

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6548
  %cmp15 = icmp ule i64 %7, 16, !dbg !6550
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6551

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6552
  br label %return, !dbg !6552

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6553
  %cmp18 = icmp ule i64 %8, 32, !dbg !6555
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6556

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6557
  br label %return, !dbg !6557

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6558
  %cmp21 = icmp ule i64 %9, 64, !dbg !6560
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6561

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6562
  br label %return, !dbg !6562

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6563
  %cmp24 = icmp ule i64 %10, 128, !dbg !6565
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6566

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6567
  br label %return, !dbg !6567

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6568
  %cmp27 = icmp ule i64 %11, 256, !dbg !6570
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6571

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6572
  br label %return, !dbg !6572

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6573
  %cmp30 = icmp ule i64 %12, 512, !dbg !6575
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6576

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6577
  br label %return, !dbg !6577

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6578
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6580
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6581

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6582
  br label %return, !dbg !6582

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6583
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6585
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6586

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6587
  br label %return, !dbg !6587

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6588
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6590
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6591

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6592
  br label %return, !dbg !6592

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6593
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6595
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6596

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6597
  br label %return, !dbg !6597

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6598
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6600
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6601

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6602
  br label %return, !dbg !6602

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6603
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6605
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6606

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6607
  br label %return, !dbg !6607

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6608
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6610
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6611

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6612
  br label %return, !dbg !6612

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6613
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6615
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6616

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6617
  br label %return, !dbg !6617

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6618
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6620
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6621

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6622
  br label %return, !dbg !6622

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6623
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6625
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6626

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6627
  br label %return, !dbg !6627

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6628
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6630
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6631

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6632
  br label %return, !dbg !6632

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6633
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6635
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6636

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6637
  br label %return, !dbg !6637

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6638, !range !6640, !noundef !1001
  %tobool69 = trunc i8 %25 to i1, !dbg !6638
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6641

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6642

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_229() #20, !dbg !6643, !srcloc !6646
  unreachable, !dbg !6643

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6647

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6648

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6649

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6651

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6649

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #15, !dbg !6653, !srcloc !6655
  br label %do.end75, !dbg !6653

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6649

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6656
  br label %return, !dbg !6656

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6657
  ret i32 %26, !dbg !6657
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6658 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !6664 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6668, metadata !DIExpression()), !dbg !6670
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6669, metadata !DIExpression()), !dbg !6671
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6672
  %and = and i32 %0, 17, !dbg !6672
  %cmp = icmp eq i32 %and, 0, !dbg !6672
  %lnot = xor i1 %cmp, true, !dbg !6672
  %lnot1 = xor i1 %lnot, true, !dbg !6672
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6672
  %conv = sext i32 %lnot.ext to i64, !dbg !6672
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6672
  %tobool = icmp ne i64 %expval, 0, !dbg !6672
  br i1 %tobool, label %if.then, label %if.end, !dbg !6674

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6675
  br label %return, !dbg !6675

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6676
  %and2 = and i32 %1, 1, !dbg !6678
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6678
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6679

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6680
  br label %return, !dbg !6680

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6681
  br label %return, !dbg !6681

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6683
  ret i32 %2, !dbg !6683
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6684 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6685 dso_local void @__compiletime_assert_229() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6686 dso_local i32 @acpi_get_table(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6691 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_dma_parse_resource_group(ptr noundef %grp, ptr noundef %adev, ptr noundef %adma) #0 align 16 !dbg !6695 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %adev.addr = alloca ptr, align 8
  %adma.addr = alloca ptr, align 8
  %si = alloca ptr, align 8
  %resource_list = alloca %struct.list_head, align 8
  %rentry = alloca ptr, align 8
  %mem = alloca i64, align 8
  %irq = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr22 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !6701, metadata !DIExpression()), !dbg !6716
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !6702, metadata !DIExpression()), !dbg !6717
  store ptr %adma, ptr %adma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adma.addr, metadata !6703, metadata !DIExpression()), !dbg !6718
  call void @llvm.lifetime.start.p0(i64 8, ptr %si) #15, !dbg !6719
  call void @llvm.dbg.declare(metadata ptr %si, metadata !6704, metadata !DIExpression()), !dbg !6720
  call void @llvm.lifetime.start.p0(i64 16, ptr %resource_list) #15, !dbg !6721
  call void @llvm.dbg.declare(metadata ptr %resource_list, metadata !6705, metadata !DIExpression()), !dbg !6722
  call void @llvm.lifetime.start.p0(i64 8, ptr %rentry) #15, !dbg !6723
  call void @llvm.dbg.declare(metadata ptr %rentry, metadata !6706, metadata !DIExpression()), !dbg !6724
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #15, !dbg !6725
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !6707, metadata !DIExpression()), !dbg !6726
  store i64 0, ptr %mem, align 8, !dbg !6726
  call void @llvm.lifetime.start.p0(i64 8, ptr %irq) #15, !dbg !6725
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !6708, metadata !DIExpression()), !dbg !6727
  store i64 0, ptr %irq, align 8, !dbg !6727
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6728
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6709, metadata !DIExpression()), !dbg !6729
  %0 = load ptr, ptr %grp.addr, align 8, !dbg !6730
  %shared_info_length = getelementptr inbounds %struct.acpi_csrt_group, ptr %0, i32 0, i32 7, !dbg !6732
  %1 = load i32, ptr %shared_info_length, align 1, !dbg !6732
  %conv = zext i32 %1 to i64, !dbg !6730
  %cmp = icmp ne i64 %conv, 28, !dbg !6733
  br i1 %cmp, label %if.then, label %if.end, !dbg !6734

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !6735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6735

if.end:                                           ; preds = %entry
  call void @INIT_LIST_HEAD(ptr noundef %resource_list) #16, !dbg !6736
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !6737
  %call = call i32 @acpi_dev_get_resources(ptr noundef %2, ptr noundef %resource_list, ptr noundef null, ptr noundef null) #16, !dbg !6738
  store i32 %call, ptr %ret, align 4, !dbg !6739
  %3 = load i32, ptr %ret, align 4, !dbg !6740
  %cmp2 = icmp sle i32 %3, 0, !dbg !6742
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !6743

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6744

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6745
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6710, metadata !DIExpression()), !dbg !6745
  %next = getelementptr inbounds %struct.list_head, ptr %resource_list, i32 0, i32 0, !dbg !6745
  %4 = load ptr, ptr %next, align 8, !dbg !6745
  store ptr %4, ptr %__mptr, align 8, !dbg !6745
  %5 = load ptr, ptr %__mptr, align 8, !dbg !6745
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !6745
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6745
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6746
  %6 = load ptr, ptr %tmp, align 8, !dbg !6745
  store ptr %6, ptr %rentry, align 8, !dbg !6746
  br label %for.cond, !dbg !6746

for.cond:                                         ; preds = %for.inc, %if.end5
  %7 = load ptr, ptr %rentry, align 8, !dbg !6747
  %node = getelementptr inbounds %struct.resource_entry, ptr %7, i32 0, i32 0, !dbg !6747
  %cmp6 = icmp eq ptr %node, %resource_list, !dbg !6747
  %lnot = xor i1 %cmp6, true, !dbg !6747
  br i1 %lnot, label %for.body, label %for.end, !dbg !6746

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %rentry, align 8, !dbg !6748
  %res = getelementptr inbounds %struct.resource_entry, ptr %8, i32 0, i32 1, !dbg !6751
  %9 = load ptr, ptr %res, align 8, !dbg !6751
  %call8 = call i64 @resource_type(ptr noundef %9) #16, !dbg !6752
  %cmp9 = icmp eq i64 %call8, 512, !dbg !6753
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !6754

if.then11:                                        ; preds = %for.body
  %10 = load ptr, ptr %rentry, align 8, !dbg !6755
  %res12 = getelementptr inbounds %struct.resource_entry, ptr %10, i32 0, i32 1, !dbg !6756
  %11 = load ptr, ptr %res12, align 8, !dbg !6756
  %start = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 0, !dbg !6757
  %12 = load i64, ptr %start, align 8, !dbg !6757
  store i64 %12, ptr %mem, align 8, !dbg !6758
  br label %if.end21, !dbg !6759

if.else:                                          ; preds = %for.body
  %13 = load ptr, ptr %rentry, align 8, !dbg !6760
  %res13 = getelementptr inbounds %struct.resource_entry, ptr %13, i32 0, i32 1, !dbg !6762
  %14 = load ptr, ptr %res13, align 8, !dbg !6762
  %call14 = call i64 @resource_type(ptr noundef %14) #16, !dbg !6763
  %cmp15 = icmp eq i64 %call14, 1024, !dbg !6764
  br i1 %cmp15, label %if.then17, label %if.end20, !dbg !6765

if.then17:                                        ; preds = %if.else
  %15 = load ptr, ptr %rentry, align 8, !dbg !6766
  %res18 = getelementptr inbounds %struct.resource_entry, ptr %15, i32 0, i32 1, !dbg !6767
  %16 = load ptr, ptr %res18, align 8, !dbg !6767
  %start19 = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 0, !dbg !6768
  %17 = load i64, ptr %start19, align 8, !dbg !6768
  store i64 %17, ptr %irq, align 8, !dbg !6769
  br label %if.end20, !dbg !6770

if.end20:                                         ; preds = %if.then17, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then11
  br label %for.inc, !dbg !6771

for.inc:                                          ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr22) #15, !dbg !6772
  call void @llvm.dbg.declare(metadata ptr %__mptr22, metadata !6713, metadata !DIExpression()), !dbg !6772
  %18 = load ptr, ptr %rentry, align 8, !dbg !6772
  %node23 = getelementptr inbounds %struct.resource_entry, ptr %18, i32 0, i32 0, !dbg !6772
  %next24 = getelementptr inbounds %struct.list_head, ptr %node23, i32 0, i32 0, !dbg !6772
  %19 = load ptr, ptr %next24, align 8, !dbg !6772
  store ptr %19, ptr %__mptr22, align 8, !dbg !6772
  %20 = load ptr, ptr %__mptr22, align 8, !dbg !6772
  %add.ptr26 = getelementptr i8, ptr %20, i64 0, !dbg !6772
  store ptr %add.ptr26, ptr %tmp25, align 8, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr22) #15, !dbg !6747
  %21 = load ptr, ptr %tmp25, align 8, !dbg !6772
  store ptr %21, ptr %rentry, align 8, !dbg !6747
  br label %for.cond, !dbg !6747, !llvm.loop !6773

for.end:                                          ; preds = %for.cond
  call void @acpi_dev_free_resource_list(ptr noundef %resource_list) #16, !dbg !6775
  %22 = load i64, ptr %mem, align 8, !dbg !6776
  %cmp27 = icmp eq i64 %22, 0, !dbg !6778
  br i1 %cmp27, label %land.lhs.true, label %if.end32, !dbg !6779

land.lhs.true:                                    ; preds = %for.end
  %23 = load i64, ptr %irq, align 8, !dbg !6780
  %cmp29 = icmp eq i64 %23, 0, !dbg !6781
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !6782

if.then31:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !6783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6783

if.end32:                                         ; preds = %land.lhs.true, %for.end
  %24 = load ptr, ptr %grp.addr, align 8, !dbg !6784
  %arrayidx = getelementptr %struct.acpi_csrt_group, ptr %24, i64 1, !dbg !6784
  store ptr %arrayidx, ptr %si, align 8, !dbg !6785
  %25 = load ptr, ptr %si, align 8, !dbg !6786
  %mmio_base_low = getelementptr inbounds %struct.acpi_csrt_shared_info, ptr %25, i32 0, i32 2, !dbg !6788
  %26 = load i32, ptr %mmio_base_low, align 1, !dbg !6788
  %27 = load i64, ptr %mem, align 8, !dbg !6789
  %and = and i64 %27, 4294967295, !dbg !6789
  %conv33 = trunc i64 %and to i32, !dbg !6789
  %cmp34 = icmp ne i32 %26, %conv33, !dbg !6790
  br i1 %cmp34, label %if.then40, label %lor.lhs.false, !dbg !6791

lor.lhs.false:                                    ; preds = %if.end32
  %28 = load ptr, ptr %si, align 8, !dbg !6792
  %mmio_base_high = getelementptr inbounds %struct.acpi_csrt_shared_info, ptr %28, i32 0, i32 3, !dbg !6793
  %29 = load i32, ptr %mmio_base_high, align 1, !dbg !6793
  %30 = load i64, ptr %mem, align 8, !dbg !6794
  %shr = lshr i64 %30, 16, !dbg !6794
  %shr36 = lshr i64 %shr, 16, !dbg !6794
  %conv37 = trunc i64 %shr36 to i32, !dbg !6794
  %cmp38 = icmp ne i32 %29, %conv37, !dbg !6795
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !6796

if.then40:                                        ; preds = %lor.lhs.false, %if.end32
  store i32 0, ptr %retval, align 4, !dbg !6797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6797

if.end41:                                         ; preds = %lor.lhs.false
  %31 = load ptr, ptr %si, align 8, !dbg !6798
  %gsi_interrupt = getelementptr inbounds %struct.acpi_csrt_shared_info, ptr %31, i32 0, i32 4, !dbg !6799
  %32 = load i32, ptr %gsi_interrupt, align 1, !dbg !6799
  %33 = load ptr, ptr %si, align 8, !dbg !6800
  %interrupt_mode = getelementptr inbounds %struct.acpi_csrt_shared_info, ptr %33, i32 0, i32 6, !dbg !6801
  %34 = load i8, ptr %interrupt_mode, align 1, !dbg !6801
  %conv42 = zext i8 %34 to i32, !dbg !6800
  %35 = load ptr, ptr %si, align 8, !dbg !6802
  %interrupt_polarity = getelementptr inbounds %struct.acpi_csrt_shared_info, ptr %35, i32 0, i32 5, !dbg !6803
  %36 = load i8, ptr %interrupt_polarity, align 1, !dbg !6803
  %conv43 = zext i8 %36 to i32, !dbg !6802
  %call44 = call i32 @acpi_register_gsi(ptr noundef null, i32 noundef %32, i32 noundef %conv42, i32 noundef %conv43) #16, !dbg !6804
  store i32 %call44, ptr %ret, align 4, !dbg !6805
  %37 = load i32, ptr %ret, align 4, !dbg !6806
  %cmp45 = icmp slt i32 %37, 0, !dbg !6808
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !6809

if.then47:                                        ; preds = %if.end41
  store i32 0, ptr %retval, align 4, !dbg !6810
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6810

if.end48:                                         ; preds = %if.end41
  %38 = load i32, ptr %ret, align 4, !dbg !6811
  %conv49 = sext i32 %38 to i64, !dbg !6811
  %39 = load i64, ptr %irq, align 8, !dbg !6813
  %cmp50 = icmp ne i64 %conv49, %39, !dbg !6814
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !6815

if.then52:                                        ; preds = %if.end48
  store i32 0, ptr %retval, align 4, !dbg !6816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6816

if.end53:                                         ; preds = %if.end48
  %40 = load ptr, ptr %si, align 8, !dbg !6817
  %base_request_line = getelementptr inbounds %struct.acpi_csrt_shared_info, ptr %40, i32 0, i32 9, !dbg !6819
  %41 = load i16, ptr %base_request_line, align 1, !dbg !6819
  %conv54 = zext i16 %41 to i32, !dbg !6817
  %cmp55 = icmp eq i32 %conv54, 0, !dbg !6820
  br i1 %cmp55, label %land.lhs.true57, label %if.end62, !dbg !6821

land.lhs.true57:                                  ; preds = %if.end53
  %42 = load ptr, ptr %si, align 8, !dbg !6822
  %num_handshake_signals = getelementptr inbounds %struct.acpi_csrt_shared_info, ptr %42, i32 0, i32 10, !dbg !6823
  %43 = load i16, ptr %num_handshake_signals, align 1, !dbg !6823
  %conv58 = zext i16 %43 to i32, !dbg !6822
  %cmp59 = icmp eq i32 %conv58, 0, !dbg !6824
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !6825

if.then61:                                        ; preds = %land.lhs.true57
  store i32 0, ptr %retval, align 4, !dbg !6826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6826

if.end62:                                         ; preds = %land.lhs.true57, %if.end53
  %44 = load ptr, ptr %adev.addr, align 8, !dbg !6827
  %dev = getelementptr inbounds %struct.acpi_device, ptr %44, i32 0, i32 18, !dbg !6828
  %45 = load ptr, ptr %si, align 8, !dbg !6829
  %dma_address_width = getelementptr inbounds %struct.acpi_csrt_shared_info, ptr %45, i32 0, i32 8, !dbg !6829
  %46 = load i8, ptr %dma_address_width, align 1, !dbg !6829
  %conv63 = zext i8 %46 to i32, !dbg !6829
  %cmp64 = icmp eq i32 %conv63, 64, !dbg !6829
  br i1 %cmp64, label %cond.true, label %cond.false, !dbg !6829

cond.true:                                        ; preds = %if.end62
  br label %cond.end, !dbg !6829

cond.false:                                       ; preds = %if.end62
  %47 = load ptr, ptr %si, align 8, !dbg !6829
  %dma_address_width66 = getelementptr inbounds %struct.acpi_csrt_shared_info, ptr %47, i32 0, i32 8, !dbg !6829
  %48 = load i8, ptr %dma_address_width66, align 1, !dbg !6829
  %conv67 = zext i8 %48 to i32, !dbg !6829
  %sh_prom = zext i32 %conv67 to i64, !dbg !6829
  %shl = shl i64 1, %sh_prom, !dbg !6829
  %sub = sub i64 %shl, 1, !dbg !6829
  br label %cond.end, !dbg !6829

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %sub, %cond.false ], !dbg !6829
  %call68 = call i32 @dma_coerce_mask_and_coherent(ptr noundef %dev, i64 noundef %cond) #16, !dbg !6830
  store i32 %call68, ptr %ret, align 4, !dbg !6831
  %49 = load i32, ptr %ret, align 4, !dbg !6832
  %tobool = icmp ne i32 %49, 0, !dbg !6832
  br i1 %tobool, label %if.then69, label %if.end70, !dbg !6834

if.then69:                                        ; preds = %cond.end
  store i32 0, ptr %retval, align 4, !dbg !6835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6835

if.end70:                                         ; preds = %cond.end
  %50 = load ptr, ptr %si, align 8, !dbg !6836
  %base_request_line71 = getelementptr inbounds %struct.acpi_csrt_shared_info, ptr %50, i32 0, i32 9, !dbg !6837
  %51 = load i16, ptr %base_request_line71, align 1, !dbg !6837
  %52 = load ptr, ptr %adma.addr, align 8, !dbg !6838
  %base_request_line72 = getelementptr inbounds %struct.acpi_dma, ptr %52, i32 0, i32 4, !dbg !6839
  store i16 %51, ptr %base_request_line72, align 8, !dbg !6840
  %53 = load ptr, ptr %si, align 8, !dbg !6841
  %base_request_line73 = getelementptr inbounds %struct.acpi_csrt_shared_info, ptr %53, i32 0, i32 9, !dbg !6842
  %54 = load i16, ptr %base_request_line73, align 1, !dbg !6842
  %conv74 = zext i16 %54 to i32, !dbg !6841
  %55 = load ptr, ptr %si, align 8, !dbg !6843
  %num_handshake_signals75 = getelementptr inbounds %struct.acpi_csrt_shared_info, ptr %55, i32 0, i32 10, !dbg !6844
  %56 = load i16, ptr %num_handshake_signals75, align 1, !dbg !6844
  %conv76 = zext i16 %56 to i32, !dbg !6843
  %add = add i32 %conv74, %conv76, !dbg !6845
  %sub77 = sub i32 %add, 1, !dbg !6846
  %conv78 = trunc i32 %sub77 to i16, !dbg !6841
  %57 = load ptr, ptr %adma.addr, align 8, !dbg !6847
  %end_request_line = getelementptr inbounds %struct.acpi_dma, ptr %57, i32 0, i32 5, !dbg !6848
  store i16 %conv78, ptr %end_request_line, align 2, !dbg !6849
  store i32 1, ptr %retval, align 4, !dbg !6850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6850

cleanup:                                          ; preds = %if.end70, %if.then69, %if.then61, %if.then52, %if.then47, %if.then40, %if.then31, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6851
  call void @llvm.lifetime.end.p0(i64 8, ptr %irq) #15, !dbg !6851
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #15, !dbg !6851
  call void @llvm.lifetime.end.p0(i64 8, ptr %rentry) #15, !dbg !6851
  call void @llvm.lifetime.end.p0(i64 16, ptr %resource_list) #15, !dbg !6851
  call void @llvm.lifetime.end.p0(i64 8, ptr %si) #15, !dbg !6851
  %58 = load i32, ptr %retval, align 4, !dbg !6851
  ret i32 %58, !dbg !6851
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6852 dso_local void @acpi_put_table(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_type(ptr noundef %res) #5 align 16 !dbg !6855 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6861, metadata !DIExpression()), !dbg !6862
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6863
  %flags = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3, !dbg !6864
  %1 = load i64, ptr %flags, align 8, !dbg !6864
  %and = and i64 %1, 7936, !dbg !6865
  ret i64 %and, !dbg !6866
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6867 dso_local i32 @acpi_register_gsi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_coerce_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) #5 align 16 !dbg !6870 {
entry:
  %dev.addr = alloca ptr, align 8
  %mask.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6875, metadata !DIExpression()), !dbg !6877
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6876, metadata !DIExpression()), !dbg !6878
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6879
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16, !dbg !6880
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6881
  %dma_mask = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 15, !dbg !6882
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8, !dbg !6883
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6884
  %3 = load i64, ptr %mask.addr, align 8, !dbg !6885
  %call = call i32 @dma_set_mask_and_coherent(ptr noundef %2, i64 noundef %3) #16, !dbg !6886
  ret i32 %call, !dbg !6887
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) #5 align 16 !dbg !6888 {
entry:
  %dev.addr = alloca ptr, align 8
  %mask.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6890, metadata !DIExpression()), !dbg !6893
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6891, metadata !DIExpression()), !dbg !6894
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !6895
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !6892, metadata !DIExpression()), !dbg !6896
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6897
  %1 = load i64, ptr %mask.addr, align 8, !dbg !6898
  %call = call i32 @dma_set_mask(ptr noundef %0, i64 noundef %1) #16, !dbg !6899
  store i32 %call, ptr %rc, align 4, !dbg !6896
  %2 = load i32, ptr %rc, align 4, !dbg !6900
  %cmp = icmp eq i32 %2, 0, !dbg !6902
  br i1 %cmp, label %if.then, label %if.end, !dbg !6903

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6904
  %4 = load i64, ptr %mask.addr, align 8, !dbg !6905
  %call1 = call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef %4) #16, !dbg !6906
  br label %if.end, !dbg !6906

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4, !dbg !6907
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !6908
  ret i32 %5, !dbg !6909
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6910 dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6911 dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6912 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6916, metadata !DIExpression()), !dbg !6919
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6917, metadata !DIExpression()), !dbg !6920
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6918, metadata !DIExpression()), !dbg !6921
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6922
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6924
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6925
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !6926
  br i1 %call, label %if.end, label %if.then, !dbg !6927

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6928

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6929
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6930
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6931
  store ptr %3, ptr %prev1, align 8, !dbg !6932
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6933
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6934
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6935
  store ptr %5, ptr %next2, align 8, !dbg !6936
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6937
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6938
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6939
  store ptr %7, ptr %prev3, align 8, !dbg !6940
  br label %do.body, !dbg !6941

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6942

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6944

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6942

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6946
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6946
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6946
  store volatile ptr %9, ptr %next6, align 8, !dbg !6946
  br label %do.end7, !dbg !6946

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6942

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6948
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6949 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6953, metadata !DIExpression()), !dbg !6956
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6954, metadata !DIExpression()), !dbg !6957
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6955, metadata !DIExpression()), !dbg !6958
  ret i1 true, !dbg !6959
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !6960 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6962, metadata !DIExpression()), !dbg !6963
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6964
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !6966
  br i1 %call, label %if.end, label %if.then, !dbg !6967

if.then:                                          ; preds = %entry
  br label %return, !dbg !6968

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6969
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6970
  %2 = load ptr, ptr %prev, align 8, !dbg !6970
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6971
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6972
  %4 = load ptr, ptr %next, align 8, !dbg !6972
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !6973
  br label %return, !dbg !6974

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6974
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !6975 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6979, metadata !DIExpression()), !dbg !6980
  ret i1 true, !dbg !6981
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6982 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6984, metadata !DIExpression()), !dbg !6986
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6985, metadata !DIExpression()), !dbg !6987
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6988
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6989
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6990
  store ptr %0, ptr %prev1, align 8, !dbg !6991
  br label %do.body, !dbg !6992

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6993

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6995

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6993

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6997
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6997
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6997
  store volatile ptr %2, ptr %next4, align 8, !dbg !6997
  br label %do.end5, !dbg !6997

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6993

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6999
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408}
!llvm.ident = !{!5409}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_dma_lock", scope: !2, file: !3, line: 26, type: !714, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/dma/.acpi-dma.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/dma/acpi-dma\22 -D KBUILD_BASENAME=\22acpi_dma\22 -D KBUILD_MODNAME=\22acpi_dma\22 -D __KBUILD_MODNAME=kmod_acpi_dma -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/dma/acpi-dma.ll drivers/dma/acpi-dma.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !232, globals: !5346, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/dma/acpi-dma.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dba21a89a7ac345c3c79fa57498a38bc")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !122, !131, !136, !141, !147, !153, !164, !169, !181, !187, !191, !198, !210, !217, !222}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
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
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !117, line: 30, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!120 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!121 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!126 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!127 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!128 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!130 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!145 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_desc_metadata_mode", file: !148, line: 282, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/dmaengine.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0cbc91064c120734c9b4d09ca2ee7349")
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "DESC_METADATA_NONE", value: 0)
!151 = !DIEnumerator(name: "DESC_METADATA_CLIENT", value: 1)
!152 = !DIEnumerator(name: "DESC_METADATA_ENGINE", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmaengine_alignment", file: !148, line: 736, baseType: !7, size: 32, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163}
!155 = !DIEnumerator(name: "DMAENGINE_ALIGN_1_BYTE", value: 0)
!156 = !DIEnumerator(name: "DMAENGINE_ALIGN_2_BYTES", value: 1)
!157 = !DIEnumerator(name: "DMAENGINE_ALIGN_4_BYTES", value: 2)
!158 = !DIEnumerator(name: "DMAENGINE_ALIGN_8_BYTES", value: 3)
!159 = !DIEnumerator(name: "DMAENGINE_ALIGN_16_BYTES", value: 4)
!160 = !DIEnumerator(name: "DMAENGINE_ALIGN_32_BYTES", value: 5)
!161 = !DIEnumerator(name: "DMAENGINE_ALIGN_64_BYTES", value: 6)
!162 = !DIEnumerator(name: "DMAENGINE_ALIGN_128_BYTES", value: 7)
!163 = !DIEnumerator(name: "DMAENGINE_ALIGN_256_BYTES", value: 8)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_residue_granularity", file: !148, line: 472, baseType: !7, size: 32, elements: !165)
!165 = !{!166, !167, !168}
!166 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_DESCRIPTOR", value: 0)
!167 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_SEGMENT", value: 1)
!168 = !DIEnumerator(name: "DMA_RESIDUE_GRANULARITY_BURST", value: 2)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_ctrl_flags", file: !148, line: 194, baseType: !7, size: 32, elements: !170)
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!171 = !DIEnumerator(name: "DMA_PREP_INTERRUPT", value: 1)
!172 = !DIEnumerator(name: "DMA_CTRL_ACK", value: 2)
!173 = !DIEnumerator(name: "DMA_PREP_PQ_DISABLE_P", value: 4)
!174 = !DIEnumerator(name: "DMA_PREP_PQ_DISABLE_Q", value: 8)
!175 = !DIEnumerator(name: "DMA_PREP_CONTINUE", value: 16)
!176 = !DIEnumerator(name: "DMA_PREP_FENCE", value: 32)
!177 = !DIEnumerator(name: "DMA_CTRL_REUSE", value: 64)
!178 = !DIEnumerator(name: "DMA_PREP_CMD", value: 128)
!179 = !DIEnumerator(name: "DMA_PREP_REPEAT", value: 256)
!180 = !DIEnumerator(name: "DMA_PREP_LOAD_EOT", value: 512)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmaengine_tx_result", file: !148, line: 537, baseType: !7, size: 32, elements: !182)
!182 = !{!183, !184, !185, !186}
!183 = !DIEnumerator(name: "DMA_TRANS_NOERROR", value: 0)
!184 = !DIEnumerator(name: "DMA_TRANS_READ_FAILED", value: 1)
!185 = !DIEnumerator(name: "DMA_TRANS_WRITE_FAILED", value: 2)
!186 = !DIEnumerator(name: "DMA_TRANS_ABORTED", value: 3)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sum_check_flags", file: !148, line: 220, baseType: !7, size: 32, elements: !188)
!188 = !{!189, !190}
!189 = !DIEnumerator(name: "SUM_CHECK_P_RESULT", value: 1)
!190 = !DIEnumerator(name: "SUM_CHECK_Q_RESULT", value: 2)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_transfer_direction", file: !148, line: 79, baseType: !7, size: 32, elements: !192)
!192 = !{!193, !194, !195, !196, !197}
!193 = !DIEnumerator(name: "DMA_MEM_TO_MEM", value: 0)
!194 = !DIEnumerator(name: "DMA_MEM_TO_DEV", value: 1)
!195 = !DIEnumerator(name: "DMA_DEV_TO_MEM", value: 2)
!196 = !DIEnumerator(name: "DMA_DEV_TO_DEV", value: 3)
!197 = !DIEnumerator(name: "DMA_TRANS_NONE", value: 4)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_slave_buswidth", file: !148, line: 373, baseType: !7, size: 32, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209}
!200 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_UNDEFINED", value: 0)
!201 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_1_BYTE", value: 1)
!202 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_2_BYTES", value: 2)
!203 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_3_BYTES", value: 3)
!204 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_4_BYTES", value: 4)
!205 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_8_BYTES", value: 8)
!206 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_16_BYTES", value: 16)
!207 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_32_BYTES", value: 32)
!208 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_64_BYTES", value: 64)
!209 = !DIEnumerator(name: "DMA_SLAVE_BUSWIDTH_128_BYTES", value: 128)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_status", file: !148, line: 37, baseType: !7, size: 32, elements: !211)
!211 = !{!212, !213, !214, !215, !216}
!212 = !DIEnumerator(name: "DMA_COMPLETE", value: 0)
!213 = !DIEnumerator(name: "DMA_IN_PROGRESS", value: 1)
!214 = !DIEnumerator(name: "DMA_PAUSED", value: 2)
!215 = !DIEnumerator(name: "DMA_ERROR", value: 3)
!216 = !DIEnumerator(name: "DMA_OUT_OF_ORDER", value: 4)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !218, line: 10, baseType: !7, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!219 = !{!220, !221}
!220 = !DIEnumerator(name: "false", value: 0)
!221 = !DIEnumerator(name: "true", value: 1)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !223, line: 364, baseType: !7, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!224 = !{!225, !226, !227, !228, !229, !230, !231}
!225 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!226 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!227 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!228 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!229 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!230 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!231 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!232 = !{!233, !234, !1226, !4956, !425, !5279, !5294, !5295, !5280, !5307, !5328, !239, !5344}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !236, line: 367, size: 11200, elements: !237)
!236 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!237 = !{!238, !243, !244, !247, !4704, !4705, !4706, !4715, !4733, !4809, !4839, !4863, !4884, !4890, !4899, !4931, !4945, !4949, !4950, !4951, !4952, !4953, !4954, !4955}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !235, file: !236, line: 368, baseType: !239, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !240, line: 21, baseType: !241)
!240 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !242, line: 27, baseType: !7)
!242 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!243 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !235, file: !236, line: 369, baseType: !109, size: 32, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !235, file: !236, line: 370, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !246, line: 424, baseType: !233)
!246 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!247 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !235, file: !236, line: 371, baseType: !248, size: 512, offset: 128)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !249, line: 41, size: 512, elements: !250)
!249 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!250 = !{!251, !253, !4700, !4701, !4702, !4703}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !248, file: !249, line: 42, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !248, file: !249, line: 43, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !249, line: 125, size: 1408, elements: !257)
!257 = !{!258, !262, !266, !275, !4630, !4631, !4635, !4639, !4643, !4647, !4651, !4652, !4656, !4660, !4664, !4675, !4676, !4677, !4678, !4688, !4692, !4696}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !256, file: !249, line: 126, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!252, !252}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !256, file: !249, line: 127, baseType: !263, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !252}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !256, file: !249, line: 128, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!270, !273}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !271, line: 35, baseType: !272)
!271 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!272 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !256, file: !249, line: 129, baseType: !276, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !273, !281}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !284)
!284 = !{!285, !4273, !4275, !4278, !4279, !4330, !4415, !4416, !4417, !4418, !4419, !4426, !4518, !4531, !4541, !4545, !4547, !4548, !4549, !4553, !4560, !4561, !4564, !4567, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4607, !4608, !4609, !4612, !4615, !4624, !4625, !4626, !4627, !4628, !4629}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !283, file: !94, line: 706, baseType: !286, size: 512)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !287, line: 64, size: 512, elements: !288)
!287 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!288 = !{!289, !293, !299, !301, !388, !4160, !4263, !4268, !4269, !4270, !4271, !4272}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !287, line: 65, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !286, file: !287, line: 66, baseType: !294, size: 128, offset: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !271, line: 190, size: 128, elements: !295)
!295 = !{!296, !298}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !271, line: 191, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !294, file: !271, line: 191, baseType: !297, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !286, file: !287, line: 67, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !286, file: !287, line: 68, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !287, line: 168, size: 768, elements: !304)
!304 = !{!305, !306, !347, !348}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !303, file: !287, line: 169, baseType: !294, size: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !303, file: !287, line: 170, baseType: !307, size: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !308, line: 29, baseType: !309)
!308 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !308, line: 17, size: 32, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !308, line: 18, baseType: !312, size: 32)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !308, line: 18, size: 32, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !312, file: !308, line: 19, baseType: !315, size: 32)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !316, line: 14, size: 32, elements: !317)
!316 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !315, file: !316, line: 15, baseType: !319, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !320, line: 44, baseType: !321)
!320 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !320, line: 14, size: 32, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !320, line: 15, baseType: !324, size: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !320, line: 15, size: 32, elements: !325)
!325 = !{!326, !331, !339}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !324, file: !320, line: 16, baseType: !327, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !271, line: 174, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !271, line: 172, size: 32, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !328, file: !271, line: 173, baseType: !109, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !320, line: 24, baseType: !332, size: 16)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !320, line: 24, size: 16, elements: !333)
!333 = !{!334, !338}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !332, file: !320, line: 25, baseType: !335, size: 8)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !240, line: 17, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !242, line: 21, baseType: !337)
!337 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !332, file: !320, line: 26, baseType: !335, size: 8, offset: 8)
!339 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !320, line: 28, baseType: !340, size: 32)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !320, line: 28, size: 32, elements: !341)
!341 = !{!342, !346}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !340, file: !320, line: 29, baseType: !343, size: 16)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !240, line: 19, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !242, line: 24, baseType: !345)
!345 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !340, file: !320, line: 30, baseType: !343, size: 16, offset: 16)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !303, file: !287, line: 171, baseType: !286, size: 512, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !303, file: !287, line: 172, baseType: !349, size: 64, offset: 704)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !287, line: 133, size: 192, elements: !352)
!352 = !{!353, !360, !365}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !351, file: !287, line: 134, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!109, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !351, file: !287, line: 135, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!290, !358}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !351, file: !287, line: 136, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!109, !358, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !287, line: 125, size: 20736, elements: !372)
!372 = !{!373, !378, !382, !383, !387}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !371, file: !287, line: 126, baseType: !374, size: 192)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 192, elements: !376)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!376 = !{!377}
!377 = !DISubrange(count: 3)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !371, file: !287, line: 127, baseType: !379, size: 4096, offset: 192)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 4096, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !371, file: !287, line: 128, baseType: !109, size: 32, offset: 4288)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !371, file: !287, line: 129, baseType: !384, size: 16384, offset: 4320)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 16384, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 2048)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !371, file: !287, line: 130, baseType: !109, size: 32, offset: 20704)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !286, file: !287, line: 69, baseType: !389, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !287, line: 116, size: 384, elements: !392)
!392 = !{!393, !397, !426, !4122, !4150, !4154}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !391, file: !287, line: 117, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !300}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !391, file: !287, line: 118, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !401, line: 254, size: 128, elements: !402)
!401 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!402 = !{!403, !418}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !400, file: !401, line: 255, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!407, !300, !412, !375}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !271, line: 66, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !409, line: 73, baseType: !410)
!409 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !409, line: 15, baseType: !411)
!411 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !401, line: 30, size: 128, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !413, file: !401, line: 31, baseType: !290, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !413, file: !401, line: 32, baseType: !417, size: 16, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !271, line: 24, baseType: !345)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !400, file: !401, line: 256, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!407, !300, !412, !290, !422}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !271, line: 61, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !409, line: 72, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !409, line: 16, baseType: !425)
!425 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !391, file: !287, line: 119, baseType: !427, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !401, line: 84, size: 320, elements: !431)
!431 = !{!432, !433, !437, !4118, !4120}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !401, line: 85, baseType: !290, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !430, file: !401, line: 86, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!417, !300, !412, !109}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !430, file: !401, line: 88, baseType: !438, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!417, !300, !441, !109}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !401, line: 175, size: 512, elements: !443)
!443 = !{!444, !445, !446, !447, !4109, !4113, !4114}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !442, file: !401, line: 176, baseType: !413, size: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !442, file: !401, line: 177, baseType: !422, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !442, file: !401, line: 178, baseType: !233, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !442, file: !401, line: 179, baseType: !448, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !453)
!453 = !{!454, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !4103, !4104, !4105, !4106, !4107, !4108}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !452, file: !14, line: 473, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !457)
!457 = !{!458, !459, !460, !468, !469, !476, !477, !480, !481, !3882, !3883, !3884, !3885, !3886, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3926, !3929, !3930, !3931, !3940, !3941, !3942, !3943}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !456, file: !14, line: 642, baseType: !417, size: 16)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !456, file: !14, line: 643, baseType: !345, size: 16, offset: 16)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !456, file: !14, line: 644, baseType: !461, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !462, line: 23, baseType: !463)
!462 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 21, size: 32, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !463, file: !462, line: 22, baseType: !466, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !271, line: 37, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !409, line: 49, baseType: !7)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !456, file: !14, line: 645, baseType: !294, size: 128, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !456, file: !14, line: 646, baseType: !470, size: 32, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !462, line: 28, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 26, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !471, file: !462, line: 27, baseType: !474, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !271, line: 38, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !409, line: 50, baseType: !7)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !456, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !456, file: !14, line: 650, baseType: !478, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !456, file: !14, line: 651, baseType: !478, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !456, file: !14, line: 654, baseType: !482, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !485)
!485 = !{!486, !3716, !3726, !3730, !3734, !3738, !3742, !3746, !3750, !3754, !3758, !3759, !3763, !3767, !3804, !3833, !3837, !3843, !3847, !3851, !3855, !3859, !3863, !3869, !3873}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !484, file: !14, line: 1967, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !455, !490, !7}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !492, line: 82, size: 1536, elements: !493)
!492 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!493 = !{!494, !495, !505, !513, !514, !532, !533, !537, !550, !3699, !3700, !3701, !3702, !3708, !3709, !3710}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !491, file: !492, line: 84, baseType: !7, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !491, file: !492, line: 85, baseType: !496, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !497, line: 275, baseType: !498)
!497 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !497, line: 275, size: 32, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !498, file: !497, line: 275, baseType: !501, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !497, line: 69, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !497, line: 64, size: 32, elements: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !502, file: !497, line: 65, baseType: !7, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !491, file: !492, line: 86, baseType: !506, size: 128, offset: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !507, line: 38, size: 128, elements: !508)
!507 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!508 = !{!509, !511}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !507, line: 39, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !506, file: !507, line: 39, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !491, file: !492, line: 87, baseType: !490, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !491, file: !492, line: 88, baseType: !515, size: 128, offset: 256)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !492, line: 49, size: 128, elements: !516)
!516 = !{!517, !529}
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !492, line: 50, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !492, line: 50, size: 64, elements: !519)
!519 = !{!520, !525}
!520 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !492, line: 51, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !518, file: !492, line: 51, size: 64, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !521, file: !492, line: 52, baseType: !239, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !521, file: !492, line: 52, baseType: !239, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !518, file: !492, line: 54, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !240, line: 23, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !242, line: 31, baseType: !528)
!528 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !515, file: !492, line: 56, baseType: !530, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !491, file: !492, line: 89, baseType: !455, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !491, file: !492, line: 91, baseType: !534, size: 256, offset: 448)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 256, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !491, file: !492, line: 94, baseType: !538, size: 64, offset: 704)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !539, line: 25, size: 64, elements: !540)
!539 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, scope: !538, file: !539, line: 26, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !539, line: 26, size: 64, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !542, file: !539, line: 28, baseType: !527, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !539, line: 30, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !539, line: 30, size: 64, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !546, file: !539, line: 31, baseType: !307, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !546, file: !539, line: 32, baseType: !109, size: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !491, file: !492, line: 95, baseType: !551, size: 64, offset: 768)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !492, line: 128, size: 1024, align: 512, elements: !554)
!554 = !{!555, !559, !560, !567, !573, !577, !581, !585, !586, !590, !594, !3689, !3693}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !553, file: !492, line: 129, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!109, !490, !7}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !553, file: !492, line: 130, baseType: !556, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !553, file: !492, line: 131, baseType: !561, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!109, !564, !566}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !553, file: !492, line: 132, baseType: !568, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!109, !564, !7, !290, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !553, file: !492, line: 134, baseType: !574, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!109, !564}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !553, file: !492, line: 135, baseType: !578, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!109, !490}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !553, file: !492, line: 136, baseType: !582, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !490}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !553, file: !492, line: 137, baseType: !582, size: 64, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !553, file: !492, line: 138, baseType: !587, size: 64, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !490, !455}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !553, file: !492, line: 139, baseType: !591, size: 64, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!375, !490, !375, !109}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !553, file: !492, line: 140, baseType: !595, size: 64, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!598, !3688}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !600, line: 70, size: 256, elements: !601)
!600 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!601 = !{!602, !603, !3684, !3685}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !599, file: !600, line: 71, baseType: !490, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !599, file: !600, line: 72, baseType: !604, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !606)
!606 = !{!607, !608, !611, !612, !613, !617, !1095, !1235, !1275, !1365, !1369, !1370, !1371, !1372, !1373, !1382, !1383, !1384, !1385, !1390, !1394, !1395, !1398, !1401, !1404, !1407, !1408, !1409, !1450, !3617, !3618, !3619, !3620, !3621, !3622, !3625, !3627, !3634, !3635, !3636, !3637, !3638, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !605, file: !14, line: 1191, baseType: !294, size: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !605, file: !14, line: 1192, baseType: !609, size: 32, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !271, line: 21, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !271, line: 18, baseType: !239)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !605, file: !14, line: 1193, baseType: !337, size: 8, offset: 160)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !605, file: !14, line: 1194, baseType: !425, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !605, file: !14, line: 1195, baseType: !614, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !271, line: 52, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !409, line: 88, baseType: !616)
!616 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !605, file: !14, line: 1196, baseType: !618, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !620)
!620 = !{!621, !622, !623, !630, !634, !638, !642, !1080, !1081, !1085, !1087, !1088, !1089, !1091, !1092, !1093, !1094}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !619, file: !14, line: 2367, baseType: !290, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !619, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !619, file: !14, line: 2376, baseType: !624, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!109, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !629, line: 32, flags: DIFlagFwdDecl)
!629 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!630 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !619, file: !14, line: 2377, baseType: !631, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !619, file: !14, line: 2378, baseType: !635, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!490, !618, !109, !290, !233}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !619, file: !14, line: 2380, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !604}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !619, file: !14, line: 2381, baseType: !643, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !645)
!645 = !{!646, !647, !648, !652, !674, !700, !701, !702, !703, !707, !712, !713, !733, !789, !790, !791, !792, !793, !794, !795, !796, !804, !808, !835, !856, !857, !858, !859, !868, !891, !892, !895, !898, !899, !900, !901, !902, !903, !904, !909, !910, !1038, !1046, !1047, !1048, !1050, !1054, !1055, !1059, !1060, !1061, !1062, !1064, !1065, !1066, !1073, !1074, !1075, !1079}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !644, file: !6, line: 403, baseType: !5, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !644, file: !6, line: 406, baseType: !294, size: 128, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !644, file: !6, line: 409, baseType: !649, size: 448, offset: 192)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 448, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 56)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !644, file: !6, line: 417, baseType: !653, size: 768, offset: 640)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !654)
!654 = !{!655, !656, !657, !658, !661}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !653, file: !6, line: 46, baseType: !286, size: 512)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !653, file: !6, line: 47, baseType: !643, size: 64, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !653, file: !6, line: 48, baseType: !300, size: 64, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !653, file: !6, line: 49, baseType: !659, size: 64, offset: 640)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !653, file: !6, line: 50, baseType: !662, size: 64, offset: 704)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !664, line: 26, size: 256, elements: !665)
!664 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !663, file: !664, line: 27, baseType: !7, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !663, file: !664, line: 28, baseType: !668, size: 192, offset: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !669, line: 43, size: 192, elements: !670)
!669 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!670 = !{!671, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !668, file: !669, line: 44, baseType: !672, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !316, line: 23, baseType: !315)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !668, file: !669, line: 45, baseType: !294, size: 128, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !644, file: !6, line: 418, baseType: !675, size: 64, offset: 1408)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !677)
!677 = !{!678, !679, !684, !688, !692, !696}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !676, file: !6, line: 54, baseType: !413, size: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !676, file: !6, line: 55, baseType: !680, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!407, !675, !683, !375}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !676, file: !6, line: 57, baseType: !685, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!407, !675, !683, !290, !422}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !676, file: !6, line: 59, baseType: !689, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !643, !290}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !676, file: !6, line: 60, baseType: !693, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!109, !643}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !676, file: !6, line: 61, baseType: !697, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !643}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !644, file: !6, line: 419, baseType: !290, size: 64, offset: 1472)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !644, file: !6, line: 420, baseType: !290, size: 64, offset: 1536)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !644, file: !6, line: 421, baseType: !300, size: 64, offset: 1600)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !644, file: !6, line: 424, baseType: !704, size: 64, offset: 1664)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !644, file: !6, line: 425, baseType: !708, size: 64, offset: 1728)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !240, line: 20, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !242, line: 26, baseType: !109)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !644, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !644, file: !6, line: 435, baseType: !714, size: 256, offset: 1856)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !715, line: 66, size: 256, elements: !716)
!715 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!716 = !{!717, !726, !727, !732}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !714, file: !715, line: 67, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !719, line: 13, baseType: !720)
!719 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !271, line: 181, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !271, line: 179, size: 64, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !721, file: !271, line: 180, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !240, line: 22, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !242, line: 30, baseType: !616)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !714, file: !715, line: 68, baseType: !672, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !714, file: !715, line: 70, baseType: !728, size: 32, offset: 96)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !729, line: 15, size: 32, elements: !730)
!729 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !728, file: !729, line: 20, baseType: !327, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !714, file: !715, line: 72, baseType: !294, size: 128, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !644, file: !6, line: 437, baseType: !734, size: 64, offset: 2112)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !736, line: 69, size: 320, elements: !737)
!736 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!737 = !{!738, !739, !740, !760, !762, !766, !767}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !735, file: !736, line: 70, baseType: !290, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !735, file: !736, line: 71, baseType: !643, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !735, file: !736, line: 72, baseType: !741, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !736, line: 47, size: 256, elements: !744)
!744 = !{!745, !746, !752, !756}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !743, file: !736, line: 49, baseType: !7, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !743, file: !736, line: 51, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!109, !290, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !743, file: !736, line: 53, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!109, !375, !750}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !743, file: !736, line: 55, baseType: !757, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !233}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !735, file: !736, line: 73, baseType: !761, size: 16, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !735, file: !736, line: 74, baseType: !763, size: 8, offset: 208)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !240, line: 16, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !242, line: 20, baseType: !765)
!765 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !736, line: 75, baseType: !335, size: 8, offset: 216)
!767 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !736, line: 76, baseType: !768, size: 64, offset: 256)
!768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !735, file: !736, line: 76, size: 64, elements: !769)
!769 = !{!770, !771, !778}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !768, file: !736, line: 77, baseType: !233, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !768, file: !736, line: 78, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !736, line: 86, size: 128, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !774, file: !736, line: 87, baseType: !7, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !774, file: !736, line: 88, baseType: !375, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !768, file: !736, line: 79, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !736, line: 92, size: 256, elements: !782)
!782 = !{!783, !784, !785, !787, !788}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !781, file: !736, line: 94, baseType: !7, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !781, file: !736, line: 95, baseType: !7, size: 32, offset: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !781, file: !736, line: 96, baseType: !786, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !781, file: !736, line: 97, baseType: !741, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !781, file: !736, line: 98, baseType: !233, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !644, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !644, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !644, file: !6, line: 442, baseType: !704, size: 64, offset: 2240)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !644, file: !6, line: 443, baseType: !708, size: 64, offset: 2304)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !644, file: !6, line: 444, baseType: !270, size: 8, offset: 2368)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !644, file: !6, line: 451, baseType: !270, size: 8, offset: 2376)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !644, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !644, file: !6, line: 455, baseType: !797, size: 64, offset: 2432)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !799, line: 23, size: 96, elements: !800)
!799 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!800 = !{!801, !802, !803}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !798, file: !799, line: 24, baseType: !109, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !798, file: !799, line: 24, baseType: !109, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !798, file: !799, line: 24, baseType: !109, size: 32, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !644, file: !6, line: 458, baseType: !805, size: 64, offset: 2496)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!109}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !644, file: !6, line: 460, baseType: !809, size: 4032, align: 512, offset: 2560)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 4032, elements: !833)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !811)
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !810, file: !6, line: 363, baseType: !233, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !810, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !810, file: !6, line: 367, baseType: !815, size: 448, offset: 128)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !815, file: !6, line: 320, baseType: !643, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !815, file: !6, line: 321, baseType: !819, size: 384, offset: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !820, line: 40, size: 384, elements: !821)
!820 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!821 = !{!822}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !819, file: !820, line: 41, baseType: !823, size: 384, align: 64)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 384, align: 64, elements: !831)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !825, line: 5, size: 192, align: 64, elements: !826)
!825 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!826 = !{!827, !828, !830}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !824, file: !825, line: 6, baseType: !425, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !824, file: !825, line: 7, baseType: !829, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !824, file: !825, line: 8, baseType: !829, size: 64, offset: 128)
!831 = !{!832}
!832 = !DISubrange(count: 2)
!833 = !{!834}
!834 = !DISubrange(count: 7)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !644, file: !6, line: 463, baseType: !836, size: 192, offset: 6592)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !837, line: 8, size: 192, elements: !838)
!837 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!838 = !{!839, !840, !842}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !836, file: !837, line: 10, baseType: !7, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !836, file: !837, line: 11, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !836, file: !837, line: 12, baseType: !843, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !845, line: 59, size: 48, elements: !846)
!845 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!846 = !{!847, !851, !852, !853, !854, !855}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !844, file: !845, line: 60, baseType: !848, size: 16)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !240, line: 18, baseType: !849)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !242, line: 23, baseType: !850)
!850 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !844, file: !845, line: 61, baseType: !848, size: 16, offset: 16)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !844, file: !845, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !844, file: !845, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !844, file: !845, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !844, file: !845, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !644, file: !6, line: 465, baseType: !425, size: 64, offset: 6784)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !644, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !644, file: !6, line: 470, baseType: !294, size: 128, offset: 6912)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !644, file: !6, line: 471, baseType: !860, size: 64, offset: 7040)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !862, line: 33, size: 96, elements: !863)
!862 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!863 = !{!864, !865, !866, !867}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !861, file: !862, line: 37, baseType: !109, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !861, file: !862, line: 43, baseType: !109, size: 32, offset: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !861, file: !862, line: 45, baseType: !345, size: 16, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !861, file: !862, line: 47, baseType: !345, size: 16, offset: 80)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !644, file: !6, line: 476, baseType: !869, size: 64, offset: 7104)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !871)
!871 = !{!872, !888, !889, !890}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !870, file: !6, line: 379, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !875, line: 204, baseType: !876)
!875 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !875, line: 197, size: 192, elements: !877)
!877 = !{!878, !880, !881, !882, !884, !886}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !876, file: !875, line: 198, baseType: !879, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !875, line: 21, baseType: !241)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !876, file: !875, line: 199, baseType: !337, size: 8, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !876, file: !875, line: 200, baseType: !337, size: 8, offset: 40)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !876, file: !875, line: 201, baseType: !883, size: 16, offset: 48)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !875, line: 17, baseType: !344)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !876, file: !875, line: 202, baseType: !885, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !875, line: 16, baseType: !527)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !876, file: !875, line: 203, baseType: !887, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !875, line: 22, baseType: !527)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !870, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !870, file: !6, line: 381, baseType: !375, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !870, file: !6, line: 382, baseType: !375, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !644, file: !6, line: 477, baseType: !870, size: 256, offset: 7168)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !644, file: !6, line: 480, baseType: !893, size: 64, offset: 7424)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !644, file: !6, line: 483, baseType: !896, size: 64, offset: 7488)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !644, file: !6, line: 488, baseType: !375, size: 64, offset: 7552)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !644, file: !6, line: 492, baseType: !233, size: 64, offset: 7616)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !644, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !644, file: !6, line: 495, baseType: !233, size: 64, offset: 7744)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !644, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !644, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !644, file: !6, line: 500, baseType: !905, size: 64, offset: 7872)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !907, line: 45, baseType: !908)
!907 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !644, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !644, file: !6, line: 504, baseType: !911, size: 64, offset: 8000)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !914, line: 96, size: 192, elements: !915)
!914 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!915 = !{!916, !917, !998, !1002}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !913, file: !914, line: 97, baseType: !7, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !913, file: !914, line: 98, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !914, line: 24, size: 3072, elements: !920)
!920 = !{!921, !923, !924, !925, !926, !950, !951, !952, !953, !971, !983, !984, !995, !996, !997}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !919, file: !914, line: 26, baseType: !922, size: 128)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 128, elements: !831)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !919, file: !914, line: 27, baseType: !922, size: 128, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !919, file: !914, line: 28, baseType: !109, size: 32, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !919, file: !914, line: 31, baseType: !307, size: 32, align: 512, offset: 512)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !919, file: !914, line: 32, baseType: !927, size: 960, offset: 576)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !928, line: 206, size: 960, elements: !929)
!928 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!929 = !{!930, !939, !944, !946, !947, !949}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !927, file: !928, line: 207, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !271, line: 232, size: 128, align: 64, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !932, file: !271, line: 233, baseType: !931, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !932, file: !271, line: 234, baseType: !936, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !931}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !927, file: !928, line: 208, baseType: !940, size: 256, offset: 64)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, size: 256, elements: !942)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!942 = !{!943}
!943 = !DISubrange(count: 4)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !927, file: !928, line: 209, baseType: !945, size: 256, offset: 320)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 256, elements: !942)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !927, file: !928, line: 213, baseType: !411, size: 64, offset: 576)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !927, file: !928, line: 215, baseType: !948, size: 256, offset: 640)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 256, elements: !942)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !927, file: !928, line: 216, baseType: !335, size: 8, offset: 896)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !919, file: !914, line: 33, baseType: !425, size: 64, offset: 1536)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !919, file: !914, line: 34, baseType: !425, size: 64, offset: 1600)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !919, file: !914, line: 35, baseType: !270, size: 8, offset: 1664)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !919, file: !914, line: 36, baseType: !954, size: 320, offset: 1728)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !955, line: 11, size: 320, elements: !956)
!955 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!956 = !{!957, !964, !965, !970}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !954, file: !955, line: 16, baseType: !958, size: 128)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !271, line: 198, size: 128, elements: !959)
!959 = !{!960, !962}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !958, file: !271, line: 199, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !958, file: !271, line: 199, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !954, file: !955, line: 17, baseType: !425, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !954, file: !955, line: 18, baseType: !966, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !954, file: !955, line: 19, baseType: !239, size: 32, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !919, file: !914, line: 37, baseType: !972, size: 256, offset: 2048)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !973, line: 98, size: 256, elements: !974)
!973 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !972, file: !973, line: 99, baseType: !718, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !972, file: !973, line: 100, baseType: !294, size: 128, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !972, file: !973, line: 101, baseType: !978, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !973, line: 21, baseType: !979)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !919, file: !914, line: 38, baseType: !932, size: 128, align: 64, offset: 2304)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !919, file: !914, line: 39, baseType: !985, size: 64, offset: 2432)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !914, line: 49, size: 768, elements: !987)
!987 = !{!988, !989, !990, !991, !992, !993, !994}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !986, file: !914, line: 50, baseType: !307, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !986, file: !914, line: 51, baseType: !945, size: 256, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !986, file: !914, line: 53, baseType: !945, size: 256, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !986, file: !914, line: 54, baseType: !425, size: 64, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !986, file: !914, line: 55, baseType: !985, size: 64, offset: 640)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !986, file: !914, line: 56, baseType: !109, size: 32, offset: 704)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !986, file: !914, line: 57, baseType: !109, size: 32, offset: 736)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !919, file: !914, line: 40, baseType: !425, size: 64, offset: 2496)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !919, file: !914, line: 42, baseType: !109, size: 32, offset: 2560)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !919, file: !914, line: 43, baseType: !912, size: 64, offset: 2624)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !913, file: !914, line: 99, baseType: !999, offset: 128)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1000, line: 211, elements: !1001)
!1000 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1001 = !{}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !913, file: !914, line: 100, baseType: !1003, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !914, line: 63, size: 3008, elements: !1005)
!1005 = !{!1006, !1007, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1037}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1004, file: !914, line: 64, baseType: !985, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1004, file: !914, line: 65, baseType: !1008, size: 192, offset: 64)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !985, size: 192, elements: !376)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1004, file: !914, line: 67, baseType: !109, size: 32, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1004, file: !914, line: 68, baseType: !714, size: 256, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1004, file: !914, line: 69, baseType: !307, size: 32, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1004, file: !914, line: 70, baseType: !714, size: 256, offset: 640)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1004, file: !914, line: 71, baseType: !425, size: 64, offset: 896)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1004, file: !914, line: 72, baseType: !425, size: 64, offset: 960)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1004, file: !914, line: 73, baseType: !425, size: 64, offset: 1024)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1004, file: !914, line: 74, baseType: !425, size: 64, offset: 1088)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1004, file: !914, line: 75, baseType: !425, size: 64, offset: 1152)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1004, file: !914, line: 76, baseType: !425, size: 64, offset: 1216)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1004, file: !914, line: 77, baseType: !425, size: 64, offset: 1280)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1004, file: !914, line: 78, baseType: !425, size: 64, offset: 1344)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1004, file: !914, line: 79, baseType: !270, size: 8, offset: 1408)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1004, file: !914, line: 80, baseType: !425, size: 64, offset: 1472)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1004, file: !914, line: 81, baseType: !714, size: 256, offset: 1536)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1004, file: !914, line: 82, baseType: !663, size: 256, offset: 1792)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1004, file: !914, line: 84, baseType: !327, size: 32, offset: 2048)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1004, file: !914, line: 87, baseType: !425, size: 64, offset: 2112)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1004, file: !914, line: 88, baseType: !425, size: 64, offset: 2176)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1004, file: !914, line: 89, baseType: !1029, size: 704, offset: 2240)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !973, line: 111, size: 704, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1036}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1029, file: !973, line: 112, baseType: !972, size: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1029, file: !973, line: 113, baseType: !954, size: 320, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1029, file: !973, line: 116, baseType: !1034, size: 64, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !973, line: 18, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1029, file: !973, line: 117, baseType: !109, size: 32, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1004, file: !914, line: 90, baseType: !912, size: 64, offset: 2944)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !644, file: !6, line: 515, baseType: !1039, size: 64, offset: 8064)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1041, line: 117, size: 128, elements: !1042)
!1041 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1042 = !{!1043, !1044, !1045}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1040, file: !1041, line: 118, baseType: !710, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1040, file: !1041, line: 119, baseType: !710, size: 32, offset: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1040, file: !1041, line: 120, baseType: !411, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !644, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !644, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !644, file: !6, line: 520, baseType: !1049, size: 64, offset: 8192)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !644, file: !6, line: 523, baseType: !1051, size: 64, offset: 8256)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !644, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !644, file: !6, line: 525, baseType: !1056, size: 64, offset: 8384)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !644, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !644, file: !6, line: 533, baseType: !233, size: 64, offset: 8512)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !644, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !644, file: !6, line: 535, baseType: !1063, size: 64, offset: 8640)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !644, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !644, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !644, file: !6, line: 540, baseType: !1067, size: 64, offset: 8768)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1069, line: 32, size: 64, elements: !1070)
!1069 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1068, file: !1069, line: 33, baseType: !710, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1068, file: !1069, line: 34, baseType: !710, size: 32, offset: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !644, file: !6, line: 563, baseType: !294, size: 128, offset: 8832)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !644, file: !6, line: 565, baseType: !294, size: 128, offset: 8960)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !644, file: !6, line: 568, baseType: !1076, size: 64, offset: 9088)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !644, file: !6, line: 570, baseType: !327, size: 32, offset: 9152)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !619, file: !14, line: 2382, baseType: !618, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !619, file: !14, line: 2383, baseType: !1082, size: 64, offset: 512)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !271, line: 194, size: 64, elements: !1083)
!1083 = !{!1084}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1082, file: !271, line: 195, baseType: !961, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !619, file: !14, line: 2385, baseType: !1086, offset: 576)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1000, line: 206, elements: !1001)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !619, file: !14, line: 2386, baseType: !1086, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !619, file: !14, line: 2387, baseType: !1086, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !619, file: !14, line: 2388, baseType: !1090, offset: 576)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1086, elements: !376)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !619, file: !14, line: 2390, baseType: !1086, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !619, file: !14, line: 2391, baseType: !1086, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !619, file: !14, line: 2392, baseType: !1086, offset: 576)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !619, file: !14, line: 2393, baseType: !1086, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !605, file: !14, line: 1197, baseType: !1096, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1098)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1099)
!1099 = !{!1100, !1104, !1108, !1109, !1113, !1119, !1123, !1124, !1125, !1129, !1133, !1137, !1138, !1139, !1145, !1149, !1150, !1157, !1158, !1159, !1160, !1164, !1168, !1217, !1233, !1234}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1098, file: !14, line: 2058, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!455, !604}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1098, file: !14, line: 2059, baseType: !1105, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !455}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1098, file: !14, line: 2060, baseType: !1105, size: 64, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1098, file: !14, line: 2062, baseType: !1110, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !455, !109}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1098, file: !14, line: 2063, baseType: !1114, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!109, !455, !1117}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1098, file: !14, line: 2064, baseType: !1120, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!109, !455}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1098, file: !14, line: 2065, baseType: !1105, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1098, file: !14, line: 2066, baseType: !639, size: 64, offset: 448)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1098, file: !14, line: 2067, baseType: !1126, size: 64, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!109, !604, !109}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1098, file: !14, line: 2068, baseType: !1130, size: 64, offset: 576)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!109, !604, !13}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1098, file: !14, line: 2069, baseType: !1134, size: 64, offset: 640)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!109, !604}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1098, file: !14, line: 2070, baseType: !1130, size: 64, offset: 704)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1098, file: !14, line: 2071, baseType: !1134, size: 64, offset: 768)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1098, file: !14, line: 2072, baseType: !1140, size: 64, offset: 832)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!109, !490, !1143}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1098, file: !14, line: 2073, baseType: !1146, size: 64, offset: 896)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!109, !604, !841, !375}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1098, file: !14, line: 2074, baseType: !639, size: 64, offset: 960)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1098, file: !14, line: 2076, baseType: !1151, size: 64, offset: 1024)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!109, !1154, !490}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1156, line: 66, flags: DIFlagFwdDecl)
!1156 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1098, file: !14, line: 2077, baseType: !1151, size: 64, offset: 1088)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1098, file: !14, line: 2078, baseType: !1151, size: 64, offset: 1152)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1098, file: !14, line: 2079, baseType: !1151, size: 64, offset: 1216)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1098, file: !14, line: 2081, baseType: !1161, size: 64, offset: 1280)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!407, !604, !109, !375, !422, !614}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1098, file: !14, line: 2082, baseType: !1165, size: 64, offset: 1344)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!407, !604, !109, !290, !422, !614}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1098, file: !14, line: 2083, baseType: !1169, size: 64, offset: 1408)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1172, !455}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1200, !1201, !1202}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1174, file: !19, line: 297, baseType: !958, size: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1174, file: !19, line: 298, baseType: !294, size: 128, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1174, file: !19, line: 299, baseType: !294, size: 128, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1174, file: !19, line: 300, baseType: !294, size: 128, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1174, file: !19, line: 301, baseType: !714, size: 256, offset: 512)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1174, file: !19, line: 302, baseType: !307, size: 32, offset: 768)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1174, file: !19, line: 303, baseType: !327, size: 32, offset: 800)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1174, file: !19, line: 304, baseType: !604, size: 64, offset: 832)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1174, file: !19, line: 305, baseType: !1185, size: 64, offset: 896)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1186)
!1186 = !{!1187, !1199}
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !19, line: 69, baseType: !1188, size: 32)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !19, line: 69, size: 32, elements: !1189)
!1189 = !{!1190, !1191, !1192}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1188, file: !19, line: 70, baseType: !461, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1188, file: !19, line: 71, baseType: !470, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1188, file: !19, line: 72, baseType: !1193, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1194, line: 24, baseType: !1195)
!1194 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1194, line: 22, size: 32, elements: !1196)
!1196 = !{!1197}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1195, file: !1194, line: 23, baseType: !1198, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1194, line: 20, baseType: !467)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1185, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1174, file: !19, line: 306, baseType: !614, size: 64, offset: 960)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1174, file: !19, line: 307, baseType: !425, size: 64, offset: 1024)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1174, file: !19, line: 308, baseType: !1203, size: 576, offset: 1088)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1204)
!1204 = !{!1205, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1216}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1203, file: !19, line: 206, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !616)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1203, file: !19, line: 207, baseType: !1206, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1203, file: !19, line: 208, baseType: !1206, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1203, file: !19, line: 209, baseType: !1206, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1203, file: !19, line: 210, baseType: !1206, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1203, file: !19, line: 211, baseType: !1206, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1203, file: !19, line: 212, baseType: !1206, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1203, file: !19, line: 213, baseType: !1214, size: 64, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1215, line: 8, baseType: !725)
!1215 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1203, file: !19, line: 214, baseType: !1214, size: 64, offset: 512)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1098, file: !14, line: 2085, baseType: !1218, size: 64, offset: 1472)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!411, !604, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1223, line: 15, size: 256, elements: !1224)
!1223 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1224 = !{!1225, !1227, !1228, !1229, !1230}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1222, file: !1223, line: 16, baseType: !1226, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !271, line: 154, baseType: !7)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1222, file: !1223, line: 19, baseType: !109, size: 32, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1222, file: !1223, line: 26, baseType: !425, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1222, file: !1223, line: 33, baseType: !425, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1222, file: !1223, line: 36, baseType: !1231, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1098, file: !14, line: 2087, baseType: !1218, size: 64, offset: 1536)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1098, file: !14, line: 2089, baseType: !639, size: 64, offset: 1600)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !605, file: !14, line: 1198, baseType: !1236, size: 64, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1239)
!1239 = !{!1240, !1244, !1248, !1252, !1253, !1254, !1255, !1256, !1261, !1266, !1270}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1238, file: !19, line: 325, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!109, !1173}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1238, file: !19, line: 326, baseType: !1245, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1173, !604, !109}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1238, file: !19, line: 327, baseType: !1249, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !1173}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1238, file: !19, line: 328, baseType: !1241, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1238, file: !19, line: 329, baseType: !1241, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1238, file: !19, line: 330, baseType: !1241, size: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1238, file: !19, line: 331, baseType: !1126, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1238, file: !19, line: 334, baseType: !1257, size: 64, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!1260, !455}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1238, file: !19, line: 335, baseType: !1262, size: 64, offset: 512)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!109, !455, !1265}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1238, file: !19, line: 337, baseType: !1267, size: 64, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!109, !455, !1260}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1238, file: !19, line: 339, baseType: !1271, size: 64, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!109, !604, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !605, file: !14, line: 1199, baseType: !1276, size: 64, offset: 512)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1279)
!1279 = !{!1280, !1291, !1292, !1296, !1297, !1298, !1313, !1336, !1340, !1341, !1364}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1278, file: !19, line: 431, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!109, !604, !109, !109, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1286)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1287, line: 8, size: 128, elements: !1288)
!1287 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1288 = !{!1289, !1290}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1286, file: !1287, line: 9, baseType: !598, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1286, file: !1287, line: 10, baseType: !490, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1278, file: !19, line: 432, baseType: !1126, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1278, file: !19, line: 433, baseType: !1293, size: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!109, !604, !7}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1278, file: !19, line: 434, baseType: !1293, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1278, file: !19, line: 435, baseType: !1126, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1278, file: !19, line: 436, baseType: !1299, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!109, !604, !109, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1303, file: !19, line: 418, baseType: !109, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1303, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1303, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1303, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1303, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1303, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1303, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1303, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1278, file: !19, line: 437, baseType: !1314, size: 64, offset: 384)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!109, !604, !1185, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1318, file: !19, line: 346, baseType: !109, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1318, file: !19, line: 347, baseType: !526, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1318, file: !19, line: 348, baseType: !526, size: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1318, file: !19, line: 349, baseType: !526, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1318, file: !19, line: 350, baseType: !526, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1318, file: !19, line: 351, baseType: !526, size: 64, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1318, file: !19, line: 352, baseType: !526, size: 64, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1318, file: !19, line: 353, baseType: !724, size: 64, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1318, file: !19, line: 355, baseType: !724, size: 64, offset: 512)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1318, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1318, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1318, file: !19, line: 358, baseType: !526, size: 64, offset: 640)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1318, file: !19, line: 359, baseType: !526, size: 64, offset: 704)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1318, file: !19, line: 360, baseType: !526, size: 64, offset: 768)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1318, file: !19, line: 361, baseType: !724, size: 64, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1318, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1278, file: !19, line: 438, baseType: !1337, size: 64, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!109, !604, !1274, !1317}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1278, file: !19, line: 440, baseType: !1314, size: 64, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1278, file: !19, line: 441, baseType: !1342, size: 64, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!109, !604, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1346, file: !19, line: 412, baseType: !7, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1346, file: !19, line: 413, baseType: !1350, size: 1344, offset: 64)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1351, size: 1344, elements: !376)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1352)
!1352 = !{!1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1363}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1351, file: !19, line: 398, baseType: !7, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1351, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1351, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1351, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1351, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1351, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1351, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1351, file: !19, line: 406, baseType: !528, size: 64, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1351, file: !19, line: 407, baseType: !1362, size: 64, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !271, line: 132, baseType: !526)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1351, file: !19, line: 408, baseType: !1362, size: 64, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1278, file: !19, line: 442, baseType: !1293, size: 64, offset: 640)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !605, file: !14, line: 1200, baseType: !1366, size: 64, offset: 576)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1368)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !605, file: !14, line: 1201, baseType: !425, size: 64, offset: 640)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !605, file: !14, line: 1202, baseType: !425, size: 64, offset: 704)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !605, file: !14, line: 1203, baseType: !425, size: 64, offset: 768)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !605, file: !14, line: 1204, baseType: !490, size: 64, offset: 832)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !605, file: !14, line: 1205, baseType: !1374, size: 320, offset: 896)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1375, line: 48, size: 320, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1376 = !{!1377, !1378, !1379, !1380, !1381}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1374, file: !1375, line: 49, baseType: !718, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1374, file: !1375, line: 55, baseType: !718, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1374, file: !1375, line: 57, baseType: !728, size: 32, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1374, file: !1375, line: 59, baseType: !672, size: 32, offset: 160)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1374, file: !1375, line: 60, baseType: !294, size: 128, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !605, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !605, file: !14, line: 1207, baseType: !327, size: 32, offset: 1248)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !605, file: !14, line: 1209, baseType: !233, size: 64, offset: 1280)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !605, file: !14, line: 1211, baseType: !1386, size: 64, offset: 1344)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1389)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !605, file: !14, line: 1223, baseType: !1391, size: 64, offset: 1408)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !507, line: 34, size: 64, elements: !1392)
!1392 = !{!1393}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1391, file: !507, line: 35, baseType: !510, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !605, file: !14, line: 1224, baseType: !294, size: 128, offset: 1472)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !605, file: !14, line: 1225, baseType: !1396, size: 64, offset: 1600)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !605, file: !14, line: 1226, baseType: !1399, size: 64, offset: 1664)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !605, file: !14, line: 1227, baseType: !1402, size: 64, offset: 1728)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !605, file: !14, line: 1228, baseType: !1405, size: 64, offset: 1792)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !605, file: !14, line: 1229, baseType: !958, size: 128, offset: 1856)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !605, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !605, file: !14, line: 1231, baseType: !1410, size: 2496, offset: 2048)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1416, !1448}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1410, file: !19, line: 522, baseType: !7, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1410, file: !19, line: 523, baseType: !1374, size: 320, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1410, file: !19, line: 524, baseType: !1415, size: 192, offset: 384)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 192, elements: !376)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1410, file: !19, line: 525, baseType: !1417, size: 1728, offset: 576)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1418, size: 1728, elements: !376)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1419)
!1419 = !{!1420, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1418, file: !19, line: 223, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1423)
!1423 = !{!1424, !1425, !1438, !1439}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1422, file: !19, line: 446, baseType: !109, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1422, file: !19, line: 447, baseType: !1426, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1428)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1428, file: !19, line: 313, baseType: !1126, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1428, file: !19, line: 314, baseType: !1126, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1428, file: !19, line: 315, baseType: !1126, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1428, file: !19, line: 316, baseType: !1126, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1428, file: !19, line: 317, baseType: !1241, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1428, file: !19, line: 318, baseType: !1241, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1428, file: !19, line: 319, baseType: !1241, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1428, file: !19, line: 320, baseType: !1271, size: 64, offset: 448)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1422, file: !19, line: 448, baseType: !643, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1422, file: !19, line: 449, baseType: !1421, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1418, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1418, file: !19, line: 226, baseType: !294, size: 128, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1418, file: !19, line: 227, baseType: !425, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1418, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1418, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1418, file: !19, line: 230, baseType: !1206, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1418, file: !19, line: 231, baseType: !1206, size: 64, offset: 448)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1418, file: !19, line: 232, baseType: !233, size: 64, offset: 512)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1410, file: !19, line: 526, baseType: !1449, size: 192, offset: 2304)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1426, size: 192, elements: !376)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !605, file: !14, line: 1233, baseType: !1451, size: 2368, offset: 4544)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1452)
!1452 = !{!1453, !1454, !1455}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1451, file: !14, line: 1185, baseType: !345, size: 16)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1451, file: !14, line: 1186, baseType: !345, size: 16, offset: 16)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1451, file: !14, line: 1187, baseType: !1456, size: 2304, offset: 64)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1457, size: 2304, elements: !376)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1458, line: 12, size: 768, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1459 = !{!1460, !1474, !1475, !3615, !3616}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1457, file: !1458, line: 13, baseType: !1461, size: 384)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1462, line: 17, size: 384, elements: !1463)
!1462 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1463 = !{!1464, !1465, !1466, !1473}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1461, file: !1462, line: 18, baseType: !109, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1461, file: !1462, line: 19, baseType: !109, size: 32, offset: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1461, file: !1462, line: 20, baseType: !1467, size: 192, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1468, line: 41, baseType: !1469)
!1468 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1468, line: 37, size: 192, elements: !1470)
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1469, file: !1468, line: 38, baseType: !307, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1469, file: !1468, line: 39, baseType: !294, size: 128, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1461, file: !1462, line: 22, baseType: !932, size: 128, align: 64, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1457, file: !1458, line: 14, baseType: !786, size: 64, offset: 384)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1457, file: !1458, line: 15, baseType: !1476, size: 64, offset: 448)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1477, line: 16, size: 64, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1476, file: !1477, line: 17, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1156, line: 746, size: 58368, elements: !1482)
!1482 = !{!1483, !1491, !1492, !1493, !1499, !1500, !1501, !1502, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1573, !1584, !1679, !1683, !1686, !1717, !1718, !1719, !1720, !1731, !1733, !1734, !1735, !1736, !1737, !1738, !1749, !1750, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1767, !1768, !1775, !1776, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2789, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2837, !2843, !2844, !2845, !2846, !2847, !2851, !2854, !2861, !2866, !2869, !2872, !2875, !2878, !3016, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3054, !3055, !3056, !3065, !3073, !3074, !3075, !3076, !3077, !3082, !3083, !3084, !3087, !3088, !3091, !3094, !3097, !3105, !3108, !3109, !3195, !3196, !3197, !3198, !3199, !3205, !3206, !3207, !3208, !3211, !3212, !3215, !3218, !3219, !3222, !3223, !3224, !3227, !3228, !3229, !3230, !3231, !3232, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3264, !3265, !3271, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3283, !3355, !3357, !3358, !3359, !3360, !3361, !3362, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3392, !3393, !3394}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1481, file: !1156, line: 752, baseType: !1484, size: 192)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1485, line: 56, size: 192, elements: !1486)
!1485 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1486 = !{!1487, !1488, !1489, !1490}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1484, file: !1485, line: 57, baseType: !425, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1484, file: !1485, line: 58, baseType: !425, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1484, file: !1485, line: 59, baseType: !239, size: 32, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1484, file: !1485, line: 61, baseType: !239, size: 32, offset: 160)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1481, file: !1156, line: 754, baseType: !7, size: 32, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1481, file: !1156, line: 767, baseType: !233, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1481, file: !1156, line: 768, baseType: !1494, size: 32, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1495, line: 113, baseType: !1496)
!1495 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1495, line: 111, size: 32, elements: !1497)
!1497 = !{!1498}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1496, file: !1495, line: 112, baseType: !327, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1481, file: !1156, line: 770, baseType: !7, size: 32, offset: 352)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1481, file: !1156, line: 771, baseType: !7, size: 32, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1481, file: !1156, line: 774, baseType: !109, size: 32, offset: 416)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1481, file: !1156, line: 775, baseType: !1503, size: 128, offset: 448)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1504, line: 58, size: 128, elements: !1505)
!1504 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1505 = !{!1506, !1512, !1517, !1518}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1503, file: !1504, line: 59, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1508, line: 60, size: 64, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1509 = !{!1510}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1507, file: !1508, line: 61, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, scope: !1503, file: !1504, line: 60, baseType: !1513, size: 32, offset: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1503, file: !1504, line: 60, size: 32, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1513, file: !1504, line: 61, baseType: !7, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1513, file: !1504, line: 62, baseType: !327, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1503, file: !1504, line: 65, baseType: !343, size: 16, offset: 96)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1503, file: !1504, line: 65, baseType: !343, size: 16, offset: 112)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1481, file: !1156, line: 776, baseType: !7, size: 32, offset: 576)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1481, file: !1156, line: 777, baseType: !425, size: 64, offset: 640)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1481, file: !1156, line: 778, baseType: !1480, size: 64, offset: 704)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1481, file: !1156, line: 787, baseType: !109, size: 32, offset: 768)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1481, file: !1156, line: 788, baseType: !109, size: 32, offset: 800)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1481, file: !1156, line: 790, baseType: !109, size: 32, offset: 832)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1481, file: !1156, line: 792, baseType: !109, size: 32, offset: 864)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1481, file: !1156, line: 793, baseType: !109, size: 32, offset: 896)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1481, file: !1156, line: 794, baseType: !109, size: 32, offset: 928)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1481, file: !1156, line: 795, baseType: !7, size: 32, offset: 960)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1481, file: !1156, line: 797, baseType: !1530, size: 2048, offset: 1024)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1156, line: 551, size: 2048, elements: !1531)
!1531 = !{!1532, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1552, !1555, !1556, !1557}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1530, file: !1156, line: 553, baseType: !1533, size: 128)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1156, line: 411, size: 128, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1533, file: !1156, line: 412, baseType: !425, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1533, file: !1156, line: 413, baseType: !239, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1530, file: !1156, line: 554, baseType: !824, size: 192, align: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1530, file: !1156, line: 555, baseType: !526, size: 64, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1530, file: !1156, line: 556, baseType: !526, size: 64, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1530, file: !1156, line: 558, baseType: !294, size: 128, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1530, file: !1156, line: 559, baseType: !7, size: 32, offset: 576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1530, file: !1156, line: 561, baseType: !526, size: 64, offset: 640)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1530, file: !1156, line: 562, baseType: !526, size: 64, offset: 704)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1530, file: !1156, line: 563, baseType: !526, size: 64, offset: 768)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1530, file: !1156, line: 564, baseType: !526, size: 64, offset: 832)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1530, file: !1156, line: 565, baseType: !724, size: 64, offset: 896)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1530, file: !1156, line: 566, baseType: !526, size: 64, offset: 960)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1530, file: !1156, line: 568, baseType: !526, size: 64, offset: 1024)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1530, file: !1156, line: 571, baseType: !109, size: 32, offset: 1088)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1530, file: !1156, line: 572, baseType: !1551, size: 64, offset: 1152)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1530, file: !1156, line: 574, baseType: !1553, size: 64, offset: 1216)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1156, line: 49, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1530, file: !1156, line: 576, baseType: !1553, size: 64, offset: 1280)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1530, file: !1156, line: 578, baseType: !425, size: 64, offset: 1344)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1530, file: !1156, line: 588, baseType: !1558, size: 512, align: 512, offset: 1536)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1156, line: 497, size: 512, align: 512, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1558, file: !1156, line: 498, baseType: !526, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1558, file: !1156, line: 499, baseType: !526, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1558, file: !1156, line: 500, baseType: !526, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1558, file: !1156, line: 501, baseType: !239, size: 32, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1558, file: !1156, line: 502, baseType: !239, size: 32, offset: 224)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1558, file: !1156, line: 503, baseType: !425, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1558, file: !1156, line: 504, baseType: !425, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1558, file: !1156, line: 505, baseType: !425, size: 64, offset: 384)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1558, file: !1156, line: 506, baseType: !1569, size: 64, align: 64, offset: 448)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1156, line: 445, size: 64, align: 64, elements: !1570)
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1569, file: !1156, line: 446, baseType: !7, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1569, file: !1156, line: 447, baseType: !7, size: 32, offset: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1481, file: !1156, line: 798, baseType: !1574, size: 384, offset: 3072)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1156, line: 592, size: 384, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1574, file: !1156, line: 593, baseType: !294, size: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1574, file: !1156, line: 594, baseType: !425, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1574, file: !1156, line: 595, baseType: !425, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1574, file: !1156, line: 596, baseType: !7, size: 32, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1574, file: !1156, line: 597, baseType: !345, size: 16, offset: 288)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1574, file: !1156, line: 598, baseType: !345, size: 16, offset: 304)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1574, file: !1156, line: 600, baseType: !1583, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1481, file: !1156, line: 799, baseType: !1585, size: 1792, offset: 3456)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1156, line: 610, size: 1792, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1676, !1677}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1585, file: !1156, line: 611, baseType: !824, size: 192, align: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1585, file: !1156, line: 618, baseType: !526, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1585, file: !1156, line: 619, baseType: !526, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1585, file: !1156, line: 620, baseType: !526, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1585, file: !1156, line: 621, baseType: !526, size: 64, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1585, file: !1156, line: 622, baseType: !526, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1585, file: !1156, line: 629, baseType: !724, size: 64, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1585, file: !1156, line: 630, baseType: !526, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1585, file: !1156, line: 631, baseType: !7, size: 32, offset: 640)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1585, file: !1156, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1585, file: !1156, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1585, file: !1156, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1585, file: !1156, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1585, file: !1156, line: 662, baseType: !1601, size: 512, offset: 704)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1602)
!1602 = !{!1603, !1611, !1612, !1617, !1672, !1673, !1674, !1675}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1601, file: !25, line: 119, baseType: !1604, size: 256)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1605, line: 9, size: 256, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1604, file: !1605, line: 10, baseType: !824, size: 192, align: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1604, file: !1605, line: 11, baseType: !1609, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1610, line: 29, baseType: !724)
!1610 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1601, file: !25, line: 120, baseType: !1609, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1601, file: !25, line: 121, baseType: !1613, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!24, !1616}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1601, file: !25, line: 122, baseType: !1618, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1620)
!1620 = !{!1621, !1646, !1647, !1650, !1655, !1656, !1667, !1671}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1619, file: !25, line: 160, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1623, file: !25, line: 216, baseType: !672, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1623, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1623, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1623, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1623, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1623, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1623, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1623, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1623, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1623, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1623, file: !25, line: 227, baseType: !345, size: 16, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1623, file: !25, line: 228, baseType: !345, size: 16, offset: 208)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1623, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1623, file: !25, line: 235, baseType: !1609, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1623, file: !25, line: 236, baseType: !1616, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1623, file: !25, line: 237, baseType: !1609, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1623, file: !25, line: 238, baseType: !1616, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1623, file: !25, line: 239, baseType: !1643, size: 4096, align: 512, offset: 512)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1619, size: 4096, align: 512, elements: !1644)
!1644 = !{!1645}
!1645 = !DISubrange(count: 8)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1619, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1619, file: !25, line: 162, baseType: !1648, size: 32, offset: 96)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !271, line: 32, baseType: !1649)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !409, line: 96, baseType: !109)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1619, file: !25, line: 163, baseType: !1651, size: 32, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !497, line: 274, baseType: !1652)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !497, line: 274, size: 32, elements: !1653)
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1652, file: !497, line: 274, baseType: !501, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1619, file: !25, line: 164, baseType: !1616, size: 64, offset: 192)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1619, file: !25, line: 165, baseType: !1657, size: 128, offset: 256)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1605, line: 14, size: 128, elements: !1658)
!1658 = !{!1659}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1657, file: !1605, line: 15, baseType: !1660, size: 128)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !825, line: 26, size: 128, elements: !1661)
!1661 = !{!1662, !1666}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1660, file: !825, line: 27, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !825, line: 12, size: 64, elements: !1664)
!1664 = !{!1665}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1663, file: !825, line: 13, baseType: !829, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1660, file: !825, line: 28, baseType: !829, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1619, file: !25, line: 166, baseType: !1668, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!1609}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1619, file: !25, line: 167, baseType: !1609, size: 64, offset: 448)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1601, file: !25, line: 123, baseType: !335, size: 8, offset: 448)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1601, file: !25, line: 124, baseType: !335, size: 8, offset: 456)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1601, file: !25, line: 125, baseType: !335, size: 8, offset: 464)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1601, file: !25, line: 126, baseType: !335, size: 8, offset: 472)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1585, file: !1156, line: 671, baseType: !1601, size: 512, offset: 1216)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1585, file: !1156, line: 679, baseType: !1678, size: 64, offset: 1728)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1481, file: !1156, line: 800, baseType: !1680, size: 64, offset: 5248)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1156, line: 800, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1481, file: !1156, line: 809, baseType: !1684, size: 64, offset: 5312)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1156, line: 70, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1481, file: !1156, line: 825, baseType: !1687, size: 2048, align: 512, offset: 5632)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1156, line: 509, size: 2048, align: 512, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1687, file: !1156, line: 511, baseType: !526, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1687, file: !1156, line: 512, baseType: !526, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1687, file: !1156, line: 513, baseType: !526, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1687, file: !1156, line: 514, baseType: !526, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1687, file: !1156, line: 515, baseType: !526, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1687, file: !1156, line: 516, baseType: !526, size: 64, offset: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1687, file: !1156, line: 518, baseType: !526, size: 64, offset: 384)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1687, file: !1156, line: 519, baseType: !526, size: 64, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1687, file: !1156, line: 520, baseType: !724, size: 64, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1687, file: !1156, line: 522, baseType: !526, size: 64, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1687, file: !1156, line: 523, baseType: !526, size: 64, offset: 640)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1687, file: !1156, line: 524, baseType: !724, size: 64, offset: 704)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1687, file: !1156, line: 526, baseType: !724, size: 64, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1687, file: !1156, line: 527, baseType: !526, size: 64, offset: 832)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1687, file: !1156, line: 529, baseType: !526, size: 64, offset: 896)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1687, file: !1156, line: 530, baseType: !526, size: 64, offset: 960)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1687, file: !1156, line: 531, baseType: !526, size: 64, offset: 1024)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1687, file: !1156, line: 532, baseType: !526, size: 64, offset: 1088)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1687, file: !1156, line: 533, baseType: !526, size: 64, offset: 1152)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1687, file: !1156, line: 535, baseType: !526, size: 64, offset: 1216)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1687, file: !1156, line: 536, baseType: !526, size: 64, offset: 1280)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1687, file: !1156, line: 537, baseType: !526, size: 64, offset: 1344)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1687, file: !1156, line: 538, baseType: !526, size: 64, offset: 1408)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1687, file: !1156, line: 539, baseType: !526, size: 64, offset: 1472)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1687, file: !1156, line: 540, baseType: !526, size: 64, offset: 1536)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1687, file: !1156, line: 541, baseType: !526, size: 64, offset: 1600)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1687, file: !1156, line: 542, baseType: !526, size: 64, offset: 1664)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1687, file: !1156, line: 543, baseType: !526, size: 64, offset: 1728)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1481, file: !1156, line: 833, baseType: !7, size: 32, offset: 7680)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1481, file: !1156, line: 836, baseType: !7, size: 32, offset: 7712)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1481, file: !1156, line: 837, baseType: !109, size: 32, offset: 7744)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1481, file: !1156, line: 838, baseType: !1721, size: 64, offset: 7808)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1723)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1724, line: 19, baseType: !1725)
!1724 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1724, line: 19, size: 64, elements: !1726)
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1725, file: !1724, line: 19, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 64, elements: !1729)
!1729 = !{!1730}
!1730 = !DISubrange(count: 1)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1481, file: !1156, line: 839, baseType: !1732, size: 64, offset: 7872)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1481, file: !1156, line: 840, baseType: !1723, size: 64, offset: 7936)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1481, file: !1156, line: 841, baseType: !233, size: 64, offset: 8000)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1481, file: !1156, line: 843, baseType: !345, size: 16, offset: 8064)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1481, file: !1156, line: 845, baseType: !345, size: 16, offset: 8080)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1481, file: !1156, line: 848, baseType: !109, size: 32, offset: 8096)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1481, file: !1156, line: 849, baseType: !1739, size: 32, offset: 8128)
!1739 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1156, line: 718, size: 32, elements: !1740)
!1740 = !{!1741, !1748}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1739, file: !1156, line: 724, baseType: !1742, size: 32)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1739, file: !1156, line: 719, size: 32, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1742, file: !1156, line: 720, baseType: !335, size: 8)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1742, file: !1156, line: 721, baseType: !335, size: 8, offset: 8)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1742, file: !1156, line: 722, baseType: !335, size: 8, offset: 16)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1742, file: !1156, line: 723, baseType: !335, size: 8, offset: 24)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1739, file: !1156, line: 725, baseType: !239, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1481, file: !1156, line: 850, baseType: !294, size: 128, offset: 8192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1481, file: !1156, line: 851, baseType: !1751, size: 64, offset: 8320)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1156, line: 60, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1481, file: !1156, line: 855, baseType: !425, size: 64, offset: 8384)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1481, file: !1156, line: 856, baseType: !335, size: 8, offset: 8448)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1481, file: !1156, line: 857, baseType: !335, size: 8, offset: 8456)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1481, file: !1156, line: 858, baseType: !109, size: 32, offset: 8480)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1481, file: !1156, line: 859, baseType: !294, size: 128, offset: 8512)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1481, file: !1156, line: 860, baseType: !109, size: 32, offset: 8640)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1481, file: !1156, line: 861, baseType: !294, size: 128, offset: 8704)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1481, file: !1156, line: 873, baseType: !1761, size: 256, offset: 8832)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1156, line: 376, size: 256, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1766}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1761, file: !1156, line: 381, baseType: !425, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1761, file: !1156, line: 384, baseType: !528, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1761, file: !1156, line: 389, baseType: !528, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1761, file: !1156, line: 392, baseType: !528, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1481, file: !1156, line: 875, baseType: !294, size: 128, offset: 9088)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1481, file: !1156, line: 877, baseType: !1769, size: 320, offset: 9216)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1770, line: 86, size: 320, elements: !1771)
!1770 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1771 = !{!1772, !1773, !1774}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1769, file: !1770, line: 87, baseType: !109, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1769, file: !1770, line: 88, baseType: !294, size: 128, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1769, file: !1770, line: 89, baseType: !294, size: 128, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1481, file: !1156, line: 878, baseType: !824, size: 192, align: 64, offset: 9536)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1481, file: !1156, line: 881, baseType: !1777, size: 64, offset: 9728)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1779)
!1779 = !{!1780, !2708}
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1778, file: !38, line: 734, baseType: !1781, size: 10240)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1778, file: !38, line: 734, size: 10240, elements: !1782)
!1782 = !{!1783, !1787, !1800, !2587, !2588, !2589, !2590, !2591, !2592, !2599, !2600, !2601, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2640, !2642, !2645, !2688, !2689, !2690, !2693, !2694, !2695, !2698, !2699, !2700, !2706, !2707}
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !38, line: 739, baseType: !1784, size: 512, align: 512)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1781, file: !38, line: 739, size: 512, align: 512, elements: !1785)
!1785 = !{!1786}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1784, file: !38, line: 747, baseType: !327, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1781, file: !38, line: 750, baseType: !1788, size: 128, offset: 512)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1789, line: 218, size: 128, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1790 = !{!1791, !1798, !1799}
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1788, file: !1789, line: 219, baseType: !1792, size: 32)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1788, file: !1789, line: 219, size: 32, elements: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1792, file: !1789, line: 220, baseType: !307, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1792, file: !1789, line: 221, baseType: !1796)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1789, line: 197, baseType: !1797)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1789, line: 197, elements: !1001)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1788, file: !1789, line: 223, baseType: !7, size: 32, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1788, file: !1789, line: 224, baseType: !233, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1781, file: !38, line: 752, baseType: !1801, size: 64, offset: 640)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!425, !1804, !425, !425, !425, !425}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1806)
!1806 = !{!1807, !1813, !1814, !1816, !1817, !1818, !1819, !1820, !1870, !2060, !2069, !2070, !2071, !2577, !2578, !2579, !2580, !2582, !2583, !2586}
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1805, file: !14, line: 995, baseType: !1808, size: 128)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1805, file: !14, line: 995, size: 128, elements: !1809)
!1809 = !{!1810, !1811, !1812}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1808, file: !14, line: 996, baseType: !1507, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1808, file: !14, line: 997, baseType: !932, size: 128, align: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1808, file: !14, line: 998, baseType: !7, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1805, file: !14, line: 1005, baseType: !307, size: 32, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1805, file: !14, line: 1006, baseType: !1815, size: 32, offset: 160)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !271, line: 156, baseType: !7)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1805, file: !14, line: 1007, baseType: !718, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1805, file: !14, line: 1008, baseType: !714, size: 256, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1805, file: !14, line: 1009, baseType: !614, size: 64, offset: 512)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1805, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1805, file: !14, line: 1011, baseType: !1821, size: 256, offset: 640)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1822)
!1822 = !{!1823, !1844, !1866, !1867, !1868, !1869}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1821, file: !14, line: 949, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1825, line: 34, baseType: !1826)
!1825 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1825, line: 25, size: 64, elements: !1827)
!1827 = !{!1828}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1826, file: !1825, line: 26, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1830, line: 27, baseType: !1831)
!1830 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1830, line: 13, size: 64, elements: !1832)
!1832 = !{!1833, !1843}
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !1830, line: 14, baseType: !1834, size: 32)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1831, file: !1830, line: 14, size: 32, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1834, file: !1830, line: 15, baseType: !327, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, scope: !1834, file: !1830, line: 16, baseType: !1838, size: 32)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1834, file: !1830, line: 16, size: 32, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1838, file: !1830, line: 18, baseType: !335, size: 8)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1838, file: !1830, line: 19, baseType: !1842, size: 24, offset: 8)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 24, elements: !376)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1831, file: !1830, line: 26, baseType: !319, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1821, file: !14, line: 950, baseType: !1845, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1847)
!1847 = !{!1848, !1849, !1850, !1851, !1853, !1854, !1855, !1856}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1846, file: !30, line: 61, baseType: !1494, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1846, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1846, file: !30, line: 63, baseType: !307, size: 32, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1846, file: !30, line: 65, baseType: !1852, size: 256, offset: 128)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 256, elements: !942)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1846, file: !30, line: 66, baseType: !1082, size: 64, offset: 384)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1846, file: !30, line: 68, baseType: !1467, size: 192, offset: 448)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1846, file: !30, line: 69, baseType: !932, size: 128, align: 64, offset: 640)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1846, file: !30, line: 70, baseType: !1857, offset: 768)
!1857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1858, elements: !1864)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1859)
!1859 = !{!1860, !1861}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1858, file: !30, line: 55, baseType: !109, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1858, file: !30, line: 56, baseType: !1862, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1864 = !{!1865}
!1865 = !DISubrange(count: -1)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1821, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1821, file: !14, line: 952, baseType: !461, size: 32, offset: 160)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1821, file: !14, line: 952, baseType: !461, size: 32, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1821, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1805, file: !14, line: 1012, baseType: !1871, size: 64, offset: 896)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1873)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1874, line: 110, size: 1472, elements: !1875)
!1874 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1875 = !{!1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1892, !1893, !1894, !1895, !1896, !1897, !2005, !2006, !2007, !2008, !2009, !2040, !2043, !2047, !2055}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1873, file: !1874, line: 111, baseType: !718, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1873, file: !1874, line: 112, baseType: !461, size: 32, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1873, file: !1874, line: 113, baseType: !470, size: 32, offset: 96)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1873, file: !1874, line: 114, baseType: !461, size: 32, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1873, file: !1874, line: 115, baseType: !470, size: 32, offset: 160)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1873, file: !1874, line: 116, baseType: !461, size: 32, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1873, file: !1874, line: 117, baseType: !470, size: 32, offset: 224)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1873, file: !1874, line: 118, baseType: !461, size: 32, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1873, file: !1874, line: 119, baseType: !470, size: 32, offset: 288)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1873, file: !1874, line: 120, baseType: !7, size: 32, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1873, file: !1874, line: 121, baseType: !1887, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1888, line: 24, baseType: !1889)
!1888 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1888, line: 24, size: 64, elements: !1890)
!1890 = !{!1891}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1889, file: !1888, line: 24, baseType: !526, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1873, file: !1874, line: 122, baseType: !1887, size: 64, offset: 448)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1873, file: !1874, line: 123, baseType: !1887, size: 64, offset: 512)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1873, file: !1874, line: 124, baseType: !1887, size: 64, offset: 576)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1873, file: !1874, line: 125, baseType: !1887, size: 64, offset: 640)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1873, file: !1874, line: 127, baseType: !337, size: 8, offset: 704)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1873, file: !1874, line: 129, baseType: !1898, size: 64, offset: 768)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1900, line: 195, size: 1728, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1901 = !{!1902, !1903, !1906, !1911, !1912, !1915, !1916, !1921, !1922, !1923, !1924, !1927, !1928, !1929, !1930, !1931, !1969, !1990}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1899, file: !1900, line: 196, baseType: !1494, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1899, file: !1900, line: 197, baseType: !1904, size: 32, offset: 32)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1900, line: 28, baseType: !1905)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !271, line: 104, baseType: !710)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1900, line: 198, baseType: !1907, size: 192, offset: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !1900, line: 198, size: 192, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1907, file: !1900, line: 199, baseType: !294, size: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1907, file: !1900, line: 200, baseType: !824, size: 192, align: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1899, file: !1900, line: 205, baseType: !1374, size: 320, offset: 256)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1899, file: !1900, line: 206, baseType: !1913, size: 64, offset: 576)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1900, line: 206, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1899, file: !1900, line: 207, baseType: !233, size: 64, offset: 640)
!1916 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1900, line: 208, baseType: !1917, size: 64, offset: 704)
!1917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !1900, line: 208, size: 64, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1917, file: !1900, line: 209, baseType: !1214, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1917, file: !1900, line: 210, baseType: !1214, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1899, file: !1900, line: 212, baseType: !1214, size: 64, offset: 768)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1899, file: !1900, line: 213, baseType: !461, size: 32, offset: 832)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1899, file: !1900, line: 214, baseType: !470, size: 32, offset: 864)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1899, file: !1900, line: 215, baseType: !1925, size: 32, offset: 896)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1900, line: 31, baseType: !1926)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !271, line: 110, baseType: !239)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1899, file: !1900, line: 216, baseType: !345, size: 16, offset: 928)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1899, file: !1900, line: 217, baseType: !345, size: 16, offset: 944)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1899, file: !1900, line: 221, baseType: !850, size: 16, offset: 960)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1899, file: !1900, line: 228, baseType: !425, size: 64, offset: 1024)
!1931 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1900, line: 245, baseType: !1932, size: 320, offset: 1088)
!1932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !1900, line: 245, size: 320, elements: !1933)
!1933 = !{!1934, !1961}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1932, file: !1900, line: 246, baseType: !1935, size: 320)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1900, line: 114, size: 320, elements: !1936)
!1936 = !{!1937, !1938, !1950, !1953, !1960}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1935, file: !1900, line: 116, baseType: !425, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1900, line: 117, baseType: !1939, size: 64, offset: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !1900, line: 117, size: 64, elements: !1940)
!1940 = !{!1941, !1949}
!1941 = !DIDerivedType(tag: DW_TAG_member, scope: !1939, file: !1900, line: 118, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1939, file: !1900, line: 118, size: 64, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1942, file: !1900, line: 120, baseType: !343, size: 16)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1942, file: !1900, line: 121, baseType: !1946, size: 48, offset: 16)
!1946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 48, elements: !1947)
!1947 = !{!1948}
!1948 = !DISubrange(count: 6)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1939, file: !1900, line: 127, baseType: !425, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1935, file: !1900, line: 129, baseType: !1951, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1900, line: 102, flags: DIFlagFwdDecl)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1935, file: !1900, line: 130, baseType: !1954, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1900, line: 108, size: 192, elements: !1956)
!1956 = !{!1957, !1958, !1959}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1955, file: !1900, line: 109, baseType: !932, size: 128, align: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1955, file: !1900, line: 110, baseType: !1494, size: 32, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1955, file: !1900, line: 111, baseType: !270, size: 8, offset: 160)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1935, file: !1900, line: 131, baseType: !290, size: 64, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !1900, line: 247, baseType: !1962, size: 320)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1932, file: !1900, line: 247, size: 320, elements: !1963)
!1963 = !{!1964, !1965, !1966, !1967, !1968}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1962, file: !1900, line: 248, baseType: !425, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1962, file: !1900, line: 249, baseType: !425, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1962, file: !1900, line: 250, baseType: !1951, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1962, file: !1900, line: 251, baseType: !1954, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1962, file: !1900, line: 252, baseType: !375, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_member, scope: !1899, file: !1900, line: 260, baseType: !1970, size: 256, offset: 1408)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1899, file: !1900, line: 260, size: 256, elements: !1971)
!1971 = !{!1972, !1978}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1970, file: !1900, line: 261, baseType: !1973, size: 256)
!1973 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1900, line: 134, size: 256, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1973, file: !1900, line: 135, baseType: !233, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1973, file: !1900, line: 136, baseType: !1977, size: 256)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !942)
!1978 = !DIDerivedType(tag: DW_TAG_member, scope: !1970, file: !1900, line: 262, baseType: !1979, size: 256)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1970, file: !1900, line: 262, size: 256, elements: !1980)
!1980 = !{!1981, !1982}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1979, file: !1900, line: 264, baseType: !294, size: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1979, file: !1900, line: 265, baseType: !1983, size: 128, offset: 128)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1984, line: 22, size: 128, elements: !1985)
!1984 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1985 = !{!1986, !1989}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1983, file: !1984, line: 23, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1984, line: 23, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1983, file: !1984, line: 24, baseType: !425, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1899, file: !1900, line: 280, baseType: !1991, size: 64, offset: 1664)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1900, line: 176, size: 192, elements: !1993)
!1993 = !{!1994, !2003, !2004}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1992, file: !1900, line: 177, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1900, line: 171, baseType: !1996)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!109, !1898, !1999, !2001, !1898}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1952)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1973)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1992, file: !1900, line: 178, baseType: !1898, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1992, file: !1900, line: 179, baseType: !1951, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1873, file: !1874, line: 130, baseType: !1898, size: 64, offset: 832)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1873, file: !1874, line: 131, baseType: !1898, size: 64, offset: 896)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1873, file: !1874, line: 132, baseType: !1898, size: 64, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1873, file: !1874, line: 135, baseType: !233, size: 64, offset: 1024)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1873, file: !1874, line: 137, baseType: !2010, size: 64, offset: 1088)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2012, line: 14, size: 1088, elements: !2013)
!2012 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2013 = !{!2014, !2015, !2024, !2025, !2026, !2027, !2028, !2029}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2011, file: !2012, line: 15, baseType: !1494, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2011, file: !2012, line: 17, baseType: !2016, size: 320, offset: 64)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2017, line: 22, size: 320, elements: !2018)
!2017 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2018 = !{!2019, !2020, !2021, !2022}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2016, file: !2017, line: 23, baseType: !672, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2016, file: !2017, line: 24, baseType: !724, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2016, file: !2017, line: 26, baseType: !294, size: 128, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2016, file: !2017, line: 28, baseType: !2023, size: 64, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2011, file: !2012, line: 19, baseType: !425, size: 64, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2011, file: !2012, line: 20, baseType: !718, size: 64, offset: 448)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2011, file: !2012, line: 23, baseType: !958, size: 128, offset: 512)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2011, file: !2012, line: 24, baseType: !461, size: 32, offset: 640)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2011, file: !2012, line: 29, baseType: !718, size: 64, offset: 704)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2011, file: !2012, line: 36, baseType: !2030, size: 320, offset: 768)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2031, line: 15, size: 320, elements: !2032)
!2031 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2032 = !{!2033, !2034, !2035, !2036, !2037, !2038, !2039}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2030, file: !2031, line: 16, baseType: !672, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2030, file: !2031, line: 18, baseType: !109, size: 32, offset: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2030, file: !2031, line: 19, baseType: !109, size: 32, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2030, file: !2031, line: 20, baseType: !109, size: 32, offset: 96)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2030, file: !2031, line: 21, baseType: !109, size: 32, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2030, file: !2031, line: 22, baseType: !425, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2030, file: !2031, line: 23, baseType: !425, size: 64, offset: 256)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1873, file: !1874, line: 138, baseType: !2041, size: 64, offset: 1152)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !462, line: 18, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1873, file: !1874, line: 139, baseType: !2044, size: 64, offset: 1216)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2046, line: 16, flags: DIFlagFwdDecl)
!2046 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1873, file: !1874, line: 140, baseType: !2048, size: 64, offset: 1280)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1874, line: 25, size: 64, elements: !2050)
!2050 = !{!2051, !2052, !2053}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2049, file: !1874, line: 26, baseType: !327, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2049, file: !1874, line: 27, baseType: !109, size: 32, offset: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2049, file: !1874, line: 28, baseType: !2054, offset: 64)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, elements: !1864)
!2055 = !DIDerivedType(tag: DW_TAG_member, scope: !1873, file: !1874, line: 142, baseType: !2056, size: 128, offset: 1344)
!2056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1873, file: !1874, line: 142, size: 128, elements: !2057)
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2056, file: !1874, line: 143, baseType: !109, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2056, file: !1874, line: 144, baseType: !932, size: 128, align: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1805, file: !14, line: 1013, baseType: !2061, size: 256, offset: 960)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2062)
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2068}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2061, file: !14, line: 971, baseType: !425, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2061, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2061, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2061, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2061, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2061, file: !14, line: 976, baseType: !614, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1805, file: !14, line: 1014, baseType: !1286, size: 128, offset: 1216)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1805, file: !14, line: 1015, baseType: !455, size: 64, offset: 1344)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1805, file: !14, line: 1016, baseType: !2072, size: 64, offset: 1408)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2074)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2075)
!2075 = !{!2076, !2077, !2081, !2086, !2090, !2175, !2176, !2182, !2195, !2203, !2207, !2208, !2499, !2500, !2504, !2509, !2510, !2514, !2518, !2524, !2525, !2529, !2530, !2536, !2540, !2544, !2550, !2554, !2558, !2562, !2566, !2567, !2573}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2074, file: !14, line: 1915, baseType: !643, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2074, file: !14, line: 1916, baseType: !2078, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!614, !1804, !614, !109}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2074, file: !14, line: 1917, baseType: !2082, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!407, !1804, !375, !422, !2085}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2074, file: !14, line: 1918, baseType: !2087, size: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!407, !1804, !290, !422, !2085}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2074, file: !14, line: 1919, baseType: !2091, size: 64, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!407, !2094, !2116}
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2096)
!2096 = !{!2097, !2098, !2099, !2103, !2104, !2105, !2106}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2095, file: !14, line: 374, baseType: !1804, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2095, file: !14, line: 375, baseType: !614, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2095, file: !14, line: 376, baseType: !2100, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{null, !2094, !411}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2095, file: !14, line: 377, baseType: !233, size: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2095, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2095, file: !14, line: 379, baseType: !343, size: 16, offset: 288)
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !2095, file: !14, line: 380, baseType: !2107, size: 64, offset: 320)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2095, file: !14, line: 380, size: 64, elements: !2108)
!2108 = !{!2109, !2112}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2107, file: !14, line: 386, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2107, file: !14, line: 395, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!407, !233}
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2118, line: 41, size: 320, elements: !2119)
!2118 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2119 = !{!2120, !2121, !2122, !2123, !2124, !2125, !2130, !2170}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2117, file: !2118, line: 42, baseType: !335, size: 8)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2117, file: !2118, line: 43, baseType: !270, size: 8, offset: 8)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2117, file: !2118, line: 44, baseType: !270, size: 8, offset: 16)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2117, file: !2118, line: 45, baseType: !270, size: 8, offset: 24)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2117, file: !2118, line: 46, baseType: !270, size: 8, offset: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, scope: !2117, file: !2118, line: 47, baseType: !2126, size: 64, offset: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2117, file: !2118, line: 47, size: 64, elements: !2127)
!2127 = !{!2128, !2129}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2126, file: !2118, line: 48, baseType: !422, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2126, file: !2118, line: 49, baseType: !109, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2117, file: !2118, line: 61, baseType: !2131, size: 128, offset: 128)
!2131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2117, file: !2118, line: 61, size: 128, elements: !2132)
!2132 = !{!2133, !2139}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2131, file: !2118, line: 67, baseType: !2134, size: 128)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2135, line: 17, size: 128, elements: !2136)
!2135 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2136 = !{!2137, !2138}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2134, file: !2135, line: 19, baseType: !233, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2134, file: !2135, line: 20, baseType: !423, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, scope: !2131, file: !2118, line: 68, baseType: !2140, size: 128)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2131, file: !2118, line: 68, size: 128, elements: !2141)
!2141 = !{!2142, !2169}
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !2118, line: 69, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !2118, line: 69, size: 64, elements: !2144)
!2144 = !{!2145, !2148, !2155, !2160, !2168}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2143, file: !2118, line: 71, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2143, file: !2118, line: 72, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2151)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2118, line: 17, size: 128, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2151, file: !2118, line: 18, baseType: !233, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2151, file: !2118, line: 19, baseType: !422, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2143, file: !2118, line: 73, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2158)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2159, line: 54, flags: DIFlagFwdDecl)
!2159 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f0b1570b81b8ad6a5a9b58f221b3254d")
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2143, file: !2118, line: 74, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2163, line: 296, size: 128, elements: !2164)
!2163 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2164 = !{!2165, !2166, !2167}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2162, file: !2163, line: 297, baseType: !307, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2162, file: !2163, line: 299, baseType: !1226, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2162, file: !2163, line: 300, baseType: !233, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2143, file: !2118, line: 75, baseType: !233, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2140, file: !2118, line: 77, baseType: !422, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, scope: !2117, file: !2118, line: 80, baseType: !2171, size: 64, offset: 256)
!2171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2117, file: !2118, line: 80, size: 64, elements: !2172)
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2171, file: !2118, line: 81, baseType: !425, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2171, file: !2118, line: 82, baseType: !614, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2074, file: !14, line: 1920, baseType: !2091, size: 64, offset: 320)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2074, file: !14, line: 1921, baseType: !2177, size: 64, offset: 384)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!109, !2094, !2180, !7}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2074, file: !14, line: 1923, baseType: !2183, size: 64, offset: 448)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!109, !1804, !2186}
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2188)
!2188 = !{!2189, !2194}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2187, file: !14, line: 1859, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2191)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!270, !2186, !290, !109, !614, !526, !7}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2187, file: !14, line: 1860, baseType: !614, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2074, file: !14, line: 1924, baseType: !2196, size: 64, offset: 512)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!2199, !1804, !2201}
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2200, line: 59, baseType: !7)
!2200 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !629, line: 31, flags: DIFlagFwdDecl)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2074, file: !14, line: 1925, baseType: !2204, size: 64, offset: 576)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!411, !1804, !7, !425}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2074, file: !14, line: 1926, baseType: !2204, size: 64, offset: 640)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2074, file: !14, line: 1927, baseType: !2209, size: 64, offset: 704)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!109, !1804, !2212}
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2214)
!2214 = !{!2215, !2224, !2225, !2233, !2240, !2241, !2246, !2247, !2252, !2253, !2256, !2492, !2493, !2494, !2495, !2496, !2497}
!2215 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !38, line: 628, baseType: !2216, size: 128)
!2216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2213, file: !38, line: 628, size: 128, elements: !2217)
!2217 = !{!2218, !2223}
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2216, file: !38, line: 629, baseType: !2219, size: 128)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2216, file: !38, line: 629, size: 128, elements: !2220)
!2220 = !{!2221, !2222}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2219, file: !38, line: 631, baseType: !425, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2219, file: !38, line: 632, baseType: !425, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2216, file: !38, line: 635, baseType: !932, size: 128, align: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2213, file: !38, line: 639, baseType: !1777, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2213, file: !38, line: 640, baseType: !2226, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2227, line: 297, baseType: !2228)
!2227 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2227, line: 297, size: 64, elements: !2229)
!2229 = !{!2230}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2228, file: !2227, line: 297, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2232, line: 19, baseType: !425)
!2232 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !38, line: 646, baseType: !2234, size: 64, offset: 256)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2213, file: !38, line: 646, size: 64, elements: !2235)
!2235 = !{!2236, !2239}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2234, file: !38, line: 647, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2238)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !425)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2234, file: !38, line: 648, baseType: !2238, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2213, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2213, file: !38, line: 667, baseType: !2242, size: 64, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2244)
!2244 = !{!2245}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2243, file: !38, line: 580, baseType: !1374, size: 320)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2213, file: !38, line: 670, baseType: !270, size: 8, offset: 448)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2213, file: !38, line: 681, baseType: !2248, size: 256, offset: 512)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2213, file: !38, line: 678, size: 256, elements: !2249)
!2249 = !{!2250, !2251}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2248, file: !38, line: 679, baseType: !824, size: 192, align: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2248, file: !38, line: 680, baseType: !425, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2213, file: !38, line: 689, baseType: !294, size: 128, offset: 768)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2213, file: !38, line: 691, baseType: !2254, size: 64, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2213, file: !38, line: 694, baseType: !2257, size: 64, offset: 960)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2259)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2260, line: 563, size: 1024, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2261 = !{!2262, !2266, !2267, !2271, !2275, !2279, !2456, !2460, !2464, !2468, !2469, !2470, !2474, !2478, !2484, !2488}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2259, file: !2260, line: 564, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !2212}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2259, file: !2260, line: 569, baseType: !2263, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2259, file: !2260, line: 571, baseType: !2268, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!109, !2212, !425}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2259, file: !2260, line: 572, baseType: !2272, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!109, !2212}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2259, file: !2260, line: 578, baseType: !2276, size: 64, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!109, !2212, !425, !425, !425}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2259, file: !2260, line: 580, baseType: !2280, size: 64, offset: 320)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!2283, !2284}
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2260, line: 512, size: 896, elements: !2286)
!2286 = !{!2287, !2295, !2296, !2303, !2310, !2320, !2449, !2450, !2452, !2454}
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2285, file: !2260, line: 513, baseType: !2288, size: 320)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2285, file: !2260, line: 513, size: 320, elements: !2289)
!2289 = !{!2290, !2291, !2292, !2293, !2294}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2288, file: !2260, line: 514, baseType: !2212, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2288, file: !2260, line: 515, baseType: !1226, size: 32, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2288, file: !2260, line: 516, baseType: !425, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2288, file: !2260, line: 517, baseType: !425, size: 64, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2288, file: !2260, line: 518, baseType: !425, size: 64, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2285, file: !2260, line: 520, baseType: !37, size: 32, offset: 320)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2285, file: !2260, line: 522, baseType: !2297, size: 64, offset: 384)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2232, line: 22, baseType: !2299)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2232, line: 22, size: 64, elements: !2300)
!2300 = !{!2301}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2299, file: !2232, line: 22, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2232, line: 15, baseType: !425)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2285, file: !2260, line: 524, baseType: !2304, size: 64, offset: 448)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2227, line: 372, baseType: !2306)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2227, line: 372, size: 64, elements: !2307)
!2307 = !{!2308}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2306, file: !2227, line: 372, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2232, line: 16, baseType: !425)
!2310 = !DIDerivedType(tag: DW_TAG_member, scope: !2285, file: !2260, line: 527, baseType: !2311, size: 64, offset: 512)
!2311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2285, file: !2260, line: 527, size: 64, elements: !2312)
!2312 = !{!2313, !2319}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2311, file: !2260, line: 528, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2232, line: 21, baseType: !2315)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2232, line: 21, size: 64, elements: !2316)
!2316 = !{!2317}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2315, file: !2232, line: 21, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2232, line: 14, baseType: !425)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2311, file: !2260, line: 529, baseType: !2298, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2285, file: !2260, line: 534, baseType: !2321, size: 64, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2323)
!2323 = !{!2324, !2325, !2443, !2448}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2322, file: !38, line: 75, baseType: !425, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, scope: !2322, file: !38, line: 83, baseType: !2326, size: 320, offset: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2322, file: !38, line: 83, size: 320, elements: !2327)
!2327 = !{!2328, !2349, !2363, !2367, !2442}
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2326, file: !38, line: 84, baseType: !2329, size: 320)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2326, file: !38, line: 84, size: 320, elements: !2330)
!2330 = !{!2331, !2342, !2343, !2348}
!2331 = !DIDerivedType(tag: DW_TAG_member, scope: !2329, file: !38, line: 90, baseType: !2332, size: 128)
!2332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2329, file: !38, line: 90, size: 128, elements: !2333)
!2333 = !{!2334, !2335, !2340, !2341}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2332, file: !38, line: 91, baseType: !294, size: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, scope: !2332, file: !38, line: 94, baseType: !2336, size: 128)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !38, line: 94, size: 128, elements: !2337)
!2337 = !{!2338, !2339}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2336, file: !38, line: 96, baseType: !233, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2336, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2332, file: !38, line: 102, baseType: !294, size: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2332, file: !38, line: 103, baseType: !294, size: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2329, file: !38, line: 106, baseType: !451, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2329, file: !38, line: 107, baseType: !2344, size: 64, offset: 192)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2329, file: !38, line: 107, size: 64, elements: !2345)
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2344, file: !38, line: 108, baseType: !425, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2344, file: !38, line: 109, baseType: !425, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2329, file: !38, line: 117, baseType: !425, size: 64, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, scope: !2326, file: !38, line: 119, baseType: !2350, size: 320)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2326, file: !38, line: 119, size: 320, elements: !2351)
!2351 = !{!2352, !2353, !2356, !2357, !2358}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2350, file: !38, line: 124, baseType: !425, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2350, file: !38, line: 125, baseType: !2354, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2350, file: !38, line: 126, baseType: !425, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2350, file: !38, line: 127, baseType: !425, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, scope: !2350, file: !38, line: 128, baseType: !2359, size: 64, offset: 256)
!2359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2350, file: !38, line: 128, size: 64, elements: !2360)
!2360 = !{!2361, !2362}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2359, file: !38, line: 133, baseType: !425, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2359, file: !38, line: 138, baseType: !718, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2326, file: !38, line: 141, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2326, file: !38, line: 141, size: 64, elements: !2365)
!2365 = !{!2366}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2364, file: !38, line: 142, baseType: !425, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, scope: !2326, file: !38, line: 144, baseType: !2368, size: 128)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2326, file: !38, line: 144, size: 128, elements: !2369)
!2369 = !{!2370, !2441}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2368, file: !38, line: 146, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2373)
!2373 = !{!2374, !2384, !2405, !2406, !2407, !2408, !2409, !2423, !2424, !2425}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2372, file: !54, line: 127, baseType: !2375, size: 384)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2376)
!2376 = !{!2377, !2378, !2380, !2381, !2382, !2383}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2375, file: !54, line: 22, baseType: !425, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2375, file: !54, line: 23, baseType: !2379, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2375, file: !54, line: 24, baseType: !2379, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2375, file: !54, line: 25, baseType: !425, size: 64, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2375, file: !54, line: 26, baseType: !425, size: 64, offset: 256)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2375, file: !54, line: 27, baseType: !425, size: 64, offset: 320)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2372, file: !54, line: 128, baseType: !2385, size: 128, offset: 384)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2386, line: 105, size: 128, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2385, file: !2386, line: 110, baseType: !425, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2385, file: !2386, line: 118, baseType: !2390, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2386, line: 95, size: 448, elements: !2392)
!2392 = !{!2393, !2394, !2400, !2401, !2402, !2403, !2404}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2391, file: !2386, line: 96, baseType: !718, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2391, file: !2386, line: 97, baseType: !2395, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2386, line: 60, baseType: !2397)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{null, !2399}
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2391, file: !2386, line: 98, baseType: !2395, size: 64, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2391, file: !2386, line: 99, baseType: !270, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2391, file: !2386, line: 100, baseType: !270, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2391, file: !2386, line: 101, baseType: !932, size: 128, align: 64, offset: 256)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2391, file: !2386, line: 102, baseType: !2399, size: 64, offset: 384)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2372, file: !54, line: 129, baseType: !663, size: 256, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2372, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2372, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2372, file: !54, line: 132, baseType: !425, size: 64, offset: 832)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2372, file: !54, line: 133, baseType: !2410, size: 64, offset: 896)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2412)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2413)
!2413 = !{!2414, !2418, !2419}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2412, file: !54, line: 83, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !2321}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2412, file: !54, line: 89, baseType: !2280, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2412, file: !54, line: 100, baseType: !2420, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!109, !2371, !425, !425, !109}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2372, file: !54, line: 134, baseType: !233, size: 64, offset: 960)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2372, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2425 = !DIDerivedType(tag: DW_TAG_member, scope: !2372, file: !54, line: 136, baseType: !2426, size: 128, offset: 1088)
!2426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2372, file: !54, line: 136, size: 128, elements: !2427)
!2427 = !{!2428, !2434}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2426, file: !54, line: 137, baseType: !2429, size: 128)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2430, line: 6, size: 128, elements: !2431)
!2430 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2431 = !{!2432, !2433}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2429, file: !2430, line: 7, baseType: !526, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2429, file: !2430, line: 8, baseType: !526, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !54, line: 138, baseType: !2435)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2426, file: !54, line: 138, elements: !2436)
!2436 = !{!2437, !2439}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2435, file: !54, line: 138, baseType: !2438)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2435, file: !54, line: 138, elements: !1001)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2435, file: !54, line: 138, baseType: !2440)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2429, elements: !1864)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2368, file: !38, line: 147, baseType: !233, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2326, file: !38, line: 161, baseType: !932, size: 128, align: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, scope: !2322, file: !38, line: 164, baseType: !2444, size: 32, offset: 384)
!2444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2322, file: !38, line: 164, size: 32, elements: !2445)
!2445 = !{!2446, !2447}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2444, file: !38, line: 169, baseType: !327, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2444, file: !38, line: 177, baseType: !7, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2322, file: !38, line: 181, baseType: !327, size: 32, offset: 416)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2285, file: !2260, line: 535, baseType: !2321, size: 64, offset: 640)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2285, file: !2260, line: 541, baseType: !2451, size: 64, offset: 704)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2285, file: !2260, line: 545, baseType: !2453, size: 64, offset: 768)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2285, file: !2260, line: 549, baseType: !2455, size: 64, offset: 832)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2227, line: 520, baseType: !2321)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2259, file: !2260, line: 581, baseType: !2457, size: 64, offset: 384)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!2283, !2284, !7}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2259, file: !2260, line: 582, baseType: !2461, size: 64, offset: 448)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!2283, !2284, !425, !425}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2259, file: !2260, line: 584, baseType: !2465, size: 64, offset: 512)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!425, !2212}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2259, file: !2260, line: 588, baseType: !2280, size: 64, offset: 576)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2259, file: !2260, line: 591, baseType: !2280, size: 64, offset: 640)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2259, file: !2260, line: 597, baseType: !2471, size: 64, offset: 704)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!109, !2212, !425, !233, !109, !109}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2259, file: !2260, line: 603, baseType: !2475, size: 64, offset: 768)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!290, !2212}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2259, file: !2260, line: 613, baseType: !2479, size: 64, offset: 832)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!109, !2212, !2482}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1156, line: 54, flags: DIFlagFwdDecl)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2259, file: !2260, line: 625, baseType: !2485, size: 64, offset: 896)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!2482, !2212, !425}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2259, file: !2260, line: 633, baseType: !2489, size: 64, offset: 960)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!2321, !2212, !425}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2213, file: !38, line: 697, baseType: !425, size: 64, offset: 1024)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2213, file: !38, line: 699, baseType: !1804, size: 64, offset: 1088)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2213, file: !38, line: 700, baseType: !233, size: 64, offset: 1152)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2213, file: !38, line: 711, baseType: !718, size: 64, offset: 1216)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2213, file: !38, line: 717, baseType: !2482, size: 64, offset: 1280)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2213, file: !38, line: 722, baseType: !2498, offset: 1344)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1001)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2074, file: !14, line: 1928, baseType: !425, size: 64, offset: 768)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2074, file: !14, line: 1929, baseType: !2501, size: 64, offset: 832)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!109, !455, !1804}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2074, file: !14, line: 1930, baseType: !2505, size: 64, offset: 896)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!109, !1804, !2508}
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !233)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2074, file: !14, line: 1931, baseType: !2501, size: 64, offset: 960)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2074, file: !14, line: 1932, baseType: !2511, size: 64, offset: 1024)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!109, !1804, !614, !614, !109}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2074, file: !14, line: 1933, baseType: !2515, size: 64, offset: 1088)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!109, !109, !1804, !109}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2074, file: !14, line: 1934, baseType: !2519, size: 64, offset: 1152)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!109, !1804, !109, !2522}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2074, file: !14, line: 1935, baseType: !1801, size: 64, offset: 1216)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2074, file: !14, line: 1936, baseType: !2526, size: 64, offset: 1280)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!109, !109}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2074, file: !14, line: 1937, baseType: !2519, size: 64, offset: 1344)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2074, file: !14, line: 1938, baseType: !2531, size: 64, offset: 1408)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!407, !2534, !1804, !2085, !422, !7}
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1156, line: 59, flags: DIFlagFwdDecl)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2074, file: !14, line: 1939, baseType: !2537, size: 64, offset: 1472)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!407, !1804, !2085, !2534, !422, !7}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2074, file: !14, line: 1940, baseType: !2541, size: 64, offset: 1536)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !1804}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2074, file: !14, line: 1941, baseType: !2545, size: 64, offset: 1600)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!109, !1804, !109, !2548, !2549}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2074, file: !14, line: 1942, baseType: !2551, size: 64, offset: 1664)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!411, !1804, !109, !614, !614}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2074, file: !14, line: 1944, baseType: !2555, size: 64, offset: 1728)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !1154, !1804}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2074, file: !14, line: 1948, baseType: !2559, size: 64, offset: 1792)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!407, !1804, !614, !1804, !614, !422, !7}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2074, file: !14, line: 1950, baseType: !2563, size: 64, offset: 1856)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!614, !1804, !614, !1804, !614, !614, !7}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2074, file: !14, line: 1953, baseType: !2511, size: 64, offset: 1920)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2074, file: !14, line: 1954, baseType: !2568, size: 64, offset: 1984)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!109, !2571, !7}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2074, file: !14, line: 1955, baseType: !2574, size: 64, offset: 2048)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!109, !2571, !2180, !7}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1805, file: !14, line: 1018, baseType: !526, size: 64, offset: 1472)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1805, file: !14, line: 1020, baseType: !233, size: 64, offset: 1536)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1805, file: !14, line: 1023, baseType: !233, size: 64, offset: 1600)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1805, file: !14, line: 1027, baseType: !2581, size: 64, offset: 1664)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1805, file: !14, line: 1029, baseType: !451, size: 64, offset: 1728)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1805, file: !14, line: 1030, baseType: !2584, size: 32, offset: 1792)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2585, line: 8, baseType: !239)
!2585 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1805, file: !14, line: 1031, baseType: !2584, size: 32, offset: 1824)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1781, file: !38, line: 756, baseType: !425, size: 64, offset: 704)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1781, file: !38, line: 757, baseType: !425, size: 64, offset: 768)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1781, file: !38, line: 760, baseType: !425, size: 64, offset: 832)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1781, file: !38, line: 761, baseType: !425, size: 64, offset: 896)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1781, file: !38, line: 763, baseType: !425, size: 64, offset: 960)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1781, file: !38, line: 764, baseType: !2593, size: 64, offset: 1024)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2227, line: 299, baseType: !2595)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2227, line: 299, size: 64, elements: !2596)
!2596 = !{!2597}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2595, file: !2227, line: 299, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2232, line: 18, baseType: !425)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1781, file: !38, line: 773, baseType: !327, size: 32, offset: 1088)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1781, file: !38, line: 785, baseType: !327, size: 32, offset: 1120)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1781, file: !38, line: 795, baseType: !2602, size: 64, offset: 1152)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2604)
!2604 = !{!2605, !2606}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2603, file: !38, line: 727, baseType: !526, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2603, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1781, file: !38, line: 801, baseType: !425, size: 64, offset: 1216)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1781, file: !38, line: 804, baseType: !718, size: 64, offset: 1280)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1781, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1781, file: !38, line: 808, baseType: !307, size: 32, offset: 1376)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1781, file: !38, line: 823, baseType: !1374, size: 320, offset: 1408)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1781, file: !38, line: 825, baseType: !294, size: 128, offset: 1728)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1781, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1781, file: !38, line: 849, baseType: !425, size: 64, offset: 1920)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1781, file: !38, line: 850, baseType: !425, size: 64, offset: 1984)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1781, file: !38, line: 852, baseType: !425, size: 64, offset: 2048)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1781, file: !38, line: 853, baseType: !425, size: 64, offset: 2112)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1781, file: !38, line: 854, baseType: !720, size: 64, offset: 2176)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1781, file: !38, line: 855, baseType: !425, size: 64, offset: 2240)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1781, file: !38, line: 856, baseType: !425, size: 64, offset: 2304)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1781, file: !38, line: 857, baseType: !425, size: 64, offset: 2368)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1781, file: !38, line: 858, baseType: !425, size: 64, offset: 2432)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1781, file: !38, line: 865, baseType: !501, size: 32, offset: 2496)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1781, file: !38, line: 867, baseType: !307, size: 32, offset: 2528)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1781, file: !38, line: 869, baseType: !425, size: 64, offset: 2560)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1781, file: !38, line: 869, baseType: !425, size: 64, offset: 2624)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1781, file: !38, line: 869, baseType: !425, size: 64, offset: 2688)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1781, file: !38, line: 869, baseType: !425, size: 64, offset: 2752)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1781, file: !38, line: 870, baseType: !425, size: 64, offset: 2816)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1781, file: !38, line: 870, baseType: !425, size: 64, offset: 2880)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1781, file: !38, line: 870, baseType: !425, size: 64, offset: 2944)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1781, file: !38, line: 871, baseType: !425, size: 64, offset: 3008)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1781, file: !38, line: 871, baseType: !425, size: 64, offset: 3072)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1781, file: !38, line: 871, baseType: !425, size: 64, offset: 3136)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1781, file: !38, line: 871, baseType: !425, size: 64, offset: 3200)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1781, file: !38, line: 873, baseType: !2637, size: 3328, offset: 3264)
!2637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 3328, elements: !2638)
!2638 = !{!2639}
!2639 = !DISubrange(count: 52)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1781, file: !38, line: 875, baseType: !2641, size: 1280, offset: 6592)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 1280, elements: !942)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1781, file: !38, line: 877, baseType: !2643, size: 64, offset: 7872)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1781, file: !38, line: 880, baseType: !2646, size: 1088, offset: 7936)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2647, line: 72, baseType: !2648)
!2647 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2647, line: 23, size: 1088, elements: !2649)
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2657, !2658, !2659, !2660, !2685, !2686, !2687}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2648, file: !2647, line: 28, baseType: !526, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2648, file: !2647, line: 38, baseType: !720, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2648, file: !2647, line: 40, baseType: !425, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2648, file: !2647, line: 43, baseType: !1374, size: 320, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2648, file: !2647, line: 44, baseType: !2655, size: 64, offset: 512)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2647, line: 44, flags: DIFlagFwdDecl)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2648, file: !2647, line: 48, baseType: !425, size: 64, offset: 576)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2648, file: !2647, line: 59, baseType: !714, size: 256, offset: 640)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2648, file: !2647, line: 60, baseType: !233, size: 64, offset: 896)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2648, file: !2647, line: 61, baseType: !2661, size: 64, offset: 960)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2663)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2664, line: 13, size: 1216, elements: !2665)
!2664 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2665 = !{!2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2663, file: !2664, line: 14, baseType: !233, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2663, file: !2664, line: 15, baseType: !425, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2663, file: !2664, line: 17, baseType: !425, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2663, file: !2664, line: 17, baseType: !425, size: 64, offset: 192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2663, file: !2664, line: 18, baseType: !425, size: 64, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2663, file: !2664, line: 18, baseType: !425, size: 64, offset: 320)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2663, file: !2664, line: 19, baseType: !279, size: 64, offset: 384)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2663, file: !2664, line: 21, baseType: !411, size: 64, offset: 448)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2663, file: !2664, line: 23, baseType: !411, size: 64, offset: 512)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2663, file: !2664, line: 24, baseType: !411, size: 64, offset: 576)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2663, file: !2664, line: 25, baseType: !411, size: 64, offset: 640)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2663, file: !2664, line: 26, baseType: !411, size: 64, offset: 704)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2663, file: !2664, line: 27, baseType: !411, size: 64, offset: 768)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2663, file: !2664, line: 28, baseType: !411, size: 64, offset: 832)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2663, file: !2664, line: 29, baseType: !411, size: 64, offset: 896)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2663, file: !2664, line: 30, baseType: !411, size: 64, offset: 960)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2663, file: !2664, line: 31, baseType: !411, size: 64, offset: 1024)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2663, file: !2664, line: 32, baseType: !411, size: 64, offset: 1088)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2663, file: !2664, line: 33, baseType: !411, size: 64, offset: 1152)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2648, file: !2647, line: 63, baseType: !327, size: 32, offset: 1024)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2648, file: !2647, line: 69, baseType: !343, size: 16, offset: 1056)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2648, file: !2647, line: 70, baseType: !848, size: 16, offset: 1072)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1781, file: !38, line: 882, baseType: !425, size: 64, offset: 9024)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1781, file: !38, line: 885, baseType: !307, size: 32, offset: 9088)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1781, file: !38, line: 886, baseType: !2691, size: 64, offset: 9152)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1781, file: !38, line: 901, baseType: !2041, size: 64, offset: 9216)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1781, file: !38, line: 904, baseType: !1804, size: 64, offset: 9280)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1781, file: !38, line: 906, baseType: !2696, size: 64, offset: 9344)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1781, file: !38, line: 930, baseType: !327, size: 32, offset: 9408)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1781, file: !38, line: 933, baseType: !327, size: 32, offset: 9440)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1781, file: !38, line: 935, baseType: !2701, size: 64, offset: 9472)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2702)
!2702 = !{!2703}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2701, file: !68, line: 104, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1781, file: !38, line: 940, baseType: !718, size: 64, offset: 9536)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1781, file: !38, line: 942, baseType: !972, size: 256, offset: 9600)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1778, file: !38, line: 986, baseType: !2709, offset: 10240)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, elements: !1864)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1481, file: !1156, line: 882, baseType: !1777, size: 64, offset: 9792)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1481, file: !1156, line: 884, baseType: !109, size: 32, offset: 9856)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1481, file: !1156, line: 885, baseType: !109, size: 32, offset: 9888)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1481, file: !1156, line: 886, baseType: !109, size: 32, offset: 9920)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1481, file: !1156, line: 888, baseType: !109, size: 32, offset: 9952)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1481, file: !1156, line: 890, baseType: !425, size: 64, offset: 9984)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1481, file: !1156, line: 893, baseType: !7, size: 32, offset: 10048)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1481, file: !1156, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1481, file: !1156, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1481, file: !1156, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1481, file: !1156, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1481, file: !1156, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1481, file: !1156, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1481, file: !1156, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1481, file: !1156, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1481, file: !1156, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1481, file: !1156, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1481, file: !1156, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1481, file: !1156, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1481, file: !1156, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1481, file: !1156, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1481, file: !1156, line: 969, baseType: !425, size: 64, offset: 10176)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1481, file: !1156, line: 971, baseType: !2733, size: 448, offset: 10240)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2734)
!2734 = !{!2735, !2736, !2741}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2733, file: !62, line: 26, baseType: !425, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2733, file: !62, line: 27, baseType: !2737, size: 64, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!411, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, scope: !2733, file: !62, line: 28, baseType: !2742, size: 320, offset: 128)
!2742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2733, file: !62, line: 28, size: 320, elements: !2743)
!2743 = !{!2744, !2754, !2779}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2742, file: !62, line: 37, baseType: !2745, size: 320)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2742, file: !62, line: 30, size: 320, elements: !2746)
!2746 = !{!2747, !2749, !2750, !2751, !2752, !2753}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2745, file: !62, line: 31, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2745, file: !62, line: 32, baseType: !239, size: 32, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2745, file: !62, line: 33, baseType: !239, size: 32, offset: 96)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2745, file: !62, line: 34, baseType: !239, size: 32, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2745, file: !62, line: 35, baseType: !526, size: 64, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2745, file: !62, line: 36, baseType: !2748, size: 64, offset: 256)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2742, file: !62, line: 47, baseType: !2755, size: 192)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2742, file: !62, line: 39, size: 192, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2778}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2755, file: !62, line: 40, baseType: !1648, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2755, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, scope: !2755, file: !62, line: 42, baseType: !2760, size: 64, offset: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2755, file: !62, line: 42, size: 64, elements: !2761)
!2761 = !{!2762, !2770}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2760, file: !62, line: 43, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2765, line: 7, size: 128, elements: !2766)
!2765 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2766 = !{!2767, !2769}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2764, file: !2765, line: 8, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !409, line: 93, baseType: !616)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2764, file: !2765, line: 9, baseType: !616, size: 64, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2760, file: !62, line: 44, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2773, line: 7, size: 64, elements: !2774)
!2773 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2774 = !{!2775, !2777}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2772, file: !2773, line: 8, baseType: !2776, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2773, line: 5, baseType: !710)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2772, file: !2773, line: 9, baseType: !710, size: 32, offset: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2755, file: !62, line: 46, baseType: !526, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2742, file: !62, line: 55, baseType: !2780, size: 256)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2742, file: !62, line: 49, size: 256, elements: !2781)
!2781 = !{!2782, !2785, !2786, !2787, !2788}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2780, file: !62, line: 50, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2780, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2780, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2780, file: !62, line: 53, baseType: !425, size: 64, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2780, file: !62, line: 54, baseType: !425, size: 64, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1481, file: !1156, line: 973, baseType: !2790, size: 32, offset: 10688)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !271, line: 27, baseType: !2791)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !409, line: 28, baseType: !109)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1481, file: !1156, line: 974, baseType: !2790, size: 32, offset: 10720)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1481, file: !1156, line: 978, baseType: !425, size: 64, offset: 10752)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1481, file: !1156, line: 987, baseType: !1480, size: 64, offset: 10816)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1481, file: !1156, line: 990, baseType: !1480, size: 64, offset: 10880)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1481, file: !1156, line: 995, baseType: !294, size: 128, offset: 10944)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1481, file: !1156, line: 996, baseType: !294, size: 128, offset: 11072)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1481, file: !1156, line: 997, baseType: !1480, size: 64, offset: 11200)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1481, file: !1156, line: 1005, baseType: !294, size: 128, offset: 11264)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1481, file: !1156, line: 1006, baseType: !294, size: 128, offset: 11392)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1481, file: !1156, line: 1009, baseType: !1845, size: 64, offset: 11520)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1481, file: !1156, line: 1010, baseType: !2803, size: 512, offset: 11584)
!2803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !958, size: 512, elements: !942)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1481, file: !1156, line: 1011, baseType: !294, size: 128, offset: 12096)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1481, file: !1156, line: 1012, baseType: !294, size: 128, offset: 12224)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1481, file: !1156, line: 1014, baseType: !662, size: 64, offset: 12352)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1481, file: !1156, line: 1017, baseType: !841, size: 64, offset: 12416)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1481, file: !1156, line: 1020, baseType: !841, size: 64, offset: 12480)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1481, file: !1156, line: 1023, baseType: !233, size: 64, offset: 12544)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1481, file: !1156, line: 1025, baseType: !526, size: 64, offset: 12608)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1481, file: !1156, line: 1026, baseType: !526, size: 64, offset: 12672)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1481, file: !1156, line: 1031, baseType: !526, size: 64, offset: 12736)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1481, file: !1156, line: 1032, baseType: !2814, size: 192, offset: 12800)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1156, line: 324, size: 192, elements: !2815)
!2815 = !{!2816, !2817, !2818}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2814, file: !1156, line: 326, baseType: !526, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2814, file: !1156, line: 327, baseType: !526, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2814, file: !1156, line: 328, baseType: !672, size: 32, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1481, file: !1156, line: 1041, baseType: !425, size: 64, offset: 12992)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1481, file: !1156, line: 1042, baseType: !425, size: 64, offset: 13056)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1481, file: !1156, line: 1045, baseType: !526, size: 64, offset: 13120)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1481, file: !1156, line: 1048, baseType: !526, size: 64, offset: 13184)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1481, file: !1156, line: 1051, baseType: !425, size: 64, offset: 13248)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1481, file: !1156, line: 1052, baseType: !425, size: 64, offset: 13312)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1481, file: !1156, line: 1055, baseType: !2826, size: 640, offset: 13376)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2827, line: 132, size: 640, elements: !2828)
!2827 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2828 = !{!2829, !2835, !2836}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2826, file: !2827, line: 133, baseType: !2830, size: 576)
!2830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2831, size: 576, elements: !376)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2827, line: 117, size: 192, elements: !2832)
!2832 = !{!2833, !2834}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2831, file: !2827, line: 118, baseType: !526, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2831, file: !2827, line: 119, baseType: !1657, size: 128, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2826, file: !2827, line: 134, baseType: !7, size: 32, offset: 576)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2826, file: !2827, line: 135, baseType: !7, size: 32, offset: 608)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1481, file: !1156, line: 1058, baseType: !2838, size: 448, offset: 14016)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2827, line: 144, size: 448, elements: !2839)
!2839 = !{!2840, !2841, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2838, file: !2827, line: 145, baseType: !932, size: 128, align: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2838, file: !2827, line: 146, baseType: !714, size: 256, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2838, file: !2827, line: 147, baseType: !7, size: 32, offset: 384)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1481, file: !1156, line: 1064, baseType: !1871, size: 64, offset: 14464)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1481, file: !1156, line: 1067, baseType: !1871, size: 64, offset: 14528)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1481, file: !1156, line: 1070, baseType: !1871, size: 64, offset: 14592)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1481, file: !1156, line: 1074, baseType: !1898, size: 64, offset: 14656)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1481, file: !1156, line: 1084, baseType: !2848, size: 128, offset: 14720)
!2848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 128, elements: !2849)
!2849 = !{!2850}
!2850 = !DISubrange(count: 16)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1481, file: !1156, line: 1086, baseType: !2852, size: 64, offset: 14848)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1156, line: 55, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1481, file: !1156, line: 1089, baseType: !2855, size: 64, offset: 14912)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2856, line: 12, size: 64, elements: !2857)
!2856 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2857 = !{!2858}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2855, file: !2856, line: 13, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2856, line: 8, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1481, file: !1156, line: 1090, baseType: !2862, size: 128, offset: 14976)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2863, line: 13, size: 128, elements: !2864)
!2863 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2864 = !{!2865}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2862, file: !2863, line: 14, baseType: !294, size: 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1481, file: !1156, line: 1097, baseType: !2867, size: 64, offset: 15104)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1156, line: 50, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1481, file: !1156, line: 1100, baseType: !2870, size: 64, offset: 15168)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1156, line: 1100, flags: DIFlagFwdDecl)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1481, file: !1156, line: 1103, baseType: !2873, size: 64, offset: 15232)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1156, line: 53, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1481, file: !1156, line: 1107, baseType: !2876, size: 64, offset: 15296)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1156, line: 56, flags: DIFlagFwdDecl)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1481, file: !1156, line: 1110, baseType: !2879, size: 64, offset: 15360)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2881, line: 93, size: 8768, elements: !2882)
!2881 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2882 = !{!2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2930, !2939, !2940, !2942, !2943, !2944, !2947, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2985, !2986, !2993, !3003, !3006, !3007, !3010, !3011, !3012, !3013, !3014, !3015}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2880, file: !2881, line: 94, baseType: !1494, size: 32)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2880, file: !2881, line: 95, baseType: !327, size: 32, offset: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2880, file: !2881, line: 96, baseType: !109, size: 32, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2880, file: !2881, line: 97, baseType: !109, size: 32, offset: 96)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2880, file: !2881, line: 98, baseType: !294, size: 128, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2880, file: !2881, line: 100, baseType: !1467, size: 192, offset: 256)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2880, file: !2881, line: 103, baseType: !1480, size: 64, offset: 448)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2880, file: !2881, line: 106, baseType: !2891, size: 192, offset: 512)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2046, line: 32, size: 192, elements: !2892)
!2892 = !{!2893, !2894}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2891, file: !2046, line: 33, baseType: !294, size: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2891, file: !2046, line: 34, baseType: !2895, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2896, line: 25, baseType: !2897)
!2896 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2896, line: 23, size: 64, elements: !2898)
!2898 = !{!2899}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2897, file: !2896, line: 24, baseType: !1728, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2880, file: !2881, line: 109, baseType: !1082, size: 64, offset: 704)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2880, file: !2881, line: 112, baseType: !109, size: 32, offset: 768)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2880, file: !2881, line: 114, baseType: !109, size: 32, offset: 800)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2880, file: !2881, line: 115, baseType: !1480, size: 64, offset: 832)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2880, file: !2881, line: 118, baseType: !109, size: 32, offset: 896)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2880, file: !2881, line: 119, baseType: !7, size: 32, offset: 928)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2880, file: !2881, line: 121, baseType: !2907, size: 64, offset: 960)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2881, line: 80, size: 448, elements: !2909)
!2909 = !{!2910, !2911, !2917}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2908, file: !2881, line: 81, baseType: !327, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2908, file: !2881, line: 82, baseType: !2912, size: 128, offset: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2881, line: 75, size: 128, elements: !2913)
!2913 = !{!2914, !2915}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2912, file: !2881, line: 76, baseType: !1480, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2912, file: !2881, line: 77, baseType: !2916, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2908, file: !2881, line: 83, baseType: !663, size: 256, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2880, file: !2881, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2880, file: !2881, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2880, file: !2881, line: 138, baseType: !7, size: 32, offset: 1056)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2880, file: !2881, line: 139, baseType: !294, size: 128, offset: 1088)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2880, file: !2881, line: 142, baseType: !1601, size: 512, offset: 1216)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2880, file: !2881, line: 143, baseType: !1609, size: 64, offset: 1728)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2880, file: !2881, line: 150, baseType: !2925, size: 256, offset: 1792)
!2925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2926, size: 256, elements: !831)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2881, line: 38, size: 128, elements: !2927)
!2927 = !{!2928, !2929}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2926, file: !2881, line: 39, baseType: !526, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2926, file: !2881, line: 40, baseType: !526, size: 64, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2880, file: !2881, line: 156, baseType: !2931, size: 192, offset: 2048)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2881, line: 66, size: 192, elements: !2932)
!2932 = !{!2933}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2931, file: !2881, line: 67, baseType: !2934, size: 192)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2881, line: 47, size: 192, elements: !2935)
!2935 = !{!2936, !2937, !2938}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2934, file: !2881, line: 48, baseType: !720, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2934, file: !2881, line: 49, baseType: !720, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2934, file: !2881, line: 50, baseType: !720, size: 64, offset: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2880, file: !2881, line: 160, baseType: !2826, size: 640, offset: 2240)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2880, file: !2881, line: 163, baseType: !2941, size: 256, offset: 2880)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1845, size: 256, elements: !942)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2880, file: !2881, line: 169, baseType: !1845, size: 64, offset: 3136)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2880, file: !2881, line: 172, baseType: !109, size: 32, offset: 3200)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2880, file: !2881, line: 174, baseType: !2945, size: 64, offset: 3264)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2881, line: 174, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2880, file: !2881, line: 185, baseType: !2948, size: 64, offset: 3328)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !497, line: 860, baseType: !2949)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !497, line: 853, size: 64, elements: !2950)
!2950 = !{!2951, !2952}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2949, file: !497, line: 858, baseType: !496, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2949, file: !497, line: 859, baseType: !307, size: 32, offset: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2880, file: !2881, line: 186, baseType: !526, size: 64, offset: 3392)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2880, file: !2881, line: 186, baseType: !526, size: 64, offset: 3456)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2880, file: !2881, line: 186, baseType: !526, size: 64, offset: 3520)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2880, file: !2881, line: 186, baseType: !526, size: 64, offset: 3584)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2880, file: !2881, line: 187, baseType: !526, size: 64, offset: 3648)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2880, file: !2881, line: 188, baseType: !526, size: 64, offset: 3712)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2880, file: !2881, line: 189, baseType: !2814, size: 192, offset: 3776)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2880, file: !2881, line: 190, baseType: !425, size: 64, offset: 3968)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2880, file: !2881, line: 190, baseType: !425, size: 64, offset: 4032)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2880, file: !2881, line: 190, baseType: !425, size: 64, offset: 4096)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2880, file: !2881, line: 190, baseType: !425, size: 64, offset: 4160)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2880, file: !2881, line: 191, baseType: !425, size: 64, offset: 4224)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2880, file: !2881, line: 191, baseType: !425, size: 64, offset: 4288)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2880, file: !2881, line: 191, baseType: !425, size: 64, offset: 4352)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2880, file: !2881, line: 191, baseType: !425, size: 64, offset: 4416)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2880, file: !2881, line: 192, baseType: !425, size: 64, offset: 4480)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2880, file: !2881, line: 192, baseType: !425, size: 64, offset: 4544)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2880, file: !2881, line: 192, baseType: !425, size: 64, offset: 4608)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2880, file: !2881, line: 192, baseType: !425, size: 64, offset: 4672)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2880, file: !2881, line: 193, baseType: !425, size: 64, offset: 4736)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2880, file: !2881, line: 193, baseType: !425, size: 64, offset: 4800)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2880, file: !2881, line: 194, baseType: !2975, size: 448, offset: 4864)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2976, line: 12, size: 448, elements: !2977)
!2976 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2983, !2984}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2975, file: !2976, line: 15, baseType: !526, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2975, file: !2976, line: 17, baseType: !526, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2975, file: !2976, line: 19, baseType: !526, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2975, file: !2976, line: 21, baseType: !526, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2975, file: !2976, line: 29, baseType: !526, size: 64, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2975, file: !2976, line: 35, baseType: !526, size: 64, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2975, file: !2976, line: 44, baseType: !526, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2880, file: !2881, line: 202, baseType: !528, size: 64, offset: 5312)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2880, file: !2881, line: 213, baseType: !2987, size: 2048, offset: 5376)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2988, size: 2048, elements: !2849)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2989, line: 43, size: 128, elements: !2990)
!2989 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2990 = !{!2991, !2992}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2988, file: !2989, line: 44, baseType: !424, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2988, file: !2989, line: 45, baseType: !424, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2880, file: !2881, line: 216, baseType: !2994, size: 448, offset: 7424)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2881, line: 30, size: 448, elements: !2995)
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001, !3002}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2994, file: !2881, line: 31, baseType: !109, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2994, file: !2881, line: 32, baseType: !411, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2994, file: !2881, line: 33, baseType: !425, size: 64, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2994, file: !2881, line: 34, baseType: !526, size: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2994, file: !2881, line: 34, baseType: !526, size: 64, offset: 256)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2994, file: !2881, line: 35, baseType: !425, size: 64, offset: 320)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2994, file: !2881, line: 35, baseType: !425, size: 64, offset: 384)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2880, file: !2881, line: 219, baseType: !3004, size: 64, offset: 7872)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2881, line: 219, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2880, file: !2881, line: 222, baseType: !7, size: 32, offset: 7936)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2880, file: !2881, line: 223, baseType: !3008, size: 64, offset: 8000)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2881, line: 223, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2880, file: !2881, line: 230, baseType: !270, size: 8, offset: 8064)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2880, file: !2881, line: 231, baseType: !850, size: 16, offset: 8080)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2880, file: !2881, line: 232, baseType: !850, size: 16, offset: 8096)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2880, file: !2881, line: 234, baseType: !1777, size: 64, offset: 8128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2880, file: !2881, line: 237, baseType: !714, size: 256, offset: 8192)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2880, file: !2881, line: 243, baseType: !1374, size: 320, offset: 8448)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1481, file: !1156, line: 1111, baseType: !3017, size: 64, offset: 15424)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2881, line: 20, size: 16640, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3018, file: !2881, line: 21, baseType: !307, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3018, file: !2881, line: 22, baseType: !1494, size: 32, offset: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3018, file: !2881, line: 23, baseType: !1467, size: 192, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3018, file: !2881, line: 24, baseType: !3024, size: 16384, offset: 256)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3025, size: 16384, elements: !380)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2046, line: 51, size: 256, elements: !3026)
!3026 = !{!3027}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3025, file: !2046, line: 52, baseType: !3028, size: 256)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2046, line: 37, size: 256, elements: !3029)
!3029 = !{!3030, !3037, !3038, !3042}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3028, file: !2046, line: 39, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3032, line: 83, baseType: !3033)
!3032 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3032, line: 82, baseType: !3035)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !109}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3028, file: !2046, line: 40, baseType: !425, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3028, file: !2046, line: 46, baseType: !3039, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3032, line: 86, baseType: !3040)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3032, line: 85, baseType: !1077)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3028, file: !2046, line: 48, baseType: !2895, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1481, file: !1156, line: 1112, baseType: !2895, size: 64, offset: 15488)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1481, file: !1156, line: 1113, baseType: !2895, size: 64, offset: 15552)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1481, file: !1156, line: 1115, baseType: !2895, size: 64, offset: 15616)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1481, file: !1156, line: 1116, baseType: !2891, size: 192, offset: 15680)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1481, file: !1156, line: 1117, baseType: !425, size: 64, offset: 15872)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1481, file: !1156, line: 1118, baseType: !422, size: 64, offset: 15936)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1481, file: !1156, line: 1119, baseType: !7, size: 32, offset: 16000)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1481, file: !1156, line: 1121, baseType: !931, size: 64, offset: 16064)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1481, file: !1156, line: 1125, baseType: !3052, size: 64, offset: 16128)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1156, line: 43, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1481, file: !1156, line: 1127, baseType: !461, size: 32, offset: 16192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1481, file: !1156, line: 1128, baseType: !7, size: 32, offset: 16224)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1481, file: !1156, line: 1130, baseType: !3057, size: 128, offset: 16256)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3058, line: 37, size: 128, elements: !3059)
!3058 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3059 = !{!3060, !3061, !3062}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3057, file: !3058, line: 38, baseType: !109, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3057, file: !3058, line: 39, baseType: !327, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3057, file: !3058, line: 40, baseType: !3063, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3058, line: 24, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1481, file: !1156, line: 1131, baseType: !3066, size: 256, offset: 16384)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3067, line: 12, size: 256, elements: !3068)
!3067 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3068 = !{!3069, !3070, !3071, !3072}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3066, file: !3067, line: 13, baseType: !375, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3066, file: !3067, line: 14, baseType: !425, size: 64, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3066, file: !3067, line: 15, baseType: !425, size: 64, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3066, file: !3067, line: 16, baseType: !270, size: 8, offset: 192)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1481, file: !1156, line: 1134, baseType: !526, size: 64, offset: 16640)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1481, file: !1156, line: 1135, baseType: !526, size: 64, offset: 16704)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1481, file: !1156, line: 1138, baseType: !307, size: 32, offset: 16768)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1481, file: !1156, line: 1141, baseType: !672, size: 32, offset: 16800)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1481, file: !1156, line: 1143, baseType: !3078, size: 64, offset: 16832)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1156, line: 735, size: 64, elements: !3079)
!3079 = !{!3080}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3078, file: !1156, line: 736, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1481, file: !1156, line: 1147, baseType: !1660, size: 128, offset: 16896)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1481, file: !1156, line: 1149, baseType: !1480, size: 64, offset: 17024)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1481, file: !1156, line: 1151, baseType: !3085, size: 64, offset: 17088)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1156, line: 1151, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1481, file: !1156, line: 1188, baseType: !233, size: 64, offset: 17152)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1481, file: !1156, line: 1191, baseType: !3089, size: 64, offset: 17216)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1156, line: 44, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1481, file: !1156, line: 1194, baseType: !3092, size: 64, offset: 17280)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1156, line: 45, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1481, file: !1156, line: 1197, baseType: !3095, size: 64, offset: 17344)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1156, line: 61, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1481, file: !1156, line: 1199, baseType: !3098, size: 64, offset: 17408)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3100, line: 99, size: 128, elements: !3101)
!3100 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3101 = !{!3102, !3103, !3104}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3099, file: !3100, line: 100, baseType: !718, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3099, file: !3100, line: 101, baseType: !327, size: 32, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3099, file: !3100, line: 103, baseType: !345, size: 16, offset: 96)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1481, file: !1156, line: 1202, baseType: !3106, size: 64, offset: 17472)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1156, line: 48, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1481, file: !1156, line: 1205, baseType: !425, size: 64, offset: 17536)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1481, file: !1156, line: 1206, baseType: !3110, size: 64, offset: 17600)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2046, line: 14, baseType: !3112)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2046, line: 12, size: 384, elements: !3113)
!3113 = !{!3114}
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3112, file: !2046, line: 13, baseType: !3115, size: 384)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !2046, line: 13, size: 384, elements: !3116)
!3116 = !{!3117, !3118, !3119, !3120}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3115, file: !2046, line: 13, baseType: !109, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3115, file: !2046, line: 13, baseType: !109, size: 32, offset: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3115, file: !2046, line: 13, baseType: !109, size: 32, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3115, file: !2046, line: 13, baseType: !3121, size: 256, offset: 128)
!3121 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3122, line: 37, size: 256, elements: !3123)
!3122 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3123 = !{!3124, !3129, !3142, !3148, !3157, !3184, !3189}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3121, file: !3122, line: 42, baseType: !3125, size: 64)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 39, size: 64, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3125, file: !3122, line: 40, baseType: !2791, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3125, file: !3122, line: 41, baseType: !467, size: 32, offset: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3121, file: !3122, line: 50, baseType: !3130, size: 192)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 45, size: 192, elements: !3131)
!3131 = !{!3132, !3134, !3135, !3141}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3130, file: !3122, line: 46, baseType: !3133, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !409, line: 95, baseType: !109)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3130, file: !3122, line: 47, baseType: !109, size: 32, offset: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3130, file: !3122, line: 48, baseType: !3136, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3122, line: 11, baseType: !3137)
!3137 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3122, line: 8, size: 64, elements: !3138)
!3138 = !{!3139, !3140}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3137, file: !3122, line: 9, baseType: !109, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3137, file: !3122, line: 10, baseType: !233, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3130, file: !3122, line: 49, baseType: !109, size: 32, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3121, file: !3122, line: 57, baseType: !3143, size: 128)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 53, size: 128, elements: !3144)
!3144 = !{!3145, !3146, !3147}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3143, file: !3122, line: 54, baseType: !2791, size: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3143, file: !3122, line: 55, baseType: !467, size: 32, offset: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3143, file: !3122, line: 56, baseType: !3136, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3121, file: !3122, line: 66, baseType: !3149, size: 256)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 60, size: 256, elements: !3150)
!3150 = !{!3151, !3152, !3153, !3154, !3156}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3149, file: !3122, line: 61, baseType: !2791, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3149, file: !3122, line: 62, baseType: !467, size: 32, offset: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3149, file: !3122, line: 63, baseType: !109, size: 32, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3149, file: !3122, line: 64, baseType: !3155, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !409, line: 94, baseType: !410)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3149, file: !3122, line: 65, baseType: !3155, size: 64, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3121, file: !3122, line: 105, baseType: !3158, size: 256)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 69, size: 256, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3158, file: !3122, line: 70, baseType: !233, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, scope: !3158, file: !3122, line: 79, baseType: !3162, size: 192, offset: 64)
!3162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3158, file: !3122, line: 79, size: 192, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3173, !3178}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3162, file: !3122, line: 81, baseType: !109, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3162, file: !3122, line: 86, baseType: !850, size: 16)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3162, file: !3122, line: 92, baseType: !3167, size: 192)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !3122, line: 88, size: 192, elements: !3168)
!3168 = !{!3169, !3171, !3172}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3167, file: !3122, line: 89, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 64, elements: !1644)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3167, file: !3122, line: 90, baseType: !233, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3167, file: !3122, line: 91, baseType: !233, size: 64, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3162, file: !3122, line: 97, baseType: !3174, size: 96)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !3122, line: 94, size: 96, elements: !3175)
!3175 = !{!3176, !3177}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3174, file: !3122, line: 95, baseType: !3170, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3174, file: !3122, line: 96, baseType: !241, size: 32, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3162, file: !3122, line: 103, baseType: !3179, size: 128)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !3122, line: 99, size: 128, elements: !3180)
!3180 = !{!3181, !3182, !3183}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3179, file: !3122, line: 100, baseType: !425, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3179, file: !3122, line: 101, baseType: !241, size: 32, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3179, file: !3122, line: 102, baseType: !241, size: 32, offset: 96)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3121, file: !3122, line: 111, baseType: !3185, size: 128)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 108, size: 128, elements: !3186)
!3186 = !{!3187, !3188}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3185, file: !3122, line: 109, baseType: !411, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3185, file: !3122, line: 110, baseType: !109, size: 32, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3121, file: !3122, line: 118, baseType: !3190, size: 128)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3121, file: !3122, line: 114, size: 128, elements: !3191)
!3191 = !{!3192, !3193, !3194}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3190, file: !3122, line: 115, baseType: !233, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3190, file: !3122, line: 116, baseType: !109, size: 32, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3190, file: !3122, line: 117, baseType: !7, size: 32, offset: 96)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1481, file: !1156, line: 1208, baseType: !2975, size: 448, offset: 17664)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1481, file: !1156, line: 1215, baseType: !526, size: 64, offset: 18112)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1481, file: !1156, line: 1217, baseType: !526, size: 64, offset: 18176)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1481, file: !1156, line: 1219, baseType: !526, size: 64, offset: 18240)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1481, file: !1156, line: 1223, baseType: !3200, size: 64, offset: 18304)
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3201, line: 99, baseType: !3202)
!3201 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3201, line: 99, size: 64, elements: !3203)
!3203 = !{!3204}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3202, file: !3201, line: 99, baseType: !1728, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1481, file: !1156, line: 1225, baseType: !496, size: 32, offset: 18368)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1481, file: !1156, line: 1226, baseType: !109, size: 32, offset: 18400)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1481, file: !1156, line: 1227, baseType: !109, size: 32, offset: 18432)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1481, file: !1156, line: 1231, baseType: !3209, size: 64, offset: 18496)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1156, line: 1231, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1481, file: !1156, line: 1233, baseType: !294, size: 128, offset: 18560)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1481, file: !1156, line: 1240, baseType: !3213, size: 64, offset: 18688)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1156, line: 62, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1481, file: !1156, line: 1242, baseType: !3216, size: 64, offset: 18752)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1156, line: 1242, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1481, file: !1156, line: 1244, baseType: !294, size: 128, offset: 18816)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1481, file: !1156, line: 1245, baseType: !3220, size: 64, offset: 18944)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1156, line: 51, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1481, file: !1156, line: 1246, baseType: !714, size: 256, offset: 19008)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1481, file: !1156, line: 1247, baseType: !7, size: 32, offset: 19264)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1481, file: !1156, line: 1250, baseType: !3225, size: 64, offset: 19328)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1156, line: 57, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1481, file: !1156, line: 1251, baseType: !714, size: 256, offset: 19392)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1481, file: !1156, line: 1252, baseType: !294, size: 128, offset: 19648)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1481, file: !1156, line: 1259, baseType: !2482, size: 64, offset: 19776)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1481, file: !1156, line: 1260, baseType: !850, size: 16, offset: 19840)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1481, file: !1156, line: 1261, baseType: !850, size: 16, offset: 19856)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1481, file: !1156, line: 1314, baseType: !3233, size: 64, offset: 19904)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3235, line: 62, size: 256, align: 256, elements: !3236)
!3235 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3234, file: !3235, line: 75, baseType: !241, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3234, file: !3235, line: 90, baseType: !241, size: 32, offset: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3234, file: !3235, line: 112, baseType: !527, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3234, file: !3235, line: 132, baseType: !241, size: 32, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3234, file: !3235, line: 140, baseType: !241, size: 32, offset: 160)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3234, file: !3235, line: 149, baseType: !241, size: 32, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3234, file: !3235, line: 154, baseType: !3244, offset: 224)
!3244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, elements: !1864)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1481, file: !1156, line: 1315, baseType: !239, size: 32, offset: 19968)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1481, file: !1156, line: 1316, baseType: !239, size: 32, offset: 20000)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1481, file: !1156, line: 1321, baseType: !425, size: 64, offset: 20032)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1481, file: !1156, line: 1325, baseType: !109, size: 32, offset: 20096)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1481, file: !1156, line: 1326, baseType: !109, size: 32, offset: 20128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1481, file: !1156, line: 1327, baseType: !109, size: 32, offset: 20160)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1481, file: !1156, line: 1328, baseType: !109, size: 32, offset: 20192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1481, file: !1156, line: 1329, baseType: !932, size: 128, align: 64, offset: 20224)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1481, file: !1156, line: 1332, baseType: !3254, size: 128, offset: 20352)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3255, line: 51, size: 128, elements: !3256)
!3255 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3256 = !{!3257, !3262, !3263}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3254, file: !3255, line: 60, baseType: !3258, size: 64)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3259, line: 7, size: 64, elements: !3260)
!3259 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3260 = !{!3261}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3258, file: !3259, line: 12, baseType: !1725, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3254, file: !3255, line: 63, baseType: !270, size: 8, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3254, file: !3255, line: 70, baseType: !270, size: 8, offset: 72)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1481, file: !1156, line: 1335, baseType: !2534, size: 64, offset: 20480)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1481, file: !1156, line: 1337, baseType: !3266, size: 128, offset: 20544)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3255, line: 39, size: 128, elements: !3267)
!3267 = !{!3268, !3269, !3270}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3266, file: !3255, line: 40, baseType: !2321, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3266, file: !3255, line: 42, baseType: !241, size: 32, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3266, file: !3255, line: 43, baseType: !241, size: 32, offset: 96)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1481, file: !1156, line: 1340, baseType: !3272, size: 64, offset: 20672)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1156, line: 69, flags: DIFlagFwdDecl)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1481, file: !1156, line: 1351, baseType: !109, size: 32, offset: 20736)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1481, file: !1156, line: 1352, baseType: !109, size: 32, offset: 20768)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1481, file: !1156, line: 1354, baseType: !425, size: 64, offset: 20800)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1481, file: !1156, line: 1364, baseType: !526, size: 64, offset: 20864)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1481, file: !1156, line: 1365, baseType: !526, size: 64, offset: 20928)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1481, file: !1156, line: 1412, baseType: !425, size: 64, offset: 20992)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1481, file: !1156, line: 1453, baseType: !3281, size: 64, offset: 21056)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1156, line: 1453, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1481, file: !1156, line: 1457, baseType: !3284, size: 64, offset: 21120)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3286)
!3286 = !{!3287, !3288, !3307, !3310, !3311, !3344, !3354}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3285, file: !68, line: 62, baseType: !67, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, scope: !3285, file: !68, line: 64, baseType: !3289, size: 192, offset: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3285, file: !68, line: 64, size: 192, elements: !3290)
!3290 = !{!3291, !3302}
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !3289, file: !68, line: 65, baseType: !3292, size: 192)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3289, file: !68, line: 65, size: 192, elements: !3293)
!3293 = !{!3294, !3301}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3292, file: !68, line: 66, baseType: !3295, size: 128)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3296, line: 50, size: 128, elements: !3297)
!3296 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3297 = !{!3298, !3299, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3295, file: !3296, line: 52, baseType: !425, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3295, file: !3296, line: 54, baseType: !7, size: 32, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3295, file: !3296, line: 55, baseType: !7, size: 32, offset: 96)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3292, file: !68, line: 67, baseType: !425, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, scope: !3289, file: !68, line: 70, baseType: !3303, size: 192)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3289, file: !68, line: 70, size: 192, elements: !3304)
!3304 = !{!3305, !3306}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3303, file: !68, line: 71, baseType: !932, size: 128, align: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3303, file: !68, line: 72, baseType: !425, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3285, file: !68, line: 76, baseType: !3308, size: 64, offset: 256)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3285, file: !68, line: 77, baseType: !425, size: 64, offset: 320)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3285, file: !68, line: 79, baseType: !3312, size: 64, offset: 384)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3296, line: 25, size: 256, elements: !3314)
!3314 = !{!3315, !3321, !3325}
!3315 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !3296, line: 26, baseType: !3316, size: 128)
!3316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3313, file: !3296, line: 26, size: 128, elements: !3317)
!3317 = !{!3318, !3320}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3316, file: !3296, line: 27, baseType: !3319, size: 128)
!3319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 128, elements: !2849)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3316, file: !3296, line: 28, baseType: !3319, size: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3313, file: !3296, line: 31, baseType: !3322, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3324)
!3324 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3296, line: 23, flags: DIFlagFwdDecl)
!3325 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !3296, line: 33, baseType: !3326, size: 64, offset: 192)
!3326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3313, file: !3296, line: 33, size: 64, elements: !3327)
!3327 = !{!3328, !3334, !3339}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3326, file: !3296, line: 38, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3326, file: !3296, line: 34, size: 64, elements: !3330)
!3330 = !{!3331, !3332, !3333}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3329, file: !3296, line: 35, baseType: !710, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3329, file: !3296, line: 36, baseType: !335, size: 8, offset: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3329, file: !3296, line: 37, baseType: !335, size: 8, offset: 40)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3326, file: !3296, line: 42, baseType: !3335, size: 16)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3326, file: !3296, line: 39, size: 16, elements: !3336)
!3336 = !{!3337, !3338}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3335, file: !3296, line: 40, baseType: !335, size: 8)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3335, file: !3296, line: 41, baseType: !335, size: 8, offset: 8)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3326, file: !3296, line: 46, baseType: !3340, size: 16)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3326, file: !3296, line: 43, size: 16, elements: !3341)
!3341 = !{!3342, !3343}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3340, file: !3296, line: 44, baseType: !335, size: 8)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3340, file: !3296, line: 45, baseType: !335, size: 8, offset: 8)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3285, file: !68, line: 81, baseType: !3345, size: 64, offset: 448)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3347)
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3353}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3346, file: !68, line: 86, baseType: !3308, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3346, file: !68, line: 87, baseType: !425, size: 64, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3346, file: !68, line: 88, baseType: !425, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3346, file: !68, line: 89, baseType: !425, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3346, file: !68, line: 90, baseType: !270, size: 8, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3346, file: !68, line: 92, baseType: !3345, size: 64, offset: 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3285, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1481, file: !1156, line: 1463, baseType: !3356, offset: 21184)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1156, line: 739, elements: !1001)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1481, file: !1156, line: 1470, baseType: !932, size: 128, align: 64, offset: 21184)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1481, file: !1156, line: 1471, baseType: !1494, size: 32, offset: 21312)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1481, file: !1156, line: 1472, baseType: !109, size: 32, offset: 21344)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1481, file: !1156, line: 1474, baseType: !1480, size: 64, offset: 21376)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1481, file: !1156, line: 1475, baseType: !954, size: 320, offset: 21440)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1481, file: !1156, line: 1478, baseType: !3363, size: 64, offset: 21760)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3365, line: 49, size: 512, elements: !3366)
!3365 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3373, !3374, !3375, !3377}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3364, file: !3365, line: 50, baseType: !3363, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3364, file: !3365, line: 51, baseType: !233, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3364, file: !3365, line: 52, baseType: !425, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3364, file: !3365, line: 53, baseType: !425, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3364, file: !3365, line: 54, baseType: !3372, size: 64, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3364, file: !3365, line: 56, baseType: !7, size: 32, offset: 320)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3364, file: !3365, line: 58, baseType: !7, size: 32, offset: 352)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3364, file: !3365, line: 59, baseType: !3376, size: 64, offset: 384)
!3376 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !271, line: 159, baseType: !526)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3364, file: !3365, line: 60, baseType: !279, size: 64, offset: 448)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1481, file: !1156, line: 1482, baseType: !1494, size: 32, offset: 21824)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1481, file: !1156, line: 1489, baseType: !233, size: 64, offset: 21888)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1481, file: !1156, line: 1504, baseType: !233, size: 64, offset: 21952)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1481, file: !1156, line: 1505, baseType: !527, size: 64, offset: 22016)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1481, file: !1156, line: 1506, baseType: !526, size: 64, offset: 22080)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1481, file: !1156, line: 1507, baseType: !527, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1481, file: !1156, line: 1508, baseType: !527, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1481, file: !1156, line: 1509, baseType: !527, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1481, file: !1156, line: 1510, baseType: !932, size: 128, align: 64, offset: 22208)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1481, file: !1156, line: 1511, baseType: !109, size: 32, offset: 22336)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1481, file: !1156, line: 1515, baseType: !3389, size: 64, offset: 22400)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1508, line: 56, size: 64, elements: !3390)
!3390 = !{!3391}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3389, file: !1508, line: 57, baseType: !1511, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1481, file: !1156, line: 1518, baseType: !3389, size: 64, offset: 22464)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1481, file: !1156, line: 1528, baseType: !932, size: 128, align: 64, offset: 22528)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1481, file: !1156, line: 1552, baseType: !3395, size: 35328, offset: 23040)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3396, line: 430, size: 35328, elements: !3397)
!3396 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3397 = !{!3398, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3427, !3428, !3429, !3430, !3431, !3432, !3435, !3436, !3437, !3438}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3395, file: !3396, line: 432, baseType: !3399, size: 192)
!3399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3400, size: 192, elements: !376)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3401, line: 16, size: 64, elements: !3402)
!3401 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3402 = !{!3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3400, file: !3401, line: 17, baseType: !343, size: 16)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3400, file: !3401, line: 18, baseType: !343, size: 16, offset: 16)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3400, file: !3401, line: 19, baseType: !343, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3400, file: !3401, line: 19, baseType: !343, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3400, file: !3401, line: 19, baseType: !343, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3400, file: !3401, line: 19, baseType: !343, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3400, file: !3401, line: 19, baseType: !343, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3400, file: !3401, line: 20, baseType: !343, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3400, file: !3401, line: 20, baseType: !343, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3400, file: !3401, line: 20, baseType: !343, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3400, file: !3401, line: 20, baseType: !343, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3400, file: !3401, line: 20, baseType: !343, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3400, file: !3401, line: 20, baseType: !343, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3395, file: !3396, line: 436, baseType: !425, size: 64, offset: 192)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3395, file: !3396, line: 440, baseType: !345, size: 16, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3395, file: !3396, line: 441, baseType: !345, size: 16, offset: 272)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3395, file: !3396, line: 442, baseType: !345, size: 16, offset: 288)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3395, file: !3396, line: 443, baseType: !345, size: 16, offset: 304)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3395, file: !3396, line: 447, baseType: !425, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3395, file: !3396, line: 448, baseType: !425, size: 64, offset: 384)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3395, file: !3396, line: 459, baseType: !3424, size: 256, offset: 448)
!3424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3425, size: 256, elements: !942)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3396, line: 428, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3395, file: !3396, line: 461, baseType: !425, size: 64, offset: 704)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3395, file: !3396, line: 463, baseType: !425, size: 64, offset: 768)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3395, file: !3396, line: 465, baseType: !425, size: 64, offset: 832)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3395, file: !3396, line: 466, baseType: !425, size: 64, offset: 896)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3395, file: !3396, line: 467, baseType: !425, size: 64, offset: 960)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3395, file: !3396, line: 473, baseType: !3433, size: 64, offset: 1024)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3396, line: 10, flags: DIFlagFwdDecl)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3395, file: !3396, line: 480, baseType: !425, size: 64, offset: 1088)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3395, file: !3396, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3395, file: !3396, line: 491, baseType: !239, size: 32, offset: 1184)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3395, file: !3396, line: 501, baseType: !3439, size: 33792, offset: 1536)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3440, line: 448, size: 33792, elements: !3441)
!3440 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3441 = !{!3442, !3443, !3444, !3606, !3607, !3613, !3614}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3439, file: !3440, line: 461, baseType: !7, size: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3439, file: !3440, line: 468, baseType: !425, size: 64, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3439, file: !3440, line: 476, baseType: !3445, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3440, line: 356, size: 33280, align: 512, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3446, file: !3440, line: 358, baseType: !7, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3446, file: !3440, line: 361, baseType: !7, size: 32, offset: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3446, file: !3440, line: 364, baseType: !526, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3446, file: !3440, line: 367, baseType: !526, size: 64, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3446, file: !3440, line: 370, baseType: !526, size: 64, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3446, file: !3440, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3446, file: !3440, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3446, file: !3440, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3446, file: !3440, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3446, file: !3440, line: 397, baseType: !3458, size: 32768, offset: 512)
!3458 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3440, line: 348, size: 32768, elements: !3459)
!3459 = !{!3460, !3475, !3512, !3589, !3602}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3458, file: !3440, line: 349, baseType: !3461, size: 896)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3440, line: 12, size: 896, elements: !3462)
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3474}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3461, file: !3440, line: 13, baseType: !239, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3461, file: !3440, line: 14, baseType: !239, size: 32, offset: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3461, file: !3440, line: 15, baseType: !239, size: 32, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3461, file: !3440, line: 16, baseType: !239, size: 32, offset: 96)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3461, file: !3440, line: 17, baseType: !239, size: 32, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3461, file: !3440, line: 18, baseType: !239, size: 32, offset: 160)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3461, file: !3440, line: 19, baseType: !239, size: 32, offset: 192)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3461, file: !3440, line: 22, baseType: !3471, size: 640, offset: 224)
!3471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 640, elements: !3472)
!3472 = !{!3473}
!3473 = !DISubrange(count: 20)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3461, file: !3440, line: 25, baseType: !239, size: 32, offset: 864)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3458, file: !3440, line: 350, baseType: !3476, size: 4096, align: 128)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3440, line: 34, size: 4096, align: 128, elements: !3477)
!3477 = !{!3478, !3479, !3480, !3481, !3482, !3497, !3498, !3499, !3501, !3503, !3507}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3476, file: !3440, line: 35, baseType: !343, size: 16)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3476, file: !3440, line: 36, baseType: !343, size: 16, offset: 16)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3476, file: !3440, line: 37, baseType: !343, size: 16, offset: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3476, file: !3440, line: 38, baseType: !343, size: 16, offset: 48)
!3482 = !DIDerivedType(tag: DW_TAG_member, scope: !3476, file: !3440, line: 39, baseType: !3483, size: 128, offset: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3476, file: !3440, line: 39, size: 128, elements: !3484)
!3484 = !{!3485, !3490}
!3485 = !DIDerivedType(tag: DW_TAG_member, scope: !3483, file: !3440, line: 40, baseType: !3486, size: 128)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3483, file: !3440, line: 40, size: 128, elements: !3487)
!3487 = !{!3488, !3489}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3486, file: !3440, line: 41, baseType: !526, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3486, file: !3440, line: 42, baseType: !526, size: 64, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, scope: !3483, file: !3440, line: 44, baseType: !3491, size: 128)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3483, file: !3440, line: 44, size: 128, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3496}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3491, file: !3440, line: 45, baseType: !239, size: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3491, file: !3440, line: 46, baseType: !239, size: 32, offset: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3491, file: !3440, line: 47, baseType: !239, size: 32, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3491, file: !3440, line: 48, baseType: !239, size: 32, offset: 96)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3476, file: !3440, line: 51, baseType: !239, size: 32, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3476, file: !3440, line: 52, baseType: !239, size: 32, offset: 224)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3476, file: !3440, line: 55, baseType: !3500, size: 1024, offset: 256)
!3500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 1024, elements: !535)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3476, file: !3440, line: 58, baseType: !3502, size: 2048, offset: 1280)
!3502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 2048, elements: !380)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3476, file: !3440, line: 60, baseType: !3504, size: 384, offset: 3328)
!3504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 384, elements: !3505)
!3505 = !{!3506}
!3506 = !DISubrange(count: 12)
!3507 = !DIDerivedType(tag: DW_TAG_member, scope: !3476, file: !3440, line: 62, baseType: !3508, size: 384, offset: 3712)
!3508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3476, file: !3440, line: 62, size: 384, elements: !3509)
!3509 = !{!3510, !3511}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3508, file: !3440, line: 63, baseType: !3504, size: 384)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3508, file: !3440, line: 64, baseType: !3504, size: 384)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3458, file: !3440, line: 351, baseType: !3513, size: 1088)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3440, line: 79, size: 1088, elements: !3514)
!3514 = !{!3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3588}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3513, file: !3440, line: 80, baseType: !239, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3513, file: !3440, line: 81, baseType: !239, size: 32, offset: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3513, file: !3440, line: 82, baseType: !239, size: 32, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3513, file: !3440, line: 83, baseType: !239, size: 32, offset: 96)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3513, file: !3440, line: 84, baseType: !239, size: 32, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3513, file: !3440, line: 85, baseType: !239, size: 32, offset: 160)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3513, file: !3440, line: 86, baseType: !239, size: 32, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3513, file: !3440, line: 88, baseType: !3471, size: 640, offset: 224)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3513, file: !3440, line: 89, baseType: !335, size: 8, offset: 864)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3513, file: !3440, line: 90, baseType: !335, size: 8, offset: 872)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3513, file: !3440, line: 91, baseType: !335, size: 8, offset: 880)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3513, file: !3440, line: 92, baseType: !335, size: 8, offset: 888)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3513, file: !3440, line: 93, baseType: !335, size: 8, offset: 896)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3513, file: !3440, line: 94, baseType: !335, size: 8, offset: 904)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3513, file: !3440, line: 95, baseType: !3530, size: 64, offset: 960)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3532, line: 11, size: 128, elements: !3533)
!3532 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3533 = !{!3534, !3535}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3531, file: !3532, line: 12, baseType: !411, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3531, file: !3532, line: 13, baseType: !3536, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3538, line: 103, size: 1344, elements: !3539)
!3538 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3539 = !{!3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3568, !3569, !3570}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3537, file: !3538, line: 109, baseType: !425, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3537, file: !3538, line: 110, baseType: !425, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3537, file: !3538, line: 111, baseType: !425, size: 64, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3537, file: !3538, line: 112, baseType: !425, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3537, file: !3538, line: 113, baseType: !425, size: 64, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3537, file: !3538, line: 114, baseType: !425, size: 64, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3537, file: !3538, line: 117, baseType: !425, size: 64, offset: 384)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3537, file: !3538, line: 118, baseType: !425, size: 64, offset: 448)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3537, file: !3538, line: 119, baseType: !425, size: 64, offset: 512)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3537, file: !3538, line: 120, baseType: !425, size: 64, offset: 576)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3537, file: !3538, line: 121, baseType: !425, size: 64, offset: 640)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3537, file: !3538, line: 122, baseType: !425, size: 64, offset: 704)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3537, file: !3538, line: 123, baseType: !425, size: 64, offset: 768)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3537, file: !3538, line: 124, baseType: !425, size: 64, offset: 832)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3537, file: !3538, line: 125, baseType: !425, size: 64, offset: 896)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3537, file: !3538, line: 139, baseType: !425, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3537, file: !3538, line: 142, baseType: !425, size: 64, offset: 1024)
!3557 = !DIDerivedType(tag: DW_TAG_member, scope: !3537, file: !3538, line: 144, baseType: !3558, size: 64, offset: 1088)
!3558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3537, file: !3538, line: 144, size: 64, elements: !3559)
!3559 = !{!3560, !3561, !3562}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3558, file: !3538, line: 146, baseType: !343, size: 16)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3558, file: !3538, line: 148, baseType: !526, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3558, file: !3538, line: 150, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3538, line: 59, size: 64, elements: !3564)
!3564 = !{!3565, !3566, !3567}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3563, file: !3538, line: 61, baseType: !526, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3563, file: !3538, line: 63, baseType: !526, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3563, file: !3538, line: 65, baseType: !526, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3537, file: !3538, line: 153, baseType: !425, size: 64, offset: 1152)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3537, file: !3538, line: 154, baseType: !425, size: 64, offset: 1216)
!3570 = !DIDerivedType(tag: DW_TAG_member, scope: !3537, file: !3538, line: 156, baseType: !3571, size: 64, offset: 1280)
!3571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3537, file: !3538, line: 156, size: 64, elements: !3572)
!3572 = !{!3573, !3574, !3575}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3571, file: !3538, line: 158, baseType: !343, size: 16)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3571, file: !3538, line: 160, baseType: !526, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3571, file: !3538, line: 162, baseType: !3576, size: 64)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3538, line: 69, size: 64, elements: !3577)
!3577 = !{!3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3576, file: !3538, line: 71, baseType: !526, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3576, file: !3538, line: 73, baseType: !526, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3576, file: !3538, line: 75, baseType: !526, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3576, file: !3538, line: 77, baseType: !526, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3576, file: !3538, line: 80, baseType: !526, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3576, file: !3538, line: 83, baseType: !526, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3576, file: !3538, line: 86, baseType: !526, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3576, file: !3538, line: 88, baseType: !526, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3576, file: !3538, line: 93, baseType: !526, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3576, file: !3538, line: 100, baseType: !526, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3513, file: !3440, line: 96, baseType: !239, size: 32, offset: 1024)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3458, file: !3440, line: 352, baseType: !3590, size: 4608, align: 512)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3440, line: 333, size: 4608, align: 512, elements: !3591)
!3591 = !{!3592, !3593, !3600}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3590, file: !3440, line: 334, baseType: !3476, size: 4096, align: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3590, file: !3440, line: 335, baseType: !3594, size: 512, offset: 4096)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3440, line: 312, size: 512, elements: !3595)
!3595 = !{!3596, !3597, !3598}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3594, file: !3440, line: 313, baseType: !526, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3594, file: !3440, line: 314, baseType: !526, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3594, file: !3440, line: 315, baseType: !3599, size: 384, offset: 128)
!3599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 384, elements: !1947)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3590, file: !3440, line: 336, baseType: !3601, offset: 4608)
!3601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, elements: !1864)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3458, file: !3440, line: 353, baseType: !3603, size: 32768)
!3603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 32768, elements: !3604)
!3604 = !{!3605}
!3605 = !DISubrange(count: 4096)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3439, file: !3440, line: 484, baseType: !3445, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3439, file: !3440, line: 491, baseType: !3608, size: 128, offset: 256)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3440, line: 404, size: 128, elements: !3609)
!3609 = !{!3610, !3611, !3612}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3608, file: !3440, line: 424, baseType: !526, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3608, file: !3440, line: 432, baseType: !7, size: 32, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3608, file: !3440, line: 440, baseType: !7, size: 32, offset: 96)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3439, file: !3440, line: 498, baseType: !3608, size: 128, offset: 384)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3439, file: !3440, line: 508, baseType: !3446, size: 33280, align: 512, offset: 512)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1457, file: !1458, line: 16, baseType: !1467, size: 192, offset: 512)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1457, file: !1458, line: 17, baseType: !327, size: 32, offset: 704)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !605, file: !14, line: 1240, baseType: !233, size: 64, offset: 6912)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !605, file: !14, line: 1243, baseType: !239, size: 32, offset: 6976)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !605, file: !14, line: 1245, baseType: !1214, size: 64, offset: 7040)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !605, file: !14, line: 1246, baseType: !1214, size: 64, offset: 7104)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !605, file: !14, line: 1248, baseType: !241, size: 32, offset: 7168)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !605, file: !14, line: 1249, baseType: !3623, size: 64, offset: 7232)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !605, file: !14, line: 1252, baseType: !3626, size: 256, offset: 7296)
!3626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 256, elements: !535)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !605, file: !14, line: 1253, baseType: !3628, size: 128, offset: 7552)
!3628 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3629, line: 21, baseType: !3630)
!3629 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3629, line: 19, size: 128, elements: !3631)
!3631 = !{!3632}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3630, file: !3629, line: 20, baseType: !3633, size: 128)
!3633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 128, elements: !2849)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !605, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !605, file: !14, line: 1261, baseType: !714, size: 256, offset: 7744)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !605, file: !14, line: 1267, baseType: !290, size: 64, offset: 8000)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !605, file: !14, line: 1269, baseType: !551, size: 64, offset: 8064)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !605, file: !14, line: 1271, baseType: !3639, size: 448, offset: 8128)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1223, line: 63, size: 448, elements: !3640)
!3640 = !{!3641, !3646, !3647, !3648, !3649, !3650, !3651}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3639, file: !1223, line: 64, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!425, !3645, !1221}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3639, file: !1223, line: 66, baseType: !3642, size: 64, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3639, file: !1223, line: 69, baseType: !411, size: 64, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3639, file: !1223, line: 70, baseType: !109, size: 32, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3639, file: !1223, line: 71, baseType: !7, size: 32, offset: 224)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3639, file: !1223, line: 74, baseType: !294, size: 128, offset: 256)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3639, file: !1223, line: 85, baseType: !3652, size: 64, offset: 384)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !605, file: !14, line: 1274, baseType: !718, size: 64, offset: 8576)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !605, file: !14, line: 1280, baseType: !718, size: 64, offset: 8640)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !605, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !605, file: !14, line: 1286, baseType: !2584, size: 32, offset: 8736)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !605, file: !14, line: 1289, baseType: !1034, size: 64, offset: 8768)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !605, file: !14, line: 1290, baseType: !1082, size: 64, offset: 8832)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !605, file: !14, line: 1297, baseType: !2041, size: 64, offset: 8896)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !605, file: !14, line: 1304, baseType: !3661, size: 64, offset: 8960)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3662, line: 49, size: 64, elements: !3663)
!3662 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3663 = !{!3664}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3661, file: !3662, line: 50, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3662, line: 41, size: 512, align: 512, elements: !3667)
!3667 = !{!3668, !3669, !3674}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3666, file: !3662, line: 43, baseType: !307, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3666, file: !3662, line: 45, baseType: !3670, size: 192, offset: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3662, line: 29, size: 192, elements: !3671)
!3671 = !{!3672, !3673}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3670, file: !3662, line: 30, baseType: !294, size: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3670, file: !3662, line: 32, baseType: !411, size: 64, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3666, file: !3662, line: 46, baseType: !411, size: 64, offset: 256)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !605, file: !14, line: 1305, baseType: !3661, size: 64, offset: 9024)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !605, file: !14, line: 1306, baseType: !932, size: 128, align: 64, offset: 9088)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !605, file: !14, line: 1307, baseType: !972, size: 256, offset: 9216)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !605, file: !14, line: 1309, baseType: !714, size: 256, offset: 9472)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !605, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !605, file: !14, line: 1317, baseType: !307, size: 32, align: 512, offset: 10240)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !605, file: !14, line: 1318, baseType: !294, size: 128, offset: 10304)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !605, file: !14, line: 1320, baseType: !307, size: 32, offset: 10432)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !605, file: !14, line: 1321, baseType: !294, size: 128, offset: 10496)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !599, file: !600, line: 73, baseType: !109, size: 32, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !599, file: !600, line: 74, baseType: !3686, size: 64, offset: 192)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1888, line: 42, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !553, file: !492, line: 141, baseType: !3690, size: 64, offset: 704)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!109, !1284, !270}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !553, file: !492, line: 142, baseType: !3694, size: 64, offset: 768)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!490, !490, !3697}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !491, file: !492, line: 96, baseType: !604, size: 64, offset: 832)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !491, file: !492, line: 97, baseType: !425, size: 64, offset: 896)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !491, file: !492, line: 98, baseType: !233, size: 64, offset: 960)
!3702 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !492, line: 100, baseType: !3703, size: 128, offset: 1024)
!3703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !491, file: !492, line: 100, size: 128, elements: !3704)
!3704 = !{!3705, !3706}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3703, file: !492, line: 101, baseType: !294, size: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3703, file: !492, line: 102, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !491, file: !492, line: 104, baseType: !294, size: 128, offset: 1152)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !491, file: !492, line: 105, baseType: !294, size: 128, offset: 1280)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !491, file: !492, line: 113, baseType: !3711, size: 128, offset: 1408)
!3711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !491, file: !492, line: 109, size: 128, elements: !3712)
!3712 = !{!3713, !3714, !3715}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3711, file: !492, line: 110, baseType: !958, size: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3711, file: !492, line: 111, baseType: !506, size: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3711, file: !492, line: 112, baseType: !932, size: 128, align: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !484, file: !14, line: 1968, baseType: !3717, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!290, !490, !455, !3720}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3722, line: 10, size: 128, elements: !3723)
!3722 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3723 = !{!3724, !3725}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3721, file: !3722, line: 11, baseType: !757, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3721, file: !3722, line: 12, baseType: !233, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !484, file: !14, line: 1969, baseType: !3727, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!109, !3686, !455, !109}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !484, file: !14, line: 1970, baseType: !3731, size: 64, offset: 192)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!478, !455, !109, !270}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !484, file: !14, line: 1972, baseType: !3735, size: 64, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!109, !490, !375, !109}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !484, file: !14, line: 1974, baseType: !3739, size: 64, offset: 320)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!109, !3686, !455, !490, !417, !270}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !484, file: !14, line: 1976, baseType: !3743, size: 64, offset: 384)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!109, !490, !455, !490}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !484, file: !14, line: 1977, baseType: !3747, size: 64, offset: 448)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!109, !455, !490}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !484, file: !14, line: 1978, baseType: !3751, size: 64, offset: 512)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!109, !3686, !455, !490, !290}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !484, file: !14, line: 1980, baseType: !3755, size: 64, offset: 576)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!109, !3686, !455, !490, !417}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !484, file: !14, line: 1982, baseType: !3747, size: 64, offset: 640)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !484, file: !14, line: 1983, baseType: !3760, size: 64, offset: 704)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!109, !3686, !455, !490, !417, !609}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !484, file: !14, line: 1985, baseType: !3764, size: 64, offset: 768)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!109, !3686, !455, !490, !455, !490, !7}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !484, file: !14, line: 1987, baseType: !3768, size: 64, offset: 832)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!109, !3686, !490, !3771}
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3773)
!3773 = !{!3774, !3775, !3776, !3786, !3795, !3796, !3801, !3802, !3803}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3772, file: !14, line: 227, baseType: !7, size: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3772, file: !14, line: 228, baseType: !417, size: 16, offset: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, scope: !3772, file: !14, line: 241, baseType: !3777, size: 32, offset: 64)
!3777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3772, file: !14, line: 241, size: 32, elements: !3778)
!3778 = !{!3779, !3780}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3777, file: !14, line: 242, baseType: !461, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3777, file: !14, line: 243, baseType: !3781, size: 32)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3782, line: 16, baseType: !3783)
!3782 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3782, line: 14, size: 32, elements: !3784)
!3784 = !{!3785}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3783, file: !3782, line: 15, baseType: !466, size: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, scope: !3772, file: !14, line: 245, baseType: !3787, size: 32, offset: 96)
!3787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3772, file: !14, line: 245, size: 32, elements: !3788)
!3788 = !{!3789, !3790}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3787, file: !14, line: 246, baseType: !470, size: 32)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3787, file: !14, line: 247, baseType: !3791, size: 32)
!3791 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3782, line: 20, baseType: !3792)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3782, line: 18, size: 32, elements: !3793)
!3793 = !{!3794}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3792, file: !3782, line: 19, baseType: !474, size: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3772, file: !14, line: 249, baseType: !614, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3772, file: !14, line: 250, baseType: !3797, size: 128, offset: 192)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1215, line: 13, size: 128, elements: !3798)
!3798 = !{!3799, !3800}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3797, file: !1215, line: 14, baseType: !1214, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3797, file: !1215, line: 15, baseType: !411, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3772, file: !14, line: 251, baseType: !3797, size: 128, offset: 320)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3772, file: !14, line: 252, baseType: !3797, size: 128, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3772, file: !14, line: 259, baseType: !1804, size: 64, offset: 576)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !484, file: !14, line: 1988, baseType: !3805, size: 64, offset: 896)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!109, !3686, !1284, !3808, !239, !7}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3810, line: 22, size: 1280, elements: !3811)
!3810 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3811 = !{!3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3809, file: !3810, line: 23, baseType: !239, size: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3809, file: !3810, line: 24, baseType: !417, size: 16, offset: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3809, file: !3810, line: 25, baseType: !7, size: 32, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3809, file: !3810, line: 26, baseType: !1926, size: 32, offset: 96)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3809, file: !3810, line: 27, baseType: !526, size: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3809, file: !3810, line: 28, baseType: !526, size: 64, offset: 192)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3809, file: !3810, line: 41, baseType: !526, size: 64, offset: 256)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3809, file: !3810, line: 42, baseType: !609, size: 32, offset: 320)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3809, file: !3810, line: 43, baseType: !609, size: 32, offset: 352)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3809, file: !3810, line: 44, baseType: !461, size: 32, offset: 384)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3809, file: !3810, line: 45, baseType: !470, size: 32, offset: 416)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3809, file: !3810, line: 46, baseType: !614, size: 64, offset: 448)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3809, file: !3810, line: 47, baseType: !3797, size: 128, offset: 512)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3809, file: !3810, line: 48, baseType: !3797, size: 128, offset: 640)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3809, file: !3810, line: 49, baseType: !3797, size: 128, offset: 768)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3809, file: !3810, line: 50, baseType: !3797, size: 128, offset: 896)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3809, file: !3810, line: 51, baseType: !526, size: 64, offset: 1024)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3809, file: !3810, line: 52, baseType: !526, size: 64, offset: 1088)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3809, file: !3810, line: 53, baseType: !239, size: 32, offset: 1152)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3809, file: !3810, line: 54, baseType: !239, size: 32, offset: 1184)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3809, file: !3810, line: 55, baseType: !526, size: 64, offset: 1216)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !484, file: !14, line: 1990, baseType: !3834, size: 64, offset: 960)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!407, !490, !375, !422}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !484, file: !14, line: 1991, baseType: !3838, size: 64, offset: 1024)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!109, !455, !3841, !526, !526}
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !484, file: !14, line: 1993, baseType: !3844, size: 64, offset: 1088)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!109, !455, !109}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !484, file: !14, line: 1994, baseType: !3848, size: 64, offset: 1152)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!109, !455, !490, !1804, !7, !417}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !484, file: !14, line: 1997, baseType: !3852, size: 64, offset: 1216)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!109, !3686, !455, !1804, !417}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !484, file: !14, line: 1999, baseType: !3856, size: 64, offset: 1280)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!478, !3686, !490, !109}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !484, file: !14, line: 2001, baseType: !3860, size: 64, offset: 1344)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!109, !3686, !490, !478, !109}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !484, file: !14, line: 2003, baseType: !3864, size: 64, offset: 1408)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!109, !3686, !490, !3867}
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !484, file: !14, line: 2005, baseType: !3870, size: 64, offset: 1472)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!109, !490, !3867}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !484, file: !14, line: 2006, baseType: !3874, size: 64, offset: 1536)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!3877, !455}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3879)
!3879 = !{!3880, !3881}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3878, file: !14, line: 3193, baseType: !2162, size: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3878, file: !14, line: 3194, baseType: !239, size: 32, offset: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !456, file: !14, line: 655, baseType: !604, size: 64, offset: 448)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !456, file: !14, line: 656, baseType: !451, size: 64, offset: 512)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !456, file: !14, line: 659, baseType: !233, size: 64, offset: 576)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !456, file: !14, line: 663, baseType: !425, size: 64, offset: 640)
!3886 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !14, line: 671, baseType: !3887, size: 32, offset: 704)
!3887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !14, line: 671, size: 32, elements: !3888)
!3888 = !{!3889, !3891}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3887, file: !14, line: 672, baseType: !3890, size: 32)
!3890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3887, file: !14, line: 673, baseType: !7, size: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !456, file: !14, line: 675, baseType: !609, size: 32, offset: 736)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !456, file: !14, line: 676, baseType: !614, size: 64, offset: 768)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !456, file: !14, line: 677, baseType: !3797, size: 128, offset: 832)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !456, file: !14, line: 678, baseType: !3797, size: 128, offset: 960)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !456, file: !14, line: 679, baseType: !3797, size: 128, offset: 1088)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !456, file: !14, line: 680, baseType: !307, size: 32, offset: 1216)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !456, file: !14, line: 681, baseType: !345, size: 16, offset: 1248)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !456, file: !14, line: 682, baseType: !335, size: 8, offset: 1264)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !456, file: !14, line: 683, baseType: !335, size: 8, offset: 1272)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !456, file: !14, line: 684, baseType: !1362, size: 64, offset: 1280)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !456, file: !14, line: 691, baseType: !425, size: 64, offset: 1344)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !456, file: !14, line: 692, baseType: !1374, size: 320, offset: 1408)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !456, file: !14, line: 694, baseType: !425, size: 64, offset: 1728)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !456, file: !14, line: 695, baseType: !425, size: 64, offset: 1792)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !456, file: !14, line: 697, baseType: !958, size: 128, offset: 1856)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !456, file: !14, line: 698, baseType: !294, size: 128, offset: 1984)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !456, file: !14, line: 707, baseType: !294, size: 128, offset: 2112)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !456, file: !14, line: 708, baseType: !294, size: 128, offset: 2240)
!3910 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !14, line: 709, baseType: !3911, size: 128, offset: 2368)
!3911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !14, line: 709, size: 128, elements: !3912)
!3912 = !{!3913, !3914}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3911, file: !14, line: 710, baseType: !1082, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3911, file: !14, line: 711, baseType: !932, size: 128, align: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !456, file: !14, line: 713, baseType: !720, size: 64, offset: 2496)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !456, file: !14, line: 714, baseType: !720, size: 64, offset: 2560)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !456, file: !14, line: 715, baseType: !327, size: 32, offset: 2624)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !456, file: !14, line: 716, baseType: !327, size: 32, offset: 2656)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !456, file: !14, line: 717, baseType: !327, size: 32, offset: 2688)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !456, file: !14, line: 719, baseType: !327, size: 32, offset: 2720)
!3921 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !14, line: 721, baseType: !3922, size: 64, offset: 2752)
!3922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !14, line: 721, size: 64, elements: !3923)
!3923 = !{!3924, !3925}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3922, file: !14, line: 722, baseType: !2072, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3922, file: !14, line: 723, baseType: !1105, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !456, file: !14, line: 725, baseType: !3927, size: 64, offset: 2816)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !456, file: !14, line: 726, baseType: !452, size: 1536, align: 64, offset: 2880)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !456, file: !14, line: 727, baseType: !294, size: 128, offset: 4416)
!3931 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !14, line: 728, baseType: !3932, size: 64, offset: 4544)
!3932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !14, line: 728, size: 64, elements: !3933)
!3933 = !{!3934, !3935, !3938, !3939}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3932, file: !14, line: 729, baseType: !2534, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3932, file: !14, line: 730, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3932, file: !14, line: 731, baseType: !375, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3932, file: !14, line: 732, baseType: !7, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !456, file: !14, line: 735, baseType: !241, size: 32, offset: 4608)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !456, file: !14, line: 738, baseType: !241, size: 32, offset: 4640)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !456, file: !14, line: 739, baseType: !3623, size: 64, offset: 4672)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !456, file: !14, line: 750, baseType: !233, size: 64, offset: 4736)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !452, file: !14, line: 474, baseType: !2162, size: 128, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !452, file: !14, line: 475, baseType: !1374, size: 320, offset: 192)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !452, file: !14, line: 476, baseType: !1226, size: 32, offset: 512)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !452, file: !14, line: 477, baseType: !327, size: 32, offset: 544)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !452, file: !14, line: 482, baseType: !1660, size: 128, offset: 576)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !452, file: !14, line: 483, baseType: !425, size: 64, offset: 704)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !452, file: !14, line: 484, baseType: !425, size: 64, offset: 768)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !452, file: !14, line: 485, baseType: !3952, size: 64, offset: 832)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3954)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3955)
!3955 = !{!3956, !3960, !4030, !4034, !4038, !4044, !4048, !4052, !4057, !4061, !4065, !4069, !4070, !4074, !4078, !4082, !4087, !4091, !4098, !4099}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3954, file: !14, line: 405, baseType: !3957, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!109, !2321, !1117}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3954, file: !14, line: 406, baseType: !3961, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!109, !1804, !3964}
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3966)
!3966 = !{!3967, !3997, !4011}
!3967 = !DIDerivedType(tag: DW_TAG_member, scope: !3965, file: !38, line: 295, baseType: !3968, size: 512)
!3968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3965, file: !38, line: 295, size: 512, elements: !3969)
!3969 = !{!3970, !3996}
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !3968, file: !38, line: 296, baseType: !3971, size: 448)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3968, file: !38, line: 296, size: 448, elements: !3972)
!3972 = !{!3973, !3974, !3983, !3984, !3985, !3994, !3995}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3971, file: !38, line: 298, baseType: !425, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, scope: !3971, file: !38, line: 299, baseType: !3975, size: 128, offset: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3971, file: !38, line: 299, size: 128, elements: !3976)
!3976 = !{!3977, !3978}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3975, file: !38, line: 300, baseType: !294, size: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, scope: !3975, file: !38, line: 302, baseType: !3979, size: 128)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3975, file: !38, line: 302, size: 128, elements: !3980)
!3980 = !{!3981, !3982}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3979, file: !38, line: 303, baseType: !233, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3979, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3971, file: !38, line: 310, baseType: !451, size: 64, offset: 192)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3971, file: !38, line: 311, baseType: !425, size: 64, offset: 256)
!3985 = !DIDerivedType(tag: DW_TAG_member, scope: !3971, file: !38, line: 312, baseType: !3986, size: 64, offset: 320)
!3986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3971, file: !38, line: 312, size: 64, elements: !3987)
!3987 = !{!3988, !3989}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3986, file: !38, line: 313, baseType: !233, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3986, file: !38, line: 314, baseType: !3990, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3991)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3992)
!3992 = !{!3993}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3991, file: !38, line: 256, baseType: !425, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3971, file: !38, line: 316, baseType: !327, size: 32, offset: 384)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3971, file: !38, line: 317, baseType: !327, size: 32, offset: 416)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3968, file: !38, line: 323, baseType: !2322, size: 512, align: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, scope: !3965, file: !38, line: 325, baseType: !3998, size: 512, offset: 512)
!3998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3965, file: !38, line: 325, size: 512, elements: !3999)
!3999 = !{!4000, !4010}
!4000 = !DIDerivedType(tag: DW_TAG_member, scope: !3998, file: !38, line: 326, baseType: !4001, size: 320)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3998, file: !38, line: 326, size: 320, elements: !4002)
!4002 = !{!4003, !4004, !4005, !4006, !4007, !4008, !4009}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4001, file: !38, line: 327, baseType: !425, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4001, file: !38, line: 328, baseType: !425, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4001, file: !38, line: 329, baseType: !425, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4001, file: !38, line: 331, baseType: !327, size: 32, offset: 192)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4001, file: !38, line: 332, baseType: !327, size: 32, offset: 224)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4001, file: !38, line: 333, baseType: !327, size: 32, offset: 256)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4001, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3998, file: !38, line: 339, baseType: !2322, size: 512, align: 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, scope: !3965, file: !38, line: 341, baseType: !4012, size: 512, offset: 1024)
!4012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3965, file: !38, line: 341, size: 512, elements: !4013)
!4013 = !{!4014, !4023, !4029}
!4014 = !DIDerivedType(tag: DW_TAG_member, scope: !4012, file: !38, line: 342, baseType: !4015, size: 384)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4012, file: !38, line: 342, size: 384, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4020, !4021, !4022}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4015, file: !38, line: 343, baseType: !425, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4015, file: !38, line: 344, baseType: !425, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4015, file: !38, line: 346, baseType: !233, size: 64, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4015, file: !38, line: 347, baseType: !233, size: 64, offset: 192)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4015, file: !38, line: 348, baseType: !233, size: 64, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4015, file: !38, line: 349, baseType: !233, size: 64, offset: 320)
!4023 = !DIDerivedType(tag: DW_TAG_member, scope: !4012, file: !38, line: 352, baseType: !4024, size: 256)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4012, file: !38, line: 352, size: 256, elements: !4025)
!4025 = !{!4026, !4027, !4028}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4024, file: !38, line: 353, baseType: !425, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4024, file: !38, line: 354, baseType: !425, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4024, file: !38, line: 356, baseType: !294, size: 128, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4012, file: !38, line: 359, baseType: !2322, size: 512, align: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3954, file: !14, line: 409, baseType: !4031, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!109, !451, !1117}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3954, file: !14, line: 412, baseType: !4035, size: 64, offset: 192)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!270, !451, !3964}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3954, file: !14, line: 414, baseType: !4039, size: 64, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{null, !4042}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3954, file: !14, line: 416, baseType: !4045, size: 64, offset: 320)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!109, !1804, !451, !614, !7, !3372, !2549}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3954, file: !14, line: 419, baseType: !4049, size: 64, offset: 384)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!109, !1804, !451, !614, !7, !7, !2321, !233}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3954, file: !14, line: 424, baseType: !4053, size: 64, offset: 448)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!4056, !451, !4056}
!4056 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !271, line: 131, baseType: !526)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3954, file: !14, line: 425, baseType: !4058, size: 64, offset: 512)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{null, !3964, !422, !422}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3954, file: !14, line: 426, baseType: !4062, size: 64, offset: 576)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!270, !3964, !1226}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3954, file: !14, line: 427, baseType: !4066, size: 64, offset: 640)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{null, !3964}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3954, file: !14, line: 428, baseType: !2091, size: 64, offset: 704)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3954, file: !14, line: 433, baseType: !4071, size: 64, offset: 768)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!109, !451, !3964, !3964, !74}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3954, file: !14, line: 435, baseType: !4075, size: 64, offset: 832)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!109, !3964}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3954, file: !14, line: 436, baseType: !4079, size: 64, offset: 896)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!270, !3964, !422, !422}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3954, file: !14, line: 438, baseType: !4083, size: 64, offset: 960)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{null, !3964, !4086, !4086}
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3954, file: !14, line: 439, baseType: !4088, size: 64, offset: 1024)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!109, !451, !2321}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3954, file: !14, line: 442, baseType: !4092, size: 64, offset: 1088)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!109, !4095, !1804, !4097}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3954, file: !14, line: 444, baseType: !2541, size: 64, offset: 1152)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3954, file: !14, line: 445, baseType: !4100, size: 64, offset: 1216)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!109, !2094, !2116}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !14, line: 486, baseType: !425, size: 64, offset: 896)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !452, file: !14, line: 487, baseType: !1374, size: 320, offset: 960)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !452, file: !14, line: 488, baseType: !2584, size: 32, offset: 1280)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !452, file: !14, line: 489, baseType: !307, size: 32, offset: 1312)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !452, file: !14, line: 490, baseType: !294, size: 128, offset: 1344)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !452, file: !14, line: 491, baseType: !233, size: 64, offset: 1472)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !442, file: !401, line: 180, baseType: !4110, size: 64, offset: 320)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!407, !1804, !300, !441, !375, !614, !422}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !442, file: !401, line: 182, baseType: !4110, size: 64, offset: 384)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !442, file: !401, line: 184, baseType: !4115, size: 64, offset: 448)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!109, !1804, !300, !441, !2212}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !430, file: !401, line: 90, baseType: !4119, size: 64, offset: 192)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !430, file: !401, line: 91, baseType: !4121, size: 64, offset: 256)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !391, file: !287, line: 120, baseType: !4123, size: 64, offset: 192)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!4126, !358}
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4128)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4129)
!4129 = !{!4130, !4131, !4135, !4139, !4145, !4149}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4128, file: !82, line: 40, baseType: !81, size: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4128, file: !82, line: 41, baseType: !4132, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!270}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4128, file: !82, line: 42, baseType: !4136, size: 64, offset: 128)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!233}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4128, file: !82, line: 43, baseType: !4140, size: 64, offset: 192)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!279, !4143}
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4128, file: !82, line: 44, baseType: !4146, size: 64, offset: 256)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!279}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4128, file: !82, line: 45, baseType: !757, size: 64, offset: 320)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !391, file: !287, line: 121, baseType: !4151, size: 64, offset: 256)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!279, !358}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !391, file: !287, line: 122, baseType: !4155, size: 64, offset: 320)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{null, !358, !4158, !4159}
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !286, file: !287, line: 70, baseType: !4161, size: 64, offset: 384)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !629, line: 190, size: 1152, elements: !4163)
!4163 = !{!4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4255, !4256, !4257, !4258, !4259, !4262}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4162, file: !629, line: 191, baseType: !327, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4162, file: !629, line: 192, baseType: !327, size: 32, offset: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4162, file: !629, line: 202, baseType: !4161, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4162, file: !629, line: 203, baseType: !290, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4162, file: !629, line: 205, baseType: !824, size: 192, align: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4162, file: !629, line: 207, baseType: !279, size: 64, offset: 384)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4162, file: !629, line: 208, baseType: !7, size: 32, offset: 448)
!4171 = !DIDerivedType(tag: DW_TAG_member, scope: !4162, file: !629, line: 209, baseType: !4172, size: 256, offset: 512)
!4172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4162, file: !629, line: 209, size: 256, elements: !4173)
!4173 = !{!4174, !4183, !4187}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4172, file: !629, line: 210, baseType: !4175, size: 256)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !629, line: 153, size: 256, elements: !4176)
!4176 = !{!4177, !4178, !4179, !4182}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4175, file: !629, line: 154, baseType: !425, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4175, file: !629, line: 156, baseType: !1663, size: 64, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4175, file: !629, line: 162, baseType: !4180, size: 64, offset: 128)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !629, line: 162, flags: DIFlagFwdDecl)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4175, file: !629, line: 167, baseType: !425, size: 64, offset: 192)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4172, file: !629, line: 211, baseType: !4184, size: 64)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !629, line: 170, size: 64, elements: !4185)
!4185 = !{!4186}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4184, file: !629, line: 171, baseType: !4161, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4172, file: !629, line: 212, baseType: !4188, size: 256)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !629, line: 174, size: 256, elements: !4189)
!4189 = !{!4190, !4250, !4253, !4254}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4188, file: !629, line: 175, baseType: !4191, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4193)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !629, line: 271, size: 768, elements: !4194)
!4194 = !{!4195, !4215, !4219, !4223, !4227, !4231, !4235, !4239, !4240, !4241, !4242, !4246}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4193, file: !629, line: 276, baseType: !4196, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!109, !4199}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !629, line: 251, size: 1216, elements: !4201)
!4201 = !{!4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4200, file: !629, line: 253, baseType: !4161, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4200, file: !629, line: 254, baseType: !1804, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4200, file: !629, line: 255, baseType: !1154, size: 64, offset: 128)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4200, file: !629, line: 256, baseType: !233, size: 64, offset: 192)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4200, file: !629, line: 259, baseType: !714, size: 256, offset: 256)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4200, file: !629, line: 260, baseType: !714, size: 256, offset: 512)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4200, file: !629, line: 261, baseType: !109, size: 32, offset: 768)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4200, file: !629, line: 262, baseType: !294, size: 128, offset: 832)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4200, file: !629, line: 263, baseType: !375, size: 64, offset: 960)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4200, file: !629, line: 265, baseType: !422, size: 64, offset: 1024)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4200, file: !629, line: 266, baseType: !270, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4200, file: !629, line: 267, baseType: !270, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4200, file: !629, line: 268, baseType: !2257, size: 64, offset: 1152)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4193, file: !629, line: 277, baseType: !4216, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{null, !4199}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4193, file: !629, line: 290, baseType: !4220, size: 64, offset: 128)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!109, !1154, !233}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4193, file: !629, line: 292, baseType: !4224, size: 64, offset: 192)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!233, !1154, !2085}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4193, file: !629, line: 293, baseType: !4228, size: 64, offset: 256)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!233, !1154, !233, !2085}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4193, file: !629, line: 294, baseType: !4232, size: 64, offset: 320)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !1154, !233}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4193, file: !629, line: 296, baseType: !4236, size: 64, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!407, !4199, !375, !422, !614}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4193, file: !629, line: 306, baseType: !422, size: 64, offset: 448)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4193, file: !629, line: 313, baseType: !270, size: 8, offset: 512)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4193, file: !629, line: 314, baseType: !4236, size: 64, offset: 576)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4193, file: !629, line: 317, baseType: !4243, size: 64, offset: 640)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!2199, !4199, !2201}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4193, file: !629, line: 320, baseType: !4247, size: 64, offset: 704)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!109, !4199, !2212}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4188, file: !629, line: 176, baseType: !4251, size: 64, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !629, line: 35, flags: DIFlagFwdDecl)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4188, file: !629, line: 177, baseType: !614, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4188, file: !629, line: 178, baseType: !4161, size: 64, offset: 192)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4162, file: !629, line: 215, baseType: !233, size: 64, offset: 768)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4162, file: !629, line: 221, baseType: !526, size: 64, offset: 832)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4162, file: !629, line: 223, baseType: !345, size: 16, offset: 896)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4162, file: !629, line: 224, baseType: !417, size: 16, offset: 912)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4162, file: !629, line: 225, baseType: !4260, size: 64, offset: 960)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !629, line: 36, flags: DIFlagFwdDecl)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4162, file: !629, line: 227, baseType: !932, size: 128, align: 64, offset: 1024)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !286, file: !287, line: 71, baseType: !4264, size: 32, offset: 448)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4265, line: 19, size: 32, elements: !4266)
!4265 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4266 = !{!4267}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4264, file: !4265, line: 20, baseType: !1494, size: 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !286, file: !287, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !286, file: !287, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !286, file: !287, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !286, file: !287, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !286, file: !287, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !283, file: !94, line: 707, baseType: !4274, size: 64, offset: 512)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !283, file: !94, line: 709, baseType: !4276, size: 64, offset: 576)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !283, file: !94, line: 711, baseType: !290, size: 64, offset: 640)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !283, file: !94, line: 712, baseType: !4280, size: 64, offset: 704)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4282)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4283)
!4283 = !{!4284, !4285, !4286, !4290, !4295, !4299}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4282, file: !94, line: 90, baseType: !290, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4282, file: !94, line: 91, baseType: !427, size: 64, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4282, file: !94, line: 92, baseType: !4287, size: 64, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!109, !281, !370}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4282, file: !94, line: 93, baseType: !4291, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!375, !281, !4294, !4158, !4159}
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4282, file: !94, line: 95, baseType: !4296, size: 64, offset: 256)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{null, !4274}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4282, file: !94, line: 97, baseType: !4300, size: 64, offset: 320)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4302)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4303)
!4303 = !{!4304, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4302, file: !101, line: 287, baseType: !4305, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!109, !4274}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4302, file: !101, line: 288, baseType: !4296, size: 64, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4302, file: !101, line: 289, baseType: !4305, size: 64, offset: 128)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4302, file: !101, line: 290, baseType: !4305, size: 64, offset: 192)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4302, file: !101, line: 291, baseType: !4305, size: 64, offset: 256)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4302, file: !101, line: 292, baseType: !4305, size: 64, offset: 320)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4302, file: !101, line: 293, baseType: !4305, size: 64, offset: 384)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4302, file: !101, line: 294, baseType: !4305, size: 64, offset: 448)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4302, file: !101, line: 295, baseType: !4305, size: 64, offset: 512)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4302, file: !101, line: 296, baseType: !4305, size: 64, offset: 576)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4302, file: !101, line: 297, baseType: !4305, size: 64, offset: 640)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4302, file: !101, line: 298, baseType: !4305, size: 64, offset: 704)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4302, file: !101, line: 299, baseType: !4305, size: 64, offset: 768)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4302, file: !101, line: 300, baseType: !4305, size: 64, offset: 832)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4302, file: !101, line: 301, baseType: !4305, size: 64, offset: 896)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4302, file: !101, line: 302, baseType: !4305, size: 64, offset: 960)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4302, file: !101, line: 303, baseType: !4305, size: 64, offset: 1024)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4302, file: !101, line: 304, baseType: !4305, size: 64, offset: 1088)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4302, file: !101, line: 305, baseType: !4305, size: 64, offset: 1152)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4302, file: !101, line: 306, baseType: !4305, size: 64, offset: 1216)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4302, file: !101, line: 307, baseType: !4305, size: 64, offset: 1280)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4302, file: !101, line: 308, baseType: !4305, size: 64, offset: 1344)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4302, file: !101, line: 309, baseType: !4305, size: 64, offset: 1408)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !283, file: !94, line: 714, baseType: !4331, size: 64, offset: 768)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4333)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4334, line: 80, size: 1344, elements: !4335)
!4334 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4335 = !{!4336, !4337, !4338, !4339, !4340, !4341, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4414}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4333, file: !4334, line: 81, baseType: !290, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4333, file: !4334, line: 82, baseType: !290, size: 64, offset: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4333, file: !4334, line: 83, baseType: !427, size: 64, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4333, file: !4334, line: 84, baseType: !427, size: 64, offset: 192)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4333, file: !4334, line: 85, baseType: !427, size: 64, offset: 256)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4333, file: !4334, line: 87, baseType: !4342, size: 64, offset: 320)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!109, !4274, !4345}
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4347)
!4347 = !{!4348, !4349, !4350, !4351, !4352, !4353, !4354, !4367, !4377, !4378, !4379, !4380, !4381, !4389, !4390, !4391, !4392, !4393, !4394}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4346, file: !88, line: 97, baseType: !290, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4346, file: !88, line: 98, baseType: !4331, size: 64, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4346, file: !88, line: 100, baseType: !643, size: 64, offset: 128)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4346, file: !88, line: 101, baseType: !290, size: 64, offset: 192)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4346, file: !88, line: 103, baseType: !270, size: 8, offset: 256)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4346, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4346, file: !88, line: 106, baseType: !4355, size: 64, offset: 320)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4357)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4358, line: 282, size: 1600, elements: !4359)
!4358 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4359 = !{!4360, !4361, !4362, !4366}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4357, file: !4358, line: 283, baseType: !3626, size: 256)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4357, file: !4358, line: 284, baseType: !3626, size: 256, offset: 256)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4357, file: !4358, line: 285, baseType: !4363, size: 1024, offset: 512)
!4363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 1024, elements: !4364)
!4364 = !{!4365}
!4365 = !DISubrange(count: 128)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4357, file: !4358, line: 286, baseType: !279, size: 64, offset: 1536)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4346, file: !88, line: 107, baseType: !4368, size: 64, offset: 384)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4370)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4358, line: 217, size: 256, elements: !4371)
!4371 = !{!4372, !4373, !4375, !4376}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4370, file: !4358, line: 218, baseType: !3633, size: 128)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4370, file: !4358, line: 219, baseType: !4374, size: 64, offset: 128)
!4374 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4358, line: 15, baseType: !425)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4370, file: !4358, line: 220, baseType: !241, size: 32, offset: 192)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4370, file: !4358, line: 221, baseType: !241, size: 32, offset: 224)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4346, file: !88, line: 109, baseType: !4305, size: 64, offset: 448)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4346, file: !88, line: 110, baseType: !4296, size: 64, offset: 512)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4346, file: !88, line: 111, baseType: !4305, size: 64, offset: 576)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4346, file: !88, line: 112, baseType: !4296, size: 64, offset: 640)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4346, file: !88, line: 113, baseType: !4382, size: 64, offset: 704)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!109, !4274, !4385}
!4385 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4386)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4387)
!4387 = !{!4388}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4386, file: !101, line: 59, baseType: !109, size: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4346, file: !88, line: 114, baseType: !4305, size: 64, offset: 768)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4346, file: !88, line: 115, baseType: !427, size: 64, offset: 832)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4346, file: !88, line: 116, baseType: !427, size: 64, offset: 896)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4346, file: !88, line: 118, baseType: !4300, size: 64, offset: 960)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4346, file: !88, line: 119, baseType: !4296, size: 64, offset: 1024)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4346, file: !88, line: 121, baseType: !4395, size: 64, offset: 1088)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4333, file: !4334, line: 88, baseType: !4287, size: 64, offset: 384)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4333, file: !4334, line: 89, baseType: !4305, size: 64, offset: 448)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4333, file: !4334, line: 90, baseType: !4296, size: 64, offset: 512)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4333, file: !4334, line: 91, baseType: !4296, size: 64, offset: 576)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4333, file: !4334, line: 92, baseType: !4296, size: 64, offset: 640)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4333, file: !4334, line: 94, baseType: !4305, size: 64, offset: 704)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4333, file: !4334, line: 95, baseType: !4305, size: 64, offset: 768)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4333, file: !4334, line: 97, baseType: !4382, size: 64, offset: 832)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4333, file: !4334, line: 98, baseType: !4305, size: 64, offset: 896)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4333, file: !4334, line: 100, baseType: !4305, size: 64, offset: 960)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4333, file: !4334, line: 102, baseType: !4305, size: 64, offset: 1024)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4333, file: !4334, line: 103, baseType: !4296, size: 64, offset: 1088)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4333, file: !4334, line: 105, baseType: !4300, size: 64, offset: 1152)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4333, file: !4334, line: 107, baseType: !4411, size: 64, offset: 1216)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4413)
!4413 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4334, line: 107, flags: DIFlagFwdDecl)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4333, file: !4334, line: 109, baseType: !270, size: 8, offset: 1280)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !283, file: !94, line: 715, baseType: !4345, size: 64, offset: 832)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !283, file: !94, line: 717, baseType: !233, size: 64, offset: 896)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !283, file: !94, line: 719, baseType: !233, size: 64, offset: 960)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !283, file: !94, line: 721, baseType: !714, size: 256, offset: 1024)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !283, file: !94, line: 725, baseType: !4420, size: 448, offset: 1280)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4421)
!4421 = !{!4422, !4423, !4424, !4425}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4420, file: !94, line: 518, baseType: !294, size: 128)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4420, file: !94, line: 519, baseType: !294, size: 128, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4420, file: !94, line: 520, baseType: !294, size: 128, offset: 256)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4420, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !283, file: !94, line: 726, baseType: !4427, size: 2496, offset: 1728)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4428)
!4428 = !{!4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4511, !4515}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4427, file: !101, line: 664, baseType: !4385, size: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4427, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4427, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4427, file: !101, line: 667, baseType: !270, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4427, file: !101, line: 668, baseType: !270, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4427, file: !101, line: 669, baseType: !270, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4427, file: !101, line: 670, baseType: !270, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4427, file: !101, line: 671, baseType: !270, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4427, file: !101, line: 672, baseType: !270, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4427, file: !101, line: 673, baseType: !270, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4427, file: !101, line: 674, baseType: !270, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4427, file: !101, line: 675, baseType: !239, size: 32, offset: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4427, file: !101, line: 676, baseType: !307, size: 32, offset: 96)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4427, file: !101, line: 678, baseType: !294, size: 128, offset: 128)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4427, file: !101, line: 679, baseType: !663, size: 256, offset: 256)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4427, file: !101, line: 680, baseType: !4445, size: 64, offset: 512)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4447, line: 43, size: 1536, elements: !4448)
!4447 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4448 = !{!4449, !4450, !4451, !4452, !4453, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4446, file: !4447, line: 44, baseType: !290, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4446, file: !4447, line: 45, baseType: !109, size: 32, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4446, file: !4447, line: 46, baseType: !294, size: 128, offset: 128)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4446, file: !4447, line: 47, baseType: !307, size: 32, offset: 256)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4446, file: !4447, line: 48, baseType: !4454, size: 64, offset: 320)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4446, file: !4447, line: 49, baseType: !954, size: 320, offset: 384)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4446, file: !4447, line: 50, baseType: !425, size: 64, offset: 704)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4446, file: !4447, line: 51, baseType: !1609, size: 64, offset: 768)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4446, file: !4447, line: 52, baseType: !1609, size: 64, offset: 832)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4446, file: !4447, line: 53, baseType: !1609, size: 64, offset: 896)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4446, file: !4447, line: 54, baseType: !1609, size: 64, offset: 960)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4446, file: !4447, line: 55, baseType: !1609, size: 64, offset: 1024)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4446, file: !4447, line: 56, baseType: !425, size: 64, offset: 1088)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4446, file: !4447, line: 57, baseType: !425, size: 64, offset: 1152)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4446, file: !4447, line: 58, baseType: !425, size: 64, offset: 1216)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4446, file: !4447, line: 59, baseType: !425, size: 64, offset: 1280)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4446, file: !4447, line: 60, baseType: !425, size: 64, offset: 1344)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4446, file: !4447, line: 61, baseType: !4274, size: 64, offset: 1408)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4446, file: !4447, line: 62, baseType: !270, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4446, file: !4447, line: 63, baseType: !270, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4427, file: !101, line: 681, baseType: !270, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4427, file: !101, line: 682, baseType: !270, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4427, file: !101, line: 683, baseType: !270, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4427, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4427, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4427, file: !101, line: 690, baseType: !1601, size: 512, offset: 640)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4427, file: !101, line: 691, baseType: !526, size: 64, offset: 1152)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4427, file: !101, line: 692, baseType: !972, size: 256, offset: 1216)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4427, file: !101, line: 693, baseType: !1467, size: 192, offset: 1472)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4427, file: !101, line: 694, baseType: !4454, size: 64, offset: 1664)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4427, file: !101, line: 695, baseType: !327, size: 32, offset: 1728)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4427, file: !101, line: 696, baseType: !327, size: 32, offset: 1760)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4427, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4427, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4427, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4427, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4427, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4427, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4427, file: !101, line: 703, baseType: !270, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4427, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4427, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4427, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4427, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4427, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4427, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4427, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4427, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4427, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4427, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4427, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4427, file: !101, line: 715, baseType: !526, size: 64, offset: 2048)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4427, file: !101, line: 716, baseType: !526, size: 64, offset: 2112)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4427, file: !101, line: 717, baseType: !526, size: 64, offset: 2176)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4427, file: !101, line: 718, baseType: !526, size: 64, offset: 2240)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4427, file: !101, line: 720, baseType: !4506, size: 64, offset: 2304)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4508)
!4508 = !{!4509, !4510}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4507, file: !101, line: 633, baseType: !307, size: 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4507, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4427, file: !101, line: 721, baseType: !4512, size: 64, offset: 2368)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{null, !4274, !710}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4427, file: !101, line: 722, baseType: !4516, size: 64, offset: 2432)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !283, file: !94, line: 727, baseType: !4519, size: 64, offset: 4224)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4521)
!4521 = !{!4522, !4523, !4524, !4528, !4529, !4530}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4520, file: !101, line: 743, baseType: !4302, size: 1472)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4520, file: !101, line: 744, baseType: !4305, size: 64, offset: 1472)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4520, file: !101, line: 745, baseType: !4525, size: 64, offset: 1536)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{null, !4274, !270}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4520, file: !101, line: 746, baseType: !4305, size: 64, offset: 1600)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4520, file: !101, line: 747, baseType: !4296, size: 64, offset: 1664)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4520, file: !101, line: 748, baseType: !4296, size: 64, offset: 1728)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !283, file: !94, line: 736, baseType: !4532, size: 128, offset: 4288)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4533)
!4533 = !{!4534, !4538}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4532, file: !94, line: 531, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4537, line: 13, flags: DIFlagFwdDecl)
!4537 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4532, file: !94, line: 532, baseType: !4539, size: 64, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !283, file: !94, line: 738, baseType: !4542, size: 64, offset: 4416)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4544)
!4544 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !283, file: !94, line: 740, baseType: !4546, size: 64, offset: 4480)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !283, file: !94, line: 741, baseType: !526, size: 64, offset: 4544)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !283, file: !94, line: 746, baseType: !526, size: 64, offset: 4608)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !283, file: !94, line: 747, baseType: !4550, size: 64, offset: 4672)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4552)
!4552 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !283, file: !94, line: 749, baseType: !4554, size: 64, offset: 4736)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4556)
!4556 = !{!4557, !4558, !4559}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4555, file: !94, line: 433, baseType: !7, size: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4555, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4555, file: !94, line: 435, baseType: !425, size: 64, offset: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !283, file: !94, line: 751, baseType: !294, size: 128, offset: 4800)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !283, file: !94, line: 762, baseType: !4562, size: 64, offset: 4928)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !283, file: !94, line: 770, baseType: !4565, offset: 4992)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4566, line: 5, elements: !1001)
!4566 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !283, file: !94, line: 772, baseType: !4568, size: 64, offset: 4992)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4570, line: 18, flags: DIFlagFwdDecl)
!4570 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !283, file: !94, line: 773, baseType: !252, size: 64, offset: 5056)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !283, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !283, file: !94, line: 778, baseType: !609, size: 32, offset: 5152)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !283, file: !94, line: 779, baseType: !239, size: 32, offset: 5184)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !283, file: !94, line: 781, baseType: !307, size: 32, offset: 5216)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !283, file: !94, line: 782, baseType: !294, size: 128, offset: 5248)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !283, file: !94, line: 784, baseType: !4578, size: 64, offset: 5376)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4580)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4581, line: 52, size: 768, elements: !4582)
!4581 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4582 = !{!4583, !4584, !4585, !4586, !4587, !4591, !4595, !4596, !4597, !4598, !4602, !4606}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4580, file: !4581, line: 53, baseType: !290, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4580, file: !4581, line: 55, baseType: !427, size: 64, offset: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4580, file: !4581, line: 56, baseType: !427, size: 64, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4580, file: !4581, line: 58, baseType: !4287, size: 64, offset: 192)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4580, file: !4581, line: 59, baseType: !4588, size: 64, offset: 256)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!375, !281, !4294}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4580, file: !4581, line: 61, baseType: !4592, size: 64, offset: 320)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{null, !4578}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4580, file: !4581, line: 62, baseType: !4296, size: 64, offset: 384)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4580, file: !4581, line: 64, baseType: !4305, size: 64, offset: 448)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4580, file: !4581, line: 66, baseType: !4126, size: 64, offset: 512)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4580, file: !4581, line: 67, baseType: !4599, size: 64, offset: 576)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!279, !281}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4580, file: !4581, line: 69, baseType: !4603, size: 64, offset: 640)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{null, !281, !4158, !4159}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4580, file: !4581, line: 71, baseType: !4300, size: 64, offset: 704)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !283, file: !94, line: 785, baseType: !427, size: 64, offset: 5440)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !283, file: !94, line: 787, baseType: !4296, size: 64, offset: 5504)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !283, file: !94, line: 788, baseType: !4610, size: 64, offset: 5568)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !283, file: !94, line: 789, baseType: !4613, size: 64, offset: 5632)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !283, file: !94, line: 791, baseType: !4616, size: 64, offset: 5696)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4618)
!4618 = !{!4619, !4620, !4621, !4622, !4623}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4617, file: !94, line: 598, baseType: !122, size: 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4617, file: !94, line: 599, baseType: !131, size: 32, offset: 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4617, file: !94, line: 600, baseType: !136, size: 32, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4617, file: !94, line: 601, baseType: !270, size: 8, offset: 96)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4617, file: !94, line: 602, baseType: !270, size: 8, offset: 104)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !283, file: !94, line: 793, baseType: !141, size: 32, offset: 5760)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !283, file: !94, line: 795, baseType: !270, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !283, file: !94, line: 796, baseType: !270, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !283, file: !94, line: 797, baseType: !270, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !283, file: !94, line: 798, baseType: !270, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !283, file: !94, line: 799, baseType: !270, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !256, file: !249, line: 131, baseType: !267, size: 64, offset: 256)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !256, file: !249, line: 133, baseType: !4632, size: 64, offset: 320)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!116, !273}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !256, file: !249, line: 134, baseType: !4636, size: 64, offset: 384)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!270, !273, !290}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !256, file: !249, line: 136, baseType: !4640, size: 64, offset: 448)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!109, !273, !290, !7, !233, !422}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !256, file: !249, line: 141, baseType: !4644, size: 64, offset: 512)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!109, !273, !290, !1049, !422}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !256, file: !249, line: 144, baseType: !4648, size: 64, offset: 576)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!290, !273}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !256, file: !249, line: 145, baseType: !4648, size: 64, offset: 640)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !256, file: !249, line: 146, baseType: !4653, size: 64, offset: 704)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!252, !273}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !256, file: !249, line: 148, baseType: !4657, size: 64, offset: 768)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!252, !273, !252}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !256, file: !249, line: 151, baseType: !4661, size: 64, offset: 832)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!252, !273, !290}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !256, file: !249, line: 153, baseType: !4665, size: 64, offset: 896)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!109, !273, !290, !290, !7, !7, !4668}
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !249, line: 94, size: 640, elements: !4670)
!4670 = !{!4671, !4672, !4673}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4669, file: !249, line: 95, baseType: !252, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4669, file: !249, line: 96, baseType: !7, size: 32, offset: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4669, file: !249, line: 97, baseType: !4674, size: 512, offset: 128)
!4674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 512, elements: !1644)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !256, file: !249, line: 158, baseType: !4657, size: 64, offset: 960)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !256, file: !249, line: 161, baseType: !4653, size: 64, offset: 1024)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !256, file: !249, line: 163, baseType: !259, size: 64, offset: 1088)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !256, file: !249, line: 164, baseType: !4679, size: 64, offset: 1152)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!109, !273, !4682}
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !249, line: 73, size: 128, elements: !4684)
!4684 = !{!4685, !4686, !4687}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4683, file: !249, line: 74, baseType: !7, size: 32)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4683, file: !249, line: 75, baseType: !7, size: 32, offset: 32)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4683, file: !249, line: 76, baseType: !273, size: 64, offset: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !256, file: !249, line: 166, baseType: !4689, size: 64, offset: 1216)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!233, !252, !109}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !256, file: !249, line: 167, baseType: !4693, size: 64, offset: 1280)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!109, !273, !7}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !256, file: !249, line: 168, baseType: !4697, size: 64, offset: 1344)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!109, !252}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !248, file: !249, line: 44, baseType: !4274, size: 64, offset: 128)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !248, file: !249, line: 45, baseType: !294, size: 128, offset: 192)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !248, file: !249, line: 46, baseType: !294, size: 128, offset: 320)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !249, line: 47, baseType: !335, size: 8, offset: 448)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !235, file: !236, line: 372, baseType: !294, size: 128, offset: 640)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !235, file: !236, line: 373, baseType: !294, size: 128, offset: 768)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !235, file: !236, line: 374, baseType: !4707, size: 32, offset: 896)
!4707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !236, line: 181, size: 32, elements: !4708)
!4708 = !{!4709, !4710, !4711, !4712, !4713, !4714}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !4707, file: !236, line: 182, baseType: !239, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4707, file: !236, line: 183, baseType: !239, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !4707, file: !236, line: 184, baseType: !239, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !4707, file: !236, line: 185, baseType: !239, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !4707, file: !236, line: 186, baseType: !239, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4707, file: !236, line: 187, baseType: !239, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !236, line: 375, baseType: !4716, size: 32, offset: 928)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !236, line: 192, size: 32, elements: !4717)
!4717 = !{!4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !4716, file: !236, line: 193, baseType: !239, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4716, file: !236, line: 194, baseType: !239, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !4716, file: !236, line: 195, baseType: !239, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !4716, file: !236, line: 196, baseType: !239, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4716, file: !236, line: 197, baseType: !239, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4716, file: !236, line: 198, baseType: !239, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !4716, file: !236, line: 199, baseType: !239, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !4716, file: !236, line: 200, baseType: !239, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !4716, file: !236, line: 201, baseType: !239, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !4716, file: !236, line: 202, baseType: !239, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !4716, file: !236, line: 203, baseType: !239, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !4716, file: !236, line: 204, baseType: !239, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !4716, file: !236, line: 205, baseType: !239, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !4716, file: !236, line: 206, baseType: !239, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4716, file: !236, line: 207, baseType: !239, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !235, file: !236, line: 376, baseType: !4734, size: 960, offset: 960)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !236, line: 238, size: 960, elements: !4735)
!4735 = !{!4736, !4738, !4739, !4747, !4749, !4750, !4751, !4756, !4759}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !4734, file: !236, line: 239, baseType: !4737, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !236, line: 220, baseType: !3170)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !4734, file: !236, line: 240, baseType: !109, size: 32, offset: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4734, file: !236, line: 241, baseType: !4740, size: 32, offset: 96)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !236, line: 230, size: 32, elements: !4741)
!4741 = !{!4742, !4743, !4744, !4745, !4746}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !4740, file: !236, line: 231, baseType: !239, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4740, file: !236, line: 232, baseType: !239, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !4740, file: !236, line: 233, baseType: !239, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !4740, file: !236, line: 234, baseType: !239, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4740, file: !236, line: 235, baseType: !239, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4734, file: !236, line: 242, baseType: !4748, size: 64, offset: 128)
!4748 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !236, line: 221, baseType: !526)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !4734, file: !236, line: 243, baseType: !375, size: 64, offset: 192)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4734, file: !236, line: 244, baseType: !294, size: 128, offset: 256)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4734, file: !236, line: 245, baseType: !4752, size: 320, offset: 384)
!4752 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !236, line: 222, baseType: !4753)
!4753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 320, elements: !4754)
!4754 = !{!4755}
!4755 = !DISubrange(count: 40)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !4734, file: !236, line: 246, baseType: !4757, size: 160, offset: 704)
!4757 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !236, line: 223, baseType: !4758)
!4758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 160, elements: !3472)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !4734, file: !236, line: 247, baseType: !4760, size: 64, offset: 896)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !246, line: 908, size: 192, elements: !4762)
!4762 = !{!4763, !4765, !4770, !4776, !4783, !4789, !4795, !4803}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4761, file: !246, line: 909, baseType: !4764, size: 32)
!4764 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !246, line: 644, baseType: !239)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !4761, file: !246, line: 913, baseType: !4766, size: 128)
!4766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4761, file: !246, line: 910, size: 128, elements: !4767)
!4767 = !{!4768, !4769}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4766, file: !246, line: 911, baseType: !4764, size: 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4766, file: !246, line: 912, baseType: !526, size: 64, offset: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4761, file: !246, line: 919, baseType: !4771, size: 128)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4761, file: !246, line: 915, size: 128, elements: !4772)
!4772 = !{!4773, !4774, !4775}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4771, file: !246, line: 916, baseType: !4764, size: 32)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4771, file: !246, line: 917, baseType: !239, size: 32, offset: 32)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4771, file: !246, line: 918, baseType: !375, size: 64, offset: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4761, file: !246, line: 925, baseType: !4777, size: 128)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4761, file: !246, line: 921, size: 128, elements: !4778)
!4778 = !{!4779, !4780, !4781}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4777, file: !246, line: 922, baseType: !4764, size: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4777, file: !246, line: 923, baseType: !239, size: 32, offset: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4777, file: !246, line: 924, baseType: !4782, size: 64, offset: 64)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !4761, file: !246, line: 931, baseType: !4784, size: 128)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4761, file: !246, line: 927, size: 128, elements: !4785)
!4785 = !{!4786, !4787, !4788}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4784, file: !246, line: 928, baseType: !4764, size: 32)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4784, file: !246, line: 929, baseType: !239, size: 32, offset: 32)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !4784, file: !246, line: 930, baseType: !4760, size: 64, offset: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !4761, file: !246, line: 937, baseType: !4790, size: 128)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4761, file: !246, line: 933, size: 128, elements: !4791)
!4791 = !{!4792, !4793, !4794}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4790, file: !246, line: 934, baseType: !4764, size: 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !4790, file: !246, line: 935, baseType: !4764, size: 32, offset: 32)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4790, file: !246, line: 936, baseType: !245, size: 64, offset: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !4761, file: !246, line: 944, baseType: !4796, size: 192)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4761, file: !246, line: 939, size: 192, elements: !4797)
!4797 = !{!4798, !4799, !4800, !4802}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4796, file: !246, line: 940, baseType: !4764, size: 32)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !4796, file: !246, line: 941, baseType: !239, size: 32, offset: 32)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !4796, file: !246, line: 942, baseType: !4801, size: 64, offset: 64)
!4801 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !246, line: 128, baseType: !526)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !4796, file: !246, line: 943, baseType: !239, size: 32, offset: 128)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !4761, file: !246, line: 950, baseType: !4804, size: 96)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4761, file: !246, line: 946, size: 96, elements: !4805)
!4805 = !{!4806, !4807, !4808}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4804, file: !246, line: 947, baseType: !4764, size: 32)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !4804, file: !246, line: 948, baseType: !239, size: 32, offset: 32)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !4804, file: !246, line: 949, baseType: !239, size: 32, offset: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !235, file: !236, line: 377, baseType: !4810, size: 1408, offset: 1920)
!4810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !236, line: 280, size: 1408, elements: !4811)
!4811 = !{!4812, !4813, !4823, !4838}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4810, file: !236, line: 281, baseType: !109, size: 32)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4810, file: !236, line: 282, baseType: !4814, size: 32, offset: 32)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !236, line: 259, size: 32, elements: !4815)
!4815 = !{!4816, !4817, !4818, !4819, !4820, !4821, !4822}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !4814, file: !236, line: 260, baseType: !239, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !4814, file: !236, line: 261, baseType: !239, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !4814, file: !236, line: 262, baseType: !239, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !4814, file: !236, line: 263, baseType: !239, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !4814, file: !236, line: 264, baseType: !239, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !4814, file: !236, line: 265, baseType: !239, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4814, file: !236, line: 266, baseType: !239, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4810, file: !236, line: 283, baseType: !4824, size: 1280, offset: 64)
!4824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4825, size: 1280, elements: !4836)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !236, line: 269, size: 256, elements: !4826)
!4826 = !{!4827, !4833, !4834, !4835}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4825, file: !236, line: 274, baseType: !4828, size: 8)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4825, file: !236, line: 270, size: 8, elements: !4829)
!4829 = !{!4830, !4831, !4832}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4828, file: !236, line: 271, baseType: !335, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !4828, file: !236, line: 272, baseType: !335, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4828, file: !236, line: 273, baseType: !335, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4825, file: !236, line: 275, baseType: !109, size: 32, offset: 32)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4825, file: !236, line: 276, baseType: !109, size: 32, offset: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4825, file: !236, line: 277, baseType: !294, size: 128, offset: 128)
!4836 = !{!4837}
!4837 = !DISubrange(count: 5)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !4810, file: !236, line: 284, baseType: !335, size: 8, offset: 1344)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !235, file: !236, line: 378, baseType: !4840, size: 640, offset: 3328)
!4840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !236, line: 330, size: 640, elements: !4841)
!4841 = !{!4842, !4843, !4844, !4845, !4846, !4851, !4860, !4861, !4862}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !4840, file: !236, line: 331, baseType: !245, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !4840, file: !236, line: 332, baseType: !526, size: 64, offset: 64)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !4840, file: !236, line: 333, baseType: !526, size: 64, offset: 128)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4840, file: !236, line: 334, baseType: !294, size: 128, offset: 192)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4840, file: !236, line: 335, baseType: !4847, size: 8, offset: 320)
!4847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !236, line: 320, size: 8, elements: !4848)
!4848 = !{!4849, !4850}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4847, file: !236, line: 321, baseType: !335, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !4847, file: !236, line: 322, baseType: !335, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4840, file: !236, line: 336, baseType: !4852, size: 128, offset: 384)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !236, line: 325, size: 128, elements: !4853)
!4853 = !{!4854, !4859}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4852, file: !236, line: 326, baseType: !4855, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{null, !4858}
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4852, file: !236, line: 327, baseType: !4274, size: 64, offset: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !4840, file: !236, line: 337, baseType: !4445, size: 64, offset: 512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !4840, file: !236, line: 338, baseType: !109, size: 32, offset: 576)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !4840, file: !236, line: 339, baseType: !109, size: 32, offset: 608)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !235, file: !236, line: 379, baseType: !4864, size: 192, offset: 3968)
!4864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !236, line: 312, size: 192, elements: !4865)
!4865 = !{!4866, !4867, !4871, !4872}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4864, file: !236, line: 313, baseType: !109, size: 32)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4864, file: !236, line: 314, baseType: !4868, size: 8, offset: 32)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !236, line: 298, size: 8, elements: !4869)
!4869 = !{!4870}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4868, file: !236, line: 299, baseType: !335, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4864, file: !236, line: 315, baseType: !109, size: 32, offset: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4864, file: !236, line: 316, baseType: !4873, size: 64, offset: 128)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !236, line: 302, size: 64, elements: !4875)
!4875 = !{!4876, !4881, !4882, !4883}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4874, file: !236, line: 306, baseType: !4877, size: 8)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4874, file: !236, line: 303, size: 8, elements: !4878)
!4878 = !{!4879, !4880}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4877, file: !236, line: 304, baseType: !335, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4877, file: !236, line: 305, baseType: !335, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4874, file: !236, line: 307, baseType: !335, size: 8, offset: 8)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4874, file: !236, line: 308, baseType: !335, size: 8, offset: 16)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4874, file: !236, line: 309, baseType: !109, size: 32, offset: 32)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !235, file: !236, line: 380, baseType: !4885, size: 64, offset: 4160)
!4885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !236, line: 212, size: 64, elements: !4886)
!4886 = !{!4887}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4885, file: !236, line: 213, baseType: !4888, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !236, line: 86, flags: DIFlagFwdDecl)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !235, file: !236, line: 381, baseType: !4891, size: 384, offset: 4224)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !236, line: 357, size: 384, elements: !4892)
!4892 = !{!4893, !4896, !4897, !4898}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4891, file: !236, line: 358, baseType: !4894, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4761)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4891, file: !236, line: 359, baseType: !294, size: 128, offset: 64)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4891, file: !236, line: 360, baseType: !4894, size: 64, offset: 192)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4891, file: !236, line: 361, baseType: !294, size: 128, offset: 256)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !235, file: !236, line: 382, baseType: !4900, size: 64, offset: 4608)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !236, line: 124, size: 1216, elements: !4902)
!4902 = !{!4903, !4904, !4905, !4910, !4914, !4918, !4919, !4920}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4901, file: !236, line: 125, baseType: !4368, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4901, file: !236, line: 126, baseType: !294, size: 128, offset: 64)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4901, file: !236, line: 127, baseType: !4906, size: 64, offset: 192)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!270, !290, !4909}
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4901, file: !236, line: 128, baseType: !4911, size: 64, offset: 256)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!109, !234, !4368}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4901, file: !236, line: 129, baseType: !4915, size: 64, offset: 320)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{null, !234}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4901, file: !236, line: 130, baseType: !4296, size: 64, offset: 384)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4901, file: !236, line: 131, baseType: !4296, size: 64, offset: 448)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4901, file: !236, line: 132, baseType: !4921, size: 704, offset: 512)
!4921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !236, line: 110, size: 704, elements: !4922)
!4922 = !{!4923, !4924, !4928, !4929, !4930}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4921, file: !236, line: 111, baseType: !286, size: 512)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4921, file: !236, line: 112, baseType: !4925, size: 64, offset: 512)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!109, !234}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4921, file: !236, line: 113, baseType: !4915, size: 64, offset: 576)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4921, file: !236, line: 114, baseType: !270, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4921, file: !236, line: 115, baseType: !270, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !235, file: !236, line: 383, baseType: !4932, size: 64, offset: 4672)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !236, line: 140, size: 256, elements: !4934)
!4934 = !{!4935, !4936, !4940, !4944}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4933, file: !236, line: 141, baseType: !234, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4933, file: !236, line: 142, baseType: !4937, size: 64, offset: 64)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!109, !234, !239}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4933, file: !236, line: 143, baseType: !4941, size: 64, offset: 128)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{null, !234, !239}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4933, file: !236, line: 144, baseType: !4915, size: 64, offset: 192)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !235, file: !236, line: 384, baseType: !4946, size: 64, offset: 4736)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4948)
!4948 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !236, line: 364, flags: DIFlagFwdDecl)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !235, file: !236, line: 385, baseType: !233, size: 64, offset: 4800)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !235, file: !236, line: 386, baseType: !283, size: 5824, offset: 4864)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !235, file: !236, line: 387, baseType: !7, size: 32, offset: 10688)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !235, file: !236, line: 388, baseType: !7, size: 32, offset: 10720)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !235, file: !236, line: 389, baseType: !294, size: 128, offset: 10752)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !235, file: !236, line: 390, baseType: !714, size: 256, offset: 10880)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !235, file: !236, line: 391, baseType: !4915, size: 64, offset: 11136)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_dma", file: !4958, line: 41, size: 384, elements: !4959)
!4958 = !DIFile(filename: "./include/linux/acpi_dma.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da35b2dc3670d4769a9e24efcd24db73")
!4959 = !{!4960, !4961, !4962, !5276, !5277, !5278}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "dma_controllers", scope: !4957, file: !4958, line: 42, baseType: !294, size: 128)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4957, file: !4958, line: 43, baseType: !4274, size: 64, offset: 128)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_dma_xlate", scope: !4957, file: !4958, line: 44, baseType: !4963, size: 64, offset: 192)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!4966, !5270, !4956}
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan", file: !148, line: 328, size: 896, elements: !4968)
!4968 = !{!4969, !5236, !5237, !5238, !5239, !5240, !5248, !5249, !5250, !5251, !5257, !5258, !5259, !5268, !5269}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4967, file: !148, line: 329, baseType: !4970, size: 64)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_device", file: !148, line: 854, size: 3072, elements: !4972)
!4972 = !{!4973, !4974, !4975, !4976, !4977, !4978, !4995, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5027, !5028, !5032, !5098, !5103, !5108, !5112, !5116, !5120, !5134, !5138, !5142, !5146, !5170, !5174, !5192, !5211, !5212, !5213, !5214, !5215, !5226, !5227, !5231, !5235}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4971, file: !148, line: 855, baseType: !4264, size: 32)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "chancnt", scope: !4971, file: !148, line: 856, baseType: !7, size: 32, offset: 32)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "privatecnt", scope: !4971, file: !148, line: 857, baseType: !7, size: 32, offset: 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !4971, file: !148, line: 858, baseType: !294, size: 128, offset: 128)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "global_node", scope: !4971, file: !148, line: 859, baseType: !294, size: 128, offset: 256)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4971, file: !148, line: 860, baseType: !4979, size: 192, offset: 384)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_filter", file: !148, line: 768, size: 192, elements: !4980)
!4980 = !{!4981, !4986, !4987}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4979, file: !148, line: 769, baseType: !4982, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_filter_fn", file: !148, line: 533, baseType: !4983)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!270, !4966, !233}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "mapcnt", scope: !4979, file: !148, line: 770, baseType: !109, size: 32, offset: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4979, file: !148, line: 771, baseType: !4988, size: 64, offset: 128)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4990)
!4990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_map", file: !148, line: 755, size: 192, elements: !4991)
!4991 = !{!4992, !4993, !4994}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !4990, file: !148, line: 756, baseType: !290, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !4990, file: !148, line: 757, baseType: !290, size: 64, offset: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4990, file: !148, line: 758, baseType: !233, size: 64, offset: 128)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "cap_mask", scope: !4971, file: !148, line: 861, baseType: !4996, size: 64, offset: 576)
!4996 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_cap_mask_t", file: !148, line: 230, baseType: !4997)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 230, size: 64, elements: !4998)
!4998 = !{!4999}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4997, file: !148, line: 230, baseType: !1728, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "desc_metadata_modes", scope: !4971, file: !148, line: 862, baseType: !147, size: 32, offset: 640)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "max_xor", scope: !4971, file: !148, line: 863, baseType: !345, size: 16, offset: 672)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "max_pq", scope: !4971, file: !148, line: 864, baseType: !345, size: 16, offset: 688)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "copy_align", scope: !4971, file: !148, line: 865, baseType: !153, size: 32, offset: 704)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "xor_align", scope: !4971, file: !148, line: 866, baseType: !153, size: 32, offset: 736)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "pq_align", scope: !4971, file: !148, line: 867, baseType: !153, size: 32, offset: 768)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "fill_align", scope: !4971, file: !148, line: 868, baseType: !153, size: 32, offset: 800)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4971, file: !148, line: 871, baseType: !109, size: 32, offset: 832)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4971, file: !148, line: 872, baseType: !4274, size: 64, offset: 896)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4971, file: !148, line: 873, baseType: !643, size: 64, offset: 960)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "chan_ida", scope: !4971, file: !148, line: 874, baseType: !5011, size: 128, offset: 1024)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !5012, line: 246, size: 128, elements: !5013)
!5012 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!5013 = !{!5014}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5011, file: !5012, line: 247, baseType: !2162, size: 128)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_widths", scope: !4971, file: !148, line: 876, baseType: !239, size: 32, offset: 1152)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_widths", scope: !4971, file: !148, line: 877, baseType: !239, size: 32, offset: 1184)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "directions", scope: !4971, file: !148, line: 878, baseType: !239, size: 32, offset: 1216)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "min_burst", scope: !4971, file: !148, line: 879, baseType: !239, size: 32, offset: 1248)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "max_burst", scope: !4971, file: !148, line: 880, baseType: !239, size: 32, offset: 1280)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "max_sg_burst", scope: !4971, file: !148, line: 881, baseType: !239, size: 32, offset: 1312)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_reuse", scope: !4971, file: !148, line: 882, baseType: !270, size: 8, offset: 1344)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "residue_granularity", scope: !4971, file: !148, line: 883, baseType: !164, size: 32, offset: 1376)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "device_alloc_chan_resources", scope: !4971, file: !148, line: 885, baseType: !5024, size: 64, offset: 1408)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!109, !4966}
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "device_router_config", scope: !4971, file: !148, line: 886, baseType: !5024, size: 64, offset: 1472)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "device_free_chan_resources", scope: !4971, file: !148, line: 887, baseType: !5029, size: 64, offset: 1536)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{null, !4966}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memcpy", scope: !4971, file: !148, line: 889, baseType: !5033, size: 64, offset: 1600)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!5036, !4966, !5043, !5043, !422, !425}
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_async_tx_descriptor", file: !148, line: 602, size: 704, elements: !5038)
!5038 = !{!5039, !5041, !5042, !5044, !5045, !5049, !5053, !5055, !5066, !5067, !5080, !5081}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !5037, file: !148, line: 603, baseType: !5040, size: 32)
!5040 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_cookie_t", file: !148, line: 22, baseType: !710)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5037, file: !148, line: 604, baseType: !169, size: 32, offset: 32)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !5037, file: !148, line: 605, baseType: !5043, size: 64, offset: 64)
!5043 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !271, line: 149, baseType: !526)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !5037, file: !148, line: 606, baseType: !4966, size: 64, offset: 128)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "tx_submit", scope: !5037, file: !148, line: 607, baseType: !5046, size: 64, offset: 192)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!5040, !5036}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "desc_free", scope: !5037, file: !148, line: 608, baseType: !5050, size: 64, offset: 256)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!109, !5036}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5037, file: !148, line: 609, baseType: !5054, size: 64, offset: 320)
!5054 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_async_tx_callback", file: !148, line: 535, baseType: !757)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "callback_result", scope: !5037, file: !148, line: 610, baseType: !5056, size: 64, offset: 384)
!5056 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_async_tx_callback_result", file: !148, line: 549, baseType: !5057)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{null, !233, !5060}
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5062)
!5062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmaengine_result", file: !148, line: 544, size: 64, elements: !5063)
!5063 = !{!5064, !5065}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !5062, file: !148, line: 545, baseType: !181, size: 32)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "residue", scope: !5062, file: !148, line: 546, baseType: !239, size: 32, offset: 32)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "callback_param", scope: !5037, file: !148, line: 611, baseType: !233, size: 64, offset: 448)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !5037, file: !148, line: 612, baseType: !5068, size: 64, offset: 512)
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmaengine_unmap_data", file: !148, line: 552, size: 256, elements: !5070)
!5070 = !{!5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "map_cnt", scope: !5069, file: !148, line: 556, baseType: !335, size: 8)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "to_cnt", scope: !5069, file: !148, line: 558, baseType: !335, size: 8, offset: 8)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "from_cnt", scope: !5069, file: !148, line: 559, baseType: !335, size: 8, offset: 16)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "bidi_cnt", scope: !5069, file: !148, line: 560, baseType: !335, size: 8, offset: 24)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5069, file: !148, line: 561, baseType: !4274, size: 64, offset: 64)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5069, file: !148, line: 562, baseType: !4264, size: 32, offset: 128)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5069, file: !148, line: 563, baseType: !422, size: 64, offset: 192)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5069, file: !148, line: 564, baseType: !5079, offset: 256)
!5079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5043, elements: !1864)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "desc_metadata_mode", scope: !5037, file: !148, line: 613, baseType: !147, size: 32, offset: 576)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_ops", scope: !5037, file: !148, line: 614, baseType: !5082, size: 64, offset: 640)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_descriptor_metadata_ops", file: !148, line: 569, size: 192, elements: !5084)
!5084 = !{!5085, !5089, !5094}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5083, file: !148, line: 570, baseType: !5086, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!109, !5036, !233, !422}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "get_ptr", scope: !5083, file: !148, line: 573, baseType: !5090, size: 64, offset: 64)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!233, !5036, !5093, !5093}
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "set_len", scope: !5083, file: !148, line: 575, baseType: !5095, size: 64, offset: 128)
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!109, !5036, !422}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_xor", scope: !4971, file: !148, line: 892, baseType: !5099, size: 64, offset: 1664)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!5036, !4966, !5043, !5102, !7, !422, !425}
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_xor_val", scope: !4971, file: !148, line: 895, baseType: !5104, size: 64, offset: 1728)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!5036, !4966, !5102, !7, !422, !5107, !425}
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_pq", scope: !4971, file: !148, line: 898, baseType: !5109, size: 64, offset: 1792)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!5036, !4966, !5102, !5102, !7, !530, !422, !425}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_pq_val", scope: !4971, file: !148, line: 902, baseType: !5113, size: 64, offset: 1856)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!5036, !4966, !5102, !5102, !7, !530, !422, !5107, !425}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memset", scope: !4971, file: !148, line: 906, baseType: !5117, size: 64, offset: 1920)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!5036, !4966, !5043, !109, !422, !425}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_memset_sg", scope: !4971, file: !148, line: 909, baseType: !5121, size: 64, offset: 1984)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5122, size: 64)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!5036, !4966, !5124, !7, !109, !425}
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5126, line: 11, size: 256, elements: !5127)
!5126 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!5127 = !{!5128, !5129, !5130, !5131, !5132, !5133}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5125, file: !5126, line: 12, baseType: !425, size: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5125, file: !5126, line: 13, baseType: !7, size: 32, offset: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5125, file: !5126, line: 14, baseType: !7, size: 32, offset: 96)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5125, file: !5126, line: 15, baseType: !5043, size: 64, offset: 128)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5125, file: !5126, line: 17, baseType: !7, size: 32, offset: 192)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !5125, file: !5126, line: 20, baseType: !7, size: 32, offset: 224)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_interrupt", scope: !4971, file: !148, line: 912, baseType: !5135, size: 64, offset: 2048)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{!5036, !4966, !425}
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_slave_sg", scope: !4971, file: !148, line: 915, baseType: !5139, size: 64, offset: 2112)
!5139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5140, size: 64)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!5036, !4966, !5124, !7, !191, !425, !233}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_cyclic", scope: !4971, file: !148, line: 919, baseType: !5143, size: 64, offset: 2176)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!5036, !4966, !5043, !422, !422, !191, !425}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_interleaved_dma", scope: !4971, file: !148, line: 923, baseType: !5147, size: 64, offset: 2240)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!5036, !4966, !5150, !425}
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_interleaved_template", file: !148, line: 150, size: 320, elements: !5152)
!5152 = !{!5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "src_start", scope: !5151, file: !148, line: 151, baseType: !5043, size: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "dst_start", scope: !5151, file: !148, line: 152, baseType: !5043, size: 64, offset: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5151, file: !148, line: 153, baseType: !191, size: 32, offset: 128)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "src_inc", scope: !5151, file: !148, line: 154, baseType: !270, size: 8, offset: 160)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "dst_inc", scope: !5151, file: !148, line: 155, baseType: !270, size: 8, offset: 168)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "src_sgl", scope: !5151, file: !148, line: 156, baseType: !270, size: 8, offset: 176)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "dst_sgl", scope: !5151, file: !148, line: 157, baseType: !270, size: 8, offset: 184)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "numf", scope: !5151, file: !148, line: 158, baseType: !422, size: 64, offset: 192)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "frame_size", scope: !5151, file: !148, line: 159, baseType: !422, size: 64, offset: 256)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !5151, file: !148, line: 160, baseType: !5163, offset: 320)
!5163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5164, elements: !1864)
!5164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_chunk", file: !148, line: 125, size: 256, elements: !5165)
!5165 = !{!5166, !5167, !5168, !5169}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5164, file: !148, line: 126, baseType: !422, size: 64)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "icg", scope: !5164, file: !148, line: 127, baseType: !422, size: 64, offset: 64)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "dst_icg", scope: !5164, file: !148, line: 128, baseType: !422, size: 64, offset: 128)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "src_icg", scope: !5164, file: !148, line: 129, baseType: !422, size: 64, offset: 192)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "device_prep_dma_imm_data", scope: !4971, file: !148, line: 926, baseType: !5171, size: 64, offset: 2304)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DISubroutineType(types: !5173)
!5173 = !{!5036, !4966, !5043, !526, !425}
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "device_caps", scope: !4971, file: !148, line: 930, baseType: !5175, size: 64, offset: 2368)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{null, !4966, !5178}
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_caps", file: !148, line: 501, size: 288, elements: !5180)
!5180 = !{!5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_widths", scope: !5179, file: !148, line: 502, baseType: !239, size: 32)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_widths", scope: !5179, file: !148, line: 503, baseType: !239, size: 32, offset: 32)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "directions", scope: !5179, file: !148, line: 504, baseType: !239, size: 32, offset: 64)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "min_burst", scope: !5179, file: !148, line: 505, baseType: !239, size: 32, offset: 96)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "max_burst", scope: !5179, file: !148, line: 506, baseType: !239, size: 32, offset: 128)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "max_sg_burst", scope: !5179, file: !148, line: 507, baseType: !239, size: 32, offset: 160)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_pause", scope: !5179, file: !148, line: 508, baseType: !270, size: 8, offset: 192)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_resume", scope: !5179, file: !148, line: 509, baseType: !270, size: 8, offset: 200)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_terminate", scope: !5179, file: !148, line: 510, baseType: !270, size: 8, offset: 208)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "residue_granularity", scope: !5179, file: !148, line: 511, baseType: !164, size: 32, offset: 224)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_reuse", scope: !5179, file: !148, line: 512, baseType: !270, size: 8, offset: 256)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "device_config", scope: !4971, file: !148, line: 931, baseType: !5193, size: 64, offset: 2432)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!109, !4966, !5196}
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_slave_config", file: !148, line: 437, size: 576, elements: !5198)
!5198 = !{!5199, !5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210}
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !5197, file: !148, line: 438, baseType: !191, size: 32)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !5197, file: !148, line: 439, baseType: !3376, size: 64, offset: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr", scope: !5197, file: !148, line: 440, baseType: !3376, size: 64, offset: 128)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr_width", scope: !5197, file: !148, line: 441, baseType: !198, size: 32, offset: 192)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "dst_addr_width", scope: !5197, file: !148, line: 442, baseType: !198, size: 32, offset: 224)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "src_maxburst", scope: !5197, file: !148, line: 443, baseType: !239, size: 32, offset: 256)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "dst_maxburst", scope: !5197, file: !148, line: 444, baseType: !239, size: 32, offset: 288)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "src_port_window_size", scope: !5197, file: !148, line: 445, baseType: !239, size: 32, offset: 320)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "dst_port_window_size", scope: !5197, file: !148, line: 446, baseType: !239, size: 32, offset: 352)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "device_fc", scope: !5197, file: !148, line: 447, baseType: !270, size: 8, offset: 384)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "peripheral_config", scope: !5197, file: !148, line: 448, baseType: !233, size: 64, offset: 448)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "peripheral_size", scope: !5197, file: !148, line: 449, baseType: !422, size: 64, offset: 512)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "device_pause", scope: !4971, file: !148, line: 932, baseType: !5024, size: 64, offset: 2496)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "device_resume", scope: !4971, file: !148, line: 933, baseType: !5024, size: 64, offset: 2560)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "device_terminate_all", scope: !4971, file: !148, line: 934, baseType: !5024, size: 64, offset: 2624)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "device_synchronize", scope: !4971, file: !148, line: 935, baseType: !5029, size: 64, offset: 2688)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "device_tx_status", scope: !4971, file: !148, line: 937, baseType: !5216, size: 64, offset: 2752)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = !DISubroutineType(types: !5218)
!5218 = !{!210, !4966, !5040, !5219}
!5219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 64)
!5220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_tx_state", file: !148, line: 725, size: 128, elements: !5221)
!5221 = !{!5222, !5223, !5224, !5225}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5220, file: !148, line: 726, baseType: !5040, size: 32)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !5220, file: !148, line: 727, baseType: !5040, size: 32, offset: 32)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "residue", scope: !5220, file: !148, line: 728, baseType: !239, size: 32, offset: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "in_flight_bytes", scope: !5220, file: !148, line: 729, baseType: !239, size: 32, offset: 96)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "device_issue_pending", scope: !4971, file: !148, line: 940, baseType: !5029, size: 64, offset: 2816)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "device_release", scope: !4971, file: !148, line: 941, baseType: !5228, size: 64, offset: 2880)
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{null, !4970}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_summary_show", scope: !4971, file: !148, line: 943, baseType: !5232, size: 64, offset: 2944)
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{null, !1154, !4970}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_dev_root", scope: !4971, file: !148, line: 944, baseType: !490, size: 64, offset: 3008)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "slave", scope: !4967, file: !148, line: 330, baseType: !4274, size: 64, offset: 64)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !4967, file: !148, line: 331, baseType: !5040, size: 32, offset: 128)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "completed_cookie", scope: !4967, file: !148, line: 332, baseType: !5040, size: 32, offset: 160)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "chan_id", scope: !4967, file: !148, line: 335, baseType: !109, size: 32, offset: 192)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4967, file: !148, line: 336, baseType: !5241, size: 64, offset: 256)
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan_dev", file: !148, line: 362, size: 5952, elements: !5243)
!5243 = !{!5244, !5245, !5246, !5247}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !5242, file: !148, line: 363, baseType: !4966, size: 64)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5242, file: !148, line: 364, baseType: !283, size: 5824, offset: 64)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !5242, file: !148, line: 365, baseType: !109, size: 32, offset: 5888)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "chan_dma_dev", scope: !5242, file: !148, line: 366, baseType: !270, size: 8, offset: 5920)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4967, file: !148, line: 337, baseType: !290, size: 64, offset: 320)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "dbg_client_name", scope: !4967, file: !148, line: 339, baseType: !375, size: 64, offset: 384)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !4967, file: !148, line: 342, baseType: !294, size: 128, offset: 448)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !4967, file: !148, line: 343, baseType: !5252, size: 64, offset: 576)
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_chan_percpu", file: !148, line: 293, size: 128, elements: !5254)
!5254 = !{!5255, !5256}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_count", scope: !5253, file: !148, line: 295, baseType: !425, size: 64)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_transferred", scope: !5253, file: !148, line: 296, baseType: !425, size: 64, offset: 64)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "client_count", scope: !4967, file: !148, line: 344, baseType: !109, size: 32, offset: 640)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "table_count", scope: !4967, file: !148, line: 345, baseType: !109, size: 32, offset: 672)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "router", scope: !4967, file: !148, line: 348, baseType: !5260, size: 64, offset: 704)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_router", file: !148, line: 304, size: 128, elements: !5262)
!5262 = !{!5263, !5264}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5261, file: !148, line: 305, baseType: !4274, size: 64)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "route_free", scope: !5261, file: !148, line: 306, baseType: !5265, size: 64, offset: 64)
!5265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5266, size: 64)
!5266 = !DISubroutineType(types: !5267)
!5267 = !{null, !4274, !233}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "route_data", scope: !4967, file: !148, line: 349, baseType: !233, size: 64, offset: 768)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4967, file: !148, line: 351, baseType: !233, size: 64, offset: 832)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_dma_spec", file: !4958, line: 26, size: 128, elements: !5272)
!5272 = !{!5273, !5274, !5275}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "chan_id", scope: !5271, file: !4958, line: 27, baseType: !109, size: 32)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "slave_id", scope: !5271, file: !4958, line: 28, baseType: !109, size: 32, offset: 32)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5271, file: !4958, line: 29, baseType: !4274, size: 64, offset: 64)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4957, file: !4958, line: 46, baseType: !233, size: 64, offset: 256)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "base_request_line", scope: !4957, file: !4958, line: 47, baseType: !345, size: 16, offset: 320)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "end_request_line", scope: !4957, file: !4958, line: 48, baseType: !345, size: 16, offset: 336)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !5282, line: 68, size: 288, elements: !5283)
!5282 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!5283 = !{!5284, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !5281, file: !5282, line: 69, baseType: !5285, size: 32)
!5285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 32, elements: !942)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5281, file: !5282, line: 70, baseType: !239, size: 32, offset: 32)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !5281, file: !5282, line: 71, baseType: !335, size: 8, offset: 64)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !5281, file: !5282, line: 72, baseType: !335, size: 8, offset: 72)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !5281, file: !5282, line: 73, baseType: !1946, size: 48, offset: 80)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !5281, file: !5282, line: 74, baseType: !3170, size: 64, offset: 128)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !5281, file: !5282, line: 75, baseType: !239, size: 32, offset: 192)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !5281, file: !5282, line: 76, baseType: !5285, size: 32, offset: 224)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !5281, file: !5282, line: 77, baseType: !239, size: 32, offset: 256)
!5294 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !246, line: 421, baseType: !239)
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5296, size: 64)
!5296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_csrt_group", file: !5297, line: 623, size: 192, elements: !5298)
!5297 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "82b9176197c6884c1b7affcb8f534260")
!5298 = !{!5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5296, file: !5297, line: 624, baseType: !239, size: 32)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !5296, file: !5297, line: 625, baseType: !239, size: 32, offset: 32)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor_id", scope: !5296, file: !5297, line: 626, baseType: !239, size: 32, offset: 64)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !5296, file: !5297, line: 627, baseType: !343, size: 16, offset: 96)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice_id", scope: !5296, file: !5297, line: 628, baseType: !343, size: 16, offset: 112)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !5296, file: !5297, line: 629, baseType: !343, size: 16, offset: 128)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5296, file: !5297, line: 630, baseType: !343, size: 16, offset: 144)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "shared_info_length", scope: !5296, file: !5297, line: 631, baseType: !239, size: 32, offset: 160)
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5308, size: 64)
!5308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_entry", file: !5309, line: 23, size: 768, elements: !5310)
!5309 = !DIFile(filename: "./include/linux/resource_ext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38257f3d7ebf1230f659bba39b1a0b6a")
!5310 = !{!5311, !5312, !5326, !5327}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5308, file: !5309, line: 24, baseType: !294, size: 128)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !5308, file: !5309, line: 25, baseType: !5313, size: 64, offset: 128)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !5315, line: 21, size: 512, elements: !5316)
!5315 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!5316 = !{!5317, !5319, !5320, !5321, !5322, !5323, !5324, !5325}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5314, file: !5315, line: 22, baseType: !5318, size: 64)
!5318 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !271, line: 164, baseType: !3376)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5314, file: !5315, line: 23, baseType: !5318, size: 64, offset: 64)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5314, file: !5315, line: 24, baseType: !290, size: 64, offset: 128)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5314, file: !5315, line: 25, baseType: !425, size: 64, offset: 192)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5314, file: !5315, line: 26, baseType: !425, size: 64, offset: 256)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5314, file: !5315, line: 27, baseType: !5313, size: 64, offset: 320)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5314, file: !5315, line: 27, baseType: !5313, size: 64, offset: 384)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5314, file: !5315, line: 27, baseType: !5313, size: 64, offset: 448)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5308, file: !5309, line: 26, baseType: !5318, size: 64, offset: 192)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "__res", scope: !5308, file: !5309, line: 27, baseType: !5314, size: 512, offset: 256)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!5329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5330)
!5330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_csrt_shared_info", file: !5297, line: 638, size: 224, elements: !5331)
!5331 = !{!5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343}
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "major_version", scope: !5330, file: !5297, line: 639, baseType: !343, size: 16)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !5330, file: !5297, line: 640, baseType: !343, size: 16, offset: 16)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_base_low", scope: !5330, file: !5297, line: 641, baseType: !239, size: 32, offset: 32)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_base_high", scope: !5330, file: !5297, line: 642, baseType: !239, size: 32, offset: 64)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "gsi_interrupt", scope: !5330, file: !5297, line: 643, baseType: !239, size: 32, offset: 96)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_polarity", scope: !5330, file: !5297, line: 644, baseType: !335, size: 8, offset: 128)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_mode", scope: !5330, file: !5297, line: 645, baseType: !335, size: 8, offset: 136)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "num_channels", scope: !5330, file: !5297, line: 646, baseType: !335, size: 8, offset: 144)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address_width", scope: !5330, file: !5297, line: 647, baseType: !335, size: 8, offset: 152)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "base_request_line", scope: !5330, file: !5297, line: 648, baseType: !343, size: 16, offset: 160)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "num_handshake_signals", scope: !5330, file: !5297, line: 649, baseType: !343, size: 16, offset: 176)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "max_block_size", scope: !5330, file: !5297, line: 650, baseType: !239, size: 32, offset: 192)
!5344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5345, size: 64)
!5345 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !297)
!5346 = !{!5347, !5349, !5351, !5356, !5358, !5363, !5365, !5367, !5372, !5375, !5377, !5379, !5381, !5386, !5389, !5394, !0, !5399}
!5347 = !DIGlobalVariableExpression(var: !5348, expr: !DIExpression())
!5348 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dma_controller_register289", scope: !2, file: !3, line: 206, type: !233, isLocal: true, isDefinition: true)
!5349 = !DIGlobalVariableExpression(var: !5350, expr: !DIExpression())
!5350 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dma_controller_free290", scope: !2, file: !3, line: 237, type: !233, isLocal: true, isDefinition: true)
!5351 = !DIGlobalVariableExpression(var: !5352, expr: !DIExpression())
!5352 = distinct !DIGlobalVariable(scope: null, file: !3, line: 265, type: !5353, isLocal: true, isDefinition: true)
!5353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 176, elements: !5354)
!5354 = !{!5355}
!5355 = !DISubrange(count: 22)
!5356 = !DIGlobalVariableExpression(var: !5357, expr: !DIExpression())
!5357 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_acpi_dma_controller_register291", scope: !2, file: !3, line: 277, type: !233, isLocal: true, isDefinition: true)
!5358 = !DIGlobalVariableExpression(var: !5359, expr: !DIExpression())
!5359 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !5360, isLocal: true, isDefinition: true)
!5360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 184, elements: !5361)
!5361 = !{!5362}
!5362 = !DISubrange(count: 23)
!5363 = !DIGlobalVariableExpression(var: !5364, expr: !DIExpression())
!5364 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_acpi_dma_controller_free292", scope: !2, file: !3, line: 292, type: !233, isLocal: true, isDefinition: true)
!5365 = !DIGlobalVariableExpression(var: !5366, expr: !DIExpression())
!5366 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dma_request_slave_chan_by_index293", scope: !2, file: !3, line: 422, type: !233, isLocal: true, isDefinition: true)
!5367 = !DIGlobalVariableExpression(var: !5368, expr: !DIExpression())
!5368 = distinct !DIGlobalVariable(scope: null, file: !3, line: 445, type: !5369, isLocal: true, isDefinition: true)
!5369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 80, elements: !5370)
!5370 = !{!5371}
!5371 = !DISubrange(count: 10)
!5372 = !DIGlobalVariableExpression(var: !5373, expr: !DIExpression())
!5373 = distinct !DIGlobalVariable(scope: null, file: !3, line: 447, type: !5374, isLocal: true, isDefinition: true)
!5374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 24, elements: !376)
!5375 = !DIGlobalVariableExpression(var: !5376, expr: !DIExpression())
!5376 = distinct !DIGlobalVariable(scope: null, file: !3, line: 449, type: !5374, isLocal: true, isDefinition: true)
!5377 = !DIGlobalVariableExpression(var: !5378, expr: !DIExpression())
!5378 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dma_request_slave_chan_by_name294", scope: !2, file: !3, line: 458, type: !233, isLocal: true, isDefinition: true)
!5379 = !DIGlobalVariableExpression(var: !5380, expr: !DIExpression())
!5380 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_dma_simple_xlate295", scope: !2, file: !3, line: 481, type: !233, isLocal: true, isDefinition: true)
!5381 = !DIGlobalVariableExpression(var: !5382, expr: !DIExpression())
!5382 = distinct !DIGlobalVariable(scope: null, file: !223, line: 480, type: !5383, isLocal: true, isDefinition: true)
!5383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 168, elements: !5384)
!5384 = !{!5385}
!5385 = !DISubrange(count: 21)
!5386 = !DIGlobalVariableExpression(var: !5387, expr: !DIExpression())
!5387 = distinct !DIGlobalVariable(scope: null, file: !3, line: 134, type: !5388, isLocal: true, isDefinition: true)
!5388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 40, elements: !4836)
!5389 = !DIGlobalVariableExpression(var: !5390, expr: !DIExpression())
!5390 = distinct !DIGlobalVariable(scope: null, file: !3, line: 138, type: !5391, isLocal: true, isDefinition: true)
!5391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 240, elements: !5392)
!5392 = !{!5393}
!5393 = !DISubrange(count: 30)
!5394 = !DIGlobalVariableExpression(var: !5395, expr: !DIExpression())
!5395 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !5396, isLocal: true, isDefinition: true)
!5396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 264, elements: !5397)
!5397 = !{!5398}
!5398 = !DISubrange(count: 33)
!5399 = !DIGlobalVariableExpression(var: !5400, expr: !DIExpression())
!5400 = distinct !DIGlobalVariable(name: "acpi_dma_list", scope: !2, file: !3, line: 25, type: !294, isLocal: true, isDefinition: true)
!5401 = !{i32 7, !"Dwarf Version", i32 5}
!5402 = !{i32 2, !"Debug Info Version", i32 3}
!5403 = !{i32 1, !"wchar_size", i32 2}
!5404 = !{i32 8, !"cf-protection-branch", i32 1}
!5405 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5406 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5407 = !{i32 1, !"Code Model", i32 2}
!5408 = !{i32 1, !"override-stack-alignment", i32 8}
!5409 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5410 = distinct !DISubprogram(name: "acpi_dma_controller_register", scope: !3, file: !3, line: 173, type: !5411, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5413)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{!109, !4274, !4963, !233}
!5413 = !{!5414, !5415, !5416, !5417, !5418, !5419, !5421}
!5414 = !DILocalVariable(name: "dev", arg: 1, scope: !5410, file: !3, line: 173, type: !4274)
!5415 = !DILocalVariable(name: "acpi_dma_xlate", arg: 2, scope: !5410, file: !3, line: 174, type: !4963)
!5416 = !DILocalVariable(name: "data", arg: 3, scope: !5410, file: !3, line: 176, type: !233)
!5417 = !DILocalVariable(name: "adev", scope: !5410, file: !3, line: 178, type: !234)
!5418 = !DILocalVariable(name: "adma", scope: !5410, file: !3, line: 179, type: !4956)
!5419 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !5420, file: !3, line: 185, type: !252)
!5420 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 185, column: 9)
!5421 = !DILocalVariable(name: "__mptr", scope: !5422, file: !3, line: 185, type: !233)
!5422 = distinct !DILexicalBlock(scope: !5420, file: !3, line: 185, column: 9)
!5423 = !DILocation(line: 173, column: 49, scope: !5410)
!5424 = !DILocation(line: 174, column: 22, scope: !5410)
!5425 = !DILocation(line: 176, column: 9, scope: !5410)
!5426 = !DILocation(line: 178, column: 2, scope: !5410)
!5427 = !DILocation(line: 178, column: 22, scope: !5410)
!5428 = !DILocation(line: 179, column: 2, scope: !5410)
!5429 = !DILocation(line: 179, column: 19, scope: !5410)
!5430 = !DILocation(line: 181, column: 7, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 181, column: 6)
!5432 = !DILocation(line: 181, column: 11, scope: !5431)
!5433 = !DILocation(line: 181, column: 15, scope: !5431)
!5434 = !DILocation(line: 181, column: 6, scope: !5410)
!5435 = !DILocation(line: 182, column: 3, scope: !5431)
!5436 = !DILocation(line: 185, column: 9, scope: !5420)
!5437 = !DILocation(line: 185, column: 9, scope: !5422)
!5438 = !DILocation(line: 185, column: 9, scope: !5410)
!5439 = !DILocation(line: 185, column: 7, scope: !5410)
!5440 = !DILocation(line: 186, column: 7, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 186, column: 6)
!5442 = !DILocation(line: 186, column: 6, scope: !5410)
!5443 = !DILocation(line: 187, column: 3, scope: !5441)
!5444 = !DILocation(line: 189, column: 9, scope: !5410)
!5445 = !DILocation(line: 189, column: 7, scope: !5410)
!5446 = !DILocation(line: 190, column: 7, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 190, column: 6)
!5448 = !DILocation(line: 190, column: 6, scope: !5410)
!5449 = !DILocation(line: 191, column: 3, scope: !5447)
!5450 = !DILocation(line: 193, column: 14, scope: !5410)
!5451 = !DILocation(line: 193, column: 2, scope: !5410)
!5452 = !DILocation(line: 193, column: 8, scope: !5410)
!5453 = !DILocation(line: 193, column: 12, scope: !5410)
!5454 = !DILocation(line: 194, column: 25, scope: !5410)
!5455 = !DILocation(line: 194, column: 2, scope: !5410)
!5456 = !DILocation(line: 194, column: 8, scope: !5410)
!5457 = !DILocation(line: 194, column: 23, scope: !5410)
!5458 = !DILocation(line: 195, column: 15, scope: !5410)
!5459 = !DILocation(line: 195, column: 2, scope: !5410)
!5460 = !DILocation(line: 195, column: 8, scope: !5410)
!5461 = !DILocation(line: 195, column: 13, scope: !5410)
!5462 = !DILocation(line: 197, column: 22, scope: !5410)
!5463 = !DILocation(line: 197, column: 28, scope: !5410)
!5464 = !DILocation(line: 197, column: 2, scope: !5410)
!5465 = !DILocation(line: 200, column: 2, scope: !5410)
!5466 = !DILocation(line: 201, column: 17, scope: !5410)
!5467 = !DILocation(line: 201, column: 23, scope: !5410)
!5468 = !DILocation(line: 201, column: 2, scope: !5410)
!5469 = !DILocation(line: 202, column: 2, scope: !5410)
!5470 = !DILocation(line: 204, column: 2, scope: !5410)
!5471 = !DILocation(line: 205, column: 1, scope: !5410)
!5472 = !DISubprogram(name: "is_acpi_device_node", scope: !236, file: !236, line: 410, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5473 = distinct !DISubprogram(name: "kzalloc", scope: !223, file: !223, line: 719, type: !5474, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5476)
!5474 = !DISubroutineType(types: !5475)
!5475 = !{!233, !422, !1226}
!5476 = !{!5477, !5478}
!5477 = !DILocalVariable(name: "size", arg: 1, scope: !5473, file: !223, line: 719, type: !422)
!5478 = !DILocalVariable(name: "flags", arg: 2, scope: !5473, file: !223, line: 719, type: !1226)
!5479 = !DILocation(line: 719, column: 52, scope: !5473)
!5480 = !DILocation(line: 719, column: 64, scope: !5473)
!5481 = !DILocation(line: 721, column: 17, scope: !5473)
!5482 = !DILocation(line: 721, column: 23, scope: !5473)
!5483 = !DILocation(line: 721, column: 29, scope: !5473)
!5484 = !DILocation(line: 721, column: 9, scope: !5473)
!5485 = !DILocation(line: 721, column: 2, scope: !5473)
!5486 = distinct !DISubprogram(name: "acpi_dma_parse_csrt", scope: !3, file: !3, line: 127, type: !5487, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5489)
!5487 = !DISubroutineType(types: !5488)
!5488 = !{null, !234, !4956}
!5489 = !{!5490, !5491, !5492, !5493, !5494, !5499, !5500}
!5490 = !DILocalVariable(name: "adev", arg: 1, scope: !5486, file: !3, line: 127, type: !234)
!5491 = !DILocalVariable(name: "adma", arg: 2, scope: !5486, file: !3, line: 127, type: !4956)
!5492 = !DILocalVariable(name: "grp", scope: !5486, file: !3, line: 129, type: !5295)
!5493 = !DILocalVariable(name: "end", scope: !5486, file: !3, line: 129, type: !5295)
!5494 = !DILocalVariable(name: "csrt", scope: !5486, file: !3, line: 130, type: !5495)
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!5496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_csrt", file: !5297, line: 617, size: 288, elements: !5497)
!5497 = !{!5498}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5496, file: !5297, line: 618, baseType: !5281, size: 288)
!5499 = !DILocalVariable(name: "status", scope: !5486, file: !3, line: 131, type: !5294)
!5500 = !DILocalVariable(name: "ret", scope: !5486, file: !3, line: 132, type: !109)
!5501 = !DILocation(line: 127, column: 53, scope: !5486)
!5502 = !DILocation(line: 127, column: 76, scope: !5486)
!5503 = !DILocation(line: 129, column: 2, scope: !5486)
!5504 = !DILocation(line: 129, column: 26, scope: !5486)
!5505 = !DILocation(line: 129, column: 32, scope: !5486)
!5506 = !DILocation(line: 130, column: 2, scope: !5486)
!5507 = !DILocation(line: 130, column: 26, scope: !5486)
!5508 = !DILocation(line: 131, column: 2, scope: !5486)
!5509 = !DILocation(line: 131, column: 14, scope: !5486)
!5510 = !DILocation(line: 132, column: 2, scope: !5486)
!5511 = !DILocation(line: 132, column: 6, scope: !5486)
!5512 = !DILocation(line: 134, column: 11, scope: !5486)
!5513 = !DILocation(line: 134, column: 9, scope: !5486)
!5514 = !DILocation(line: 136, column: 6, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 136, column: 6)
!5516 = !DILocation(line: 136, column: 6, scope: !5486)
!5517 = !DILocation(line: 137, column: 7, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 137, column: 7)
!5519 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 136, column: 28)
!5520 = !DILocation(line: 137, column: 14, scope: !5518)
!5521 = !DILocation(line: 137, column: 7, scope: !5519)
!5522 = !DILocation(line: 138, column: 4, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 138, column: 4)
!5524 = !DILocation(line: 138, column: 4, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 138, column: 4)
!5526 = !DILocation(line: 138, column: 4, scope: !5518)
!5527 = !DILocation(line: 139, column: 3, scope: !5519)
!5528 = !DILocation(line: 142, column: 35, scope: !5486)
!5529 = !DILocation(line: 142, column: 40, scope: !5486)
!5530 = !DILocation(line: 142, column: 6, scope: !5486)
!5531 = !DILocation(line: 143, column: 43, scope: !5486)
!5532 = !DILocation(line: 143, column: 50, scope: !5486)
!5533 = !DILocation(line: 143, column: 56, scope: !5486)
!5534 = !DILocation(line: 143, column: 63, scope: !5486)
!5535 = !DILocation(line: 143, column: 48, scope: !5486)
!5536 = !DILocation(line: 143, column: 6, scope: !5486)
!5537 = !DILocation(line: 145, column: 2, scope: !5486)
!5538 = !DILocation(line: 145, column: 9, scope: !5486)
!5539 = !DILocation(line: 145, column: 15, scope: !5486)
!5540 = !DILocation(line: 145, column: 13, scope: !5486)
!5541 = !DILocation(line: 146, column: 39, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 145, column: 20)
!5543 = !DILocation(line: 146, column: 44, scope: !5542)
!5544 = !DILocation(line: 146, column: 50, scope: !5542)
!5545 = !DILocation(line: 146, column: 9, scope: !5542)
!5546 = !DILocation(line: 146, column: 7, scope: !5542)
!5547 = !DILocation(line: 147, column: 7, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 147, column: 7)
!5549 = !DILocation(line: 147, column: 11, scope: !5548)
!5550 = !DILocation(line: 147, column: 7, scope: !5542)
!5551 = !DILocation(line: 148, column: 4, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 148, column: 4)
!5553 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 147, column: 16)
!5554 = !DILocation(line: 148, column: 4, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 148, column: 4)
!5556 = !DILocation(line: 150, column: 4, scope: !5553)
!5557 = !DILocation(line: 153, column: 44, scope: !5542)
!5558 = !DILocation(line: 153, column: 50, scope: !5542)
!5559 = !DILocation(line: 153, column: 55, scope: !5542)
!5560 = !DILocation(line: 153, column: 48, scope: !5542)
!5561 = !DILocation(line: 153, column: 7, scope: !5542)
!5562 = distinct !{!5562, !5537, !5563, !5564, !5565}
!5563 = !DILocation(line: 154, column: 2, scope: !5486)
!5564 = !{!"llvm.loop.mustprogress"}
!5565 = !{!"llvm.loop.unroll.disable"}
!5566 = !DILocation(line: 156, column: 45, scope: !5486)
!5567 = !DILocation(line: 156, column: 2, scope: !5486)
!5568 = !DILocation(line: 157, column: 1, scope: !5486)
!5569 = !DISubprogram(name: "mutex_lock", scope: !715, file: !715, line: 227, type: !5570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5570 = !DISubroutineType(types: !5571)
!5571 = !{null, !5572}
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!5573 = distinct !DISubprogram(name: "list_add_tail", scope: !5574, file: !5574, line: 181, type: !5575, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5577)
!5574 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5575 = !DISubroutineType(types: !5576)
!5576 = !{null, !297, !297}
!5577 = !{!5578, !5579}
!5578 = !DILocalVariable(name: "new", arg: 1, scope: !5573, file: !5574, line: 181, type: !297)
!5579 = !DILocalVariable(name: "head", arg: 2, scope: !5573, file: !5574, line: 181, type: !297)
!5580 = !DILocation(line: 181, column: 52, scope: !5573)
!5581 = !DILocation(line: 181, column: 75, scope: !5573)
!5582 = !DILocation(line: 183, column: 13, scope: !5573)
!5583 = !DILocation(line: 183, column: 18, scope: !5573)
!5584 = !DILocation(line: 183, column: 24, scope: !5573)
!5585 = !DILocation(line: 183, column: 30, scope: !5573)
!5586 = !DILocation(line: 183, column: 2, scope: !5573)
!5587 = !DILocation(line: 184, column: 1, scope: !5573)
!5588 = !DISubprogram(name: "mutex_unlock", scope: !715, file: !715, line: 246, type: !5570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5589 = distinct !DISubprogram(name: "acpi_dma_controller_free", scope: !3, file: !3, line: 217, type: !4306, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5590)
!5590 = !{!5591, !5592, !5593, !5596}
!5591 = !DILocalVariable(name: "dev", arg: 1, scope: !5589, file: !3, line: 217, type: !4274)
!5592 = !DILocalVariable(name: "adma", scope: !5589, file: !3, line: 219, type: !4956)
!5593 = !DILocalVariable(name: "__mptr", scope: !5594, file: !3, line: 226, type: !233)
!5594 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 226, column: 2)
!5595 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 226, column: 2)
!5596 = !DILocalVariable(name: "__mptr", scope: !5597, file: !3, line: 226, type: !233)
!5597 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 226, column: 2)
!5598 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 226, column: 2)
!5599 = !DILocation(line: 217, column: 45, scope: !5589)
!5600 = !DILocation(line: 219, column: 2, scope: !5589)
!5601 = !DILocation(line: 219, column: 19, scope: !5589)
!5602 = !DILocation(line: 221, column: 7, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 221, column: 6)
!5604 = !DILocation(line: 221, column: 6, scope: !5589)
!5605 = !DILocation(line: 222, column: 3, scope: !5603)
!5606 = !DILocation(line: 224, column: 2, scope: !5589)
!5607 = !DILocation(line: 226, column: 2, scope: !5594)
!5608 = !DILocation(line: 226, column: 2, scope: !5595)
!5609 = !DILocation(line: 226, column: 2, scope: !5598)
!5610 = !DILocation(line: 227, column: 7, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 227, column: 7)
!5612 = !DILocation(line: 227, column: 13, scope: !5611)
!5613 = !DILocation(line: 227, column: 20, scope: !5611)
!5614 = !DILocation(line: 227, column: 17, scope: !5611)
!5615 = !DILocation(line: 227, column: 7, scope: !5598)
!5616 = !DILocation(line: 228, column: 14, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 227, column: 25)
!5618 = !DILocation(line: 228, column: 20, scope: !5617)
!5619 = !DILocation(line: 228, column: 4, scope: !5617)
!5620 = !DILocation(line: 229, column: 4, scope: !5617)
!5621 = !DILocation(line: 230, column: 10, scope: !5617)
!5622 = !DILocation(line: 230, column: 4, scope: !5617)
!5623 = !DILocation(line: 231, column: 4, scope: !5617)
!5624 = !DILocation(line: 226, column: 2, scope: !5597)
!5625 = distinct !{!5625, !5608, !5626, !5564, !5565}
!5626 = !DILocation(line: 232, column: 3, scope: !5595)
!5627 = !DILocation(line: 234, column: 2, scope: !5589)
!5628 = !DILocation(line: 235, column: 2, scope: !5589)
!5629 = !DILocation(line: 236, column: 1, scope: !5589)
!5630 = distinct !DISubprogram(name: "list_del", scope: !5574, file: !5574, line: 227, type: !5631, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5633)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{null, !297}
!5633 = !{!5634}
!5634 = !DILocalVariable(name: "entry", arg: 1, scope: !5630, file: !5574, line: 227, type: !297)
!5635 = !DILocation(line: 227, column: 47, scope: !5630)
!5636 = !DILocation(line: 229, column: 19, scope: !5630)
!5637 = !DILocation(line: 229, column: 2, scope: !5630)
!5638 = !DILocation(line: 230, column: 2, scope: !5630)
!5639 = !DILocation(line: 230, column: 9, scope: !5630)
!5640 = !DILocation(line: 230, column: 14, scope: !5630)
!5641 = !DILocation(line: 231, column: 2, scope: !5630)
!5642 = !DILocation(line: 231, column: 9, scope: !5630)
!5643 = !DILocation(line: 231, column: 14, scope: !5630)
!5644 = !DILocation(line: 232, column: 1, scope: !5630)
!5645 = !DISubprogram(name: "kfree", scope: !223, file: !223, line: 227, type: !5646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5646 = !DISubroutineType(types: !5647)
!5647 = !{null, !279}
!5648 = distinct !DISubprogram(name: "devm_acpi_dma_controller_register", scope: !3, file: !3, line: 257, type: !5411, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5649)
!5649 = !{!5650, !5651, !5652, !5653, !5654}
!5650 = !DILocalVariable(name: "dev", arg: 1, scope: !5648, file: !3, line: 257, type: !4274)
!5651 = !DILocalVariable(name: "acpi_dma_xlate", arg: 2, scope: !5648, file: !3, line: 258, type: !4963)
!5652 = !DILocalVariable(name: "data", arg: 3, scope: !5648, file: !3, line: 260, type: !233)
!5653 = !DILocalVariable(name: "res", scope: !5648, file: !3, line: 262, type: !233)
!5654 = !DILocalVariable(name: "ret", scope: !5648, file: !3, line: 263, type: !109)
!5655 = !DILocation(line: 257, column: 54, scope: !5648)
!5656 = !DILocation(line: 258, column: 22, scope: !5648)
!5657 = !DILocation(line: 260, column: 9, scope: !5648)
!5658 = !DILocation(line: 262, column: 2, scope: !5648)
!5659 = !DILocation(line: 262, column: 8, scope: !5648)
!5660 = !DILocation(line: 263, column: 2, scope: !5648)
!5661 = !DILocation(line: 263, column: 6, scope: !5648)
!5662 = !DILocation(line: 265, column: 8, scope: !5648)
!5663 = !DILocation(line: 265, column: 6, scope: !5648)
!5664 = !DILocation(line: 266, column: 7, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 266, column: 6)
!5666 = !DILocation(line: 266, column: 6, scope: !5648)
!5667 = !DILocation(line: 267, column: 3, scope: !5665)
!5668 = !DILocation(line: 269, column: 37, scope: !5648)
!5669 = !DILocation(line: 269, column: 42, scope: !5648)
!5670 = !DILocation(line: 269, column: 58, scope: !5648)
!5671 = !DILocation(line: 269, column: 8, scope: !5648)
!5672 = !DILocation(line: 269, column: 6, scope: !5648)
!5673 = !DILocation(line: 270, column: 6, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 270, column: 6)
!5675 = !DILocation(line: 270, column: 6, scope: !5648)
!5676 = !DILocation(line: 271, column: 15, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 270, column: 11)
!5678 = !DILocation(line: 271, column: 3, scope: !5677)
!5679 = !DILocation(line: 272, column: 10, scope: !5677)
!5680 = !DILocation(line: 272, column: 3, scope: !5677)
!5681 = !DILocation(line: 274, column: 13, scope: !5648)
!5682 = !DILocation(line: 274, column: 18, scope: !5648)
!5683 = !DILocation(line: 274, column: 2, scope: !5648)
!5684 = !DILocation(line: 275, column: 2, scope: !5648)
!5685 = !DILocation(line: 276, column: 1, scope: !5648)
!5686 = !DISubprogram(name: "__devres_alloc_node", scope: !94, file: !94, line: 274, type: !5687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5687 = !DISubroutineType(types: !5688)
!5688 = !{!233, !5689, !422, !1226, !109, !290}
!5689 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !94, line: 271, baseType: !5265)
!5690 = distinct !DISubprogram(name: "devm_acpi_dma_release", scope: !3, file: !3, line: 239, type: !5266, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5691)
!5691 = !{!5692, !5693}
!5692 = !DILocalVariable(name: "dev", arg: 1, scope: !5690, file: !3, line: 239, type: !4274)
!5693 = !DILocalVariable(name: "res", arg: 2, scope: !5690, file: !3, line: 239, type: !233)
!5694 = !DILocation(line: 239, column: 50, scope: !5690)
!5695 = !DILocation(line: 239, column: 61, scope: !5690)
!5696 = !DILocation(line: 241, column: 27, scope: !5690)
!5697 = !DILocation(line: 241, column: 2, scope: !5690)
!5698 = !DILocation(line: 242, column: 1, scope: !5690)
!5699 = !DISubprogram(name: "devres_free", scope: !94, file: !94, line: 285, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5700 = !DISubprogram(name: "devres_add", scope: !94, file: !94, line: 286, type: !5266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5701 = distinct !DISubprogram(name: "devm_acpi_dma_controller_free", scope: !3, file: !3, line: 288, type: !4297, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5702)
!5702 = !{!5703, !5704, !5706}
!5703 = !DILocalVariable(name: "dev", arg: 1, scope: !5701, file: !3, line: 288, type: !4274)
!5704 = !DILocalVariable(name: "__ret_warn_on", scope: !5705, file: !3, line: 290, type: !109)
!5705 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 290, column: 2)
!5706 = !DILocalVariable(name: "__flags", scope: !5707, file: !3, line: 290, type: !109)
!5707 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 290, column: 2)
!5708 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 290, column: 2)
!5709 = !DILocation(line: 288, column: 51, scope: !5701)
!5710 = !DILocation(line: 290, column: 2, scope: !5705)
!5711 = !DILocation(line: 290, column: 2, scope: !5708)
!5712 = !DILocation(line: 290, column: 2, scope: !5707)
!5713 = !DILocation(line: 290, column: 2, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 290, column: 2)
!5715 = !DILocation(line: 290, column: 2, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 290, column: 2)
!5717 = !{i64 2155335995, i64 2155336024, i64 2155336070, i64 2155336128, i64 2155336182, i64 2155336236, i64 2155336291, i64 2155336322, i64 2155336630, i64 2155336636, i64 2155336683, i64 2155336706, i64 2155336732}
!5718 = !DILocation(line: 290, column: 2, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 290, column: 2)
!5720 = !DILocation(line: 290, column: 2, scope: !5701)
!5721 = !DILocation(line: 291, column: 1, scope: !5701)
!5722 = !DISubprogram(name: "devres_release", scope: !94, file: !94, line: 295, type: !5723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5723 = !DISubroutineType(types: !5724)
!5724 = !{!109, !4274, !5689, !5725, !233}
!5725 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_match_t", file: !94, line: 272, baseType: !5726)
!5726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5727, size: 64)
!5727 = !DISubroutineType(types: !5728)
!5728 = !{!109, !4274, !233, !233}
!5729 = distinct !DISubprogram(name: "acpi_dma_request_slave_chan_by_index", scope: !3, file: !3, line: 370, type: !5730, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5732)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{!4966, !4274, !422}
!5732 = !{!5733, !5734, !5735, !5741, !5742, !5743, !5745, !5747, !5748, !5749, !5750, !5751, !5752, !5755}
!5733 = !DILocalVariable(name: "dev", arg: 1, scope: !5729, file: !3, line: 370, type: !4274)
!5734 = !DILocalVariable(name: "index", arg: 2, scope: !5729, file: !3, line: 371, type: !422)
!5735 = !DILocalVariable(name: "pdata", scope: !5729, file: !3, line: 373, type: !5736)
!5736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_dma_parser_data", file: !3, line: 334, size: 256, elements: !5737)
!5737 = !{!5738, !5739, !5740}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "dma_spec", scope: !5736, file: !3, line: 335, baseType: !5271, size: 128)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5736, file: !3, line: 336, baseType: !422, size: 64, offset: 128)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !5736, file: !3, line: 337, baseType: !422, size: 64, offset: 192)
!5741 = !DILocalVariable(name: "dma_spec", scope: !5729, file: !3, line: 374, type: !5270)
!5742 = !DILocalVariable(name: "adev", scope: !5729, file: !3, line: 375, type: !234)
!5743 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !5744, file: !3, line: 375, type: !252)
!5744 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 375, column: 29)
!5745 = !DILocalVariable(name: "__mptr", scope: !5746, file: !3, line: 375, type: !233)
!5746 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 375, column: 29)
!5747 = !DILocalVariable(name: "resource_list", scope: !5729, file: !3, line: 376, type: !294)
!5748 = !DILocalVariable(name: "adma", scope: !5729, file: !3, line: 377, type: !4956)
!5749 = !DILocalVariable(name: "chan", scope: !5729, file: !3, line: 378, type: !4966)
!5750 = !DILocalVariable(name: "found", scope: !5729, file: !3, line: 379, type: !109)
!5751 = !DILocalVariable(name: "ret", scope: !5729, file: !3, line: 380, type: !109)
!5752 = !DILocalVariable(name: "__mptr", scope: !5753, file: !3, line: 401, type: !233)
!5753 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 401, column: 2)
!5754 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 401, column: 2)
!5755 = !DILocalVariable(name: "__mptr", scope: !5756, file: !3, line: 401, type: !233)
!5756 = distinct !DILexicalBlock(scope: !5757, file: !3, line: 401, column: 2)
!5757 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 401, column: 2)
!5758 = !DILocation(line: 370, column: 70, scope: !5729)
!5759 = !DILocation(line: 371, column: 10, scope: !5729)
!5760 = !DILocation(line: 373, column: 2, scope: !5729)
!5761 = !DILocation(line: 373, column: 30, scope: !5729)
!5762 = !DILocation(line: 374, column: 2, scope: !5729)
!5763 = !DILocation(line: 374, column: 24, scope: !5729)
!5764 = !DILocation(line: 374, column: 42, scope: !5729)
!5765 = !DILocation(line: 375, column: 2, scope: !5729)
!5766 = !DILocation(line: 375, column: 22, scope: !5729)
!5767 = !DILocation(line: 375, column: 29, scope: !5744)
!5768 = !DILocation(line: 375, column: 29, scope: !5746)
!5769 = !DILocation(line: 375, column: 29, scope: !5729)
!5770 = !DILocation(line: 376, column: 2, scope: !5729)
!5771 = !DILocation(line: 376, column: 19, scope: !5729)
!5772 = !DILocation(line: 377, column: 2, scope: !5729)
!5773 = !DILocation(line: 377, column: 19, scope: !5729)
!5774 = !DILocation(line: 378, column: 2, scope: !5729)
!5775 = !DILocation(line: 378, column: 19, scope: !5729)
!5776 = !DILocation(line: 379, column: 2, scope: !5729)
!5777 = !DILocation(line: 379, column: 6, scope: !5729)
!5778 = !DILocation(line: 380, column: 2, scope: !5729)
!5779 = !DILocation(line: 380, column: 6, scope: !5729)
!5780 = !DILocation(line: 382, column: 2, scope: !5729)
!5781 = !DILocation(line: 383, column: 16, scope: !5729)
!5782 = !DILocation(line: 383, column: 8, scope: !5729)
!5783 = !DILocation(line: 383, column: 14, scope: !5729)
!5784 = !DILocation(line: 386, column: 2, scope: !5729)
!5785 = !DILocation(line: 386, column: 12, scope: !5729)
!5786 = !DILocation(line: 386, column: 20, scope: !5729)
!5787 = !DILocation(line: 387, column: 2, scope: !5729)
!5788 = !DILocation(line: 387, column: 12, scope: !5729)
!5789 = !DILocation(line: 387, column: 21, scope: !5729)
!5790 = !DILocation(line: 389, column: 2, scope: !5729)
!5791 = !DILocation(line: 390, column: 31, scope: !5729)
!5792 = !DILocation(line: 390, column: 8, scope: !5729)
!5793 = !DILocation(line: 390, column: 6, scope: !5729)
!5794 = !DILocation(line: 392, column: 2, scope: !5729)
!5795 = !DILocation(line: 393, column: 6, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 393, column: 6)
!5797 = !DILocation(line: 393, column: 10, scope: !5796)
!5798 = !DILocation(line: 393, column: 6, scope: !5729)
!5799 = !DILocation(line: 394, column: 18, scope: !5796)
!5800 = !DILocation(line: 394, column: 10, scope: !5796)
!5801 = !DILocation(line: 394, column: 3, scope: !5796)
!5802 = !DILocation(line: 396, column: 6, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 396, column: 6)
!5804 = !DILocation(line: 396, column: 16, scope: !5803)
!5805 = !DILocation(line: 396, column: 25, scope: !5803)
!5806 = !DILocation(line: 396, column: 29, scope: !5803)
!5807 = !DILocation(line: 396, column: 32, scope: !5803)
!5808 = !DILocation(line: 396, column: 42, scope: !5803)
!5809 = !DILocation(line: 396, column: 50, scope: !5803)
!5810 = !DILocation(line: 396, column: 6, scope: !5729)
!5811 = !DILocation(line: 397, column: 10, scope: !5803)
!5812 = !DILocation(line: 397, column: 3, scope: !5803)
!5813 = !DILocation(line: 399, column: 2, scope: !5729)
!5814 = !DILocation(line: 401, column: 2, scope: !5753)
!5815 = !DILocation(line: 401, column: 2, scope: !5754)
!5816 = !DILocation(line: 401, column: 2, scope: !5757)
!5817 = !DILocation(line: 406, column: 36, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5757, file: !3, line: 401, column: 61)
!5819 = !DILocation(line: 406, column: 42, scope: !5818)
!5820 = !DILocation(line: 406, column: 11, scope: !5818)
!5821 = !DILocation(line: 406, column: 9, scope: !5818)
!5822 = !DILocation(line: 407, column: 7, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 407, column: 7)
!5824 = !DILocation(line: 407, column: 13, scope: !5823)
!5825 = !DILocation(line: 407, column: 7, scope: !5818)
!5826 = !DILocation(line: 408, column: 4, scope: !5823)
!5827 = !DILocation(line: 409, column: 10, scope: !5818)
!5828 = !DILocation(line: 409, column: 16, scope: !5818)
!5829 = !DILocation(line: 409, column: 31, scope: !5818)
!5830 = !DILocation(line: 409, column: 41, scope: !5818)
!5831 = !DILocation(line: 409, column: 8, scope: !5818)
!5832 = !DILocation(line: 415, column: 7, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5818, file: !3, line: 415, column: 7)
!5834 = !DILocation(line: 415, column: 13, scope: !5833)
!5835 = !DILocation(line: 415, column: 17, scope: !5833)
!5836 = !DILocation(line: 415, column: 20, scope: !5833)
!5837 = !DILocation(line: 415, column: 7, scope: !5818)
!5838 = !DILocation(line: 416, column: 4, scope: !5833)
!5839 = !DILocation(line: 417, column: 2, scope: !5818)
!5840 = !DILocation(line: 401, column: 2, scope: !5756)
!5841 = distinct !{!5841, !5815, !5842, !5564, !5565}
!5842 = !DILocation(line: 417, column: 2, scope: !5754)
!5843 = !DILocation(line: 419, column: 2, scope: !5729)
!5844 = !DILocation(line: 420, column: 9, scope: !5729)
!5845 = !DILocation(line: 420, column: 16, scope: !5729)
!5846 = !DILocation(line: 420, column: 23, scope: !5729)
!5847 = !DILocation(line: 420, column: 2, scope: !5729)
!5848 = !DILocation(line: 421, column: 1, scope: !5729)
!5849 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5574, file: !5574, line: 35, type: !5631, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5850)
!5850 = !{!5851}
!5851 = !DILocalVariable(name: "list", arg: 1, scope: !5849, file: !5574, line: 35, type: !297)
!5852 = !DILocation(line: 35, column: 53, scope: !5849)
!5853 = !DILocation(line: 37, column: 2, scope: !5849)
!5854 = !DILocation(line: 37, column: 2, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5849, file: !5574, line: 37, column: 2)
!5856 = !DILocation(line: 37, column: 2, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5855, file: !5574, line: 37, column: 2)
!5858 = !DILocation(line: 37, column: 2, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5855, file: !5574, line: 37, column: 2)
!5860 = !DILocation(line: 38, column: 2, scope: !5849)
!5861 = !DILocation(line: 38, column: 2, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5849, file: !5574, line: 38, column: 2)
!5863 = !DILocation(line: 38, column: 2, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5862, file: !5574, line: 38, column: 2)
!5865 = !DILocation(line: 38, column: 2, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5862, file: !5574, line: 38, column: 2)
!5867 = !DILocation(line: 39, column: 1, scope: !5849)
!5868 = !DISubprogram(name: "acpi_dev_get_resources", scope: !5869, file: !5869, line: 496, type: !5870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5869 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!5870 = !DISubroutineType(types: !5871)
!5871 = !{!109, !234, !297, !5872, !233}
!5872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5873, size: 64)
!5873 = !DISubroutineType(types: !5874)
!5874 = !{!109, !5875, !233}
!5875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5876, size: 64)
!5876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !5877, line: 678, size: 544, elements: !5878)
!5877 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!5878 = !{!5879, !5880, !5881}
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5876, file: !5877, line: 679, baseType: !239, size: 32)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5876, file: !5877, line: 680, baseType: !239, size: 32, offset: 32)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5876, file: !5877, line: 681, baseType: !5882, size: 480, offset: 64)
!5882 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !5877, line: 639, size: 480, elements: !5883)
!5883 = !{!5884, !5903, !5920, !5926, !5934, !5939, !5945, !5950, !5957, !5961, !5969, !5977, !5983, !6023, !6041, !6059, !6071, !6092, !6100, !6120, !6136, !6156, !6178, !6193, !6206, !6218, !6231, !6245, !6256, !6268, !6277}
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5882, file: !5877, line: 640, baseType: !5885, size: 56)
!5885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !5877, line: 138, size: 56, elements: !5886)
!5886 = !{!5887, !5888, !5889, !5890, !5891, !5892, !5893}
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5885, file: !5877, line: 139, baseType: !335, size: 8)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5885, file: !5877, line: 140, baseType: !335, size: 8, offset: 8)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5885, file: !5877, line: 141, baseType: !335, size: 8, offset: 16)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5885, file: !5877, line: 142, baseType: !335, size: 8, offset: 24)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5885, file: !5877, line: 143, baseType: !335, size: 8, offset: 32)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !5885, file: !5877, line: 144, baseType: !335, size: 8, offset: 40)
!5893 = !DIDerivedType(tag: DW_TAG_member, scope: !5885, file: !5877, line: 145, baseType: !5894, size: 8, offset: 48)
!5894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5885, file: !5877, line: 145, size: 8, elements: !5895)
!5895 = !{!5896, !5897}
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !5894, file: !5877, line: 146, baseType: !335, size: 8)
!5897 = !DIDerivedType(tag: DW_TAG_member, scope: !5894, file: !5877, line: 147, baseType: !5898)
!5898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5894, file: !5877, line: 147, elements: !5899)
!5899 = !{!5900, !5902}
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !5898, file: !5877, line: 147, baseType: !5901)
!5901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5898, file: !5877, line: 147, elements: !1001)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5898, file: !5877, line: 147, baseType: !3601)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5882, file: !5877, line: 641, baseType: !5904, size: 40)
!5904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !5877, line: 151, size: 40, elements: !5905)
!5905 = !{!5906, !5907, !5908, !5909, !5910}
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5904, file: !5877, line: 152, baseType: !335, size: 8)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !5904, file: !5877, line: 153, baseType: !335, size: 8, offset: 8)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !5904, file: !5877, line: 154, baseType: !335, size: 8, offset: 16)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !5904, file: !5877, line: 155, baseType: !335, size: 8, offset: 24)
!5910 = !DIDerivedType(tag: DW_TAG_member, scope: !5904, file: !5877, line: 156, baseType: !5911, size: 8, offset: 32)
!5911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5904, file: !5877, line: 156, size: 8, elements: !5912)
!5912 = !{!5913, !5914}
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !5911, file: !5877, line: 157, baseType: !335, size: 8)
!5914 = !DIDerivedType(tag: DW_TAG_member, scope: !5911, file: !5877, line: 158, baseType: !5915)
!5915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5911, file: !5877, line: 158, elements: !5916)
!5916 = !{!5917, !5919}
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_channels", scope: !5915, file: !5877, line: 158, baseType: !5918)
!5918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5915, file: !5877, line: 158, elements: !1001)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5915, file: !5877, line: 158, baseType: !3601)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !5882, file: !5877, line: 642, baseType: !5921, size: 24)
!5921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !5877, line: 162, size: 24, elements: !5922)
!5922 = !{!5923, !5924, !5925}
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5921, file: !5877, line: 163, baseType: !335, size: 8)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !5921, file: !5877, line: 164, baseType: !335, size: 8, offset: 8)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !5921, file: !5877, line: 165, baseType: !335, size: 8, offset: 16)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5882, file: !5877, line: 643, baseType: !5927, size: 56)
!5927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !5877, line: 173, size: 56, elements: !5928)
!5928 = !{!5929, !5930, !5931, !5932, !5933}
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !5927, file: !5877, line: 174, baseType: !335, size: 8)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5927, file: !5877, line: 175, baseType: !335, size: 8, offset: 8)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5927, file: !5877, line: 176, baseType: !335, size: 8, offset: 16)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5927, file: !5877, line: 177, baseType: !343, size: 16, offset: 24)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5927, file: !5877, line: 178, baseType: !343, size: 16, offset: 40)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !5882, file: !5877, line: 644, baseType: !5935, size: 24)
!5935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !5877, line: 181, size: 24, elements: !5936)
!5936 = !{!5937, !5938}
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5935, file: !5877, line: 182, baseType: !343, size: 16)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5935, file: !5877, line: 183, baseType: !335, size: 8, offset: 16)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !5882, file: !5877, line: 645, baseType: !5940, size: 40)
!5940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !5877, line: 186, size: 40, elements: !5941)
!5941 = !{!5942, !5943, !5944}
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !5940, file: !5877, line: 187, baseType: !343, size: 16)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5940, file: !5877, line: 188, baseType: !343, size: 16, offset: 16)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5940, file: !5877, line: 189, baseType: !335, size: 8, offset: 32)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5882, file: !5877, line: 646, baseType: !5946, size: 16)
!5946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !5877, line: 201, size: 16, elements: !5947)
!5947 = !{!5948, !5949}
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5946, file: !5877, line: 202, baseType: !343, size: 16)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5946, file: !5877, line: 203, baseType: !3601, offset: 16)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !5882, file: !5877, line: 647, baseType: !5951, size: 152)
!5951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !5877, line: 208, size: 152, elements: !5952)
!5952 = !{!5953, !5954, !5955, !5956}
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5951, file: !5877, line: 209, baseType: !343, size: 16)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !5951, file: !5877, line: 210, baseType: !335, size: 8, offset: 16)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !5951, file: !5877, line: 211, baseType: !3319, size: 128, offset: 24)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5951, file: !5877, line: 212, baseType: !3601, offset: 152)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !5882, file: !5877, line: 648, baseType: !5958, size: 8)
!5958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !5877, line: 215, size: 8, elements: !5959)
!5959 = !{!5960}
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !5958, file: !5877, line: 216, baseType: !335, size: 8)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !5882, file: !5877, line: 649, baseType: !5962, size: 72)
!5962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !5877, line: 219, size: 72, elements: !5963)
!5963 = !{!5964, !5965, !5966, !5967, !5968}
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5962, file: !5877, line: 220, baseType: !335, size: 8)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5962, file: !5877, line: 221, baseType: !343, size: 16, offset: 8)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5962, file: !5877, line: 222, baseType: !343, size: 16, offset: 24)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5962, file: !5877, line: 223, baseType: !343, size: 16, offset: 40)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5962, file: !5877, line: 224, baseType: !343, size: 16, offset: 56)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !5882, file: !5877, line: 650, baseType: !5970, size: 136)
!5970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !5877, line: 227, size: 136, elements: !5971)
!5971 = !{!5972, !5973, !5974, !5975, !5976}
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5970, file: !5877, line: 228, baseType: !335, size: 8)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5970, file: !5877, line: 229, baseType: !239, size: 32, offset: 8)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5970, file: !5877, line: 230, baseType: !239, size: 32, offset: 40)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5970, file: !5877, line: 231, baseType: !239, size: 32, offset: 72)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5970, file: !5877, line: 232, baseType: !239, size: 32, offset: 104)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !5882, file: !5877, line: 651, baseType: !5978, size: 72)
!5978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !5877, line: 235, size: 72, elements: !5979)
!5979 = !{!5980, !5981, !5982}
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5978, file: !5877, line: 236, baseType: !335, size: 8)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5978, file: !5877, line: 237, baseType: !239, size: 32, offset: 8)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5978, file: !5877, line: 238, baseType: !239, size: 32, offset: 40)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !5882, file: !5877, line: 652, baseType: !5984, size: 240)
!5984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !5877, line: 312, size: 240, elements: !5985)
!5985 = !{!5986, !5987, !5988, !5989, !5990, !5991, !6009, !6017}
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5984, file: !5877, line: 313, baseType: !335, size: 8)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5984, file: !5877, line: 313, baseType: !335, size: 8, offset: 8)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5984, file: !5877, line: 313, baseType: !335, size: 8, offset: 16)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5984, file: !5877, line: 313, baseType: !335, size: 8, offset: 24)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5984, file: !5877, line: 313, baseType: !335, size: 8, offset: 32)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5984, file: !5877, line: 313, baseType: !5992, size: 32, offset: 40)
!5992 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !5877, line: 255, size: 32, elements: !5993)
!5993 = !{!5994, !6001, !6008}
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !5992, file: !5877, line: 256, baseType: !5995, size: 32)
!5995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !5877, line: 241, size: 32, elements: !5996)
!5996 = !{!5997, !5998, !5999, !6000}
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5995, file: !5877, line: 242, baseType: !335, size: 8)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5995, file: !5877, line: 243, baseType: !335, size: 8, offset: 8)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !5995, file: !5877, line: 244, baseType: !335, size: 8, offset: 16)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !5995, file: !5877, line: 245, baseType: !335, size: 8, offset: 24)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5992, file: !5877, line: 257, baseType: !6002, size: 32)
!6002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !5877, line: 248, size: 32, elements: !6003)
!6003 = !{!6004, !6005, !6006, !6007}
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !6002, file: !5877, line: 249, baseType: !335, size: 8)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !6002, file: !5877, line: 250, baseType: !335, size: 8, offset: 8)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !6002, file: !5877, line: 251, baseType: !335, size: 8, offset: 16)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !6002, file: !5877, line: 252, baseType: !335, size: 8, offset: 24)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !5992, file: !5877, line: 261, baseType: !335, size: 8)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5984, file: !5877, line: 313, baseType: !6010, size: 80, offset: 72)
!6010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !5877, line: 285, size: 80, elements: !6011)
!6011 = !{!6012, !6013, !6014, !6015, !6016}
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !6010, file: !5877, line: 286, baseType: !343, size: 16)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !6010, file: !5877, line: 287, baseType: !343, size: 16, offset: 16)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !6010, file: !5877, line: 288, baseType: !343, size: 16, offset: 32)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !6010, file: !5877, line: 289, baseType: !343, size: 16, offset: 48)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !6010, file: !5877, line: 290, baseType: !343, size: 16, offset: 64)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5984, file: !5877, line: 314, baseType: !6018, size: 88, offset: 152)
!6018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !5877, line: 269, size: 88, elements: !6019)
!6019 = !{!6020, !6021, !6022}
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6018, file: !5877, line: 270, baseType: !335, size: 8)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !6018, file: !5877, line: 271, baseType: !343, size: 16, offset: 8)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !6018, file: !5877, line: 272, baseType: !375, size: 64, offset: 24)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !5882, file: !5877, line: 653, baseType: !6024, size: 320)
!6024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !5877, line: 317, size: 320, elements: !6025)
!6025 = !{!6026, !6027, !6028, !6029, !6030, !6031, !6032, !6040}
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !6024, file: !5877, line: 318, baseType: !335, size: 8)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6024, file: !5877, line: 318, baseType: !335, size: 8, offset: 8)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !6024, file: !5877, line: 318, baseType: !335, size: 8, offset: 16)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !6024, file: !5877, line: 318, baseType: !335, size: 8, offset: 24)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !6024, file: !5877, line: 318, baseType: !335, size: 8, offset: 32)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6024, file: !5877, line: 318, baseType: !5992, size: 32, offset: 40)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !6024, file: !5877, line: 318, baseType: !6033, size: 160, offset: 72)
!6033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !5877, line: 293, size: 160, elements: !6034)
!6034 = !{!6035, !6036, !6037, !6038, !6039}
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !6033, file: !5877, line: 294, baseType: !239, size: 32)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !6033, file: !5877, line: 295, baseType: !239, size: 32, offset: 32)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !6033, file: !5877, line: 296, baseType: !239, size: 32, offset: 64)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !6033, file: !5877, line: 297, baseType: !239, size: 32, offset: 96)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !6033, file: !5877, line: 298, baseType: !239, size: 32, offset: 128)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6024, file: !5877, line: 319, baseType: !6018, size: 88, offset: 232)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !5882, file: !5877, line: 654, baseType: !6042, size: 480)
!6042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !5877, line: 322, size: 480, elements: !6043)
!6043 = !{!6044, !6045, !6046, !6047, !6048, !6049, !6050, !6058}
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !6042, file: !5877, line: 323, baseType: !335, size: 8)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6042, file: !5877, line: 323, baseType: !335, size: 8, offset: 8)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !6042, file: !5877, line: 323, baseType: !335, size: 8, offset: 16)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !6042, file: !5877, line: 323, baseType: !335, size: 8, offset: 24)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !6042, file: !5877, line: 323, baseType: !335, size: 8, offset: 32)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6042, file: !5877, line: 323, baseType: !5992, size: 32, offset: 40)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !6042, file: !5877, line: 323, baseType: !6051, size: 320, offset: 72)
!6051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !5877, line: 301, size: 320, elements: !6052)
!6052 = !{!6053, !6054, !6055, !6056, !6057}
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !6051, file: !5877, line: 302, baseType: !526, size: 64)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !6051, file: !5877, line: 303, baseType: !526, size: 64, offset: 64)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !6051, file: !5877, line: 304, baseType: !526, size: 64, offset: 128)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !6051, file: !5877, line: 305, baseType: !526, size: 64, offset: 192)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !6051, file: !5877, line: 306, baseType: !526, size: 64, offset: 256)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6042, file: !5877, line: 324, baseType: !6018, size: 88, offset: 392)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !5882, file: !5877, line: 655, baseType: !6060, size: 464)
!6060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !5877, line: 327, size: 464, elements: !6061)
!6061 = !{!6062, !6063, !6064, !6065, !6066, !6067, !6068, !6069, !6070}
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !6060, file: !5877, line: 328, baseType: !335, size: 8)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6060, file: !5877, line: 328, baseType: !335, size: 8, offset: 8)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !6060, file: !5877, line: 328, baseType: !335, size: 8, offset: 16)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !6060, file: !5877, line: 328, baseType: !335, size: 8, offset: 24)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !6060, file: !5877, line: 328, baseType: !335, size: 8, offset: 32)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6060, file: !5877, line: 328, baseType: !5992, size: 32, offset: 40)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !6060, file: !5877, line: 328, baseType: !335, size: 8, offset: 72)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !6060, file: !5877, line: 329, baseType: !6051, size: 320, offset: 80)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !6060, file: !5877, line: 330, baseType: !526, size: 64, offset: 400)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !5882, file: !5877, line: 656, baseType: !6072, size: 168)
!6072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !5877, line: 333, size: 168, elements: !6073)
!6073 = !{!6074, !6075, !6076, !6077, !6078, !6079, !6080, !6081}
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6072, file: !5877, line: 334, baseType: !335, size: 8)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !6072, file: !5877, line: 335, baseType: !335, size: 8, offset: 8)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !6072, file: !5877, line: 336, baseType: !335, size: 8, offset: 16)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6072, file: !5877, line: 337, baseType: !335, size: 8, offset: 24)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !6072, file: !5877, line: 338, baseType: !335, size: 8, offset: 32)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !6072, file: !5877, line: 339, baseType: !335, size: 8, offset: 40)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6072, file: !5877, line: 340, baseType: !6018, size: 88, offset: 48)
!6081 = !DIDerivedType(tag: DW_TAG_member, scope: !6072, file: !5877, line: 341, baseType: !6082, size: 32, offset: 136)
!6082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6072, file: !5877, line: 341, size: 32, elements: !6083)
!6083 = !{!6084, !6085}
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !6082, file: !5877, line: 342, baseType: !239, size: 32)
!6085 = !DIDerivedType(tag: DW_TAG_member, scope: !6082, file: !5877, line: 343, baseType: !6086)
!6086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6082, file: !5877, line: 343, elements: !6087)
!6087 = !{!6088, !6090}
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !6086, file: !5877, line: 343, baseType: !6089)
!6089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6086, file: !5877, line: 343, elements: !1001)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !6086, file: !5877, line: 343, baseType: !6091)
!6091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, elements: !1864)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !5882, file: !5877, line: 657, baseType: !6093, size: 96)
!6093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !5877, line: 347, size: 96, elements: !6094)
!6094 = !{!6095, !6096, !6097, !6098, !6099}
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !6093, file: !5877, line: 348, baseType: !335, size: 8)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !6093, file: !5877, line: 349, baseType: !335, size: 8, offset: 8)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !6093, file: !5877, line: 350, baseType: !335, size: 8, offset: 16)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !6093, file: !5877, line: 351, baseType: !335, size: 8, offset: 24)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !6093, file: !5877, line: 352, baseType: !526, size: 64, offset: 32)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !5882, file: !5877, line: 658, baseType: !6101, size: 352)
!6101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !5877, line: 355, size: 352, elements: !6102)
!6102 = !{!6103, !6104, !6105, !6106, !6107, !6108, !6109, !6110, !6111, !6112, !6113, !6114, !6115, !6116, !6117, !6119}
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6101, file: !5877, line: 356, baseType: !335, size: 8)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !6101, file: !5877, line: 357, baseType: !335, size: 8, offset: 8)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6101, file: !5877, line: 358, baseType: !335, size: 8, offset: 16)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !6101, file: !5877, line: 359, baseType: !335, size: 8, offset: 24)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6101, file: !5877, line: 360, baseType: !335, size: 8, offset: 32)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !6101, file: !5877, line: 361, baseType: !335, size: 8, offset: 40)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !6101, file: !5877, line: 362, baseType: !335, size: 8, offset: 48)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !6101, file: !5877, line: 363, baseType: !335, size: 8, offset: 56)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !6101, file: !5877, line: 364, baseType: !335, size: 8, offset: 64)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !6101, file: !5877, line: 365, baseType: !343, size: 16, offset: 72)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !6101, file: !5877, line: 366, baseType: !343, size: 16, offset: 88)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !6101, file: !5877, line: 367, baseType: !343, size: 16, offset: 104)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6101, file: !5877, line: 368, baseType: !343, size: 16, offset: 120)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6101, file: !5877, line: 369, baseType: !6018, size: 88, offset: 136)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !6101, file: !5877, line: 370, baseType: !6118, size: 64, offset: 224)
!6118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6101, file: !5877, line: 371, baseType: !4782, size: 64, offset: 288)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !5882, file: !5877, line: 659, baseType: !6121, size: 288)
!6121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !5877, line: 422, size: 288, elements: !6122)
!6122 = !{!6123, !6124, !6125, !6126, !6127, !6128, !6129, !6130, !6131, !6132, !6133, !6134, !6135}
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6121, file: !5877, line: 423, baseType: !335, size: 8)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6121, file: !5877, line: 423, baseType: !335, size: 8, offset: 8)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6121, file: !5877, line: 423, baseType: !335, size: 8, offset: 16)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !6121, file: !5877, line: 423, baseType: !335, size: 8, offset: 24)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !6121, file: !5877, line: 423, baseType: !335, size: 8, offset: 32)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !6121, file: !5877, line: 423, baseType: !335, size: 8, offset: 40)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !6121, file: !5877, line: 423, baseType: !343, size: 16, offset: 48)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6121, file: !5877, line: 423, baseType: !343, size: 16, offset: 64)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6121, file: !5877, line: 423, baseType: !6018, size: 88, offset: 80)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6121, file: !5877, line: 423, baseType: !4782, size: 64, offset: 168)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !6121, file: !5877, line: 423, baseType: !335, size: 8, offset: 232)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !6121, file: !5877, line: 424, baseType: !343, size: 16, offset: 240)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !6121, file: !5877, line: 425, baseType: !239, size: 32, offset: 256)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !5882, file: !5877, line: 660, baseType: !6137, size: 320)
!6137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !5877, line: 433, size: 320, elements: !6138)
!6138 = !{!6139, !6140, !6141, !6142, !6143, !6144, !6145, !6146, !6147, !6148, !6149, !6150, !6151, !6152, !6153, !6154, !6155}
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6137, file: !5877, line: 434, baseType: !335, size: 8)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6137, file: !5877, line: 434, baseType: !335, size: 8, offset: 8)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6137, file: !5877, line: 434, baseType: !335, size: 8, offset: 16)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !6137, file: !5877, line: 434, baseType: !335, size: 8, offset: 24)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !6137, file: !5877, line: 434, baseType: !335, size: 8, offset: 32)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !6137, file: !5877, line: 434, baseType: !335, size: 8, offset: 40)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !6137, file: !5877, line: 434, baseType: !343, size: 16, offset: 48)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6137, file: !5877, line: 434, baseType: !343, size: 16, offset: 64)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6137, file: !5877, line: 434, baseType: !6018, size: 88, offset: 80)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6137, file: !5877, line: 434, baseType: !4782, size: 64, offset: 168)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !6137, file: !5877, line: 434, baseType: !335, size: 8, offset: 232)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !6137, file: !5877, line: 435, baseType: !335, size: 8, offset: 240)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !6137, file: !5877, line: 436, baseType: !335, size: 8, offset: 248)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !6137, file: !5877, line: 437, baseType: !335, size: 8, offset: 256)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !6137, file: !5877, line: 438, baseType: !335, size: 8, offset: 264)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !6137, file: !5877, line: 439, baseType: !343, size: 16, offset: 272)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !6137, file: !5877, line: 440, baseType: !239, size: 32, offset: 288)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !5882, file: !5877, line: 661, baseType: !6157, size: 344)
!6157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !5877, line: 463, size: 344, elements: !6158)
!6158 = !{!6159, !6160, !6161, !6162, !6163, !6164, !6165, !6166, !6167, !6168, !6169, !6170, !6171, !6172, !6173, !6174, !6175, !6176, !6177}
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6157, file: !5877, line: 464, baseType: !335, size: 8)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6157, file: !5877, line: 464, baseType: !335, size: 8, offset: 8)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6157, file: !5877, line: 464, baseType: !335, size: 8, offset: 16)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !6157, file: !5877, line: 464, baseType: !335, size: 8, offset: 24)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !6157, file: !5877, line: 464, baseType: !335, size: 8, offset: 32)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !6157, file: !5877, line: 464, baseType: !335, size: 8, offset: 40)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !6157, file: !5877, line: 464, baseType: !343, size: 16, offset: 48)
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6157, file: !5877, line: 464, baseType: !343, size: 16, offset: 64)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6157, file: !5877, line: 464, baseType: !6018, size: 88, offset: 80)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6157, file: !5877, line: 464, baseType: !4782, size: 64, offset: 168)
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !6157, file: !5877, line: 464, baseType: !335, size: 8, offset: 232)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !6157, file: !5877, line: 465, baseType: !335, size: 8, offset: 240)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !6157, file: !5877, line: 466, baseType: !335, size: 8, offset: 248)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !6157, file: !5877, line: 467, baseType: !335, size: 8, offset: 256)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !6157, file: !5877, line: 468, baseType: !335, size: 8, offset: 264)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !6157, file: !5877, line: 469, baseType: !335, size: 8, offset: 272)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !6157, file: !5877, line: 470, baseType: !343, size: 16, offset: 280)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !6157, file: !5877, line: 471, baseType: !343, size: 16, offset: 296)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !6157, file: !5877, line: 472, baseType: !239, size: 32, offset: 312)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !5882, file: !5877, line: 662, baseType: !6179, size: 248)
!6179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_csi2_serialbus", file: !5877, line: 518, size: 248, elements: !6180)
!6180 = !{!6181, !6182, !6183, !6184, !6185, !6186, !6187, !6188, !6189, !6190, !6191, !6192}
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6179, file: !5877, line: 519, baseType: !335, size: 8)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6179, file: !5877, line: 519, baseType: !335, size: 8, offset: 8)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6179, file: !5877, line: 519, baseType: !335, size: 8, offset: 16)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !6179, file: !5877, line: 519, baseType: !335, size: 8, offset: 24)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !6179, file: !5877, line: 519, baseType: !335, size: 8, offset: 32)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !6179, file: !5877, line: 519, baseType: !335, size: 8, offset: 40)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !6179, file: !5877, line: 519, baseType: !343, size: 16, offset: 48)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6179, file: !5877, line: 519, baseType: !343, size: 16, offset: 64)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6179, file: !5877, line: 519, baseType: !6018, size: 88, offset: 80)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6179, file: !5877, line: 519, baseType: !4782, size: 64, offset: 168)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "local_port_instance", scope: !6179, file: !5877, line: 519, baseType: !335, size: 8, offset: 232)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "phy_type", scope: !6179, file: !5877, line: 520, baseType: !335, size: 8, offset: 240)
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !5882, file: !5877, line: 663, baseType: !6194, size: 232)
!6194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !5877, line: 407, size: 232, elements: !6195)
!6195 = !{!6196, !6197, !6198, !6199, !6200, !6201, !6202, !6203, !6204, !6205}
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6194, file: !5877, line: 408, baseType: !335, size: 8)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6194, file: !5877, line: 408, baseType: !335, size: 8, offset: 8)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6194, file: !5877, line: 408, baseType: !335, size: 8, offset: 16)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !6194, file: !5877, line: 408, baseType: !335, size: 8, offset: 24)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !6194, file: !5877, line: 408, baseType: !335, size: 8, offset: 32)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !6194, file: !5877, line: 408, baseType: !335, size: 8, offset: 40)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !6194, file: !5877, line: 408, baseType: !343, size: 16, offset: 48)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6194, file: !5877, line: 408, baseType: !343, size: 16, offset: 64)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6194, file: !5877, line: 408, baseType: !6018, size: 88, offset: 80)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6194, file: !5877, line: 408, baseType: !4782, size: 64, offset: 168)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !5882, file: !5877, line: 664, baseType: !6207, size: 288)
!6207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !5877, line: 523, size: 288, elements: !6208)
!6208 = !{!6209, !6210, !6211, !6212, !6213, !6214, !6215, !6216, !6217}
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6207, file: !5877, line: 524, baseType: !335, size: 8)
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !6207, file: !5877, line: 525, baseType: !335, size: 8, offset: 8)
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6207, file: !5877, line: 526, baseType: !335, size: 8, offset: 16)
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !6207, file: !5877, line: 527, baseType: !343, size: 16, offset: 24)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !6207, file: !5877, line: 528, baseType: !343, size: 16, offset: 40)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6207, file: !5877, line: 529, baseType: !343, size: 16, offset: 56)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6207, file: !5877, line: 530, baseType: !6018, size: 88, offset: 72)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !6207, file: !5877, line: 531, baseType: !6118, size: 64, offset: 160)
!6217 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6207, file: !5877, line: 532, baseType: !4782, size: 64, offset: 224)
!6218 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5882, file: !5877, line: 665, baseType: !6219, size: 312)
!6219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !5877, line: 535, size: 312, elements: !6220)
!6220 = !{!6221, !6222, !6223, !6224, !6225, !6226, !6227, !6228, !6229, !6230}
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6219, file: !5877, line: 536, baseType: !335, size: 8)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6219, file: !5877, line: 537, baseType: !335, size: 8, offset: 8)
!6223 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6219, file: !5877, line: 538, baseType: !335, size: 8, offset: 16)
!6224 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !6219, file: !5877, line: 539, baseType: !335, size: 8, offset: 24)
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !6219, file: !5877, line: 540, baseType: !239, size: 32, offset: 32)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !6219, file: !5877, line: 541, baseType: !343, size: 16, offset: 64)
!6227 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6219, file: !5877, line: 542, baseType: !343, size: 16, offset: 80)
!6228 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6219, file: !5877, line: 543, baseType: !6018, size: 88, offset: 96)
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !6219, file: !5877, line: 544, baseType: !6118, size: 64, offset: 184)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6219, file: !5877, line: 545, baseType: !4782, size: 64, offset: 248)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !5882, file: !5877, line: 666, baseType: !6232, size: 256)
!6232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !5877, line: 574, size: 256, elements: !6233)
!6233 = !{!6234, !6235, !6236, !6237, !6238, !6239, !6244}
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6232, file: !5877, line: 575, baseType: !335, size: 8)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6232, file: !5877, line: 576, baseType: !335, size: 8, offset: 8)
!6236 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !6232, file: !5877, line: 577, baseType: !343, size: 16, offset: 16)
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6232, file: !5877, line: 578, baseType: !343, size: 16, offset: 32)
!6238 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !6232, file: !5877, line: 579, baseType: !6118, size: 64, offset: 48)
!6239 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !6232, file: !5877, line: 580, baseType: !6240, size: 80, offset: 112)
!6240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !5877, line: 264, size: 80, elements: !6241)
!6241 = !{!6242, !6243}
!6242 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !6240, file: !5877, line: 265, baseType: !343, size: 16)
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !6240, file: !5877, line: 266, baseType: !375, size: 64, offset: 16)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6232, file: !5877, line: 581, baseType: !4782, size: 64, offset: 192)
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !5882, file: !5877, line: 667, baseType: !6246, size: 288)
!6246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !5877, line: 584, size: 288, elements: !6247)
!6247 = !{!6248, !6249, !6250, !6251, !6252, !6253, !6254, !6255}
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6246, file: !5877, line: 585, baseType: !335, size: 8)
!6249 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6246, file: !5877, line: 586, baseType: !335, size: 8, offset: 8)
!6250 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6246, file: !5877, line: 587, baseType: !335, size: 8, offset: 16)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !6246, file: !5877, line: 588, baseType: !343, size: 16, offset: 24)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6246, file: !5877, line: 589, baseType: !343, size: 16, offset: 40)
!6253 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6246, file: !5877, line: 590, baseType: !6018, size: 88, offset: 56)
!6254 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !6246, file: !5877, line: 591, baseType: !6240, size: 80, offset: 144)
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6246, file: !5877, line: 592, baseType: !4782, size: 64, offset: 224)
!6256 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !5882, file: !5877, line: 668, baseType: !6257, size: 312)
!6257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !5877, line: 595, size: 312, elements: !6258)
!6258 = !{!6259, !6260, !6261, !6262, !6263, !6264, !6265, !6266, !6267}
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6257, file: !5877, line: 596, baseType: !335, size: 8)
!6260 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6257, file: !5877, line: 597, baseType: !335, size: 8, offset: 8)
!6261 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !6257, file: !5877, line: 598, baseType: !335, size: 8, offset: 16)
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !6257, file: !5877, line: 599, baseType: !335, size: 8, offset: 24)
!6263 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !6257, file: !5877, line: 600, baseType: !239, size: 32, offset: 32)
!6264 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !6257, file: !5877, line: 601, baseType: !343, size: 16, offset: 64)
!6265 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6257, file: !5877, line: 602, baseType: !6018, size: 88, offset: 80)
!6266 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !6257, file: !5877, line: 603, baseType: !6240, size: 80, offset: 168)
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !6257, file: !5877, line: 604, baseType: !4782, size: 64, offset: 248)
!6268 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !5882, file: !5877, line: 669, baseType: !6269, size: 160)
!6269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_clock_input", file: !5877, line: 548, size: 160, elements: !6270)
!6270 = !{!6271, !6272, !6273, !6274, !6275, !6276}
!6271 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !6269, file: !5877, line: 549, baseType: !335, size: 8)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6269, file: !5877, line: 550, baseType: !335, size: 8, offset: 8)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !6269, file: !5877, line: 551, baseType: !335, size: 8, offset: 16)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !6269, file: !5877, line: 552, baseType: !343, size: 16, offset: 24)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !6269, file: !5877, line: 553, baseType: !239, size: 32, offset: 40)
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !6269, file: !5877, line: 554, baseType: !6018, size: 88, offset: 72)
!6277 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5882, file: !5877, line: 673, baseType: !6278, size: 72)
!6278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !5877, line: 309, size: 72, elements: !6279)
!6279 = !{!6280, !6281, !6282, !6283, !6284, !6285}
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !6278, file: !5877, line: 310, baseType: !335, size: 8)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !6278, file: !5877, line: 310, baseType: !335, size: 8, offset: 8)
!6282 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !6278, file: !5877, line: 310, baseType: !335, size: 8, offset: 16)
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !6278, file: !5877, line: 310, baseType: !335, size: 8, offset: 24)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !6278, file: !5877, line: 310, baseType: !335, size: 8, offset: 32)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !6278, file: !5877, line: 310, baseType: !5992, size: 32, offset: 40)
!6286 = distinct !DISubprogram(name: "acpi_dma_parse_fixed_dma", scope: !3, file: !3, line: 345, type: !5873, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6287)
!6287 = !{!6288, !6289, !6290, !6292}
!6288 = !DILocalVariable(name: "res", arg: 1, scope: !6286, file: !3, line: 345, type: !5875)
!6289 = !DILocalVariable(name: "data", arg: 2, scope: !6286, file: !3, line: 345, type: !233)
!6290 = !DILocalVariable(name: "pdata", scope: !6286, file: !3, line: 347, type: !6291)
!6291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5736, size: 64)
!6292 = !DILocalVariable(name: "dma", scope: !6293, file: !3, line: 350, type: !6295)
!6293 = distinct !DILexicalBlock(scope: !6294, file: !3, line: 349, column: 49)
!6294 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 349, column: 6)
!6295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5940, size: 64)
!6296 = !DILocation(line: 345, column: 59, scope: !6286)
!6297 = !DILocation(line: 345, column: 70, scope: !6286)
!6298 = !DILocation(line: 347, column: 2, scope: !6286)
!6299 = !DILocation(line: 347, column: 31, scope: !6286)
!6300 = !DILocation(line: 347, column: 39, scope: !6286)
!6301 = !DILocation(line: 349, column: 6, scope: !6294)
!6302 = !DILocation(line: 349, column: 11, scope: !6294)
!6303 = !DILocation(line: 349, column: 16, scope: !6294)
!6304 = !DILocation(line: 349, column: 6, scope: !6286)
!6305 = !DILocation(line: 350, column: 3, scope: !6293)
!6306 = !DILocation(line: 350, column: 35, scope: !6293)
!6307 = !DILocation(line: 350, column: 42, scope: !6293)
!6308 = !DILocation(line: 350, column: 47, scope: !6293)
!6309 = !DILocation(line: 352, column: 7, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6293, file: !3, line: 352, column: 7)
!6311 = !DILocation(line: 352, column: 14, scope: !6310)
!6312 = !DILocation(line: 352, column: 15, scope: !6310)
!6313 = !DILocation(line: 352, column: 21, scope: !6310)
!6314 = !DILocation(line: 352, column: 28, scope: !6310)
!6315 = !DILocation(line: 352, column: 18, scope: !6310)
!6316 = !DILocation(line: 352, column: 7, scope: !6293)
!6317 = !DILocation(line: 353, column: 30, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6310, file: !3, line: 352, column: 35)
!6319 = !DILocation(line: 353, column: 35, scope: !6318)
!6320 = !DILocation(line: 353, column: 4, scope: !6318)
!6321 = !DILocation(line: 353, column: 11, scope: !6318)
!6322 = !DILocation(line: 353, column: 20, scope: !6318)
!6323 = !DILocation(line: 353, column: 28, scope: !6318)
!6324 = !DILocation(line: 354, column: 31, scope: !6318)
!6325 = !DILocation(line: 354, column: 36, scope: !6318)
!6326 = !DILocation(line: 354, column: 4, scope: !6318)
!6327 = !DILocation(line: 354, column: 11, scope: !6318)
!6328 = !DILocation(line: 354, column: 20, scope: !6318)
!6329 = !DILocation(line: 354, column: 29, scope: !6318)
!6330 = !DILocation(line: 355, column: 3, scope: !6318)
!6331 = !DILocation(line: 356, column: 2, scope: !6294)
!6332 = !DILocation(line: 356, column: 2, scope: !6293)
!6333 = !DILocation(line: 360, column: 1, scope: !6286)
!6334 = !DILocation(line: 359, column: 2, scope: !6286)
!6335 = !DISubprogram(name: "acpi_dev_free_resource_list", scope: !5869, file: !5869, line: 495, type: !5631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6336 = distinct !DISubprogram(name: "ERR_PTR", scope: !6337, file: !6337, line: 39, type: !6338, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6340)
!6337 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6338 = !DISubroutineType(types: !6339)
!6339 = !{!233, !411}
!6340 = !{!6341}
!6341 = !DILocalVariable(name: "error", arg: 1, scope: !6336, file: !6337, line: 39, type: !411)
!6342 = !DILocation(line: 39, column: 48, scope: !6336)
!6343 = !DILocation(line: 41, column: 18, scope: !6336)
!6344 = !DILocation(line: 41, column: 9, scope: !6336)
!6345 = !DILocation(line: 41, column: 2, scope: !6336)
!6346 = distinct !DISubprogram(name: "acpi_dma_update_dma_spec", scope: !3, file: !3, line: 310, type: !6347, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6349)
!6347 = !DISubroutineType(types: !6348)
!6348 = !{!109, !4956, !5270}
!6349 = !{!6350, !6351}
!6350 = !DILocalVariable(name: "adma", arg: 1, scope: !6346, file: !3, line: 310, type: !4956)
!6351 = !DILocalVariable(name: "dma_spec", arg: 2, scope: !6346, file: !3, line: 311, type: !5270)
!6352 = !DILocation(line: 310, column: 54, scope: !6346)
!6353 = !DILocation(line: 311, column: 25, scope: !6346)
!6354 = !DILocation(line: 314, column: 18, scope: !6346)
!6355 = !DILocation(line: 314, column: 24, scope: !6346)
!6356 = !DILocation(line: 314, column: 2, scope: !6346)
!6357 = !DILocation(line: 314, column: 12, scope: !6346)
!6358 = !DILocation(line: 314, column: 16, scope: !6346)
!6359 = !DILocation(line: 317, column: 6, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6346, file: !3, line: 317, column: 6)
!6361 = !DILocation(line: 317, column: 12, scope: !6360)
!6362 = !DILocation(line: 317, column: 30, scope: !6360)
!6363 = !DILocation(line: 317, column: 35, scope: !6360)
!6364 = !DILocation(line: 317, column: 38, scope: !6360)
!6365 = !DILocation(line: 317, column: 44, scope: !6360)
!6366 = !DILocation(line: 317, column: 61, scope: !6360)
!6367 = !DILocation(line: 317, column: 6, scope: !6346)
!6368 = !DILocation(line: 318, column: 3, scope: !6360)
!6369 = !DILocation(line: 321, column: 6, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6346, file: !3, line: 321, column: 6)
!6371 = !DILocation(line: 321, column: 16, scope: !6370)
!6372 = !DILocation(line: 321, column: 27, scope: !6370)
!6373 = !DILocation(line: 321, column: 33, scope: !6370)
!6374 = !DILocation(line: 321, column: 25, scope: !6370)
!6375 = !DILocation(line: 321, column: 51, scope: !6370)
!6376 = !DILocation(line: 322, column: 6, scope: !6370)
!6377 = !DILocation(line: 322, column: 16, scope: !6370)
!6378 = !DILocation(line: 322, column: 27, scope: !6370)
!6379 = !DILocation(line: 322, column: 33, scope: !6370)
!6380 = !DILocation(line: 322, column: 25, scope: !6370)
!6381 = !DILocation(line: 321, column: 6, scope: !6346)
!6382 = !DILocation(line: 323, column: 3, scope: !6370)
!6383 = !DILocation(line: 329, column: 24, scope: !6346)
!6384 = !DILocation(line: 329, column: 30, scope: !6346)
!6385 = !DILocation(line: 329, column: 2, scope: !6346)
!6386 = !DILocation(line: 329, column: 12, scope: !6346)
!6387 = !DILocation(line: 329, column: 21, scope: !6346)
!6388 = !DILocation(line: 331, column: 2, scope: !6346)
!6389 = !DILocation(line: 332, column: 1, scope: !6346)
!6390 = distinct !DISubprogram(name: "acpi_dma_request_slave_chan_by_name", scope: !3, file: !3, line: 440, type: !6391, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6393)
!6391 = !DISubroutineType(types: !6392)
!6392 = !{!4966, !4274, !290}
!6393 = !{!6394, !6395, !6396}
!6394 = !DILocalVariable(name: "dev", arg: 1, scope: !6390, file: !3, line: 440, type: !4274)
!6395 = !DILocalVariable(name: "name", arg: 2, scope: !6390, file: !3, line: 441, type: !290)
!6396 = !DILocalVariable(name: "index", scope: !6390, file: !3, line: 443, type: !109)
!6397 = !DILocation(line: 440, column: 69, scope: !6390)
!6398 = !DILocation(line: 441, column: 15, scope: !6390)
!6399 = !DILocation(line: 443, column: 2, scope: !6390)
!6400 = !DILocation(line: 443, column: 6, scope: !6390)
!6401 = !DILocation(line: 445, column: 39, scope: !6390)
!6402 = !DILocation(line: 445, column: 57, scope: !6390)
!6403 = !DILocation(line: 445, column: 10, scope: !6390)
!6404 = !DILocation(line: 445, column: 8, scope: !6390)
!6405 = !DILocation(line: 446, column: 6, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6390, file: !3, line: 446, column: 6)
!6407 = !DILocation(line: 446, column: 12, scope: !6406)
!6408 = !DILocation(line: 446, column: 6, scope: !6390)
!6409 = !DILocation(line: 447, column: 15, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 447, column: 7)
!6411 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 446, column: 17)
!6412 = !DILocation(line: 447, column: 8, scope: !6410)
!6413 = !DILocation(line: 447, column: 7, scope: !6411)
!6414 = !DILocation(line: 448, column: 10, scope: !6410)
!6415 = !DILocation(line: 448, column: 4, scope: !6410)
!6416 = !DILocation(line: 449, column: 20, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 449, column: 12)
!6418 = !DILocation(line: 449, column: 13, scope: !6417)
!6419 = !DILocation(line: 449, column: 12, scope: !6410)
!6420 = !DILocation(line: 450, column: 10, scope: !6417)
!6421 = !DILocation(line: 450, column: 4, scope: !6417)
!6422 = !DILocation(line: 452, column: 11, scope: !6417)
!6423 = !DILocation(line: 452, column: 4, scope: !6417)
!6424 = !DILocation(line: 453, column: 2, scope: !6411)
!6425 = !DILocation(line: 456, column: 46, scope: !6390)
!6426 = !DILocation(line: 456, column: 51, scope: !6390)
!6427 = !DILocation(line: 456, column: 9, scope: !6390)
!6428 = !DILocation(line: 456, column: 2, scope: !6390)
!6429 = !DILocation(line: 457, column: 1, scope: !6390)
!6430 = !DISubprogram(name: "device_property_match_string", scope: !117, file: !117, line: 56, type: !6431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6431 = !DISubroutineType(types: !6432)
!6432 = !{!109, !281, !290, !290}
!6433 = !DISubprogram(name: "strcmp", scope: !6434, file: !6434, line: 88, type: !6435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6434 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6435 = !DISubroutineType(types: !6436)
!6436 = !{!109, !290, !290}
!6437 = distinct !DISubprogram(name: "acpi_dma_simple_xlate", scope: !3, file: !3, line: 471, type: !4964, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6438)
!6438 = !{!6439, !6440, !6441}
!6439 = !DILocalVariable(name: "dma_spec", arg: 1, scope: !6437, file: !3, line: 471, type: !5270)
!6440 = !DILocalVariable(name: "adma", arg: 2, scope: !6437, file: !3, line: 472, type: !4956)
!6441 = !DILocalVariable(name: "info", scope: !6437, file: !3, line: 474, type: !6442)
!6442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6443, size: 64)
!6443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_dma_filter_info", file: !4958, line: 52, size: 128, elements: !6444)
!6444 = !{!6445, !6446}
!6445 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cap", scope: !6443, file: !4958, line: 53, baseType: !4996, size: 64)
!6446 = !DIDerivedType(tag: DW_TAG_member, name: "filter_fn", scope: !6443, file: !4958, line: 54, baseType: !4982, size: 64, offset: 64)
!6447 = !DILocation(line: 471, column: 62, scope: !6437)
!6448 = !DILocation(line: 472, column: 20, scope: !6437)
!6449 = !DILocation(line: 474, column: 2, scope: !6437)
!6450 = !DILocation(line: 474, column: 31, scope: !6437)
!6451 = !DILocation(line: 474, column: 38, scope: !6437)
!6452 = !DILocation(line: 474, column: 44, scope: !6437)
!6453 = !DILocation(line: 476, column: 7, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6437, file: !3, line: 476, column: 6)
!6455 = !DILocation(line: 476, column: 12, scope: !6454)
!6456 = !DILocation(line: 476, column: 16, scope: !6454)
!6457 = !DILocation(line: 476, column: 22, scope: !6454)
!6458 = !DILocation(line: 476, column: 6, scope: !6437)
!6459 = !DILocation(line: 477, column: 3, scope: !6454)
!6460 = !DILocation(line: 479, column: 9, scope: !6437)
!6461 = !DILocation(line: 479, column: 2, scope: !6437)
!6462 = !DILocation(line: 480, column: 1, scope: !6437)
!6463 = !DISubprogram(name: "__dma_request_channel", scope: !148, file: !148, line: 1487, type: !6464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6464 = !DISubroutineType(types: !6465)
!6465 = !{!4966, !6466, !4982, !233, !4568}
!6466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6467, size: 64)
!6467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4996)
!6468 = distinct !DISubprogram(name: "kmalloc", scope: !223, file: !223, line: 591, type: !5474, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6469)
!6469 = !{!6470, !6471, !6472}
!6470 = !DILocalVariable(name: "size", arg: 1, scope: !6468, file: !223, line: 591, type: !422)
!6471 = !DILocalVariable(name: "flags", arg: 2, scope: !6468, file: !223, line: 591, type: !1226)
!6472 = !DILocalVariable(name: "index", scope: !6473, file: !223, line: 594, type: !7)
!6473 = distinct !DILexicalBlock(scope: !6474, file: !223, line: 593, column: 42)
!6474 = distinct !DILexicalBlock(scope: !6468, file: !223, line: 593, column: 6)
!6475 = !DILocation(line: 591, column: 61, scope: !6468)
!6476 = !DILocation(line: 591, column: 73, scope: !6468)
!6477 = !DILocation(line: 593, column: 27, scope: !6474)
!6478 = !DILocation(line: 593, column: 6, scope: !6474)
!6479 = !DILocation(line: 593, column: 33, scope: !6474)
!6480 = !DILocation(line: 593, column: 36, scope: !6474)
!6481 = !DILocation(line: 593, column: 6, scope: !6468)
!6482 = !DILocation(line: 594, column: 3, scope: !6473)
!6483 = !DILocation(line: 594, column: 16, scope: !6473)
!6484 = !DILocation(line: 596, column: 7, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6473, file: !223, line: 596, column: 7)
!6486 = !DILocation(line: 596, column: 12, scope: !6485)
!6487 = !DILocation(line: 596, column: 7, scope: !6473)
!6488 = !DILocation(line: 597, column: 25, scope: !6485)
!6489 = !DILocation(line: 597, column: 31, scope: !6485)
!6490 = !DILocation(line: 597, column: 11, scope: !6485)
!6491 = !DILocation(line: 597, column: 4, scope: !6485)
!6492 = !DILocation(line: 599, column: 11, scope: !6473)
!6493 = !DILocation(line: 599, column: 9, scope: !6473)
!6494 = !DILocation(line: 601, column: 33, scope: !6473)
!6495 = !DILocation(line: 601, column: 40, scope: !6473)
!6496 = !DILocation(line: 601, column: 20, scope: !6473)
!6497 = !DILocation(line: 601, column: 5, scope: !6473)
!6498 = !DILocation(line: 601, column: 51, scope: !6473)
!6499 = !DILocation(line: 602, column: 5, scope: !6473)
!6500 = !DILocation(line: 602, column: 12, scope: !6473)
!6501 = !DILocation(line: 600, column: 10, scope: !6473)
!6502 = !DILocation(line: 600, column: 3, scope: !6473)
!6503 = !DILocation(line: 603, column: 2, scope: !6474)
!6504 = !DILocation(line: 604, column: 19, scope: !6468)
!6505 = !DILocation(line: 604, column: 25, scope: !6468)
!6506 = !DILocation(line: 604, column: 9, scope: !6468)
!6507 = !DILocation(line: 604, column: 2, scope: !6468)
!6508 = !DILocation(line: 605, column: 1, scope: !6468)
!6509 = !DISubprogram(name: "kmalloc_large", scope: !223, file: !223, line: 531, type: !5474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6510 = distinct !DISubprogram(name: "__kmalloc_index", scope: !223, file: !223, line: 444, type: !6511, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6513)
!6511 = !DISubroutineType(types: !6512)
!6512 = !{!7, !422, !270}
!6513 = !{!6514, !6515}
!6514 = !DILocalVariable(name: "size", arg: 1, scope: !6510, file: !223, line: 444, type: !422)
!6515 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6510, file: !223, line: 445, type: !270)
!6516 = !DILocation(line: 444, column: 60, scope: !6510)
!6517 = !DILocation(line: 445, column: 16, scope: !6510)
!6518 = !DILocation(line: 447, column: 7, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 447, column: 6)
!6520 = !DILocation(line: 447, column: 6, scope: !6510)
!6521 = !DILocation(line: 448, column: 3, scope: !6519)
!6522 = !DILocation(line: 450, column: 6, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 450, column: 6)
!6524 = !DILocation(line: 450, column: 11, scope: !6523)
!6525 = !DILocation(line: 450, column: 6, scope: !6510)
!6526 = !DILocation(line: 451, column: 3, scope: !6523)
!6527 = !DILocation(line: 453, column: 32, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 453, column: 6)
!6529 = !DILocation(line: 453, column: 37, scope: !6528)
!6530 = !DILocation(line: 453, column: 42, scope: !6528)
!6531 = !DILocation(line: 453, column: 45, scope: !6528)
!6532 = !DILocation(line: 453, column: 50, scope: !6528)
!6533 = !DILocation(line: 453, column: 6, scope: !6510)
!6534 = !DILocation(line: 454, column: 3, scope: !6528)
!6535 = !DILocation(line: 455, column: 32, scope: !6536)
!6536 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 455, column: 6)
!6537 = !DILocation(line: 455, column: 37, scope: !6536)
!6538 = !DILocation(line: 455, column: 43, scope: !6536)
!6539 = !DILocation(line: 455, column: 46, scope: !6536)
!6540 = !DILocation(line: 455, column: 51, scope: !6536)
!6541 = !DILocation(line: 455, column: 6, scope: !6510)
!6542 = !DILocation(line: 456, column: 3, scope: !6536)
!6543 = !DILocation(line: 457, column: 6, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 457, column: 6)
!6545 = !DILocation(line: 457, column: 11, scope: !6544)
!6546 = !DILocation(line: 457, column: 6, scope: !6510)
!6547 = !DILocation(line: 457, column: 26, scope: !6544)
!6548 = !DILocation(line: 458, column: 6, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 458, column: 6)
!6550 = !DILocation(line: 458, column: 11, scope: !6549)
!6551 = !DILocation(line: 458, column: 6, scope: !6510)
!6552 = !DILocation(line: 458, column: 26, scope: !6549)
!6553 = !DILocation(line: 459, column: 6, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 459, column: 6)
!6555 = !DILocation(line: 459, column: 11, scope: !6554)
!6556 = !DILocation(line: 459, column: 6, scope: !6510)
!6557 = !DILocation(line: 459, column: 26, scope: !6554)
!6558 = !DILocation(line: 460, column: 6, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 460, column: 6)
!6560 = !DILocation(line: 460, column: 11, scope: !6559)
!6561 = !DILocation(line: 460, column: 6, scope: !6510)
!6562 = !DILocation(line: 460, column: 26, scope: !6559)
!6563 = !DILocation(line: 461, column: 6, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 461, column: 6)
!6565 = !DILocation(line: 461, column: 11, scope: !6564)
!6566 = !DILocation(line: 461, column: 6, scope: !6510)
!6567 = !DILocation(line: 461, column: 26, scope: !6564)
!6568 = !DILocation(line: 462, column: 6, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 462, column: 6)
!6570 = !DILocation(line: 462, column: 11, scope: !6569)
!6571 = !DILocation(line: 462, column: 6, scope: !6510)
!6572 = !DILocation(line: 462, column: 26, scope: !6569)
!6573 = !DILocation(line: 463, column: 6, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 463, column: 6)
!6575 = !DILocation(line: 463, column: 11, scope: !6574)
!6576 = !DILocation(line: 463, column: 6, scope: !6510)
!6577 = !DILocation(line: 463, column: 26, scope: !6574)
!6578 = !DILocation(line: 464, column: 6, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 464, column: 6)
!6580 = !DILocation(line: 464, column: 11, scope: !6579)
!6581 = !DILocation(line: 464, column: 6, scope: !6510)
!6582 = !DILocation(line: 464, column: 26, scope: !6579)
!6583 = !DILocation(line: 465, column: 6, scope: !6584)
!6584 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 465, column: 6)
!6585 = !DILocation(line: 465, column: 11, scope: !6584)
!6586 = !DILocation(line: 465, column: 6, scope: !6510)
!6587 = !DILocation(line: 465, column: 26, scope: !6584)
!6588 = !DILocation(line: 466, column: 6, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 466, column: 6)
!6590 = !DILocation(line: 466, column: 11, scope: !6589)
!6591 = !DILocation(line: 466, column: 6, scope: !6510)
!6592 = !DILocation(line: 466, column: 26, scope: !6589)
!6593 = !DILocation(line: 467, column: 6, scope: !6594)
!6594 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 467, column: 6)
!6595 = !DILocation(line: 467, column: 11, scope: !6594)
!6596 = !DILocation(line: 467, column: 6, scope: !6510)
!6597 = !DILocation(line: 467, column: 26, scope: !6594)
!6598 = !DILocation(line: 468, column: 6, scope: !6599)
!6599 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 468, column: 6)
!6600 = !DILocation(line: 468, column: 11, scope: !6599)
!6601 = !DILocation(line: 468, column: 6, scope: !6510)
!6602 = !DILocation(line: 468, column: 26, scope: !6599)
!6603 = !DILocation(line: 469, column: 6, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 469, column: 6)
!6605 = !DILocation(line: 469, column: 11, scope: !6604)
!6606 = !DILocation(line: 469, column: 6, scope: !6510)
!6607 = !DILocation(line: 469, column: 26, scope: !6604)
!6608 = !DILocation(line: 470, column: 6, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 470, column: 6)
!6610 = !DILocation(line: 470, column: 11, scope: !6609)
!6611 = !DILocation(line: 470, column: 6, scope: !6510)
!6612 = !DILocation(line: 470, column: 26, scope: !6609)
!6613 = !DILocation(line: 471, column: 6, scope: !6614)
!6614 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 471, column: 6)
!6615 = !DILocation(line: 471, column: 11, scope: !6614)
!6616 = !DILocation(line: 471, column: 6, scope: !6510)
!6617 = !DILocation(line: 471, column: 26, scope: !6614)
!6618 = !DILocation(line: 472, column: 6, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 472, column: 6)
!6620 = !DILocation(line: 472, column: 11, scope: !6619)
!6621 = !DILocation(line: 472, column: 6, scope: !6510)
!6622 = !DILocation(line: 472, column: 26, scope: !6619)
!6623 = !DILocation(line: 473, column: 6, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 473, column: 6)
!6625 = !DILocation(line: 473, column: 11, scope: !6624)
!6626 = !DILocation(line: 473, column: 6, scope: !6510)
!6627 = !DILocation(line: 473, column: 26, scope: !6624)
!6628 = !DILocation(line: 474, column: 6, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 474, column: 6)
!6630 = !DILocation(line: 474, column: 11, scope: !6629)
!6631 = !DILocation(line: 474, column: 6, scope: !6510)
!6632 = !DILocation(line: 474, column: 27, scope: !6629)
!6633 = !DILocation(line: 475, column: 6, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 475, column: 6)
!6635 = !DILocation(line: 475, column: 11, scope: !6634)
!6636 = !DILocation(line: 475, column: 6, scope: !6510)
!6637 = !DILocation(line: 475, column: 32, scope: !6634)
!6638 = !DILocation(line: 477, column: 50, scope: !6639)
!6639 = distinct !DILexicalBlock(scope: !6510, file: !223, line: 477, column: 6)
!6640 = !{i8 0, i8 2}
!6641 = !DILocation(line: 477, column: 6, scope: !6510)
!6642 = !DILocation(line: 478, column: 3, scope: !6639)
!6643 = !DILocation(line: 478, column: 3, scope: !6644)
!6644 = distinct !DILexicalBlock(scope: !6645, file: !223, line: 478, column: 3)
!6645 = distinct !DILexicalBlock(scope: !6639, file: !223, line: 478, column: 3)
!6646 = !{i32 -2141577298}
!6647 = !DILocation(line: 478, column: 3, scope: !6645)
!6648 = !DILocation(line: 480, column: 3, scope: !6639)
!6649 = !DILocation(line: 480, column: 3, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6639, file: !223, line: 480, column: 3)
!6651 = !DILocation(line: 480, column: 3, scope: !6652)
!6652 = distinct !DILexicalBlock(scope: !6650, file: !223, line: 480, column: 3)
!6653 = !DILocation(line: 480, column: 3, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6650, file: !223, line: 480, column: 3)
!6655 = !{i64 2153390201, i64 2153390230, i64 2153390276, i64 2153390334, i64 2153390388, i64 2153390442, i64 2153390497, i64 2153390528}
!6656 = !DILocation(line: 483, column: 2, scope: !6510)
!6657 = !DILocation(line: 484, column: 1, scope: !6510)
!6658 = !DISubprogram(name: "kmalloc_trace", scope: !223, file: !223, line: 525, type: !6659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6659 = !DISubroutineType(types: !6660)
!6660 = !{!233, !6661, !1226, !422}
!6661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6662, size: 64)
!6662 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6663, line: 11, flags: DIFlagFwdDecl)
!6663 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6664 = distinct !DISubprogram(name: "kmalloc_type", scope: !223, file: !223, line: 401, type: !6665, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6667)
!6665 = !DISubroutineType(types: !6666)
!6666 = !{!222, !1226, !425}
!6667 = !{!6668, !6669}
!6668 = !DILocalVariable(name: "flags", arg: 1, scope: !6664, file: !223, line: 401, type: !1226)
!6669 = !DILocalVariable(name: "caller", arg: 2, scope: !6664, file: !223, line: 401, type: !425)
!6670 = !DILocation(line: 401, column: 67, scope: !6664)
!6671 = !DILocation(line: 401, column: 88, scope: !6664)
!6672 = !DILocation(line: 407, column: 6, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6664, file: !223, line: 407, column: 6)
!6674 = !DILocation(line: 407, column: 6, scope: !6664)
!6675 = !DILocation(line: 413, column: 3, scope: !6673)
!6676 = !DILocation(line: 423, column: 38, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6664, file: !223, line: 423, column: 6)
!6678 = !DILocation(line: 423, column: 44, scope: !6677)
!6679 = !DILocation(line: 423, column: 6, scope: !6664)
!6680 = !DILocation(line: 424, column: 3, scope: !6677)
!6681 = !DILocation(line: 426, column: 3, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6664, file: !223, line: 425, column: 6)
!6683 = !DILocation(line: 429, column: 1, scope: !6664)
!6684 = !DISubprogram(name: "__kmalloc", scope: !223, file: !223, line: 488, type: !5474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6685 = !DISubprogram(name: "__compiletime_assert_229", scope: !223, file: !223, line: 478, type: !1077, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6686 = !DISubprogram(name: "acpi_get_table", scope: !6687, file: !6687, line: 489, type: !6688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6687 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!6688 = !DISubroutineType(types: !6689)
!6689 = !{!5294, !6690, !239, !5279}
!6690 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !246, line: 423, baseType: !375)
!6691 = !DISubprogram(name: "_dev_warn", scope: !6692, file: !6692, line: 52, type: !6693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6692 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6693 = !DISubroutineType(types: !6694)
!6694 = !{null, !281, !290, null}
!6695 = distinct !DISubprogram(name: "acpi_dma_parse_resource_group", scope: !3, file: !3, line: 41, type: !6696, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6700)
!6696 = !DISubroutineType(types: !6697)
!6697 = !{!109, !6698, !234, !4956}
!6698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6699, size: 64)
!6699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5296)
!6700 = !{!6701, !6702, !6703, !6704, !6705, !6706, !6707, !6708, !6709, !6710, !6713}
!6701 = !DILocalVariable(name: "grp", arg: 1, scope: !6695, file: !3, line: 41, type: !6698)
!6702 = !DILocalVariable(name: "adev", arg: 2, scope: !6695, file: !3, line: 42, type: !234)
!6703 = !DILocalVariable(name: "adma", arg: 3, scope: !6695, file: !3, line: 42, type: !4956)
!6704 = !DILocalVariable(name: "si", scope: !6695, file: !3, line: 44, type: !5328)
!6705 = !DILocalVariable(name: "resource_list", scope: !6695, file: !3, line: 45, type: !294)
!6706 = !DILocalVariable(name: "rentry", scope: !6695, file: !3, line: 46, type: !5307)
!6707 = !DILocalVariable(name: "mem", scope: !6695, file: !3, line: 47, type: !5318)
!6708 = !DILocalVariable(name: "irq", scope: !6695, file: !3, line: 47, type: !5318)
!6709 = !DILocalVariable(name: "ret", scope: !6695, file: !3, line: 48, type: !109)
!6710 = !DILocalVariable(name: "__mptr", scope: !6711, file: !3, line: 58, type: !233)
!6711 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 58, column: 2)
!6712 = distinct !DILexicalBlock(scope: !6695, file: !3, line: 58, column: 2)
!6713 = !DILocalVariable(name: "__mptr", scope: !6714, file: !3, line: 58, type: !233)
!6714 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 58, column: 2)
!6715 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 58, column: 2)
!6716 = !DILocation(line: 41, column: 72, scope: !6695)
!6717 = !DILocation(line: 42, column: 23, scope: !6695)
!6718 = !DILocation(line: 42, column: 46, scope: !6695)
!6719 = !DILocation(line: 44, column: 2, scope: !6695)
!6720 = !DILocation(line: 44, column: 38, scope: !6695)
!6721 = !DILocation(line: 45, column: 2, scope: !6695)
!6722 = !DILocation(line: 45, column: 19, scope: !6695)
!6723 = !DILocation(line: 46, column: 2, scope: !6695)
!6724 = !DILocation(line: 46, column: 25, scope: !6695)
!6725 = !DILocation(line: 47, column: 2, scope: !6695)
!6726 = !DILocation(line: 47, column: 18, scope: !6695)
!6727 = !DILocation(line: 47, column: 27, scope: !6695)
!6728 = !DILocation(line: 48, column: 2, scope: !6695)
!6729 = !DILocation(line: 48, column: 6, scope: !6695)
!6730 = !DILocation(line: 50, column: 6, scope: !6731)
!6731 = distinct !DILexicalBlock(scope: !6695, file: !3, line: 50, column: 6)
!6732 = !DILocation(line: 50, column: 11, scope: !6731)
!6733 = !DILocation(line: 50, column: 30, scope: !6731)
!6734 = !DILocation(line: 50, column: 6, scope: !6695)
!6735 = !DILocation(line: 51, column: 3, scope: !6731)
!6736 = !DILocation(line: 53, column: 2, scope: !6695)
!6737 = !DILocation(line: 54, column: 31, scope: !6695)
!6738 = !DILocation(line: 54, column: 8, scope: !6695)
!6739 = !DILocation(line: 54, column: 6, scope: !6695)
!6740 = !DILocation(line: 55, column: 6, scope: !6741)
!6741 = distinct !DILexicalBlock(scope: !6695, file: !3, line: 55, column: 6)
!6742 = !DILocation(line: 55, column: 10, scope: !6741)
!6743 = !DILocation(line: 55, column: 6, scope: !6695)
!6744 = !DILocation(line: 56, column: 3, scope: !6741)
!6745 = !DILocation(line: 58, column: 2, scope: !6711)
!6746 = !DILocation(line: 58, column: 2, scope: !6712)
!6747 = !DILocation(line: 58, column: 2, scope: !6715)
!6748 = !DILocation(line: 59, column: 21, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6750, file: !3, line: 59, column: 7)
!6750 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 58, column: 52)
!6751 = !DILocation(line: 59, column: 29, scope: !6749)
!6752 = !DILocation(line: 59, column: 7, scope: !6749)
!6753 = !DILocation(line: 59, column: 34, scope: !6749)
!6754 = !DILocation(line: 59, column: 7, scope: !6750)
!6755 = !DILocation(line: 60, column: 10, scope: !6749)
!6756 = !DILocation(line: 60, column: 18, scope: !6749)
!6757 = !DILocation(line: 60, column: 23, scope: !6749)
!6758 = !DILocation(line: 60, column: 8, scope: !6749)
!6759 = !DILocation(line: 60, column: 4, scope: !6749)
!6760 = !DILocation(line: 61, column: 26, scope: !6761)
!6761 = distinct !DILexicalBlock(scope: !6749, file: !3, line: 61, column: 12)
!6762 = !DILocation(line: 61, column: 34, scope: !6761)
!6763 = !DILocation(line: 61, column: 12, scope: !6761)
!6764 = !DILocation(line: 61, column: 39, scope: !6761)
!6765 = !DILocation(line: 61, column: 12, scope: !6749)
!6766 = !DILocation(line: 62, column: 10, scope: !6761)
!6767 = !DILocation(line: 62, column: 18, scope: !6761)
!6768 = !DILocation(line: 62, column: 23, scope: !6761)
!6769 = !DILocation(line: 62, column: 8, scope: !6761)
!6770 = !DILocation(line: 62, column: 4, scope: !6761)
!6771 = !DILocation(line: 63, column: 2, scope: !6750)
!6772 = !DILocation(line: 58, column: 2, scope: !6714)
!6773 = distinct !{!6773, !6746, !6774, !5564, !5565}
!6774 = !DILocation(line: 63, column: 2, scope: !6712)
!6775 = !DILocation(line: 65, column: 2, scope: !6695)
!6776 = !DILocation(line: 68, column: 6, scope: !6777)
!6777 = distinct !DILexicalBlock(scope: !6695, file: !3, line: 68, column: 6)
!6778 = !DILocation(line: 68, column: 10, scope: !6777)
!6779 = !DILocation(line: 68, column: 15, scope: !6777)
!6780 = !DILocation(line: 68, column: 18, scope: !6777)
!6781 = !DILocation(line: 68, column: 22, scope: !6777)
!6782 = !DILocation(line: 68, column: 6, scope: !6695)
!6783 = !DILocation(line: 69, column: 3, scope: !6777)
!6784 = !DILocation(line: 71, column: 46, scope: !6695)
!6785 = !DILocation(line: 71, column: 5, scope: !6695)
!6786 = !DILocation(line: 74, column: 6, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6695, file: !3, line: 74, column: 6)
!6788 = !DILocation(line: 74, column: 10, scope: !6787)
!6789 = !DILocation(line: 74, column: 27, scope: !6787)
!6790 = !DILocation(line: 74, column: 24, scope: !6787)
!6791 = !DILocation(line: 74, column: 46, scope: !6787)
!6792 = !DILocation(line: 75, column: 6, scope: !6787)
!6793 = !DILocation(line: 75, column: 10, scope: !6787)
!6794 = !DILocation(line: 75, column: 28, scope: !6787)
!6795 = !DILocation(line: 75, column: 25, scope: !6787)
!6796 = !DILocation(line: 74, column: 6, scope: !6695)
!6797 = !DILocation(line: 76, column: 3, scope: !6787)
!6798 = !DILocation(line: 83, column: 32, scope: !6695)
!6799 = !DILocation(line: 83, column: 36, scope: !6695)
!6800 = !DILocation(line: 83, column: 51, scope: !6695)
!6801 = !DILocation(line: 83, column: 55, scope: !6695)
!6802 = !DILocation(line: 83, column: 71, scope: !6695)
!6803 = !DILocation(line: 83, column: 75, scope: !6695)
!6804 = !DILocation(line: 83, column: 8, scope: !6695)
!6805 = !DILocation(line: 83, column: 6, scope: !6695)
!6806 = !DILocation(line: 84, column: 6, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6695, file: !3, line: 84, column: 6)
!6808 = !DILocation(line: 84, column: 10, scope: !6807)
!6809 = !DILocation(line: 84, column: 6, scope: !6695)
!6810 = !DILocation(line: 85, column: 3, scope: !6807)
!6811 = !DILocation(line: 88, column: 6, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6695, file: !3, line: 88, column: 6)
!6813 = !DILocation(line: 88, column: 13, scope: !6812)
!6814 = !DILocation(line: 88, column: 10, scope: !6812)
!6815 = !DILocation(line: 88, column: 6, scope: !6695)
!6816 = !DILocation(line: 89, column: 3, scope: !6812)
!6817 = !DILocation(line: 95, column: 6, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !6695, file: !3, line: 95, column: 6)
!6819 = !DILocation(line: 95, column: 10, scope: !6818)
!6820 = !DILocation(line: 95, column: 28, scope: !6818)
!6821 = !DILocation(line: 95, column: 33, scope: !6818)
!6822 = !DILocation(line: 95, column: 36, scope: !6818)
!6823 = !DILocation(line: 95, column: 40, scope: !6818)
!6824 = !DILocation(line: 95, column: 62, scope: !6818)
!6825 = !DILocation(line: 95, column: 6, scope: !6695)
!6826 = !DILocation(line: 96, column: 3, scope: !6818)
!6827 = !DILocation(line: 99, column: 38, scope: !6695)
!6828 = !DILocation(line: 99, column: 44, scope: !6695)
!6829 = !DILocation(line: 100, column: 9, scope: !6695)
!6830 = !DILocation(line: 99, column: 8, scope: !6695)
!6831 = !DILocation(line: 99, column: 6, scope: !6695)
!6832 = !DILocation(line: 101, column: 6, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6695, file: !3, line: 101, column: 6)
!6834 = !DILocation(line: 101, column: 6, scope: !6695)
!6835 = !DILocation(line: 102, column: 3, scope: !6833)
!6836 = !DILocation(line: 104, column: 28, scope: !6695)
!6837 = !DILocation(line: 104, column: 32, scope: !6695)
!6838 = !DILocation(line: 104, column: 2, scope: !6695)
!6839 = !DILocation(line: 104, column: 8, scope: !6695)
!6840 = !DILocation(line: 104, column: 26, scope: !6695)
!6841 = !DILocation(line: 105, column: 27, scope: !6695)
!6842 = !DILocation(line: 105, column: 31, scope: !6695)
!6843 = !DILocation(line: 106, column: 6, scope: !6695)
!6844 = !DILocation(line: 106, column: 10, scope: !6695)
!6845 = !DILocation(line: 105, column: 49, scope: !6695)
!6846 = !DILocation(line: 106, column: 32, scope: !6695)
!6847 = !DILocation(line: 105, column: 2, scope: !6695)
!6848 = !DILocation(line: 105, column: 8, scope: !6695)
!6849 = !DILocation(line: 105, column: 25, scope: !6695)
!6850 = !DILocation(line: 111, column: 2, scope: !6695)
!6851 = !DILocation(line: 112, column: 1, scope: !6695)
!6852 = !DISubprogram(name: "acpi_put_table", scope: !6687, file: !6687, line: 493, type: !6853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6853 = !DISubroutineType(types: !6854)
!6854 = !{null, !5280}
!6855 = distinct !DISubprogram(name: "resource_type", scope: !5315, file: !5315, line: 223, type: !6856, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6860)
!6856 = !DISubroutineType(types: !6857)
!6857 = !{!425, !6858}
!6858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6859, size: 64)
!6859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5314)
!6860 = !{!6861}
!6861 = !DILocalVariable(name: "res", arg: 1, scope: !6855, file: !5315, line: 223, type: !6858)
!6862 = !DILocation(line: 223, column: 66, scope: !6855)
!6863 = !DILocation(line: 225, column: 9, scope: !6855)
!6864 = !DILocation(line: 225, column: 14, scope: !6855)
!6865 = !DILocation(line: 225, column: 20, scope: !6855)
!6866 = !DILocation(line: 225, column: 2, scope: !6855)
!6867 = !DISubprogram(name: "acpi_register_gsi", scope: !5869, file: !5869, line: 347, type: !6868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6868 = !DISubroutineType(types: !6869)
!6869 = !{!109, !4274, !239, !109, !109}
!6870 = distinct !DISubprogram(name: "dma_coerce_mask_and_coherent", scope: !6871, file: !6871, line: 462, type: !6872, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6874)
!6871 = !DIFile(filename: "./include/linux/dma-mapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6d71421f89fccf9a1ad0866e8178cd1")
!6872 = !DISubroutineType(types: !6873)
!6873 = !{!109, !4274, !526}
!6874 = !{!6875, !6876}
!6875 = !DILocalVariable(name: "dev", arg: 1, scope: !6870, file: !6871, line: 462, type: !4274)
!6876 = !DILocalVariable(name: "mask", arg: 2, scope: !6870, file: !6871, line: 462, type: !526)
!6877 = !DILocation(line: 462, column: 63, scope: !6870)
!6878 = !DILocation(line: 462, column: 72, scope: !6870)
!6879 = !DILocation(line: 464, column: 19, scope: !6870)
!6880 = !DILocation(line: 464, column: 24, scope: !6870)
!6881 = !DILocation(line: 464, column: 2, scope: !6870)
!6882 = !DILocation(line: 464, column: 7, scope: !6870)
!6883 = !DILocation(line: 464, column: 16, scope: !6870)
!6884 = !DILocation(line: 465, column: 35, scope: !6870)
!6885 = !DILocation(line: 465, column: 40, scope: !6870)
!6886 = !DILocation(line: 465, column: 9, scope: !6870)
!6887 = !DILocation(line: 465, column: 2, scope: !6870)
!6888 = distinct !DISubprogram(name: "dma_set_mask_and_coherent", scope: !6871, file: !6871, line: 450, type: !6872, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6889)
!6889 = !{!6890, !6891, !6892}
!6890 = !DILocalVariable(name: "dev", arg: 1, scope: !6888, file: !6871, line: 450, type: !4274)
!6891 = !DILocalVariable(name: "mask", arg: 2, scope: !6888, file: !6871, line: 450, type: !526)
!6892 = !DILocalVariable(name: "rc", scope: !6888, file: !6871, line: 452, type: !109)
!6893 = !DILocation(line: 450, column: 60, scope: !6888)
!6894 = !DILocation(line: 450, column: 69, scope: !6888)
!6895 = !DILocation(line: 452, column: 2, scope: !6888)
!6896 = !DILocation(line: 452, column: 6, scope: !6888)
!6897 = !DILocation(line: 452, column: 24, scope: !6888)
!6898 = !DILocation(line: 452, column: 29, scope: !6888)
!6899 = !DILocation(line: 452, column: 11, scope: !6888)
!6900 = !DILocation(line: 453, column: 6, scope: !6901)
!6901 = distinct !DILexicalBlock(scope: !6888, file: !6871, line: 453, column: 6)
!6902 = !DILocation(line: 453, column: 9, scope: !6901)
!6903 = !DILocation(line: 453, column: 6, scope: !6888)
!6904 = !DILocation(line: 454, column: 25, scope: !6901)
!6905 = !DILocation(line: 454, column: 30, scope: !6901)
!6906 = !DILocation(line: 454, column: 3, scope: !6901)
!6907 = !DILocation(line: 455, column: 9, scope: !6888)
!6908 = !DILocation(line: 456, column: 1, scope: !6888)
!6909 = !DILocation(line: 455, column: 2, scope: !6888)
!6910 = !DISubprogram(name: "dma_set_mask", scope: !6871, file: !6871, line: 144, type: !6872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6911 = !DISubprogram(name: "dma_set_coherent_mask", scope: !6871, file: !6871, line: 145, type: !6872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6912 = distinct !DISubprogram(name: "__list_add", scope: !5574, file: !5574, line: 146, type: !6913, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6915)
!6913 = !DISubroutineType(types: !6914)
!6914 = !{null, !297, !297, !297}
!6915 = !{!6916, !6917, !6918}
!6916 = !DILocalVariable(name: "new", arg: 1, scope: !6912, file: !5574, line: 146, type: !297)
!6917 = !DILocalVariable(name: "prev", arg: 2, scope: !6912, file: !5574, line: 147, type: !297)
!6918 = !DILocalVariable(name: "next", arg: 3, scope: !6912, file: !5574, line: 148, type: !297)
!6919 = !DILocation(line: 146, column: 49, scope: !6912)
!6920 = !DILocation(line: 147, column: 28, scope: !6912)
!6921 = !DILocation(line: 148, column: 28, scope: !6912)
!6922 = !DILocation(line: 150, column: 24, scope: !6923)
!6923 = distinct !DILexicalBlock(scope: !6912, file: !5574, line: 150, column: 6)
!6924 = !DILocation(line: 150, column: 29, scope: !6923)
!6925 = !DILocation(line: 150, column: 35, scope: !6923)
!6926 = !DILocation(line: 150, column: 7, scope: !6923)
!6927 = !DILocation(line: 150, column: 6, scope: !6912)
!6928 = !DILocation(line: 151, column: 3, scope: !6923)
!6929 = !DILocation(line: 153, column: 15, scope: !6912)
!6930 = !DILocation(line: 153, column: 2, scope: !6912)
!6931 = !DILocation(line: 153, column: 8, scope: !6912)
!6932 = !DILocation(line: 153, column: 13, scope: !6912)
!6933 = !DILocation(line: 154, column: 14, scope: !6912)
!6934 = !DILocation(line: 154, column: 2, scope: !6912)
!6935 = !DILocation(line: 154, column: 7, scope: !6912)
!6936 = !DILocation(line: 154, column: 12, scope: !6912)
!6937 = !DILocation(line: 155, column: 14, scope: !6912)
!6938 = !DILocation(line: 155, column: 2, scope: !6912)
!6939 = !DILocation(line: 155, column: 7, scope: !6912)
!6940 = !DILocation(line: 155, column: 12, scope: !6912)
!6941 = !DILocation(line: 156, column: 2, scope: !6912)
!6942 = !DILocation(line: 156, column: 2, scope: !6943)
!6943 = distinct !DILexicalBlock(scope: !6912, file: !5574, line: 156, column: 2)
!6944 = !DILocation(line: 156, column: 2, scope: !6945)
!6945 = distinct !DILexicalBlock(scope: !6943, file: !5574, line: 156, column: 2)
!6946 = !DILocation(line: 156, column: 2, scope: !6947)
!6947 = distinct !DILexicalBlock(scope: !6943, file: !5574, line: 156, column: 2)
!6948 = !DILocation(line: 157, column: 1, scope: !6912)
!6949 = distinct !DISubprogram(name: "__list_add_valid", scope: !5574, file: !5574, line: 128, type: !6950, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6952)
!6950 = !DISubroutineType(types: !6951)
!6951 = !{!270, !297, !297, !297}
!6952 = !{!6953, !6954, !6955}
!6953 = !DILocalVariable(name: "new", arg: 1, scope: !6949, file: !5574, line: 128, type: !297)
!6954 = !DILocalVariable(name: "prev", arg: 2, scope: !6949, file: !5574, line: 129, type: !297)
!6955 = !DILocalVariable(name: "next", arg: 3, scope: !6949, file: !5574, line: 130, type: !297)
!6956 = !DILocation(line: 128, column: 55, scope: !6949)
!6957 = !DILocation(line: 129, column: 23, scope: !6949)
!6958 = !DILocation(line: 130, column: 23, scope: !6949)
!6959 = !DILocation(line: 132, column: 2, scope: !6949)
!6960 = distinct !DISubprogram(name: "__list_del_entry", scope: !5574, file: !5574, line: 213, type: !5631, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6961)
!6961 = !{!6962}
!6962 = !DILocalVariable(name: "entry", arg: 1, scope: !6960, file: !5574, line: 213, type: !297)
!6963 = !DILocation(line: 213, column: 55, scope: !6960)
!6964 = !DILocation(line: 215, column: 30, scope: !6965)
!6965 = distinct !DILexicalBlock(scope: !6960, file: !5574, line: 215, column: 6)
!6966 = !DILocation(line: 215, column: 7, scope: !6965)
!6967 = !DILocation(line: 215, column: 6, scope: !6960)
!6968 = !DILocation(line: 216, column: 3, scope: !6965)
!6969 = !DILocation(line: 218, column: 13, scope: !6960)
!6970 = !DILocation(line: 218, column: 20, scope: !6960)
!6971 = !DILocation(line: 218, column: 26, scope: !6960)
!6972 = !DILocation(line: 218, column: 33, scope: !6960)
!6973 = !DILocation(line: 218, column: 2, scope: !6960)
!6974 = !DILocation(line: 219, column: 1, scope: !6960)
!6975 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5574, file: !5574, line: 134, type: !6976, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6978)
!6976 = !DISubroutineType(types: !6977)
!6977 = !{!270, !297}
!6978 = !{!6979}
!6979 = !DILocalVariable(name: "entry", arg: 1, scope: !6975, file: !5574, line: 134, type: !297)
!6980 = !DILocation(line: 134, column: 61, scope: !6975)
!6981 = !DILocation(line: 136, column: 2, scope: !6975)
!6982 = distinct !DISubprogram(name: "__list_del", scope: !5574, file: !5574, line: 193, type: !5575, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6983)
!6983 = !{!6984, !6985}
!6984 = !DILocalVariable(name: "prev", arg: 1, scope: !6982, file: !5574, line: 193, type: !297)
!6985 = !DILocalVariable(name: "next", arg: 2, scope: !6982, file: !5574, line: 193, type: !297)
!6986 = !DILocation(line: 193, column: 50, scope: !6982)
!6987 = !DILocation(line: 193, column: 75, scope: !6982)
!6988 = !DILocation(line: 195, column: 15, scope: !6982)
!6989 = !DILocation(line: 195, column: 2, scope: !6982)
!6990 = !DILocation(line: 195, column: 8, scope: !6982)
!6991 = !DILocation(line: 195, column: 13, scope: !6982)
!6992 = !DILocation(line: 196, column: 2, scope: !6982)
!6993 = !DILocation(line: 196, column: 2, scope: !6994)
!6994 = distinct !DILexicalBlock(scope: !6982, file: !5574, line: 196, column: 2)
!6995 = !DILocation(line: 196, column: 2, scope: !6996)
!6996 = distinct !DILexicalBlock(scope: !6994, file: !5574, line: 196, column: 2)
!6997 = !DILocation(line: 196, column: 2, scope: !6998)
!6998 = distinct !DILexicalBlock(scope: !6994, file: !5574, line: 196, column: 2)
!6999 = !DILocation(line: 197, column: 1, scope: !6982)
