; ModuleID = 'drivers/usb/core/devices.c'
source_filename = "drivers/usb/core/devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.class_info = type { i32, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i64, i32, i16, i32, ptr, i64, i64, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i64] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.giveback_urb_bh = type { i8, i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i64, %struct.atomic_t, i8, %union.anon.13, i64 }
%union.anon.13 = type { ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, i32, [2 x i32], [4 x i8], ptr, ptr, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, [4 x i8], ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [3 x i8], i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, i32, %struct.work_struct, %struct.device, ptr, %struct.work_struct }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@usbfs_devices_fops = hidden constant %struct.file_operations { ptr null, ptr @no_seek_end_llseek, ptr @usb_device_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !0
@usb_bus_idr_lock = external dso_local global %struct.mutex, align 8
@usb_bus_idr = external dso_local global %struct.idr, align 8
@.str = private unnamed_addr constant [4 x i8] c"1.5\00", align 1, !dbg !5276
@.str.1 = private unnamed_addr constant [3 x i8] c"12\00", align 1, !dbg !5279
@.str.2 = private unnamed_addr constant [4 x i8] c"480\00", align 1, !dbg !5282
@.str.3 = private unnamed_addr constant [5 x i8] c"5000\00", align 1, !dbg !5284
@.str.4 = private unnamed_addr constant [6 x i8] c"10000\00", align 1, !dbg !5289
@.str.5 = private unnamed_addr constant [3 x i8] c"??\00", align 1, !dbg !5291
@format_topo = internal constant [85 x i8] c"\0AT:  Bus=%2.2d Lev=%2.2d Prnt=%2.2d Port=%2.2d Cnt=%2.2d Dev#=%3d Spd=%-4s MxCh=%2d\0A\00", align 16, !dbg !5298
@format_bandwidth = internal constant [50 x i8] c"B:  Alloc=%3d/%3d us (%2d%%), #Int=%3d, #Iso=%3d\0A\00", align 16, !dbg !5303
@.str.6 = private unnamed_addr constant [13 x i8] c"(truncated)\0A\00", align 1, !dbg !5293
@format_device1 = internal constant [71 x i8] c"D:  Ver=%2x.%02x Cls=%02x(%-5s) Sub=%02x Prot=%02x MxPS=%2d #Cfgs=%3d\0A\00", align 16, !dbg !5308
@format_device2 = internal constant [42 x i8] c"P:  Vendor=%04x ProdID=%04x Rev=%2x.%02x\0A\00", align 16, !dbg !5367
@clas_info = internal constant [22 x %struct.class_info] [%struct.class_info { i32 0, ptr @.str.7 }, %struct.class_info { i32 1, ptr @.str.8 }, %struct.class_info { i32 2, ptr @.str.9 }, %struct.class_info { i32 3, ptr @.str.10 }, %struct.class_info { i32 5, ptr @.str.11 }, %struct.class_info { i32 6, ptr @.str.12 }, %struct.class_info { i32 7, ptr @.str.13 }, %struct.class_info { i32 8, ptr @.str.14 }, %struct.class_info { i32 9, ptr @.str.15 }, %struct.class_info { i32 10, ptr @.str.16 }, %struct.class_info { i32 11, ptr @.str.17 }, %struct.class_info { i32 13, ptr @.str.18 }, %struct.class_info { i32 14, ptr @.str.19 }, %struct.class_info { i32 15, ptr @.str.20 }, %struct.class_info { i32 16, ptr @.str.21 }, %struct.class_info { i32 17, ptr @.str.22 }, %struct.class_info { i32 18, ptr @.str.23 }, %struct.class_info { i32 224, ptr @.str.24 }, %struct.class_info { i32 239, ptr @.str.25 }, %struct.class_info { i32 254, ptr @.str.26 }, %struct.class_info { i32 255, ptr @.str.27 }, %struct.class_info { i32 -1, ptr @.str.28 }], align 16, !dbg !5357
@.str.7 = private unnamed_addr constant [5 x i8] c">ifc\00", align 1, !dbg !5313
@.str.8 = private unnamed_addr constant [6 x i8] c"audio\00", align 1, !dbg !5315
@.str.9 = private unnamed_addr constant [6 x i8] c"comm.\00", align 1, !dbg !5317
@.str.10 = private unnamed_addr constant [4 x i8] c"HID\00", align 1, !dbg !5319
@.str.11 = private unnamed_addr constant [4 x i8] c"PID\00", align 1, !dbg !5321
@.str.12 = private unnamed_addr constant [6 x i8] c"still\00", align 1, !dbg !5323
@.str.13 = private unnamed_addr constant [6 x i8] c"print\00", align 1, !dbg !5325
@.str.14 = private unnamed_addr constant [6 x i8] c"stor.\00", align 1, !dbg !5327
@.str.15 = private unnamed_addr constant [4 x i8] c"hub\00", align 1, !dbg !5329
@.str.16 = private unnamed_addr constant [5 x i8] c"data\00", align 1, !dbg !5331
@.str.17 = private unnamed_addr constant [6 x i8] c"scard\00", align 1, !dbg !5333
@.str.18 = private unnamed_addr constant [6 x i8] c"c-sec\00", align 1, !dbg !5335
@.str.19 = private unnamed_addr constant [6 x i8] c"video\00", align 1, !dbg !5337
@.str.20 = private unnamed_addr constant [6 x i8] c"perhc\00", align 1, !dbg !5339
@.str.21 = private unnamed_addr constant [3 x i8] c"av\00", align 1, !dbg !5341
@.str.22 = private unnamed_addr constant [6 x i8] c"blbrd\00", align 1, !dbg !5343
@.str.23 = private unnamed_addr constant [6 x i8] c"bridg\00", align 1, !dbg !5345
@.str.24 = private unnamed_addr constant [6 x i8] c"wlcon\00", align 1, !dbg !5347
@.str.25 = private unnamed_addr constant [5 x i8] c"misc\00", align 1, !dbg !5349
@.str.26 = private unnamed_addr constant [5 x i8] c"app.\00", align 1, !dbg !5351
@.str.27 = private unnamed_addr constant [6 x i8] c"vend.\00", align 1, !dbg !5353
@.str.28 = private unnamed_addr constant [5 x i8] c"unk.\00", align 1, !dbg !5355
@format_string_manufacturer = internal constant [25 x i8] c"S:  Manufacturer=%.100s\0A\00", align 16, !dbg !5372
@format_string_product = internal constant [20 x i8] c"S:  Product=%.100s\0A\00", align 16, !dbg !5377
@format_string_serialnumber = internal constant [25 x i8] c"S:  SerialNumber=%.100s\0A\00", align 16, !dbg !5380
@.str.29 = private unnamed_addr constant [19 x i8] c"(null Cfg. desc.)\0A\00", align 1, !dbg !5382
@format_config = internal constant [45 x i8] c"C:%c #Ifs=%2d Cfg#=%2d Atr=%02x MxPwr=%3dmA\0A\00", align 16, !dbg !5387
@format_iad = internal constant [64 x i8] c"A:  FirstIf#=%2d IfCount=%2d Cls=%02x(%-5s) Sub=%02x Prot=%02x\0A\00", align 16, !dbg !5392
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !5395
@.str.31 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1, !dbg !5398
@format_iface = internal constant [75 x i8] c"I:%c If#=%2d Alt=%2d #EPs=%2d Cls=%02x(%-5s) Sub=%02x Prot=%02x Driver=%s\0A\00", align 16, !dbg !5401
@.str.32 = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1, !dbg !5406
@.str.33 = private unnamed_addr constant [5 x i8] c"Isoc\00", align 1, !dbg !5408
@.str.34 = private unnamed_addr constant [5 x i8] c"Bulk\00", align 1, !dbg !5410
@.str.35 = private unnamed_addr constant [5 x i8] c"Int.\00", align 1, !dbg !5412
@format_endpt = internal constant [51 x i8] c"E:  Ad=%02x(%c) Atr=%02x(%-4s) MxPS=%4d Ivl=%d%cs\0A\00", align 16, !dbg !5414
@.str.36 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !5419

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @no_seek_end_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @usb_device_read(ptr noundef %file, ptr noundef %buf, i64 noundef %nbytes, ptr noundef %ppos) #1 align 16 !dbg !5434 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %nbytes.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %bus = alloca ptr, align 8
  %ret = alloca i64, align 8
  %total_written = alloca i64, align 8
  %skip_bytes = alloca i64, align 8
  %id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5436, metadata !DIExpression()), !dbg !5445
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5437, metadata !DIExpression()), !dbg !5446
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !5438, metadata !DIExpression()), !dbg !5447
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !5439, metadata !DIExpression()), !dbg !5448
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #10, !dbg !5449
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5440, metadata !DIExpression()), !dbg !5450
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5441, metadata !DIExpression()), !dbg !5452
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_written) #10, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %total_written, metadata !5442, metadata !DIExpression()), !dbg !5453
  store i64 0, ptr %total_written, align 8, !dbg !5453
  call void @llvm.lifetime.start.p0(i64 8, ptr %skip_bytes) #10, !dbg !5454
  call void @llvm.dbg.declare(metadata ptr %skip_bytes, metadata !5443, metadata !DIExpression()), !dbg !5455
  %0 = load ptr, ptr %ppos.addr, align 8, !dbg !5456
  %1 = load i64, ptr %0, align 8, !dbg !5457
  store i64 %1, ptr %skip_bytes, align 8, !dbg !5455
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #10, !dbg !5458
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5444, metadata !DIExpression()), !dbg !5459
  %2 = load ptr, ptr %ppos.addr, align 8, !dbg !5460
  %3 = load i64, ptr %2, align 8, !dbg !5462
  %cmp = icmp slt i64 %3, 0, !dbg !5463
  br i1 %cmp, label %if.then, label %if.end, !dbg !5464

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !5465
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5465

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %nbytes.addr, align 8, !dbg !5466
  %cmp1 = icmp ule i64 %4, 0, !dbg !5468
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5469

if.then2:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !5470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5470

if.end3:                                          ; preds = %if.end
  call void @mutex_lock(ptr noundef @usb_bus_idr_lock) #11, !dbg !5471
  store i32 0, ptr %id, align 4, !dbg !5472
  br label %for.cond, !dbg !5472

for.cond:                                         ; preds = %for.inc, %if.end3
  %call = call ptr @idr_get_next(ptr noundef @usb_bus_idr, ptr noundef %id) #11, !dbg !5474
  store ptr %call, ptr %bus, align 8, !dbg !5474
  %cmp4 = icmp ne ptr %call, null, !dbg !5474
  br i1 %cmp4, label %for.body, label %for.end, !dbg !5472

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %bus, align 8, !dbg !5476
  %call5 = call ptr @bus_to_hcd(ptr noundef %5) #11, !dbg !5479
  %rh_registered = getelementptr inbounds %struct.usb_hcd, ptr %call5, i32 0, i32 14, !dbg !5480
  %bf.load = load i16, ptr %rh_registered, align 4, !dbg !5480
  %bf.clear = and i16 %bf.load, 1, !dbg !5480
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5480
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5479
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !5481

if.then6:                                         ; preds = %for.body
  br label %for.inc, !dbg !5482

if.end7:                                          ; preds = %for.body
  %6 = load ptr, ptr %bus, align 8, !dbg !5483
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %6, i32 0, i32 11, !dbg !5483
  %7 = load ptr, ptr %root_hub, align 8, !dbg !5483
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 16, !dbg !5483
  call void @device_lock(ptr noundef %dev) #11, !dbg !5483
  %8 = load ptr, ptr %ppos.addr, align 8, !dbg !5484
  %9 = load ptr, ptr %bus, align 8, !dbg !5485
  %root_hub8 = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 11, !dbg !5486
  %10 = load ptr, ptr %root_hub8, align 8, !dbg !5486
  %11 = load ptr, ptr %bus, align 8, !dbg !5487
  %call9 = call i64 @usb_device_dump(ptr noundef %buf.addr, ptr noundef %nbytes.addr, ptr noundef %skip_bytes, ptr noundef %8, ptr noundef %10, ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11, !dbg !5488
  store i64 %call9, ptr %ret, align 8, !dbg !5489
  %12 = load ptr, ptr %bus, align 8, !dbg !5490
  %root_hub10 = getelementptr inbounds %struct.usb_bus, ptr %12, i32 0, i32 11, !dbg !5490
  %13 = load ptr, ptr %root_hub10, align 8, !dbg !5490
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 16, !dbg !5490
  call void @device_unlock(ptr noundef %dev11) #11, !dbg !5490
  %14 = load i64, ptr %ret, align 8, !dbg !5491
  %cmp12 = icmp slt i64 %14, 0, !dbg !5493
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5494

if.then13:                                        ; preds = %if.end7
  call void @mutex_unlock(ptr noundef @usb_bus_idr_lock) #11, !dbg !5495
  %15 = load i64, ptr %ret, align 8, !dbg !5497
  store i64 %15, ptr %retval, align 8, !dbg !5498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5498

if.end14:                                         ; preds = %if.end7
  %16 = load i64, ptr %ret, align 8, !dbg !5499
  %17 = load i64, ptr %total_written, align 8, !dbg !5500
  %add = add i64 %17, %16, !dbg !5500
  store i64 %add, ptr %total_written, align 8, !dbg !5500
  br label %for.inc, !dbg !5501

for.inc:                                          ; preds = %if.end14, %if.then6
  %18 = load i32, ptr %id, align 4, !dbg !5474
  %add15 = add i32 %18, 1, !dbg !5474
  store i32 %add15, ptr %id, align 4, !dbg !5474
  br label %for.cond, !dbg !5474, !llvm.loop !5502

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @usb_bus_idr_lock) #11, !dbg !5506
  %19 = load i64, ptr %total_written, align 8, !dbg !5507
  store i64 %19, ptr %retval, align 8, !dbg !5508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5508

cleanup:                                          ; preds = %for.end, %if.then13, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #10, !dbg !5509
  call void @llvm.lifetime.end.p0(i64 8, ptr %skip_bytes) #10, !dbg !5509
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_written) #10, !dbg !5509
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !5509
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #10, !dbg !5509
  %20 = load i64, ptr %retval, align 8, !dbg !5509
  ret i64 %20, !dbg !5509
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5510 dso_local void @mutex_lock(ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5513 dso_local ptr @idr_get_next(ptr noundef, ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @bus_to_hcd(ptr noundef %bus) #4 align 16 !dbg !5523 {
entry:
  %bus.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5527, metadata !DIExpression()), !dbg !5530
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5528, metadata !DIExpression()), !dbg !5531
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5531
  store ptr %0, ptr %__mptr, align 8, !dbg !5531
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5531
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5531
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5531
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !5532
  %2 = load ptr, ptr %tmp, align 8, !dbg !5531
  ret ptr %2, !dbg !5533
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_lock(ptr noundef %dev) #4 align 16 !dbg !5534 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5538
  %mutex = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9, !dbg !5539
  call void @mutex_lock(ptr noundef %mutex) #11, !dbg !5540
  ret void, !dbg !5541
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @usb_device_dump(ptr noundef %buffer, ptr noundef %nbytes, ptr noundef %skip_bytes, ptr noundef %file_offset, ptr noundef %usbdev, ptr noundef %bus, i32 noundef %level, i32 noundef %index, i32 noundef %count) #1 align 16 !dbg !5542 {
entry:
  %retval = alloca i64, align 8
  %buffer.addr = alloca ptr, align 8
  %nbytes.addr = alloca ptr, align 8
  %skip_bytes.addr = alloca ptr, align 8
  %file_offset.addr = alloca ptr, align 8
  %usbdev.addr = alloca ptr, align 8
  %bus.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %chix = alloca i32, align 4
  %ret = alloca i32, align 4
  %cnt = alloca i32, align 4
  %parent_devnum = alloca i32, align 4
  %pages_start = alloca ptr, align 8
  %data_end = alloca ptr, align 8
  %speed = alloca ptr, align 8
  %length = alloca i32, align 4
  %total_written = alloca i64, align 8
  %childdev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %max = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5547, metadata !DIExpression()), !dbg !5569
  store ptr %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !5548, metadata !DIExpression()), !dbg !5570
  store ptr %skip_bytes, ptr %skip_bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skip_bytes.addr, metadata !5549, metadata !DIExpression()), !dbg !5571
  store ptr %file_offset, ptr %file_offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file_offset.addr, metadata !5550, metadata !DIExpression()), !dbg !5572
  store ptr %usbdev, ptr %usbdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usbdev.addr, metadata !5551, metadata !DIExpression()), !dbg !5573
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5552, metadata !DIExpression()), !dbg !5574
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !5553, metadata !DIExpression()), !dbg !5575
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5554, metadata !DIExpression()), !dbg !5576
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5555, metadata !DIExpression()), !dbg !5577
  call void @llvm.lifetime.start.p0(i64 4, ptr %chix) #10, !dbg !5578
  call void @llvm.dbg.declare(metadata ptr %chix, metadata !5556, metadata !DIExpression()), !dbg !5579
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5580
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5557, metadata !DIExpression()), !dbg !5581
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #10, !dbg !5580
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !5558, metadata !DIExpression()), !dbg !5582
  store i32 0, ptr %cnt, align 4, !dbg !5582
  call void @llvm.lifetime.start.p0(i64 4, ptr %parent_devnum) #10, !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %parent_devnum, metadata !5559, metadata !DIExpression()), !dbg !5584
  store i32 0, ptr %parent_devnum, align 4, !dbg !5584
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages_start) #10, !dbg !5585
  call void @llvm.dbg.declare(metadata ptr %pages_start, metadata !5560, metadata !DIExpression()), !dbg !5586
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_end) #10, !dbg !5585
  call void @llvm.dbg.declare(metadata ptr %data_end, metadata !5561, metadata !DIExpression()), !dbg !5587
  call void @llvm.lifetime.start.p0(i64 8, ptr %speed) #10, !dbg !5585
  call void @llvm.dbg.declare(metadata ptr %speed, metadata !5562, metadata !DIExpression()), !dbg !5588
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #10, !dbg !5589
  call void @llvm.dbg.declare(metadata ptr %length, metadata !5563, metadata !DIExpression()), !dbg !5590
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_written) #10, !dbg !5591
  call void @llvm.dbg.declare(metadata ptr %total_written, metadata !5564, metadata !DIExpression()), !dbg !5592
  store i64 0, ptr %total_written, align 8, !dbg !5592
  call void @llvm.lifetime.start.p0(i64 8, ptr %childdev) #10, !dbg !5593
  call void @llvm.dbg.declare(metadata ptr %childdev, metadata !5565, metadata !DIExpression()), !dbg !5594
  store ptr null, ptr %childdev, align 8, !dbg !5594
  %0 = load ptr, ptr %nbytes.addr, align 8, !dbg !5595
  %1 = load i64, ptr %0, align 8, !dbg !5597
  %cmp = icmp ule i64 %1, 0, !dbg !5598
  br i1 %cmp, label %if.then, label %if.end, !dbg !5599

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5600

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %level.addr, align 4, !dbg !5601
  %cmp1 = icmp sgt i32 %2, 6, !dbg !5603
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5604

if.then2:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !5605
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5605

if.end3:                                          ; preds = %if.end
  %call = call i64 @__get_free_pages(i32 noundef 3072, i32 noundef 1) #11, !dbg !5606
  %3 = inttoptr i64 %call to ptr, !dbg !5607
  store ptr %3, ptr %pages_start, align 8, !dbg !5608
  %4 = load ptr, ptr %pages_start, align 8, !dbg !5609
  %tobool = icmp ne ptr %4, null, !dbg !5609
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !5611

if.then4:                                         ; preds = %if.end3
  store i64 -12, ptr %retval, align 8, !dbg !5612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5612

if.end5:                                          ; preds = %if.end3
  %5 = load ptr, ptr %usbdev.addr, align 8, !dbg !5613
  %parent = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 13, !dbg !5615
  %6 = load ptr, ptr %parent, align 8, !dbg !5615
  %tobool6 = icmp ne ptr %6, null, !dbg !5613
  br i1 %tobool6, label %land.lhs.true, label %if.end12, !dbg !5616

land.lhs.true:                                    ; preds = %if.end5
  %7 = load ptr, ptr %usbdev.addr, align 8, !dbg !5617
  %parent7 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 13, !dbg !5618
  %8 = load ptr, ptr %parent7, align 8, !dbg !5618
  %devnum = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 0, !dbg !5619
  %9 = load i32, ptr %devnum, align 8, !dbg !5619
  %cmp8 = icmp ne i32 %9, -1, !dbg !5620
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !5621

if.then9:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %usbdev.addr, align 8, !dbg !5622
  %parent10 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 13, !dbg !5623
  %11 = load ptr, ptr %parent10, align 8, !dbg !5623
  %devnum11 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 0, !dbg !5624
  %12 = load i32, ptr %devnum11, align 8, !dbg !5624
  store i32 %12, ptr %parent_devnum, align 4, !dbg !5625
  br label %if.end12, !dbg !5626

if.end12:                                         ; preds = %if.then9, %land.lhs.true, %if.end5
  %13 = load ptr, ptr %usbdev.addr, align 8, !dbg !5627
  %speed13 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 4, !dbg !5628
  %14 = load i32, ptr %speed13, align 4, !dbg !5628
  switch i32 %14, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb14
    i32 2, label %sw.bb14
    i32 3, label %sw.bb15
    i32 5, label %sw.bb16
    i32 6, label %sw.bb17
  ], !dbg !5629

sw.bb:                                            ; preds = %if.end12
  store ptr @.str, ptr %speed, align 8, !dbg !5630
  br label %sw.epilog, !dbg !5632

sw.bb14:                                          ; preds = %if.end12, %if.end12
  store ptr @.str.1, ptr %speed, align 8, !dbg !5633
  br label %sw.epilog, !dbg !5634

sw.bb15:                                          ; preds = %if.end12
  store ptr @.str.2, ptr %speed, align 8, !dbg !5635
  br label %sw.epilog, !dbg !5636

sw.bb16:                                          ; preds = %if.end12
  store ptr @.str.3, ptr %speed, align 8, !dbg !5637
  br label %sw.epilog, !dbg !5638

sw.bb17:                                          ; preds = %if.end12
  store ptr @.str.4, ptr %speed, align 8, !dbg !5639
  br label %sw.epilog, !dbg !5640

sw.default:                                       ; preds = %if.end12
  store ptr @.str.5, ptr %speed, align 8, !dbg !5641
  br label %sw.epilog, !dbg !5642

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb
  %15 = load ptr, ptr %pages_start, align 8, !dbg !5643
  %16 = load ptr, ptr %pages_start, align 8, !dbg !5644
  %17 = load ptr, ptr %bus.addr, align 8, !dbg !5645
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %17, i32 0, i32 2, !dbg !5646
  %18 = load i32, ptr %busnum, align 8, !dbg !5646
  %19 = load i32, ptr %level.addr, align 4, !dbg !5647
  %20 = load i32, ptr %parent_devnum, align 4, !dbg !5648
  %21 = load i32, ptr %index.addr, align 4, !dbg !5649
  %22 = load i32, ptr %count.addr, align 4, !dbg !5650
  %23 = load ptr, ptr %usbdev.addr, align 8, !dbg !5651
  %devnum18 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 0, !dbg !5652
  %24 = load i32, ptr %devnum18, align 8, !dbg !5652
  %25 = load ptr, ptr %speed, align 8, !dbg !5653
  %26 = load ptr, ptr %usbdev.addr, align 8, !dbg !5654
  %maxchild = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 37, !dbg !5655
  %27 = load i32, ptr %maxchild, align 8, !dbg !5655
  %call19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %16, ptr noundef @format_topo, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %24, ptr noundef %25, i32 noundef %27) #11, !dbg !5656
  %idx.ext = sext i32 %call19 to i64, !dbg !5657
  %add.ptr = getelementptr i8, ptr %15, i64 %idx.ext, !dbg !5657
  store ptr %add.ptr, ptr %data_end, align 8, !dbg !5658
  %28 = load i32, ptr %level.addr, align 4, !dbg !5659
  %cmp20 = icmp eq i32 %28, 0, !dbg !5660
  br i1 %cmp20, label %if.then21, label %if.end33, !dbg !5661

if.then21:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #10, !dbg !5662
  call void @llvm.dbg.declare(metadata ptr %max, metadata !5566, metadata !DIExpression()), !dbg !5663
  %29 = load ptr, ptr %usbdev.addr, align 8, !dbg !5664
  %speed22 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 4, !dbg !5666
  %30 = load i32, ptr %speed22, align 4, !dbg !5666
  %cmp23 = icmp eq i32 %30, 3, !dbg !5667
  br i1 %cmp23, label %if.then26, label %lor.lhs.false, !dbg !5668

lor.lhs.false:                                    ; preds = %if.then21
  %31 = load ptr, ptr %usbdev.addr, align 8, !dbg !5669
  %speed24 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 4, !dbg !5670
  %32 = load i32, ptr %speed24, align 4, !dbg !5670
  %cmp25 = icmp uge i32 %32, 5, !dbg !5671
  br i1 %cmp25, label %if.then26, label %if.else, !dbg !5672

if.then26:                                        ; preds = %lor.lhs.false, %if.then21
  store i32 800, ptr %max, align 4, !dbg !5673
  br label %if.end27, !dbg !5674

if.else:                                          ; preds = %lor.lhs.false
  store i32 900, ptr %max, align 4, !dbg !5675
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then26
  %33 = load ptr, ptr %data_end, align 8, !dbg !5676
  %34 = load ptr, ptr %bus.addr, align 8, !dbg !5677
  %bandwidth_allocated = getelementptr inbounds %struct.usb_bus, ptr %34, i32 0, i32 13, !dbg !5678
  %35 = load i32, ptr %bandwidth_allocated, align 8, !dbg !5678
  %36 = load i32, ptr %max, align 4, !dbg !5679
  %37 = load ptr, ptr %bus.addr, align 8, !dbg !5680
  %bandwidth_allocated28 = getelementptr inbounds %struct.usb_bus, ptr %37, i32 0, i32 13, !dbg !5681
  %38 = load i32, ptr %bandwidth_allocated28, align 8, !dbg !5681
  %mul = mul i32 100, %38, !dbg !5682
  %39 = load i32, ptr %max, align 4, !dbg !5683
  %div = sdiv i32 %39, 2, !dbg !5684
  %add = add i32 %mul, %div, !dbg !5685
  %40 = load i32, ptr %max, align 4, !dbg !5686
  %div29 = sdiv i32 %add, %40, !dbg !5687
  %41 = load ptr, ptr %bus.addr, align 8, !dbg !5688
  %bandwidth_int_reqs = getelementptr inbounds %struct.usb_bus, ptr %41, i32 0, i32 14, !dbg !5689
  %42 = load i32, ptr %bandwidth_int_reqs, align 4, !dbg !5689
  %43 = load ptr, ptr %bus.addr, align 8, !dbg !5690
  %bandwidth_isoc_reqs = getelementptr inbounds %struct.usb_bus, ptr %43, i32 0, i32 15, !dbg !5691
  %44 = load i32, ptr %bandwidth_isoc_reqs, align 8, !dbg !5691
  %call30 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %33, ptr noundef @format_bandwidth, i32 noundef %35, i32 noundef %36, i32 noundef %div29, i32 noundef %42, i32 noundef %44) #11, !dbg !5692
  %45 = load ptr, ptr %data_end, align 8, !dbg !5693
  %idx.ext31 = sext i32 %call30 to i64, !dbg !5693
  %add.ptr32 = getelementptr i8, ptr %45, i64 %idx.ext31, !dbg !5693
  store ptr %add.ptr32, ptr %data_end, align 8, !dbg !5693
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #10, !dbg !5694
  br label %if.end33, !dbg !5695

if.end33:                                         ; preds = %if.end27, %sw.epilog
  %46 = load ptr, ptr %data_end, align 8, !dbg !5696
  %47 = load ptr, ptr %pages_start, align 8, !dbg !5697
  %add.ptr34 = getelementptr i8, ptr %47, i64 8192, !dbg !5698
  %add.ptr35 = getelementptr i8, ptr %add.ptr34, i64 -256, !dbg !5699
  %48 = load ptr, ptr %usbdev.addr, align 8, !dbg !5700
  %call36 = call ptr @usb_dump_desc(ptr noundef %46, ptr noundef %add.ptr35, ptr noundef %48) #11, !dbg !5701
  store ptr %call36, ptr %data_end, align 8, !dbg !5702
  %49 = load ptr, ptr %data_end, align 8, !dbg !5703
  %50 = load ptr, ptr %pages_start, align 8, !dbg !5705
  %add.ptr37 = getelementptr i8, ptr %50, i64 8192, !dbg !5706
  %add.ptr38 = getelementptr i8, ptr %add.ptr37, i64 -256, !dbg !5707
  %cmp39 = icmp ugt ptr %49, %add.ptr38, !dbg !5708
  br i1 %cmp39, label %if.then40, label %if.end44, !dbg !5709

if.then40:                                        ; preds = %if.end33
  %51 = load ptr, ptr %data_end, align 8, !dbg !5710
  %call41 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %51, ptr noundef @.str.6) #11, !dbg !5711
  %52 = load ptr, ptr %data_end, align 8, !dbg !5712
  %idx.ext42 = sext i32 %call41 to i64, !dbg !5712
  %add.ptr43 = getelementptr i8, ptr %52, i64 %idx.ext42, !dbg !5712
  store ptr %add.ptr43, ptr %data_end, align 8, !dbg !5712
  br label %if.end44, !dbg !5713

if.end44:                                         ; preds = %if.then40, %if.end33
  %53 = load ptr, ptr %data_end, align 8, !dbg !5714
  %54 = load ptr, ptr %pages_start, align 8, !dbg !5715
  %sub.ptr.lhs.cast = ptrtoint ptr %53 to i64, !dbg !5716
  %sub.ptr.rhs.cast = ptrtoint ptr %54 to i64, !dbg !5716
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5716
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !5714
  store i32 %conv, ptr %length, align 4, !dbg !5717
  %55 = load i32, ptr %length, align 4, !dbg !5718
  %conv45 = zext i32 %55 to i64, !dbg !5718
  %56 = load ptr, ptr %skip_bytes.addr, align 8, !dbg !5720
  %57 = load i64, ptr %56, align 8, !dbg !5721
  %cmp46 = icmp sgt i64 %conv45, %57, !dbg !5722
  br i1 %cmp46, label %if.then48, label %if.else71, !dbg !5723

if.then48:                                        ; preds = %if.end44
  %58 = load ptr, ptr %skip_bytes.addr, align 8, !dbg !5724
  %59 = load i64, ptr %58, align 8, !dbg !5726
  %60 = load i32, ptr %length, align 4, !dbg !5727
  %conv49 = zext i32 %60 to i64, !dbg !5727
  %sub = sub i64 %conv49, %59, !dbg !5727
  %conv50 = trunc i64 %sub to i32, !dbg !5727
  store i32 %conv50, ptr %length, align 4, !dbg !5727
  %61 = load i32, ptr %length, align 4, !dbg !5728
  %conv51 = zext i32 %61 to i64, !dbg !5728
  %62 = load ptr, ptr %nbytes.addr, align 8, !dbg !5730
  %63 = load i64, ptr %62, align 8, !dbg !5731
  %cmp52 = icmp ugt i64 %conv51, %63, !dbg !5732
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !5733

if.then54:                                        ; preds = %if.then48
  %64 = load ptr, ptr %nbytes.addr, align 8, !dbg !5734
  %65 = load i64, ptr %64, align 8, !dbg !5735
  %conv55 = trunc i64 %65 to i32, !dbg !5735
  store i32 %conv55, ptr %length, align 4, !dbg !5736
  br label %if.end56, !dbg !5737

if.end56:                                         ; preds = %if.then54, %if.then48
  %66 = load ptr, ptr %buffer.addr, align 8, !dbg !5738
  %67 = load ptr, ptr %66, align 8, !dbg !5740
  %68 = load ptr, ptr %pages_start, align 8, !dbg !5741
  %69 = load ptr, ptr %skip_bytes.addr, align 8, !dbg !5742
  %70 = load i64, ptr %69, align 8, !dbg !5743
  %add.ptr57 = getelementptr i8, ptr %68, i64 %70, !dbg !5744
  %71 = load i32, ptr %length, align 4, !dbg !5745
  %conv58 = zext i32 %71 to i64, !dbg !5745
  %call59 = call i64 @copy_to_user(ptr noundef %67, ptr noundef %add.ptr57, i64 noundef %conv58) #11, !dbg !5746
  %tobool60 = icmp ne i64 %call59, 0, !dbg !5746
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !5747

if.then61:                                        ; preds = %if.end56
  %72 = load ptr, ptr %pages_start, align 8, !dbg !5748
  %73 = ptrtoint ptr %72 to i64, !dbg !5750
  call void @free_pages(i64 noundef %73, i32 noundef 1) #11, !dbg !5751
  store i64 -14, ptr %retval, align 8, !dbg !5752
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5752

if.end62:                                         ; preds = %if.end56
  %74 = load i32, ptr %length, align 4, !dbg !5753
  %conv63 = zext i32 %74 to i64, !dbg !5753
  %75 = load ptr, ptr %nbytes.addr, align 8, !dbg !5754
  %76 = load i64, ptr %75, align 8, !dbg !5755
  %sub64 = sub i64 %76, %conv63, !dbg !5755
  store i64 %sub64, ptr %75, align 8, !dbg !5755
  %77 = load i32, ptr %length, align 4, !dbg !5756
  %conv65 = zext i32 %77 to i64, !dbg !5756
  %78 = load ptr, ptr %file_offset.addr, align 8, !dbg !5757
  %79 = load i64, ptr %78, align 8, !dbg !5758
  %add66 = add i64 %79, %conv65, !dbg !5758
  store i64 %add66, ptr %78, align 8, !dbg !5758
  %80 = load i32, ptr %length, align 4, !dbg !5759
  %conv67 = zext i32 %80 to i64, !dbg !5759
  %81 = load i64, ptr %total_written, align 8, !dbg !5760
  %add68 = add i64 %81, %conv67, !dbg !5760
  store i64 %add68, ptr %total_written, align 8, !dbg !5760
  %82 = load i32, ptr %length, align 4, !dbg !5761
  %83 = load ptr, ptr %buffer.addr, align 8, !dbg !5762
  %84 = load ptr, ptr %83, align 8, !dbg !5763
  %idx.ext69 = zext i32 %82 to i64, !dbg !5763
  %add.ptr70 = getelementptr i8, ptr %84, i64 %idx.ext69, !dbg !5763
  store ptr %add.ptr70, ptr %83, align 8, !dbg !5763
  %85 = load ptr, ptr %skip_bytes.addr, align 8, !dbg !5764
  store i64 0, ptr %85, align 8, !dbg !5765
  br label %if.end74, !dbg !5766

if.else71:                                        ; preds = %if.end44
  %86 = load i32, ptr %length, align 4, !dbg !5767
  %conv72 = zext i32 %86 to i64, !dbg !5767
  %87 = load ptr, ptr %skip_bytes.addr, align 8, !dbg !5768
  %88 = load i64, ptr %87, align 8, !dbg !5769
  %sub73 = sub i64 %88, %conv72, !dbg !5769
  store i64 %sub73, ptr %87, align 8, !dbg !5769
  br label %if.end74

if.end74:                                         ; preds = %if.else71, %if.end62
  %89 = load ptr, ptr %pages_start, align 8, !dbg !5770
  %90 = ptrtoint ptr %89 to i64, !dbg !5771
  call void @free_pages(i64 noundef %90, i32 noundef 1) #11, !dbg !5772
  store i32 1, ptr %chix, align 4, !dbg !5773
  %91 = load ptr, ptr %usbdev.addr, align 8, !dbg !5773
  %92 = load i32, ptr %chix, align 4, !dbg !5773
  %call75 = call ptr @usb_hub_find_child(ptr noundef %91, i32 noundef %92) #11, !dbg !5773
  store ptr %call75, ptr %childdev, align 8, !dbg !5773
  br label %for.cond, !dbg !5773

for.cond:                                         ; preds = %for.inc, %if.end74
  %93 = load i32, ptr %chix, align 4, !dbg !5775
  %94 = load ptr, ptr %usbdev.addr, align 8, !dbg !5775
  %maxchild76 = getelementptr inbounds %struct.usb_device, ptr %94, i32 0, i32 37, !dbg !5775
  %95 = load i32, ptr %maxchild76, align 8, !dbg !5775
  %cmp77 = icmp sle i32 %93, %95, !dbg !5775
  br i1 %cmp77, label %for.body, label %for.end, !dbg !5773

for.body:                                         ; preds = %for.cond
  %96 = load ptr, ptr %childdev, align 8, !dbg !5777
  %tobool79 = icmp ne ptr %96, null, !dbg !5777
  br i1 %tobool79, label %if.else81, label %if.then80, !dbg !5775

if.then80:                                        ; preds = %for.body
  br label %for.inc, !dbg !5777

if.else81:                                        ; preds = %for.body
  %97 = load ptr, ptr %childdev, align 8, !dbg !5779
  %dev = getelementptr inbounds %struct.usb_device, ptr %97, i32 0, i32 16, !dbg !5779
  call void @device_lock(ptr noundef %dev) #11, !dbg !5779
  %98 = load ptr, ptr %buffer.addr, align 8, !dbg !5781
  %99 = load ptr, ptr %nbytes.addr, align 8, !dbg !5782
  %100 = load ptr, ptr %skip_bytes.addr, align 8, !dbg !5783
  %101 = load ptr, ptr %file_offset.addr, align 8, !dbg !5784
  %102 = load ptr, ptr %childdev, align 8, !dbg !5785
  %103 = load ptr, ptr %bus.addr, align 8, !dbg !5786
  %104 = load i32, ptr %level.addr, align 4, !dbg !5787
  %add82 = add i32 %104, 1, !dbg !5788
  %105 = load i32, ptr %chix, align 4, !dbg !5789
  %sub83 = sub i32 %105, 1, !dbg !5790
  %106 = load i32, ptr %cnt, align 4, !dbg !5791
  %inc = add i32 %106, 1, !dbg !5791
  store i32 %inc, ptr %cnt, align 4, !dbg !5791
  %call84 = call i64 @usb_device_dump(ptr noundef %98, ptr noundef %99, ptr noundef %100, ptr noundef %101, ptr noundef %102, ptr noundef %103, i32 noundef %add82, i32 noundef %sub83, i32 noundef %inc) #11, !dbg !5792
  %conv85 = trunc i64 %call84 to i32, !dbg !5792
  store i32 %conv85, ptr %ret, align 4, !dbg !5793
  %107 = load ptr, ptr %childdev, align 8, !dbg !5794
  %dev86 = getelementptr inbounds %struct.usb_device, ptr %107, i32 0, i32 16, !dbg !5794
  call void @device_unlock(ptr noundef %dev86) #11, !dbg !5794
  %108 = load i32, ptr %ret, align 4, !dbg !5795
  %cmp87 = icmp eq i32 %108, -14, !dbg !5797
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !5798

if.then89:                                        ; preds = %if.else81
  %109 = load i64, ptr %total_written, align 8, !dbg !5799
  store i64 %109, ptr %retval, align 8, !dbg !5800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5800

if.end90:                                         ; preds = %if.else81
  %110 = load i32, ptr %ret, align 4, !dbg !5801
  %conv91 = sext i32 %110 to i64, !dbg !5801
  %111 = load i64, ptr %total_written, align 8, !dbg !5802
  %add92 = add i64 %111, %conv91, !dbg !5802
  store i64 %add92, ptr %total_written, align 8, !dbg !5802
  br label %if.end93

if.end93:                                         ; preds = %if.end90
  br label %for.inc, !dbg !5777

for.inc:                                          ; preds = %if.end93, %if.then80
  %112 = load ptr, ptr %usbdev.addr, align 8, !dbg !5775
  %113 = load i32, ptr %chix, align 4, !dbg !5775
  %inc94 = add i32 %113, 1, !dbg !5775
  store i32 %inc94, ptr %chix, align 4, !dbg !5775
  %call95 = call ptr @usb_hub_find_child(ptr noundef %112, i32 noundef %inc94) #11, !dbg !5775
  store ptr %call95, ptr %childdev, align 8, !dbg !5775
  br label %for.cond, !dbg !5775, !llvm.loop !5803

for.end:                                          ; preds = %for.cond
  %114 = load i64, ptr %total_written, align 8, !dbg !5805
  store i64 %114, ptr %retval, align 8, !dbg !5806
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5806

cleanup:                                          ; preds = %for.end, %if.then89, %if.then61, %if.then4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %childdev) #10, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_written) #10, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #10, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 8, ptr %speed) #10, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_end) #10, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages_start) #10, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 4, ptr %parent_devnum) #10, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #10, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 4, ptr %chix) #10, !dbg !5807
  %115 = load i64, ptr %retval, align 8, !dbg !5807
  ret i64 %115, !dbg !5807
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_unlock(ptr noundef %dev) #4 align 16 !dbg !5808 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5810, metadata !DIExpression()), !dbg !5811
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5812
  %mutex = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9, !dbg !5813
  call void @mutex_unlock(ptr noundef %mutex) #11, !dbg !5814
  ret void, !dbg !5815
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5816 dso_local void @mutex_unlock(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5817 dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5821 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @usb_dump_desc(ptr noundef %start, ptr noundef %end, ptr noundef %dev) #1 align 16 !dbg !5825 {
entry:
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5829, metadata !DIExpression()), !dbg !5833
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5830, metadata !DIExpression()), !dbg !5834
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5831, metadata !DIExpression()), !dbg !5835
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !5836
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5832, metadata !DIExpression()), !dbg !5837
  %0 = load ptr, ptr %start.addr, align 8, !dbg !5838
  %1 = load ptr, ptr %end.addr, align 8, !dbg !5839
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5840
  %descriptor = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 17, !dbg !5841
  %call = call ptr @usb_dump_device_descriptor(ptr noundef %0, ptr noundef %1, ptr noundef %descriptor) #11, !dbg !5842
  store ptr %call, ptr %start.addr, align 8, !dbg !5843
  %3 = load ptr, ptr %start.addr, align 8, !dbg !5844
  %4 = load ptr, ptr %end.addr, align 8, !dbg !5845
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5846
  %call1 = call ptr @usb_dump_device_strings(ptr noundef %3, ptr noundef %4, ptr noundef %5) #11, !dbg !5847
  store ptr %call1, ptr %start.addr, align 8, !dbg !5848
  store i32 0, ptr %i, align 4, !dbg !5849
  br label %for.cond, !dbg !5851

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !dbg !5852
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5854
  %descriptor2 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 17, !dbg !5855
  %bNumConfigurations = getelementptr inbounds %struct.usb_device_descriptor, ptr %descriptor2, i32 0, i32 13, !dbg !5856
  %8 = load i8, ptr %bNumConfigurations, align 1, !dbg !5856
  %conv = zext i8 %8 to i32, !dbg !5854
  %cmp = icmp slt i32 %6, %conv, !dbg !5857
  br i1 %cmp, label %for.body, label %for.end, !dbg !5858

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5859
  %speed = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 4, !dbg !5861
  %10 = load i32, ptr %speed, align 4, !dbg !5861
  %11 = load ptr, ptr %start.addr, align 8, !dbg !5862
  %12 = load ptr, ptr %end.addr, align 8, !dbg !5863
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5864
  %config = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 20, !dbg !5865
  %14 = load ptr, ptr %config, align 8, !dbg !5865
  %15 = load i32, ptr %i, align 4, !dbg !5866
  %idx.ext = sext i32 %15 to i64, !dbg !5867
  %add.ptr = getelementptr %struct.usb_host_config, ptr %14, i64 %idx.ext, !dbg !5867
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5868
  %config4 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 20, !dbg !5869
  %17 = load ptr, ptr %config4, align 8, !dbg !5869
  %18 = load i32, ptr %i, align 4, !dbg !5870
  %idx.ext5 = sext i32 %18 to i64, !dbg !5871
  %add.ptr6 = getelementptr %struct.usb_host_config, ptr %17, i64 %idx.ext5, !dbg !5871
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !5872
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 21, !dbg !5873
  %20 = load ptr, ptr %actconfig, align 8, !dbg !5873
  %cmp7 = icmp eq ptr %add.ptr6, %20, !dbg !5874
  %conv8 = zext i1 %cmp7 to i32, !dbg !5874
  %call9 = call ptr @usb_dump_config(i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %add.ptr, i32 noundef %conv8) #11, !dbg !5875
  store ptr %call9, ptr %start.addr, align 8, !dbg !5876
  br label %for.inc, !dbg !5877

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4, !dbg !5878
  %inc = add i32 %21, 1, !dbg !5878
  store i32 %inc, ptr %i, align 4, !dbg !5878
  br label %for.cond, !dbg !5879, !llvm.loop !5880

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %start.addr, align 8, !dbg !5882
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !5883
  ret ptr %22, !dbg !5884
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !5885 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5890, metadata !DIExpression()), !dbg !5893
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5891, metadata !DIExpression()), !dbg !5894
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5892, metadata !DIExpression()), !dbg !5895
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5896
  %1 = load i64, ptr %n.addr, align 8, !dbg !5898
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #11, !dbg !5899
  br i1 %call, label %if.then, label %if.end, !dbg !5900

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5901
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5902
  %4 = load i64, ptr %n.addr, align 8, !dbg !5903
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #11, !dbg !5904
  store i64 %call1, ptr %n.addr, align 8, !dbg !5905
  br label %if.end, !dbg !5906

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5907
  ret i64 %5, !dbg !5908
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5909 dso_local void @free_pages(i64 noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5912 dso_local ptr @usb_hub_find_child(ptr noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @usb_dump_device_descriptor(ptr noundef %start, ptr noundef %end, ptr noundef %desc) #1 align 16 !dbg !5915 {
entry:
  %retval = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %bcdUSB = alloca i16, align 2
  %bcdDevice = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5921, metadata !DIExpression()), !dbg !5926
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5922, metadata !DIExpression()), !dbg !5927
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5923, metadata !DIExpression()), !dbg !5928
  call void @llvm.lifetime.start.p0(i64 2, ptr %bcdUSB) #10, !dbg !5929
  call void @llvm.dbg.declare(metadata ptr %bcdUSB, metadata !5924, metadata !DIExpression()), !dbg !5930
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !5931
  %bcdUSB1 = getelementptr inbounds %struct.usb_device_descriptor, ptr %0, i32 0, i32 2, !dbg !5931
  %1 = load i16, ptr %bcdUSB1, align 1, !dbg !5931
  store i16 %1, ptr %bcdUSB, align 2, !dbg !5930
  call void @llvm.lifetime.start.p0(i64 2, ptr %bcdDevice) #10, !dbg !5932
  call void @llvm.dbg.declare(metadata ptr %bcdDevice, metadata !5925, metadata !DIExpression()), !dbg !5933
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !5934
  %bcdDevice2 = getelementptr inbounds %struct.usb_device_descriptor, ptr %2, i32 0, i32 9, !dbg !5934
  %3 = load i16, ptr %bcdDevice2, align 1, !dbg !5934
  store i16 %3, ptr %bcdDevice, align 2, !dbg !5933
  %4 = load ptr, ptr %start.addr, align 8, !dbg !5935
  %5 = load ptr, ptr %end.addr, align 8, !dbg !5937
  %cmp = icmp ugt ptr %4, %5, !dbg !5938
  br i1 %cmp, label %if.then, label %if.end, !dbg !5939

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %start.addr, align 8, !dbg !5940
  store ptr %6, ptr %retval, align 8, !dbg !5941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5941

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %start.addr, align 8, !dbg !5942
  %8 = load i16, ptr %bcdUSB, align 2, !dbg !5943
  %conv = zext i16 %8 to i32, !dbg !5943
  %shr = ashr i32 %conv, 8, !dbg !5944
  %9 = load i16, ptr %bcdUSB, align 2, !dbg !5945
  %conv3 = zext i16 %9 to i32, !dbg !5945
  %and = and i32 %conv3, 255, !dbg !5946
  %10 = load ptr, ptr %desc.addr, align 8, !dbg !5947
  %bDeviceClass = getelementptr inbounds %struct.usb_device_descriptor, ptr %10, i32 0, i32 3, !dbg !5948
  %11 = load i8, ptr %bDeviceClass, align 1, !dbg !5948
  %conv4 = zext i8 %11 to i32, !dbg !5947
  %12 = load ptr, ptr %desc.addr, align 8, !dbg !5949
  %bDeviceClass5 = getelementptr inbounds %struct.usb_device_descriptor, ptr %12, i32 0, i32 3, !dbg !5950
  %13 = load i8, ptr %bDeviceClass5, align 1, !dbg !5950
  %conv6 = zext i8 %13 to i32, !dbg !5949
  %call = call ptr @class_decode(i32 noundef %conv6) #11, !dbg !5951
  %14 = load ptr, ptr %desc.addr, align 8, !dbg !5952
  %bDeviceSubClass = getelementptr inbounds %struct.usb_device_descriptor, ptr %14, i32 0, i32 4, !dbg !5953
  %15 = load i8, ptr %bDeviceSubClass, align 1, !dbg !5953
  %conv7 = zext i8 %15 to i32, !dbg !5952
  %16 = load ptr, ptr %desc.addr, align 8, !dbg !5954
  %bDeviceProtocol = getelementptr inbounds %struct.usb_device_descriptor, ptr %16, i32 0, i32 5, !dbg !5955
  %17 = load i8, ptr %bDeviceProtocol, align 1, !dbg !5955
  %conv8 = zext i8 %17 to i32, !dbg !5954
  %18 = load ptr, ptr %desc.addr, align 8, !dbg !5956
  %bMaxPacketSize0 = getelementptr inbounds %struct.usb_device_descriptor, ptr %18, i32 0, i32 6, !dbg !5957
  %19 = load i8, ptr %bMaxPacketSize0, align 1, !dbg !5957
  %conv9 = zext i8 %19 to i32, !dbg !5956
  %20 = load ptr, ptr %desc.addr, align 8, !dbg !5958
  %bNumConfigurations = getelementptr inbounds %struct.usb_device_descriptor, ptr %20, i32 0, i32 13, !dbg !5959
  %21 = load i8, ptr %bNumConfigurations, align 1, !dbg !5959
  %conv10 = zext i8 %21 to i32, !dbg !5958
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %7, ptr noundef @format_device1, i32 noundef %shr, i32 noundef %and, i32 noundef %conv4, ptr noundef %call, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10) #11, !dbg !5960
  %22 = load ptr, ptr %start.addr, align 8, !dbg !5961
  %idx.ext = sext i32 %call11 to i64, !dbg !5961
  %add.ptr = getelementptr i8, ptr %22, i64 %idx.ext, !dbg !5961
  store ptr %add.ptr, ptr %start.addr, align 8, !dbg !5961
  %23 = load ptr, ptr %start.addr, align 8, !dbg !5962
  %24 = load ptr, ptr %end.addr, align 8, !dbg !5964
  %cmp12 = icmp ugt ptr %23, %24, !dbg !5965
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !5966

if.then14:                                        ; preds = %if.end
  %25 = load ptr, ptr %start.addr, align 8, !dbg !5967
  store ptr %25, ptr %retval, align 8, !dbg !5968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5968

if.end15:                                         ; preds = %if.end
  %26 = load ptr, ptr %start.addr, align 8, !dbg !5969
  %27 = load ptr, ptr %desc.addr, align 8, !dbg !5970
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, ptr %27, i32 0, i32 7, !dbg !5970
  %28 = load i16, ptr %idVendor, align 1, !dbg !5970
  %conv16 = zext i16 %28 to i32, !dbg !5970
  %29 = load ptr, ptr %desc.addr, align 8, !dbg !5971
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, ptr %29, i32 0, i32 8, !dbg !5971
  %30 = load i16, ptr %idProduct, align 1, !dbg !5971
  %conv17 = zext i16 %30 to i32, !dbg !5971
  %31 = load i16, ptr %bcdDevice, align 2, !dbg !5972
  %conv18 = zext i16 %31 to i32, !dbg !5972
  %shr19 = ashr i32 %conv18, 8, !dbg !5973
  %32 = load i16, ptr %bcdDevice, align 2, !dbg !5974
  %conv20 = zext i16 %32 to i32, !dbg !5974
  %and21 = and i32 %conv20, 255, !dbg !5975
  %call22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %26, ptr noundef @format_device2, i32 noundef %conv16, i32 noundef %conv17, i32 noundef %shr19, i32 noundef %and21) #11, !dbg !5976
  %33 = load ptr, ptr %start.addr, align 8, !dbg !5977
  %idx.ext23 = sext i32 %call22 to i64, !dbg !5977
  %add.ptr24 = getelementptr i8, ptr %33, i64 %idx.ext23, !dbg !5977
  store ptr %add.ptr24, ptr %start.addr, align 8, !dbg !5977
  %34 = load ptr, ptr %start.addr, align 8, !dbg !5978
  store ptr %34, ptr %retval, align 8, !dbg !5979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5979

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %bcdDevice) #10, !dbg !5980
  call void @llvm.lifetime.end.p0(i64 2, ptr %bcdUSB) #10, !dbg !5980
  %35 = load ptr, ptr %retval, align 8, !dbg !5980
  ret ptr %35, !dbg !5980
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @usb_dump_device_strings(ptr noundef %start, ptr noundef %end, ptr noundef %dev) #1 align 16 !dbg !5981 {
entry:
  %retval = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5983, metadata !DIExpression()), !dbg !5987
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !5984, metadata !DIExpression()), !dbg !5988
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5985, metadata !DIExpression()), !dbg !5989
  %0 = load ptr, ptr %start.addr, align 8, !dbg !5990
  %1 = load ptr, ptr %end.addr, align 8, !dbg !5992
  %cmp = icmp ugt ptr %0, %1, !dbg !5993
  br i1 %cmp, label %if.then, label %if.end, !dbg !5994

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %start.addr, align 8, !dbg !5995
  store ptr %2, ptr %retval, align 8, !dbg !5996
  br label %return, !dbg !5996

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5997
  %manufacturer = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 34, !dbg !5999
  %4 = load ptr, ptr %manufacturer, align 8, !dbg !5999
  %tobool = icmp ne ptr %4, null, !dbg !5997
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !6000

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %start.addr, align 8, !dbg !6001
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6002
  %manufacturer2 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 34, !dbg !6003
  %7 = load ptr, ptr %manufacturer2, align 8, !dbg !6003
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @format_string_manufacturer, ptr noundef %7) #11, !dbg !6004
  %8 = load ptr, ptr %start.addr, align 8, !dbg !6005
  %idx.ext = sext i32 %call to i64, !dbg !6005
  %add.ptr = getelementptr i8, ptr %8, i64 %idx.ext, !dbg !6005
  store ptr %add.ptr, ptr %start.addr, align 8, !dbg !6005
  br label %if.end3, !dbg !6006

if.end3:                                          ; preds = %if.then1, %if.end
  %9 = load ptr, ptr %start.addr, align 8, !dbg !6007
  %10 = load ptr, ptr %end.addr, align 8, !dbg !6009
  %cmp4 = icmp ugt ptr %9, %10, !dbg !6010
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6011

if.then5:                                         ; preds = %if.end3
  br label %out, !dbg !6012

if.end6:                                          ; preds = %if.end3
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !6013
  %product = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 33, !dbg !6015
  %12 = load ptr, ptr %product, align 8, !dbg !6015
  %tobool7 = icmp ne ptr %12, null, !dbg !6013
  br i1 %tobool7, label %if.then8, label %if.end13, !dbg !6016

if.then8:                                         ; preds = %if.end6
  %13 = load ptr, ptr %start.addr, align 8, !dbg !6017
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !6018
  %product9 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 33, !dbg !6019
  %15 = load ptr, ptr %product9, align 8, !dbg !6019
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %13, ptr noundef @format_string_product, ptr noundef %15) #11, !dbg !6020
  %16 = load ptr, ptr %start.addr, align 8, !dbg !6021
  %idx.ext11 = sext i32 %call10 to i64, !dbg !6021
  %add.ptr12 = getelementptr i8, ptr %16, i64 %idx.ext11, !dbg !6021
  store ptr %add.ptr12, ptr %start.addr, align 8, !dbg !6021
  br label %if.end13, !dbg !6022

if.end13:                                         ; preds = %if.then8, %if.end6
  %17 = load ptr, ptr %start.addr, align 8, !dbg !6023
  %18 = load ptr, ptr %end.addr, align 8, !dbg !6025
  %cmp14 = icmp ugt ptr %17, %18, !dbg !6026
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !6027

if.then15:                                        ; preds = %if.end13
  br label %out, !dbg !6028

if.end16:                                         ; preds = %if.end13
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !6029
  %serial = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 35, !dbg !6031
  %20 = load ptr, ptr %serial, align 8, !dbg !6031
  %tobool17 = icmp ne ptr %20, null, !dbg !6029
  br i1 %tobool17, label %if.then18, label %if.end23, !dbg !6032

if.then18:                                        ; preds = %if.end16
  %21 = load ptr, ptr %start.addr, align 8, !dbg !6033
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !6034
  %serial19 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 35, !dbg !6035
  %23 = load ptr, ptr %serial19, align 8, !dbg !6035
  %call20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef @format_string_serialnumber, ptr noundef %23) #11, !dbg !6036
  %24 = load ptr, ptr %start.addr, align 8, !dbg !6037
  %idx.ext21 = sext i32 %call20 to i64, !dbg !6037
  %add.ptr22 = getelementptr i8, ptr %24, i64 %idx.ext21, !dbg !6037
  store ptr %add.ptr22, ptr %start.addr, align 8, !dbg !6037
  br label %if.end23, !dbg !6038

if.end23:                                         ; preds = %if.then18, %if.end16
  br label %out, !dbg !6031

out:                                              ; preds = %if.end23, %if.then15, %if.then5
  call void @llvm.dbg.label(metadata !5986), !dbg !6039
  %25 = load ptr, ptr %start.addr, align 8, !dbg !6040
  store ptr %25, ptr %retval, align 8, !dbg !6041
  br label %return, !dbg !6041

return:                                           ; preds = %out, %if.then
  %26 = load ptr, ptr %retval, align 8, !dbg !6042
  ret ptr %26, !dbg !6042
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @usb_dump_config(i32 noundef %speed, ptr noundef %start, ptr noundef %end, ptr noundef %config, i32 noundef %active) #1 align 16 !dbg !6043 {
entry:
  %retval = alloca ptr, align 8
  %speed.addr = alloca i32, align 4
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %active.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %intfc = alloca ptr, align 8
  %interface = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %speed, ptr %speed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %speed.addr, metadata !6049, metadata !DIExpression()), !dbg !6058
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6050, metadata !DIExpression()), !dbg !6059
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6051, metadata !DIExpression()), !dbg !6060
  store ptr %config, ptr %config.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !6052, metadata !DIExpression()), !dbg !6061
  store i32 %active, ptr %active.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %active.addr, metadata !6053, metadata !DIExpression()), !dbg !6062
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !6063
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6054, metadata !DIExpression()), !dbg !6064
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10, !dbg !6063
  call void @llvm.dbg.declare(metadata ptr %j, metadata !6055, metadata !DIExpression()), !dbg !6065
  call void @llvm.lifetime.start.p0(i64 8, ptr %intfc) #10, !dbg !6066
  call void @llvm.dbg.declare(metadata ptr %intfc, metadata !6056, metadata !DIExpression()), !dbg !6067
  call void @llvm.lifetime.start.p0(i64 8, ptr %interface) #10, !dbg !6068
  call void @llvm.dbg.declare(metadata ptr %interface, metadata !6057, metadata !DIExpression()), !dbg !6069
  %0 = load ptr, ptr %start.addr, align 8, !dbg !6070
  %1 = load ptr, ptr %end.addr, align 8, !dbg !6072
  %cmp = icmp ugt ptr %0, %1, !dbg !6073
  br i1 %cmp, label %if.then, label %if.end, !dbg !6074

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %start.addr, align 8, !dbg !6075
  store ptr %2, ptr %retval, align 8, !dbg !6076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6076

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %config.addr, align 8, !dbg !6077
  %tobool = icmp ne ptr %3, null, !dbg !6077
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !6079

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %start.addr, align 8, !dbg !6080
  %5 = load ptr, ptr %start.addr, align 8, !dbg !6081
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str.29) #11, !dbg !6082
  %idx.ext = sext i32 %call to i64, !dbg !6083
  %add.ptr = getelementptr i8, ptr %4, i64 %idx.ext, !dbg !6083
  store ptr %add.ptr, ptr %retval, align 8, !dbg !6084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6084

if.end2:                                          ; preds = %if.end
  %6 = load ptr, ptr %start.addr, align 8, !dbg !6085
  %7 = load ptr, ptr %end.addr, align 8, !dbg !6086
  %8 = load ptr, ptr %config.addr, align 8, !dbg !6087
  %desc = getelementptr inbounds %struct.usb_host_config, ptr %8, i32 0, i32 0, !dbg !6088
  %9 = load i32, ptr %active.addr, align 4, !dbg !6089
  %10 = load i32, ptr %speed.addr, align 4, !dbg !6090
  %call3 = call ptr @usb_dump_config_descriptor(ptr noundef %6, ptr noundef %7, ptr noundef %desc, i32 noundef %9, i32 noundef %10) #11, !dbg !6091
  store ptr %call3, ptr %start.addr, align 8, !dbg !6092
  store i32 0, ptr %i, align 4, !dbg !6093
  br label %for.cond, !dbg !6095

for.cond:                                         ; preds = %for.inc, %if.end2
  %11 = load i32, ptr %i, align 4, !dbg !6096
  %cmp4 = icmp slt i32 %11, 16, !dbg !6098
  br i1 %cmp4, label %for.body, label %for.end, !dbg !6099

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %config.addr, align 8, !dbg !6100
  %intf_assoc = getelementptr inbounds %struct.usb_host_config, ptr %12, i32 0, i32 2, !dbg !6103
  %13 = load i32, ptr %i, align 4, !dbg !6104
  %idxprom = sext i32 %13 to i64, !dbg !6100
  %arrayidx = getelementptr [16 x ptr], ptr %intf_assoc, i64 0, i64 %idxprom, !dbg !6100
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !6100
  %cmp5 = icmp eq ptr %14, null, !dbg !6105
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !6106

if.then6:                                         ; preds = %for.body
  br label %for.end, !dbg !6107

if.end7:                                          ; preds = %for.body
  %15 = load ptr, ptr %start.addr, align 8, !dbg !6108
  %16 = load ptr, ptr %end.addr, align 8, !dbg !6109
  %17 = load ptr, ptr %config.addr, align 8, !dbg !6110
  %intf_assoc8 = getelementptr inbounds %struct.usb_host_config, ptr %17, i32 0, i32 2, !dbg !6111
  %18 = load i32, ptr %i, align 4, !dbg !6112
  %idxprom9 = sext i32 %18 to i64, !dbg !6110
  %arrayidx10 = getelementptr [16 x ptr], ptr %intf_assoc8, i64 0, i64 %idxprom9, !dbg !6110
  %19 = load ptr, ptr %arrayidx10, align 8, !dbg !6110
  %call11 = call ptr @usb_dump_iad_descriptor(ptr noundef %15, ptr noundef %16, ptr noundef %19) #11, !dbg !6113
  store ptr %call11, ptr %start.addr, align 8, !dbg !6114
  br label %for.inc, !dbg !6115

for.inc:                                          ; preds = %if.end7
  %20 = load i32, ptr %i, align 4, !dbg !6116
  %inc = add i32 %20, 1, !dbg !6116
  store i32 %inc, ptr %i, align 4, !dbg !6116
  br label %for.cond, !dbg !6117, !llvm.loop !6118

for.end:                                          ; preds = %if.then6, %for.cond
  store i32 0, ptr %i, align 4, !dbg !6120
  br label %for.cond12, !dbg !6122

for.cond12:                                       ; preds = %for.inc30, %for.end
  %21 = load i32, ptr %i, align 4, !dbg !6123
  %22 = load ptr, ptr %config.addr, align 8, !dbg !6125
  %desc13 = getelementptr inbounds %struct.usb_host_config, ptr %22, i32 0, i32 0, !dbg !6126
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %desc13, i32 0, i32 3, !dbg !6127
  %23 = load i8, ptr %bNumInterfaces, align 4, !dbg !6127
  %conv = zext i8 %23 to i32, !dbg !6125
  %cmp14 = icmp slt i32 %21, %conv, !dbg !6128
  br i1 %cmp14, label %for.body16, label %for.end32, !dbg !6129

for.body16:                                       ; preds = %for.cond12
  %24 = load ptr, ptr %config.addr, align 8, !dbg !6130
  %intf_cache = getelementptr inbounds %struct.usb_host_config, ptr %24, i32 0, i32 4, !dbg !6132
  %25 = load i32, ptr %i, align 4, !dbg !6133
  %idxprom17 = sext i32 %25 to i64, !dbg !6130
  %arrayidx18 = getelementptr [32 x ptr], ptr %intf_cache, i64 0, i64 %idxprom17, !dbg !6130
  %26 = load ptr, ptr %arrayidx18, align 8, !dbg !6130
  store ptr %26, ptr %intfc, align 8, !dbg !6134
  %27 = load ptr, ptr %config.addr, align 8, !dbg !6135
  %interface19 = getelementptr inbounds %struct.usb_host_config, ptr %27, i32 0, i32 3, !dbg !6136
  %28 = load i32, ptr %i, align 4, !dbg !6137
  %idxprom20 = sext i32 %28 to i64, !dbg !6135
  %arrayidx21 = getelementptr [32 x ptr], ptr %interface19, i64 0, i64 %idxprom20, !dbg !6135
  %29 = load ptr, ptr %arrayidx21, align 8, !dbg !6135
  store ptr %29, ptr %interface, align 8, !dbg !6138
  store i32 0, ptr %j, align 4, !dbg !6139
  br label %for.cond22, !dbg !6141

for.cond22:                                       ; preds = %for.inc27, %for.body16
  %30 = load i32, ptr %j, align 4, !dbg !6142
  %31 = load ptr, ptr %intfc, align 8, !dbg !6144
  %num_altsetting = getelementptr inbounds %struct.usb_interface_cache, ptr %31, i32 0, i32 0, !dbg !6145
  %32 = load i32, ptr %num_altsetting, align 8, !dbg !6145
  %cmp23 = icmp ult i32 %30, %32, !dbg !6146
  br i1 %cmp23, label %for.body25, label %for.end29, !dbg !6147

for.body25:                                       ; preds = %for.cond22
  %33 = load i32, ptr %speed.addr, align 4, !dbg !6148
  %34 = load ptr, ptr %start.addr, align 8, !dbg !6150
  %35 = load ptr, ptr %end.addr, align 8, !dbg !6151
  %36 = load ptr, ptr %intfc, align 8, !dbg !6152
  %37 = load ptr, ptr %interface, align 8, !dbg !6153
  %38 = load i32, ptr %j, align 4, !dbg !6154
  %call26 = call ptr @usb_dump_interface(i32 noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, i32 noundef %38) #11, !dbg !6155
  store ptr %call26, ptr %start.addr, align 8, !dbg !6156
  br label %for.inc27, !dbg !6157

for.inc27:                                        ; preds = %for.body25
  %39 = load i32, ptr %j, align 4, !dbg !6158
  %inc28 = add i32 %39, 1, !dbg !6158
  store i32 %inc28, ptr %j, align 4, !dbg !6158
  br label %for.cond22, !dbg !6159, !llvm.loop !6160

for.end29:                                        ; preds = %for.cond22
  br label %for.inc30, !dbg !6162

for.inc30:                                        ; preds = %for.end29
  %40 = load i32, ptr %i, align 4, !dbg !6163
  %inc31 = add i32 %40, 1, !dbg !6163
  store i32 %inc31, ptr %i, align 4, !dbg !6163
  br label %for.cond12, !dbg !6164, !llvm.loop !6165

for.end32:                                        ; preds = %for.cond12
  %41 = load ptr, ptr %start.addr, align 8, !dbg !6167
  store ptr %41, ptr %retval, align 8, !dbg !6168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6168

cleanup:                                          ; preds = %for.end32, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %interface) #10, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 8, ptr %intfc) #10, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10, !dbg !6169
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !6169
  %42 = load ptr, ptr %retval, align 8, !dbg !6169
  ret ptr %42, !dbg !6169
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @class_decode(i32 noundef %class) #1 align 16 !dbg !6170 {
entry:
  %class.addr = alloca i32, align 4
  %ix = alloca i32, align 4
  store i32 %class, ptr %class.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %class.addr, metadata !6174, metadata !DIExpression()), !dbg !6176
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #10, !dbg !6177
  call void @llvm.dbg.declare(metadata ptr %ix, metadata !6175, metadata !DIExpression()), !dbg !6178
  store i32 0, ptr %ix, align 4, !dbg !6179
  br label %for.cond, !dbg !6181

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ix, align 4, !dbg !6182
  %idxprom = sext i32 %0 to i64, !dbg !6184
  %arrayidx = getelementptr [22 x %struct.class_info], ptr @clas_info, i64 0, i64 %idxprom, !dbg !6184
  %class1 = getelementptr inbounds %struct.class_info, ptr %arrayidx, i32 0, i32 0, !dbg !6185
  %1 = load i32, ptr %class1, align 16, !dbg !6185
  %cmp = icmp ne i32 %1, -1, !dbg !6186
  br i1 %cmp, label %for.body, label %for.end, !dbg !6187

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %ix, align 4, !dbg !6188
  %idxprom2 = sext i32 %2 to i64, !dbg !6190
  %arrayidx3 = getelementptr [22 x %struct.class_info], ptr @clas_info, i64 0, i64 %idxprom2, !dbg !6190
  %class4 = getelementptr inbounds %struct.class_info, ptr %arrayidx3, i32 0, i32 0, !dbg !6191
  %3 = load i32, ptr %class4, align 16, !dbg !6191
  %4 = load i32, ptr %class.addr, align 4, !dbg !6192
  %cmp5 = icmp eq i32 %3, %4, !dbg !6193
  br i1 %cmp5, label %if.then, label %if.end, !dbg !6194

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !6195

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6192

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %ix, align 4, !dbg !6196
  %inc = add i32 %5, 1, !dbg !6196
  store i32 %inc, ptr %ix, align 4, !dbg !6196
  br label %for.cond, !dbg !6197, !llvm.loop !6198

for.end:                                          ; preds = %if.then, %for.cond
  %6 = load i32, ptr %ix, align 4, !dbg !6200
  %idxprom6 = sext i32 %6 to i64, !dbg !6201
  %arrayidx7 = getelementptr [22 x %struct.class_info], ptr @clas_info, i64 0, i64 %idxprom6, !dbg !6201
  %class_name = getelementptr inbounds %struct.class_info, ptr %arrayidx7, i32 0, i32 1, !dbg !6202
  %7 = load ptr, ptr %class_name, align 8, !dbg !6202
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #10, !dbg !6203
  ret ptr %7, !dbg !6204
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @usb_dump_config_descriptor(ptr noundef %start, ptr noundef %end, ptr noundef %desc, i32 noundef %active, i32 noundef %speed) #1 align 16 !dbg !6205 {
entry:
  %retval = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %active.addr = alloca i32, align 4
  %speed.addr = alloca i32, align 4
  %mul = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6211, metadata !DIExpression()), !dbg !6217
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6212, metadata !DIExpression()), !dbg !6218
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6213, metadata !DIExpression()), !dbg !6219
  store i32 %active, ptr %active.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %active.addr, metadata !6214, metadata !DIExpression()), !dbg !6220
  store i32 %speed, ptr %speed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %speed.addr, metadata !6215, metadata !DIExpression()), !dbg !6221
  call void @llvm.lifetime.start.p0(i64 4, ptr %mul) #10, !dbg !6222
  call void @llvm.dbg.declare(metadata ptr %mul, metadata !6216, metadata !DIExpression()), !dbg !6223
  %0 = load ptr, ptr %start.addr, align 8, !dbg !6224
  %1 = load ptr, ptr %end.addr, align 8, !dbg !6226
  %cmp = icmp ugt ptr %0, %1, !dbg !6227
  br i1 %cmp, label %if.then, label %if.end, !dbg !6228

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %start.addr, align 8, !dbg !6229
  store ptr %2, ptr %retval, align 8, !dbg !6230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6230

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %speed.addr, align 4, !dbg !6231
  %cmp1 = icmp sge i32 %3, 5, !dbg !6233
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !6234

if.then2:                                         ; preds = %if.end
  store i32 8, ptr %mul, align 4, !dbg !6235
  br label %if.end3, !dbg !6236

if.else:                                          ; preds = %if.end
  store i32 2, ptr %mul, align 4, !dbg !6237
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %4 = load ptr, ptr %start.addr, align 8, !dbg !6238
  %5 = load i32, ptr %active.addr, align 4, !dbg !6239
  %tobool = icmp ne i32 %5, 0, !dbg !6239
  %6 = zext i1 %tobool to i64, !dbg !6239
  %cond = select i1 %tobool, i32 42, i32 32, !dbg !6239
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !6240
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %7, i32 0, i32 3, !dbg !6241
  %8 = load i8, ptr %bNumInterfaces, align 1, !dbg !6241
  %conv = zext i8 %8 to i32, !dbg !6240
  %9 = load ptr, ptr %desc.addr, align 8, !dbg !6242
  %bConfigurationValue = getelementptr inbounds %struct.usb_config_descriptor, ptr %9, i32 0, i32 4, !dbg !6243
  %10 = load i8, ptr %bConfigurationValue, align 1, !dbg !6243
  %conv4 = zext i8 %10 to i32, !dbg !6242
  %11 = load ptr, ptr %desc.addr, align 8, !dbg !6244
  %bmAttributes = getelementptr inbounds %struct.usb_config_descriptor, ptr %11, i32 0, i32 6, !dbg !6245
  %12 = load i8, ptr %bmAttributes, align 1, !dbg !6245
  %conv5 = zext i8 %12 to i32, !dbg !6244
  %13 = load ptr, ptr %desc.addr, align 8, !dbg !6246
  %bMaxPower = getelementptr inbounds %struct.usb_config_descriptor, ptr %13, i32 0, i32 7, !dbg !6247
  %14 = load i8, ptr %bMaxPower, align 1, !dbg !6247
  %conv6 = zext i8 %14 to i32, !dbg !6246
  %15 = load i32, ptr %mul, align 4, !dbg !6248
  %mul7 = mul i32 %conv6, %15, !dbg !6249
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @format_config, i32 noundef %cond, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %mul7) #11, !dbg !6250
  %16 = load ptr, ptr %start.addr, align 8, !dbg !6251
  %idx.ext = sext i32 %call to i64, !dbg !6251
  %add.ptr = getelementptr i8, ptr %16, i64 %idx.ext, !dbg !6251
  store ptr %add.ptr, ptr %start.addr, align 8, !dbg !6251
  %17 = load ptr, ptr %start.addr, align 8, !dbg !6252
  store ptr %17, ptr %retval, align 8, !dbg !6253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6253

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %mul) #10, !dbg !6254
  %18 = load ptr, ptr %retval, align 8, !dbg !6254
  ret ptr %18, !dbg !6254
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @usb_dump_iad_descriptor(ptr noundef %start, ptr noundef %end, ptr noundef %iad) #1 align 16 !dbg !6255 {
entry:
  %retval = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %iad.addr = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6261, metadata !DIExpression()), !dbg !6264
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6262, metadata !DIExpression()), !dbg !6265
  store ptr %iad, ptr %iad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iad.addr, metadata !6263, metadata !DIExpression()), !dbg !6266
  %0 = load ptr, ptr %start.addr, align 8, !dbg !6267
  %1 = load ptr, ptr %end.addr, align 8, !dbg !6269
  %cmp = icmp ugt ptr %0, %1, !dbg !6270
  br i1 %cmp, label %if.then, label %if.end, !dbg !6271

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %start.addr, align 8, !dbg !6272
  store ptr %2, ptr %retval, align 8, !dbg !6273
  br label %return, !dbg !6273

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %start.addr, align 8, !dbg !6274
  %4 = load ptr, ptr %iad.addr, align 8, !dbg !6275
  %bFirstInterface = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %4, i32 0, i32 2, !dbg !6276
  %5 = load i8, ptr %bFirstInterface, align 1, !dbg !6276
  %conv = zext i8 %5 to i32, !dbg !6275
  %6 = load ptr, ptr %iad.addr, align 8, !dbg !6277
  %bInterfaceCount = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %6, i32 0, i32 3, !dbg !6278
  %7 = load i8, ptr %bInterfaceCount, align 1, !dbg !6278
  %conv1 = zext i8 %7 to i32, !dbg !6277
  %8 = load ptr, ptr %iad.addr, align 8, !dbg !6279
  %bFunctionClass = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %8, i32 0, i32 4, !dbg !6280
  %9 = load i8, ptr %bFunctionClass, align 1, !dbg !6280
  %conv2 = zext i8 %9 to i32, !dbg !6279
  %10 = load ptr, ptr %iad.addr, align 8, !dbg !6281
  %bFunctionClass3 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %10, i32 0, i32 4, !dbg !6282
  %11 = load i8, ptr %bFunctionClass3, align 1, !dbg !6282
  %conv4 = zext i8 %11 to i32, !dbg !6281
  %call = call ptr @class_decode(i32 noundef %conv4) #11, !dbg !6283
  %12 = load ptr, ptr %iad.addr, align 8, !dbg !6284
  %bFunctionSubClass = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %12, i32 0, i32 5, !dbg !6285
  %13 = load i8, ptr %bFunctionSubClass, align 1, !dbg !6285
  %conv5 = zext i8 %13 to i32, !dbg !6284
  %14 = load ptr, ptr %iad.addr, align 8, !dbg !6286
  %bFunctionProtocol = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %14, i32 0, i32 6, !dbg !6287
  %15 = load i8, ptr %bFunctionProtocol, align 1, !dbg !6287
  %conv6 = zext i8 %15 to i32, !dbg !6286
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @format_iad, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, ptr noundef %call, i32 noundef %conv5, i32 noundef %conv6) #11, !dbg !6288
  %16 = load ptr, ptr %start.addr, align 8, !dbg !6289
  %idx.ext = sext i32 %call7 to i64, !dbg !6289
  %add.ptr = getelementptr i8, ptr %16, i64 %idx.ext, !dbg !6289
  store ptr %add.ptr, ptr %start.addr, align 8, !dbg !6289
  %17 = load ptr, ptr %start.addr, align 8, !dbg !6290
  store ptr %17, ptr %retval, align 8, !dbg !6291
  br label %return, !dbg !6291

return:                                           ; preds = %if.end, %if.then
  %18 = load ptr, ptr %retval, align 8, !dbg !6292
  ret ptr %18, !dbg !6292
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @usb_dump_interface(i32 noundef %speed, ptr noundef %start, ptr noundef %end, ptr noundef %intfc, ptr noundef %iface, i32 noundef %setno) #1 align 16 !dbg !6293 {
entry:
  %speed.addr = alloca i32, align 4
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %intfc.addr = alloca ptr, align 8
  %iface.addr = alloca ptr, align 8
  %setno.addr = alloca i32, align 4
  %desc = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %speed, ptr %speed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %speed.addr, metadata !6301, metadata !DIExpression()), !dbg !6311
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6302, metadata !DIExpression()), !dbg !6312
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6303, metadata !DIExpression()), !dbg !6313
  store ptr %intfc, ptr %intfc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %intfc.addr, metadata !6304, metadata !DIExpression()), !dbg !6314
  store ptr %iface, ptr %iface.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iface.addr, metadata !6305, metadata !DIExpression()), !dbg !6315
  store i32 %setno, ptr %setno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %setno.addr, metadata !6306, metadata !DIExpression()), !dbg !6316
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #10, !dbg !6317
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !6307, metadata !DIExpression()), !dbg !6318
  %0 = load ptr, ptr %intfc.addr, align 8, !dbg !6319
  %altsetting = getelementptr inbounds %struct.usb_interface_cache, ptr %0, i32 0, i32 2, !dbg !6320
  %1 = load i32, ptr %setno.addr, align 4, !dbg !6321
  %idxprom = sext i32 %1 to i64, !dbg !6319
  %arrayidx = getelementptr [0 x %struct.usb_host_interface], ptr %altsetting, i64 0, i64 %idxprom, !dbg !6319
  store ptr %arrayidx, ptr %desc, align 8, !dbg !6318
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6310, metadata !DIExpression()), !dbg !6323
  %2 = load ptr, ptr %start.addr, align 8, !dbg !6324
  %3 = load ptr, ptr %end.addr, align 8, !dbg !6325
  %4 = load ptr, ptr %intfc.addr, align 8, !dbg !6326
  %5 = load ptr, ptr %iface.addr, align 8, !dbg !6327
  %6 = load i32, ptr %setno.addr, align 4, !dbg !6328
  %call = call ptr @usb_dump_interface_descriptor(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #11, !dbg !6329
  store ptr %call, ptr %start.addr, align 8, !dbg !6330
  store i32 0, ptr %i, align 4, !dbg !6331
  br label %for.cond, !dbg !6333

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4, !dbg !6334
  %8 = load ptr, ptr %desc, align 8, !dbg !6336
  %desc1 = getelementptr inbounds %struct.usb_host_interface, ptr %8, i32 0, i32 0, !dbg !6337
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %desc1, i32 0, i32 4, !dbg !6338
  %9 = load i8, ptr %bNumEndpoints, align 4, !dbg !6338
  %conv = zext i8 %9 to i32, !dbg !6336
  %cmp = icmp slt i32 %7, %conv, !dbg !6339
  br i1 %cmp, label %for.body, label %for.end, !dbg !6340

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %speed.addr, align 4, !dbg !6341
  %11 = load ptr, ptr %start.addr, align 8, !dbg !6343
  %12 = load ptr, ptr %end.addr, align 8, !dbg !6344
  %13 = load ptr, ptr %desc, align 8, !dbg !6345
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %13, i32 0, i32 3, !dbg !6346
  %14 = load ptr, ptr %endpoint, align 8, !dbg !6346
  %15 = load i32, ptr %i, align 4, !dbg !6347
  %idxprom3 = sext i32 %15 to i64, !dbg !6345
  %arrayidx4 = getelementptr %struct.usb_host_endpoint, ptr %14, i64 %idxprom3, !dbg !6345
  %desc5 = getelementptr inbounds %struct.usb_host_endpoint, ptr %arrayidx4, i32 0, i32 0, !dbg !6348
  %call6 = call ptr @usb_dump_endpoint_descriptor(i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %desc5) #11, !dbg !6349
  store ptr %call6, ptr %start.addr, align 8, !dbg !6350
  br label %for.inc, !dbg !6351

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !6352
  %inc = add i32 %16, 1, !dbg !6352
  store i32 %inc, ptr %i, align 4, !dbg !6352
  br label %for.cond, !dbg !6353, !llvm.loop !6354

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %start.addr, align 8, !dbg !6356
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !6357
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #10, !dbg !6357
  ret ptr %17, !dbg !6358
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @usb_dump_interface_descriptor(ptr noundef %start, ptr noundef %end, ptr noundef %intfc, ptr noundef %iface, i32 noundef %setno) #1 align 16 !dbg !6359 {
entry:
  %retval = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %intfc.addr = alloca ptr, align 8
  %iface.addr = alloca ptr, align 8
  %setno.addr = alloca i32, align 4
  %desc = alloca ptr, align 8
  %driver_name = alloca ptr, align 8
  %active = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6363, metadata !DIExpression()), !dbg !6373
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6364, metadata !DIExpression()), !dbg !6374
  store ptr %intfc, ptr %intfc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %intfc.addr, metadata !6365, metadata !DIExpression()), !dbg !6375
  store ptr %iface, ptr %iface.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iface.addr, metadata !6366, metadata !DIExpression()), !dbg !6376
  store i32 %setno, ptr %setno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %setno.addr, metadata !6367, metadata !DIExpression()), !dbg !6377
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #10, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !6368, metadata !DIExpression()), !dbg !6379
  call void @llvm.lifetime.start.p0(i64 8, ptr %driver_name) #10, !dbg !6380
  call void @llvm.dbg.declare(metadata ptr %driver_name, metadata !6371, metadata !DIExpression()), !dbg !6381
  store ptr @.str.30, ptr %driver_name, align 8, !dbg !6381
  call void @llvm.lifetime.start.p0(i64 4, ptr %active) #10, !dbg !6382
  call void @llvm.dbg.declare(metadata ptr %active, metadata !6372, metadata !DIExpression()), !dbg !6383
  store i32 0, ptr %active, align 4, !dbg !6383
  %0 = load ptr, ptr %start.addr, align 8, !dbg !6384
  %1 = load ptr, ptr %end.addr, align 8, !dbg !6386
  %cmp = icmp ugt ptr %0, %1, !dbg !6387
  br i1 %cmp, label %if.then, label %if.end, !dbg !6388

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %start.addr, align 8, !dbg !6389
  store ptr %2, ptr %retval, align 8, !dbg !6390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6390

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %intfc.addr, align 8, !dbg !6391
  %altsetting = getelementptr inbounds %struct.usb_interface_cache, ptr %3, i32 0, i32 2, !dbg !6392
  %4 = load i32, ptr %setno.addr, align 4, !dbg !6393
  %idxprom = sext i32 %4 to i64, !dbg !6391
  %arrayidx = getelementptr [0 x %struct.usb_host_interface], ptr %altsetting, i64 0, i64 %idxprom, !dbg !6391
  %desc1 = getelementptr inbounds %struct.usb_host_interface, ptr %arrayidx, i32 0, i32 0, !dbg !6394
  store ptr %desc1, ptr %desc, align 8, !dbg !6395
  %5 = load ptr, ptr %iface.addr, align 8, !dbg !6396
  %tobool = icmp ne ptr %5, null, !dbg !6396
  br i1 %tobool, label %if.then2, label %if.end8, !dbg !6398

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %iface.addr, align 8, !dbg !6399
  %dev = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 9, !dbg !6401
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6, !dbg !6402
  %7 = load ptr, ptr %driver, align 8, !dbg !6402
  %tobool3 = icmp ne ptr %7, null, !dbg !6399
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !6399

cond.true:                                        ; preds = %if.then2
  %8 = load ptr, ptr %iface.addr, align 8, !dbg !6403
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 9, !dbg !6404
  %driver5 = getelementptr inbounds %struct.device, ptr %dev4, i32 0, i32 6, !dbg !6405
  %9 = load ptr, ptr %driver5, align 8, !dbg !6405
  %name = getelementptr inbounds %struct.device_driver, ptr %9, i32 0, i32 0, !dbg !6406
  %10 = load ptr, ptr %name, align 8, !dbg !6406
  br label %cond.end, !dbg !6399

cond.false:                                       ; preds = %if.then2
  br label %cond.end, !dbg !6399

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ @.str.31, %cond.false ], !dbg !6399
  store ptr %cond, ptr %driver_name, align 8, !dbg !6407
  %11 = load ptr, ptr %desc, align 8, !dbg !6408
  %12 = load ptr, ptr %iface.addr, align 8, !dbg !6409
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 1, !dbg !6410
  %13 = load ptr, ptr %cur_altsetting, align 8, !dbg !6410
  %desc6 = getelementptr inbounds %struct.usb_host_interface, ptr %13, i32 0, i32 0, !dbg !6411
  %cmp7 = icmp eq ptr %11, %desc6, !dbg !6412
  %conv = zext i1 %cmp7 to i32, !dbg !6412
  store i32 %conv, ptr %active, align 4, !dbg !6413
  br label %if.end8, !dbg !6414

if.end8:                                          ; preds = %cond.end, %if.end
  %14 = load ptr, ptr %start.addr, align 8, !dbg !6415
  %15 = load i32, ptr %active, align 4, !dbg !6416
  %tobool9 = icmp ne i32 %15, 0, !dbg !6416
  %16 = zext i1 %tobool9 to i64, !dbg !6416
  %cond10 = select i1 %tobool9, i32 42, i32 32, !dbg !6416
  %17 = load ptr, ptr %desc, align 8, !dbg !6417
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 2, !dbg !6418
  %18 = load i8, ptr %bInterfaceNumber, align 1, !dbg !6418
  %conv11 = zext i8 %18 to i32, !dbg !6417
  %19 = load ptr, ptr %desc, align 8, !dbg !6419
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %19, i32 0, i32 3, !dbg !6420
  %20 = load i8, ptr %bAlternateSetting, align 1, !dbg !6420
  %conv12 = zext i8 %20 to i32, !dbg !6419
  %21 = load ptr, ptr %desc, align 8, !dbg !6421
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %21, i32 0, i32 4, !dbg !6422
  %22 = load i8, ptr %bNumEndpoints, align 1, !dbg !6422
  %conv13 = zext i8 %22 to i32, !dbg !6421
  %23 = load ptr, ptr %desc, align 8, !dbg !6423
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %23, i32 0, i32 5, !dbg !6424
  %24 = load i8, ptr %bInterfaceClass, align 1, !dbg !6424
  %conv14 = zext i8 %24 to i32, !dbg !6423
  %25 = load ptr, ptr %desc, align 8, !dbg !6425
  %bInterfaceClass15 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %25, i32 0, i32 5, !dbg !6426
  %26 = load i8, ptr %bInterfaceClass15, align 1, !dbg !6426
  %conv16 = zext i8 %26 to i32, !dbg !6425
  %call = call ptr @class_decode(i32 noundef %conv16) #11, !dbg !6427
  %27 = load ptr, ptr %desc, align 8, !dbg !6428
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %27, i32 0, i32 6, !dbg !6429
  %28 = load i8, ptr %bInterfaceSubClass, align 1, !dbg !6429
  %conv17 = zext i8 %28 to i32, !dbg !6428
  %29 = load ptr, ptr %desc, align 8, !dbg !6430
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %29, i32 0, i32 7, !dbg !6431
  %30 = load i8, ptr %bInterfaceProtocol, align 1, !dbg !6431
  %conv18 = zext i8 %30 to i32, !dbg !6430
  %31 = load ptr, ptr %driver_name, align 8, !dbg !6432
  %call19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %14, ptr noundef @format_iface, i32 noundef %cond10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14, ptr noundef %call, i32 noundef %conv17, i32 noundef %conv18, ptr noundef %31) #11, !dbg !6433
  %32 = load ptr, ptr %start.addr, align 8, !dbg !6434
  %idx.ext = sext i32 %call19 to i64, !dbg !6434
  %add.ptr = getelementptr i8, ptr %32, i64 %idx.ext, !dbg !6434
  store ptr %add.ptr, ptr %start.addr, align 8, !dbg !6434
  %33 = load ptr, ptr %start.addr, align 8, !dbg !6435
  store ptr %33, ptr %retval, align 8, !dbg !6436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6436

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %active) #10, !dbg !6437
  call void @llvm.lifetime.end.p0(i64 8, ptr %driver_name) #10, !dbg !6437
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #10, !dbg !6437
  %34 = load ptr, ptr %retval, align 8, !dbg !6437
  ret ptr %34, !dbg !6437
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @usb_dump_endpoint_descriptor(i32 noundef %speed, ptr noundef %start, ptr noundef %end, ptr noundef %desc) #1 align 16 !dbg !6438 {
entry:
  %retval = alloca ptr, align 8
  %speed.addr = alloca i32, align 4
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %dir = alloca i8, align 1
  %unit = alloca i8, align 1
  %type = alloca ptr, align 8
  %interval = alloca i32, align 4
  %bandwidth = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %speed, ptr %speed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %speed.addr, metadata !6444, metadata !DIExpression()), !dbg !6453
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6445, metadata !DIExpression()), !dbg !6454
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6446, metadata !DIExpression()), !dbg !6455
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6447, metadata !DIExpression()), !dbg !6456
  call void @llvm.lifetime.start.p0(i64 1, ptr %dir) #10, !dbg !6457
  call void @llvm.dbg.declare(metadata ptr %dir, metadata !6448, metadata !DIExpression()), !dbg !6458
  call void @llvm.lifetime.start.p0(i64 1, ptr %unit) #10, !dbg !6457
  call void @llvm.dbg.declare(metadata ptr %unit, metadata !6449, metadata !DIExpression()), !dbg !6459
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #10, !dbg !6457
  call void @llvm.dbg.declare(metadata ptr %type, metadata !6450, metadata !DIExpression()), !dbg !6460
  call void @llvm.lifetime.start.p0(i64 4, ptr %interval) #10, !dbg !6461
  call void @llvm.dbg.declare(metadata ptr %interval, metadata !6451, metadata !DIExpression()), !dbg !6462
  call void @llvm.lifetime.start.p0(i64 4, ptr %bandwidth) #10, !dbg !6461
  call void @llvm.dbg.declare(metadata ptr %bandwidth, metadata !6452, metadata !DIExpression()), !dbg !6463
  store i32 1, ptr %bandwidth, align 4, !dbg !6463
  %0 = load ptr, ptr %start.addr, align 8, !dbg !6464
  %1 = load ptr, ptr %end.addr, align 8, !dbg !6466
  %cmp = icmp ugt ptr %0, %1, !dbg !6467
  br i1 %cmp, label %if.then, label %if.end, !dbg !6468

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %start.addr, align 8, !dbg !6469
  store ptr %2, ptr %retval, align 8, !dbg !6470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6470

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !6471
  %call = call i32 @usb_endpoint_dir_in(ptr noundef %3) #11, !dbg !6472
  %tobool = icmp ne i32 %call, 0, !dbg !6472
  %4 = zext i1 %tobool to i64, !dbg !6472
  %cond = select i1 %tobool, i32 73, i32 79, !dbg !6472
  %conv = trunc i32 %cond to i8, !dbg !6472
  store i8 %conv, ptr %dir, align 1, !dbg !6473
  %5 = load i32, ptr %speed.addr, align 4, !dbg !6474
  %cmp1 = icmp eq i32 %5, 3, !dbg !6476
  br i1 %cmp1, label %if.then3, label %if.end5, !dbg !6477

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !6478
  %call4 = call i32 @usb_endpoint_maxp_mult(ptr noundef %6) #11, !dbg !6479
  store i32 %call4, ptr %bandwidth, align 4, !dbg !6480
  br label %if.end5, !dbg !6481

if.end5:                                          ; preds = %if.then3, %if.end
  %7 = load ptr, ptr %desc.addr, align 8, !dbg !6482
  %call6 = call i32 @usb_endpoint_type(ptr noundef %7) #11, !dbg !6483
  switch i32 %call6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb8
    i32 3, label %sw.bb9
  ], !dbg !6484

sw.bb:                                            ; preds = %if.end5
  store ptr @.str.32, ptr %type, align 8, !dbg !6485
  store i8 66, ptr %dir, align 1, !dbg !6487
  br label %sw.epilog, !dbg !6488

sw.bb7:                                           ; preds = %if.end5
  store ptr @.str.33, ptr %type, align 8, !dbg !6489
  br label %sw.epilog, !dbg !6490

sw.bb8:                                           ; preds = %if.end5
  store ptr @.str.34, ptr %type, align 8, !dbg !6491
  br label %sw.epilog, !dbg !6492

sw.bb9:                                           ; preds = %if.end5
  store ptr @.str.35, ptr %type, align 8, !dbg !6493
  br label %sw.epilog, !dbg !6494

sw.default:                                       ; preds = %if.end5
  %8 = load ptr, ptr %start.addr, align 8, !dbg !6495
  store ptr %8, ptr %retval, align 8, !dbg !6496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6496

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb
  %9 = load ptr, ptr %desc.addr, align 8, !dbg !6497
  %10 = load i32, ptr %speed.addr, align 4, !dbg !6498
  %call10 = call i32 @usb_decode_interval(ptr noundef %9, i32 noundef %10) #11, !dbg !6499
  store i32 %call10, ptr %interval, align 4, !dbg !6500
  %11 = load i32, ptr %interval, align 4, !dbg !6501
  %rem = urem i32 %11, 1000, !dbg !6503
  %tobool11 = icmp ne i32 %rem, 0, !dbg !6503
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !6504

if.then12:                                        ; preds = %sw.epilog
  store i8 117, ptr %unit, align 1, !dbg !6505
  br label %if.end13, !dbg !6507

if.else:                                          ; preds = %sw.epilog
  store i8 109, ptr %unit, align 1, !dbg !6508
  %12 = load i32, ptr %interval, align 4, !dbg !6510
  %div = udiv i32 %12, 1000, !dbg !6510
  store i32 %div, ptr %interval, align 4, !dbg !6510
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  %13 = load ptr, ptr %start.addr, align 8, !dbg !6511
  %14 = load ptr, ptr %desc.addr, align 8, !dbg !6512
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %14, i32 0, i32 2, !dbg !6513
  %15 = load i8, ptr %bEndpointAddress, align 1, !dbg !6513
  %conv14 = zext i8 %15 to i32, !dbg !6512
  %16 = load i8, ptr %dir, align 1, !dbg !6514
  %conv15 = zext i8 %16 to i32, !dbg !6514
  %17 = load ptr, ptr %desc.addr, align 8, !dbg !6515
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 3, !dbg !6516
  %18 = load i8, ptr %bmAttributes, align 1, !dbg !6516
  %conv16 = zext i8 %18 to i32, !dbg !6515
  %19 = load ptr, ptr %type, align 8, !dbg !6517
  %20 = load ptr, ptr %desc.addr, align 8, !dbg !6518
  %call17 = call i32 @usb_endpoint_maxp(ptr noundef %20) #11, !dbg !6519
  %21 = load i32, ptr %bandwidth, align 4, !dbg !6520
  %mul = mul i32 %call17, %21, !dbg !6521
  %22 = load i32, ptr %interval, align 4, !dbg !6522
  %23 = load i8, ptr %unit, align 1, !dbg !6523
  %conv18 = zext i8 %23 to i32, !dbg !6523
  %call19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %13, ptr noundef @format_endpt, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %conv16, ptr noundef %19, i32 noundef %mul, i32 noundef %22, i32 noundef %conv18) #11, !dbg !6524
  %24 = load ptr, ptr %start.addr, align 8, !dbg !6525
  %idx.ext = sext i32 %call19 to i64, !dbg !6525
  %add.ptr = getelementptr i8, ptr %24, i64 %idx.ext, !dbg !6525
  store ptr %add.ptr, ptr %start.addr, align 8, !dbg !6525
  %25 = load ptr, ptr %start.addr, align 8, !dbg !6526
  store ptr %25, ptr %retval, align 8, !dbg !6527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6527

cleanup:                                          ; preds = %if.end13, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %bandwidth) #10, !dbg !6528
  call void @llvm.lifetime.end.p0(i64 4, ptr %interval) #10, !dbg !6528
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #10, !dbg !6528
  call void @llvm.lifetime.end.p0(i64 1, ptr %unit) #10, !dbg !6528
  call void @llvm.lifetime.end.p0(i64 1, ptr %dir) #10, !dbg !6528
  %26 = load ptr, ptr %retval, align 8, !dbg !6528
  ret ptr %26, !dbg !6528
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @usb_endpoint_dir_in(ptr noundef %epd) #4 align 16 !dbg !6529 {
entry:
  %epd.addr = alloca ptr, align 8
  store ptr %epd, ptr %epd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %epd.addr, metadata !6533, metadata !DIExpression()), !dbg !6534
  %0 = load ptr, ptr %epd.addr, align 8, !dbg !6535
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %0, i32 0, i32 2, !dbg !6536
  %1 = load i8, ptr %bEndpointAddress, align 1, !dbg !6536
  %conv = zext i8 %1 to i32, !dbg !6535
  %and = and i32 %conv, 128, !dbg !6537
  %cmp = icmp eq i32 %and, 128, !dbg !6538
  %conv1 = zext i1 %cmp to i32, !dbg !6538
  ret i32 %conv1, !dbg !6539
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @usb_endpoint_maxp_mult(ptr noundef %epd) #4 align 16 !dbg !6540 {
entry:
  %epd.addr = alloca ptr, align 8
  %maxp = alloca i32, align 4
  store ptr %epd, ptr %epd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %epd.addr, metadata !6542, metadata !DIExpression()), !dbg !6544
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxp) #10, !dbg !6545
  call void @llvm.dbg.declare(metadata ptr %maxp, metadata !6543, metadata !DIExpression()), !dbg !6546
  %0 = load ptr, ptr %epd.addr, align 8, !dbg !6547
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %0, i32 0, i32 4, !dbg !6547
  %1 = load i16, ptr %wMaxPacketSize, align 1, !dbg !6547
  %conv = zext i16 %1 to i32, !dbg !6547
  store i32 %conv, ptr %maxp, align 4, !dbg !6546
  %2 = load i32, ptr %maxp, align 4, !dbg !6548
  %and = and i32 %2, 6144, !dbg !6548
  %shr = ashr i32 %and, 11, !dbg !6548
  %add = add i32 %shr, 1, !dbg !6549
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxp) #10, !dbg !6550
  ret i32 %add, !dbg !6551
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @usb_endpoint_type(ptr noundef %epd) #4 align 16 !dbg !6552 {
entry:
  %epd.addr = alloca ptr, align 8
  store ptr %epd, ptr %epd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %epd.addr, metadata !6554, metadata !DIExpression()), !dbg !6555
  %0 = load ptr, ptr %epd.addr, align 8, !dbg !6556
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %0, i32 0, i32 3, !dbg !6557
  %1 = load i8, ptr %bmAttributes, align 1, !dbg !6557
  %conv = zext i8 %1 to i32, !dbg !6556
  %and = and i32 %conv, 3, !dbg !6558
  ret i32 %and, !dbg !6559
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6560 dso_local i32 @usb_decode_interval(ptr noundef, i32 noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @usb_endpoint_maxp(ptr noundef %epd) #4 align 16 !dbg !6563 {
entry:
  %epd.addr = alloca ptr, align 8
  store ptr %epd, ptr %epd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %epd.addr, metadata !6565, metadata !DIExpression()), !dbg !6566
  %0 = load ptr, ptr %epd.addr, align 8, !dbg !6567
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %0, i32 0, i32 4, !dbg !6567
  %1 = load i16, ptr %wMaxPacketSize, align 1, !dbg !6567
  %conv = zext i16 %1 to i32, !dbg !6567
  %and = and i32 %conv, 2047, !dbg !6568
  ret i32 %and, !dbg !6569
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #5 align 16 !dbg !6570 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6574, metadata !DIExpression()), !dbg !6584
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6575, metadata !DIExpression()), !dbg !6585
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6576, metadata !DIExpression()), !dbg !6586
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #10, !dbg !6587
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6577, metadata !DIExpression()), !dbg !6588
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6589
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6590
  %conv = trunc i64 %1 to i32, !dbg !6590
  store i32 %conv, ptr %sz, align 4, !dbg !6588
  %2 = load i32, ptr %sz, align 4, !dbg !6591
  %cmp = icmp sge i32 %2, 0, !dbg !6591
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6591

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6591
  %conv2 = sext i32 %3 to i64, !dbg !6591
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6591
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6591
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6593
  %lnot = xor i1 %5, true, !dbg !6591
  %lnot5 = xor i1 %lnot, true, !dbg !6591
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6591
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6591
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6591
  %tobool = icmp ne i64 %expval, 0, !dbg !6591
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6594

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6595
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6598
  br i1 %7, label %if.else, label %if.then7, !dbg !6599

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6600
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6601
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #11, !dbg !6602
  br label %if.end11, !dbg !6602

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6603, !range !6605, !noundef !944
  %tobool8 = trunc i8 %10 to i1, !dbg !6603
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6606

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #11, !dbg !6607, !srcloc !6608
  br label %if.end, !dbg !6607

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #11, !dbg !6609, !srcloc !6610
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6611

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6612
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6578, metadata !DIExpression()), !dbg !6612
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6612
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6612
  %lnot15 = xor i1 %cmp13, true, !dbg !6612
  %lnot17 = xor i1 %lnot15, true, !dbg !6612
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6612
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6612
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6613
  %tobool19 = icmp ne i32 %12, 0, !dbg !6613
  %lnot20 = xor i1 %tobool19, true, !dbg !6613
  %lnot22 = xor i1 %lnot20, true, !dbg !6613
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6613
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6613
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6613
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6613
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6612

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6613

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !6614
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6581, metadata !DIExpression()), !dbg !6614
  store i32 2307, ptr %__flags, align 4, !dbg !6614
  br label %do.body28, !dbg !6614

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6615

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6615

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6614

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6617
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.36, i32 249, i32 %13, i64 12) #10, !dbg !6617, !srcloc !6619
  br label %do.cond30, !dbg !6617

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6617

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6614

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6620

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6620

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !6613
  br label %do.cond35, !dbg !6614

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6614

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6614

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6612
  %tobool38 = icmp ne i32 %14, 0, !dbg !6612
  %lnot39 = xor i1 %tobool38, true, !dbg !6612
  %lnot41 = xor i1 %lnot39, true, !dbg !6612
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6612
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6612
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6612
  store i64 %expval44, ptr %tmp, align 8, !dbg !6613
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !6622
  %15 = load i64, ptr %tmp, align 8, !dbg !6612
  %tobool45 = icmp ne i64 %15, 0, !dbg !6622
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6623

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6624

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6625
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6626
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6627, !range !6605, !noundef !944
  %tobool48 = trunc i8 %18 to i1, !dbg !6627
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #11, !dbg !6628
  store i1 true, ptr %retval, align 1, !dbg !6629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6629

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #10, !dbg !6630
  %19 = load i1, ptr %retval, align 1, !dbg !6630
  ret i1 %19, !dbg !6630
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6631 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #4 align 16 !dbg !6632 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6636, metadata !DIExpression()), !dbg !6638
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6637, metadata !DIExpression()), !dbg !6639
  %0 = load i32, ptr %size.addr, align 4, !dbg !6640
  %1 = load i64, ptr %count.addr, align 8, !dbg !6642
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #11, !dbg !6643
  ret void, !dbg !6644
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6645 dso_local void @__bad_copy_from() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6646 dso_local void @__bad_copy_to() #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #4 align 16 !dbg !6647 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6651, metadata !DIExpression()), !dbg !6654
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6652, metadata !DIExpression()), !dbg !6655
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6653, metadata !DIExpression()), !dbg !6656
  ret void, !dbg !6657
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6658 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #0

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432}
!llvm.ident = !{!5433}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "usbfs_devices_fops", scope: !2, file: !3, line: 542, type: !2016, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/usb/core/.devices.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/usb/core/usbcore\22 -D KBUILD_BASENAME=\22devices\22 -D KBUILD_MODNAME=\22usbcore\22 -D __KBUILD_MODNAME=kmod_usbcore -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/usb/core/devices.ll drivers/usb/core/devices.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !210, globals: !5275, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/core/devices.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1bab7d05c9572284705f0cc51bc1f3e7")
!4 = !{!5, !13, !18, !24, !29, !37, !43, !51, !67, !74, !81, !87, !93, !100, !108, !116, !122, !131, !136, !141, !147, !159, !168, !175, !182, !187, !193, !199, !205}
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
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !44, line: 68, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!50 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !52, line: 1325, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!54 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!55 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!56 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!57 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!58 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!59 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!60 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!61 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!62 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!63 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!64 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!65 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!66 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
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
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !148, line: 1189, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80d6f45aac89efdd60a6063143f79a70")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158}
!150 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0)
!151 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1)
!152 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2)
!153 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3)
!154 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4)
!155 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5)
!156 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6)
!157 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7)
!158 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !148, line: 1179, baseType: !7, size: 32, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167}
!161 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0)
!162 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1)
!163 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2)
!164 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3)
!165 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4)
!166 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5)
!167 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_ssp_rate", file: !169, line: 37, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/usb/ch9.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10fa12c4560379d26e545265c72e34ff")
!170 = !{!171, !172, !173, !174}
!171 = !DIEnumerator(name: "USB_SSP_GEN_UNKNOWN", value: 0)
!172 = !DIEnumerator(name: "USB_SSP_GEN_2x1", value: 1)
!173 = !DIEnumerator(name: "USB_SSP_GEN_1x2", value: 2)
!174 = !DIEnumerator(name: "USB_SSP_GEN_2x2", value: 3)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !176, line: 95, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "01f3cab1cef729fb6cd7609abdb96587")
!177 = !{!178, !179, !180, !181}
!178 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0)
!179 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1)
!180 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2)
!181 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_wireless_status", file: !176, line: 172, baseType: !7, size: 32, elements: !183)
!183 = !{!184, !185, !186}
!184 = !DIEnumerator(name: "USB_WIRELESS_STATUS_NA", value: 0)
!185 = !DIEnumerator(name: "USB_WIRELESS_STATUS_DISCONNECTED", value: 1)
!186 = !DIEnumerator(name: "USB_WIRELESS_STATUS_CONNECTED", value: 2)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !188, line: 11, baseType: !7, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!189 = !{!190, !191, !192}
!190 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!191 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!192 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb3_link_state", file: !148, line: 1214, baseType: !7, size: 32, elements: !194)
!194 = !{!195, !196, !197, !198}
!195 = !DIEnumerator(name: "USB3_LPM_U0", value: 0)
!196 = !DIEnumerator(name: "USB3_LPM_U1", value: 1)
!197 = !DIEnumerator(name: "USB3_LPM_U2", value: 2)
!198 = !DIEnumerator(name: "USB3_LPM_U3", value: 3)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dev_authorize_policy", file: !200, line: 62, baseType: !7, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/usb/hcd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7dec1a8757c1422b029643f18514a056")
!201 = !{!202, !203, !204}
!202 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_NONE", value: 0)
!203 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_ALL", value: 1)
!204 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_INTERNAL", value: 2)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !206, line: 10, baseType: !7, size: 32, elements: !207)
!206 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!207 = !{!208, !209}
!208 = !DIEnumerator(name: "false", value: 0)
!209 = !DIEnumerator(name: "true", value: 1)
!210 = !{!211, !212, !315, !1169, !365, !284, !4746, !109}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hcd", file: !200, line: 68, size: 4864, elements: !214)
!214 = !{!215, !5011, !5012, !5013, !5014, !5018, !5019, !5075, !5076, !5077, !5206, !5209, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5229, !5230, !5231, !5260, !5261, !5263, !5264, !5265, !5266, !5270, !5271, !5274}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !213, file: !200, line: 73, baseType: !216, size: 1152)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !176, line: 451, size: 1152, elements: !217)
!217 = !{!218, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4706, !5002, !5003, !5004, !5005, !5006, !5007, !5010}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !216, file: !176, line: 452, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !221)
!221 = !{!222, !4229, !4230, !4233, !4234, !4287, !4372, !4373, !4374, !4375, !4376, !4383, !4475, !4488, !4498, !4502, !4504, !4505, !4506, !4510, !4517, !4518, !4521, !4524, !4528, !4631, !4632, !4633, !4634, !4635, !4636, !4666, !4667, !4668, !4671, !4674, !4683, !4684, !4685, !4686, !4687, !4688}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !220, file: !94, line: 706, baseType: !223, size: 512)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !224, line: 64, size: 512, elements: !225)
!224 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!225 = !{!226, !230, !237, !239, !328, !4115, !4219, !4224, !4225, !4226, !4227, !4228}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !224, line: 65, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !223, file: !224, line: 66, baseType: !231, size: 128, offset: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !232, line: 190, size: 128, elements: !233)
!232 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!233 = !{!234, !236}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !232, line: 191, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !231, file: !232, line: 191, baseType: !235, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !223, file: !224, line: 67, baseType: !238, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !223, file: !224, line: 68, baseType: !240, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !224, line: 168, size: 768, elements: !242)
!242 = !{!243, !244, !287, !288}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !241, file: !224, line: 169, baseType: !231, size: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !241, file: !224, line: 170, baseType: !245, size: 32, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !246, line: 29, baseType: !247)
!246 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !246, line: 17, size: 32, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !246, line: 18, baseType: !250, size: 32)
!250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !246, line: 18, size: 32, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !250, file: !246, line: 19, baseType: !253, size: 32)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !254, line: 14, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !253, file: !254, line: 15, baseType: !257, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !258, line: 44, baseType: !259)
!258 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !258, line: 14, size: 32, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !258, line: 15, baseType: !262, size: 32)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !258, line: 15, size: 32, elements: !263)
!263 = !{!264, !269, !279}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !262, file: !258, line: 16, baseType: !265, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !232, line: 174, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 172, size: 32, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !266, file: !232, line: 173, baseType: !109, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !262, file: !258, line: 24, baseType: !270, size: 16)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !262, file: !258, line: 24, size: 16, elements: !271)
!271 = !{!272, !278}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !270, file: !258, line: 25, baseType: !273, size: 8)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !274, line: 17, baseType: !275)
!274 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !276, line: 21, baseType: !277)
!276 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!277 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !270, file: !258, line: 26, baseType: !273, size: 8, offset: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !262, file: !258, line: 28, baseType: !280, size: 32)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !262, file: !258, line: 28, size: 32, elements: !281)
!281 = !{!282, !286}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !280, file: !258, line: 29, baseType: !283, size: 16)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !274, line: 19, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !276, line: 24, baseType: !285)
!285 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !280, file: !258, line: 30, baseType: !283, size: 16, offset: 16)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !241, file: !224, line: 171, baseType: !223, size: 512, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !241, file: !224, line: 172, baseType: !289, size: 64, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !224, line: 133, size: 192, elements: !292)
!292 = !{!293, !300, !305}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !291, file: !224, line: 134, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!109, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !291, file: !224, line: 135, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!227, !298}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !291, file: !224, line: 136, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!109, !298, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !224, line: 125, size: 20736, elements: !312)
!312 = !{!313, !318, !322, !323, !327}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !311, file: !224, line: 126, baseType: !314, size: 192)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 192, elements: !316)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!316 = !{!317}
!317 = !DISubrange(count: 3)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !311, file: !224, line: 127, baseType: !319, size: 4096, offset: 192)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 4096, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !311, file: !224, line: 128, baseType: !109, size: 32, offset: 4288)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !311, file: !224, line: 129, baseType: !324, size: 16384, offset: 4320)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 16384, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 2048)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !311, file: !224, line: 130, baseType: !109, size: 32, offset: 20704)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !223, file: !224, line: 69, baseType: !329, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !224, line: 116, size: 384, elements: !332)
!332 = !{!333, !337, !366, !4077, !4105, !4109}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !331, file: !224, line: 117, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !238}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !331, file: !224, line: 118, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !341, line: 254, size: 128, elements: !342)
!341 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!342 = !{!343, !358}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !340, file: !341, line: 255, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!347, !238, !352, !315}
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !232, line: 66, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !349, line: 73, baseType: !350)
!349 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !349, line: 15, baseType: !351)
!351 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !341, line: 30, size: 128, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !353, file: !341, line: 31, baseType: !227, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !353, file: !341, line: 32, baseType: !357, size: 16, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !232, line: 24, baseType: !285)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !340, file: !341, line: 256, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!347, !238, !352, !227, !362}
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !232, line: 61, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !349, line: 72, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !349, line: 16, baseType: !365)
!365 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !331, file: !224, line: 119, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !341, line: 84, size: 320, elements: !371)
!371 = !{!372, !373, !377, !4073, !4075}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !341, line: 85, baseType: !227, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !370, file: !341, line: 86, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!357, !238, !352, !109}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !370, file: !341, line: 88, baseType: !378, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!357, !238, !381, !109}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !341, line: 175, size: 512, elements: !383)
!383 = !{!384, !385, !386, !387, !4064, !4068, !4069}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !382, file: !341, line: 176, baseType: !353, size: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !382, file: !341, line: 177, baseType: !362, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !382, file: !341, line: 178, baseType: !211, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !382, file: !341, line: 179, baseType: !388, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !393)
!393 = !{!394, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !4058, !4059, !4060, !4061, !4062, !4063}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !392, file: !14, line: 473, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !397)
!397 = !{!398, !399, !400, !408, !409, !416, !417, !420, !421, !3837, !3838, !3839, !3840, !3841, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3881, !3884, !3885, !3886, !3895, !3896, !3897, !3898}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !396, file: !14, line: 642, baseType: !357, size: 16)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !396, file: !14, line: 643, baseType: !285, size: 16, offset: 16)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !396, file: !14, line: 644, baseType: !401, size: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !402, line: 23, baseType: !403)
!402 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 21, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !403, file: !402, line: 22, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !232, line: 37, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !349, line: 49, baseType: !7)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !396, file: !14, line: 645, baseType: !231, size: 128, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !396, file: !14, line: 646, baseType: !410, size: 32, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !402, line: 28, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 26, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !411, file: !402, line: 27, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !232, line: 38, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !349, line: 50, baseType: !7)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !396, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !396, file: !14, line: 650, baseType: !418, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !396, file: !14, line: 651, baseType: !418, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !396, file: !14, line: 654, baseType: !422, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !425)
!425 = !{!426, !3671, !3681, !3685, !3689, !3693, !3697, !3701, !3705, !3709, !3713, !3714, !3718, !3722, !3759, !3788, !3792, !3798, !3802, !3806, !3810, !3814, !3818, !3824, !3828}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !424, file: !14, line: 1967, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!430, !395, !430, !7}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !432, line: 82, size: 1536, elements: !433)
!432 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!433 = !{!434, !435, !445, !453, !454, !474, !475, !479, !492, !3654, !3655, !3656, !3657, !3663, !3664, !3665}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !431, file: !432, line: 84, baseType: !7, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !431, file: !432, line: 85, baseType: !436, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !437, line: 275, baseType: !438)
!437 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !437, line: 275, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !438, file: !437, line: 275, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !437, line: 69, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !437, line: 64, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !442, file: !437, line: 65, baseType: !7, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !431, file: !432, line: 86, baseType: !446, size: 128, offset: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !447, line: 38, size: 128, elements: !448)
!447 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!448 = !{!449, !451}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !446, file: !447, line: 39, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !446, file: !447, line: 39, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !431, file: !432, line: 87, baseType: !430, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !431, file: !432, line: 88, baseType: !455, size: 128, offset: 256)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !432, line: 49, size: 128, elements: !456)
!456 = !{!457, !471}
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !432, line: 50, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !432, line: 50, size: 64, elements: !459)
!459 = !{!460, !467}
!460 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !432, line: 51, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !432, line: 51, size: 64, elements: !462)
!462 = !{!463, !466}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !461, file: !432, line: 52, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !274, line: 21, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !276, line: 27, baseType: !7)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !461, file: !432, line: 52, baseType: !464, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !458, file: !432, line: 54, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !274, line: 23, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !276, line: 31, baseType: !470)
!470 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !455, file: !432, line: 56, baseType: !472, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !431, file: !432, line: 89, baseType: !395, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !431, file: !432, line: 91, baseType: !476, size: 256, offset: 448)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 256, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !431, file: !432, line: 94, baseType: !480, size: 64, offset: 704)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !481, line: 25, size: 64, elements: !482)
!481 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !481, line: 26, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !481, line: 26, size: 64, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !484, file: !481, line: 28, baseType: !469, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !481, line: 30, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !484, file: !481, line: 30, size: 64, elements: !489)
!489 = !{!490, !491}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !488, file: !481, line: 31, baseType: !245, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !488, file: !481, line: 32, baseType: !109, size: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !431, file: !432, line: 95, baseType: !493, size: 64, offset: 768)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !432, line: 128, size: 1024, align: 512, elements: !496)
!496 = !{!497, !501, !502, !509, !515, !519, !523, !527, !528, !532, !536, !3644, !3648}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !495, file: !432, line: 129, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!109, !430, !7}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !495, file: !432, line: 130, baseType: !498, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !495, file: !432, line: 131, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!109, !506, !508}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !495, file: !432, line: 132, baseType: !510, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!109, !506, !7, !227, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !495, file: !432, line: 134, baseType: !516, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!109, !506}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !495, file: !432, line: 135, baseType: !520, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!109, !430}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !495, file: !432, line: 136, baseType: !524, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !430}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !495, file: !432, line: 137, baseType: !524, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !495, file: !432, line: 138, baseType: !529, size: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !430, !395}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !495, file: !432, line: 139, baseType: !533, size: 64, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!315, !430, !315, !109}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !495, file: !432, line: 140, baseType: !537, size: 64, offset: 640)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!540, !3643}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !542, line: 70, size: 256, elements: !543)
!542 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!543 = !{!544, !545, !3639, !3640}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !541, file: !542, line: 71, baseType: !430, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !541, file: !542, line: 72, baseType: !546, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !548)
!548 = !{!549, !550, !553, !554, !555, !559, !1038, !1178, !1218, !1308, !1312, !1313, !1314, !1315, !1316, !1325, !1326, !1327, !1328, !1333, !1337, !1338, !1341, !1344, !1347, !1350, !1351, !1352, !1393, !3572, !3573, !3574, !3575, !3576, !3577, !3580, !3582, !3589, !3590, !3591, !3592, !3593, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !547, file: !14, line: 1191, baseType: !231, size: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !547, file: !14, line: 1192, baseType: !551, size: 32, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !232, line: 21, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !232, line: 18, baseType: !464)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !547, file: !14, line: 1193, baseType: !277, size: 8, offset: 160)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !547, file: !14, line: 1194, baseType: !365, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !547, file: !14, line: 1195, baseType: !556, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !232, line: 52, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !349, line: 88, baseType: !558)
!558 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !547, file: !14, line: 1196, baseType: !560, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !562)
!562 = !{!563, !564, !565, !571, !575, !579, !583, !1023, !1024, !1028, !1030, !1031, !1032, !1034, !1035, !1036, !1037}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !561, file: !14, line: 2367, baseType: !227, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !561, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !561, file: !14, line: 2376, baseType: !566, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!109, !569}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !542, line: 21, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !561, file: !14, line: 2377, baseType: !572, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !561, file: !14, line: 2378, baseType: !576, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!430, !560, !109, !227, !211}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !561, file: !14, line: 2380, baseType: !580, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !546}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !561, file: !14, line: 2381, baseType: !584, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !586)
!586 = !{!587, !588, !589, !593, !615, !641, !642, !643, !644, !648, !653, !654, !674, !730, !731, !732, !733, !734, !737, !738, !739, !747, !751, !778, !799, !800, !801, !802, !811, !834, !835, !838, !841, !842, !843, !844, !845, !846, !847, !852, !853, !981, !989, !990, !991, !993, !997, !998, !1002, !1003, !1004, !1005, !1007, !1008, !1009, !1016, !1017, !1018, !1022}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !585, file: !6, line: 403, baseType: !5, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !585, file: !6, line: 406, baseType: !231, size: 128, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !585, file: !6, line: 409, baseType: !590, size: 448, offset: 192)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 448, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 56)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !585, file: !6, line: 417, baseType: !594, size: 768, offset: 640)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !595)
!595 = !{!596, !597, !598, !599, !602}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !594, file: !6, line: 46, baseType: !223, size: 512)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !594, file: !6, line: 47, baseType: !584, size: 64, offset: 512)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !594, file: !6, line: 48, baseType: !238, size: 64, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !594, file: !6, line: 49, baseType: !600, size: 64, offset: 640)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !594, file: !6, line: 50, baseType: !603, size: 64, offset: 704)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !605, line: 26, size: 256, elements: !606)
!605 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !604, file: !605, line: 27, baseType: !7, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !604, file: !605, line: 28, baseType: !609, size: 192, offset: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !610, line: 43, size: 192, elements: !611)
!610 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!611 = !{!612, !614}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !609, file: !610, line: 44, baseType: !613, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !254, line: 23, baseType: !253)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !609, file: !610, line: 45, baseType: !231, size: 128, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !585, file: !6, line: 418, baseType: !616, size: 64, offset: 1408)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !618)
!618 = !{!619, !620, !625, !629, !633, !637}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !617, file: !6, line: 54, baseType: !353, size: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !617, file: !6, line: 55, baseType: !621, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!347, !616, !624, !315}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !617, file: !6, line: 57, baseType: !626, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!347, !616, !624, !227, !362}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !617, file: !6, line: 59, baseType: !630, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !584, !227}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !617, file: !6, line: 60, baseType: !634, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!109, !584}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !617, file: !6, line: 61, baseType: !638, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !584}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !585, file: !6, line: 419, baseType: !227, size: 64, offset: 1472)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !585, file: !6, line: 420, baseType: !227, size: 64, offset: 1536)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !585, file: !6, line: 421, baseType: !238, size: 64, offset: 1600)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !585, file: !6, line: 424, baseType: !645, size: 64, offset: 1664)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !585, file: !6, line: 425, baseType: !649, size: 64, offset: 1728)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !274, line: 20, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !276, line: 26, baseType: !109)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !585, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !585, file: !6, line: 435, baseType: !655, size: 256, offset: 1856)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !656, line: 66, size: 256, elements: !657)
!656 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!657 = !{!658, !667, !668, !673}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !655, file: !656, line: 67, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !660, line: 13, baseType: !661)
!660 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !232, line: 181, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 179, size: 64, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !662, file: !232, line: 180, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !274, line: 22, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !276, line: 30, baseType: !558)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !655, file: !656, line: 68, baseType: !613, size: 32, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !655, file: !656, line: 70, baseType: !669, size: 32, offset: 96)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !670, line: 15, size: 32, elements: !671)
!670 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !669, file: !670, line: 20, baseType: !265, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !655, file: !656, line: 72, baseType: !231, size: 128, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !585, file: !6, line: 437, baseType: !675, size: 64, offset: 2112)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !677, line: 69, size: 320, elements: !678)
!677 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!678 = !{!679, !680, !681, !701, !703, !707, !708}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !676, file: !677, line: 70, baseType: !227, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !676, file: !677, line: 71, baseType: !584, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !676, file: !677, line: 72, baseType: !682, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !677, line: 47, size: 256, elements: !685)
!685 = !{!686, !687, !693, !697}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !684, file: !677, line: 49, baseType: !7, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !684, file: !677, line: 51, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!109, !227, !691}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !684, file: !677, line: 53, baseType: !694, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!109, !315, !691}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !684, file: !677, line: 55, baseType: !698, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !211}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !676, file: !677, line: 73, baseType: !702, size: 16, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !676, file: !677, line: 74, baseType: !704, size: 8, offset: 208)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !274, line: 16, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !276, line: 20, baseType: !706)
!706 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !677, line: 75, baseType: !273, size: 8, offset: 216)
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !677, line: 76, baseType: !709, size: 64, offset: 256)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !677, line: 76, size: 64, elements: !710)
!710 = !{!711, !712, !719}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !709, file: !677, line: 77, baseType: !211, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !709, file: !677, line: 78, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !677, line: 86, size: 128, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !715, file: !677, line: 87, baseType: !7, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !715, file: !677, line: 88, baseType: !315, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !709, file: !677, line: 79, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !677, line: 92, size: 256, elements: !723)
!723 = !{!724, !725, !726, !728, !729}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !722, file: !677, line: 94, baseType: !7, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !722, file: !677, line: 95, baseType: !7, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !722, file: !677, line: 96, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !722, file: !677, line: 97, baseType: !682, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !722, file: !677, line: 98, baseType: !211, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !585, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !585, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !585, file: !6, line: 442, baseType: !645, size: 64, offset: 2240)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !585, file: !6, line: 443, baseType: !649, size: 64, offset: 2304)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !585, file: !6, line: 444, baseType: !735, size: 8, offset: 2368)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !232, line: 35, baseType: !736)
!736 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !585, file: !6, line: 451, baseType: !735, size: 8, offset: 2376)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !585, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !585, file: !6, line: 455, baseType: !740, size: 64, offset: 2432)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !742, line: 23, size: 96, elements: !743)
!742 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!743 = !{!744, !745, !746}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !741, file: !742, line: 24, baseType: !109, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !741, file: !742, line: 24, baseType: !109, size: 32, offset: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !741, file: !742, line: 24, baseType: !109, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !585, file: !6, line: 458, baseType: !748, size: 64, offset: 2496)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!109}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !585, file: !6, line: 460, baseType: !752, size: 4032, align: 512, offset: 2560)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 4032, elements: !776)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !754)
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !753, file: !6, line: 363, baseType: !211, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !753, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !753, file: !6, line: 367, baseType: !758, size: 448, offset: 128)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !758, file: !6, line: 320, baseType: !584, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !758, file: !6, line: 321, baseType: !762, size: 384, offset: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !763, line: 40, size: 384, elements: !764)
!763 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !762, file: !763, line: 41, baseType: !766, size: 384, align: 64)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, size: 384, align: 64, elements: !774)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !768, line: 5, size: 192, align: 64, elements: !769)
!768 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!769 = !{!770, !771, !773}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !767, file: !768, line: 6, baseType: !365, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !767, file: !768, line: 7, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !767, file: !768, line: 8, baseType: !772, size: 64, offset: 128)
!774 = !{!775}
!775 = !DISubrange(count: 2)
!776 = !{!777}
!777 = !DISubrange(count: 7)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !585, file: !6, line: 463, baseType: !779, size: 192, offset: 6592)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !780, line: 8, size: 192, elements: !781)
!780 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!781 = !{!782, !783, !785}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !779, file: !780, line: 10, baseType: !7, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !779, file: !780, line: 11, baseType: !784, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !779, file: !780, line: 12, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !788, line: 59, size: 48, elements: !789)
!788 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!789 = !{!790, !794, !795, !796, !797, !798}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !787, file: !788, line: 60, baseType: !791, size: 16)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !274, line: 18, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !276, line: 23, baseType: !793)
!793 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !787, file: !788, line: 61, baseType: !791, size: 16, offset: 16)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !787, file: !788, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !787, file: !788, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !788, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !787, file: !788, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !585, file: !6, line: 465, baseType: !365, size: 64, offset: 6784)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !585, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !585, file: !6, line: 470, baseType: !231, size: 128, offset: 6912)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !585, file: !6, line: 471, baseType: !803, size: 64, offset: 7040)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !805, line: 33, size: 96, elements: !806)
!805 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!806 = !{!807, !808, !809, !810}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !804, file: !805, line: 37, baseType: !109, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !804, file: !805, line: 43, baseType: !109, size: 32, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !804, file: !805, line: 45, baseType: !285, size: 16, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !805, line: 47, baseType: !285, size: 16, offset: 80)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !585, file: !6, line: 476, baseType: !812, size: 64, offset: 7104)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !814)
!814 = !{!815, !831, !832, !833}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !813, file: !6, line: 379, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !818, line: 204, baseType: !819)
!818 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !818, line: 197, size: 192, elements: !820)
!820 = !{!821, !823, !824, !825, !827, !829}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !819, file: !818, line: 198, baseType: !822, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !818, line: 21, baseType: !465)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !819, file: !818, line: 199, baseType: !277, size: 8, offset: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !819, file: !818, line: 200, baseType: !277, size: 8, offset: 40)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !819, file: !818, line: 201, baseType: !826, size: 16, offset: 48)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !818, line: 17, baseType: !284)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !819, file: !818, line: 202, baseType: !828, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !818, line: 16, baseType: !469)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !819, file: !818, line: 203, baseType: !830, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !818, line: 22, baseType: !469)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !813, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !813, file: !6, line: 381, baseType: !315, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !813, file: !6, line: 382, baseType: !315, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !585, file: !6, line: 477, baseType: !813, size: 256, offset: 7168)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !585, file: !6, line: 480, baseType: !836, size: 64, offset: 7424)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !585, file: !6, line: 483, baseType: !839, size: 64, offset: 7488)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !585, file: !6, line: 488, baseType: !315, size: 64, offset: 7552)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !585, file: !6, line: 492, baseType: !211, size: 64, offset: 7616)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !585, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !585, file: !6, line: 495, baseType: !211, size: 64, offset: 7744)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !585, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !585, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !585, file: !6, line: 500, baseType: !848, size: 64, offset: 7872)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !850, line: 45, baseType: !851)
!850 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !585, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !585, file: !6, line: 504, baseType: !854, size: 64, offset: 8000)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !857, line: 96, size: 192, elements: !858)
!857 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!858 = !{!859, !860, !941, !945}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !856, file: !857, line: 97, baseType: !7, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !856, file: !857, line: 98, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !857, line: 24, size: 3072, elements: !863)
!863 = !{!864, !866, !867, !868, !869, !893, !894, !895, !896, !914, !926, !927, !938, !939, !940}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !862, file: !857, line: 26, baseType: !865, size: 128)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 128, elements: !774)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !862, file: !857, line: 27, baseType: !865, size: 128, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !862, file: !857, line: 28, baseType: !109, size: 32, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !862, file: !857, line: 31, baseType: !245, size: 32, align: 512, offset: 512)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !862, file: !857, line: 32, baseType: !870, size: 960, offset: 576)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !871, line: 206, size: 960, elements: !872)
!871 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!872 = !{!873, !882, !887, !889, !890, !892}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !870, file: !871, line: 207, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !232, line: 232, size: 128, align: 64, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !875, file: !232, line: 233, baseType: !874, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !875, file: !232, line: 234, baseType: !879, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !874}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !870, file: !871, line: 208, baseType: !883, size: 256, offset: 64)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 256, elements: !885)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!885 = !{!886}
!886 = !DISubrange(count: 4)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !870, file: !871, line: 209, baseType: !888, size: 256, offset: 320)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 256, elements: !885)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !870, file: !871, line: 213, baseType: !351, size: 64, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !870, file: !871, line: 215, baseType: !891, size: 256, offset: 640)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 256, elements: !885)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !870, file: !871, line: 216, baseType: !273, size: 8, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !862, file: !857, line: 33, baseType: !365, size: 64, offset: 1536)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !862, file: !857, line: 34, baseType: !365, size: 64, offset: 1600)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !862, file: !857, line: 35, baseType: !735, size: 8, offset: 1664)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !862, file: !857, line: 36, baseType: !897, size: 320, offset: 1728)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !898, line: 11, size: 320, elements: !899)
!898 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!899 = !{!900, !907, !908, !913}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !897, file: !898, line: 16, baseType: !901, size: 128)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !232, line: 198, size: 128, elements: !902)
!902 = !{!903, !905}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !901, file: !232, line: 199, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !901, file: !232, line: 199, baseType: !906, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !897, file: !898, line: 17, baseType: !365, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !897, file: !898, line: 18, baseType: !909, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !912}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !897, file: !898, line: 19, baseType: !464, size: 32, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !862, file: !857, line: 37, baseType: !915, size: 256, offset: 2048)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !916, line: 98, size: 256, elements: !917)
!916 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !915, file: !916, line: 99, baseType: !659, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !915, file: !916, line: 100, baseType: !231, size: 128, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !915, file: !916, line: 101, baseType: !921, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !916, line: 21, baseType: !922)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !925}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !862, file: !857, line: 38, baseType: !875, size: 128, align: 64, offset: 2304)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !862, file: !857, line: 39, baseType: !928, size: 64, offset: 2432)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !857, line: 49, size: 768, elements: !930)
!930 = !{!931, !932, !933, !934, !935, !936, !937}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !929, file: !857, line: 50, baseType: !245, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !929, file: !857, line: 51, baseType: !888, size: 256, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !929, file: !857, line: 53, baseType: !888, size: 256, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !929, file: !857, line: 54, baseType: !365, size: 64, offset: 576)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !929, file: !857, line: 55, baseType: !928, size: 64, offset: 640)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !929, file: !857, line: 56, baseType: !109, size: 32, offset: 704)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !929, file: !857, line: 57, baseType: !109, size: 32, offset: 736)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !862, file: !857, line: 40, baseType: !365, size: 64, offset: 2496)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !862, file: !857, line: 42, baseType: !109, size: 32, offset: 2560)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !862, file: !857, line: 43, baseType: !855, size: 64, offset: 2624)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !856, file: !857, line: 99, baseType: !942, offset: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !943, line: 211, elements: !944)
!943 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!944 = !{}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !856, file: !857, line: 100, baseType: !946, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !857, line: 63, size: 3008, elements: !948)
!948 = !{!949, !950, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !980}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !947, file: !857, line: 64, baseType: !928, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !947, file: !857, line: 65, baseType: !951, size: 192, offset: 64)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 192, elements: !316)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !947, file: !857, line: 67, baseType: !109, size: 32, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !947, file: !857, line: 68, baseType: !655, size: 256, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !947, file: !857, line: 69, baseType: !245, size: 32, offset: 576)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !947, file: !857, line: 70, baseType: !655, size: 256, offset: 640)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !947, file: !857, line: 71, baseType: !365, size: 64, offset: 896)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !947, file: !857, line: 72, baseType: !365, size: 64, offset: 960)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !947, file: !857, line: 73, baseType: !365, size: 64, offset: 1024)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !947, file: !857, line: 74, baseType: !365, size: 64, offset: 1088)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !947, file: !857, line: 75, baseType: !365, size: 64, offset: 1152)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !947, file: !857, line: 76, baseType: !365, size: 64, offset: 1216)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !947, file: !857, line: 77, baseType: !365, size: 64, offset: 1280)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !947, file: !857, line: 78, baseType: !365, size: 64, offset: 1344)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !947, file: !857, line: 79, baseType: !735, size: 8, offset: 1408)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !947, file: !857, line: 80, baseType: !365, size: 64, offset: 1472)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !947, file: !857, line: 81, baseType: !655, size: 256, offset: 1536)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !947, file: !857, line: 82, baseType: !604, size: 256, offset: 1792)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !947, file: !857, line: 84, baseType: !265, size: 32, offset: 2048)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !947, file: !857, line: 87, baseType: !365, size: 64, offset: 2112)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !947, file: !857, line: 88, baseType: !365, size: 64, offset: 2176)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !947, file: !857, line: 89, baseType: !972, size: 704, offset: 2240)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !916, line: 111, size: 704, elements: !973)
!973 = !{!974, !975, !976, !979}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !972, file: !916, line: 112, baseType: !915, size: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !972, file: !916, line: 113, baseType: !897, size: 320, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !972, file: !916, line: 116, baseType: !977, size: 64, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !916, line: 18, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !972, file: !916, line: 117, baseType: !109, size: 32, offset: 640)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !947, file: !857, line: 90, baseType: !855, size: 64, offset: 2944)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !585, file: !6, line: 515, baseType: !982, size: 64, offset: 8064)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !984, line: 117, size: 128, elements: !985)
!984 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !983, file: !984, line: 118, baseType: !651, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !983, file: !984, line: 119, baseType: !651, size: 32, offset: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !983, file: !984, line: 120, baseType: !351, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !585, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !585, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !585, file: !6, line: 520, baseType: !992, size: 64, offset: 8192)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !585, file: !6, line: 523, baseType: !994, size: 64, offset: 8256)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !585, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !585, file: !6, line: 525, baseType: !999, size: 64, offset: 8384)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !585, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !585, file: !6, line: 533, baseType: !211, size: 64, offset: 8512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !585, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !585, file: !6, line: 535, baseType: !1006, size: 64, offset: 8640)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !585, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !585, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !585, file: !6, line: 540, baseType: !1010, size: 64, offset: 8768)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1012, line: 32, size: 64, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1011, file: !1012, line: 33, baseType: !651, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1011, file: !1012, line: 34, baseType: !651, size: 32, offset: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !585, file: !6, line: 563, baseType: !231, size: 128, offset: 8832)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !585, file: !6, line: 565, baseType: !231, size: 128, offset: 8960)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !585, file: !6, line: 568, baseType: !1019, size: 64, offset: 9088)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !585, file: !6, line: 570, baseType: !265, size: 32, offset: 9152)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !561, file: !14, line: 2382, baseType: !560, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !561, file: !14, line: 2383, baseType: !1025, size: 64, offset: 512)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !232, line: 194, size: 64, elements: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1025, file: !232, line: 195, baseType: !904, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !561, file: !14, line: 2385, baseType: !1029, offset: 576)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !943, line: 206, elements: !944)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !561, file: !14, line: 2386, baseType: !1029, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !561, file: !14, line: 2387, baseType: !1029, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !561, file: !14, line: 2388, baseType: !1033, offset: 576)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, elements: !316)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !561, file: !14, line: 2390, baseType: !1029, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !561, file: !14, line: 2391, baseType: !1029, offset: 576)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !561, file: !14, line: 2392, baseType: !1029, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !561, file: !14, line: 2393, baseType: !1029, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !547, file: !14, line: 1197, baseType: !1039, size: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1042)
!1042 = !{!1043, !1047, !1051, !1052, !1056, !1062, !1066, !1067, !1068, !1072, !1076, !1080, !1081, !1082, !1088, !1092, !1093, !1100, !1101, !1102, !1103, !1107, !1111, !1160, !1176, !1177}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1041, file: !14, line: 2058, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!395, !546}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1041, file: !14, line: 2059, baseType: !1048, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !395}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1041, file: !14, line: 2060, baseType: !1048, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1041, file: !14, line: 2062, baseType: !1053, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !395, !109}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1041, file: !14, line: 2063, baseType: !1057, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!109, !395, !1060}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1041, file: !14, line: 2064, baseType: !1063, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!109, !395}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1041, file: !14, line: 2065, baseType: !1048, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1041, file: !14, line: 2066, baseType: !580, size: 64, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1041, file: !14, line: 2067, baseType: !1069, size: 64, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!109, !546, !109}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1041, file: !14, line: 2068, baseType: !1073, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!109, !546, !13}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1041, file: !14, line: 2069, baseType: !1077, size: 64, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!109, !546}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1041, file: !14, line: 2070, baseType: !1073, size: 64, offset: 704)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1041, file: !14, line: 2071, baseType: !1077, size: 64, offset: 768)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1041, file: !14, line: 2072, baseType: !1083, size: 64, offset: 832)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!109, !430, !1086}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1041, file: !14, line: 2073, baseType: !1089, size: 64, offset: 896)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!109, !546, !784, !315}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1041, file: !14, line: 2074, baseType: !580, size: 64, offset: 960)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1041, file: !14, line: 2076, baseType: !1094, size: 64, offset: 1024)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!109, !1097, !430}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1099, line: 66, flags: DIFlagFwdDecl)
!1099 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1041, file: !14, line: 2077, baseType: !1094, size: 64, offset: 1088)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1041, file: !14, line: 2078, baseType: !1094, size: 64, offset: 1152)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1041, file: !14, line: 2079, baseType: !1094, size: 64, offset: 1216)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1041, file: !14, line: 2081, baseType: !1104, size: 64, offset: 1280)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!347, !546, !109, !315, !362, !556}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1041, file: !14, line: 2082, baseType: !1108, size: 64, offset: 1344)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!347, !546, !109, !227, !362, !556}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1041, file: !14, line: 2083, baseType: !1112, size: 64, offset: 1408)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!1115, !395}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1143, !1144, !1145}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1117, file: !19, line: 297, baseType: !901, size: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1117, file: !19, line: 298, baseType: !231, size: 128, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1117, file: !19, line: 299, baseType: !231, size: 128, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1117, file: !19, line: 300, baseType: !231, size: 128, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1117, file: !19, line: 301, baseType: !655, size: 256, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1117, file: !19, line: 302, baseType: !245, size: 32, offset: 768)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1117, file: !19, line: 303, baseType: !265, size: 32, offset: 800)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1117, file: !19, line: 304, baseType: !546, size: 64, offset: 832)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1117, file: !19, line: 305, baseType: !1128, size: 64, offset: 896)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1129)
!1129 = !{!1130, !1142}
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !19, line: 69, baseType: !1131, size: 32)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1128, file: !19, line: 69, size: 32, elements: !1132)
!1132 = !{!1133, !1134, !1135}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1131, file: !19, line: 70, baseType: !401, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1131, file: !19, line: 71, baseType: !410, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1131, file: !19, line: 72, baseType: !1136, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1137, line: 24, baseType: !1138)
!1137 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1137, line: 22, size: 32, elements: !1139)
!1139 = !{!1140}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1138, file: !1137, line: 23, baseType: !1141, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1137, line: 20, baseType: !407)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1128, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1117, file: !19, line: 306, baseType: !556, size: 64, offset: 960)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1117, file: !19, line: 307, baseType: !365, size: 64, offset: 1024)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1117, file: !19, line: 308, baseType: !1146, size: 576, offset: 1088)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1147)
!1147 = !{!1148, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1159}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1146, file: !19, line: 206, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !558)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1146, file: !19, line: 207, baseType: !1149, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1146, file: !19, line: 208, baseType: !1149, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1146, file: !19, line: 209, baseType: !1149, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1146, file: !19, line: 210, baseType: !1149, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1146, file: !19, line: 211, baseType: !1149, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1146, file: !19, line: 212, baseType: !1149, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1146, file: !19, line: 213, baseType: !1157, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1158, line: 8, baseType: !666)
!1158 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1146, file: !19, line: 214, baseType: !1157, size: 64, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1041, file: !14, line: 2085, baseType: !1161, size: 64, offset: 1472)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!351, !546, !1164}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1166, line: 15, size: 256, elements: !1167)
!1166 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1167 = !{!1168, !1170, !1171, !1172, !1173}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1165, file: !1166, line: 16, baseType: !1169, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !232, line: 154, baseType: !7)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1165, file: !1166, line: 19, baseType: !109, size: 32, offset: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1165, file: !1166, line: 26, baseType: !365, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1165, file: !1166, line: 33, baseType: !365, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1165, file: !1166, line: 36, baseType: !1174, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1166, line: 36, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1041, file: !14, line: 2087, baseType: !1161, size: 64, offset: 1536)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1041, file: !14, line: 2089, baseType: !580, size: 64, offset: 1600)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !547, file: !14, line: 1198, baseType: !1179, size: 64, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1182)
!1182 = !{!1183, !1187, !1191, !1195, !1196, !1197, !1198, !1199, !1204, !1209, !1213}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1181, file: !19, line: 325, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!109, !1116}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1181, file: !19, line: 326, baseType: !1188, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!1116, !546, !109}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1181, file: !19, line: 327, baseType: !1192, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !1116}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1181, file: !19, line: 328, baseType: !1184, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1181, file: !19, line: 329, baseType: !1184, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1181, file: !19, line: 330, baseType: !1184, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1181, file: !19, line: 331, baseType: !1069, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1181, file: !19, line: 334, baseType: !1200, size: 64, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!1203, !395}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1181, file: !19, line: 335, baseType: !1205, size: 64, offset: 512)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!109, !395, !1208}
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1181, file: !19, line: 337, baseType: !1210, size: 64, offset: 576)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!109, !395, !1203}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1181, file: !19, line: 339, baseType: !1214, size: 64, offset: 640)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!109, !546, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !547, file: !14, line: 1199, baseType: !1219, size: 64, offset: 512)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1222)
!1222 = !{!1223, !1234, !1235, !1239, !1240, !1241, !1256, !1279, !1283, !1284, !1307}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1221, file: !19, line: 431, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!109, !546, !109, !109, !1227}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1230, line: 8, size: 128, elements: !1231)
!1230 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1229, file: !1230, line: 9, baseType: !540, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1229, file: !1230, line: 10, baseType: !430, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1221, file: !19, line: 432, baseType: !1069, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1221, file: !19, line: 433, baseType: !1236, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!109, !546, !7}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1221, file: !19, line: 434, baseType: !1236, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1221, file: !19, line: 435, baseType: !1069, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1221, file: !19, line: 436, baseType: !1242, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!109, !546, !109, !1245}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1246, file: !19, line: 418, baseType: !109, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1246, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1246, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1246, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1246, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1246, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1246, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1246, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1221, file: !19, line: 437, baseType: !1257, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!109, !546, !1128, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1261, file: !19, line: 346, baseType: !109, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1261, file: !19, line: 347, baseType: !468, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1261, file: !19, line: 348, baseType: !468, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1261, file: !19, line: 349, baseType: !468, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1261, file: !19, line: 350, baseType: !468, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1261, file: !19, line: 351, baseType: !468, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1261, file: !19, line: 352, baseType: !468, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1261, file: !19, line: 353, baseType: !665, size: 64, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1261, file: !19, line: 355, baseType: !665, size: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1261, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1261, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1261, file: !19, line: 358, baseType: !468, size: 64, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1261, file: !19, line: 359, baseType: !468, size: 64, offset: 704)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1261, file: !19, line: 360, baseType: !468, size: 64, offset: 768)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1261, file: !19, line: 361, baseType: !665, size: 64, offset: 832)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1261, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1221, file: !19, line: 438, baseType: !1280, size: 64, offset: 448)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!109, !546, !1217, !1260}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1221, file: !19, line: 440, baseType: !1257, size: 64, offset: 512)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1221, file: !19, line: 441, baseType: !1285, size: 64, offset: 576)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!109, !546, !1288}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1289, file: !19, line: 412, baseType: !7, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1289, file: !19, line: 413, baseType: !1293, size: 1344, offset: 64)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 1344, elements: !316)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1306}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1294, file: !19, line: 398, baseType: !7, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1294, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1294, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1294, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1294, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1294, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1294, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1294, file: !19, line: 406, baseType: !470, size: 64, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1294, file: !19, line: 407, baseType: !1305, size: 64, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !232, line: 132, baseType: !468)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1294, file: !19, line: 408, baseType: !1305, size: 64, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1221, file: !19, line: 442, baseType: !1236, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !547, file: !14, line: 1200, baseType: !1309, size: 64, offset: 576)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1311)
!1311 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !547, file: !14, line: 1201, baseType: !365, size: 64, offset: 640)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !547, file: !14, line: 1202, baseType: !365, size: 64, offset: 704)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !547, file: !14, line: 1203, baseType: !365, size: 64, offset: 768)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !547, file: !14, line: 1204, baseType: !430, size: 64, offset: 832)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !547, file: !14, line: 1205, baseType: !1317, size: 320, offset: 896)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1318, line: 48, size: 320, elements: !1319)
!1318 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1319 = !{!1320, !1321, !1322, !1323, !1324}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1317, file: !1318, line: 49, baseType: !659, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1317, file: !1318, line: 55, baseType: !659, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1317, file: !1318, line: 57, baseType: !669, size: 32, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1317, file: !1318, line: 59, baseType: !613, size: 32, offset: 160)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1317, file: !1318, line: 60, baseType: !231, size: 128, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !547, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !547, file: !14, line: 1207, baseType: !265, size: 32, offset: 1248)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !547, file: !14, line: 1209, baseType: !211, size: 64, offset: 1280)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !547, file: !14, line: 1211, baseType: !1329, size: 64, offset: 1344)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1332)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !547, file: !14, line: 1223, baseType: !1334, size: 64, offset: 1408)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !447, line: 34, size: 64, elements: !1335)
!1335 = !{!1336}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1334, file: !447, line: 35, baseType: !450, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !547, file: !14, line: 1224, baseType: !231, size: 128, offset: 1472)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !547, file: !14, line: 1225, baseType: !1339, size: 64, offset: 1600)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !547, file: !14, line: 1226, baseType: !1342, size: 64, offset: 1664)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !547, file: !14, line: 1227, baseType: !1345, size: 64, offset: 1728)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !547, file: !14, line: 1228, baseType: !1348, size: 64, offset: 1792)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !547, file: !14, line: 1229, baseType: !901, size: 128, offset: 1856)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !547, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !547, file: !14, line: 1231, baseType: !1353, size: 2496, offset: 2048)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1359, !1391}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1353, file: !19, line: 522, baseType: !7, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1353, file: !19, line: 523, baseType: !1317, size: 320, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1353, file: !19, line: 524, baseType: !1358, size: 192, offset: 384)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 192, elements: !316)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1353, file: !19, line: 525, baseType: !1360, size: 1728, offset: 576)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 1728, elements: !316)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1362)
!1362 = !{!1363, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1361, file: !19, line: 223, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1366)
!1366 = !{!1367, !1368, !1381, !1382}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1365, file: !19, line: 446, baseType: !109, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1365, file: !19, line: 447, baseType: !1369, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1372)
!1372 = !{!1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1371, file: !19, line: 313, baseType: !1069, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1371, file: !19, line: 314, baseType: !1069, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1371, file: !19, line: 315, baseType: !1069, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1371, file: !19, line: 316, baseType: !1069, size: 64, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1371, file: !19, line: 317, baseType: !1184, size: 64, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1371, file: !19, line: 318, baseType: !1184, size: 64, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1371, file: !19, line: 319, baseType: !1184, size: 64, offset: 384)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1371, file: !19, line: 320, baseType: !1214, size: 64, offset: 448)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1365, file: !19, line: 448, baseType: !584, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1365, file: !19, line: 449, baseType: !1364, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1361, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1361, file: !19, line: 226, baseType: !231, size: 128, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1361, file: !19, line: 227, baseType: !365, size: 64, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1361, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1361, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1361, file: !19, line: 230, baseType: !1149, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1361, file: !19, line: 231, baseType: !1149, size: 64, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1361, file: !19, line: 232, baseType: !211, size: 64, offset: 512)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1353, file: !19, line: 526, baseType: !1392, size: 192, offset: 2304)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1369, size: 192, elements: !316)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !547, file: !14, line: 1233, baseType: !1394, size: 2368, offset: 4544)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1395)
!1395 = !{!1396, !1397, !1398}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1394, file: !14, line: 1185, baseType: !285, size: 16)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1394, file: !14, line: 1186, baseType: !285, size: 16, offset: 16)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1394, file: !14, line: 1187, baseType: !1399, size: 2304, offset: 64)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 2304, elements: !316)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1401, line: 12, size: 768, elements: !1402)
!1401 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1402 = !{!1403, !1417, !1418, !3570, !3571}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1400, file: !1401, line: 13, baseType: !1404, size: 384)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1405, line: 17, size: 384, elements: !1406)
!1405 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1406 = !{!1407, !1408, !1409, !1416}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1404, file: !1405, line: 18, baseType: !109, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1404, file: !1405, line: 19, baseType: !109, size: 32, offset: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1404, file: !1405, line: 20, baseType: !1410, size: 192, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1411, line: 41, baseType: !1412)
!1411 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1411, line: 37, size: 192, elements: !1413)
!1413 = !{!1414, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1412, file: !1411, line: 38, baseType: !245, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1412, file: !1411, line: 39, baseType: !231, size: 128, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1404, file: !1405, line: 22, baseType: !875, size: 128, align: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1400, file: !1401, line: 14, baseType: !727, size: 64, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1400, file: !1401, line: 15, baseType: !1419, size: 64, offset: 448)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1420, line: 16, size: 64, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1421 = !{!1422}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1419, file: !1420, line: 17, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1099, line: 746, size: 58368, elements: !1425)
!1425 = !{!1426, !1434, !1435, !1436, !1442, !1443, !1444, !1445, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1516, !1527, !1622, !1626, !1629, !1660, !1661, !1662, !1663, !1674, !1676, !1677, !1678, !1679, !1680, !1681, !1692, !1693, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1710, !1711, !1718, !1719, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2733, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2781, !2787, !2788, !2789, !2790, !2791, !2795, !2798, !2805, !2810, !2813, !2816, !2819, !2822, !2960, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2998, !2999, !3000, !3009, !3017, !3018, !3019, !3020, !3021, !3026, !3027, !3028, !3031, !3032, !3035, !3038, !3041, !3049, !3052, !3053, !3139, !3140, !3141, !3142, !3143, !3149, !3150, !3151, !3152, !3155, !3156, !3159, !3173, !3174, !3177, !3178, !3179, !3182, !3183, !3184, !3185, !3186, !3187, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3219, !3220, !3226, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3238, !3310, !3312, !3313, !3314, !3315, !3316, !3317, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3347, !3348, !3349}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1424, file: !1099, line: 752, baseType: !1427, size: 192)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1428, line: 56, size: 192, elements: !1429)
!1428 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1429 = !{!1430, !1431, !1432, !1433}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1427, file: !1428, line: 57, baseType: !365, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1427, file: !1428, line: 58, baseType: !365, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1427, file: !1428, line: 59, baseType: !464, size: 32, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1427, file: !1428, line: 61, baseType: !464, size: 32, offset: 160)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1424, file: !1099, line: 754, baseType: !7, size: 32, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1424, file: !1099, line: 767, baseType: !211, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1424, file: !1099, line: 768, baseType: !1437, size: 32, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1438, line: 113, baseType: !1439)
!1438 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1438, line: 111, size: 32, elements: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1439, file: !1438, line: 112, baseType: !265, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !1099, line: 770, baseType: !7, size: 32, offset: 352)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1424, file: !1099, line: 771, baseType: !7, size: 32, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1424, file: !1099, line: 774, baseType: !109, size: 32, offset: 416)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1424, file: !1099, line: 775, baseType: !1446, size: 128, offset: 448)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1447, line: 58, size: 128, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1448 = !{!1449, !1455, !1460, !1461}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1446, file: !1447, line: 59, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1451, line: 60, size: 64, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1452 = !{!1453}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1450, file: !1451, line: 61, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1447, line: 60, baseType: !1456, size: 32, offset: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1447, line: 60, size: 32, elements: !1457)
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1456, file: !1447, line: 61, baseType: !7, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1456, file: !1447, line: 62, baseType: !265, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1446, file: !1447, line: 65, baseType: !283, size: 16, offset: 96)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1446, file: !1447, line: 65, baseType: !283, size: 16, offset: 112)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1424, file: !1099, line: 776, baseType: !7, size: 32, offset: 576)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1424, file: !1099, line: 777, baseType: !365, size: 64, offset: 640)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1424, file: !1099, line: 778, baseType: !1423, size: 64, offset: 704)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1424, file: !1099, line: 787, baseType: !109, size: 32, offset: 768)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1424, file: !1099, line: 788, baseType: !109, size: 32, offset: 800)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1424, file: !1099, line: 790, baseType: !109, size: 32, offset: 832)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1424, file: !1099, line: 792, baseType: !109, size: 32, offset: 864)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1424, file: !1099, line: 793, baseType: !109, size: 32, offset: 896)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1424, file: !1099, line: 794, baseType: !109, size: 32, offset: 928)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1424, file: !1099, line: 795, baseType: !7, size: 32, offset: 960)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1424, file: !1099, line: 797, baseType: !1473, size: 2048, offset: 1024)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1099, line: 551, size: 2048, elements: !1474)
!1474 = !{!1475, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1495, !1498, !1499, !1500}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1473, file: !1099, line: 553, baseType: !1476, size: 128)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1099, line: 411, size: 128, elements: !1477)
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1476, file: !1099, line: 412, baseType: !365, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1476, file: !1099, line: 413, baseType: !464, size: 32, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1473, file: !1099, line: 554, baseType: !767, size: 192, align: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1473, file: !1099, line: 555, baseType: !468, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1473, file: !1099, line: 556, baseType: !468, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1473, file: !1099, line: 558, baseType: !231, size: 128, offset: 448)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1473, file: !1099, line: 559, baseType: !7, size: 32, offset: 576)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1473, file: !1099, line: 561, baseType: !468, size: 64, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1473, file: !1099, line: 562, baseType: !468, size: 64, offset: 704)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1473, file: !1099, line: 563, baseType: !468, size: 64, offset: 768)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1473, file: !1099, line: 564, baseType: !468, size: 64, offset: 832)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1473, file: !1099, line: 565, baseType: !665, size: 64, offset: 896)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1473, file: !1099, line: 566, baseType: !468, size: 64, offset: 960)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1473, file: !1099, line: 568, baseType: !468, size: 64, offset: 1024)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1473, file: !1099, line: 571, baseType: !109, size: 32, offset: 1088)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1473, file: !1099, line: 572, baseType: !1494, size: 64, offset: 1152)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1473, file: !1099, line: 574, baseType: !1496, size: 64, offset: 1216)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1099, line: 49, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1473, file: !1099, line: 576, baseType: !1496, size: 64, offset: 1280)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1473, file: !1099, line: 578, baseType: !365, size: 64, offset: 1344)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1473, file: !1099, line: 588, baseType: !1501, size: 512, align: 512, offset: 1536)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1099, line: 497, size: 512, align: 512, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1501, file: !1099, line: 498, baseType: !468, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1501, file: !1099, line: 499, baseType: !468, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1501, file: !1099, line: 500, baseType: !468, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1501, file: !1099, line: 501, baseType: !464, size: 32, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1501, file: !1099, line: 502, baseType: !464, size: 32, offset: 224)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1501, file: !1099, line: 503, baseType: !365, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1501, file: !1099, line: 504, baseType: !365, size: 64, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1501, file: !1099, line: 505, baseType: !365, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1501, file: !1099, line: 506, baseType: !1512, size: 64, align: 64, offset: 448)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1099, line: 445, size: 64, align: 64, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1512, file: !1099, line: 446, baseType: !7, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1512, file: !1099, line: 447, baseType: !7, size: 32, offset: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1424, file: !1099, line: 798, baseType: !1517, size: 384, offset: 3072)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1099, line: 592, size: 384, elements: !1518)
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1524, !1525}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1517, file: !1099, line: 593, baseType: !231, size: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1517, file: !1099, line: 594, baseType: !365, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1517, file: !1099, line: 595, baseType: !365, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1517, file: !1099, line: 596, baseType: !7, size: 32, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1517, file: !1099, line: 597, baseType: !285, size: 16, offset: 288)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1517, file: !1099, line: 598, baseType: !285, size: 16, offset: 304)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1517, file: !1099, line: 600, baseType: !1526, size: 64, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1424, file: !1099, line: 799, baseType: !1528, size: 1792, offset: 3456)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1099, line: 610, size: 1792, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1619, !1620}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1528, file: !1099, line: 611, baseType: !767, size: 192, align: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1528, file: !1099, line: 618, baseType: !468, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1528, file: !1099, line: 619, baseType: !468, size: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1528, file: !1099, line: 620, baseType: !468, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1528, file: !1099, line: 621, baseType: !468, size: 64, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1528, file: !1099, line: 622, baseType: !468, size: 64, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1528, file: !1099, line: 629, baseType: !665, size: 64, offset: 512)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1528, file: !1099, line: 630, baseType: !468, size: 64, offset: 576)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1528, file: !1099, line: 631, baseType: !7, size: 32, offset: 640)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1528, file: !1099, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1528, file: !1099, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1528, file: !1099, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1528, file: !1099, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1528, file: !1099, line: 662, baseType: !1544, size: 512, offset: 704)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1545)
!1545 = !{!1546, !1554, !1555, !1560, !1615, !1616, !1617, !1618}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1544, file: !25, line: 119, baseType: !1547, size: 256)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1548, line: 9, size: 256, elements: !1549)
!1548 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1547, file: !1548, line: 10, baseType: !767, size: 192, align: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1547, file: !1548, line: 11, baseType: !1552, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1553, line: 29, baseType: !665)
!1553 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1544, file: !25, line: 120, baseType: !1552, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1544, file: !25, line: 121, baseType: !1556, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!24, !1559}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1544, file: !25, line: 122, baseType: !1561, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1563)
!1563 = !{!1564, !1589, !1590, !1593, !1598, !1599, !1610, !1614}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1562, file: !25, line: 160, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1566, file: !25, line: 216, baseType: !613, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1566, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1566, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1566, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1566, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1566, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1566, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1566, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1566, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1566, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1566, file: !25, line: 227, baseType: !285, size: 16, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1566, file: !25, line: 228, baseType: !285, size: 16, offset: 208)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1566, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1566, file: !25, line: 235, baseType: !1552, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1566, file: !25, line: 236, baseType: !1559, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1566, file: !25, line: 237, baseType: !1552, size: 64, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1566, file: !25, line: 238, baseType: !1559, size: 64, offset: 448)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1566, file: !25, line: 239, baseType: !1586, size: 4096, align: 512, offset: 512)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1562, size: 4096, align: 512, elements: !1587)
!1587 = !{!1588}
!1588 = !DISubrange(count: 8)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1562, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1562, file: !25, line: 162, baseType: !1591, size: 32, offset: 96)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !232, line: 32, baseType: !1592)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !349, line: 96, baseType: !109)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1562, file: !25, line: 163, baseType: !1594, size: 32, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !437, line: 274, baseType: !1595)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !437, line: 274, size: 32, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1595, file: !437, line: 274, baseType: !441, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1562, file: !25, line: 164, baseType: !1559, size: 64, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1562, file: !25, line: 165, baseType: !1600, size: 128, offset: 256)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1548, line: 14, size: 128, elements: !1601)
!1601 = !{!1602}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1600, file: !1548, line: 15, baseType: !1603, size: 128)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !768, line: 26, size: 128, elements: !1604)
!1604 = !{!1605, !1609}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1603, file: !768, line: 27, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !768, line: 12, size: 64, elements: !1607)
!1607 = !{!1608}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1606, file: !768, line: 13, baseType: !772, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1603, file: !768, line: 28, baseType: !772, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1562, file: !25, line: 166, baseType: !1611, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!1552}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1562, file: !25, line: 167, baseType: !1552, size: 64, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1544, file: !25, line: 123, baseType: !273, size: 8, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1544, file: !25, line: 124, baseType: !273, size: 8, offset: 456)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1544, file: !25, line: 125, baseType: !273, size: 8, offset: 464)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1544, file: !25, line: 126, baseType: !273, size: 8, offset: 472)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1528, file: !1099, line: 671, baseType: !1544, size: 512, offset: 1216)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1528, file: !1099, line: 679, baseType: !1621, size: 64, offset: 1728)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1424, file: !1099, line: 800, baseType: !1623, size: 64, offset: 5248)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1099, line: 800, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1424, file: !1099, line: 809, baseType: !1627, size: 64, offset: 5312)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1099, line: 70, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1424, file: !1099, line: 825, baseType: !1630, size: 2048, align: 512, offset: 5632)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1099, line: 509, size: 2048, align: 512, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1630, file: !1099, line: 511, baseType: !468, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1630, file: !1099, line: 512, baseType: !468, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1630, file: !1099, line: 513, baseType: !468, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1630, file: !1099, line: 514, baseType: !468, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1630, file: !1099, line: 515, baseType: !468, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1630, file: !1099, line: 516, baseType: !468, size: 64, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1630, file: !1099, line: 518, baseType: !468, size: 64, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1630, file: !1099, line: 519, baseType: !468, size: 64, offset: 448)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1630, file: !1099, line: 520, baseType: !665, size: 64, offset: 512)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1630, file: !1099, line: 522, baseType: !468, size: 64, offset: 576)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1630, file: !1099, line: 523, baseType: !468, size: 64, offset: 640)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1630, file: !1099, line: 524, baseType: !665, size: 64, offset: 704)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1630, file: !1099, line: 526, baseType: !665, size: 64, offset: 768)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1630, file: !1099, line: 527, baseType: !468, size: 64, offset: 832)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1630, file: !1099, line: 529, baseType: !468, size: 64, offset: 896)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1630, file: !1099, line: 530, baseType: !468, size: 64, offset: 960)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1630, file: !1099, line: 531, baseType: !468, size: 64, offset: 1024)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1630, file: !1099, line: 532, baseType: !468, size: 64, offset: 1088)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1630, file: !1099, line: 533, baseType: !468, size: 64, offset: 1152)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1630, file: !1099, line: 535, baseType: !468, size: 64, offset: 1216)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1630, file: !1099, line: 536, baseType: !468, size: 64, offset: 1280)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1630, file: !1099, line: 537, baseType: !468, size: 64, offset: 1344)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1630, file: !1099, line: 538, baseType: !468, size: 64, offset: 1408)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1630, file: !1099, line: 539, baseType: !468, size: 64, offset: 1472)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1630, file: !1099, line: 540, baseType: !468, size: 64, offset: 1536)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1630, file: !1099, line: 541, baseType: !468, size: 64, offset: 1600)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1630, file: !1099, line: 542, baseType: !468, size: 64, offset: 1664)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1630, file: !1099, line: 543, baseType: !468, size: 64, offset: 1728)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1424, file: !1099, line: 833, baseType: !7, size: 32, offset: 7680)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1424, file: !1099, line: 836, baseType: !7, size: 32, offset: 7712)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1424, file: !1099, line: 837, baseType: !109, size: 32, offset: 7744)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1424, file: !1099, line: 838, baseType: !1664, size: 64, offset: 7808)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1666)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1667, line: 19, baseType: !1668)
!1667 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1667, line: 19, size: 64, elements: !1669)
!1669 = !{!1670}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1668, file: !1667, line: 19, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 64, elements: !1672)
!1672 = !{!1673}
!1673 = !DISubrange(count: 1)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1424, file: !1099, line: 839, baseType: !1675, size: 64, offset: 7872)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1424, file: !1099, line: 840, baseType: !1666, size: 64, offset: 7936)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1424, file: !1099, line: 841, baseType: !211, size: 64, offset: 8000)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1424, file: !1099, line: 843, baseType: !285, size: 16, offset: 8064)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1424, file: !1099, line: 845, baseType: !285, size: 16, offset: 8080)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1424, file: !1099, line: 848, baseType: !109, size: 32, offset: 8096)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1424, file: !1099, line: 849, baseType: !1682, size: 32, offset: 8128)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1099, line: 718, size: 32, elements: !1683)
!1683 = !{!1684, !1691}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1682, file: !1099, line: 724, baseType: !1685, size: 32)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !1099, line: 719, size: 32, elements: !1686)
!1686 = !{!1687, !1688, !1689, !1690}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1685, file: !1099, line: 720, baseType: !273, size: 8)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1685, file: !1099, line: 721, baseType: !273, size: 8, offset: 8)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1685, file: !1099, line: 722, baseType: !273, size: 8, offset: 16)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1685, file: !1099, line: 723, baseType: !273, size: 8, offset: 24)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1682, file: !1099, line: 725, baseType: !464, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1424, file: !1099, line: 850, baseType: !231, size: 128, offset: 8192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1424, file: !1099, line: 851, baseType: !1694, size: 64, offset: 8320)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1099, line: 60, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1424, file: !1099, line: 855, baseType: !365, size: 64, offset: 8384)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1424, file: !1099, line: 856, baseType: !273, size: 8, offset: 8448)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1424, file: !1099, line: 857, baseType: !273, size: 8, offset: 8456)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1424, file: !1099, line: 858, baseType: !109, size: 32, offset: 8480)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1424, file: !1099, line: 859, baseType: !231, size: 128, offset: 8512)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1424, file: !1099, line: 860, baseType: !109, size: 32, offset: 8640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1424, file: !1099, line: 861, baseType: !231, size: 128, offset: 8704)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1424, file: !1099, line: 873, baseType: !1704, size: 256, offset: 8832)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1099, line: 376, size: 256, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1704, file: !1099, line: 381, baseType: !365, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1704, file: !1099, line: 384, baseType: !470, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1704, file: !1099, line: 389, baseType: !470, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1704, file: !1099, line: 392, baseType: !470, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1424, file: !1099, line: 875, baseType: !231, size: 128, offset: 9088)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1424, file: !1099, line: 877, baseType: !1712, size: 320, offset: 9216)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1713, line: 86, size: 320, elements: !1714)
!1713 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1714 = !{!1715, !1716, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1712, file: !1713, line: 87, baseType: !109, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1712, file: !1713, line: 88, baseType: !231, size: 128, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1712, file: !1713, line: 89, baseType: !231, size: 128, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1424, file: !1099, line: 878, baseType: !767, size: 192, align: 64, offset: 9536)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1424, file: !1099, line: 881, baseType: !1720, size: 64, offset: 9728)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !52, line: 733, size: 10240, elements: !1722)
!1722 = !{!1723, !2652}
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !52, line: 734, baseType: !1724, size: 10240)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !52, line: 734, size: 10240, elements: !1725)
!1725 = !{!1726, !1730, !1743, !2529, !2530, !2531, !2532, !2533, !2534, !2541, !2542, !2543, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2582, !2584, !2587, !2632, !2633, !2634, !2637, !2638, !2639, !2642, !2643, !2644, !2650, !2651}
!1726 = !DIDerivedType(tag: DW_TAG_member, scope: !1724, file: !52, line: 739, baseType: !1727, size: 512, align: 512)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1724, file: !52, line: 739, size: 512, align: 512, elements: !1728)
!1728 = !{!1729}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1727, file: !52, line: 747, baseType: !265, size: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1724, file: !52, line: 750, baseType: !1731, size: 128, offset: 512)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1732, line: 218, size: 128, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1733 = !{!1734, !1741, !1742}
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1732, line: 219, baseType: !1735, size: 32)
!1735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1732, line: 219, size: 32, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1735, file: !1732, line: 220, baseType: !245, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1735, file: !1732, line: 221, baseType: !1739)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1732, line: 197, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1732, line: 197, elements: !944)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1731, file: !1732, line: 223, baseType: !7, size: 32, offset: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1731, file: !1732, line: 224, baseType: !211, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1724, file: !52, line: 752, baseType: !1744, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!365, !1747, !365, !365, !365, !365}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1749)
!1749 = !{!1750, !1756, !1757, !1759, !1760, !1761, !1762, !1763, !1813, !2003, !2012, !2013, !2014, !2519, !2520, !2521, !2522, !2524, !2525, !2528}
!1750 = !DIDerivedType(tag: DW_TAG_member, scope: !1748, file: !14, line: 995, baseType: !1751, size: 128)
!1751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1748, file: !14, line: 995, size: 128, elements: !1752)
!1752 = !{!1753, !1754, !1755}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1751, file: !14, line: 996, baseType: !1450, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1751, file: !14, line: 997, baseType: !875, size: 128, align: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1751, file: !14, line: 998, baseType: !7, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1748, file: !14, line: 1005, baseType: !245, size: 32, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1748, file: !14, line: 1006, baseType: !1758, size: 32, offset: 160)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !232, line: 156, baseType: !7)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1748, file: !14, line: 1007, baseType: !659, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1748, file: !14, line: 1008, baseType: !655, size: 256, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1748, file: !14, line: 1009, baseType: !556, size: 64, offset: 512)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1748, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1748, file: !14, line: 1011, baseType: !1764, size: 256, offset: 640)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1765)
!1765 = !{!1766, !1787, !1809, !1810, !1811, !1812}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1764, file: !14, line: 949, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1768, line: 34, baseType: !1769)
!1768 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1768, line: 25, size: 64, elements: !1770)
!1770 = !{!1771}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1769, file: !1768, line: 26, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1773, line: 27, baseType: !1774)
!1773 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1773, line: 13, size: 64, elements: !1775)
!1775 = !{!1776, !1786}
!1776 = !DIDerivedType(tag: DW_TAG_member, scope: !1774, file: !1773, line: 14, baseType: !1777, size: 32)
!1777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1774, file: !1773, line: 14, size: 32, elements: !1778)
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1777, file: !1773, line: 15, baseType: !265, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1777, file: !1773, line: 16, baseType: !1781, size: 32)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !1773, line: 16, size: 32, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1781, file: !1773, line: 18, baseType: !273, size: 8)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1781, file: !1773, line: 19, baseType: !1785, size: 24, offset: 8)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 24, elements: !316)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1774, file: !1773, line: 26, baseType: !257, size: 32, offset: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1764, file: !14, line: 950, baseType: !1788, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1790)
!1790 = !{!1791, !1792, !1793, !1794, !1796, !1797, !1798, !1799}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1789, file: !30, line: 61, baseType: !1437, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1789, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1789, file: !30, line: 63, baseType: !245, size: 32, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1789, file: !30, line: 65, baseType: !1795, size: 256, offset: 128)
!1795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1025, size: 256, elements: !885)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1789, file: !30, line: 66, baseType: !1025, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1789, file: !30, line: 68, baseType: !1410, size: 192, offset: 448)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1789, file: !30, line: 69, baseType: !875, size: 128, align: 64, offset: 640)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1789, file: !30, line: 70, baseType: !1800, offset: 768)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1801, elements: !1807)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1801, file: !30, line: 55, baseType: !109, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1801, file: !30, line: 56, baseType: !1805, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1807 = !{!1808}
!1808 = !DISubrange(count: -1)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1764, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1764, file: !14, line: 952, baseType: !401, size: 32, offset: 160)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1764, file: !14, line: 952, baseType: !401, size: 32, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1764, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1748, file: !14, line: 1012, baseType: !1814, size: 64, offset: 896)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1817, line: 110, size: 1472, elements: !1818)
!1817 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1818 = !{!1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1835, !1836, !1837, !1838, !1839, !1840, !1948, !1949, !1950, !1951, !1952, !1983, !1986, !1990, !1998}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1816, file: !1817, line: 111, baseType: !659, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1816, file: !1817, line: 112, baseType: !401, size: 32, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1816, file: !1817, line: 113, baseType: !410, size: 32, offset: 96)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1816, file: !1817, line: 114, baseType: !401, size: 32, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1816, file: !1817, line: 115, baseType: !410, size: 32, offset: 160)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1816, file: !1817, line: 116, baseType: !401, size: 32, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1816, file: !1817, line: 117, baseType: !410, size: 32, offset: 224)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1816, file: !1817, line: 118, baseType: !401, size: 32, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1816, file: !1817, line: 119, baseType: !410, size: 32, offset: 288)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1816, file: !1817, line: 120, baseType: !7, size: 32, offset: 320)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1816, file: !1817, line: 121, baseType: !1830, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1831, line: 24, baseType: !1832)
!1831 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1831, line: 24, size: 64, elements: !1833)
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1832, file: !1831, line: 24, baseType: !468, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1816, file: !1817, line: 122, baseType: !1830, size: 64, offset: 448)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1816, file: !1817, line: 123, baseType: !1830, size: 64, offset: 512)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1816, file: !1817, line: 124, baseType: !1830, size: 64, offset: 576)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1816, file: !1817, line: 125, baseType: !1830, size: 64, offset: 640)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1816, file: !1817, line: 127, baseType: !277, size: 8, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1816, file: !1817, line: 129, baseType: !1841, size: 64, offset: 768)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1843, line: 195, size: 1728, elements: !1844)
!1843 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1844 = !{!1845, !1846, !1849, !1854, !1855, !1858, !1859, !1864, !1865, !1866, !1867, !1870, !1871, !1872, !1873, !1874, !1912, !1933}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1842, file: !1843, line: 196, baseType: !1437, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1842, file: !1843, line: 197, baseType: !1847, size: 32, offset: 32)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1843, line: 28, baseType: !1848)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !232, line: 104, baseType: !651)
!1849 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !1843, line: 198, baseType: !1850, size: 192, offset: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1842, file: !1843, line: 198, size: 192, elements: !1851)
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1850, file: !1843, line: 199, baseType: !231, size: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1850, file: !1843, line: 200, baseType: !767, size: 192, align: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1842, file: !1843, line: 205, baseType: !1317, size: 320, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1842, file: !1843, line: 206, baseType: !1856, size: 64, offset: 576)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1843, line: 206, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1842, file: !1843, line: 207, baseType: !211, size: 64, offset: 640)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !1843, line: 208, baseType: !1860, size: 64, offset: 704)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1842, file: !1843, line: 208, size: 64, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1860, file: !1843, line: 209, baseType: !1157, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1860, file: !1843, line: 210, baseType: !1157, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1842, file: !1843, line: 212, baseType: !1157, size: 64, offset: 768)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1842, file: !1843, line: 213, baseType: !401, size: 32, offset: 832)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1842, file: !1843, line: 214, baseType: !410, size: 32, offset: 864)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1842, file: !1843, line: 215, baseType: !1868, size: 32, offset: 896)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1843, line: 31, baseType: !1869)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !232, line: 110, baseType: !464)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1842, file: !1843, line: 216, baseType: !285, size: 16, offset: 928)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1842, file: !1843, line: 217, baseType: !285, size: 16, offset: 944)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1842, file: !1843, line: 221, baseType: !793, size: 16, offset: 960)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1842, file: !1843, line: 228, baseType: !365, size: 64, offset: 1024)
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !1843, line: 245, baseType: !1875, size: 320, offset: 1088)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1842, file: !1843, line: 245, size: 320, elements: !1876)
!1876 = !{!1877, !1904}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1875, file: !1843, line: 246, baseType: !1878, size: 320)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1843, line: 114, size: 320, elements: !1879)
!1879 = !{!1880, !1881, !1893, !1896, !1903}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1878, file: !1843, line: 116, baseType: !365, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1878, file: !1843, line: 117, baseType: !1882, size: 64, offset: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1878, file: !1843, line: 117, size: 64, elements: !1883)
!1883 = !{!1884, !1892}
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1882, file: !1843, line: 118, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1882, file: !1843, line: 118, size: 64, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1885, file: !1843, line: 120, baseType: !283, size: 16)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1885, file: !1843, line: 121, baseType: !1889, size: 48, offset: 16)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 48, elements: !1890)
!1890 = !{!1891}
!1891 = !DISubrange(count: 6)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1882, file: !1843, line: 127, baseType: !365, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1878, file: !1843, line: 129, baseType: !1894, size: 64, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1843, line: 102, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1878, file: !1843, line: 130, baseType: !1897, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1843, line: 108, size: 192, elements: !1899)
!1899 = !{!1900, !1901, !1902}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1898, file: !1843, line: 109, baseType: !875, size: 128, align: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1898, file: !1843, line: 110, baseType: !1437, size: 32, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1898, file: !1843, line: 111, baseType: !735, size: 8, offset: 160)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1878, file: !1843, line: 131, baseType: !227, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !1843, line: 247, baseType: !1905, size: 320)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1875, file: !1843, line: 247, size: 320, elements: !1906)
!1906 = !{!1907, !1908, !1909, !1910, !1911}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1905, file: !1843, line: 248, baseType: !365, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1905, file: !1843, line: 249, baseType: !365, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1905, file: !1843, line: 250, baseType: !1894, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1905, file: !1843, line: 251, baseType: !1897, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1905, file: !1843, line: 252, baseType: !315, size: 64, offset: 256)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !1843, line: 260, baseType: !1913, size: 256, offset: 1408)
!1913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1842, file: !1843, line: 260, size: 256, elements: !1914)
!1914 = !{!1915, !1921}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1913, file: !1843, line: 261, baseType: !1916, size: 256)
!1916 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1843, line: 134, size: 256, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1916, file: !1843, line: 135, baseType: !211, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1916, file: !1843, line: 136, baseType: !1920, size: 256)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 256, elements: !885)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1913, file: !1843, line: 262, baseType: !1922, size: 256)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1913, file: !1843, line: 262, size: 256, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1922, file: !1843, line: 264, baseType: !231, size: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1922, file: !1843, line: 265, baseType: !1926, size: 128, offset: 128)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1927, line: 22, size: 128, elements: !1928)
!1927 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1928 = !{!1929, !1932}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1926, file: !1927, line: 23, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1927, line: 23, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1926, file: !1927, line: 24, baseType: !365, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1842, file: !1843, line: 280, baseType: !1934, size: 64, offset: 1664)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1843, line: 176, size: 192, elements: !1936)
!1936 = !{!1937, !1946, !1947}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1935, file: !1843, line: 177, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1843, line: 171, baseType: !1939)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!109, !1841, !1942, !1944, !1841}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1895)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1916)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1935, file: !1843, line: 178, baseType: !1841, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1935, file: !1843, line: 179, baseType: !1894, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1816, file: !1817, line: 130, baseType: !1841, size: 64, offset: 832)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1816, file: !1817, line: 131, baseType: !1841, size: 64, offset: 896)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1816, file: !1817, line: 132, baseType: !1841, size: 64, offset: 960)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1816, file: !1817, line: 135, baseType: !211, size: 64, offset: 1024)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1816, file: !1817, line: 137, baseType: !1953, size: 64, offset: 1088)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1955, line: 14, size: 1088, elements: !1956)
!1955 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1956 = !{!1957, !1958, !1967, !1968, !1969, !1970, !1971, !1972}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1954, file: !1955, line: 15, baseType: !1437, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1954, file: !1955, line: 17, baseType: !1959, size: 320, offset: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1960, line: 22, size: 320, elements: !1961)
!1960 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1961 = !{!1962, !1963, !1964, !1965}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1959, file: !1960, line: 23, baseType: !613, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1959, file: !1960, line: 24, baseType: !665, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1959, file: !1960, line: 26, baseType: !231, size: 128, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1959, file: !1960, line: 28, baseType: !1966, size: 64, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1954, file: !1955, line: 19, baseType: !365, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1954, file: !1955, line: 20, baseType: !659, size: 64, offset: 448)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1954, file: !1955, line: 23, baseType: !901, size: 128, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1954, file: !1955, line: 24, baseType: !401, size: 32, offset: 640)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1954, file: !1955, line: 29, baseType: !659, size: 64, offset: 704)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1954, file: !1955, line: 36, baseType: !1973, size: 320, offset: 768)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1974, line: 15, size: 320, elements: !1975)
!1974 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1975 = !{!1976, !1977, !1978, !1979, !1980, !1981, !1982}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1973, file: !1974, line: 16, baseType: !613, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1973, file: !1974, line: 18, baseType: !109, size: 32, offset: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1973, file: !1974, line: 19, baseType: !109, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1973, file: !1974, line: 20, baseType: !109, size: 32, offset: 96)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1973, file: !1974, line: 21, baseType: !109, size: 32, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1973, file: !1974, line: 22, baseType: !365, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1973, file: !1974, line: 23, baseType: !365, size: 64, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1816, file: !1817, line: 138, baseType: !1984, size: 64, offset: 1152)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !402, line: 18, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1816, file: !1817, line: 139, baseType: !1987, size: 64, offset: 1216)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1989, line: 16, flags: DIFlagFwdDecl)
!1989 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1816, file: !1817, line: 140, baseType: !1991, size: 64, offset: 1280)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1817, line: 25, size: 64, elements: !1993)
!1993 = !{!1994, !1995, !1996}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1992, file: !1817, line: 26, baseType: !265, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1992, file: !1817, line: 27, baseType: !109, size: 32, offset: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1992, file: !1817, line: 28, baseType: !1997, offset: 64)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, elements: !1807)
!1998 = !DIDerivedType(tag: DW_TAG_member, scope: !1816, file: !1817, line: 142, baseType: !1999, size: 128, offset: 1344)
!1999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1816, file: !1817, line: 142, size: 128, elements: !2000)
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1999, file: !1817, line: 143, baseType: !109, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1999, file: !1817, line: 144, baseType: !875, size: 128, align: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1748, file: !14, line: 1013, baseType: !2004, size: 256, offset: 960)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2005)
!2005 = !{!2006, !2007, !2008, !2009, !2010, !2011}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2004, file: !14, line: 971, baseType: !365, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2004, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2004, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2004, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2004, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2004, file: !14, line: 976, baseType: !556, size: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1748, file: !14, line: 1014, baseType: !1229, size: 128, offset: 1216)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1748, file: !14, line: 1015, baseType: !395, size: 64, offset: 1344)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1748, file: !14, line: 1016, baseType: !2015, size: 64, offset: 1408)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2017)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2018)
!2018 = !{!2019, !2020, !2024, !2029, !2033, !2117, !2118, !2124, !2137, !2145, !2149, !2150, !2441, !2442, !2446, !2451, !2452, !2456, !2460, !2466, !2467, !2471, !2472, !2478, !2482, !2486, !2492, !2496, !2500, !2504, !2508, !2509, !2515}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2017, file: !14, line: 1915, baseType: !584, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2017, file: !14, line: 1916, baseType: !2021, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!556, !1747, !556, !109}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2017, file: !14, line: 1917, baseType: !2025, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!347, !1747, !315, !362, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2017, file: !14, line: 1918, baseType: !2030, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!347, !1747, !227, !362, !2028}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2017, file: !14, line: 1919, baseType: !2034, size: 64, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!347, !2037, !2059}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2046, !2047, !2048, !2049}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2038, file: !14, line: 374, baseType: !1747, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2038, file: !14, line: 375, baseType: !556, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2038, file: !14, line: 376, baseType: !2043, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !2037, !351}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2038, file: !14, line: 377, baseType: !211, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2038, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2038, file: !14, line: 379, baseType: !283, size: 16, offset: 288)
!2049 = !DIDerivedType(tag: DW_TAG_member, scope: !2038, file: !14, line: 380, baseType: !2050, size: 64, offset: 320)
!2050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2038, file: !14, line: 380, size: 64, elements: !2051)
!2051 = !{!2052, !2055}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2050, file: !14, line: 386, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2050, file: !14, line: 395, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!347, !211}
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2061, line: 41, size: 320, elements: !2062)
!2061 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2068, !2073, !2112}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2060, file: !2061, line: 42, baseType: !273, size: 8)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2060, file: !2061, line: 43, baseType: !735, size: 8, offset: 8)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2060, file: !2061, line: 44, baseType: !735, size: 8, offset: 16)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2060, file: !2061, line: 45, baseType: !735, size: 8, offset: 24)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2060, file: !2061, line: 46, baseType: !735, size: 8, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2061, line: 47, baseType: !2069, size: 64, offset: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2061, line: 47, size: 64, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2069, file: !2061, line: 48, baseType: !362, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2069, file: !2061, line: 49, baseType: !109, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2061, line: 61, baseType: !2074, size: 128, offset: 128)
!2074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2061, line: 61, size: 128, elements: !2075)
!2075 = !{!2076, !2082}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2074, file: !2061, line: 67, baseType: !2077, size: 128)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2078, line: 17, size: 128, elements: !2079)
!2078 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2079 = !{!2080, !2081}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2077, file: !2078, line: 19, baseType: !211, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2077, file: !2078, line: 20, baseType: !363, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, scope: !2074, file: !2061, line: 68, baseType: !2083, size: 128)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2074, file: !2061, line: 68, size: 128, elements: !2084)
!2084 = !{!2085, !2111}
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !2061, line: 69, baseType: !2086, size: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2083, file: !2061, line: 69, size: 64, elements: !2087)
!2087 = !{!2088, !2091, !2098, !2102, !2110}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2086, file: !2061, line: 71, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2077)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2086, file: !2061, line: 72, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2094)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2061, line: 17, size: 128, elements: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2094, file: !2061, line: 18, baseType: !211, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2094, file: !2061, line: 19, baseType: !362, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2086, file: !2061, line: 73, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2101)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2061, line: 73, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2086, file: !2061, line: 74, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2105, line: 296, size: 128, elements: !2106)
!2105 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2106 = !{!2107, !2108, !2109}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2104, file: !2105, line: 297, baseType: !245, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2104, file: !2105, line: 299, baseType: !1169, size: 32, offset: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2104, file: !2105, line: 300, baseType: !211, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2086, file: !2061, line: 75, baseType: !211, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2083, file: !2061, line: 77, baseType: !362, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2061, line: 80, baseType: !2113, size: 64, offset: 256)
!2113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !2061, line: 80, size: 64, elements: !2114)
!2114 = !{!2115, !2116}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2113, file: !2061, line: 81, baseType: !365, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2113, file: !2061, line: 82, baseType: !556, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2017, file: !14, line: 1920, baseType: !2034, size: 64, offset: 320)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2017, file: !14, line: 1921, baseType: !2119, size: 64, offset: 384)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!109, !2037, !2122, !7}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2017, file: !14, line: 1923, baseType: !2125, size: 64, offset: 448)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!109, !1747, !2128}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2130)
!2130 = !{!2131, !2136}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2129, file: !14, line: 1859, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2133)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!735, !2128, !227, !109, !556, !468, !7}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2129, file: !14, line: 1860, baseType: !556, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2017, file: !14, line: 1924, baseType: !2138, size: 64, offset: 512)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!2141, !1747, !2143}
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2142, line: 59, baseType: !7)
!2142 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2017, file: !14, line: 1925, baseType: !2146, size: 64, offset: 576)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!351, !1747, !7, !365}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2017, file: !14, line: 1926, baseType: !2146, size: 64, offset: 640)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2017, file: !14, line: 1927, baseType: !2151, size: 64, offset: 704)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!109, !1747, !2154}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !52, line: 625, size: 1344, elements: !2156)
!2156 = !{!2157, !2166, !2167, !2175, !2182, !2183, !2188, !2189, !2194, !2195, !2198, !2434, !2435, !2436, !2437, !2438, !2439}
!2157 = !DIDerivedType(tag: DW_TAG_member, scope: !2155, file: !52, line: 628, baseType: !2158, size: 128)
!2158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2155, file: !52, line: 628, size: 128, elements: !2159)
!2159 = !{!2160, !2165}
!2160 = !DIDerivedType(tag: DW_TAG_member, scope: !2158, file: !52, line: 629, baseType: !2161, size: 128)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2158, file: !52, line: 629, size: 128, elements: !2162)
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2161, file: !52, line: 631, baseType: !365, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2161, file: !52, line: 632, baseType: !365, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2158, file: !52, line: 635, baseType: !875, size: 128, align: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2155, file: !52, line: 639, baseType: !1720, size: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2155, file: !52, line: 640, baseType: !2168, size: 64, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2169, line: 297, baseType: !2170)
!2169 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2169, line: 297, size: 64, elements: !2171)
!2171 = !{!2172}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2170, file: !2169, line: 297, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2174, line: 19, baseType: !365)
!2174 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2175 = !DIDerivedType(tag: DW_TAG_member, scope: !2155, file: !52, line: 646, baseType: !2176, size: 64, offset: 256)
!2176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2155, file: !52, line: 646, size: 64, elements: !2177)
!2177 = !{!2178, !2181}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2176, file: !52, line: 647, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2180)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !52, line: 542, baseType: !365)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2176, file: !52, line: 648, baseType: !2180, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2155, file: !52, line: 666, baseType: !109, size: 32, offset: 320)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2155, file: !52, line: 667, baseType: !2184, size: 64, offset: 384)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !52, line: 579, size: 320, elements: !2186)
!2186 = !{!2187}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2185, file: !52, line: 580, baseType: !1317, size: 320)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2155, file: !52, line: 670, baseType: !735, size: 8, offset: 448)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2155, file: !52, line: 681, baseType: !2190, size: 256, offset: 512)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2155, file: !52, line: 678, size: 256, elements: !2191)
!2191 = !{!2192, !2193}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2190, file: !52, line: 679, baseType: !767, size: 192, align: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2190, file: !52, line: 680, baseType: !365, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2155, file: !52, line: 689, baseType: !231, size: 128, offset: 768)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2155, file: !52, line: 691, baseType: !2196, size: 64, offset: 896)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !52, line: 691, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2155, file: !52, line: 694, baseType: !2199, size: 64, offset: 960)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2201)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2202, line: 563, size: 1024, elements: !2203)
!2202 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2203 = !{!2204, !2208, !2209, !2213, !2217, !2221, !2398, !2402, !2406, !2410, !2411, !2412, !2416, !2420, !2426, !2430}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2201, file: !2202, line: 564, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{null, !2154}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2201, file: !2202, line: 569, baseType: !2205, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2201, file: !2202, line: 571, baseType: !2210, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!109, !2154, !365}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2201, file: !2202, line: 572, baseType: !2214, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!109, !2154}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2201, file: !2202, line: 578, baseType: !2218, size: 64, offset: 256)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!109, !2154, !365, !365, !365}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2201, file: !2202, line: 580, baseType: !2222, size: 64, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!2225, !2226}
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !52, line: 1184, baseType: !7)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2202, line: 512, size: 896, elements: !2228)
!2228 = !{!2229, !2237, !2238, !2245, !2252, !2262, !2391, !2392, !2394, !2396}
!2229 = !DIDerivedType(tag: DW_TAG_member, scope: !2227, file: !2202, line: 513, baseType: !2230, size: 320)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2227, file: !2202, line: 513, size: 320, elements: !2231)
!2231 = !{!2232, !2233, !2234, !2235, !2236}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2230, file: !2202, line: 514, baseType: !2154, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2230, file: !2202, line: 515, baseType: !1169, size: 32, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2230, file: !2202, line: 516, baseType: !365, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2230, file: !2202, line: 517, baseType: !365, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2230, file: !2202, line: 518, baseType: !365, size: 64, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2227, file: !2202, line: 520, baseType: !51, size: 32, offset: 320)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2227, file: !2202, line: 522, baseType: !2239, size: 64, offset: 384)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2174, line: 22, baseType: !2241)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2174, line: 22, size: 64, elements: !2242)
!2242 = !{!2243}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2241, file: !2174, line: 22, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2174, line: 15, baseType: !365)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2227, file: !2202, line: 524, baseType: !2246, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2169, line: 372, baseType: !2248)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2169, line: 372, size: 64, elements: !2249)
!2249 = !{!2250}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2248, file: !2169, line: 372, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2174, line: 16, baseType: !365)
!2252 = !DIDerivedType(tag: DW_TAG_member, scope: !2227, file: !2202, line: 527, baseType: !2253, size: 64, offset: 512)
!2253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2227, file: !2202, line: 527, size: 64, elements: !2254)
!2254 = !{!2255, !2261}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2253, file: !2202, line: 528, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2174, line: 21, baseType: !2257)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2174, line: 21, size: 64, elements: !2258)
!2258 = !{!2259}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2257, file: !2174, line: 21, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2174, line: 14, baseType: !365)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2253, file: !2202, line: 529, baseType: !2240, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2227, file: !2202, line: 534, baseType: !2263, size: 64, offset: 576)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !52, line: 74, size: 512, align: 128, elements: !2265)
!2265 = !{!2266, !2267, !2385, !2390}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2264, file: !52, line: 75, baseType: !365, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2264, file: !52, line: 83, baseType: !2268, size: 320, offset: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2264, file: !52, line: 83, size: 320, elements: !2269)
!2269 = !{!2270, !2291, !2305, !2309, !2384}
!2270 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !52, line: 84, baseType: !2271, size: 320)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2268, file: !52, line: 84, size: 320, elements: !2272)
!2272 = !{!2273, !2284, !2285, !2290}
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !2271, file: !52, line: 90, baseType: !2274, size: 128)
!2274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2271, file: !52, line: 90, size: 128, elements: !2275)
!2275 = !{!2276, !2277, !2282, !2283}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2274, file: !52, line: 91, baseType: !231, size: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2274, file: !52, line: 94, baseType: !2278, size: 128)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2274, file: !52, line: 94, size: 128, elements: !2279)
!2279 = !{!2280, !2281}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2278, file: !52, line: 96, baseType: !211, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2278, file: !52, line: 98, baseType: !7, size: 32, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2274, file: !52, line: 102, baseType: !231, size: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2274, file: !52, line: 103, baseType: !231, size: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2271, file: !52, line: 106, baseType: !391, size: 64, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, scope: !2271, file: !52, line: 107, baseType: !2286, size: 64, offset: 192)
!2286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2271, file: !52, line: 107, size: 64, elements: !2287)
!2287 = !{!2288, !2289}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2286, file: !52, line: 108, baseType: !365, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2286, file: !52, line: 109, baseType: !365, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2271, file: !52, line: 117, baseType: !365, size: 64, offset: 256)
!2291 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !52, line: 119, baseType: !2292, size: 320)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2268, file: !52, line: 119, size: 320, elements: !2293)
!2293 = !{!2294, !2295, !2298, !2299, !2300}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2292, file: !52, line: 124, baseType: !365, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2292, file: !52, line: 125, baseType: !2296, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !52, line: 125, flags: DIFlagFwdDecl)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2292, file: !52, line: 126, baseType: !365, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2292, file: !52, line: 127, baseType: !365, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, scope: !2292, file: !52, line: 128, baseType: !2301, size: 64, offset: 256)
!2301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2292, file: !52, line: 128, size: 64, elements: !2302)
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2301, file: !52, line: 133, baseType: !365, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2301, file: !52, line: 138, baseType: !659, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !52, line: 141, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2268, file: !52, line: 141, size: 64, elements: !2307)
!2307 = !{!2308}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2306, file: !52, line: 142, baseType: !365, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, scope: !2268, file: !52, line: 144, baseType: !2310, size: 128)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2268, file: !52, line: 144, size: 128, elements: !2311)
!2311 = !{!2312, !2383}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2310, file: !52, line: 146, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !44, line: 126, size: 1216, elements: !2315)
!2315 = !{!2316, !2326, !2347, !2348, !2349, !2350, !2351, !2365, !2366, !2367}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2314, file: !44, line: 127, baseType: !2317, size: 384)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !44, line: 21, size: 384, elements: !2318)
!2318 = !{!2319, !2320, !2322, !2323, !2324, !2325}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2317, file: !44, line: 22, baseType: !365, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2317, file: !44, line: 23, baseType: !2321, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2317, file: !44, line: 24, baseType: !2321, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2317, file: !44, line: 25, baseType: !365, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2317, file: !44, line: 26, baseType: !365, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2317, file: !44, line: 27, baseType: !365, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2314, file: !44, line: 128, baseType: !2327, size: 128, offset: 384)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2328, line: 105, size: 128, elements: !2329)
!2328 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2329 = !{!2330, !2331}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2327, file: !2328, line: 110, baseType: !365, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2327, file: !2328, line: 118, baseType: !2332, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2328, line: 95, size: 448, elements: !2334)
!2334 = !{!2335, !2336, !2342, !2343, !2344, !2345, !2346}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2333, file: !2328, line: 96, baseType: !659, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2333, file: !2328, line: 97, baseType: !2337, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2328, line: 60, baseType: !2339)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !2341}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2333, file: !2328, line: 98, baseType: !2337, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2333, file: !2328, line: 99, baseType: !735, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2333, file: !2328, line: 100, baseType: !735, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2333, file: !2328, line: 101, baseType: !875, size: 128, align: 64, offset: 256)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2333, file: !2328, line: 102, baseType: !2341, size: 64, offset: 384)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2314, file: !44, line: 129, baseType: !604, size: 256, offset: 512)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2314, file: !44, line: 130, baseType: !43, size: 32, offset: 768)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2314, file: !44, line: 131, baseType: !7, size: 32, offset: 800)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2314, file: !44, line: 132, baseType: !365, size: 64, offset: 832)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2314, file: !44, line: 133, baseType: !2352, size: 64, offset: 896)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2354)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !44, line: 77, size: 192, elements: !2355)
!2355 = !{!2356, !2360, !2361}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2354, file: !44, line: 83, baseType: !2357, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{null, !2263}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2354, file: !44, line: 89, baseType: !2222, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2354, file: !44, line: 100, baseType: !2362, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!109, !2313, !365, !365, !109}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2314, file: !44, line: 134, baseType: !211, size: 64, offset: 960)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2314, file: !44, line: 135, baseType: !109, size: 32, offset: 1024)
!2367 = !DIDerivedType(tag: DW_TAG_member, scope: !2314, file: !44, line: 136, baseType: !2368, size: 128, offset: 1088)
!2368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2314, file: !44, line: 136, size: 128, elements: !2369)
!2369 = !{!2370, !2376}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2368, file: !44, line: 137, baseType: !2371, size: 128)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2372, line: 6, size: 128, elements: !2373)
!2372 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2371, file: !2372, line: 7, baseType: !468, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2371, file: !2372, line: 8, baseType: !468, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, scope: !2368, file: !44, line: 138, baseType: !2377)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2368, file: !44, line: 138, elements: !2378)
!2378 = !{!2379, !2381}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2377, file: !44, line: 138, baseType: !2380)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2377, file: !44, line: 138, elements: !944)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2377, file: !44, line: 138, baseType: !2382)
!2382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2371, elements: !1807)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2310, file: !52, line: 147, baseType: !211, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2268, file: !52, line: 161, baseType: !875, size: 128, align: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, scope: !2264, file: !52, line: 164, baseType: !2386, size: 32, offset: 384)
!2386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2264, file: !52, line: 164, size: 32, elements: !2387)
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2386, file: !52, line: 169, baseType: !265, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2386, file: !52, line: 177, baseType: !7, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2264, file: !52, line: 181, baseType: !265, size: 32, offset: 416)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2227, file: !2202, line: 535, baseType: !2263, size: 64, offset: 640)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2227, file: !2202, line: 541, baseType: !2393, size: 64, offset: 704)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2227, file: !2202, line: 545, baseType: !2395, size: 64, offset: 768)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2227, file: !2202, line: 549, baseType: !2397, size: 64, offset: 832)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2169, line: 520, baseType: !2263)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2201, file: !2202, line: 581, baseType: !2399, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!2225, !2226, !7}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2201, file: !2202, line: 582, baseType: !2403, size: 64, offset: 448)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!2225, !2226, !365, !365}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2201, file: !2202, line: 584, baseType: !2407, size: 64, offset: 512)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!365, !2154}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2201, file: !2202, line: 588, baseType: !2222, size: 64, offset: 576)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2201, file: !2202, line: 591, baseType: !2222, size: 64, offset: 640)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2201, file: !2202, line: 597, baseType: !2413, size: 64, offset: 704)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!109, !2154, !365, !211, !109, !109}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2201, file: !2202, line: 603, baseType: !2417, size: 64, offset: 768)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!227, !2154}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2201, file: !2202, line: 613, baseType: !2421, size: 64, offset: 832)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!109, !2154, !2424}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !52, line: 717, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2201, file: !2202, line: 625, baseType: !2427, size: 64, offset: 896)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!2424, !2154, !365}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2201, file: !2202, line: 633, baseType: !2431, size: 64, offset: 960)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!2263, !2154, !365}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2155, file: !52, line: 697, baseType: !365, size: 64, offset: 1024)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2155, file: !52, line: 699, baseType: !1747, size: 64, offset: 1088)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2155, file: !52, line: 700, baseType: !211, size: 64, offset: 1152)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2155, file: !52, line: 711, baseType: !659, size: 64, offset: 1216)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2155, file: !52, line: 717, baseType: !2424, size: 64, offset: 1280)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2155, file: !52, line: 722, baseType: !2440, offset: 1344)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !52, line: 570, elements: !944)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2017, file: !14, line: 1928, baseType: !365, size: 64, offset: 768)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2017, file: !14, line: 1929, baseType: !2443, size: 64, offset: 832)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!109, !395, !1747}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2017, file: !14, line: 1930, baseType: !2447, size: 64, offset: 896)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!109, !1747, !2450}
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !211)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2017, file: !14, line: 1931, baseType: !2443, size: 64, offset: 960)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2017, file: !14, line: 1932, baseType: !2453, size: 64, offset: 1024)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!109, !1747, !556, !556, !109}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2017, file: !14, line: 1933, baseType: !2457, size: 64, offset: 1088)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!109, !109, !1747, !109}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2017, file: !14, line: 1934, baseType: !2461, size: 64, offset: 1152)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!109, !1747, !109, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2017, file: !14, line: 1935, baseType: !1744, size: 64, offset: 1216)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2017, file: !14, line: 1936, baseType: !2468, size: 64, offset: 1280)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!109, !109}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2017, file: !14, line: 1937, baseType: !2461, size: 64, offset: 1344)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2017, file: !14, line: 1938, baseType: !2473, size: 64, offset: 1408)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!347, !2476, !1747, !2028, !362, !7}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1099, line: 59, flags: DIFlagFwdDecl)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2017, file: !14, line: 1939, baseType: !2479, size: 64, offset: 1472)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!347, !1747, !2028, !2476, !362, !7}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2017, file: !14, line: 1940, baseType: !2483, size: 64, offset: 1536)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{null, !1747}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2017, file: !14, line: 1941, baseType: !2487, size: 64, offset: 1600)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!109, !1747, !109, !2490, !2491}
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2017, file: !14, line: 1942, baseType: !2493, size: 64, offset: 1664)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!351, !1747, !109, !556, !556}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2017, file: !14, line: 1944, baseType: !2497, size: 64, offset: 1728)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{null, !1097, !1747}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2017, file: !14, line: 1948, baseType: !2501, size: 64, offset: 1792)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!347, !1747, !556, !1747, !556, !362, !7}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2017, file: !14, line: 1950, baseType: !2505, size: 64, offset: 1856)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!556, !1747, !556, !1747, !556, !556, !7}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2017, file: !14, line: 1953, baseType: !2453, size: 64, offset: 1920)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2017, file: !14, line: 1954, baseType: !2510, size: 64, offset: 1984)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!109, !2513, !7}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2017, file: !14, line: 1955, baseType: !2516, size: 64, offset: 2048)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!109, !2513, !2122, !7}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1748, file: !14, line: 1018, baseType: !468, size: 64, offset: 1472)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1748, file: !14, line: 1020, baseType: !211, size: 64, offset: 1536)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1748, file: !14, line: 1023, baseType: !211, size: 64, offset: 1600)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1748, file: !14, line: 1027, baseType: !2523, size: 64, offset: 1664)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1748, file: !14, line: 1029, baseType: !391, size: 64, offset: 1728)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1748, file: !14, line: 1030, baseType: !2526, size: 32, offset: 1792)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2527, line: 8, baseType: !464)
!2527 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1748, file: !14, line: 1031, baseType: !2526, size: 32, offset: 1824)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1724, file: !52, line: 756, baseType: !365, size: 64, offset: 704)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1724, file: !52, line: 757, baseType: !365, size: 64, offset: 768)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1724, file: !52, line: 760, baseType: !365, size: 64, offset: 832)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1724, file: !52, line: 761, baseType: !365, size: 64, offset: 896)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1724, file: !52, line: 763, baseType: !365, size: 64, offset: 960)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1724, file: !52, line: 764, baseType: !2535, size: 64, offset: 1024)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2169, line: 299, baseType: !2537)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2169, line: 299, size: 64, elements: !2538)
!2538 = !{!2539}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2537, file: !2169, line: 299, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2174, line: 18, baseType: !365)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1724, file: !52, line: 773, baseType: !265, size: 32, offset: 1088)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1724, file: !52, line: 785, baseType: !265, size: 32, offset: 1120)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1724, file: !52, line: 795, baseType: !2544, size: 64, offset: 1152)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !52, line: 726, size: 128, elements: !2546)
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2545, file: !52, line: 727, baseType: !468, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2545, file: !52, line: 728, baseType: !109, size: 32, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1724, file: !52, line: 801, baseType: !365, size: 64, offset: 1216)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1724, file: !52, line: 804, baseType: !659, size: 64, offset: 1280)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1724, file: !52, line: 806, baseType: !109, size: 32, offset: 1344)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1724, file: !52, line: 808, baseType: !245, size: 32, offset: 1376)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1724, file: !52, line: 823, baseType: !1317, size: 320, offset: 1408)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1724, file: !52, line: 825, baseType: !231, size: 128, offset: 1728)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1724, file: !52, line: 845, baseType: !109, size: 32, offset: 1856)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1724, file: !52, line: 849, baseType: !365, size: 64, offset: 1920)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1724, file: !52, line: 850, baseType: !365, size: 64, offset: 1984)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1724, file: !52, line: 852, baseType: !365, size: 64, offset: 2048)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1724, file: !52, line: 853, baseType: !365, size: 64, offset: 2112)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1724, file: !52, line: 854, baseType: !661, size: 64, offset: 2176)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1724, file: !52, line: 855, baseType: !365, size: 64, offset: 2240)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1724, file: !52, line: 856, baseType: !365, size: 64, offset: 2304)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1724, file: !52, line: 857, baseType: !365, size: 64, offset: 2368)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1724, file: !52, line: 858, baseType: !365, size: 64, offset: 2432)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1724, file: !52, line: 865, baseType: !441, size: 32, offset: 2496)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1724, file: !52, line: 867, baseType: !245, size: 32, offset: 2528)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1724, file: !52, line: 869, baseType: !365, size: 64, offset: 2560)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1724, file: !52, line: 869, baseType: !365, size: 64, offset: 2624)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1724, file: !52, line: 869, baseType: !365, size: 64, offset: 2688)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1724, file: !52, line: 869, baseType: !365, size: 64, offset: 2752)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1724, file: !52, line: 870, baseType: !365, size: 64, offset: 2816)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1724, file: !52, line: 870, baseType: !365, size: 64, offset: 2880)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1724, file: !52, line: 870, baseType: !365, size: 64, offset: 2944)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1724, file: !52, line: 871, baseType: !365, size: 64, offset: 3008)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1724, file: !52, line: 871, baseType: !365, size: 64, offset: 3072)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1724, file: !52, line: 871, baseType: !365, size: 64, offset: 3136)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1724, file: !52, line: 871, baseType: !365, size: 64, offset: 3200)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1724, file: !52, line: 873, baseType: !2579, size: 3328, offset: 3264)
!2579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 3328, elements: !2580)
!2580 = !{!2581}
!2581 = !DISubrange(count: 52)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1724, file: !52, line: 875, baseType: !2583, size: 1280, offset: 6592)
!2583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1959, size: 1280, elements: !885)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1724, file: !52, line: 877, baseType: !2585, size: 64, offset: 7872)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !52, line: 877, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1724, file: !52, line: 880, baseType: !2588, size: 1088, offset: 7936)
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2589, line: 72, baseType: !2590)
!2589 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2589, line: 23, size: 1088, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2599, !2600, !2601, !2602, !2629, !2630, !2631}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2590, file: !2589, line: 28, baseType: !468, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2590, file: !2589, line: 38, baseType: !661, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2590, file: !2589, line: 40, baseType: !365, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2590, file: !2589, line: 43, baseType: !1317, size: 320, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2590, file: !2589, line: 44, baseType: !2597, size: 64, offset: 512)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2589, line: 44, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2590, file: !2589, line: 48, baseType: !365, size: 64, offset: 576)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2590, file: !2589, line: 59, baseType: !655, size: 256, offset: 640)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2590, file: !2589, line: 60, baseType: !211, size: 64, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2590, file: !2589, line: 61, baseType: !2603, size: 64, offset: 960)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2605)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2606, line: 13, size: 1216, elements: !2607)
!2606 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2607 = !{!2608, !2609, !2610, !2611, !2612, !2613, !2614, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2605, file: !2606, line: 14, baseType: !211, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2605, file: !2606, line: 15, baseType: !365, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2605, file: !2606, line: 17, baseType: !365, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2605, file: !2606, line: 17, baseType: !365, size: 64, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2605, file: !2606, line: 18, baseType: !365, size: 64, offset: 256)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2605, file: !2606, line: 18, baseType: !365, size: 64, offset: 320)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2605, file: !2606, line: 19, baseType: !2615, size: 64, offset: 384)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2605, file: !2606, line: 21, baseType: !351, size: 64, offset: 448)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2605, file: !2606, line: 23, baseType: !351, size: 64, offset: 512)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2605, file: !2606, line: 24, baseType: !351, size: 64, offset: 576)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2605, file: !2606, line: 25, baseType: !351, size: 64, offset: 640)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2605, file: !2606, line: 26, baseType: !351, size: 64, offset: 704)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2605, file: !2606, line: 27, baseType: !351, size: 64, offset: 768)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2605, file: !2606, line: 28, baseType: !351, size: 64, offset: 832)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2605, file: !2606, line: 29, baseType: !351, size: 64, offset: 896)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2605, file: !2606, line: 30, baseType: !351, size: 64, offset: 960)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2605, file: !2606, line: 31, baseType: !351, size: 64, offset: 1024)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2605, file: !2606, line: 32, baseType: !351, size: 64, offset: 1088)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2605, file: !2606, line: 33, baseType: !351, size: 64, offset: 1152)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2590, file: !2589, line: 63, baseType: !265, size: 32, offset: 1024)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2590, file: !2589, line: 69, baseType: !283, size: 16, offset: 1056)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2590, file: !2589, line: 70, baseType: !791, size: 16, offset: 1072)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1724, file: !52, line: 882, baseType: !365, size: 64, offset: 9024)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1724, file: !52, line: 885, baseType: !245, size: 32, offset: 9088)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1724, file: !52, line: 886, baseType: !2635, size: 64, offset: 9152)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !52, line: 732, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1724, file: !52, line: 901, baseType: !1984, size: 64, offset: 9216)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1724, file: !52, line: 904, baseType: !1747, size: 64, offset: 9280)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1724, file: !52, line: 906, baseType: !2640, size: 64, offset: 9344)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !52, line: 906, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1724, file: !52, line: 930, baseType: !265, size: 32, offset: 9408)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1724, file: !52, line: 933, baseType: !265, size: 32, offset: 9440)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1724, file: !52, line: 935, baseType: !2645, size: 64, offset: 9472)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2646)
!2646 = !{!2647}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2645, file: !68, line: 104, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1724, file: !52, line: 940, baseType: !659, size: 64, offset: 9536)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1724, file: !52, line: 942, baseType: !915, size: 256, offset: 9600)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1721, file: !52, line: 986, baseType: !2653, offset: 10240)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, elements: !1807)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1424, file: !1099, line: 882, baseType: !1720, size: 64, offset: 9792)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1424, file: !1099, line: 884, baseType: !109, size: 32, offset: 9856)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1424, file: !1099, line: 885, baseType: !109, size: 32, offset: 9888)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1424, file: !1099, line: 886, baseType: !109, size: 32, offset: 9920)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1424, file: !1099, line: 888, baseType: !109, size: 32, offset: 9952)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1424, file: !1099, line: 890, baseType: !365, size: 64, offset: 9984)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1424, file: !1099, line: 893, baseType: !7, size: 32, offset: 10048)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1424, file: !1099, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1424, file: !1099, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1424, file: !1099, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1424, file: !1099, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1424, file: !1099, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1424, file: !1099, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1424, file: !1099, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1424, file: !1099, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1424, file: !1099, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1424, file: !1099, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1424, file: !1099, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1424, file: !1099, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1424, file: !1099, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1424, file: !1099, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1424, file: !1099, line: 969, baseType: !365, size: 64, offset: 10176)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1424, file: !1099, line: 971, baseType: !2677, size: 448, offset: 10240)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !2678)
!2678 = !{!2679, !2680, !2685}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2677, file: !38, line: 26, baseType: !365, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2677, file: !38, line: 27, baseType: !2681, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!351, !2684}
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, scope: !2677, file: !38, line: 28, baseType: !2686, size: 320, offset: 128)
!2686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2677, file: !38, line: 28, size: 320, elements: !2687)
!2687 = !{!2688, !2698, !2723}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2686, file: !38, line: 37, baseType: !2689, size: 320)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2686, file: !38, line: 30, size: 320, elements: !2690)
!2690 = !{!2691, !2693, !2694, !2695, !2696, !2697}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2689, file: !38, line: 31, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2689, file: !38, line: 32, baseType: !464, size: 32, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2689, file: !38, line: 33, baseType: !464, size: 32, offset: 96)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2689, file: !38, line: 34, baseType: !464, size: 32, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2689, file: !38, line: 35, baseType: !468, size: 64, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2689, file: !38, line: 36, baseType: !2692, size: 64, offset: 256)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2686, file: !38, line: 47, baseType: !2699, size: 192)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2686, file: !38, line: 39, size: 192, elements: !2700)
!2700 = !{!2701, !2702, !2703, !2722}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2699, file: !38, line: 40, baseType: !1591, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2699, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, scope: !2699, file: !38, line: 42, baseType: !2704, size: 64, offset: 64)
!2704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2699, file: !38, line: 42, size: 64, elements: !2705)
!2705 = !{!2706, !2714}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2704, file: !38, line: 43, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2709, line: 7, size: 128, elements: !2710)
!2709 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2710 = !{!2711, !2713}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2708, file: !2709, line: 8, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !349, line: 93, baseType: !558)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2708, file: !2709, line: 9, baseType: !558, size: 64, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2704, file: !38, line: 44, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2717, line: 7, size: 64, elements: !2718)
!2717 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2718 = !{!2719, !2721}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2716, file: !2717, line: 8, baseType: !2720, size: 32)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2717, line: 5, baseType: !651)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2716, file: !2717, line: 9, baseType: !651, size: 32, offset: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2699, file: !38, line: 46, baseType: !468, size: 64, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2686, file: !38, line: 55, baseType: !2724, size: 256)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2686, file: !38, line: 49, size: 256, elements: !2725)
!2725 = !{!2726, !2729, !2730, !2731, !2732}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2724, file: !38, line: 50, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !38, line: 14, flags: DIFlagFwdDecl)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2724, file: !38, line: 51, baseType: !109, size: 32, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2724, file: !38, line: 52, baseType: !109, size: 32, offset: 96)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2724, file: !38, line: 53, baseType: !365, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2724, file: !38, line: 54, baseType: !365, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1424, file: !1099, line: 973, baseType: !2734, size: 32, offset: 10688)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !232, line: 27, baseType: !2735)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !349, line: 28, baseType: !109)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1424, file: !1099, line: 974, baseType: !2734, size: 32, offset: 10720)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1424, file: !1099, line: 978, baseType: !365, size: 64, offset: 10752)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1424, file: !1099, line: 987, baseType: !1423, size: 64, offset: 10816)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1424, file: !1099, line: 990, baseType: !1423, size: 64, offset: 10880)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1424, file: !1099, line: 995, baseType: !231, size: 128, offset: 10944)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1424, file: !1099, line: 996, baseType: !231, size: 128, offset: 11072)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1424, file: !1099, line: 997, baseType: !1423, size: 64, offset: 11200)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1424, file: !1099, line: 1005, baseType: !231, size: 128, offset: 11264)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1424, file: !1099, line: 1006, baseType: !231, size: 128, offset: 11392)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1424, file: !1099, line: 1009, baseType: !1788, size: 64, offset: 11520)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1424, file: !1099, line: 1010, baseType: !2747, size: 512, offset: 11584)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !901, size: 512, elements: !885)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1424, file: !1099, line: 1011, baseType: !231, size: 128, offset: 12096)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1424, file: !1099, line: 1012, baseType: !231, size: 128, offset: 12224)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1424, file: !1099, line: 1014, baseType: !603, size: 64, offset: 12352)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1424, file: !1099, line: 1017, baseType: !784, size: 64, offset: 12416)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1424, file: !1099, line: 1020, baseType: !784, size: 64, offset: 12480)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1424, file: !1099, line: 1023, baseType: !211, size: 64, offset: 12544)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1424, file: !1099, line: 1025, baseType: !468, size: 64, offset: 12608)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1424, file: !1099, line: 1026, baseType: !468, size: 64, offset: 12672)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1424, file: !1099, line: 1031, baseType: !468, size: 64, offset: 12736)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1424, file: !1099, line: 1032, baseType: !2758, size: 192, offset: 12800)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1099, line: 324, size: 192, elements: !2759)
!2759 = !{!2760, !2761, !2762}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2758, file: !1099, line: 326, baseType: !468, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2758, file: !1099, line: 327, baseType: !468, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2758, file: !1099, line: 328, baseType: !613, size: 32, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1424, file: !1099, line: 1041, baseType: !365, size: 64, offset: 12992)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1424, file: !1099, line: 1042, baseType: !365, size: 64, offset: 13056)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1424, file: !1099, line: 1045, baseType: !468, size: 64, offset: 13120)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1424, file: !1099, line: 1048, baseType: !468, size: 64, offset: 13184)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1424, file: !1099, line: 1051, baseType: !365, size: 64, offset: 13248)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1424, file: !1099, line: 1052, baseType: !365, size: 64, offset: 13312)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1424, file: !1099, line: 1055, baseType: !2770, size: 640, offset: 13376)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2771, line: 132, size: 640, elements: !2772)
!2771 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2772 = !{!2773, !2779, !2780}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2770, file: !2771, line: 133, baseType: !2774, size: 576)
!2774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2775, size: 576, elements: !316)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2771, line: 117, size: 192, elements: !2776)
!2776 = !{!2777, !2778}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2775, file: !2771, line: 118, baseType: !468, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2775, file: !2771, line: 119, baseType: !1600, size: 128, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2770, file: !2771, line: 134, baseType: !7, size: 32, offset: 576)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2770, file: !2771, line: 135, baseType: !7, size: 32, offset: 608)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1424, file: !1099, line: 1058, baseType: !2782, size: 448, offset: 14016)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2771, line: 144, size: 448, elements: !2783)
!2783 = !{!2784, !2785, !2786}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2782, file: !2771, line: 145, baseType: !875, size: 128, align: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2782, file: !2771, line: 146, baseType: !655, size: 256, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2782, file: !2771, line: 147, baseType: !7, size: 32, offset: 384)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1424, file: !1099, line: 1064, baseType: !1814, size: 64, offset: 14464)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1424, file: !1099, line: 1067, baseType: !1814, size: 64, offset: 14528)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1424, file: !1099, line: 1070, baseType: !1814, size: 64, offset: 14592)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1424, file: !1099, line: 1074, baseType: !1841, size: 64, offset: 14656)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1424, file: !1099, line: 1084, baseType: !2792, size: 128, offset: 14720)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 128, elements: !2793)
!2793 = !{!2794}
!2794 = !DISubrange(count: 16)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1424, file: !1099, line: 1086, baseType: !2796, size: 64, offset: 14848)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1099, line: 55, flags: DIFlagFwdDecl)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1424, file: !1099, line: 1089, baseType: !2799, size: 64, offset: 14912)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2800, line: 12, size: 64, elements: !2801)
!2800 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2801 = !{!2802}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2799, file: !2800, line: 13, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2800, line: 8, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1424, file: !1099, line: 1090, baseType: !2806, size: 128, offset: 14976)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2807, line: 13, size: 128, elements: !2808)
!2807 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2808 = !{!2809}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2806, file: !2807, line: 14, baseType: !231, size: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1424, file: !1099, line: 1097, baseType: !2811, size: 64, offset: 15104)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1099, line: 50, flags: DIFlagFwdDecl)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1424, file: !1099, line: 1100, baseType: !2814, size: 64, offset: 15168)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1099, line: 1100, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1424, file: !1099, line: 1103, baseType: !2817, size: 64, offset: 15232)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1099, line: 53, flags: DIFlagFwdDecl)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1424, file: !1099, line: 1107, baseType: !2820, size: 64, offset: 15296)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1099, line: 56, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1424, file: !1099, line: 1110, baseType: !2823, size: 64, offset: 15360)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2825, line: 93, size: 8768, elements: !2826)
!2825 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2826 = !{!2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2874, !2883, !2884, !2886, !2887, !2888, !2891, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2929, !2930, !2937, !2947, !2950, !2951, !2954, !2955, !2956, !2957, !2958, !2959}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2824, file: !2825, line: 94, baseType: !1437, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2824, file: !2825, line: 95, baseType: !265, size: 32, offset: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2824, file: !2825, line: 96, baseType: !109, size: 32, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2824, file: !2825, line: 97, baseType: !109, size: 32, offset: 96)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2824, file: !2825, line: 98, baseType: !231, size: 128, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2824, file: !2825, line: 100, baseType: !1410, size: 192, offset: 256)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2824, file: !2825, line: 103, baseType: !1423, size: 64, offset: 448)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2824, file: !2825, line: 106, baseType: !2835, size: 192, offset: 512)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1989, line: 32, size: 192, elements: !2836)
!2836 = !{!2837, !2838}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2835, file: !1989, line: 33, baseType: !231, size: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2835, file: !1989, line: 34, baseType: !2839, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2840, line: 25, baseType: !2841)
!2840 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2840, line: 23, size: 64, elements: !2842)
!2842 = !{!2843}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2841, file: !2840, line: 24, baseType: !1671, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2824, file: !2825, line: 109, baseType: !1025, size: 64, offset: 704)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2824, file: !2825, line: 112, baseType: !109, size: 32, offset: 768)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2824, file: !2825, line: 114, baseType: !109, size: 32, offset: 800)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2824, file: !2825, line: 115, baseType: !1423, size: 64, offset: 832)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2824, file: !2825, line: 118, baseType: !109, size: 32, offset: 896)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2824, file: !2825, line: 119, baseType: !7, size: 32, offset: 928)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2824, file: !2825, line: 121, baseType: !2851, size: 64, offset: 960)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2825, line: 80, size: 448, elements: !2853)
!2853 = !{!2854, !2855, !2861}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2852, file: !2825, line: 81, baseType: !265, size: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2852, file: !2825, line: 82, baseType: !2856, size: 128, offset: 64)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2825, line: 75, size: 128, elements: !2857)
!2857 = !{!2858, !2859}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2856, file: !2825, line: 76, baseType: !1423, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2856, file: !2825, line: 77, baseType: !2860, size: 64, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2852, file: !2825, line: 83, baseType: !604, size: 256, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2824, file: !2825, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2824, file: !2825, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2824, file: !2825, line: 138, baseType: !7, size: 32, offset: 1056)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2824, file: !2825, line: 139, baseType: !231, size: 128, offset: 1088)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2824, file: !2825, line: 142, baseType: !1544, size: 512, offset: 1216)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2824, file: !2825, line: 143, baseType: !1552, size: 64, offset: 1728)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2824, file: !2825, line: 150, baseType: !2869, size: 256, offset: 1792)
!2869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2870, size: 256, elements: !774)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2825, line: 38, size: 128, elements: !2871)
!2871 = !{!2872, !2873}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2870, file: !2825, line: 39, baseType: !468, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2870, file: !2825, line: 40, baseType: !468, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2824, file: !2825, line: 156, baseType: !2875, size: 192, offset: 2048)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2825, line: 66, size: 192, elements: !2876)
!2876 = !{!2877}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2875, file: !2825, line: 67, baseType: !2878, size: 192)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2825, line: 47, size: 192, elements: !2879)
!2879 = !{!2880, !2881, !2882}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2878, file: !2825, line: 48, baseType: !661, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2878, file: !2825, line: 49, baseType: !661, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2878, file: !2825, line: 50, baseType: !661, size: 64, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2824, file: !2825, line: 160, baseType: !2770, size: 640, offset: 2240)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2824, file: !2825, line: 163, baseType: !2885, size: 256, offset: 2880)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1788, size: 256, elements: !885)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2824, file: !2825, line: 169, baseType: !1788, size: 64, offset: 3136)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2824, file: !2825, line: 172, baseType: !109, size: 32, offset: 3200)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2824, file: !2825, line: 174, baseType: !2889, size: 64, offset: 3264)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2825, line: 174, flags: DIFlagFwdDecl)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2824, file: !2825, line: 185, baseType: !2892, size: 64, offset: 3328)
!2892 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !437, line: 860, baseType: !2893)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 853, size: 64, elements: !2894)
!2894 = !{!2895, !2896}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2893, file: !437, line: 858, baseType: !436, size: 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2893, file: !437, line: 859, baseType: !245, size: 32, offset: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2824, file: !2825, line: 186, baseType: !468, size: 64, offset: 3392)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2824, file: !2825, line: 186, baseType: !468, size: 64, offset: 3456)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2824, file: !2825, line: 186, baseType: !468, size: 64, offset: 3520)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2824, file: !2825, line: 186, baseType: !468, size: 64, offset: 3584)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2824, file: !2825, line: 187, baseType: !468, size: 64, offset: 3648)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2824, file: !2825, line: 188, baseType: !468, size: 64, offset: 3712)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2824, file: !2825, line: 189, baseType: !2758, size: 192, offset: 3776)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2824, file: !2825, line: 190, baseType: !365, size: 64, offset: 3968)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2824, file: !2825, line: 190, baseType: !365, size: 64, offset: 4032)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2824, file: !2825, line: 190, baseType: !365, size: 64, offset: 4096)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2824, file: !2825, line: 190, baseType: !365, size: 64, offset: 4160)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2824, file: !2825, line: 191, baseType: !365, size: 64, offset: 4224)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2824, file: !2825, line: 191, baseType: !365, size: 64, offset: 4288)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2824, file: !2825, line: 191, baseType: !365, size: 64, offset: 4352)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2824, file: !2825, line: 191, baseType: !365, size: 64, offset: 4416)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2824, file: !2825, line: 192, baseType: !365, size: 64, offset: 4480)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2824, file: !2825, line: 192, baseType: !365, size: 64, offset: 4544)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2824, file: !2825, line: 192, baseType: !365, size: 64, offset: 4608)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2824, file: !2825, line: 192, baseType: !365, size: 64, offset: 4672)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2824, file: !2825, line: 193, baseType: !365, size: 64, offset: 4736)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2824, file: !2825, line: 193, baseType: !365, size: 64, offset: 4800)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2824, file: !2825, line: 194, baseType: !2919, size: 448, offset: 4864)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2920, line: 12, size: 448, elements: !2921)
!2920 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2921 = !{!2922, !2923, !2924, !2925, !2926, !2927, !2928}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2919, file: !2920, line: 15, baseType: !468, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2919, file: !2920, line: 17, baseType: !468, size: 64, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2919, file: !2920, line: 19, baseType: !468, size: 64, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2919, file: !2920, line: 21, baseType: !468, size: 64, offset: 192)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2919, file: !2920, line: 29, baseType: !468, size: 64, offset: 256)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2919, file: !2920, line: 35, baseType: !468, size: 64, offset: 320)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2919, file: !2920, line: 44, baseType: !468, size: 64, offset: 384)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2824, file: !2825, line: 202, baseType: !470, size: 64, offset: 5312)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2824, file: !2825, line: 213, baseType: !2931, size: 2048, offset: 5376)
!2931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2932, size: 2048, elements: !2793)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2933, line: 43, size: 128, elements: !2934)
!2933 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2934 = !{!2935, !2936}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2932, file: !2933, line: 44, baseType: !364, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2932, file: !2933, line: 45, baseType: !364, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2824, file: !2825, line: 216, baseType: !2938, size: 448, offset: 7424)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2825, line: 30, size: 448, elements: !2939)
!2939 = !{!2940, !2941, !2942, !2943, !2944, !2945, !2946}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2938, file: !2825, line: 31, baseType: !109, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2938, file: !2825, line: 32, baseType: !351, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2938, file: !2825, line: 33, baseType: !365, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2938, file: !2825, line: 34, baseType: !468, size: 64, offset: 192)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2938, file: !2825, line: 34, baseType: !468, size: 64, offset: 256)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2938, file: !2825, line: 35, baseType: !365, size: 64, offset: 320)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2938, file: !2825, line: 35, baseType: !365, size: 64, offset: 384)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2824, file: !2825, line: 219, baseType: !2948, size: 64, offset: 7872)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2825, line: 219, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2824, file: !2825, line: 222, baseType: !7, size: 32, offset: 7936)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2824, file: !2825, line: 223, baseType: !2952, size: 64, offset: 8000)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2825, line: 223, flags: DIFlagFwdDecl)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2824, file: !2825, line: 230, baseType: !735, size: 8, offset: 8064)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2824, file: !2825, line: 231, baseType: !793, size: 16, offset: 8080)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2824, file: !2825, line: 232, baseType: !793, size: 16, offset: 8096)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2824, file: !2825, line: 234, baseType: !1720, size: 64, offset: 8128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2824, file: !2825, line: 237, baseType: !655, size: 256, offset: 8192)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2824, file: !2825, line: 243, baseType: !1317, size: 320, offset: 8448)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1424, file: !1099, line: 1111, baseType: !2961, size: 64, offset: 15424)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2825, line: 20, size: 16640, elements: !2963)
!2963 = !{!2964, !2965, !2966, !2967}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2962, file: !2825, line: 21, baseType: !245, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2962, file: !2825, line: 22, baseType: !1437, size: 32, offset: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2962, file: !2825, line: 23, baseType: !1410, size: 192, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2962, file: !2825, line: 24, baseType: !2968, size: 16384, offset: 256)
!2968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2969, size: 16384, elements: !320)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1989, line: 51, size: 256, elements: !2970)
!2970 = !{!2971}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2969, file: !1989, line: 52, baseType: !2972, size: 256)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1989, line: 37, size: 256, elements: !2973)
!2973 = !{!2974, !2981, !2982, !2986}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2972, file: !1989, line: 39, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2976, line: 83, baseType: !2977)
!2976 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2976, line: 82, baseType: !2979)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !109}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2972, file: !1989, line: 40, baseType: !365, size: 64, offset: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2972, file: !1989, line: 46, baseType: !2983, size: 64, offset: 128)
!2983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2976, line: 86, baseType: !2984)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2976, line: 85, baseType: !1020)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2972, file: !1989, line: 48, baseType: !2839, size: 64, offset: 192)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1424, file: !1099, line: 1112, baseType: !2839, size: 64, offset: 15488)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1424, file: !1099, line: 1113, baseType: !2839, size: 64, offset: 15552)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1424, file: !1099, line: 1115, baseType: !2839, size: 64, offset: 15616)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1424, file: !1099, line: 1116, baseType: !2835, size: 192, offset: 15680)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1424, file: !1099, line: 1117, baseType: !365, size: 64, offset: 15872)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1424, file: !1099, line: 1118, baseType: !362, size: 64, offset: 15936)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1424, file: !1099, line: 1119, baseType: !7, size: 32, offset: 16000)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1424, file: !1099, line: 1121, baseType: !874, size: 64, offset: 16064)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1424, file: !1099, line: 1125, baseType: !2996, size: 64, offset: 16128)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1099, line: 43, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1424, file: !1099, line: 1127, baseType: !401, size: 32, offset: 16192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1424, file: !1099, line: 1128, baseType: !7, size: 32, offset: 16224)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1424, file: !1099, line: 1130, baseType: !3001, size: 128, offset: 16256)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3002, line: 37, size: 128, elements: !3003)
!3002 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3003 = !{!3004, !3005, !3006}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3001, file: !3002, line: 38, baseType: !109, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3001, file: !3002, line: 39, baseType: !265, size: 32, offset: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3001, file: !3002, line: 40, baseType: !3007, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3002, line: 24, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1424, file: !1099, line: 1131, baseType: !3010, size: 256, offset: 16384)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3011, line: 12, size: 256, elements: !3012)
!3011 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3012 = !{!3013, !3014, !3015, !3016}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3010, file: !3011, line: 13, baseType: !315, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3010, file: !3011, line: 14, baseType: !365, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3010, file: !3011, line: 15, baseType: !365, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3010, file: !3011, line: 16, baseType: !735, size: 8, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1424, file: !1099, line: 1134, baseType: !468, size: 64, offset: 16640)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1424, file: !1099, line: 1135, baseType: !468, size: 64, offset: 16704)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1424, file: !1099, line: 1138, baseType: !245, size: 32, offset: 16768)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1424, file: !1099, line: 1141, baseType: !613, size: 32, offset: 16800)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1424, file: !1099, line: 1143, baseType: !3022, size: 64, offset: 16832)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1099, line: 735, size: 64, elements: !3023)
!3023 = !{!3024}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3022, file: !1099, line: 736, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1424, file: !1099, line: 1147, baseType: !1603, size: 128, offset: 16896)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1424, file: !1099, line: 1149, baseType: !1423, size: 64, offset: 17024)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1424, file: !1099, line: 1151, baseType: !3029, size: 64, offset: 17088)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1099, line: 1151, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1424, file: !1099, line: 1188, baseType: !211, size: 64, offset: 17152)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1424, file: !1099, line: 1191, baseType: !3033, size: 64, offset: 17216)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1099, line: 44, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1424, file: !1099, line: 1194, baseType: !3036, size: 64, offset: 17280)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1099, line: 45, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1424, file: !1099, line: 1197, baseType: !3039, size: 64, offset: 17344)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1099, line: 61, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1424, file: !1099, line: 1199, baseType: !3042, size: 64, offset: 17408)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3044, line: 99, size: 128, elements: !3045)
!3044 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3043, file: !3044, line: 100, baseType: !659, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3043, file: !3044, line: 101, baseType: !265, size: 32, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3043, file: !3044, line: 103, baseType: !285, size: 16, offset: 96)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1424, file: !1099, line: 1202, baseType: !3050, size: 64, offset: 17472)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1099, line: 48, flags: DIFlagFwdDecl)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1424, file: !1099, line: 1205, baseType: !365, size: 64, offset: 17536)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1424, file: !1099, line: 1206, baseType: !3054, size: 64, offset: 17600)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1989, line: 14, baseType: !3056)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1989, line: 12, size: 384, elements: !3057)
!3057 = !{!3058}
!3058 = !DIDerivedType(tag: DW_TAG_member, scope: !3056, file: !1989, line: 13, baseType: !3059, size: 384)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3056, file: !1989, line: 13, size: 384, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3064}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3059, file: !1989, line: 13, baseType: !109, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3059, file: !1989, line: 13, baseType: !109, size: 32, offset: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3059, file: !1989, line: 13, baseType: !109, size: 32, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3059, file: !1989, line: 13, baseType: !3065, size: 256, offset: 128)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3066, line: 37, size: 256, elements: !3067)
!3066 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3067 = !{!3068, !3073, !3086, !3092, !3101, !3128, !3133}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3065, file: !3066, line: 42, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 39, size: 64, elements: !3070)
!3070 = !{!3071, !3072}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3069, file: !3066, line: 40, baseType: !2735, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3069, file: !3066, line: 41, baseType: !407, size: 32, offset: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3065, file: !3066, line: 50, baseType: !3074, size: 192)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 45, size: 192, elements: !3075)
!3075 = !{!3076, !3078, !3079, !3085}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3074, file: !3066, line: 46, baseType: !3077, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !349, line: 95, baseType: !109)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3074, file: !3066, line: 47, baseType: !109, size: 32, offset: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3074, file: !3066, line: 48, baseType: !3080, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3066, line: 11, baseType: !3081)
!3081 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3066, line: 8, size: 64, elements: !3082)
!3082 = !{!3083, !3084}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3081, file: !3066, line: 9, baseType: !109, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3081, file: !3066, line: 10, baseType: !211, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3074, file: !3066, line: 49, baseType: !109, size: 32, offset: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3065, file: !3066, line: 57, baseType: !3087, size: 128)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 53, size: 128, elements: !3088)
!3088 = !{!3089, !3090, !3091}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3087, file: !3066, line: 54, baseType: !2735, size: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3087, file: !3066, line: 55, baseType: !407, size: 32, offset: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3087, file: !3066, line: 56, baseType: !3080, size: 64, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3065, file: !3066, line: 66, baseType: !3093, size: 256)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 60, size: 256, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098, !3100}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3093, file: !3066, line: 61, baseType: !2735, size: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3093, file: !3066, line: 62, baseType: !407, size: 32, offset: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3093, file: !3066, line: 63, baseType: !109, size: 32, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3093, file: !3066, line: 64, baseType: !3099, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !349, line: 94, baseType: !350)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3093, file: !3066, line: 65, baseType: !3099, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3065, file: !3066, line: 105, baseType: !3102, size: 256)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 69, size: 256, elements: !3103)
!3103 = !{!3104, !3105}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3102, file: !3066, line: 70, baseType: !211, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, scope: !3102, file: !3066, line: 79, baseType: !3106, size: 192, offset: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3102, file: !3066, line: 79, size: 192, elements: !3107)
!3107 = !{!3108, !3109, !3110, !3117, !3122}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3106, file: !3066, line: 81, baseType: !109, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3106, file: !3066, line: 86, baseType: !793, size: 16)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3106, file: !3066, line: 92, baseType: !3111, size: 192)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3066, line: 88, size: 192, elements: !3112)
!3112 = !{!3113, !3115, !3116}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3111, file: !3066, line: 89, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 64, elements: !1587)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3111, file: !3066, line: 90, baseType: !211, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3111, file: !3066, line: 91, baseType: !211, size: 64, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3106, file: !3066, line: 97, baseType: !3118, size: 96)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3066, line: 94, size: 96, elements: !3119)
!3119 = !{!3120, !3121}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3118, file: !3066, line: 95, baseType: !3114, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3118, file: !3066, line: 96, baseType: !465, size: 32, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3106, file: !3066, line: 103, baseType: !3123, size: 128)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !3066, line: 99, size: 128, elements: !3124)
!3124 = !{!3125, !3126, !3127}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3123, file: !3066, line: 100, baseType: !365, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3123, file: !3066, line: 101, baseType: !465, size: 32, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3123, file: !3066, line: 102, baseType: !465, size: 32, offset: 96)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3065, file: !3066, line: 111, baseType: !3129, size: 128)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 108, size: 128, elements: !3130)
!3130 = !{!3131, !3132}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3129, file: !3066, line: 109, baseType: !351, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3129, file: !3066, line: 110, baseType: !109, size: 32, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3065, file: !3066, line: 118, baseType: !3134, size: 128)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !3066, line: 114, size: 128, elements: !3135)
!3135 = !{!3136, !3137, !3138}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3134, file: !3066, line: 115, baseType: !211, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3134, file: !3066, line: 116, baseType: !109, size: 32, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3134, file: !3066, line: 117, baseType: !7, size: 32, offset: 96)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1424, file: !1099, line: 1208, baseType: !2919, size: 448, offset: 17664)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1424, file: !1099, line: 1215, baseType: !468, size: 64, offset: 18112)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1424, file: !1099, line: 1217, baseType: !468, size: 64, offset: 18176)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1424, file: !1099, line: 1219, baseType: !468, size: 64, offset: 18240)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1424, file: !1099, line: 1223, baseType: !3144, size: 64, offset: 18304)
!3144 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3145, line: 99, baseType: !3146)
!3145 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3145, line: 99, size: 64, elements: !3147)
!3147 = !{!3148}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3146, file: !3145, line: 99, baseType: !1671, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1424, file: !1099, line: 1225, baseType: !436, size: 32, offset: 18368)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1424, file: !1099, line: 1226, baseType: !109, size: 32, offset: 18400)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1424, file: !1099, line: 1227, baseType: !109, size: 32, offset: 18432)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1424, file: !1099, line: 1231, baseType: !3153, size: 64, offset: 18496)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1099, line: 1231, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1424, file: !1099, line: 1233, baseType: !231, size: 128, offset: 18560)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1424, file: !1099, line: 1240, baseType: !3157, size: 64, offset: 18688)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1099, line: 62, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1424, file: !1099, line: 1242, baseType: !3160, size: 64, offset: 18752)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3162, line: 392, size: 96, elements: !3163)
!3162 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3163 = !{!3164, !3170, !3172}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3161, file: !3162, line: 393, baseType: !3165, size: 32)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3162, line: 388, size: 32, elements: !3166)
!3166 = !{!3167}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3165, file: !3162, line: 389, baseType: !3168, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3169, line: 46, baseType: !464)
!3169 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3161, file: !3162, line: 394, baseType: !3171, size: 32, offset: 32)
!3171 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3169, line: 42, baseType: !651)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3161, file: !3162, line: 395, baseType: !3168, size: 32, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1424, file: !1099, line: 1244, baseType: !231, size: 128, offset: 18816)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1424, file: !1099, line: 1245, baseType: !3175, size: 64, offset: 18944)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1099, line: 51, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1424, file: !1099, line: 1246, baseType: !655, size: 256, offset: 19008)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1424, file: !1099, line: 1247, baseType: !7, size: 32, offset: 19264)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1424, file: !1099, line: 1250, baseType: !3180, size: 64, offset: 19328)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1099, line: 57, flags: DIFlagFwdDecl)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1424, file: !1099, line: 1251, baseType: !655, size: 256, offset: 19392)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1424, file: !1099, line: 1252, baseType: !231, size: 128, offset: 19648)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1424, file: !1099, line: 1259, baseType: !2424, size: 64, offset: 19776)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1424, file: !1099, line: 1260, baseType: !793, size: 16, offset: 19840)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1424, file: !1099, line: 1261, baseType: !793, size: 16, offset: 19856)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1424, file: !1099, line: 1314, baseType: !3188, size: 64, offset: 19904)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3190, line: 62, size: 256, align: 256, elements: !3191)
!3190 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3197, !3198}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3189, file: !3190, line: 75, baseType: !465, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3189, file: !3190, line: 90, baseType: !465, size: 32, offset: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3189, file: !3190, line: 112, baseType: !469, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3189, file: !3190, line: 132, baseType: !465, size: 32, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3189, file: !3190, line: 140, baseType: !465, size: 32, offset: 160)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3189, file: !3190, line: 149, baseType: !465, size: 32, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3189, file: !3190, line: 154, baseType: !3199, offset: 224)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, elements: !1807)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1424, file: !1099, line: 1315, baseType: !464, size: 32, offset: 19968)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1424, file: !1099, line: 1316, baseType: !464, size: 32, offset: 20000)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1424, file: !1099, line: 1321, baseType: !365, size: 64, offset: 20032)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1424, file: !1099, line: 1325, baseType: !109, size: 32, offset: 20096)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1424, file: !1099, line: 1326, baseType: !109, size: 32, offset: 20128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1424, file: !1099, line: 1327, baseType: !109, size: 32, offset: 20160)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1424, file: !1099, line: 1328, baseType: !109, size: 32, offset: 20192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1424, file: !1099, line: 1329, baseType: !875, size: 128, align: 64, offset: 20224)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1424, file: !1099, line: 1332, baseType: !3209, size: 128, offset: 20352)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3210, line: 51, size: 128, elements: !3211)
!3210 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3211 = !{!3212, !3217, !3218}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3209, file: !3210, line: 60, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3214, line: 7, size: 64, elements: !3215)
!3214 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3215 = !{!3216}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3213, file: !3214, line: 12, baseType: !1668, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3209, file: !3210, line: 63, baseType: !735, size: 8, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3209, file: !3210, line: 70, baseType: !735, size: 8, offset: 72)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1424, file: !1099, line: 1335, baseType: !2476, size: 64, offset: 20480)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1424, file: !1099, line: 1337, baseType: !3221, size: 128, offset: 20544)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3210, line: 39, size: 128, elements: !3222)
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3221, file: !3210, line: 40, baseType: !2263, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3221, file: !3210, line: 42, baseType: !465, size: 32, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3221, file: !3210, line: 43, baseType: !465, size: 32, offset: 96)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1424, file: !1099, line: 1340, baseType: !3227, size: 64, offset: 20672)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1099, line: 69, flags: DIFlagFwdDecl)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1424, file: !1099, line: 1351, baseType: !109, size: 32, offset: 20736)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1424, file: !1099, line: 1352, baseType: !109, size: 32, offset: 20768)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1424, file: !1099, line: 1354, baseType: !365, size: 64, offset: 20800)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1424, file: !1099, line: 1364, baseType: !468, size: 64, offset: 20864)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1424, file: !1099, line: 1365, baseType: !468, size: 64, offset: 20928)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1424, file: !1099, line: 1412, baseType: !365, size: 64, offset: 20992)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1424, file: !1099, line: 1453, baseType: !3236, size: 64, offset: 21056)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1099, line: 1453, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1424, file: !1099, line: 1457, baseType: !3239, size: 64, offset: 21120)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3241)
!3241 = !{!3242, !3243, !3262, !3265, !3266, !3299, !3309}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3240, file: !68, line: 62, baseType: !67, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, scope: !3240, file: !68, line: 64, baseType: !3244, size: 192, offset: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3240, file: !68, line: 64, size: 192, elements: !3245)
!3245 = !{!3246, !3257}
!3246 = !DIDerivedType(tag: DW_TAG_member, scope: !3244, file: !68, line: 65, baseType: !3247, size: 192)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3244, file: !68, line: 65, size: 192, elements: !3248)
!3248 = !{!3249, !3256}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3247, file: !68, line: 66, baseType: !3250, size: 128)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3251, line: 50, size: 128, elements: !3252)
!3251 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3252 = !{!3253, !3254, !3255}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3250, file: !3251, line: 52, baseType: !365, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3250, file: !3251, line: 54, baseType: !7, size: 32, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3250, file: !3251, line: 55, baseType: !7, size: 32, offset: 96)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3247, file: !68, line: 67, baseType: !365, size: 64, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, scope: !3244, file: !68, line: 70, baseType: !3258, size: 192)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3244, file: !68, line: 70, size: 192, elements: !3259)
!3259 = !{!3260, !3261}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3258, file: !68, line: 71, baseType: !875, size: 128, align: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3258, file: !68, line: 72, baseType: !365, size: 64, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3240, file: !68, line: 76, baseType: !3263, size: 64, offset: 256)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3240, file: !68, line: 77, baseType: !365, size: 64, offset: 320)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3240, file: !68, line: 79, baseType: !3267, size: 64, offset: 384)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3251, line: 25, size: 256, elements: !3269)
!3269 = !{!3270, !3276, !3280}
!3270 = !DIDerivedType(tag: DW_TAG_member, scope: !3268, file: !3251, line: 26, baseType: !3271, size: 128)
!3271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3268, file: !3251, line: 26, size: 128, elements: !3272)
!3272 = !{!3273, !3275}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3271, file: !3251, line: 27, baseType: !3274, size: 128)
!3274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 128, elements: !2793)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3271, file: !3251, line: 28, baseType: !3274, size: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3268, file: !3251, line: 31, baseType: !3277, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3279)
!3279 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3251, line: 23, flags: DIFlagFwdDecl)
!3280 = !DIDerivedType(tag: DW_TAG_member, scope: !3268, file: !3251, line: 33, baseType: !3281, size: 64, offset: 192)
!3281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3268, file: !3251, line: 33, size: 64, elements: !3282)
!3282 = !{!3283, !3289, !3294}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3281, file: !3251, line: 38, baseType: !3284, size: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3281, file: !3251, line: 34, size: 64, elements: !3285)
!3285 = !{!3286, !3287, !3288}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3284, file: !3251, line: 35, baseType: !651, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3284, file: !3251, line: 36, baseType: !273, size: 8, offset: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3284, file: !3251, line: 37, baseType: !273, size: 8, offset: 40)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3281, file: !3251, line: 42, baseType: !3290, size: 16)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3281, file: !3251, line: 39, size: 16, elements: !3291)
!3291 = !{!3292, !3293}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3290, file: !3251, line: 40, baseType: !273, size: 8)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3290, file: !3251, line: 41, baseType: !273, size: 8, offset: 8)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3281, file: !3251, line: 46, baseType: !3295, size: 16)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3281, file: !3251, line: 43, size: 16, elements: !3296)
!3296 = !{!3297, !3298}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3295, file: !3251, line: 44, baseType: !273, size: 8)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3295, file: !3251, line: 45, baseType: !273, size: 8, offset: 8)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3240, file: !68, line: 81, baseType: !3300, size: 64, offset: 448)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3302)
!3302 = !{!3303, !3304, !3305, !3306, !3307, !3308}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3301, file: !68, line: 86, baseType: !3263, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3301, file: !68, line: 87, baseType: !365, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3301, file: !68, line: 88, baseType: !365, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3301, file: !68, line: 89, baseType: !365, size: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3301, file: !68, line: 90, baseType: !735, size: 8, offset: 256)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3301, file: !68, line: 92, baseType: !3300, size: 64, offset: 320)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3240, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1424, file: !1099, line: 1463, baseType: !3311, offset: 21184)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1099, line: 739, elements: !944)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1424, file: !1099, line: 1470, baseType: !875, size: 128, align: 64, offset: 21184)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1424, file: !1099, line: 1471, baseType: !1437, size: 32, offset: 21312)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1424, file: !1099, line: 1472, baseType: !109, size: 32, offset: 21344)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1424, file: !1099, line: 1474, baseType: !1423, size: 64, offset: 21376)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1424, file: !1099, line: 1475, baseType: !897, size: 320, offset: 21440)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1424, file: !1099, line: 1478, baseType: !3318, size: 64, offset: 21760)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3320, line: 49, size: 512, elements: !3321)
!3320 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3321 = !{!3322, !3323, !3324, !3325, !3326, !3328, !3329, !3330, !3332}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3319, file: !3320, line: 50, baseType: !3318, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3319, file: !3320, line: 51, baseType: !211, size: 64, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3319, file: !3320, line: 52, baseType: !365, size: 64, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3319, file: !3320, line: 53, baseType: !365, size: 64, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3319, file: !3320, line: 54, baseType: !3327, size: 64, offset: 256)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3319, file: !3320, line: 56, baseType: !7, size: 32, offset: 320)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3319, file: !3320, line: 58, baseType: !7, size: 32, offset: 352)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3319, file: !3320, line: 59, baseType: !3331, size: 64, offset: 384)
!3331 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !232, line: 159, baseType: !468)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3319, file: !3320, line: 60, baseType: !2615, size: 64, offset: 448)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1424, file: !1099, line: 1482, baseType: !1437, size: 32, offset: 21824)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1424, file: !1099, line: 1489, baseType: !211, size: 64, offset: 21888)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1424, file: !1099, line: 1504, baseType: !211, size: 64, offset: 21952)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1424, file: !1099, line: 1505, baseType: !469, size: 64, offset: 22016)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1424, file: !1099, line: 1506, baseType: !468, size: 64, offset: 22080)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1424, file: !1099, line: 1507, baseType: !469, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1424, file: !1099, line: 1508, baseType: !469, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1424, file: !1099, line: 1509, baseType: !469, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1424, file: !1099, line: 1510, baseType: !875, size: 128, align: 64, offset: 22208)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1424, file: !1099, line: 1511, baseType: !109, size: 32, offset: 22336)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1424, file: !1099, line: 1515, baseType: !3344, size: 64, offset: 22400)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1451, line: 56, size: 64, elements: !3345)
!3345 = !{!3346}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3344, file: !1451, line: 57, baseType: !1454, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1424, file: !1099, line: 1518, baseType: !3344, size: 64, offset: 22464)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1424, file: !1099, line: 1528, baseType: !875, size: 128, align: 64, offset: 22528)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1424, file: !1099, line: 1552, baseType: !3350, size: 35328, offset: 23040)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3351, line: 430, size: 35328, elements: !3352)
!3351 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3352 = !{!3353, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3382, !3383, !3384, !3385, !3386, !3387, !3390, !3391, !3392, !3393}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3350, file: !3351, line: 432, baseType: !3354, size: 192)
!3354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3355, size: 192, elements: !316)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3356, line: 16, size: 64, elements: !3357)
!3356 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3355, file: !3356, line: 17, baseType: !283, size: 16)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3355, file: !3356, line: 18, baseType: !283, size: 16, offset: 16)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3355, file: !3356, line: 19, baseType: !283, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3355, file: !3356, line: 19, baseType: !283, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3355, file: !3356, line: 19, baseType: !283, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3355, file: !3356, line: 19, baseType: !283, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3355, file: !3356, line: 19, baseType: !283, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3355, file: !3356, line: 20, baseType: !283, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3355, file: !3356, line: 20, baseType: !283, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3355, file: !3356, line: 20, baseType: !283, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3355, file: !3356, line: 20, baseType: !283, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3355, file: !3356, line: 20, baseType: !283, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3355, file: !3356, line: 20, baseType: !283, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3350, file: !3351, line: 436, baseType: !365, size: 64, offset: 192)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3350, file: !3351, line: 440, baseType: !285, size: 16, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3350, file: !3351, line: 441, baseType: !285, size: 16, offset: 272)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3350, file: !3351, line: 442, baseType: !285, size: 16, offset: 288)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3350, file: !3351, line: 443, baseType: !285, size: 16, offset: 304)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3350, file: !3351, line: 447, baseType: !365, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3350, file: !3351, line: 448, baseType: !365, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3350, file: !3351, line: 459, baseType: !3379, size: 256, offset: 448)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3380, size: 256, elements: !885)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3351, line: 428, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3350, file: !3351, line: 461, baseType: !365, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3350, file: !3351, line: 463, baseType: !365, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3350, file: !3351, line: 465, baseType: !365, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3350, file: !3351, line: 466, baseType: !365, size: 64, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3350, file: !3351, line: 467, baseType: !365, size: 64, offset: 960)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3350, file: !3351, line: 473, baseType: !3388, size: 64, offset: 1024)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3351, line: 10, flags: DIFlagFwdDecl)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3350, file: !3351, line: 480, baseType: !365, size: 64, offset: 1088)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3350, file: !3351, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3350, file: !3351, line: 491, baseType: !464, size: 32, offset: 1184)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3350, file: !3351, line: 501, baseType: !3394, size: 33792, offset: 1536)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3395, line: 448, size: 33792, elements: !3396)
!3395 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3396 = !{!3397, !3398, !3399, !3561, !3562, !3568, !3569}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3394, file: !3395, line: 461, baseType: !7, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3394, file: !3395, line: 468, baseType: !365, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3394, file: !3395, line: 476, baseType: !3400, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3395, line: 356, size: 33280, align: 512, elements: !3402)
!3402 = !{!3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3401, file: !3395, line: 358, baseType: !7, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3401, file: !3395, line: 361, baseType: !7, size: 32, offset: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3401, file: !3395, line: 364, baseType: !468, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3401, file: !3395, line: 367, baseType: !468, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3401, file: !3395, line: 370, baseType: !468, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3401, file: !3395, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3401, file: !3395, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3401, file: !3395, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3401, file: !3395, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3401, file: !3395, line: 397, baseType: !3413, size: 32768, offset: 512)
!3413 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3395, line: 348, size: 32768, elements: !3414)
!3414 = !{!3415, !3430, !3467, !3544, !3557}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3413, file: !3395, line: 349, baseType: !3416, size: 896)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3395, line: 12, size: 896, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3429}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3416, file: !3395, line: 13, baseType: !464, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3416, file: !3395, line: 14, baseType: !464, size: 32, offset: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3416, file: !3395, line: 15, baseType: !464, size: 32, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3416, file: !3395, line: 16, baseType: !464, size: 32, offset: 96)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3416, file: !3395, line: 17, baseType: !464, size: 32, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3416, file: !3395, line: 18, baseType: !464, size: 32, offset: 160)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3416, file: !3395, line: 19, baseType: !464, size: 32, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3416, file: !3395, line: 22, baseType: !3426, size: 640, offset: 224)
!3426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 640, elements: !3427)
!3427 = !{!3428}
!3428 = !DISubrange(count: 20)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3416, file: !3395, line: 25, baseType: !464, size: 32, offset: 864)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3413, file: !3395, line: 350, baseType: !3431, size: 4096, align: 128)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3395, line: 34, size: 4096, align: 128, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3452, !3453, !3454, !3456, !3458, !3462}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3431, file: !3395, line: 35, baseType: !283, size: 16)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3431, file: !3395, line: 36, baseType: !283, size: 16, offset: 16)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3431, file: !3395, line: 37, baseType: !283, size: 16, offset: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3431, file: !3395, line: 38, baseType: !283, size: 16, offset: 48)
!3437 = !DIDerivedType(tag: DW_TAG_member, scope: !3431, file: !3395, line: 39, baseType: !3438, size: 128, offset: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3431, file: !3395, line: 39, size: 128, elements: !3439)
!3439 = !{!3440, !3445}
!3440 = !DIDerivedType(tag: DW_TAG_member, scope: !3438, file: !3395, line: 40, baseType: !3441, size: 128)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3438, file: !3395, line: 40, size: 128, elements: !3442)
!3442 = !{!3443, !3444}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3441, file: !3395, line: 41, baseType: !468, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3441, file: !3395, line: 42, baseType: !468, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, scope: !3438, file: !3395, line: 44, baseType: !3446, size: 128)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3438, file: !3395, line: 44, size: 128, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3446, file: !3395, line: 45, baseType: !464, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3446, file: !3395, line: 46, baseType: !464, size: 32, offset: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3446, file: !3395, line: 47, baseType: !464, size: 32, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3446, file: !3395, line: 48, baseType: !464, size: 32, offset: 96)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3431, file: !3395, line: 51, baseType: !464, size: 32, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3431, file: !3395, line: 52, baseType: !464, size: 32, offset: 224)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3431, file: !3395, line: 55, baseType: !3455, size: 1024, offset: 256)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 1024, elements: !477)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3431, file: !3395, line: 58, baseType: !3457, size: 2048, offset: 1280)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 2048, elements: !320)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3431, file: !3395, line: 60, baseType: !3459, size: 384, offset: 3328)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 384, elements: !3460)
!3460 = !{!3461}
!3461 = !DISubrange(count: 12)
!3462 = !DIDerivedType(tag: DW_TAG_member, scope: !3431, file: !3395, line: 62, baseType: !3463, size: 384, offset: 3712)
!3463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3431, file: !3395, line: 62, size: 384, elements: !3464)
!3464 = !{!3465, !3466}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3463, file: !3395, line: 63, baseType: !3459, size: 384)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3463, file: !3395, line: 64, baseType: !3459, size: 384)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3413, file: !3395, line: 351, baseType: !3468, size: 1088)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3395, line: 79, size: 1088, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3543}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3468, file: !3395, line: 80, baseType: !464, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3468, file: !3395, line: 81, baseType: !464, size: 32, offset: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3468, file: !3395, line: 82, baseType: !464, size: 32, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3468, file: !3395, line: 83, baseType: !464, size: 32, offset: 96)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3468, file: !3395, line: 84, baseType: !464, size: 32, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3468, file: !3395, line: 85, baseType: !464, size: 32, offset: 160)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3468, file: !3395, line: 86, baseType: !464, size: 32, offset: 192)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3468, file: !3395, line: 88, baseType: !3426, size: 640, offset: 224)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3468, file: !3395, line: 89, baseType: !273, size: 8, offset: 864)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3468, file: !3395, line: 90, baseType: !273, size: 8, offset: 872)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3468, file: !3395, line: 91, baseType: !273, size: 8, offset: 880)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3468, file: !3395, line: 92, baseType: !273, size: 8, offset: 888)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3468, file: !3395, line: 93, baseType: !273, size: 8, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3468, file: !3395, line: 94, baseType: !273, size: 8, offset: 904)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3468, file: !3395, line: 95, baseType: !3485, size: 64, offset: 960)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3487, line: 11, size: 128, elements: !3488)
!3487 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3488 = !{!3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3486, file: !3487, line: 12, baseType: !351, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3486, file: !3487, line: 13, baseType: !3491, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3493, line: 103, size: 1344, elements: !3494)
!3493 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3523, !3524, !3525}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3492, file: !3493, line: 109, baseType: !365, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3492, file: !3493, line: 110, baseType: !365, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3492, file: !3493, line: 111, baseType: !365, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3492, file: !3493, line: 112, baseType: !365, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3492, file: !3493, line: 113, baseType: !365, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3492, file: !3493, line: 114, baseType: !365, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3492, file: !3493, line: 117, baseType: !365, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3492, file: !3493, line: 118, baseType: !365, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3492, file: !3493, line: 119, baseType: !365, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3492, file: !3493, line: 120, baseType: !365, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3492, file: !3493, line: 121, baseType: !365, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3492, file: !3493, line: 122, baseType: !365, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3492, file: !3493, line: 123, baseType: !365, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3492, file: !3493, line: 124, baseType: !365, size: 64, offset: 832)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3492, file: !3493, line: 125, baseType: !365, size: 64, offset: 896)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3492, file: !3493, line: 139, baseType: !365, size: 64, offset: 960)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3492, file: !3493, line: 142, baseType: !365, size: 64, offset: 1024)
!3512 = !DIDerivedType(tag: DW_TAG_member, scope: !3492, file: !3493, line: 144, baseType: !3513, size: 64, offset: 1088)
!3513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3492, file: !3493, line: 144, size: 64, elements: !3514)
!3514 = !{!3515, !3516, !3517}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3513, file: !3493, line: 146, baseType: !283, size: 16)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3513, file: !3493, line: 148, baseType: !468, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3513, file: !3493, line: 150, baseType: !3518, size: 64)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3493, line: 59, size: 64, elements: !3519)
!3519 = !{!3520, !3521, !3522}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3518, file: !3493, line: 61, baseType: !468, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3518, file: !3493, line: 63, baseType: !468, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3518, file: !3493, line: 65, baseType: !468, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3492, file: !3493, line: 153, baseType: !365, size: 64, offset: 1152)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3492, file: !3493, line: 154, baseType: !365, size: 64, offset: 1216)
!3525 = !DIDerivedType(tag: DW_TAG_member, scope: !3492, file: !3493, line: 156, baseType: !3526, size: 64, offset: 1280)
!3526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3492, file: !3493, line: 156, size: 64, elements: !3527)
!3527 = !{!3528, !3529, !3530}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3526, file: !3493, line: 158, baseType: !283, size: 16)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3526, file: !3493, line: 160, baseType: !468, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3526, file: !3493, line: 162, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3493, line: 69, size: 64, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3531, file: !3493, line: 71, baseType: !468, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3531, file: !3493, line: 73, baseType: !468, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3531, file: !3493, line: 75, baseType: !468, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3531, file: !3493, line: 77, baseType: !468, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3531, file: !3493, line: 80, baseType: !468, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3531, file: !3493, line: 83, baseType: !468, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3531, file: !3493, line: 86, baseType: !468, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3531, file: !3493, line: 88, baseType: !468, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3531, file: !3493, line: 93, baseType: !468, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3531, file: !3493, line: 100, baseType: !468, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3468, file: !3395, line: 96, baseType: !464, size: 32, offset: 1024)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3413, file: !3395, line: 352, baseType: !3545, size: 4608, align: 512)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3395, line: 333, size: 4608, align: 512, elements: !3546)
!3546 = !{!3547, !3548, !3555}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3545, file: !3395, line: 334, baseType: !3431, size: 4096, align: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3545, file: !3395, line: 335, baseType: !3549, size: 512, offset: 4096)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3395, line: 312, size: 512, elements: !3550)
!3550 = !{!3551, !3552, !3553}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3549, file: !3395, line: 313, baseType: !468, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3549, file: !3395, line: 314, baseType: !468, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3549, file: !3395, line: 315, baseType: !3554, size: 384, offset: 128)
!3554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 384, elements: !1890)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3545, file: !3395, line: 336, baseType: !3556, offset: 4608)
!3556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, elements: !1807)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3413, file: !3395, line: 353, baseType: !3558, size: 32768)
!3558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 32768, elements: !3559)
!3559 = !{!3560}
!3560 = !DISubrange(count: 4096)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3394, file: !3395, line: 484, baseType: !3400, size: 64, offset: 192)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3394, file: !3395, line: 491, baseType: !3563, size: 128, offset: 256)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3395, line: 404, size: 128, elements: !3564)
!3564 = !{!3565, !3566, !3567}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3563, file: !3395, line: 424, baseType: !468, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3563, file: !3395, line: 432, baseType: !7, size: 32, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3563, file: !3395, line: 440, baseType: !7, size: 32, offset: 96)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3394, file: !3395, line: 498, baseType: !3563, size: 128, offset: 384)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3394, file: !3395, line: 508, baseType: !3401, size: 33280, align: 512, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1400, file: !1401, line: 16, baseType: !1410, size: 192, offset: 512)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1400, file: !1401, line: 17, baseType: !265, size: 32, offset: 704)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !547, file: !14, line: 1240, baseType: !211, size: 64, offset: 6912)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !547, file: !14, line: 1243, baseType: !464, size: 32, offset: 6976)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !547, file: !14, line: 1245, baseType: !1157, size: 64, offset: 7040)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !547, file: !14, line: 1246, baseType: !1157, size: 64, offset: 7104)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !547, file: !14, line: 1248, baseType: !465, size: 32, offset: 7168)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !547, file: !14, line: 1249, baseType: !3578, size: 64, offset: 7232)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !547, file: !14, line: 1252, baseType: !3581, size: 256, offset: 7296)
!3581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 256, elements: !477)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !547, file: !14, line: 1253, baseType: !3583, size: 128, offset: 7552)
!3583 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3584, line: 21, baseType: !3585)
!3584 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3584, line: 19, size: 128, elements: !3586)
!3586 = !{!3587}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3585, file: !3584, line: 20, baseType: !3588, size: 128)
!3588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 128, elements: !2793)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !547, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !547, file: !14, line: 1261, baseType: !655, size: 256, offset: 7744)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !547, file: !14, line: 1267, baseType: !227, size: 64, offset: 8000)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !547, file: !14, line: 1269, baseType: !493, size: 64, offset: 8064)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !547, file: !14, line: 1271, baseType: !3594, size: 448, offset: 8128)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1166, line: 63, size: 448, elements: !3595)
!3595 = !{!3596, !3601, !3602, !3603, !3604, !3605, !3606}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3594, file: !1166, line: 64, baseType: !3597, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!365, !3600, !1164}
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3594, file: !1166, line: 66, baseType: !3597, size: 64, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3594, file: !1166, line: 69, baseType: !351, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3594, file: !1166, line: 70, baseType: !109, size: 32, offset: 192)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3594, file: !1166, line: 71, baseType: !7, size: 32, offset: 224)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3594, file: !1166, line: 74, baseType: !231, size: 128, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3594, file: !1166, line: 85, baseType: !3607, size: 64, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !547, file: !14, line: 1274, baseType: !659, size: 64, offset: 8576)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !547, file: !14, line: 1280, baseType: !659, size: 64, offset: 8640)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !547, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !547, file: !14, line: 1286, baseType: !2526, size: 32, offset: 8736)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !547, file: !14, line: 1289, baseType: !977, size: 64, offset: 8768)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !547, file: !14, line: 1290, baseType: !1025, size: 64, offset: 8832)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !547, file: !14, line: 1297, baseType: !1984, size: 64, offset: 8896)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !547, file: !14, line: 1304, baseType: !3616, size: 64, offset: 8960)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3617, line: 49, size: 64, elements: !3618)
!3617 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3618 = !{!3619}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3616, file: !3617, line: 50, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3617, line: 41, size: 512, align: 512, elements: !3622)
!3622 = !{!3623, !3624, !3629}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3621, file: !3617, line: 43, baseType: !245, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3621, file: !3617, line: 45, baseType: !3625, size: 192, offset: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3617, line: 29, size: 192, elements: !3626)
!3626 = !{!3627, !3628}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3625, file: !3617, line: 30, baseType: !231, size: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3625, file: !3617, line: 32, baseType: !351, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3621, file: !3617, line: 46, baseType: !351, size: 64, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !547, file: !14, line: 1305, baseType: !3616, size: 64, offset: 9024)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !547, file: !14, line: 1306, baseType: !875, size: 128, align: 64, offset: 9088)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !547, file: !14, line: 1307, baseType: !915, size: 256, offset: 9216)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !547, file: !14, line: 1309, baseType: !655, size: 256, offset: 9472)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !547, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !547, file: !14, line: 1317, baseType: !245, size: 32, align: 512, offset: 10240)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !547, file: !14, line: 1318, baseType: !231, size: 128, offset: 10304)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !547, file: !14, line: 1320, baseType: !245, size: 32, offset: 10432)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !547, file: !14, line: 1321, baseType: !231, size: 128, offset: 10496)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !541, file: !542, line: 73, baseType: !109, size: 32, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !541, file: !542, line: 74, baseType: !3641, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1831, line: 42, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !495, file: !432, line: 141, baseType: !3645, size: 64, offset: 704)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!109, !1227, !735}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !495, file: !432, line: 142, baseType: !3649, size: 64, offset: 768)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!430, !430, !3652}
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !431, file: !432, line: 96, baseType: !546, size: 64, offset: 832)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !431, file: !432, line: 97, baseType: !365, size: 64, offset: 896)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !431, file: !432, line: 98, baseType: !211, size: 64, offset: 960)
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !432, line: 100, baseType: !3658, size: 128, offset: 1024)
!3658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !432, line: 100, size: 128, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3658, file: !432, line: 101, baseType: !231, size: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3658, file: !432, line: 102, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !431, file: !432, line: 104, baseType: !231, size: 128, offset: 1152)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !431, file: !432, line: 105, baseType: !231, size: 128, offset: 1280)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !431, file: !432, line: 113, baseType: !3666, size: 128, offset: 1408)
!3666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !432, line: 109, size: 128, elements: !3667)
!3667 = !{!3668, !3669, !3670}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3666, file: !432, line: 110, baseType: !901, size: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3666, file: !432, line: 111, baseType: !446, size: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3666, file: !432, line: 112, baseType: !875, size: 128, align: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !424, file: !14, line: 1968, baseType: !3672, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!227, !430, !395, !3675}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3677, line: 10, size: 128, elements: !3678)
!3677 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3678 = !{!3679, !3680}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3676, file: !3677, line: 11, baseType: !698, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3676, file: !3677, line: 12, baseType: !211, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !424, file: !14, line: 1969, baseType: !3682, size: 64, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!109, !3641, !395, !109}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !424, file: !14, line: 1970, baseType: !3686, size: 64, offset: 192)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!418, !395, !109, !735}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !424, file: !14, line: 1972, baseType: !3690, size: 64, offset: 256)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!109, !430, !315, !109}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !424, file: !14, line: 1974, baseType: !3694, size: 64, offset: 320)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!109, !3641, !395, !430, !357, !735}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !424, file: !14, line: 1976, baseType: !3698, size: 64, offset: 384)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!109, !430, !395, !430}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !424, file: !14, line: 1977, baseType: !3702, size: 64, offset: 448)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!109, !395, !430}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !424, file: !14, line: 1978, baseType: !3706, size: 64, offset: 512)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!109, !3641, !395, !430, !227}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !424, file: !14, line: 1980, baseType: !3710, size: 64, offset: 576)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!109, !3641, !395, !430, !357}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !424, file: !14, line: 1982, baseType: !3702, size: 64, offset: 640)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !424, file: !14, line: 1983, baseType: !3715, size: 64, offset: 704)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!109, !3641, !395, !430, !357, !551}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !424, file: !14, line: 1985, baseType: !3719, size: 64, offset: 768)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!109, !3641, !395, !430, !395, !430, !7}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !424, file: !14, line: 1987, baseType: !3723, size: 64, offset: 832)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!109, !3641, !430, !3726}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3741, !3750, !3751, !3756, !3757, !3758}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3727, file: !14, line: 227, baseType: !7, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3727, file: !14, line: 228, baseType: !357, size: 16, offset: 32)
!3731 = !DIDerivedType(tag: DW_TAG_member, scope: !3727, file: !14, line: 241, baseType: !3732, size: 32, offset: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3727, file: !14, line: 241, size: 32, elements: !3733)
!3733 = !{!3734, !3735}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3732, file: !14, line: 242, baseType: !401, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3732, file: !14, line: 243, baseType: !3736, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3737, line: 16, baseType: !3738)
!3737 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3737, line: 14, size: 32, elements: !3739)
!3739 = !{!3740}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3738, file: !3737, line: 15, baseType: !406, size: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !3727, file: !14, line: 245, baseType: !3742, size: 32, offset: 96)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3727, file: !14, line: 245, size: 32, elements: !3743)
!3743 = !{!3744, !3745}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3742, file: !14, line: 246, baseType: !410, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3742, file: !14, line: 247, baseType: !3746, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3737, line: 20, baseType: !3747)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3737, line: 18, size: 32, elements: !3748)
!3748 = !{!3749}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3747, file: !3737, line: 19, baseType: !414, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3727, file: !14, line: 249, baseType: !556, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3727, file: !14, line: 250, baseType: !3752, size: 128, offset: 192)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1158, line: 13, size: 128, elements: !3753)
!3753 = !{!3754, !3755}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3752, file: !1158, line: 14, baseType: !1157, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3752, file: !1158, line: 15, baseType: !351, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3727, file: !14, line: 251, baseType: !3752, size: 128, offset: 320)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3727, file: !14, line: 252, baseType: !3752, size: 128, offset: 448)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3727, file: !14, line: 259, baseType: !1747, size: 64, offset: 576)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !424, file: !14, line: 1988, baseType: !3760, size: 64, offset: 896)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!109, !3641, !1227, !3763, !464, !7}
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3765, line: 22, size: 1280, elements: !3766)
!3765 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3766 = !{!3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3764, file: !3765, line: 23, baseType: !464, size: 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3764, file: !3765, line: 24, baseType: !357, size: 16, offset: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3764, file: !3765, line: 25, baseType: !7, size: 32, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3764, file: !3765, line: 26, baseType: !1869, size: 32, offset: 96)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3764, file: !3765, line: 27, baseType: !468, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3764, file: !3765, line: 28, baseType: !468, size: 64, offset: 192)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3764, file: !3765, line: 41, baseType: !468, size: 64, offset: 256)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3764, file: !3765, line: 42, baseType: !551, size: 32, offset: 320)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3764, file: !3765, line: 43, baseType: !551, size: 32, offset: 352)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3764, file: !3765, line: 44, baseType: !401, size: 32, offset: 384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3764, file: !3765, line: 45, baseType: !410, size: 32, offset: 416)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3764, file: !3765, line: 46, baseType: !556, size: 64, offset: 448)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3764, file: !3765, line: 47, baseType: !3752, size: 128, offset: 512)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3764, file: !3765, line: 48, baseType: !3752, size: 128, offset: 640)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3764, file: !3765, line: 49, baseType: !3752, size: 128, offset: 768)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3764, file: !3765, line: 50, baseType: !3752, size: 128, offset: 896)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3764, file: !3765, line: 51, baseType: !468, size: 64, offset: 1024)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3764, file: !3765, line: 52, baseType: !468, size: 64, offset: 1088)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3764, file: !3765, line: 53, baseType: !464, size: 32, offset: 1152)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3764, file: !3765, line: 54, baseType: !464, size: 32, offset: 1184)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3764, file: !3765, line: 55, baseType: !468, size: 64, offset: 1216)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !424, file: !14, line: 1990, baseType: !3789, size: 64, offset: 960)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!347, !430, !315, !362}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !424, file: !14, line: 1991, baseType: !3793, size: 64, offset: 1024)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!109, !395, !3796, !468, !468}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !424, file: !14, line: 1993, baseType: !3799, size: 64, offset: 1088)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!109, !395, !109}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !424, file: !14, line: 1994, baseType: !3803, size: 64, offset: 1152)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!109, !395, !430, !1747, !7, !357}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !424, file: !14, line: 1997, baseType: !3807, size: 64, offset: 1216)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!109, !3641, !395, !1747, !357}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !424, file: !14, line: 1999, baseType: !3811, size: 64, offset: 1280)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!418, !3641, !430, !109}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !424, file: !14, line: 2001, baseType: !3815, size: 64, offset: 1344)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!109, !3641, !430, !418, !109}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !424, file: !14, line: 2003, baseType: !3819, size: 64, offset: 1408)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!109, !3641, !430, !3822}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !424, file: !14, line: 2005, baseType: !3825, size: 64, offset: 1472)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!109, !430, !3822}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !424, file: !14, line: 2006, baseType: !3829, size: 64, offset: 1536)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!3832, !395}
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3834)
!3834 = !{!3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3833, file: !14, line: 3193, baseType: !2104, size: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3833, file: !14, line: 3194, baseType: !464, size: 32, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !396, file: !14, line: 655, baseType: !546, size: 64, offset: 448)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !396, file: !14, line: 656, baseType: !391, size: 64, offset: 512)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !396, file: !14, line: 659, baseType: !211, size: 64, offset: 576)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !396, file: !14, line: 663, baseType: !365, size: 64, offset: 640)
!3841 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !14, line: 671, baseType: !3842, size: 32, offset: 704)
!3842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !14, line: 671, size: 32, elements: !3843)
!3843 = !{!3844, !3846}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3842, file: !14, line: 672, baseType: !3845, size: 32)
!3845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3842, file: !14, line: 673, baseType: !7, size: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !396, file: !14, line: 675, baseType: !551, size: 32, offset: 736)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !396, file: !14, line: 676, baseType: !556, size: 64, offset: 768)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !396, file: !14, line: 677, baseType: !3752, size: 128, offset: 832)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !396, file: !14, line: 678, baseType: !3752, size: 128, offset: 960)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !396, file: !14, line: 679, baseType: !3752, size: 128, offset: 1088)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !396, file: !14, line: 680, baseType: !245, size: 32, offset: 1216)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !396, file: !14, line: 681, baseType: !285, size: 16, offset: 1248)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !396, file: !14, line: 682, baseType: !273, size: 8, offset: 1264)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !396, file: !14, line: 683, baseType: !273, size: 8, offset: 1272)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !396, file: !14, line: 684, baseType: !1305, size: 64, offset: 1280)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !396, file: !14, line: 691, baseType: !365, size: 64, offset: 1344)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !396, file: !14, line: 692, baseType: !1317, size: 320, offset: 1408)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !396, file: !14, line: 694, baseType: !365, size: 64, offset: 1728)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !396, file: !14, line: 695, baseType: !365, size: 64, offset: 1792)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !396, file: !14, line: 697, baseType: !901, size: 128, offset: 1856)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !396, file: !14, line: 698, baseType: !231, size: 128, offset: 1984)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !396, file: !14, line: 707, baseType: !231, size: 128, offset: 2112)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !396, file: !14, line: 708, baseType: !231, size: 128, offset: 2240)
!3865 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !14, line: 709, baseType: !3866, size: 128, offset: 2368)
!3866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !14, line: 709, size: 128, elements: !3867)
!3867 = !{!3868, !3869}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3866, file: !14, line: 710, baseType: !1025, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3866, file: !14, line: 711, baseType: !875, size: 128, align: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !396, file: !14, line: 713, baseType: !661, size: 64, offset: 2496)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !396, file: !14, line: 714, baseType: !661, size: 64, offset: 2560)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !396, file: !14, line: 715, baseType: !265, size: 32, offset: 2624)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !396, file: !14, line: 716, baseType: !265, size: 32, offset: 2656)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !396, file: !14, line: 717, baseType: !265, size: 32, offset: 2688)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !396, file: !14, line: 719, baseType: !265, size: 32, offset: 2720)
!3876 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !14, line: 721, baseType: !3877, size: 64, offset: 2752)
!3877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !14, line: 721, size: 64, elements: !3878)
!3878 = !{!3879, !3880}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3877, file: !14, line: 722, baseType: !2015, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3877, file: !14, line: 723, baseType: !1048, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !396, file: !14, line: 725, baseType: !3882, size: 64, offset: 2816)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !396, file: !14, line: 726, baseType: !392, size: 1536, align: 64, offset: 2880)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !396, file: !14, line: 727, baseType: !231, size: 128, offset: 4416)
!3886 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !14, line: 728, baseType: !3887, size: 64, offset: 4544)
!3887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !14, line: 728, size: 64, elements: !3888)
!3888 = !{!3889, !3890, !3893, !3894}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3887, file: !14, line: 729, baseType: !2476, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3887, file: !14, line: 730, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3887, file: !14, line: 731, baseType: !315, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3887, file: !14, line: 732, baseType: !7, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !396, file: !14, line: 735, baseType: !465, size: 32, offset: 4608)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !396, file: !14, line: 738, baseType: !465, size: 32, offset: 4640)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !396, file: !14, line: 739, baseType: !3578, size: 64, offset: 4672)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !396, file: !14, line: 750, baseType: !211, size: 64, offset: 4736)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !392, file: !14, line: 474, baseType: !2104, size: 128, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !392, file: !14, line: 475, baseType: !1317, size: 320, offset: 192)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !392, file: !14, line: 476, baseType: !1169, size: 32, offset: 512)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !392, file: !14, line: 477, baseType: !265, size: 32, offset: 544)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !392, file: !14, line: 482, baseType: !1603, size: 128, offset: 576)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !392, file: !14, line: 483, baseType: !365, size: 64, offset: 704)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !392, file: !14, line: 484, baseType: !365, size: 64, offset: 768)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !392, file: !14, line: 485, baseType: !3907, size: 64, offset: 832)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3909)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3910)
!3910 = !{!3911, !3915, !3985, !3989, !3993, !3999, !4003, !4007, !4012, !4016, !4020, !4024, !4025, !4029, !4033, !4037, !4042, !4046, !4053, !4054}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3909, file: !14, line: 405, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!109, !2263, !1060}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3909, file: !14, line: 406, baseType: !3916, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!109, !1747, !3919}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !52, line: 293, size: 1536, elements: !3921)
!3921 = !{!3922, !3952, !3966}
!3922 = !DIDerivedType(tag: DW_TAG_member, scope: !3920, file: !52, line: 295, baseType: !3923, size: 512)
!3923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3920, file: !52, line: 295, size: 512, elements: !3924)
!3924 = !{!3925, !3951}
!3925 = !DIDerivedType(tag: DW_TAG_member, scope: !3923, file: !52, line: 296, baseType: !3926, size: 448)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3923, file: !52, line: 296, size: 448, elements: !3927)
!3927 = !{!3928, !3929, !3938, !3939, !3940, !3949, !3950}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3926, file: !52, line: 298, baseType: !365, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !52, line: 299, baseType: !3930, size: 128, offset: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3926, file: !52, line: 299, size: 128, elements: !3931)
!3931 = !{!3932, !3933}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3930, file: !52, line: 300, baseType: !231, size: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !52, line: 302, baseType: !3934, size: 128)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3930, file: !52, line: 302, size: 128, elements: !3935)
!3935 = !{!3936, !3937}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3934, file: !52, line: 303, baseType: !211, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3934, file: !52, line: 305, baseType: !7, size: 32, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3926, file: !52, line: 310, baseType: !391, size: 64, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3926, file: !52, line: 311, baseType: !365, size: 64, offset: 256)
!3940 = !DIDerivedType(tag: DW_TAG_member, scope: !3926, file: !52, line: 312, baseType: !3941, size: 64, offset: 320)
!3941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3926, file: !52, line: 312, size: 64, elements: !3942)
!3942 = !{!3943, !3944}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3941, file: !52, line: 313, baseType: !211, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3941, file: !52, line: 314, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !52, line: 257, baseType: !3946)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 255, size: 64, elements: !3947)
!3947 = !{!3948}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3946, file: !52, line: 256, baseType: !365, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3926, file: !52, line: 316, baseType: !265, size: 32, offset: 384)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3926, file: !52, line: 317, baseType: !265, size: 32, offset: 416)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3923, file: !52, line: 323, baseType: !2264, size: 512, align: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, scope: !3920, file: !52, line: 325, baseType: !3953, size: 512, offset: 512)
!3953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3920, file: !52, line: 325, size: 512, elements: !3954)
!3954 = !{!3955, !3965}
!3955 = !DIDerivedType(tag: DW_TAG_member, scope: !3953, file: !52, line: 326, baseType: !3956, size: 320)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3953, file: !52, line: 326, size: 320, elements: !3957)
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963, !3964}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3956, file: !52, line: 327, baseType: !365, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3956, file: !52, line: 328, baseType: !365, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3956, file: !52, line: 329, baseType: !365, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3956, file: !52, line: 331, baseType: !265, size: 32, offset: 192)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3956, file: !52, line: 332, baseType: !265, size: 32, offset: 224)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3956, file: !52, line: 333, baseType: !265, size: 32, offset: 256)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3956, file: !52, line: 335, baseType: !7, size: 32, offset: 288)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3953, file: !52, line: 339, baseType: !2264, size: 512, align: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, scope: !3920, file: !52, line: 341, baseType: !3967, size: 512, offset: 1024)
!3967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3920, file: !52, line: 341, size: 512, elements: !3968)
!3968 = !{!3969, !3978, !3984}
!3969 = !DIDerivedType(tag: DW_TAG_member, scope: !3967, file: !52, line: 342, baseType: !3970, size: 384)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3967, file: !52, line: 342, size: 384, elements: !3971)
!3971 = !{!3972, !3973, !3974, !3975, !3976, !3977}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3970, file: !52, line: 343, baseType: !365, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3970, file: !52, line: 344, baseType: !365, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3970, file: !52, line: 346, baseType: !211, size: 64, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3970, file: !52, line: 347, baseType: !211, size: 64, offset: 192)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3970, file: !52, line: 348, baseType: !211, size: 64, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3970, file: !52, line: 349, baseType: !211, size: 64, offset: 320)
!3978 = !DIDerivedType(tag: DW_TAG_member, scope: !3967, file: !52, line: 352, baseType: !3979, size: 256)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3967, file: !52, line: 352, size: 256, elements: !3980)
!3980 = !{!3981, !3982, !3983}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3979, file: !52, line: 353, baseType: !365, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3979, file: !52, line: 354, baseType: !365, size: 64, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3979, file: !52, line: 356, baseType: !231, size: 128, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3967, file: !52, line: 359, baseType: !2264, size: 512, align: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3909, file: !14, line: 409, baseType: !3986, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!109, !391, !1060}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3909, file: !14, line: 412, baseType: !3990, size: 64, offset: 192)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!735, !391, !3919}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3909, file: !14, line: 414, baseType: !3994, size: 64, offset: 256)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !3997}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3909, file: !14, line: 416, baseType: !4000, size: 64, offset: 320)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!109, !1747, !391, !556, !7, !3327, !2491}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3909, file: !14, line: 419, baseType: !4004, size: 64, offset: 384)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!109, !1747, !391, !556, !7, !7, !2263, !211}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3909, file: !14, line: 424, baseType: !4008, size: 64, offset: 448)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!4011, !391, !4011}
!4011 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !232, line: 131, baseType: !468)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3909, file: !14, line: 425, baseType: !4013, size: 64, offset: 512)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{null, !3919, !362, !362}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3909, file: !14, line: 426, baseType: !4017, size: 64, offset: 576)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!735, !3919, !1169}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3909, file: !14, line: 427, baseType: !4021, size: 64, offset: 640)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{null, !3919}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3909, file: !14, line: 428, baseType: !2034, size: 64, offset: 704)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3909, file: !14, line: 433, baseType: !4026, size: 64, offset: 768)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!109, !391, !3919, !3919, !74}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3909, file: !14, line: 435, baseType: !4030, size: 64, offset: 832)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!109, !3919}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3909, file: !14, line: 436, baseType: !4034, size: 64, offset: 896)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!735, !3919, !362, !362}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3909, file: !14, line: 438, baseType: !4038, size: 64, offset: 960)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{null, !3919, !4041, !4041}
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3909, file: !14, line: 439, baseType: !4043, size: 64, offset: 1024)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!109, !391, !2263}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3909, file: !14, line: 442, baseType: !4047, size: 64, offset: 1088)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!109, !4050, !1747, !4052}
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3909, file: !14, line: 444, baseType: !2483, size: 64, offset: 1152)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3909, file: !14, line: 445, baseType: !4055, size: 64, offset: 1216)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!109, !2037, !2059}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !14, line: 486, baseType: !365, size: 64, offset: 896)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !392, file: !14, line: 487, baseType: !1317, size: 320, offset: 960)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !392, file: !14, line: 488, baseType: !2526, size: 32, offset: 1280)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !392, file: !14, line: 489, baseType: !245, size: 32, offset: 1312)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !392, file: !14, line: 490, baseType: !231, size: 128, offset: 1344)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !392, file: !14, line: 491, baseType: !211, size: 64, offset: 1472)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !382, file: !341, line: 180, baseType: !4065, size: 64, offset: 320)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!347, !1747, !238, !381, !315, !556, !362}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !382, file: !341, line: 182, baseType: !4065, size: 64, offset: 384)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !382, file: !341, line: 184, baseType: !4070, size: 64, offset: 448)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!109, !1747, !238, !381, !2154}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !370, file: !341, line: 90, baseType: !4074, size: 64, offset: 192)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !370, file: !341, line: 91, baseType: !4076, size: 64, offset: 256)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !331, file: !224, line: 120, baseType: !4078, size: 64, offset: 192)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!4081, !298}
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4083)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4084)
!4084 = !{!4085, !4086, !4090, !4094, !4100, !4104}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4083, file: !82, line: 40, baseType: !81, size: 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4083, file: !82, line: 41, baseType: !4087, size: 64, offset: 64)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!735}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4083, file: !82, line: 42, baseType: !4091, size: 64, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!211}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4083, file: !82, line: 43, baseType: !4095, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!2615, !4098}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4083, file: !82, line: 44, baseType: !4101, size: 64, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!2615}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4083, file: !82, line: 45, baseType: !698, size: 64, offset: 320)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !331, file: !224, line: 121, baseType: !4106, size: 64, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!2615, !298}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !331, file: !224, line: 122, baseType: !4110, size: 64, offset: 320)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{null, !298, !4113, !4114}
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !223, file: !224, line: 70, baseType: !4116, size: 64, offset: 384)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4118, line: 190, size: 1152, elements: !4119)
!4118 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4119 = !{!4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4211, !4212, !4213, !4214, !4215, !4218}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4117, file: !4118, line: 191, baseType: !265, size: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4117, file: !4118, line: 192, baseType: !265, size: 32, offset: 32)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4117, file: !4118, line: 202, baseType: !4116, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4117, file: !4118, line: 203, baseType: !227, size: 64, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4117, file: !4118, line: 205, baseType: !767, size: 192, align: 64, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4117, file: !4118, line: 207, baseType: !2615, size: 64, offset: 384)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4117, file: !4118, line: 208, baseType: !7, size: 32, offset: 448)
!4127 = !DIDerivedType(tag: DW_TAG_member, scope: !4117, file: !4118, line: 209, baseType: !4128, size: 256, offset: 512)
!4128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4117, file: !4118, line: 209, size: 256, elements: !4129)
!4129 = !{!4130, !4139, !4143}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4128, file: !4118, line: 210, baseType: !4131, size: 256)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4118, line: 153, size: 256, elements: !4132)
!4132 = !{!4133, !4134, !4135, !4138}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4131, file: !4118, line: 154, baseType: !365, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4131, file: !4118, line: 156, baseType: !1606, size: 64, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4131, file: !4118, line: 162, baseType: !4136, size: 64, offset: 128)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4118, line: 162, flags: DIFlagFwdDecl)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4131, file: !4118, line: 167, baseType: !365, size: 64, offset: 192)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4128, file: !4118, line: 211, baseType: !4140, size: 64)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4118, line: 170, size: 64, elements: !4141)
!4141 = !{!4142}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4140, file: !4118, line: 171, baseType: !4116, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4128, file: !4118, line: 212, baseType: !4144, size: 256)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4118, line: 174, size: 256, elements: !4145)
!4145 = !{!4146, !4206, !4209, !4210}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4144, file: !4118, line: 175, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4149)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4118, line: 271, size: 768, elements: !4150)
!4150 = !{!4151, !4171, !4175, !4179, !4183, !4187, !4191, !4195, !4196, !4197, !4198, !4202}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4149, file: !4118, line: 276, baseType: !4152, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!109, !4155}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4118, line: 251, size: 1216, elements: !4157)
!4157 = !{!4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4156, file: !4118, line: 253, baseType: !4116, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4156, file: !4118, line: 254, baseType: !1747, size: 64, offset: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4156, file: !4118, line: 255, baseType: !1097, size: 64, offset: 128)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4156, file: !4118, line: 256, baseType: !211, size: 64, offset: 192)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4156, file: !4118, line: 259, baseType: !655, size: 256, offset: 256)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4156, file: !4118, line: 260, baseType: !655, size: 256, offset: 512)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4156, file: !4118, line: 261, baseType: !109, size: 32, offset: 768)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4156, file: !4118, line: 262, baseType: !231, size: 128, offset: 832)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4156, file: !4118, line: 263, baseType: !315, size: 64, offset: 960)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4156, file: !4118, line: 265, baseType: !362, size: 64, offset: 1024)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4156, file: !4118, line: 266, baseType: !735, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4156, file: !4118, line: 267, baseType: !735, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4156, file: !4118, line: 268, baseType: !2199, size: 64, offset: 1152)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4149, file: !4118, line: 277, baseType: !4172, size: 64, offset: 64)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !4155}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4149, file: !4118, line: 290, baseType: !4176, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!109, !1097, !211}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4149, file: !4118, line: 292, baseType: !4180, size: 64, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!211, !1097, !2028}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4149, file: !4118, line: 293, baseType: !4184, size: 64, offset: 256)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!211, !1097, !211, !2028}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4149, file: !4118, line: 294, baseType: !4188, size: 64, offset: 320)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{null, !1097, !211}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4149, file: !4118, line: 296, baseType: !4192, size: 64, offset: 384)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!347, !4155, !315, !362, !556}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4149, file: !4118, line: 306, baseType: !362, size: 64, offset: 448)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4149, file: !4118, line: 313, baseType: !735, size: 8, offset: 512)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4149, file: !4118, line: 314, baseType: !4192, size: 64, offset: 576)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4149, file: !4118, line: 317, baseType: !4199, size: 64, offset: 640)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!2141, !4155, !2143}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4149, file: !4118, line: 320, baseType: !4203, size: 64, offset: 704)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!109, !4155, !2154}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4144, file: !4118, line: 176, baseType: !4207, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4118, line: 35, flags: DIFlagFwdDecl)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4144, file: !4118, line: 177, baseType: !556, size: 64, offset: 128)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4144, file: !4118, line: 178, baseType: !4116, size: 64, offset: 192)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4117, file: !4118, line: 215, baseType: !211, size: 64, offset: 768)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4117, file: !4118, line: 221, baseType: !468, size: 64, offset: 832)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4117, file: !4118, line: 223, baseType: !285, size: 16, offset: 896)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4117, file: !4118, line: 224, baseType: !357, size: 16, offset: 912)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4117, file: !4118, line: 225, baseType: !4216, size: 64, offset: 960)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4118, line: 36, flags: DIFlagFwdDecl)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4117, file: !4118, line: 227, baseType: !875, size: 128, align: 64, offset: 1024)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !223, file: !224, line: 71, baseType: !4220, size: 32, offset: 448)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4221, line: 19, size: 32, elements: !4222)
!4221 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4222 = !{!4223}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4220, file: !4221, line: 20, baseType: !1437, size: 32)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !223, file: !224, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !223, file: !224, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !223, file: !224, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !223, file: !224, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !223, file: !224, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !220, file: !94, line: 707, baseType: !219, size: 64, offset: 512)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !220, file: !94, line: 709, baseType: !4231, size: 64, offset: 576)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !220, file: !94, line: 711, baseType: !227, size: 64, offset: 640)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !220, file: !94, line: 712, baseType: !4235, size: 64, offset: 704)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4237)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4238)
!4238 = !{!4239, !4240, !4241, !4247, !4252, !4256}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4237, file: !94, line: 90, baseType: !227, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4237, file: !94, line: 91, baseType: !367, size: 64, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4237, file: !94, line: 92, baseType: !4242, size: 64, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!109, !4245, !310}
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4237, file: !94, line: 93, baseType: !4248, size: 64, offset: 192)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!315, !4245, !4251, !4113, !4114}
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4237, file: !94, line: 95, baseType: !4253, size: 64, offset: 256)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{null, !219}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4237, file: !94, line: 97, baseType: !4257, size: 64, offset: 320)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4259)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4260)
!4260 = !{!4261, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4259, file: !101, line: 287, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!109, !219}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4259, file: !101, line: 288, baseType: !4253, size: 64, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4259, file: !101, line: 289, baseType: !4262, size: 64, offset: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4259, file: !101, line: 290, baseType: !4262, size: 64, offset: 192)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4259, file: !101, line: 291, baseType: !4262, size: 64, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4259, file: !101, line: 292, baseType: !4262, size: 64, offset: 320)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4259, file: !101, line: 293, baseType: !4262, size: 64, offset: 384)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4259, file: !101, line: 294, baseType: !4262, size: 64, offset: 448)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4259, file: !101, line: 295, baseType: !4262, size: 64, offset: 512)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4259, file: !101, line: 296, baseType: !4262, size: 64, offset: 576)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4259, file: !101, line: 297, baseType: !4262, size: 64, offset: 640)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4259, file: !101, line: 298, baseType: !4262, size: 64, offset: 704)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4259, file: !101, line: 299, baseType: !4262, size: 64, offset: 768)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4259, file: !101, line: 300, baseType: !4262, size: 64, offset: 832)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4259, file: !101, line: 301, baseType: !4262, size: 64, offset: 896)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4259, file: !101, line: 302, baseType: !4262, size: 64, offset: 960)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4259, file: !101, line: 303, baseType: !4262, size: 64, offset: 1024)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4259, file: !101, line: 304, baseType: !4262, size: 64, offset: 1088)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4259, file: !101, line: 305, baseType: !4262, size: 64, offset: 1152)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4259, file: !101, line: 306, baseType: !4262, size: 64, offset: 1216)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4259, file: !101, line: 307, baseType: !4262, size: 64, offset: 1280)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4259, file: !101, line: 308, baseType: !4262, size: 64, offset: 1344)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4259, file: !101, line: 309, baseType: !4262, size: 64, offset: 1408)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !220, file: !94, line: 714, baseType: !4288, size: 64, offset: 768)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4291, line: 80, size: 1344, elements: !4292)
!4291 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4292 = !{!4293, !4294, !4295, !4296, !4297, !4298, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4371}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4290, file: !4291, line: 81, baseType: !227, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4290, file: !4291, line: 82, baseType: !227, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4290, file: !4291, line: 83, baseType: !367, size: 64, offset: 128)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4290, file: !4291, line: 84, baseType: !367, size: 64, offset: 192)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4290, file: !4291, line: 85, baseType: !367, size: 64, offset: 256)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4290, file: !4291, line: 87, baseType: !4299, size: 64, offset: 320)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!109, !219, !4302}
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4304)
!4304 = !{!4305, !4306, !4307, !4308, !4309, !4310, !4311, !4324, !4334, !4335, !4336, !4337, !4338, !4346, !4347, !4348, !4349, !4350, !4351}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4303, file: !88, line: 97, baseType: !227, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4303, file: !88, line: 98, baseType: !4288, size: 64, offset: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4303, file: !88, line: 100, baseType: !584, size: 64, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4303, file: !88, line: 101, baseType: !227, size: 64, offset: 192)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4303, file: !88, line: 103, baseType: !735, size: 8, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4303, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4303, file: !88, line: 106, baseType: !4312, size: 64, offset: 320)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4314)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4315, line: 282, size: 1600, elements: !4316)
!4315 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4316 = !{!4317, !4318, !4319, !4323}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4314, file: !4315, line: 283, baseType: !3581, size: 256)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4314, file: !4315, line: 284, baseType: !3581, size: 256, offset: 256)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4314, file: !4315, line: 285, baseType: !4320, size: 1024, offset: 512)
!4320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 1024, elements: !4321)
!4321 = !{!4322}
!4322 = !DISubrange(count: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4314, file: !4315, line: 286, baseType: !2615, size: 64, offset: 1536)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4303, file: !88, line: 107, baseType: !4325, size: 64, offset: 384)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4327)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4315, line: 217, size: 256, elements: !4328)
!4328 = !{!4329, !4330, !4332, !4333}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4327, file: !4315, line: 218, baseType: !3588, size: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4327, file: !4315, line: 219, baseType: !4331, size: 64, offset: 128)
!4331 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4315, line: 15, baseType: !365)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4327, file: !4315, line: 220, baseType: !465, size: 32, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4327, file: !4315, line: 221, baseType: !465, size: 32, offset: 224)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4303, file: !88, line: 109, baseType: !4262, size: 64, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4303, file: !88, line: 110, baseType: !4253, size: 64, offset: 512)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4303, file: !88, line: 111, baseType: !4262, size: 64, offset: 576)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4303, file: !88, line: 112, baseType: !4253, size: 64, offset: 640)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4303, file: !88, line: 113, baseType: !4339, size: 64, offset: 704)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!109, !219, !4342}
!4342 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4343)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4344)
!4344 = !{!4345}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4343, file: !101, line: 59, baseType: !109, size: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4303, file: !88, line: 114, baseType: !4262, size: 64, offset: 768)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4303, file: !88, line: 115, baseType: !367, size: 64, offset: 832)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4303, file: !88, line: 116, baseType: !367, size: 64, offset: 896)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4303, file: !88, line: 118, baseType: !4257, size: 64, offset: 960)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4303, file: !88, line: 119, baseType: !4253, size: 64, offset: 1024)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4303, file: !88, line: 121, baseType: !4352, size: 64, offset: 1088)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4290, file: !4291, line: 88, baseType: !4242, size: 64, offset: 384)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4290, file: !4291, line: 89, baseType: !4262, size: 64, offset: 448)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4290, file: !4291, line: 90, baseType: !4253, size: 64, offset: 512)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4290, file: !4291, line: 91, baseType: !4253, size: 64, offset: 576)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4290, file: !4291, line: 92, baseType: !4253, size: 64, offset: 640)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4290, file: !4291, line: 94, baseType: !4262, size: 64, offset: 704)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4290, file: !4291, line: 95, baseType: !4262, size: 64, offset: 768)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4290, file: !4291, line: 97, baseType: !4339, size: 64, offset: 832)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4290, file: !4291, line: 98, baseType: !4262, size: 64, offset: 896)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4290, file: !4291, line: 100, baseType: !4262, size: 64, offset: 960)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4290, file: !4291, line: 102, baseType: !4262, size: 64, offset: 1024)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4290, file: !4291, line: 103, baseType: !4253, size: 64, offset: 1088)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4290, file: !4291, line: 105, baseType: !4257, size: 64, offset: 1152)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4290, file: !4291, line: 107, baseType: !4368, size: 64, offset: 1216)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4370)
!4370 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4291, line: 107, flags: DIFlagFwdDecl)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4290, file: !4291, line: 109, baseType: !735, size: 8, offset: 1280)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !220, file: !94, line: 715, baseType: !4302, size: 64, offset: 832)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !220, file: !94, line: 717, baseType: !211, size: 64, offset: 896)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !220, file: !94, line: 719, baseType: !211, size: 64, offset: 960)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !220, file: !94, line: 721, baseType: !655, size: 256, offset: 1024)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !220, file: !94, line: 725, baseType: !4377, size: 448, offset: 1280)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4378)
!4378 = !{!4379, !4380, !4381, !4382}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4377, file: !94, line: 518, baseType: !231, size: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4377, file: !94, line: 519, baseType: !231, size: 128, offset: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4377, file: !94, line: 520, baseType: !231, size: 128, offset: 256)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4377, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !220, file: !94, line: 726, baseType: !4384, size: 2496, offset: 1728)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4385)
!4385 = !{!4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4468, !4472}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4384, file: !101, line: 664, baseType: !4342, size: 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4384, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4384, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4384, file: !101, line: 667, baseType: !735, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4384, file: !101, line: 668, baseType: !735, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4384, file: !101, line: 669, baseType: !735, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4384, file: !101, line: 670, baseType: !735, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4384, file: !101, line: 671, baseType: !735, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4384, file: !101, line: 672, baseType: !735, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4384, file: !101, line: 673, baseType: !735, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4384, file: !101, line: 674, baseType: !735, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4384, file: !101, line: 675, baseType: !464, size: 32, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4384, file: !101, line: 676, baseType: !245, size: 32, offset: 96)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4384, file: !101, line: 678, baseType: !231, size: 128, offset: 128)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4384, file: !101, line: 679, baseType: !604, size: 256, offset: 256)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4384, file: !101, line: 680, baseType: !4402, size: 64, offset: 512)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4404, line: 43, size: 1536, elements: !4405)
!4404 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4405 = !{!4406, !4407, !4408, !4409, !4410, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4403, file: !4404, line: 44, baseType: !227, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4403, file: !4404, line: 45, baseType: !109, size: 32, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4403, file: !4404, line: 46, baseType: !231, size: 128, offset: 128)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4403, file: !4404, line: 47, baseType: !245, size: 32, offset: 256)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4403, file: !4404, line: 48, baseType: !4411, size: 64, offset: 320)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4403, file: !4404, line: 49, baseType: !897, size: 320, offset: 384)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4403, file: !4404, line: 50, baseType: !365, size: 64, offset: 704)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4403, file: !4404, line: 51, baseType: !1552, size: 64, offset: 768)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4403, file: !4404, line: 52, baseType: !1552, size: 64, offset: 832)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4403, file: !4404, line: 53, baseType: !1552, size: 64, offset: 896)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4403, file: !4404, line: 54, baseType: !1552, size: 64, offset: 960)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4403, file: !4404, line: 55, baseType: !1552, size: 64, offset: 1024)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4403, file: !4404, line: 56, baseType: !365, size: 64, offset: 1088)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4403, file: !4404, line: 57, baseType: !365, size: 64, offset: 1152)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4403, file: !4404, line: 58, baseType: !365, size: 64, offset: 1216)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4403, file: !4404, line: 59, baseType: !365, size: 64, offset: 1280)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4403, file: !4404, line: 60, baseType: !365, size: 64, offset: 1344)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4403, file: !4404, line: 61, baseType: !219, size: 64, offset: 1408)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4403, file: !4404, line: 62, baseType: !735, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4403, file: !4404, line: 63, baseType: !735, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4384, file: !101, line: 681, baseType: !735, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4384, file: !101, line: 682, baseType: !735, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4384, file: !101, line: 683, baseType: !735, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4384, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4384, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4384, file: !101, line: 690, baseType: !1544, size: 512, offset: 640)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4384, file: !101, line: 691, baseType: !468, size: 64, offset: 1152)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4384, file: !101, line: 692, baseType: !915, size: 256, offset: 1216)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4384, file: !101, line: 693, baseType: !1410, size: 192, offset: 1472)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4384, file: !101, line: 694, baseType: !4411, size: 64, offset: 1664)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4384, file: !101, line: 695, baseType: !265, size: 32, offset: 1728)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4384, file: !101, line: 696, baseType: !265, size: 32, offset: 1760)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4384, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4384, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4384, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4384, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4384, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4384, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4384, file: !101, line: 703, baseType: !735, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4384, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4384, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4384, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4384, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4384, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4384, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4384, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4384, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4384, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4384, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4384, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4384, file: !101, line: 715, baseType: !468, size: 64, offset: 2048)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4384, file: !101, line: 716, baseType: !468, size: 64, offset: 2112)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4384, file: !101, line: 717, baseType: !468, size: 64, offset: 2176)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4384, file: !101, line: 718, baseType: !468, size: 64, offset: 2240)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4384, file: !101, line: 720, baseType: !4463, size: 64, offset: 2304)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4465)
!4465 = !{!4466, !4467}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4464, file: !101, line: 633, baseType: !245, size: 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4464, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4384, file: !101, line: 721, baseType: !4469, size: 64, offset: 2368)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{null, !219, !651}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4384, file: !101, line: 722, baseType: !4473, size: 64, offset: 2432)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !220, file: !94, line: 727, baseType: !4476, size: 64, offset: 4224)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4478)
!4478 = !{!4479, !4480, !4481, !4485, !4486, !4487}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4477, file: !101, line: 743, baseType: !4259, size: 1472)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4477, file: !101, line: 744, baseType: !4262, size: 64, offset: 1472)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4477, file: !101, line: 745, baseType: !4482, size: 64, offset: 1536)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{null, !219, !735}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4477, file: !101, line: 746, baseType: !4262, size: 64, offset: 1600)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4477, file: !101, line: 747, baseType: !4253, size: 64, offset: 1664)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4477, file: !101, line: 748, baseType: !4253, size: 64, offset: 1728)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !220, file: !94, line: 736, baseType: !4489, size: 128, offset: 4288)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4490)
!4490 = !{!4491, !4495}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4489, file: !94, line: 531, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4494, line: 13, flags: DIFlagFwdDecl)
!4494 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4489, file: !94, line: 532, baseType: !4496, size: 64, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !220, file: !94, line: 738, baseType: !4499, size: 64, offset: 4416)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4501)
!4501 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !220, file: !94, line: 740, baseType: !4503, size: 64, offset: 4480)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !220, file: !94, line: 741, baseType: !468, size: 64, offset: 4544)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !220, file: !94, line: 746, baseType: !468, size: 64, offset: 4608)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !220, file: !94, line: 747, baseType: !4507, size: 64, offset: 4672)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4509)
!4509 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !220, file: !94, line: 749, baseType: !4511, size: 64, offset: 4736)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4513)
!4513 = !{!4514, !4515, !4516}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4512, file: !94, line: 433, baseType: !7, size: 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4512, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4512, file: !94, line: 435, baseType: !365, size: 64, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !220, file: !94, line: 751, baseType: !231, size: 128, offset: 4800)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !220, file: !94, line: 762, baseType: !4519, size: 64, offset: 4928)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !220, file: !94, line: 770, baseType: !4522, offset: 4992)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4523, line: 5, elements: !944)
!4523 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !220, file: !94, line: 772, baseType: !4525, size: 64, offset: 4992)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4527, line: 18, flags: DIFlagFwdDecl)
!4527 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !220, file: !94, line: 773, baseType: !4529, size: 64, offset: 5056)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4531, line: 41, size: 512, elements: !4532)
!4531 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4532 = !{!4533, !4534, !4627, !4628, !4629, !4630}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4530, file: !4531, line: 42, baseType: !4529, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4530, file: !4531, line: 43, baseType: !4535, size: 64, offset: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4537)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4531, line: 125, size: 1408, elements: !4538)
!4538 = !{!4539, !4543, !4547, !4553, !4557, !4558, !4562, !4566, !4570, !4574, !4578, !4579, !4583, !4587, !4591, !4602, !4603, !4604, !4605, !4615, !4619, !4623}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4537, file: !4531, line: 126, baseType: !4540, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!4529, !4529}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4537, file: !4531, line: 127, baseType: !4544, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{null, !4529}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4537, file: !4531, line: 128, baseType: !4548, size: 64, offset: 128)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!735, !4551}
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4530)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4537, file: !4531, line: 129, baseType: !4554, size: 64, offset: 192)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!2615, !4551, !4245}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4537, file: !4531, line: 131, baseType: !4548, size: 64, offset: 256)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4537, file: !4531, line: 133, baseType: !4559, size: 64, offset: 320)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!116, !4551}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4537, file: !4531, line: 134, baseType: !4563, size: 64, offset: 384)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!735, !4551, !227}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4537, file: !4531, line: 136, baseType: !4567, size: 64, offset: 448)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!109, !4551, !227, !7, !211, !362}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4537, file: !4531, line: 141, baseType: !4571, size: 64, offset: 512)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!109, !4551, !227, !992, !362}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4537, file: !4531, line: 144, baseType: !4575, size: 64, offset: 576)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!227, !4551}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4537, file: !4531, line: 145, baseType: !4575, size: 64, offset: 640)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4537, file: !4531, line: 146, baseType: !4580, size: 64, offset: 704)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!4529, !4551}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4537, file: !4531, line: 148, baseType: !4584, size: 64, offset: 768)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!4529, !4551, !4529}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4537, file: !4531, line: 151, baseType: !4588, size: 64, offset: 832)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!4529, !4551, !227}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4537, file: !4531, line: 153, baseType: !4592, size: 64, offset: 896)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!109, !4551, !227, !227, !7, !7, !4595}
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4531, line: 94, size: 640, elements: !4597)
!4597 = !{!4598, !4599, !4600}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4596, file: !4531, line: 95, baseType: !4529, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4596, file: !4531, line: 96, baseType: !7, size: 32, offset: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4596, file: !4531, line: 97, baseType: !4601, size: 512, offset: 128)
!4601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 512, elements: !1587)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4537, file: !4531, line: 158, baseType: !4584, size: 64, offset: 960)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4537, file: !4531, line: 161, baseType: !4580, size: 64, offset: 1024)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4537, file: !4531, line: 163, baseType: !4540, size: 64, offset: 1088)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4537, file: !4531, line: 164, baseType: !4606, size: 64, offset: 1152)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!109, !4551, !4609}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4531, line: 73, size: 128, elements: !4611)
!4611 = !{!4612, !4613, !4614}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4610, file: !4531, line: 74, baseType: !7, size: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4610, file: !4531, line: 75, baseType: !7, size: 32, offset: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4610, file: !4531, line: 76, baseType: !4551, size: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4537, file: !4531, line: 166, baseType: !4616, size: 64, offset: 1216)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!211, !4529, !109}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4537, file: !4531, line: 167, baseType: !4620, size: 64, offset: 1280)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!109, !4551, !7}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4537, file: !4531, line: 168, baseType: !4624, size: 64, offset: 1344)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!109, !4529}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4530, file: !4531, line: 44, baseType: !219, size: 64, offset: 128)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4530, file: !4531, line: 45, baseType: !231, size: 128, offset: 192)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4530, file: !4531, line: 46, baseType: !231, size: 128, offset: 320)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4530, file: !4531, line: 47, baseType: !273, size: 8, offset: 448)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !220, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !220, file: !94, line: 778, baseType: !551, size: 32, offset: 5152)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !220, file: !94, line: 779, baseType: !464, size: 32, offset: 5184)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !220, file: !94, line: 781, baseType: !245, size: 32, offset: 5216)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !220, file: !94, line: 782, baseType: !231, size: 128, offset: 5248)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !220, file: !94, line: 784, baseType: !4637, size: 64, offset: 5376)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4639)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4640, line: 52, size: 768, elements: !4641)
!4640 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4641 = !{!4642, !4643, !4644, !4645, !4646, !4650, !4654, !4655, !4656, !4657, !4661, !4665}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4639, file: !4640, line: 53, baseType: !227, size: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4639, file: !4640, line: 55, baseType: !367, size: 64, offset: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4639, file: !4640, line: 56, baseType: !367, size: 64, offset: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4639, file: !4640, line: 58, baseType: !4242, size: 64, offset: 192)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4639, file: !4640, line: 59, baseType: !4647, size: 64, offset: 256)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!315, !4245, !4251}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4639, file: !4640, line: 61, baseType: !4651, size: 64, offset: 320)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{null, !4637}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4639, file: !4640, line: 62, baseType: !4253, size: 64, offset: 384)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4639, file: !4640, line: 64, baseType: !4262, size: 64, offset: 448)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4639, file: !4640, line: 66, baseType: !4081, size: 64, offset: 512)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4639, file: !4640, line: 67, baseType: !4658, size: 64, offset: 576)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!2615, !4245}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4639, file: !4640, line: 69, baseType: !4662, size: 64, offset: 640)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{null, !4245, !4113, !4114}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4639, file: !4640, line: 71, baseType: !4257, size: 64, offset: 704)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !220, file: !94, line: 785, baseType: !367, size: 64, offset: 5440)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !220, file: !94, line: 787, baseType: !4253, size: 64, offset: 5504)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !220, file: !94, line: 788, baseType: !4669, size: 64, offset: 5568)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !220, file: !94, line: 789, baseType: !4672, size: 64, offset: 5632)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !220, file: !94, line: 791, baseType: !4675, size: 64, offset: 5696)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4677)
!4677 = !{!4678, !4679, !4680, !4681, !4682}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4676, file: !94, line: 598, baseType: !122, size: 32)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4676, file: !94, line: 599, baseType: !131, size: 32, offset: 32)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4676, file: !94, line: 600, baseType: !136, size: 32, offset: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4676, file: !94, line: 601, baseType: !735, size: 8, offset: 96)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4676, file: !94, line: 602, baseType: !735, size: 8, offset: 104)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !220, file: !94, line: 793, baseType: !141, size: 32, offset: 5760)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !220, file: !94, line: 795, baseType: !735, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !220, file: !94, line: 796, baseType: !735, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !220, file: !94, line: 797, baseType: !735, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !220, file: !94, line: 798, baseType: !735, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !220, file: !94, line: 799, baseType: !735, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !216, file: !176, line: 453, baseType: !219, size: 64, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !216, file: !176, line: 454, baseType: !109, size: 32, offset: 128)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !216, file: !176, line: 455, baseType: !227, size: 64, offset: 192)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !216, file: !176, line: 456, baseType: !273, size: 8, offset: 256)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !216, file: !176, line: 460, baseType: !273, size: 8, offset: 264)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !216, file: !176, line: 461, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !216, file: !176, line: 462, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !216, file: !176, line: 463, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !216, file: !176, line: 468, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !216, file: !176, line: 469, baseType: !7, size: 32, offset: 288)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !216, file: !176, line: 471, baseType: !109, size: 32, offset: 320)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !216, file: !176, line: 473, baseType: !655, size: 256, offset: 384)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !216, file: !176, line: 475, baseType: !4702, size: 128, offset: 640)
!4702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !176, line: 444, size: 128, elements: !4703)
!4703 = !{!4704}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !4702, file: !176, line: 445, baseType: !4705, size: 128)
!4705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 128, elements: !774)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !216, file: !176, line: 476, baseType: !4707, size: 64, offset: 768)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !176, line: 652, size: 10816, elements: !4709)
!4709 = !{!4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4729, !4730, !4732, !4733, !4735, !4776, !4777, !4794, !4864, !4948, !4949, !4951, !4952, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4991, !4998, !4999, !5000, !5001}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !4708, file: !176, line: 653, baseType: !109, size: 32)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !4708, file: !176, line: 654, baseType: !2792, size: 128, offset: 32)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !4708, file: !176, line: 655, baseType: !464, size: 32, offset: 160)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4708, file: !176, line: 656, baseType: !147, size: 32, offset: 192)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4708, file: !176, line: 657, baseType: !159, size: 32, offset: 224)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !4708, file: !176, line: 658, baseType: !7, size: 32, offset: 256)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !4708, file: !176, line: 659, baseType: !7, size: 32, offset: 288)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_rate", scope: !4708, file: !176, line: 660, baseType: !168, size: 32, offset: 320)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !4708, file: !176, line: 662, baseType: !4719, size: 64, offset: 384)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !200, line: 558, size: 640, elements: !4721)
!4721 = !{!4722, !4723, !4724, !4725, !4726, !4727, !4728}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !4720, file: !200, line: 559, baseType: !4707, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !4720, file: !200, line: 560, baseType: !109, size: 32, offset: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "think_time", scope: !4720, file: !200, line: 561, baseType: !7, size: 32, offset: 96)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4720, file: !200, line: 562, baseType: !211, size: 64, offset: 128)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4720, file: !200, line: 565, baseType: !245, size: 32, offset: 192)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "clear_list", scope: !4720, file: !200, line: 566, baseType: !231, size: 128, offset: 256)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "clear_work", scope: !4720, file: !200, line: 567, baseType: !915, size: 256, offset: 384)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !4708, file: !176, line: 663, baseType: !109, size: 32, offset: 448)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !4708, file: !176, line: 665, baseType: !4731, size: 64, offset: 480)
!4731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !774)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4708, file: !176, line: 667, baseType: !4707, size: 64, offset: 576)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4708, file: !176, line: 668, baseType: !4734, size: 64, offset: 640)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !4708, file: !176, line: 669, baseType: !4736, size: 640, offset: 704)
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !176, line: 66, size: 640, elements: !4737)
!4737 = !{!4738, !4750, !4758, !4766, !4767, !4768, !4771, !4773, !4774, !4775}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4736, file: !176, line: 67, baseType: !4739, size: 72)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !148, line: 407, size: 72, elements: !4740)
!4740 = !{!4741, !4742, !4743, !4744, !4745, !4747, !4748, !4749}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4739, file: !148, line: 408, baseType: !275, size: 8)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4739, file: !148, line: 409, baseType: !275, size: 8, offset: 8)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !4739, file: !148, line: 411, baseType: !275, size: 8, offset: 16)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4739, file: !148, line: 412, baseType: !275, size: 8, offset: 24)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !4739, file: !148, line: 413, baseType: !4746, size: 16, offset: 32)
!4746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2142, line: 36, baseType: !284)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !4739, file: !148, line: 414, baseType: !275, size: 8, offset: 48)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !4739, file: !148, line: 418, baseType: !275, size: 8, offset: 56)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !4739, file: !148, line: 419, baseType: !275, size: 8, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !4736, file: !176, line: 68, baseType: !4751, size: 48, offset: 72)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !148, line: 689, size: 48, elements: !4752)
!4752 = !{!4753, !4754, !4755, !4756, !4757}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4751, file: !148, line: 690, baseType: !275, size: 8)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4751, file: !148, line: 691, baseType: !275, size: 8, offset: 8)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !4751, file: !148, line: 693, baseType: !275, size: 8, offset: 16)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4751, file: !148, line: 694, baseType: !275, size: 8, offset: 24)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !4751, file: !148, line: 695, baseType: !4746, size: 16, offset: 32)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !4736, file: !176, line: 69, baseType: !4759, size: 64, offset: 120)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !148, line: 677, size: 64, elements: !4760)
!4760 = !{!4761, !4762, !4763, !4764}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4759, file: !148, line: 678, baseType: !275, size: 8)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4759, file: !148, line: 679, baseType: !275, size: 8, offset: 8)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !4759, file: !148, line: 680, baseType: !4746, size: 16, offset: 16)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !4759, file: !148, line: 681, baseType: !4765, size: 32, offset: 32)
!4765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2142, line: 38, baseType: !465)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4736, file: !176, line: 70, baseType: !231, size: 128, offset: 192)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4736, file: !176, line: 71, baseType: !211, size: 64, offset: 320)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !4736, file: !176, line: 72, baseType: !4769, size: 64, offset: 384)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !176, line: 47, flags: DIFlagFwdDecl)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4736, file: !176, line: 74, baseType: !4772, size: 64, offset: 448)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4736, file: !176, line: 75, baseType: !109, size: 32, offset: 512)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4736, file: !176, line: 76, baseType: !109, size: 32, offset: 544)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4736, file: !176, line: 77, baseType: !109, size: 32, offset: 576)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4708, file: !176, line: 671, baseType: !220, size: 5824, offset: 1344)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !4708, file: !176, line: 673, baseType: !4778, size: 144, offset: 7168)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !148, line: 286, size: 144, elements: !4779)
!4779 = !{!4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4778, file: !148, line: 287, baseType: !275, size: 8)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4778, file: !148, line: 288, baseType: !275, size: 8, offset: 8)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !4778, file: !148, line: 290, baseType: !4746, size: 16, offset: 16)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4778, file: !148, line: 291, baseType: !275, size: 8, offset: 32)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4778, file: !148, line: 292, baseType: !275, size: 8, offset: 40)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4778, file: !148, line: 293, baseType: !275, size: 8, offset: 48)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !4778, file: !148, line: 294, baseType: !275, size: 8, offset: 56)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4778, file: !148, line: 295, baseType: !4746, size: 16, offset: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4778, file: !148, line: 296, baseType: !4746, size: 16, offset: 80)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !4778, file: !148, line: 297, baseType: !4746, size: 16, offset: 96)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !4778, file: !148, line: 298, baseType: !275, size: 8, offset: 112)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !4778, file: !148, line: 299, baseType: !275, size: 8, offset: 120)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !4778, file: !148, line: 300, baseType: !275, size: 8, offset: 128)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !4778, file: !148, line: 301, baseType: !275, size: 8, offset: 136)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !4708, file: !176, line: 674, baseType: !4795, size: 64, offset: 7360)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !176, line: 424, size: 384, elements: !4797)
!4797 = !{!4798, !4806, !4814, !4826, !4848, !4857}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4796, file: !176, line: 425, baseType: !4799, size: 64)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !148, line: 844, size: 40, elements: !4801)
!4801 = !{!4802, !4803, !4804, !4805}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4800, file: !148, line: 845, baseType: !275, size: 8)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4800, file: !148, line: 846, baseType: !275, size: 8, offset: 8)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4800, file: !148, line: 848, baseType: !4746, size: 16, offset: 16)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !4800, file: !148, line: 849, baseType: !275, size: 8, offset: 32)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !4796, file: !176, line: 427, baseType: !4807, size: 64, offset: 64)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !148, line: 895, size: 56, elements: !4809)
!4809 = !{!4810, !4811, !4812, !4813}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4808, file: !148, line: 896, baseType: !275, size: 8)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4808, file: !148, line: 897, baseType: !275, size: 8, offset: 8)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4808, file: !148, line: 898, baseType: !275, size: 8, offset: 16)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4808, file: !148, line: 899, baseType: !4765, size: 32, offset: 24)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !4796, file: !176, line: 428, baseType: !4815, size: 64, offset: 128)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !148, line: 917, size: 80, elements: !4817)
!4817 = !{!4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4816, file: !148, line: 918, baseType: !275, size: 8)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4816, file: !148, line: 919, baseType: !275, size: 8, offset: 8)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4816, file: !148, line: 920, baseType: !275, size: 8, offset: 16)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4816, file: !148, line: 921, baseType: !275, size: 8, offset: 24)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !4816, file: !148, line: 923, baseType: !4746, size: 16, offset: 32)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !4816, file: !148, line: 928, baseType: !275, size: 8, offset: 48)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !4816, file: !148, line: 929, baseType: !275, size: 8, offset: 56)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !4816, file: !148, line: 930, baseType: !4746, size: 16, offset: 64)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !4796, file: !176, line: 429, baseType: !4827, size: 64, offset: 192)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !148, line: 971, size: 128, elements: !4829)
!4829 = !{!4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4828, file: !148, line: 972, baseType: !275, size: 8)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4828, file: !148, line: 973, baseType: !275, size: 8, offset: 8)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4828, file: !148, line: 974, baseType: !275, size: 8, offset: 16)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4828, file: !148, line: 975, baseType: !275, size: 8, offset: 24)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4828, file: !148, line: 976, baseType: !4765, size: 32, offset: 32)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !4828, file: !148, line: 979, baseType: !4746, size: 16, offset: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !4828, file: !148, line: 983, baseType: !4746, size: 16, offset: 80)
!4837 = !DIDerivedType(tag: DW_TAG_member, scope: !4828, file: !148, line: 984, baseType: !4838, size: 32, offset: 96)
!4838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4828, file: !148, line: 984, size: 32, elements: !4839)
!4839 = !{!4840, !4841}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_padding", scope: !4838, file: !148, line: 985, baseType: !4765, size: 32)
!4841 = !DIDerivedType(tag: DW_TAG_member, scope: !4838, file: !148, line: 987, baseType: !4842)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4838, file: !148, line: 987, elements: !4843)
!4843 = !{!4844, !4846}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_bmSublinkSpeedAttr", scope: !4842, file: !148, line: 987, baseType: !4845)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4842, file: !148, line: 987, elements: !944)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !4842, file: !148, line: 987, baseType: !4847)
!4847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4765, elements: !1807)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !4796, file: !176, line: 430, baseType: !4849, size: 64, offset: 256)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !148, line: 940, size: 160, elements: !4851)
!4851 = !{!4852, !4853, !4854, !4855, !4856}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4850, file: !148, line: 941, baseType: !275, size: 8)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4850, file: !148, line: 942, baseType: !275, size: 8, offset: 8)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4850, file: !148, line: 943, baseType: !275, size: 8, offset: 16)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4850, file: !148, line: 944, baseType: !275, size: 8, offset: 24)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !4850, file: !148, line: 945, baseType: !3588, size: 128, offset: 32)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !4796, file: !176, line: 431, baseType: !4858, size: 64, offset: 320)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !148, line: 1113, size: 24, elements: !4860)
!4860 = !{!4861, !4862, !4863}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4859, file: !148, line: 1114, baseType: !275, size: 8)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4859, file: !148, line: 1115, baseType: !275, size: 8, offset: 8)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4859, file: !148, line: 1116, baseType: !275, size: 8, offset: 16)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4708, file: !176, line: 675, baseType: !4865, size: 64, offset: 7424)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !176, line: 402, size: 5440, elements: !4867)
!4867 = !{!4868, !4879, !4880, !4893, !4937, !4946, !4947}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4866, file: !176, line: 403, baseType: !4869, size: 72)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !148, line: 346, size: 72, elements: !4870)
!4870 = !{!4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4869, file: !148, line: 347, baseType: !275, size: 8)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4869, file: !148, line: 348, baseType: !275, size: 8, offset: 8)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4869, file: !148, line: 350, baseType: !4746, size: 16, offset: 16)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !4869, file: !148, line: 351, baseType: !275, size: 8, offset: 32)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !4869, file: !148, line: 352, baseType: !275, size: 8, offset: 40)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !4869, file: !148, line: 353, baseType: !275, size: 8, offset: 48)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4869, file: !148, line: 354, baseType: !275, size: 8, offset: 56)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !4869, file: !148, line: 355, baseType: !275, size: 8, offset: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4866, file: !176, line: 405, baseType: !315, size: 64, offset: 128)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4866, file: !176, line: 409, baseType: !4881, size: 1024, offset: 192)
!4881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4882, size: 1024, elements: !2793)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !148, line: 783, size: 64, elements: !4884)
!4884 = !{!4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4883, file: !148, line: 784, baseType: !275, size: 8)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4883, file: !148, line: 785, baseType: !275, size: 8, offset: 8)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4883, file: !148, line: 787, baseType: !275, size: 8, offset: 16)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4883, file: !148, line: 788, baseType: !275, size: 8, offset: 24)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4883, file: !148, line: 789, baseType: !275, size: 8, offset: 32)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4883, file: !148, line: 790, baseType: !275, size: 8, offset: 40)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4883, file: !148, line: 791, baseType: !275, size: 8, offset: 48)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4883, file: !148, line: 792, baseType: !275, size: 8, offset: 56)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4866, file: !176, line: 413, baseType: !4894, size: 2048, offset: 1216)
!4894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4895, size: 2048, elements: !477)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !176, line: 241, size: 6784, elements: !4897)
!4897 = !{!4898, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4896, file: !176, line: 244, baseType: !4899, size: 64)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !176, line: 81, size: 320, elements: !4901)
!4901 = !{!4902, !4914, !4915, !4916, !4918}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4900, file: !176, line: 82, baseType: !4903, size: 72)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !148, line: 389, size: 72, elements: !4904)
!4904 = !{!4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4903, file: !148, line: 390, baseType: !275, size: 8)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4903, file: !148, line: 391, baseType: !275, size: 8, offset: 8)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4903, file: !148, line: 393, baseType: !275, size: 8, offset: 16)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4903, file: !148, line: 394, baseType: !275, size: 8, offset: 24)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4903, file: !148, line: 395, baseType: !275, size: 8, offset: 32)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4903, file: !148, line: 396, baseType: !275, size: 8, offset: 40)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4903, file: !148, line: 397, baseType: !275, size: 8, offset: 48)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4903, file: !148, line: 398, baseType: !275, size: 8, offset: 56)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4903, file: !148, line: 399, baseType: !275, size: 8, offset: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4900, file: !176, line: 84, baseType: !109, size: 32, offset: 96)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4900, file: !176, line: 85, baseType: !4772, size: 64, offset: 128)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4900, file: !176, line: 90, baseType: !4917, size: 64, offset: 192)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4900, file: !176, line: 92, baseType: !315, size: 64, offset: 256)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4896, file: !176, line: 246, baseType: !4899, size: 64, offset: 64)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4896, file: !176, line: 248, baseType: !7, size: 32, offset: 128)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4896, file: !176, line: 252, baseType: !4882, size: 64, offset: 192)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4896, file: !176, line: 254, baseType: !109, size: 32, offset: 256)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4896, file: !176, line: 256, baseType: !175, size: 32, offset: 288)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4896, file: !176, line: 257, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4896, file: !176, line: 258, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4896, file: !176, line: 259, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4896, file: !176, line: 260, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4896, file: !176, line: 261, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4896, file: !176, line: 262, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4896, file: !176, line: 263, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4896, file: !176, line: 264, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "wireless_status", scope: !4896, file: !176, line: 265, baseType: !182, size: 32, offset: 352)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "wireless_status_work", scope: !4896, file: !176, line: 266, baseType: !915, size: 256, offset: 384)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4896, file: !176, line: 268, baseType: !220, size: 5824, offset: 640)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4896, file: !176, line: 269, baseType: !219, size: 64, offset: 6464)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4896, file: !176, line: 270, baseType: !915, size: 256, offset: 6528)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !4866, file: !176, line: 417, baseType: !4938, size: 2048, offset: 3264)
!4938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4939, size: 2048, elements: !477)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !176, line: 350, size: 64, elements: !4941)
!4941 = !{!4942, !4943, !4944}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4940, file: !176, line: 351, baseType: !7, size: 32)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4940, file: !176, line: 352, baseType: !4220, size: 32, offset: 32)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4940, file: !176, line: 356, baseType: !4945, offset: 64)
!4945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4900, elements: !1807)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4866, file: !176, line: 419, baseType: !4772, size: 64, offset: 5312)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4866, file: !176, line: 420, baseType: !109, size: 32, offset: 5376)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !4708, file: !176, line: 677, baseType: !4865, size: 64, offset: 7488)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !4708, file: !176, line: 678, baseType: !4950, size: 1024, offset: 7552)
!4950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4917, size: 1024, elements: !2793)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !4708, file: !176, line: 679, baseType: !4950, size: 1024, offset: 8576)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !4708, file: !176, line: 681, baseType: !4953, size: 64, offset: 9600)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !4708, file: !176, line: 683, baseType: !285, size: 16, offset: 9664)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !4708, file: !176, line: 684, baseType: !273, size: 8, offset: 9680)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4708, file: !176, line: 685, baseType: !273, size: 8, offset: 9688)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !4708, file: !176, line: 686, baseType: !273, size: 8, offset: 9696)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !4708, file: !176, line: 688, baseType: !7, size: 1, offset: 9704, flags: DIFlagBitField, extraData: i64 9704)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !4708, file: !176, line: 689, baseType: !7, size: 1, offset: 9705, flags: DIFlagBitField, extraData: i64 9704)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "reset_in_progress", scope: !4708, file: !176, line: 690, baseType: !7, size: 1, offset: 9706, flags: DIFlagBitField, extraData: i64 9704)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !4708, file: !176, line: 691, baseType: !7, size: 1, offset: 9707, flags: DIFlagBitField, extraData: i64 9704)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4708, file: !176, line: 692, baseType: !7, size: 1, offset: 9708, flags: DIFlagBitField, extraData: i64 9704)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4708, file: !176, line: 693, baseType: !7, size: 1, offset: 9709, flags: DIFlagBitField, extraData: i64 9704)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !4708, file: !176, line: 694, baseType: !7, size: 1, offset: 9710, flags: DIFlagBitField, extraData: i64 9704)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_devinit_allow", scope: !4708, file: !176, line: 695, baseType: !7, size: 1, offset: 9711, flags: DIFlagBitField, extraData: i64 9704)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !4708, file: !176, line: 696, baseType: !7, size: 1, offset: 9712, flags: DIFlagBitField, extraData: i64 9704)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !4708, file: !176, line: 697, baseType: !7, size: 1, offset: 9713, flags: DIFlagBitField, extraData: i64 9704)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !4708, file: !176, line: 698, baseType: !7, size: 1, offset: 9714, flags: DIFlagBitField, extraData: i64 9704)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !4708, file: !176, line: 699, baseType: !7, size: 1, offset: 9715, flags: DIFlagBitField, extraData: i64 9704)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !4708, file: !176, line: 700, baseType: !7, size: 1, offset: 9716, flags: DIFlagBitField, extraData: i64 9704)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !4708, file: !176, line: 701, baseType: !7, size: 1, offset: 9717, flags: DIFlagBitField, extraData: i64 9704)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !4708, file: !176, line: 702, baseType: !109, size: 32, offset: 9728)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4708, file: !176, line: 705, baseType: !315, size: 64, offset: 9792)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4708, file: !176, line: 706, baseType: !315, size: 64, offset: 9856)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4708, file: !176, line: 707, baseType: !315, size: 64, offset: 9920)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4708, file: !176, line: 709, baseType: !231, size: 128, offset: 9984)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !4708, file: !176, line: 711, baseType: !109, size: 32, offset: 10112)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4708, file: !176, line: 713, baseType: !464, size: 32, offset: 10144)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !4708, file: !176, line: 714, baseType: !265, size: 32, offset: 10176)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !4708, file: !176, line: 716, baseType: !365, size: 64, offset: 10240)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !4708, file: !176, line: 718, baseType: !365, size: 64, offset: 10304)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !4708, file: !176, line: 720, baseType: !7, size: 1, offset: 10368, flags: DIFlagBitField, extraData: i64 10368)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4708, file: !176, line: 721, baseType: !7, size: 1, offset: 10369, flags: DIFlagBitField, extraData: i64 10368)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !4708, file: !176, line: 722, baseType: !7, size: 1, offset: 10370, flags: DIFlagBitField, extraData: i64 10368)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !4708, file: !176, line: 724, baseType: !109, size: 32, offset: 10400)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !4708, file: !176, line: 725, baseType: !4987, size: 64, offset: 10432)
!4987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !176, line: 523, size: 64, elements: !4988)
!4988 = !{!4989, !4990}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4987, file: !176, line: 527, baseType: !7, size: 32)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4987, file: !176, line: 533, baseType: !109, size: 32, offset: 32)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !4708, file: !176, line: 726, baseType: !4992, size: 128, offset: 10496)
!4992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !176, line: 543, size: 128, elements: !4993)
!4993 = !{!4994, !4995, !4996, !4997}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4992, file: !176, line: 550, baseType: !7, size: 32)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4992, file: !176, line: 556, baseType: !7, size: 32, offset: 32)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4992, file: !176, line: 566, baseType: !7, size: 32, offset: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4992, file: !176, line: 572, baseType: !109, size: 32, offset: 96)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !4708, file: !176, line: 727, baseType: !4992, size: 128, offset: 10624)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !4708, file: !176, line: 728, baseType: !7, size: 32, offset: 10752)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !4708, file: !176, line: 730, baseType: !283, size: 16, offset: 10784)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !4708, file: !176, line: 731, baseType: !7, size: 1, offset: 10800, flags: DIFlagBitField, extraData: i64 10800)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !216, file: !176, line: 477, baseType: !4734, size: 64, offset: 832)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !216, file: !176, line: 479, baseType: !109, size: 32, offset: 896)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !216, file: !176, line: 486, baseType: !109, size: 32, offset: 928)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !216, file: !176, line: 487, baseType: !109, size: 32, offset: 960)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !216, file: !176, line: 489, baseType: !7, size: 32, offset: 992)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "mon_bus", scope: !216, file: !176, line: 492, baseType: !5008, size: 64, offset: 1024)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DICompositeType(tag: DW_TAG_structure_type, name: "mon_bus", file: !176, line: 492, flags: DIFlagFwdDecl)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "monitored", scope: !216, file: !176, line: 493, baseType: !109, size: 32, offset: 1088)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !213, file: !200, line: 74, baseType: !4220, size: 32, offset: 1152)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !213, file: !200, line: 76, baseType: !227, size: 64, offset: 1216)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !213, file: !200, line: 77, baseType: !109, size: 32, offset: 1280)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !213, file: !200, line: 81, baseType: !5015, size: 192, offset: 1312)
!5015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 192, elements: !5016)
!5016 = !{!5017}
!5017 = !DISubrange(count: 24)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "rh_timer", scope: !213, file: !200, line: 83, baseType: !897, size: 320, offset: 1536)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "status_urb", scope: !213, file: !200, line: 84, baseType: !5020, size: 64, offset: 1856)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !176, line: 1598, size: 1472, elements: !5022)
!5022 = !{!5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5048, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5067}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5021, file: !176, line: 1600, baseType: !4220, size: 32)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !5021, file: !176, line: 1601, baseType: !109, size: 32, offset: 32)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5021, file: !176, line: 1602, baseType: !211, size: 64, offset: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !5021, file: !176, line: 1603, baseType: !265, size: 32, offset: 128)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !5021, file: !176, line: 1604, baseType: !265, size: 32, offset: 160)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5021, file: !176, line: 1607, baseType: !231, size: 128, offset: 192)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !5021, file: !176, line: 1609, baseType: !231, size: 128, offset: 320)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !5021, file: !176, line: 1610, baseType: !5031, size: 64, offset: 448)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !176, line: 1397, size: 448, elements: !5033)
!5033 = !{!5034, !5035, !5036, !5037, !5038}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5032, file: !176, line: 1398, baseType: !231, size: 128)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5032, file: !176, line: 1399, baseType: !1410, size: 192, offset: 128)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5032, file: !176, line: 1400, baseType: !245, size: 32, offset: 320)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !5032, file: !176, line: 1401, baseType: !265, size: 32, offset: 352)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !5032, file: !176, line: 1402, baseType: !7, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5021, file: !176, line: 1611, baseType: !4707, size: 64, offset: 512)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !5021, file: !176, line: 1612, baseType: !4917, size: 64, offset: 576)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !5021, file: !176, line: 1613, baseType: !7, size: 32, offset: 640)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5021, file: !176, line: 1614, baseType: !7, size: 32, offset: 672)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5021, file: !176, line: 1615, baseType: !109, size: 32, offset: 704)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !5021, file: !176, line: 1616, baseType: !7, size: 32, offset: 736)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !5021, file: !176, line: 1617, baseType: !211, size: 64, offset: 768)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !5021, file: !176, line: 1618, baseType: !5047, size: 64, offset: 832)
!5047 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !232, line: 149, baseType: !468)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !5021, file: !176, line: 1619, baseType: !5049, size: 64, offset: 896)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !176, line: 1619, flags: DIFlagFwdDecl)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !5021, file: !176, line: 1620, baseType: !109, size: 32, offset: 960)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !5021, file: !176, line: 1621, baseType: !109, size: 32, offset: 992)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !5021, file: !176, line: 1622, baseType: !464, size: 32, offset: 1024)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !5021, file: !176, line: 1623, baseType: !464, size: 32, offset: 1056)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !5021, file: !176, line: 1624, baseType: !4772, size: 64, offset: 1088)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !5021, file: !176, line: 1625, baseType: !5047, size: 64, offset: 1152)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !5021, file: !176, line: 1626, baseType: !109, size: 32, offset: 1216)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !5021, file: !176, line: 1627, baseType: !109, size: 32, offset: 1248)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !5021, file: !176, line: 1628, baseType: !109, size: 32, offset: 1280)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !5021, file: !176, line: 1630, baseType: !109, size: 32, offset: 1312)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5021, file: !176, line: 1631, baseType: !211, size: 64, offset: 1344)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5021, file: !176, line: 1632, baseType: !5063, size: 64, offset: 1408)
!5063 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !176, line: 1413, baseType: !5064)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{null, !5020}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !5021, file: !176, line: 1633, baseType: !5068, offset: 1472)
!5068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5069, elements: !1807)
!5069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !176, line: 1388, size: 128, elements: !5070)
!5070 = !{!5071, !5072, !5073, !5074}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5069, file: !176, line: 1389, baseType: !7, size: 32)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5069, file: !176, line: 1390, baseType: !7, size: 32, offset: 32)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !5069, file: !176, line: 1391, baseType: !7, size: 32, offset: 64)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5069, file: !176, line: 1392, baseType: !109, size: 32, offset: 96)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_work", scope: !213, file: !200, line: 86, baseType: !915, size: 256, offset: 1920)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "died_work", scope: !213, file: !200, line: 88, baseType: !915, size: 256, offset: 2176)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !213, file: !200, line: 93, baseType: !5078, size: 64, offset: 2432)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5080)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hc_driver", file: !200, line: 237, size: 3008, elements: !5081)
!5081 = !{!5082, !5083, !5084, !5085, !5090, !5091, !5095, !5096, !5100, !5104, !5105, !5109, !5110, !5111, !5115, !5119, !5120, !5124, !5128, !5129, !5133, !5137, !5138, !5139, !5143, !5147, !5151, !5155, !5156, !5160, !5164, !5169, !5173, !5177, !5178, !5179, !5180, !5184, !5185, !5189, !5190, !5191, !5195, !5199, !5200, !5201, !5205}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !5080, file: !200, line: 238, baseType: !227, size: 64)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !5080, file: !200, line: 239, baseType: !227, size: 64, offset: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv_size", scope: !5080, file: !200, line: 240, baseType: !362, size: 64, offset: 128)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5080, file: !200, line: 243, baseType: !5086, size: 64, offset: 192)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!5089, !212}
!5089 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !188, line: 17, baseType: !187)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5080, file: !200, line: 245, baseType: !109, size: 32, offset: 256)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5080, file: !200, line: 258, baseType: !5092, size: 64, offset: 320)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!109, !212}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5080, file: !200, line: 259, baseType: !5092, size: 64, offset: 384)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "pci_suspend", scope: !5080, file: !200, line: 265, baseType: !5097, size: 64, offset: 448)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!109, !212, !735}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "pci_resume", scope: !5080, file: !200, line: 268, baseType: !5101, size: 64, offset: 512)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!109, !212, !4342}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "pci_poweroff_late", scope: !5080, file: !200, line: 271, baseType: !5097, size: 64, offset: 576)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5080, file: !200, line: 274, baseType: !5106, size: 64, offset: 640)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{null, !212}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5080, file: !200, line: 277, baseType: !5106, size: 64, offset: 704)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_number", scope: !5080, file: !200, line: 280, baseType: !5092, size: 64, offset: 768)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "urb_enqueue", scope: !5080, file: !200, line: 283, baseType: !5112, size: 64, offset: 832)
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 64)
!5113 = !DISubroutineType(types: !5114)
!5114 = !{!109, !212, !5020, !1169}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "urb_dequeue", scope: !5080, file: !200, line: 285, baseType: !5116, size: 64, offset: 896)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = !DISubroutineType(types: !5118)
!5118 = !{!109, !212, !5020, !109}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "map_urb_for_dma", scope: !5080, file: !200, line: 297, baseType: !5112, size: 64, offset: 960)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_urb_for_dma", scope: !5080, file: !200, line: 299, baseType: !5121, size: 64, offset: 1024)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5122, size: 64)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{null, !212, !5020}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_disable", scope: !5080, file: !200, line: 302, baseType: !5125, size: 64, offset: 1088)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{null, !212, !4917}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_reset", scope: !5080, file: !200, line: 307, baseType: !5125, size: 64, offset: 1152)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "hub_status_data", scope: !5080, file: !200, line: 311, baseType: !5130, size: 64, offset: 1216)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!109, !212, !315}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "hub_control", scope: !5080, file: !200, line: 312, baseType: !5134, size: 64, offset: 1280)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!109, !212, !283, !283, !283, !315, !283}
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "bus_suspend", scope: !5080, file: !200, line: 315, baseType: !5092, size: 64, offset: 1344)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "bus_resume", scope: !5080, file: !200, line: 316, baseType: !5092, size: 64, offset: 1408)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "start_port_reset", scope: !5080, file: !200, line: 317, baseType: !5140, size: 64, offset: 1472)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!109, !212, !7}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "get_resuming_ports", scope: !5080, file: !200, line: 318, baseType: !5144, size: 64, offset: 1536)
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = !DISubroutineType(types: !5146)
!5146 = !{!365, !212}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_port", scope: !5080, file: !200, line: 321, baseType: !5148, size: 64, offset: 1600)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{null, !212, !109}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "port_handed_over", scope: !5080, file: !200, line: 323, baseType: !5152, size: 64, offset: 1664)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!109, !212, !109}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tt_buffer_complete", scope: !5080, file: !200, line: 326, baseType: !5125, size: 64, offset: 1728)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dev", scope: !5080, file: !200, line: 331, baseType: !5157, size: 64, offset: 1792)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!109, !212, !4707}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "free_dev", scope: !5080, file: !200, line: 333, baseType: !5161, size: 64, offset: 1856)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{null, !212, !4707}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_streams", scope: !5080, file: !200, line: 335, baseType: !5165, size: 64, offset: 1920)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!109, !212, !4707, !5168, !7, !7, !1169}
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "free_streams", scope: !5080, file: !200, line: 341, baseType: !5170, size: 64, offset: 1984)
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5171, size: 64)
!5171 = !DISubroutineType(types: !5172)
!5172 = !{!109, !212, !4707, !5168, !7, !1169}
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "add_endpoint", scope: !5080, file: !200, line: 356, baseType: !5174, size: 64, offset: 2048)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{!109, !212, !4707, !4917}
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "drop_endpoint", scope: !5080, file: !200, line: 359, baseType: !5174, size: 64, offset: 2112)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "check_bandwidth", scope: !5080, file: !200, line: 366, baseType: !5157, size: 64, offset: 2176)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bandwidth", scope: !5080, file: !200, line: 374, baseType: !5161, size: 64, offset: 2240)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "address_device", scope: !5080, file: !200, line: 376, baseType: !5181, size: 64, offset: 2304)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!109, !212, !4707, !7}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "enable_device", scope: !5080, file: !200, line: 379, baseType: !5157, size: 64, offset: 2368)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "update_hub_device", scope: !5080, file: !200, line: 383, baseType: !5186, size: 64, offset: 2432)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!109, !212, !4707, !4719, !1169}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "reset_device", scope: !5080, file: !200, line: 385, baseType: !5157, size: 64, offset: 2496)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "update_device", scope: !5080, file: !200, line: 389, baseType: !5157, size: 64, offset: 2560)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "set_usb2_hw_lpm", scope: !5080, file: !200, line: 390, baseType: !5192, size: 64, offset: 2624)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!109, !212, !4707, !109}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "enable_usb3_lpm_timeout", scope: !5080, file: !200, line: 393, baseType: !5196, size: 64, offset: 2688)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DISubroutineType(types: !5198)
!5198 = !{!109, !212, !4707, !193}
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "disable_usb3_lpm_timeout", scope: !5080, file: !200, line: 398, baseType: !5196, size: 64, offset: 2752)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "find_raw_port_number", scope: !5080, file: !200, line: 400, baseType: !5152, size: 64, offset: 2816)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "port_power", scope: !5080, file: !200, line: 402, baseType: !5202, size: 64, offset: 2880)
!5202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5203, size: 64)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!109, !212, !109, !735}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "submit_single_step_set_feature", scope: !5080, file: !200, line: 405, baseType: !5116, size: 64, offset: 2944)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !213, file: !200, line: 99, baseType: !5207, size: 64, offset: 2496)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !200, line: 99, flags: DIFlagFwdDecl)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "phy_roothub", scope: !213, file: !200, line: 100, baseType: !5210, size: 64, offset: 2560)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_roothub", file: !200, line: 100, flags: DIFlagFwdDecl)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !213, file: !200, line: 106, baseType: !365, size: 64, offset: 2624)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "dev_policy", scope: !213, file: !200, line: 140, baseType: !199, size: 32, offset: 2688)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "rh_registered", scope: !213, file: !200, line: 143, baseType: !7, size: 1, offset: 2720, flags: DIFlagBitField, extraData: i64 2720)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "rh_pollable", scope: !213, file: !200, line: 144, baseType: !7, size: 1, offset: 2721, flags: DIFlagBitField, extraData: i64 2720)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !213, file: !200, line: 145, baseType: !7, size: 1, offset: 2722, flags: DIFlagBitField, extraData: i64 2720)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !213, file: !200, line: 146, baseType: !7, size: 1, offset: 2723, flags: DIFlagBitField, extraData: i64 2720)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "skip_phy_initialization", scope: !213, file: !200, line: 152, baseType: !7, size: 1, offset: 2724, flags: DIFlagBitField, extraData: i64 2720)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "uses_new_polling", scope: !213, file: !200, line: 156, baseType: !7, size: 1, offset: 2725, flags: DIFlagBitField, extraData: i64 2720)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "has_tt", scope: !213, file: !200, line: 157, baseType: !7, size: 1, offset: 2726, flags: DIFlagBitField, extraData: i64 2720)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "amd_resume_bug", scope: !213, file: !200, line: 158, baseType: !7, size: 1, offset: 2727, flags: DIFlagBitField, extraData: i64 2720)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_streams", scope: !213, file: !200, line: 159, baseType: !7, size: 1, offset: 2728, flags: DIFlagBitField, extraData: i64 2720)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "tpl_support", scope: !213, file: !200, line: 160, baseType: !7, size: 1, offset: 2729, flags: DIFlagBitField, extraData: i64 2720)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "cant_recv_wakeups", scope: !213, file: !200, line: 161, baseType: !7, size: 1, offset: 2730, flags: DIFlagBitField, extraData: i64 2720)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !213, file: !200, line: 164, baseType: !7, size: 32, offset: 2752)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !213, file: !200, line: 165, baseType: !211, size: 64, offset: 2816)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_start", scope: !213, file: !200, line: 166, baseType: !5228, size: 64, offset: 2880)
!5228 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !232, line: 164, baseType: !3331)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_len", scope: !213, file: !200, line: 167, baseType: !5228, size: 64, offset: 2944)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "power_budget", scope: !213, file: !200, line: 168, baseType: !7, size: 32, offset: 3008)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio_bh", scope: !213, file: !200, line: 170, baseType: !5232, size: 576, offset: 3072)
!5232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "giveback_urb_bh", file: !200, line: 53, size: 576, elements: !5233)
!5233 = !{!5234, !5235, !5236, !5237, !5238, !5259}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !5232, file: !200, line: 54, baseType: !735, size: 8)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio", scope: !5232, file: !200, line: 55, baseType: !735, size: 8, offset: 8)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5232, file: !200, line: 56, baseType: !245, size: 32, offset: 32)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5232, file: !200, line: 57, baseType: !231, size: 128, offset: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !5232, file: !200, line: 58, baseType: !5239, size: 320, offset: 192)
!5239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !5240, line: 642, size: 320, elements: !5241)
!5240 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!5241 = !{!5242, !5244, !5245, !5246, !5247, !5258}
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5239, file: !5240, line: 644, baseType: !5243, size: 64)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5239, file: !5240, line: 645, baseType: !365, size: 64, offset: 64)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5239, file: !5240, line: 646, baseType: !265, size: 32, offset: 128)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !5239, file: !5240, line: 647, baseType: !735, size: 8, offset: 160)
!5247 = !DIDerivedType(tag: DW_TAG_member, scope: !5239, file: !5240, line: 648, baseType: !5248, size: 64, offset: 192)
!5248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5239, file: !5240, line: 648, size: 64, elements: !5249)
!5249 = !{!5250, !5254}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5248, file: !5240, line: 649, baseType: !5251, size: 64)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{null, !365}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5248, file: !5240, line: 650, baseType: !5255, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{null, !5243}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5239, file: !5240, line: 652, baseType: !365, size: 64, offset: 256)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "completing_ep", scope: !5232, file: !200, line: 59, baseType: !4917, size: 64, offset: 512)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "low_prio_bh", scope: !213, file: !200, line: 171, baseType: !5232, size: 576, offset: 3648)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "address0_mutex", scope: !213, file: !200, line: 184, baseType: !5262, size: 64, offset: 4224)
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_mutex", scope: !213, file: !200, line: 185, baseType: !5262, size: 64, offset: 4288)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "shared_hcd", scope: !213, file: !200, line: 186, baseType: !212, size: 64, offset: 4352)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "primary_hcd", scope: !213, file: !200, line: 187, baseType: !212, size: 64, offset: 4416)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !213, file: !200, line: 191, baseType: !5267, size: 256, offset: 4480)
!5267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5268, size: 256, elements: !885)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !200, line: 191, flags: DIFlagFwdDecl)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !213, file: !200, line: 193, baseType: !109, size: 32, offset: 4736)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "localmem_pool", scope: !213, file: !200, line: 208, baseType: !5272, size: 64, offset: 4800)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool", file: !200, line: 208, flags: DIFlagFwdDecl)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv", scope: !213, file: !200, line: 219, baseType: !2653, align: 64, offset: 4864)
!5275 = !{!0, !5276, !5279, !5282, !5284, !5289, !5291, !5293, !5298, !5303, !5308, !5313, !5315, !5317, !5319, !5321, !5323, !5325, !5327, !5329, !5331, !5333, !5335, !5337, !5339, !5341, !5343, !5345, !5347, !5349, !5351, !5353, !5355, !5357, !5367, !5372, !5377, !5380, !5382, !5387, !5392, !5395, !5398, !5401, !5406, !5408, !5410, !5412, !5414, !5419}
!5276 = !DIGlobalVariableExpression(var: !5277, expr: !DIExpression())
!5277 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !5278, isLocal: true, isDefinition: true)
!5278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 32, elements: !885)
!5279 = !DIGlobalVariableExpression(var: !5280, expr: !DIExpression())
!5280 = distinct !DIGlobalVariable(scope: null, file: !3, line: 426, type: !5281, isLocal: true, isDefinition: true)
!5281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 24, elements: !316)
!5282 = !DIGlobalVariableExpression(var: !5283, expr: !DIExpression())
!5283 = distinct !DIGlobalVariable(scope: null, file: !3, line: 428, type: !5278, isLocal: true, isDefinition: true)
!5284 = !DIGlobalVariableExpression(var: !5285, expr: !DIExpression())
!5285 = distinct !DIGlobalVariable(scope: null, file: !3, line: 430, type: !5286, isLocal: true, isDefinition: true)
!5286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 40, elements: !5287)
!5287 = !{!5288}
!5288 = !DISubrange(count: 5)
!5289 = !DIGlobalVariableExpression(var: !5290, expr: !DIExpression())
!5290 = distinct !DIGlobalVariable(scope: null, file: !3, line: 432, type: !1889, isLocal: true, isDefinition: true)
!5291 = !DIGlobalVariableExpression(var: !5292, expr: !DIExpression())
!5292 = distinct !DIGlobalVariable(scope: null, file: !3, line: 434, type: !5281, isLocal: true, isDefinition: true)
!5293 = !DIGlobalVariableExpression(var: !5294, expr: !DIExpression())
!5294 = distinct !DIGlobalVariable(scope: null, file: !3, line: 473, type: !5295, isLocal: true, isDefinition: true)
!5295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 104, elements: !5296)
!5296 = !{!5297}
!5297 = !DISubrange(count: 13)
!5298 = !DIGlobalVariableExpression(var: !5299, expr: !DIExpression())
!5299 = distinct !DIGlobalVariable(name: "format_topo", scope: !2, file: !3, line: 53, type: !5300, isLocal: true, isDefinition: true)
!5300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 680, elements: !5301)
!5301 = !{!5302}
!5302 = !DISubrange(count: 85)
!5303 = !DIGlobalVariableExpression(var: !5304, expr: !DIExpression())
!5304 = distinct !DIGlobalVariable(name: "format_bandwidth", scope: !2, file: !3, line: 71, type: !5305, isLocal: true, isDefinition: true)
!5305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 400, elements: !5306)
!5306 = !{!5307}
!5307 = !DISubrange(count: 50)
!5308 = !DIGlobalVariableExpression(var: !5309, expr: !DIExpression())
!5309 = distinct !DIGlobalVariable(name: "format_device1", scope: !2, file: !3, line: 75, type: !5310, isLocal: true, isDefinition: true)
!5310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 568, elements: !5311)
!5311 = !{!5312}
!5312 = !DISubrange(count: 71)
!5313 = !DIGlobalVariableExpression(var: !5314, expr: !DIExpression())
!5314 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !5286, isLocal: true, isDefinition: true)
!5315 = !DIGlobalVariableExpression(var: !5316, expr: !DIExpression())
!5316 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !1889, isLocal: true, isDefinition: true)
!5317 = !DIGlobalVariableExpression(var: !5318, expr: !DIExpression())
!5318 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !1889, isLocal: true, isDefinition: true)
!5319 = !DIGlobalVariableExpression(var: !5320, expr: !DIExpression())
!5320 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !5278, isLocal: true, isDefinition: true)
!5321 = !DIGlobalVariableExpression(var: !5322, expr: !DIExpression())
!5322 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !5278, isLocal: true, isDefinition: true)
!5323 = !DIGlobalVariableExpression(var: !5324, expr: !DIExpression())
!5324 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !1889, isLocal: true, isDefinition: true)
!5325 = !DIGlobalVariableExpression(var: !5326, expr: !DIExpression())
!5326 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !1889, isLocal: true, isDefinition: true)
!5327 = !DIGlobalVariableExpression(var: !5328, expr: !DIExpression())
!5328 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !1889, isLocal: true, isDefinition: true)
!5329 = !DIGlobalVariableExpression(var: !5330, expr: !DIExpression())
!5330 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !5278, isLocal: true, isDefinition: true)
!5331 = !DIGlobalVariableExpression(var: !5332, expr: !DIExpression())
!5332 = distinct !DIGlobalVariable(scope: null, file: !3, line: 115, type: !5286, isLocal: true, isDefinition: true)
!5333 = !DIGlobalVariableExpression(var: !5334, expr: !DIExpression())
!5334 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !1889, isLocal: true, isDefinition: true)
!5335 = !DIGlobalVariableExpression(var: !5336, expr: !DIExpression())
!5336 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !1889, isLocal: true, isDefinition: true)
!5337 = !DIGlobalVariableExpression(var: !5338, expr: !DIExpression())
!5338 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !1889, isLocal: true, isDefinition: true)
!5339 = !DIGlobalVariableExpression(var: !5340, expr: !DIExpression())
!5340 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !1889, isLocal: true, isDefinition: true)
!5341 = !DIGlobalVariableExpression(var: !5342, expr: !DIExpression())
!5342 = distinct !DIGlobalVariable(scope: null, file: !3, line: 120, type: !5281, isLocal: true, isDefinition: true)
!5343 = !DIGlobalVariableExpression(var: !5344, expr: !DIExpression())
!5344 = distinct !DIGlobalVariable(scope: null, file: !3, line: 121, type: !1889, isLocal: true, isDefinition: true)
!5345 = !DIGlobalVariableExpression(var: !5346, expr: !DIExpression())
!5346 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !1889, isLocal: true, isDefinition: true)
!5347 = !DIGlobalVariableExpression(var: !5348, expr: !DIExpression())
!5348 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !1889, isLocal: true, isDefinition: true)
!5349 = !DIGlobalVariableExpression(var: !5350, expr: !DIExpression())
!5350 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !5286, isLocal: true, isDefinition: true)
!5351 = !DIGlobalVariableExpression(var: !5352, expr: !DIExpression())
!5352 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !5286, isLocal: true, isDefinition: true)
!5353 = !DIGlobalVariableExpression(var: !5354, expr: !DIExpression())
!5354 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !1889, isLocal: true, isDefinition: true)
!5355 = !DIGlobalVariableExpression(var: !5356, expr: !DIExpression())
!5356 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !5286, isLocal: true, isDefinition: true)
!5357 = !DIGlobalVariableExpression(var: !5358, expr: !DIExpression())
!5358 = distinct !DIGlobalVariable(name: "clas_info", scope: !2, file: !3, line: 104, type: !5359, isLocal: true, isDefinition: true)
!5359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5360, size: 2816, elements: !5365)
!5360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5361)
!5361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_info", file: !3, line: 99, size: 128, elements: !5362)
!5362 = !{!5363, !5364}
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5361, file: !3, line: 100, baseType: !109, size: 32)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !5361, file: !3, line: 101, baseType: !315, size: 64, offset: 64)
!5365 = !{!5366}
!5366 = !DISubrange(count: 22)
!5367 = !DIGlobalVariableExpression(var: !5368, expr: !DIExpression())
!5368 = distinct !DIGlobalVariable(name: "format_device2", scope: !2, file: !3, line: 79, type: !5369, isLocal: true, isDefinition: true)
!5369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 336, elements: !5370)
!5370 = !{!5371}
!5371 = !DISubrange(count: 42)
!5372 = !DIGlobalVariableExpression(var: !5373, expr: !DIExpression())
!5373 = distinct !DIGlobalVariable(name: "format_string_manufacturer", scope: !2, file: !3, line: 57, type: !5374, isLocal: true, isDefinition: true)
!5374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 200, elements: !5375)
!5375 = !{!5376}
!5376 = !DISubrange(count: 25)
!5377 = !DIGlobalVariableExpression(var: !5378, expr: !DIExpression())
!5378 = distinct !DIGlobalVariable(name: "format_string_product", scope: !2, file: !3, line: 61, type: !5379, isLocal: true, isDefinition: true)
!5379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 160, elements: !3427)
!5380 = !DIGlobalVariableExpression(var: !5381, expr: !DIExpression())
!5381 = distinct !DIGlobalVariable(name: "format_string_serialnumber", scope: !2, file: !3, line: 66, type: !5374, isLocal: true, isDefinition: true)
!5382 = !DIGlobalVariableExpression(var: !5383, expr: !DIExpression())
!5383 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !5384, isLocal: true, isDefinition: true)
!5384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 152, elements: !5385)
!5385 = !{!5386}
!5386 = !DISubrange(count: 19)
!5387 = !DIGlobalVariableExpression(var: !5388, expr: !DIExpression())
!5388 = distinct !DIGlobalVariable(name: "format_config", scope: !2, file: !3, line: 83, type: !5389, isLocal: true, isDefinition: true)
!5389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 360, elements: !5390)
!5390 = !{!5391}
!5391 = !DISubrange(count: 45)
!5392 = !DIGlobalVariableExpression(var: !5393, expr: !DIExpression())
!5393 = distinct !DIGlobalVariable(name: "format_iad", scope: !2, file: !3, line: 87, type: !5394, isLocal: true, isDefinition: true)
!5394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 512, elements: !320)
!5395 = !DIGlobalVariableExpression(var: !5396, expr: !DIExpression())
!5396 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !5397, isLocal: true, isDefinition: true)
!5397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 8, elements: !1672)
!5398 = !DIGlobalVariableExpression(var: !5399, expr: !DIExpression())
!5399 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !5400, isLocal: true, isDefinition: true)
!5400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 56, elements: !776)
!5401 = !DIGlobalVariableExpression(var: !5402, expr: !DIExpression())
!5402 = distinct !DIGlobalVariable(name: "format_iface", scope: !2, file: !3, line: 91, type: !5403, isLocal: true, isDefinition: true)
!5403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 600, elements: !5404)
!5404 = !{!5405}
!5405 = !DISubrange(count: 75)
!5406 = !DIGlobalVariableExpression(var: !5407, expr: !DIExpression())
!5407 = distinct !DIGlobalVariable(scope: null, file: !3, line: 159, type: !5286, isLocal: true, isDefinition: true)
!5408 = !DIGlobalVariableExpression(var: !5409, expr: !DIExpression())
!5409 = distinct !DIGlobalVariable(scope: null, file: !3, line: 163, type: !5286, isLocal: true, isDefinition: true)
!5410 = !DIGlobalVariableExpression(var: !5411, expr: !DIExpression())
!5411 = distinct !DIGlobalVariable(scope: null, file: !3, line: 166, type: !5286, isLocal: true, isDefinition: true)
!5412 = !DIGlobalVariableExpression(var: !5413, expr: !DIExpression())
!5413 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !5286, isLocal: true, isDefinition: true)
!5414 = !DIGlobalVariableExpression(var: !5415, expr: !DIExpression())
!5415 = distinct !DIGlobalVariable(name: "format_endpt", scope: !2, file: !3, line: 95, type: !5416, isLocal: true, isDefinition: true)
!5416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 408, elements: !5417)
!5417 = !{!5418}
!5418 = !DISubrange(count: 51)
!5419 = !DIGlobalVariableExpression(var: !5420, expr: !DIExpression())
!5420 = distinct !DIGlobalVariable(scope: null, file: !5421, line: 249, type: !5422, isLocal: true, isDefinition: true)
!5421 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 224, elements: !5423)
!5423 = !{!5424}
!5424 = !DISubrange(count: 28)
!5425 = !{i32 7, !"Dwarf Version", i32 5}
!5426 = !{i32 2, !"Debug Info Version", i32 3}
!5427 = !{i32 1, !"wchar_size", i32 2}
!5428 = !{i32 8, !"cf-protection-branch", i32 1}
!5429 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5430 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5431 = !{i32 1, !"Code Model", i32 2}
!5432 = !{i32 1, !"override-stack-alignment", i32 8}
!5433 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5434 = distinct !DISubprogram(name: "usb_device_read", scope: !3, file: !3, line: 509, type: !2026, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5435)
!5435 = !{!5436, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444}
!5436 = !DILocalVariable(name: "file", arg: 1, scope: !5434, file: !3, line: 509, type: !1747)
!5437 = !DILocalVariable(name: "buf", arg: 2, scope: !5434, file: !3, line: 509, type: !315)
!5438 = !DILocalVariable(name: "nbytes", arg: 3, scope: !5434, file: !3, line: 510, type: !362)
!5439 = !DILocalVariable(name: "ppos", arg: 4, scope: !5434, file: !3, line: 510, type: !2028)
!5440 = !DILocalVariable(name: "bus", scope: !5434, file: !3, line: 512, type: !4734)
!5441 = !DILocalVariable(name: "ret", scope: !5434, file: !3, line: 513, type: !347)
!5442 = !DILocalVariable(name: "total_written", scope: !5434, file: !3, line: 513, type: !347)
!5443 = !DILocalVariable(name: "skip_bytes", scope: !5434, file: !3, line: 514, type: !556)
!5444 = !DILocalVariable(name: "id", scope: !5434, file: !3, line: 515, type: !109)
!5445 = !DILocation(line: 509, column: 45, scope: !5434)
!5446 = !DILocation(line: 509, column: 64, scope: !5434)
!5447 = !DILocation(line: 510, column: 18, scope: !5434)
!5448 = !DILocation(line: 510, column: 34, scope: !5434)
!5449 = !DILocation(line: 512, column: 2, scope: !5434)
!5450 = !DILocation(line: 512, column: 18, scope: !5434)
!5451 = !DILocation(line: 513, column: 2, scope: !5434)
!5452 = !DILocation(line: 513, column: 10, scope: !5434)
!5453 = !DILocation(line: 513, column: 15, scope: !5434)
!5454 = !DILocation(line: 514, column: 2, scope: !5434)
!5455 = !DILocation(line: 514, column: 9, scope: !5434)
!5456 = !DILocation(line: 514, column: 23, scope: !5434)
!5457 = !DILocation(line: 514, column: 22, scope: !5434)
!5458 = !DILocation(line: 515, column: 2, scope: !5434)
!5459 = !DILocation(line: 515, column: 6, scope: !5434)
!5460 = !DILocation(line: 517, column: 7, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 517, column: 6)
!5462 = !DILocation(line: 517, column: 6, scope: !5461)
!5463 = !DILocation(line: 517, column: 12, scope: !5461)
!5464 = !DILocation(line: 517, column: 6, scope: !5434)
!5465 = !DILocation(line: 518, column: 3, scope: !5461)
!5466 = !DILocation(line: 519, column: 6, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 519, column: 6)
!5468 = !DILocation(line: 519, column: 13, scope: !5467)
!5469 = !DILocation(line: 519, column: 6, scope: !5434)
!5470 = !DILocation(line: 520, column: 3, scope: !5467)
!5471 = !DILocation(line: 522, column: 2, scope: !5434)
!5472 = !DILocation(line: 524, column: 2, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 524, column: 2)
!5474 = !DILocation(line: 524, column: 2, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 524, column: 2)
!5476 = !DILocation(line: 526, column: 19, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 526, column: 7)
!5478 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 524, column: 44)
!5479 = !DILocation(line: 526, column: 8, scope: !5477)
!5480 = !DILocation(line: 526, column: 25, scope: !5477)
!5481 = !DILocation(line: 526, column: 7, scope: !5478)
!5482 = !DILocation(line: 527, column: 4, scope: !5477)
!5483 = !DILocation(line: 528, column: 3, scope: !5478)
!5484 = !DILocation(line: 529, column: 53, scope: !5478)
!5485 = !DILocation(line: 530, column: 11, scope: !5478)
!5486 = !DILocation(line: 530, column: 16, scope: !5478)
!5487 = !DILocation(line: 530, column: 26, scope: !5478)
!5488 = !DILocation(line: 529, column: 9, scope: !5478)
!5489 = !DILocation(line: 529, column: 7, scope: !5478)
!5490 = !DILocation(line: 531, column: 3, scope: !5478)
!5491 = !DILocation(line: 532, column: 7, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 532, column: 7)
!5493 = !DILocation(line: 532, column: 11, scope: !5492)
!5494 = !DILocation(line: 532, column: 7, scope: !5478)
!5495 = !DILocation(line: 533, column: 4, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 532, column: 16)
!5497 = !DILocation(line: 534, column: 11, scope: !5496)
!5498 = !DILocation(line: 534, column: 4, scope: !5496)
!5499 = !DILocation(line: 536, column: 20, scope: !5478)
!5500 = !DILocation(line: 536, column: 17, scope: !5478)
!5501 = !DILocation(line: 537, column: 2, scope: !5478)
!5502 = distinct !{!5502, !5472, !5503, !5504, !5505}
!5503 = !DILocation(line: 537, column: 2, scope: !5473)
!5504 = !{!"llvm.loop.mustprogress"}
!5505 = !{!"llvm.loop.unroll.disable"}
!5506 = !DILocation(line: 538, column: 2, scope: !5434)
!5507 = !DILocation(line: 539, column: 9, scope: !5434)
!5508 = !DILocation(line: 539, column: 2, scope: !5434)
!5509 = !DILocation(line: 540, column: 1, scope: !5434)
!5510 = !DISubprogram(name: "mutex_lock", scope: !656, file: !656, line: 227, type: !5511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{null, !5262}
!5513 = !DISubprogram(name: "idr_get_next", scope: !5514, file: !5514, line: 122, type: !5515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5514 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!211, !5517, !784}
!5517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5518, size: 64)
!5518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !5514, line: 19, size: 192, elements: !5519)
!5519 = !{!5520, !5521, !5522}
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !5518, file: !5514, line: 20, baseType: !2104, size: 128)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !5518, file: !5514, line: 21, baseType: !7, size: 32, offset: 128)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !5518, file: !5514, line: 22, baseType: !7, size: 32, offset: 160)
!5523 = distinct !DISubprogram(name: "bus_to_hcd", scope: !200, file: !200, line: 229, type: !5524, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5526)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{!212, !4734}
!5526 = !{!5527, !5528}
!5527 = !DILocalVariable(name: "bus", arg: 1, scope: !5523, file: !200, line: 229, type: !4734)
!5528 = !DILocalVariable(name: "__mptr", scope: !5529, file: !200, line: 231, type: !211)
!5529 = distinct !DILexicalBlock(scope: !5523, file: !200, line: 231, column: 9)
!5530 = !DILocation(line: 229, column: 58, scope: !5523)
!5531 = !DILocation(line: 231, column: 9, scope: !5529)
!5532 = !DILocation(line: 231, column: 9, scope: !5523)
!5533 = !DILocation(line: 231, column: 2, scope: !5523)
!5534 = distinct !DISubprogram(name: "device_lock", scope: !94, file: !94, line: 990, type: !4254, scopeLine: 991, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5535)
!5535 = !{!5536}
!5536 = !DILocalVariable(name: "dev", arg: 1, scope: !5534, file: !94, line: 990, type: !219)
!5537 = !DILocation(line: 990, column: 47, scope: !5534)
!5538 = !DILocation(line: 992, column: 14, scope: !5534)
!5539 = !DILocation(line: 992, column: 19, scope: !5534)
!5540 = !DILocation(line: 992, column: 2, scope: !5534)
!5541 = !DILocation(line: 993, column: 1, scope: !5534)
!5542 = distinct !DISubprogram(name: "usb_device_dump", scope: !3, file: !3, line: 390, type: !5543, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5546)
!5543 = !DISubroutineType(types: !5544)
!5544 = !{!347, !4953, !5545, !2028, !2028, !4707, !4734, !109, !109, !109}
!5545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!5546 = !{!5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566}
!5547 = !DILocalVariable(name: "buffer", arg: 1, scope: !5542, file: !3, line: 390, type: !4953)
!5548 = !DILocalVariable(name: "nbytes", arg: 2, scope: !5542, file: !3, line: 390, type: !5545)
!5549 = !DILocalVariable(name: "skip_bytes", arg: 3, scope: !5542, file: !3, line: 391, type: !2028)
!5550 = !DILocalVariable(name: "file_offset", arg: 4, scope: !5542, file: !3, line: 391, type: !2028)
!5551 = !DILocalVariable(name: "usbdev", arg: 5, scope: !5542, file: !3, line: 392, type: !4707)
!5552 = !DILocalVariable(name: "bus", arg: 6, scope: !5542, file: !3, line: 392, type: !4734)
!5553 = !DILocalVariable(name: "level", arg: 7, scope: !5542, file: !3, line: 393, type: !109)
!5554 = !DILocalVariable(name: "index", arg: 8, scope: !5542, file: !3, line: 393, type: !109)
!5555 = !DILocalVariable(name: "count", arg: 9, scope: !5542, file: !3, line: 393, type: !109)
!5556 = !DILocalVariable(name: "chix", scope: !5542, file: !3, line: 395, type: !109)
!5557 = !DILocalVariable(name: "ret", scope: !5542, file: !3, line: 396, type: !109)
!5558 = !DILocalVariable(name: "cnt", scope: !5542, file: !3, line: 396, type: !109)
!5559 = !DILocalVariable(name: "parent_devnum", scope: !5542, file: !3, line: 397, type: !109)
!5560 = !DILocalVariable(name: "pages_start", scope: !5542, file: !3, line: 398, type: !315)
!5561 = !DILocalVariable(name: "data_end", scope: !5542, file: !3, line: 398, type: !315)
!5562 = !DILocalVariable(name: "speed", scope: !5542, file: !3, line: 398, type: !315)
!5563 = !DILocalVariable(name: "length", scope: !5542, file: !3, line: 399, type: !7)
!5564 = !DILocalVariable(name: "total_written", scope: !5542, file: !3, line: 400, type: !347)
!5565 = !DILocalVariable(name: "childdev", scope: !5542, file: !3, line: 401, type: !4707)
!5566 = !DILocalVariable(name: "max", scope: !5567, file: !3, line: 448, type: !109)
!5567 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 447, column: 18)
!5568 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 447, column: 6)
!5569 = !DILocation(line: 390, column: 46, scope: !5542)
!5570 = !DILocation(line: 390, column: 62, scope: !5542)
!5571 = !DILocation(line: 391, column: 19, scope: !5542)
!5572 = !DILocation(line: 391, column: 39, scope: !5542)
!5573 = !DILocation(line: 392, column: 30, scope: !5542)
!5574 = !DILocation(line: 392, column: 54, scope: !5542)
!5575 = !DILocation(line: 393, column: 15, scope: !5542)
!5576 = !DILocation(line: 393, column: 26, scope: !5542)
!5577 = !DILocation(line: 393, column: 37, scope: !5542)
!5578 = !DILocation(line: 395, column: 2, scope: !5542)
!5579 = !DILocation(line: 395, column: 6, scope: !5542)
!5580 = !DILocation(line: 396, column: 2, scope: !5542)
!5581 = !DILocation(line: 396, column: 6, scope: !5542)
!5582 = !DILocation(line: 396, column: 11, scope: !5542)
!5583 = !DILocation(line: 397, column: 2, scope: !5542)
!5584 = !DILocation(line: 397, column: 6, scope: !5542)
!5585 = !DILocation(line: 398, column: 2, scope: !5542)
!5586 = !DILocation(line: 398, column: 8, scope: !5542)
!5587 = !DILocation(line: 398, column: 22, scope: !5542)
!5588 = !DILocation(line: 398, column: 33, scope: !5542)
!5589 = !DILocation(line: 399, column: 2, scope: !5542)
!5590 = !DILocation(line: 399, column: 15, scope: !5542)
!5591 = !DILocation(line: 400, column: 2, scope: !5542)
!5592 = !DILocation(line: 400, column: 10, scope: !5542)
!5593 = !DILocation(line: 401, column: 2, scope: !5542)
!5594 = !DILocation(line: 401, column: 21, scope: !5542)
!5595 = !DILocation(line: 404, column: 7, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 404, column: 6)
!5597 = !DILocation(line: 404, column: 6, scope: !5596)
!5598 = !DILocation(line: 404, column: 14, scope: !5596)
!5599 = !DILocation(line: 404, column: 6, scope: !5542)
!5600 = !DILocation(line: 405, column: 3, scope: !5596)
!5601 = !DILocation(line: 407, column: 6, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 407, column: 6)
!5603 = !DILocation(line: 407, column: 12, scope: !5602)
!5604 = !DILocation(line: 407, column: 6, scope: !5542)
!5605 = !DILocation(line: 408, column: 3, scope: !5602)
!5606 = !DILocation(line: 411, column: 24, scope: !5542)
!5607 = !DILocation(line: 411, column: 16, scope: !5542)
!5608 = !DILocation(line: 411, column: 14, scope: !5542)
!5609 = !DILocation(line: 412, column: 7, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 412, column: 6)
!5611 = !DILocation(line: 412, column: 6, scope: !5542)
!5612 = !DILocation(line: 413, column: 3, scope: !5610)
!5613 = !DILocation(line: 415, column: 6, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 415, column: 6)
!5615 = !DILocation(line: 415, column: 14, scope: !5614)
!5616 = !DILocation(line: 415, column: 21, scope: !5614)
!5617 = !DILocation(line: 415, column: 24, scope: !5614)
!5618 = !DILocation(line: 415, column: 32, scope: !5614)
!5619 = !DILocation(line: 415, column: 40, scope: !5614)
!5620 = !DILocation(line: 415, column: 47, scope: !5614)
!5621 = !DILocation(line: 415, column: 6, scope: !5542)
!5622 = !DILocation(line: 416, column: 19, scope: !5614)
!5623 = !DILocation(line: 416, column: 27, scope: !5614)
!5624 = !DILocation(line: 416, column: 35, scope: !5614)
!5625 = !DILocation(line: 416, column: 17, scope: !5614)
!5626 = !DILocation(line: 416, column: 3, scope: !5614)
!5627 = !DILocation(line: 421, column: 10, scope: !5542)
!5628 = !DILocation(line: 421, column: 18, scope: !5542)
!5629 = !DILocation(line: 421, column: 2, scope: !5542)
!5630 = !DILocation(line: 423, column: 9, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 421, column: 25)
!5632 = !DILocation(line: 423, column: 18, scope: !5631)
!5633 = !DILocation(line: 426, column: 9, scope: !5631)
!5634 = !DILocation(line: 426, column: 17, scope: !5631)
!5635 = !DILocation(line: 428, column: 9, scope: !5631)
!5636 = !DILocation(line: 428, column: 18, scope: !5631)
!5637 = !DILocation(line: 430, column: 9, scope: !5631)
!5638 = !DILocation(line: 430, column: 19, scope: !5631)
!5639 = !DILocation(line: 432, column: 9, scope: !5631)
!5640 = !DILocation(line: 432, column: 20, scope: !5631)
!5641 = !DILocation(line: 434, column: 9, scope: !5631)
!5642 = !DILocation(line: 435, column: 2, scope: !5631)
!5643 = !DILocation(line: 436, column: 13, scope: !5542)
!5644 = !DILocation(line: 436, column: 35, scope: !5542)
!5645 = !DILocation(line: 437, column: 4, scope: !5542)
!5646 = !DILocation(line: 437, column: 9, scope: !5542)
!5647 = !DILocation(line: 437, column: 17, scope: !5542)
!5648 = !DILocation(line: 437, column: 24, scope: !5542)
!5649 = !DILocation(line: 438, column: 4, scope: !5542)
!5650 = !DILocation(line: 438, column: 11, scope: !5542)
!5651 = !DILocation(line: 438, column: 18, scope: !5542)
!5652 = !DILocation(line: 438, column: 26, scope: !5542)
!5653 = !DILocation(line: 439, column: 4, scope: !5542)
!5654 = !DILocation(line: 439, column: 11, scope: !5542)
!5655 = !DILocation(line: 439, column: 19, scope: !5542)
!5656 = !DILocation(line: 436, column: 27, scope: !5542)
!5657 = !DILocation(line: 436, column: 25, scope: !5542)
!5658 = !DILocation(line: 436, column: 11, scope: !5542)
!5659 = !DILocation(line: 447, column: 6, scope: !5568)
!5660 = !DILocation(line: 447, column: 12, scope: !5568)
!5661 = !DILocation(line: 447, column: 6, scope: !5542)
!5662 = !DILocation(line: 448, column: 3, scope: !5567)
!5663 = !DILocation(line: 448, column: 7, scope: !5567)
!5664 = !DILocation(line: 451, column: 7, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 451, column: 7)
!5666 = !DILocation(line: 451, column: 15, scope: !5665)
!5667 = !DILocation(line: 451, column: 21, scope: !5665)
!5668 = !DILocation(line: 451, column: 39, scope: !5665)
!5669 = !DILocation(line: 452, column: 7, scope: !5665)
!5670 = !DILocation(line: 452, column: 15, scope: !5665)
!5671 = !DILocation(line: 452, column: 21, scope: !5665)
!5672 = !DILocation(line: 451, column: 7, scope: !5567)
!5673 = !DILocation(line: 453, column: 8, scope: !5665)
!5674 = !DILocation(line: 453, column: 4, scope: !5665)
!5675 = !DILocation(line: 455, column: 8, scope: !5665)
!5676 = !DILocation(line: 461, column: 23, scope: !5567)
!5677 = !DILocation(line: 462, column: 5, scope: !5567)
!5678 = !DILocation(line: 462, column: 10, scope: !5567)
!5679 = !DILocation(line: 462, column: 31, scope: !5567)
!5680 = !DILocation(line: 463, column: 12, scope: !5567)
!5681 = !DILocation(line: 463, column: 17, scope: !5567)
!5682 = !DILocation(line: 463, column: 10, scope: !5567)
!5683 = !DILocation(line: 463, column: 39, scope: !5567)
!5684 = !DILocation(line: 463, column: 43, scope: !5567)
!5685 = !DILocation(line: 463, column: 37, scope: !5567)
!5686 = !DILocation(line: 464, column: 8, scope: !5567)
!5687 = !DILocation(line: 464, column: 6, scope: !5567)
!5688 = !DILocation(line: 465, column: 5, scope: !5567)
!5689 = !DILocation(line: 465, column: 10, scope: !5567)
!5690 = !DILocation(line: 466, column: 5, scope: !5567)
!5691 = !DILocation(line: 466, column: 10, scope: !5567)
!5692 = !DILocation(line: 461, column: 15, scope: !5567)
!5693 = !DILocation(line: 461, column: 12, scope: !5567)
!5694 = !DILocation(line: 468, column: 2, scope: !5568)
!5695 = !DILocation(line: 468, column: 2, scope: !5567)
!5696 = !DILocation(line: 469, column: 27, scope: !5542)
!5697 = !DILocation(line: 469, column: 37, scope: !5542)
!5698 = !DILocation(line: 469, column: 49, scope: !5542)
!5699 = !DILocation(line: 469, column: 67, scope: !5542)
!5700 = !DILocation(line: 470, column: 6, scope: !5542)
!5701 = !DILocation(line: 469, column: 13, scope: !5542)
!5702 = !DILocation(line: 469, column: 11, scope: !5542)
!5703 = !DILocation(line: 472, column: 6, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 472, column: 6)
!5705 = !DILocation(line: 472, column: 18, scope: !5704)
!5706 = !DILocation(line: 472, column: 30, scope: !5704)
!5707 = !DILocation(line: 472, column: 48, scope: !5704)
!5708 = !DILocation(line: 472, column: 15, scope: !5704)
!5709 = !DILocation(line: 472, column: 6, scope: !5542)
!5710 = !DILocation(line: 473, column: 23, scope: !5704)
!5711 = !DILocation(line: 473, column: 15, scope: !5704)
!5712 = !DILocation(line: 473, column: 12, scope: !5704)
!5713 = !DILocation(line: 473, column: 3, scope: !5704)
!5714 = !DILocation(line: 475, column: 11, scope: !5542)
!5715 = !DILocation(line: 475, column: 22, scope: !5542)
!5716 = !DILocation(line: 475, column: 20, scope: !5542)
!5717 = !DILocation(line: 475, column: 9, scope: !5542)
!5718 = !DILocation(line: 477, column: 6, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 477, column: 6)
!5720 = !DILocation(line: 477, column: 16, scope: !5719)
!5721 = !DILocation(line: 477, column: 15, scope: !5719)
!5722 = !DILocation(line: 477, column: 13, scope: !5719)
!5723 = !DILocation(line: 477, column: 6, scope: !5542)
!5724 = !DILocation(line: 478, column: 14, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 477, column: 28)
!5726 = !DILocation(line: 478, column: 13, scope: !5725)
!5727 = !DILocation(line: 478, column: 10, scope: !5725)
!5728 = !DILocation(line: 479, column: 7, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 479, column: 7)
!5730 = !DILocation(line: 479, column: 17, scope: !5729)
!5731 = !DILocation(line: 479, column: 16, scope: !5729)
!5732 = !DILocation(line: 479, column: 14, scope: !5729)
!5733 = !DILocation(line: 479, column: 7, scope: !5725)
!5734 = !DILocation(line: 480, column: 14, scope: !5729)
!5735 = !DILocation(line: 480, column: 13, scope: !5729)
!5736 = !DILocation(line: 480, column: 11, scope: !5729)
!5737 = !DILocation(line: 480, column: 4, scope: !5729)
!5738 = !DILocation(line: 481, column: 21, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 481, column: 7)
!5740 = !DILocation(line: 481, column: 20, scope: !5739)
!5741 = !DILocation(line: 481, column: 29, scope: !5739)
!5742 = !DILocation(line: 481, column: 44, scope: !5739)
!5743 = !DILocation(line: 481, column: 43, scope: !5739)
!5744 = !DILocation(line: 481, column: 41, scope: !5739)
!5745 = !DILocation(line: 481, column: 56, scope: !5739)
!5746 = !DILocation(line: 481, column: 7, scope: !5739)
!5747 = !DILocation(line: 481, column: 7, scope: !5725)
!5748 = !DILocation(line: 482, column: 30, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 481, column: 65)
!5750 = !DILocation(line: 482, column: 15, scope: !5749)
!5751 = !DILocation(line: 482, column: 4, scope: !5749)
!5752 = !DILocation(line: 483, column: 4, scope: !5749)
!5753 = !DILocation(line: 485, column: 14, scope: !5725)
!5754 = !DILocation(line: 485, column: 4, scope: !5725)
!5755 = !DILocation(line: 485, column: 11, scope: !5725)
!5756 = !DILocation(line: 486, column: 19, scope: !5725)
!5757 = !DILocation(line: 486, column: 4, scope: !5725)
!5758 = !DILocation(line: 486, column: 16, scope: !5725)
!5759 = !DILocation(line: 487, column: 20, scope: !5725)
!5760 = !DILocation(line: 487, column: 17, scope: !5725)
!5761 = !DILocation(line: 488, column: 14, scope: !5725)
!5762 = !DILocation(line: 488, column: 4, scope: !5725)
!5763 = !DILocation(line: 488, column: 11, scope: !5725)
!5764 = !DILocation(line: 489, column: 4, scope: !5725)
!5765 = !DILocation(line: 489, column: 15, scope: !5725)
!5766 = !DILocation(line: 490, column: 2, scope: !5725)
!5767 = !DILocation(line: 491, column: 18, scope: !5719)
!5768 = !DILocation(line: 491, column: 4, scope: !5719)
!5769 = !DILocation(line: 491, column: 15, scope: !5719)
!5770 = !DILocation(line: 493, column: 28, scope: !5542)
!5771 = !DILocation(line: 493, column: 13, scope: !5542)
!5772 = !DILocation(line: 493, column: 2, scope: !5542)
!5773 = !DILocation(line: 496, column: 2, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 496, column: 2)
!5775 = !DILocation(line: 496, column: 2, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 496, column: 2)
!5777 = !DILocation(line: 496, column: 2, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 496, column: 2)
!5779 = !DILocation(line: 497, column: 3, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5778, file: !3, line: 496, column: 49)
!5781 = !DILocation(line: 498, column: 25, scope: !5780)
!5782 = !DILocation(line: 498, column: 33, scope: !5780)
!5783 = !DILocation(line: 498, column: 41, scope: !5780)
!5784 = !DILocation(line: 499, column: 11, scope: !5780)
!5785 = !DILocation(line: 499, column: 24, scope: !5780)
!5786 = !DILocation(line: 499, column: 34, scope: !5780)
!5787 = !DILocation(line: 500, column: 11, scope: !5780)
!5788 = !DILocation(line: 500, column: 17, scope: !5780)
!5789 = !DILocation(line: 500, column: 22, scope: !5780)
!5790 = !DILocation(line: 500, column: 27, scope: !5780)
!5791 = !DILocation(line: 500, column: 32, scope: !5780)
!5792 = !DILocation(line: 498, column: 9, scope: !5780)
!5793 = !DILocation(line: 498, column: 7, scope: !5780)
!5794 = !DILocation(line: 501, column: 3, scope: !5780)
!5795 = !DILocation(line: 502, column: 7, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 502, column: 7)
!5797 = !DILocation(line: 502, column: 11, scope: !5796)
!5798 = !DILocation(line: 502, column: 7, scope: !5780)
!5799 = !DILocation(line: 503, column: 11, scope: !5796)
!5800 = !DILocation(line: 503, column: 4, scope: !5796)
!5801 = !DILocation(line: 504, column: 20, scope: !5780)
!5802 = !DILocation(line: 504, column: 17, scope: !5780)
!5803 = distinct !{!5803, !5773, !5804, !5504, !5505}
!5804 = !DILocation(line: 505, column: 2, scope: !5774)
!5805 = !DILocation(line: 506, column: 9, scope: !5542)
!5806 = !DILocation(line: 506, column: 2, scope: !5542)
!5807 = !DILocation(line: 507, column: 1, scope: !5542)
!5808 = distinct !DISubprogram(name: "device_unlock", scope: !94, file: !94, line: 1005, type: !4254, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5809)
!5809 = !{!5810}
!5810 = !DILocalVariable(name: "dev", arg: 1, scope: !5808, file: !94, line: 1005, type: !219)
!5811 = !DILocation(line: 1005, column: 49, scope: !5808)
!5812 = !DILocation(line: 1007, column: 16, scope: !5808)
!5813 = !DILocation(line: 1007, column: 21, scope: !5808)
!5814 = !DILocation(line: 1007, column: 2, scope: !5808)
!5815 = !DILocation(line: 1008, column: 1, scope: !5808)
!5816 = !DISubprogram(name: "mutex_unlock", scope: !656, file: !656, line: 246, type: !5511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5817 = !DISubprogram(name: "__get_free_pages", scope: !5818, file: !5818, line: 289, type: !5819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5818 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!5819 = !DISubroutineType(types: !5820)
!5820 = !{!365, !1169, !7}
!5821 = !DISubprogram(name: "sprintf", scope: !5822, file: !5822, line: 10, type: !5823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5822 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5823 = !DISubroutineType(types: !5824)
!5824 = !{!109, !315, !227, null}
!5825 = distinct !DISubprogram(name: "usb_dump_desc", scope: !3, file: !3, line: 364, type: !5826, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5828)
!5826 = !DISubroutineType(types: !5827)
!5827 = !{!315, !315, !315, !4707}
!5828 = !{!5829, !5830, !5831, !5832}
!5829 = !DILocalVariable(name: "start", arg: 1, scope: !5825, file: !3, line: 364, type: !315)
!5830 = !DILocalVariable(name: "end", arg: 2, scope: !5825, file: !3, line: 364, type: !315)
!5831 = !DILocalVariable(name: "dev", arg: 3, scope: !5825, file: !3, line: 364, type: !4707)
!5832 = !DILocalVariable(name: "i", scope: !5825, file: !3, line: 366, type: !109)
!5833 = !DILocation(line: 364, column: 34, scope: !5825)
!5834 = !DILocation(line: 364, column: 47, scope: !5825)
!5835 = !DILocation(line: 364, column: 71, scope: !5825)
!5836 = !DILocation(line: 366, column: 2, scope: !5825)
!5837 = !DILocation(line: 366, column: 6, scope: !5825)
!5838 = !DILocation(line: 368, column: 37, scope: !5825)
!5839 = !DILocation(line: 368, column: 44, scope: !5825)
!5840 = !DILocation(line: 368, column: 50, scope: !5825)
!5841 = !DILocation(line: 368, column: 55, scope: !5825)
!5842 = !DILocation(line: 368, column: 10, scope: !5825)
!5843 = !DILocation(line: 368, column: 8, scope: !5825)
!5844 = !DILocation(line: 370, column: 34, scope: !5825)
!5845 = !DILocation(line: 370, column: 41, scope: !5825)
!5846 = !DILocation(line: 370, column: 46, scope: !5825)
!5847 = !DILocation(line: 370, column: 10, scope: !5825)
!5848 = !DILocation(line: 370, column: 8, scope: !5825)
!5849 = !DILocation(line: 372, column: 9, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 372, column: 2)
!5851 = !DILocation(line: 372, column: 7, scope: !5850)
!5852 = !DILocation(line: 372, column: 14, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 372, column: 2)
!5854 = !DILocation(line: 372, column: 18, scope: !5853)
!5855 = !DILocation(line: 372, column: 23, scope: !5853)
!5856 = !DILocation(line: 372, column: 34, scope: !5853)
!5857 = !DILocation(line: 372, column: 16, scope: !5853)
!5858 = !DILocation(line: 372, column: 2, scope: !5850)
!5859 = !DILocation(line: 373, column: 27, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 372, column: 59)
!5861 = !DILocation(line: 373, column: 32, scope: !5860)
!5862 = !DILocation(line: 374, column: 5, scope: !5860)
!5863 = !DILocation(line: 374, column: 12, scope: !5860)
!5864 = !DILocation(line: 374, column: 17, scope: !5860)
!5865 = !DILocation(line: 374, column: 22, scope: !5860)
!5866 = !DILocation(line: 374, column: 31, scope: !5860)
!5867 = !DILocation(line: 374, column: 29, scope: !5860)
!5868 = !DILocation(line: 376, column: 6, scope: !5860)
!5869 = !DILocation(line: 376, column: 11, scope: !5860)
!5870 = !DILocation(line: 376, column: 20, scope: !5860)
!5871 = !DILocation(line: 376, column: 18, scope: !5860)
!5872 = !DILocation(line: 376, column: 26, scope: !5860)
!5873 = !DILocation(line: 376, column: 31, scope: !5860)
!5874 = !DILocation(line: 376, column: 23, scope: !5860)
!5875 = !DILocation(line: 373, column: 11, scope: !5860)
!5876 = !DILocation(line: 373, column: 9, scope: !5860)
!5877 = !DILocation(line: 377, column: 2, scope: !5860)
!5878 = !DILocation(line: 372, column: 55, scope: !5853)
!5879 = !DILocation(line: 372, column: 2, scope: !5853)
!5880 = distinct !{!5880, !5858, !5881, !5504, !5505}
!5881 = !DILocation(line: 377, column: 2, scope: !5850)
!5882 = !DILocation(line: 378, column: 9, scope: !5825)
!5883 = !DILocation(line: 379, column: 1, scope: !5825)
!5884 = !DILocation(line: 378, column: 2, scope: !5825)
!5885 = distinct !DISubprogram(name: "copy_to_user", scope: !5886, file: !5886, line: 188, type: !5887, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5889)
!5886 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5887 = !DISubroutineType(types: !5888)
!5888 = !{!365, !211, !2615, !365}
!5889 = !{!5890, !5891, !5892}
!5890 = !DILocalVariable(name: "to", arg: 1, scope: !5885, file: !5886, line: 188, type: !211)
!5891 = !DILocalVariable(name: "from", arg: 2, scope: !5885, file: !5886, line: 188, type: !2615)
!5892 = !DILocalVariable(name: "n", arg: 3, scope: !5885, file: !5886, line: 188, type: !365)
!5893 = !DILocation(line: 188, column: 27, scope: !5885)
!5894 = !DILocation(line: 188, column: 43, scope: !5885)
!5895 = !DILocation(line: 188, column: 63, scope: !5885)
!5896 = !DILocation(line: 190, column: 22, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5885, file: !5886, line: 190, column: 6)
!5898 = !DILocation(line: 190, column: 28, scope: !5897)
!5899 = !DILocation(line: 190, column: 6, scope: !5897)
!5900 = !DILocation(line: 190, column: 6, scope: !5885)
!5901 = !DILocation(line: 191, column: 21, scope: !5897)
!5902 = !DILocation(line: 191, column: 25, scope: !5897)
!5903 = !DILocation(line: 191, column: 31, scope: !5897)
!5904 = !DILocation(line: 191, column: 7, scope: !5897)
!5905 = !DILocation(line: 191, column: 5, scope: !5897)
!5906 = !DILocation(line: 191, column: 3, scope: !5897)
!5907 = !DILocation(line: 192, column: 9, scope: !5885)
!5908 = !DILocation(line: 192, column: 2, scope: !5885)
!5909 = !DISubprogram(name: "free_pages", scope: !5818, file: !5818, line: 303, type: !5910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5910 = !DISubroutineType(types: !5911)
!5911 = !{null, !365, !7}
!5912 = !DISubprogram(name: "usb_hub_find_child", scope: !176, file: !176, line: 752, type: !5913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5913 = !DISubroutineType(types: !5914)
!5914 = !{!4707, !4707, !109}
!5915 = distinct !DISubprogram(name: "usb_dump_device_descriptor", scope: !3, file: !3, line: 313, type: !5916, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5920)
!5916 = !DISubroutineType(types: !5917)
!5917 = !{!315, !315, !315, !5918}
!5918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5919, size: 64)
!5919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4778)
!5920 = !{!5921, !5922, !5923, !5924, !5925}
!5921 = !DILocalVariable(name: "start", arg: 1, scope: !5915, file: !3, line: 313, type: !315)
!5922 = !DILocalVariable(name: "end", arg: 2, scope: !5915, file: !3, line: 313, type: !315)
!5923 = !DILocalVariable(name: "desc", arg: 3, scope: !5915, file: !3, line: 314, type: !5918)
!5924 = !DILocalVariable(name: "bcdUSB", scope: !5915, file: !3, line: 316, type: !283)
!5925 = !DILocalVariable(name: "bcdDevice", scope: !5915, file: !3, line: 317, type: !283)
!5926 = !DILocation(line: 313, column: 47, scope: !5915)
!5927 = !DILocation(line: 313, column: 60, scope: !5915)
!5928 = !DILocation(line: 314, column: 41, scope: !5915)
!5929 = !DILocation(line: 316, column: 2, scope: !5915)
!5930 = !DILocation(line: 316, column: 6, scope: !5915)
!5931 = !DILocation(line: 316, column: 15, scope: !5915)
!5932 = !DILocation(line: 317, column: 2, scope: !5915)
!5933 = !DILocation(line: 317, column: 6, scope: !5915)
!5934 = !DILocation(line: 317, column: 18, scope: !5915)
!5935 = !DILocation(line: 319, column: 6, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5915, file: !3, line: 319, column: 6)
!5937 = !DILocation(line: 319, column: 14, scope: !5936)
!5938 = !DILocation(line: 319, column: 12, scope: !5936)
!5939 = !DILocation(line: 319, column: 6, scope: !5915)
!5940 = !DILocation(line: 320, column: 10, scope: !5936)
!5941 = !DILocation(line: 320, column: 3, scope: !5936)
!5942 = !DILocation(line: 321, column: 19, scope: !5915)
!5943 = !DILocation(line: 322, column: 6, scope: !5915)
!5944 = !DILocation(line: 322, column: 13, scope: !5915)
!5945 = !DILocation(line: 322, column: 19, scope: !5915)
!5946 = !DILocation(line: 322, column: 26, scope: !5915)
!5947 = !DILocation(line: 323, column: 6, scope: !5915)
!5948 = !DILocation(line: 323, column: 12, scope: !5915)
!5949 = !DILocation(line: 324, column: 19, scope: !5915)
!5950 = !DILocation(line: 324, column: 25, scope: !5915)
!5951 = !DILocation(line: 324, column: 6, scope: !5915)
!5952 = !DILocation(line: 325, column: 6, scope: !5915)
!5953 = !DILocation(line: 325, column: 12, scope: !5915)
!5954 = !DILocation(line: 326, column: 6, scope: !5915)
!5955 = !DILocation(line: 326, column: 12, scope: !5915)
!5956 = !DILocation(line: 327, column: 6, scope: !5915)
!5957 = !DILocation(line: 327, column: 12, scope: !5915)
!5958 = !DILocation(line: 328, column: 6, scope: !5915)
!5959 = !DILocation(line: 328, column: 12, scope: !5915)
!5960 = !DILocation(line: 321, column: 11, scope: !5915)
!5961 = !DILocation(line: 321, column: 8, scope: !5915)
!5962 = !DILocation(line: 329, column: 6, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5915, file: !3, line: 329, column: 6)
!5964 = !DILocation(line: 329, column: 14, scope: !5963)
!5965 = !DILocation(line: 329, column: 12, scope: !5963)
!5966 = !DILocation(line: 329, column: 6, scope: !5915)
!5967 = !DILocation(line: 330, column: 10, scope: !5963)
!5968 = !DILocation(line: 330, column: 3, scope: !5963)
!5969 = !DILocation(line: 331, column: 19, scope: !5915)
!5970 = !DILocation(line: 332, column: 5, scope: !5915)
!5971 = !DILocation(line: 333, column: 5, scope: !5915)
!5972 = !DILocation(line: 334, column: 5, scope: !5915)
!5973 = !DILocation(line: 334, column: 15, scope: !5915)
!5974 = !DILocation(line: 334, column: 21, scope: !5915)
!5975 = !DILocation(line: 334, column: 31, scope: !5915)
!5976 = !DILocation(line: 331, column: 11, scope: !5915)
!5977 = !DILocation(line: 331, column: 8, scope: !5915)
!5978 = !DILocation(line: 335, column: 9, scope: !5915)
!5979 = !DILocation(line: 335, column: 2, scope: !5915)
!5980 = !DILocation(line: 336, column: 1, scope: !5915)
!5981 = distinct !DISubprogram(name: "usb_dump_device_strings", scope: !3, file: !3, line: 341, type: !5826, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5982)
!5982 = !{!5983, !5984, !5985, !5986}
!5983 = !DILocalVariable(name: "start", arg: 1, scope: !5981, file: !3, line: 341, type: !315)
!5984 = !DILocalVariable(name: "end", arg: 2, scope: !5981, file: !3, line: 341, type: !315)
!5985 = !DILocalVariable(name: "dev", arg: 3, scope: !5981, file: !3, line: 342, type: !4707)
!5986 = !DILabel(scope: !5981, name: "out", file: !3, line: 360)
!5987 = !DILocation(line: 341, column: 44, scope: !5981)
!5988 = !DILocation(line: 341, column: 57, scope: !5981)
!5989 = !DILocation(line: 342, column: 29, scope: !5981)
!5990 = !DILocation(line: 344, column: 6, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5981, file: !3, line: 344, column: 6)
!5992 = !DILocation(line: 344, column: 14, scope: !5991)
!5993 = !DILocation(line: 344, column: 12, scope: !5991)
!5994 = !DILocation(line: 344, column: 6, scope: !5981)
!5995 = !DILocation(line: 345, column: 10, scope: !5991)
!5996 = !DILocation(line: 345, column: 3, scope: !5991)
!5997 = !DILocation(line: 346, column: 6, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5981, file: !3, line: 346, column: 6)
!5999 = !DILocation(line: 346, column: 11, scope: !5998)
!6000 = !DILocation(line: 346, column: 6, scope: !5981)
!6001 = !DILocation(line: 347, column: 20, scope: !5998)
!6002 = !DILocation(line: 348, column: 6, scope: !5998)
!6003 = !DILocation(line: 348, column: 11, scope: !5998)
!6004 = !DILocation(line: 347, column: 12, scope: !5998)
!6005 = !DILocation(line: 347, column: 9, scope: !5998)
!6006 = !DILocation(line: 347, column: 3, scope: !5998)
!6007 = !DILocation(line: 349, column: 6, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !5981, file: !3, line: 349, column: 6)
!6009 = !DILocation(line: 349, column: 14, scope: !6008)
!6010 = !DILocation(line: 349, column: 12, scope: !6008)
!6011 = !DILocation(line: 349, column: 6, scope: !5981)
!6012 = !DILocation(line: 350, column: 3, scope: !6008)
!6013 = !DILocation(line: 351, column: 6, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !5981, file: !3, line: 351, column: 6)
!6015 = !DILocation(line: 351, column: 11, scope: !6014)
!6016 = !DILocation(line: 351, column: 6, scope: !5981)
!6017 = !DILocation(line: 352, column: 20, scope: !6014)
!6018 = !DILocation(line: 352, column: 50, scope: !6014)
!6019 = !DILocation(line: 352, column: 55, scope: !6014)
!6020 = !DILocation(line: 352, column: 12, scope: !6014)
!6021 = !DILocation(line: 352, column: 9, scope: !6014)
!6022 = !DILocation(line: 352, column: 3, scope: !6014)
!6023 = !DILocation(line: 353, column: 6, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !5981, file: !3, line: 353, column: 6)
!6025 = !DILocation(line: 353, column: 14, scope: !6024)
!6026 = !DILocation(line: 353, column: 12, scope: !6024)
!6027 = !DILocation(line: 353, column: 6, scope: !5981)
!6028 = !DILocation(line: 354, column: 3, scope: !6024)
!6029 = !DILocation(line: 356, column: 6, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !5981, file: !3, line: 356, column: 6)
!6031 = !DILocation(line: 356, column: 11, scope: !6030)
!6032 = !DILocation(line: 356, column: 6, scope: !5981)
!6033 = !DILocation(line: 357, column: 20, scope: !6030)
!6034 = !DILocation(line: 358, column: 6, scope: !6030)
!6035 = !DILocation(line: 358, column: 11, scope: !6030)
!6036 = !DILocation(line: 357, column: 12, scope: !6030)
!6037 = !DILocation(line: 357, column: 9, scope: !6030)
!6038 = !DILocation(line: 357, column: 3, scope: !6030)
!6039 = !DILocation(line: 360, column: 2, scope: !5981)
!6040 = !DILocation(line: 361, column: 9, scope: !5981)
!6041 = !DILocation(line: 361, column: 2, scope: !5981)
!6042 = !DILocation(line: 362, column: 1, scope: !5981)
!6043 = distinct !DISubprogram(name: "usb_dump_config", scope: !3, file: !3, line: 279, type: !6044, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6048)
!6044 = !DISubroutineType(types: !6045)
!6045 = !{!315, !109, !315, !315, !6046, !109}
!6046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6047, size: 64)
!6047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4866)
!6048 = !{!6049, !6050, !6051, !6052, !6053, !6054, !6055, !6056, !6057}
!6049 = !DILocalVariable(name: "speed", arg: 1, scope: !6043, file: !3, line: 279, type: !109)
!6050 = !DILocalVariable(name: "start", arg: 2, scope: !6043, file: !3, line: 279, type: !315)
!6051 = !DILocalVariable(name: "end", arg: 3, scope: !6043, file: !3, line: 279, type: !315)
!6052 = !DILocalVariable(name: "config", arg: 4, scope: !6043, file: !3, line: 280, type: !6046)
!6053 = !DILocalVariable(name: "active", arg: 5, scope: !6043, file: !3, line: 280, type: !109)
!6054 = !DILocalVariable(name: "i", scope: !6043, file: !3, line: 282, type: !109)
!6055 = !DILocalVariable(name: "j", scope: !6043, file: !3, line: 282, type: !109)
!6056 = !DILocalVariable(name: "intfc", scope: !6043, file: !3, line: 283, type: !4939)
!6057 = !DILocalVariable(name: "interface", scope: !6043, file: !3, line: 284, type: !4895)
!6058 = !DILocation(line: 279, column: 34, scope: !6043)
!6059 = !DILocation(line: 279, column: 47, scope: !6043)
!6060 = !DILocation(line: 279, column: 60, scope: !6043)
!6061 = !DILocation(line: 280, column: 39, scope: !6043)
!6062 = !DILocation(line: 280, column: 51, scope: !6043)
!6063 = !DILocation(line: 282, column: 2, scope: !6043)
!6064 = !DILocation(line: 282, column: 6, scope: !6043)
!6065 = !DILocation(line: 282, column: 9, scope: !6043)
!6066 = !DILocation(line: 283, column: 2, scope: !6043)
!6067 = !DILocation(line: 283, column: 30, scope: !6043)
!6068 = !DILocation(line: 284, column: 2, scope: !6043)
!6069 = !DILocation(line: 284, column: 24, scope: !6043)
!6070 = !DILocation(line: 286, column: 6, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6043, file: !3, line: 286, column: 6)
!6072 = !DILocation(line: 286, column: 14, scope: !6071)
!6073 = !DILocation(line: 286, column: 12, scope: !6071)
!6074 = !DILocation(line: 286, column: 6, scope: !6043)
!6075 = !DILocation(line: 287, column: 10, scope: !6071)
!6076 = !DILocation(line: 287, column: 3, scope: !6071)
!6077 = !DILocation(line: 288, column: 7, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6043, file: !3, line: 288, column: 6)
!6079 = !DILocation(line: 288, column: 6, scope: !6043)
!6080 = !DILocation(line: 290, column: 10, scope: !6078)
!6081 = !DILocation(line: 290, column: 26, scope: !6078)
!6082 = !DILocation(line: 290, column: 18, scope: !6078)
!6083 = !DILocation(line: 290, column: 16, scope: !6078)
!6084 = !DILocation(line: 290, column: 3, scope: !6078)
!6085 = !DILocation(line: 291, column: 37, scope: !6043)
!6086 = !DILocation(line: 291, column: 44, scope: !6043)
!6087 = !DILocation(line: 291, column: 50, scope: !6043)
!6088 = !DILocation(line: 291, column: 58, scope: !6043)
!6089 = !DILocation(line: 291, column: 64, scope: !6043)
!6090 = !DILocation(line: 292, column: 4, scope: !6043)
!6091 = !DILocation(line: 291, column: 10, scope: !6043)
!6092 = !DILocation(line: 291, column: 8, scope: !6043)
!6093 = !DILocation(line: 293, column: 9, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !6043, file: !3, line: 293, column: 2)
!6095 = !DILocation(line: 293, column: 7, scope: !6094)
!6096 = !DILocation(line: 293, column: 14, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 293, column: 2)
!6098 = !DILocation(line: 293, column: 16, scope: !6097)
!6099 = !DILocation(line: 293, column: 2, scope: !6094)
!6100 = !DILocation(line: 294, column: 7, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 294, column: 7)
!6102 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 293, column: 36)
!6103 = !DILocation(line: 294, column: 15, scope: !6101)
!6104 = !DILocation(line: 294, column: 26, scope: !6101)
!6105 = !DILocation(line: 294, column: 29, scope: !6101)
!6106 = !DILocation(line: 294, column: 7, scope: !6102)
!6107 = !DILocation(line: 295, column: 4, scope: !6101)
!6108 = !DILocation(line: 296, column: 35, scope: !6102)
!6109 = !DILocation(line: 296, column: 42, scope: !6102)
!6110 = !DILocation(line: 297, column: 6, scope: !6102)
!6111 = !DILocation(line: 297, column: 14, scope: !6102)
!6112 = !DILocation(line: 297, column: 25, scope: !6102)
!6113 = !DILocation(line: 296, column: 11, scope: !6102)
!6114 = !DILocation(line: 296, column: 9, scope: !6102)
!6115 = !DILocation(line: 298, column: 2, scope: !6102)
!6116 = !DILocation(line: 293, column: 32, scope: !6097)
!6117 = !DILocation(line: 293, column: 2, scope: !6097)
!6118 = distinct !{!6118, !6099, !6119, !5504, !5505}
!6119 = !DILocation(line: 298, column: 2, scope: !6094)
!6120 = !DILocation(line: 299, column: 9, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6043, file: !3, line: 299, column: 2)
!6122 = !DILocation(line: 299, column: 7, scope: !6121)
!6123 = !DILocation(line: 299, column: 14, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6121, file: !3, line: 299, column: 2)
!6125 = !DILocation(line: 299, column: 18, scope: !6124)
!6126 = !DILocation(line: 299, column: 26, scope: !6124)
!6127 = !DILocation(line: 299, column: 31, scope: !6124)
!6128 = !DILocation(line: 299, column: 16, scope: !6124)
!6129 = !DILocation(line: 299, column: 2, scope: !6121)
!6130 = !DILocation(line: 300, column: 11, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 299, column: 52)
!6132 = !DILocation(line: 300, column: 19, scope: !6131)
!6133 = !DILocation(line: 300, column: 30, scope: !6131)
!6134 = !DILocation(line: 300, column: 9, scope: !6131)
!6135 = !DILocation(line: 301, column: 15, scope: !6131)
!6136 = !DILocation(line: 301, column: 23, scope: !6131)
!6137 = !DILocation(line: 301, column: 33, scope: !6131)
!6138 = !DILocation(line: 301, column: 13, scope: !6131)
!6139 = !DILocation(line: 302, column: 10, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 302, column: 3)
!6141 = !DILocation(line: 302, column: 8, scope: !6140)
!6142 = !DILocation(line: 302, column: 15, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6140, file: !3, line: 302, column: 3)
!6144 = !DILocation(line: 302, column: 19, scope: !6143)
!6145 = !DILocation(line: 302, column: 26, scope: !6143)
!6146 = !DILocation(line: 302, column: 17, scope: !6143)
!6147 = !DILocation(line: 302, column: 3, scope: !6140)
!6148 = !DILocation(line: 303, column: 31, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6143, file: !3, line: 302, column: 47)
!6150 = !DILocation(line: 304, column: 5, scope: !6149)
!6151 = !DILocation(line: 304, column: 12, scope: !6149)
!6152 = !DILocation(line: 304, column: 17, scope: !6149)
!6153 = !DILocation(line: 304, column: 24, scope: !6149)
!6154 = !DILocation(line: 304, column: 35, scope: !6149)
!6155 = !DILocation(line: 303, column: 12, scope: !6149)
!6156 = !DILocation(line: 303, column: 10, scope: !6149)
!6157 = !DILocation(line: 305, column: 3, scope: !6149)
!6158 = !DILocation(line: 302, column: 43, scope: !6143)
!6159 = !DILocation(line: 302, column: 3, scope: !6143)
!6160 = distinct !{!6160, !6147, !6161, !5504, !5505}
!6161 = !DILocation(line: 305, column: 3, scope: !6140)
!6162 = !DILocation(line: 306, column: 2, scope: !6131)
!6163 = !DILocation(line: 299, column: 48, scope: !6124)
!6164 = !DILocation(line: 299, column: 2, scope: !6124)
!6165 = distinct !{!6165, !6129, !6166, !5504, !5505}
!6166 = !DILocation(line: 306, column: 2, scope: !6121)
!6167 = !DILocation(line: 307, column: 9, scope: !6043)
!6168 = !DILocation(line: 307, column: 2, scope: !6043)
!6169 = !DILocation(line: 308, column: 1, scope: !6043)
!6170 = distinct !DISubprogram(name: "class_decode", scope: !3, file: !3, line: 132, type: !6171, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6173)
!6171 = !DISubroutineType(types: !6172)
!6172 = !{!227, !851}
!6173 = !{!6174, !6175}
!6174 = !DILocalVariable(name: "class", arg: 1, scope: !6170, file: !3, line: 132, type: !851)
!6175 = !DILocalVariable(name: "ix", scope: !6170, file: !3, line: 134, type: !109)
!6176 = !DILocation(line: 132, column: 43, scope: !6170)
!6177 = !DILocation(line: 134, column: 2, scope: !6170)
!6178 = !DILocation(line: 134, column: 6, scope: !6170)
!6179 = !DILocation(line: 136, column: 10, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 136, column: 2)
!6181 = !DILocation(line: 136, column: 7, scope: !6180)
!6182 = !DILocation(line: 136, column: 25, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 136, column: 2)
!6184 = !DILocation(line: 136, column: 15, scope: !6183)
!6185 = !DILocation(line: 136, column: 29, scope: !6183)
!6186 = !DILocation(line: 136, column: 35, scope: !6183)
!6187 = !DILocation(line: 136, column: 2, scope: !6180)
!6188 = !DILocation(line: 137, column: 17, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6183, file: !3, line: 137, column: 7)
!6190 = !DILocation(line: 137, column: 7, scope: !6189)
!6191 = !DILocation(line: 137, column: 21, scope: !6189)
!6192 = !DILocation(line: 137, column: 30, scope: !6189)
!6193 = !DILocation(line: 137, column: 27, scope: !6189)
!6194 = !DILocation(line: 137, column: 7, scope: !6183)
!6195 = !DILocation(line: 138, column: 4, scope: !6189)
!6196 = !DILocation(line: 136, column: 44, scope: !6183)
!6197 = !DILocation(line: 136, column: 2, scope: !6183)
!6198 = distinct !{!6198, !6187, !6199, !5504, !5505}
!6199 = !DILocation(line: 138, column: 4, scope: !6180)
!6200 = !DILocation(line: 139, column: 19, scope: !6170)
!6201 = !DILocation(line: 139, column: 9, scope: !6170)
!6202 = !DILocation(line: 139, column: 23, scope: !6170)
!6203 = !DILocation(line: 140, column: 1, scope: !6170)
!6204 = !DILocation(line: 139, column: 2, scope: !6170)
!6205 = distinct !DISubprogram(name: "usb_dump_config_descriptor", scope: !3, file: !3, line: 257, type: !6206, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6210)
!6206 = !DISubroutineType(types: !6207)
!6207 = !{!315, !315, !315, !6208, !109, !109}
!6208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6209, size: 64)
!6209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4869)
!6210 = !{!6211, !6212, !6213, !6214, !6215, !6216}
!6211 = !DILocalVariable(name: "start", arg: 1, scope: !6205, file: !3, line: 257, type: !315)
!6212 = !DILocalVariable(name: "end", arg: 2, scope: !6205, file: !3, line: 257, type: !315)
!6213 = !DILocalVariable(name: "desc", arg: 3, scope: !6205, file: !3, line: 258, type: !6208)
!6214 = !DILocalVariable(name: "active", arg: 4, scope: !6205, file: !3, line: 259, type: !109)
!6215 = !DILocalVariable(name: "speed", arg: 5, scope: !6205, file: !3, line: 259, type: !109)
!6216 = !DILocalVariable(name: "mul", scope: !6205, file: !3, line: 261, type: !109)
!6217 = !DILocation(line: 257, column: 47, scope: !6205)
!6218 = !DILocation(line: 257, column: 60, scope: !6205)
!6219 = !DILocation(line: 258, column: 41, scope: !6205)
!6220 = !DILocation(line: 259, column: 9, scope: !6205)
!6221 = !DILocation(line: 259, column: 21, scope: !6205)
!6222 = !DILocation(line: 261, column: 2, scope: !6205)
!6223 = !DILocation(line: 261, column: 6, scope: !6205)
!6224 = !DILocation(line: 263, column: 6, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6205, file: !3, line: 263, column: 6)
!6226 = !DILocation(line: 263, column: 14, scope: !6225)
!6227 = !DILocation(line: 263, column: 12, scope: !6225)
!6228 = !DILocation(line: 263, column: 6, scope: !6205)
!6229 = !DILocation(line: 264, column: 10, scope: !6225)
!6230 = !DILocation(line: 264, column: 3, scope: !6225)
!6231 = !DILocation(line: 265, column: 6, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6205, file: !3, line: 265, column: 6)
!6233 = !DILocation(line: 265, column: 12, scope: !6232)
!6234 = !DILocation(line: 265, column: 6, scope: !6205)
!6235 = !DILocation(line: 266, column: 7, scope: !6232)
!6236 = !DILocation(line: 266, column: 3, scope: !6232)
!6237 = !DILocation(line: 268, column: 7, scope: !6232)
!6238 = !DILocation(line: 269, column: 19, scope: !6205)
!6239 = !DILocation(line: 271, column: 5, scope: !6205)
!6240 = !DILocation(line: 272, column: 5, scope: !6205)
!6241 = !DILocation(line: 272, column: 11, scope: !6205)
!6242 = !DILocation(line: 273, column: 5, scope: !6205)
!6243 = !DILocation(line: 273, column: 11, scope: !6205)
!6244 = !DILocation(line: 274, column: 5, scope: !6205)
!6245 = !DILocation(line: 274, column: 11, scope: !6205)
!6246 = !DILocation(line: 275, column: 5, scope: !6205)
!6247 = !DILocation(line: 275, column: 11, scope: !6205)
!6248 = !DILocation(line: 275, column: 23, scope: !6205)
!6249 = !DILocation(line: 275, column: 21, scope: !6205)
!6250 = !DILocation(line: 269, column: 11, scope: !6205)
!6251 = !DILocation(line: 269, column: 8, scope: !6205)
!6252 = !DILocation(line: 276, column: 9, scope: !6205)
!6253 = !DILocation(line: 276, column: 2, scope: !6205)
!6254 = !DILocation(line: 277, column: 1, scope: !6205)
!6255 = distinct !DISubprogram(name: "usb_dump_iad_descriptor", scope: !3, file: !3, line: 237, type: !6256, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6260)
!6256 = !DISubroutineType(types: !6257)
!6257 = !{!315, !315, !315, !6258}
!6258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6259, size: 64)
!6259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4883)
!6260 = !{!6261, !6262, !6263}
!6261 = !DILocalVariable(name: "start", arg: 1, scope: !6255, file: !3, line: 237, type: !315)
!6262 = !DILocalVariable(name: "end", arg: 2, scope: !6255, file: !3, line: 237, type: !315)
!6263 = !DILocalVariable(name: "iad", arg: 3, scope: !6255, file: !3, line: 238, type: !6258)
!6264 = !DILocation(line: 237, column: 44, scope: !6255)
!6265 = !DILocation(line: 237, column: 57, scope: !6255)
!6266 = !DILocation(line: 238, column: 49, scope: !6255)
!6267 = !DILocation(line: 240, column: 6, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 240, column: 6)
!6269 = !DILocation(line: 240, column: 14, scope: !6268)
!6270 = !DILocation(line: 240, column: 12, scope: !6268)
!6271 = !DILocation(line: 240, column: 6, scope: !6255)
!6272 = !DILocation(line: 241, column: 10, scope: !6268)
!6273 = !DILocation(line: 241, column: 3, scope: !6268)
!6274 = !DILocation(line: 242, column: 19, scope: !6255)
!6275 = !DILocation(line: 243, column: 5, scope: !6255)
!6276 = !DILocation(line: 243, column: 10, scope: !6255)
!6277 = !DILocation(line: 244, column: 5, scope: !6255)
!6278 = !DILocation(line: 244, column: 10, scope: !6255)
!6279 = !DILocation(line: 245, column: 5, scope: !6255)
!6280 = !DILocation(line: 245, column: 10, scope: !6255)
!6281 = !DILocation(line: 246, column: 18, scope: !6255)
!6282 = !DILocation(line: 246, column: 23, scope: !6255)
!6283 = !DILocation(line: 246, column: 5, scope: !6255)
!6284 = !DILocation(line: 247, column: 5, scope: !6255)
!6285 = !DILocation(line: 247, column: 10, scope: !6255)
!6286 = !DILocation(line: 248, column: 5, scope: !6255)
!6287 = !DILocation(line: 248, column: 10, scope: !6255)
!6288 = !DILocation(line: 242, column: 11, scope: !6255)
!6289 = !DILocation(line: 242, column: 8, scope: !6255)
!6290 = !DILocation(line: 249, column: 9, scope: !6255)
!6291 = !DILocation(line: 249, column: 2, scope: !6255)
!6292 = !DILocation(line: 250, column: 1, scope: !6255)
!6293 = distinct !DISubprogram(name: "usb_dump_interface", scope: !3, file: !3, line: 222, type: !6294, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6300)
!6294 = !DISubroutineType(types: !6295)
!6295 = !{!315, !109, !315, !315, !6296, !6298, !109}
!6296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6297, size: 64)
!6297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4940)
!6298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6299, size: 64)
!6299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4896)
!6300 = !{!6301, !6302, !6303, !6304, !6305, !6306, !6307, !6310}
!6301 = !DILocalVariable(name: "speed", arg: 1, scope: !6293, file: !3, line: 222, type: !109)
!6302 = !DILocalVariable(name: "start", arg: 2, scope: !6293, file: !3, line: 222, type: !315)
!6303 = !DILocalVariable(name: "end", arg: 3, scope: !6293, file: !3, line: 222, type: !315)
!6304 = !DILocalVariable(name: "intfc", arg: 4, scope: !6293, file: !3, line: 223, type: !6296)
!6305 = !DILocalVariable(name: "iface", arg: 5, scope: !6293, file: !3, line: 224, type: !6298)
!6306 = !DILocalVariable(name: "setno", arg: 6, scope: !6293, file: !3, line: 224, type: !109)
!6307 = !DILocalVariable(name: "desc", scope: !6293, file: !3, line: 226, type: !6308)
!6308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6309, size: 64)
!6309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4900)
!6310 = !DILocalVariable(name: "i", scope: !6293, file: !3, line: 227, type: !109)
!6311 = !DILocation(line: 222, column: 37, scope: !6293)
!6312 = !DILocation(line: 222, column: 50, scope: !6293)
!6313 = !DILocation(line: 222, column: 63, scope: !6293)
!6314 = !DILocation(line: 223, column: 39, scope: !6293)
!6315 = !DILocation(line: 224, column: 33, scope: !6293)
!6316 = !DILocation(line: 224, column: 44, scope: !6293)
!6317 = !DILocation(line: 226, column: 2, scope: !6293)
!6318 = !DILocation(line: 226, column: 35, scope: !6293)
!6319 = !DILocation(line: 226, column: 43, scope: !6293)
!6320 = !DILocation(line: 226, column: 50, scope: !6293)
!6321 = !DILocation(line: 226, column: 61, scope: !6293)
!6322 = !DILocation(line: 227, column: 2, scope: !6293)
!6323 = !DILocation(line: 227, column: 6, scope: !6293)
!6324 = !DILocation(line: 229, column: 40, scope: !6293)
!6325 = !DILocation(line: 229, column: 47, scope: !6293)
!6326 = !DILocation(line: 229, column: 52, scope: !6293)
!6327 = !DILocation(line: 229, column: 59, scope: !6293)
!6328 = !DILocation(line: 229, column: 66, scope: !6293)
!6329 = !DILocation(line: 229, column: 10, scope: !6293)
!6330 = !DILocation(line: 229, column: 8, scope: !6293)
!6331 = !DILocation(line: 230, column: 9, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6293, file: !3, line: 230, column: 2)
!6333 = !DILocation(line: 230, column: 7, scope: !6332)
!6334 = !DILocation(line: 230, column: 14, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6332, file: !3, line: 230, column: 2)
!6336 = !DILocation(line: 230, column: 18, scope: !6335)
!6337 = !DILocation(line: 230, column: 24, scope: !6335)
!6338 = !DILocation(line: 230, column: 29, scope: !6335)
!6339 = !DILocation(line: 230, column: 16, scope: !6335)
!6340 = !DILocation(line: 230, column: 2, scope: !6332)
!6341 = !DILocation(line: 231, column: 40, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 230, column: 49)
!6343 = !DILocation(line: 232, column: 5, scope: !6342)
!6344 = !DILocation(line: 232, column: 12, scope: !6342)
!6345 = !DILocation(line: 232, column: 18, scope: !6342)
!6346 = !DILocation(line: 232, column: 24, scope: !6342)
!6347 = !DILocation(line: 232, column: 33, scope: !6342)
!6348 = !DILocation(line: 232, column: 36, scope: !6342)
!6349 = !DILocation(line: 231, column: 11, scope: !6342)
!6350 = !DILocation(line: 231, column: 9, scope: !6342)
!6351 = !DILocation(line: 233, column: 2, scope: !6342)
!6352 = !DILocation(line: 230, column: 45, scope: !6335)
!6353 = !DILocation(line: 230, column: 2, scope: !6335)
!6354 = distinct !{!6354, !6340, !6355, !5504, !5505}
!6355 = !DILocation(line: 233, column: 2, scope: !6332)
!6356 = !DILocation(line: 234, column: 9, scope: !6293)
!6357 = !DILocation(line: 235, column: 1, scope: !6293)
!6358 = !DILocation(line: 234, column: 2, scope: !6293)
!6359 = distinct !DISubprogram(name: "usb_dump_interface_descriptor", scope: !3, file: !3, line: 191, type: !6360, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6362)
!6360 = !DISubroutineType(types: !6361)
!6361 = !{!315, !315, !315, !6296, !6298, !109}
!6362 = !{!6363, !6364, !6365, !6366, !6367, !6368, !6371, !6372}
!6363 = !DILocalVariable(name: "start", arg: 1, scope: !6359, file: !3, line: 191, type: !315)
!6364 = !DILocalVariable(name: "end", arg: 2, scope: !6359, file: !3, line: 191, type: !315)
!6365 = !DILocalVariable(name: "intfc", arg: 3, scope: !6359, file: !3, line: 192, type: !6296)
!6366 = !DILocalVariable(name: "iface", arg: 4, scope: !6359, file: !3, line: 193, type: !6298)
!6367 = !DILocalVariable(name: "setno", arg: 5, scope: !6359, file: !3, line: 194, type: !109)
!6368 = !DILocalVariable(name: "desc", scope: !6359, file: !3, line: 196, type: !6369)
!6369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6370, size: 64)
!6370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4903)
!6371 = !DILocalVariable(name: "driver_name", scope: !6359, file: !3, line: 197, type: !227)
!6372 = !DILocalVariable(name: "active", scope: !6359, file: !3, line: 198, type: !109)
!6373 = !DILocation(line: 191, column: 50, scope: !6359)
!6374 = !DILocation(line: 191, column: 63, scope: !6359)
!6375 = !DILocation(line: 192, column: 40, scope: !6359)
!6376 = !DILocation(line: 193, column: 34, scope: !6359)
!6377 = !DILocation(line: 194, column: 10, scope: !6359)
!6378 = !DILocation(line: 196, column: 2, scope: !6359)
!6379 = !DILocation(line: 196, column: 41, scope: !6359)
!6380 = !DILocation(line: 197, column: 2, scope: !6359)
!6381 = !DILocation(line: 197, column: 14, scope: !6359)
!6382 = !DILocation(line: 198, column: 2, scope: !6359)
!6383 = !DILocation(line: 198, column: 6, scope: !6359)
!6384 = !DILocation(line: 200, column: 6, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6359, file: !3, line: 200, column: 6)
!6386 = !DILocation(line: 200, column: 14, scope: !6385)
!6387 = !DILocation(line: 200, column: 12, scope: !6385)
!6388 = !DILocation(line: 200, column: 6, scope: !6359)
!6389 = !DILocation(line: 201, column: 10, scope: !6385)
!6390 = !DILocation(line: 201, column: 3, scope: !6385)
!6391 = !DILocation(line: 202, column: 10, scope: !6359)
!6392 = !DILocation(line: 202, column: 17, scope: !6359)
!6393 = !DILocation(line: 202, column: 28, scope: !6359)
!6394 = !DILocation(line: 202, column: 35, scope: !6359)
!6395 = !DILocation(line: 202, column: 7, scope: !6359)
!6396 = !DILocation(line: 203, column: 6, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6359, file: !3, line: 203, column: 6)
!6398 = !DILocation(line: 203, column: 6, scope: !6359)
!6399 = !DILocation(line: 204, column: 18, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6397, file: !3, line: 203, column: 13)
!6401 = !DILocation(line: 204, column: 25, scope: !6400)
!6402 = !DILocation(line: 204, column: 29, scope: !6400)
!6403 = !DILocation(line: 205, column: 7, scope: !6400)
!6404 = !DILocation(line: 205, column: 14, scope: !6400)
!6405 = !DILocation(line: 205, column: 18, scope: !6400)
!6406 = !DILocation(line: 205, column: 26, scope: !6400)
!6407 = !DILocation(line: 204, column: 15, scope: !6400)
!6408 = !DILocation(line: 207, column: 13, scope: !6400)
!6409 = !DILocation(line: 207, column: 22, scope: !6400)
!6410 = !DILocation(line: 207, column: 29, scope: !6400)
!6411 = !DILocation(line: 207, column: 45, scope: !6400)
!6412 = !DILocation(line: 207, column: 18, scope: !6400)
!6413 = !DILocation(line: 207, column: 10, scope: !6400)
!6414 = !DILocation(line: 208, column: 2, scope: !6400)
!6415 = !DILocation(line: 209, column: 19, scope: !6359)
!6416 = !DILocation(line: 210, column: 5, scope: !6359)
!6417 = !DILocation(line: 211, column: 5, scope: !6359)
!6418 = !DILocation(line: 211, column: 11, scope: !6359)
!6419 = !DILocation(line: 212, column: 5, scope: !6359)
!6420 = !DILocation(line: 212, column: 11, scope: !6359)
!6421 = !DILocation(line: 213, column: 5, scope: !6359)
!6422 = !DILocation(line: 213, column: 11, scope: !6359)
!6423 = !DILocation(line: 214, column: 5, scope: !6359)
!6424 = !DILocation(line: 214, column: 11, scope: !6359)
!6425 = !DILocation(line: 215, column: 18, scope: !6359)
!6426 = !DILocation(line: 215, column: 24, scope: !6359)
!6427 = !DILocation(line: 215, column: 5, scope: !6359)
!6428 = !DILocation(line: 216, column: 5, scope: !6359)
!6429 = !DILocation(line: 216, column: 11, scope: !6359)
!6430 = !DILocation(line: 217, column: 5, scope: !6359)
!6431 = !DILocation(line: 217, column: 11, scope: !6359)
!6432 = !DILocation(line: 218, column: 5, scope: !6359)
!6433 = !DILocation(line: 209, column: 11, scope: !6359)
!6434 = !DILocation(line: 209, column: 8, scope: !6359)
!6435 = !DILocation(line: 219, column: 9, scope: !6359)
!6436 = !DILocation(line: 219, column: 2, scope: !6359)
!6437 = !DILocation(line: 220, column: 1, scope: !6359)
!6438 = distinct !DISubprogram(name: "usb_dump_endpoint_descriptor", scope: !3, file: !3, line: 142, type: !6439, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6443)
!6439 = !DISubroutineType(types: !6440)
!6440 = !{!315, !109, !315, !315, !6441}
!6441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6442, size: 64)
!6442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4739)
!6443 = !{!6444, !6445, !6446, !6447, !6448, !6449, !6450, !6451, !6452}
!6444 = !DILocalVariable(name: "speed", arg: 1, scope: !6438, file: !3, line: 142, type: !109)
!6445 = !DILocalVariable(name: "start", arg: 2, scope: !6438, file: !3, line: 142, type: !315)
!6446 = !DILocalVariable(name: "end", arg: 3, scope: !6438, file: !3, line: 142, type: !315)
!6447 = !DILocalVariable(name: "desc", arg: 4, scope: !6438, file: !3, line: 143, type: !6441)
!6448 = !DILocalVariable(name: "dir", scope: !6438, file: !3, line: 145, type: !229)
!6449 = !DILocalVariable(name: "unit", scope: !6438, file: !3, line: 145, type: !229)
!6450 = !DILocalVariable(name: "type", scope: !6438, file: !3, line: 145, type: !315)
!6451 = !DILocalVariable(name: "interval", scope: !6438, file: !3, line: 146, type: !7)
!6452 = !DILocalVariable(name: "bandwidth", scope: !6438, file: !3, line: 146, type: !7)
!6453 = !DILocation(line: 142, column: 47, scope: !6438)
!6454 = !DILocation(line: 142, column: 60, scope: !6438)
!6455 = !DILocation(line: 142, column: 73, scope: !6438)
!6456 = !DILocation(line: 143, column: 43, scope: !6438)
!6457 = !DILocation(line: 145, column: 2, scope: !6438)
!6458 = !DILocation(line: 145, column: 7, scope: !6438)
!6459 = !DILocation(line: 145, column: 12, scope: !6438)
!6460 = !DILocation(line: 145, column: 19, scope: !6438)
!6461 = !DILocation(line: 146, column: 2, scope: !6438)
!6462 = !DILocation(line: 146, column: 11, scope: !6438)
!6463 = !DILocation(line: 146, column: 21, scope: !6438)
!6464 = !DILocation(line: 148, column: 6, scope: !6465)
!6465 = distinct !DILexicalBlock(scope: !6438, file: !3, line: 148, column: 6)
!6466 = !DILocation(line: 148, column: 14, scope: !6465)
!6467 = !DILocation(line: 148, column: 12, scope: !6465)
!6468 = !DILocation(line: 148, column: 6, scope: !6438)
!6469 = !DILocation(line: 149, column: 10, scope: !6465)
!6470 = !DILocation(line: 149, column: 3, scope: !6465)
!6471 = !DILocation(line: 151, column: 28, scope: !6438)
!6472 = !DILocation(line: 151, column: 8, scope: !6438)
!6473 = !DILocation(line: 151, column: 6, scope: !6438)
!6474 = !DILocation(line: 153, column: 6, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6438, file: !3, line: 153, column: 6)
!6476 = !DILocation(line: 153, column: 12, scope: !6475)
!6477 = !DILocation(line: 153, column: 6, scope: !6438)
!6478 = !DILocation(line: 154, column: 38, scope: !6475)
!6479 = !DILocation(line: 154, column: 15, scope: !6475)
!6480 = !DILocation(line: 154, column: 13, scope: !6475)
!6481 = !DILocation(line: 154, column: 3, scope: !6475)
!6482 = !DILocation(line: 157, column: 28, scope: !6438)
!6483 = !DILocation(line: 157, column: 10, scope: !6438)
!6484 = !DILocation(line: 157, column: 2, scope: !6438)
!6485 = !DILocation(line: 159, column: 8, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6438, file: !3, line: 157, column: 35)
!6487 = !DILocation(line: 160, column: 7, scope: !6486)
!6488 = !DILocation(line: 161, column: 3, scope: !6486)
!6489 = !DILocation(line: 163, column: 8, scope: !6486)
!6490 = !DILocation(line: 164, column: 3, scope: !6486)
!6491 = !DILocation(line: 166, column: 8, scope: !6486)
!6492 = !DILocation(line: 167, column: 3, scope: !6486)
!6493 = !DILocation(line: 169, column: 8, scope: !6486)
!6494 = !DILocation(line: 170, column: 3, scope: !6486)
!6495 = !DILocation(line: 172, column: 10, scope: !6486)
!6496 = !DILocation(line: 172, column: 3, scope: !6486)
!6497 = !DILocation(line: 175, column: 33, scope: !6438)
!6498 = !DILocation(line: 175, column: 39, scope: !6438)
!6499 = !DILocation(line: 175, column: 13, scope: !6438)
!6500 = !DILocation(line: 175, column: 11, scope: !6438)
!6501 = !DILocation(line: 176, column: 6, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6438, file: !3, line: 176, column: 6)
!6503 = !DILocation(line: 176, column: 15, scope: !6502)
!6504 = !DILocation(line: 176, column: 6, scope: !6438)
!6505 = !DILocation(line: 177, column: 8, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6502, file: !3, line: 176, column: 23)
!6507 = !DILocation(line: 178, column: 2, scope: !6506)
!6508 = !DILocation(line: 179, column: 8, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6502, file: !3, line: 178, column: 9)
!6510 = !DILocation(line: 180, column: 12, scope: !6509)
!6511 = !DILocation(line: 183, column: 19, scope: !6438)
!6512 = !DILocation(line: 183, column: 40, scope: !6438)
!6513 = !DILocation(line: 183, column: 46, scope: !6438)
!6514 = !DILocation(line: 183, column: 64, scope: !6438)
!6515 = !DILocation(line: 184, column: 5, scope: !6438)
!6516 = !DILocation(line: 184, column: 11, scope: !6438)
!6517 = !DILocation(line: 184, column: 25, scope: !6438)
!6518 = !DILocation(line: 185, column: 23, scope: !6438)
!6519 = !DILocation(line: 185, column: 5, scope: !6438)
!6520 = !DILocation(line: 186, column: 5, scope: !6438)
!6521 = !DILocation(line: 185, column: 29, scope: !6438)
!6522 = !DILocation(line: 187, column: 5, scope: !6438)
!6523 = !DILocation(line: 187, column: 15, scope: !6438)
!6524 = !DILocation(line: 183, column: 11, scope: !6438)
!6525 = !DILocation(line: 183, column: 8, scope: !6438)
!6526 = !DILocation(line: 188, column: 9, scope: !6438)
!6527 = !DILocation(line: 188, column: 2, scope: !6438)
!6528 = !DILocation(line: 189, column: 1, scope: !6438)
!6529 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !148, file: !148, line: 492, type: !6530, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6532)
!6530 = !DISubroutineType(types: !6531)
!6531 = !{!109, !6441}
!6532 = !{!6533}
!6533 = !DILocalVariable(name: "epd", arg: 1, scope: !6529, file: !148, line: 492, type: !6441)
!6534 = !DILocation(line: 492, column: 77, scope: !6529)
!6535 = !DILocation(line: 494, column: 11, scope: !6529)
!6536 = !DILocation(line: 494, column: 16, scope: !6529)
!6537 = !DILocation(line: 494, column: 33, scope: !6529)
!6538 = !DILocation(line: 494, column: 58, scope: !6529)
!6539 = !DILocation(line: 494, column: 2, scope: !6529)
!6540 = distinct !DISubprogram(name: "usb_endpoint_maxp_mult", scope: !148, file: !148, line: 659, type: !6530, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6541)
!6541 = !{!6542, !6543}
!6542 = !DILocalVariable(name: "epd", arg: 1, scope: !6540, file: !148, line: 659, type: !6441)
!6543 = !DILocalVariable(name: "maxp", scope: !6540, file: !148, line: 661, type: !109)
!6544 = !DILocation(line: 659, column: 62, scope: !6540)
!6545 = !DILocation(line: 661, column: 2, scope: !6540)
!6546 = !DILocation(line: 661, column: 6, scope: !6540)
!6547 = !DILocation(line: 661, column: 13, scope: !6540)
!6548 = !DILocation(line: 663, column: 9, scope: !6540)
!6549 = !DILocation(line: 663, column: 32, scope: !6540)
!6550 = !DILocation(line: 664, column: 1, scope: !6540)
!6551 = !DILocation(line: 663, column: 2, scope: !6540)
!6552 = distinct !DISubprogram(name: "usb_endpoint_type", scope: !148, file: !148, line: 481, type: !6530, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6553)
!6553 = !{!6554}
!6554 = !DILocalVariable(name: "epd", arg: 1, scope: !6552, file: !148, line: 481, type: !6441)
!6555 = !DILocation(line: 481, column: 75, scope: !6552)
!6556 = !DILocation(line: 483, column: 9, scope: !6552)
!6557 = !DILocation(line: 483, column: 14, scope: !6552)
!6558 = !DILocation(line: 483, column: 27, scope: !6552)
!6559 = !DILocation(line: 483, column: 2, scope: !6552)
!6560 = !DISubprogram(name: "usb_decode_interval", scope: !169, file: !169, line: 51, type: !6561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6561 = !DISubroutineType(types: !6562)
!6562 = !{!7, !6441, !159}
!6563 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !148, file: !148, line: 647, type: !6530, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6564)
!6564 = !{!6565}
!6565 = !DILocalVariable(name: "epd", arg: 1, scope: !6563, file: !148, line: 647, type: !6441)
!6566 = !DILocation(line: 647, column: 75, scope: !6563)
!6567 = !DILocation(line: 649, column: 9, scope: !6563)
!6568 = !DILocation(line: 649, column: 44, scope: !6563)
!6569 = !DILocation(line: 649, column: 2, scope: !6563)
!6570 = distinct !DISubprogram(name: "check_copy_size", scope: !5421, file: !5421, line: 237, type: !6571, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6573)
!6571 = !DISubroutineType(types: !6572)
!6572 = !{!735, !2615, !362, !735}
!6573 = !{!6574, !6575, !6576, !6577, !6578, !6581}
!6574 = !DILocalVariable(name: "addr", arg: 1, scope: !6570, file: !5421, line: 237, type: !2615)
!6575 = !DILocalVariable(name: "bytes", arg: 2, scope: !6570, file: !5421, line: 237, type: !362)
!6576 = !DILocalVariable(name: "is_source", arg: 3, scope: !6570, file: !5421, line: 237, type: !735)
!6577 = !DILocalVariable(name: "sz", scope: !6570, file: !5421, line: 239, type: !109)
!6578 = !DILocalVariable(name: "__ret_warn_on", scope: !6579, file: !5421, line: 249, type: !109)
!6579 = distinct !DILexicalBlock(scope: !6580, file: !5421, line: 249, column: 6)
!6580 = distinct !DILexicalBlock(scope: !6570, file: !5421, line: 249, column: 6)
!6581 = !DILocalVariable(name: "__flags", scope: !6582, file: !5421, line: 249, type: !109)
!6582 = distinct !DILexicalBlock(scope: !6583, file: !5421, line: 249, column: 6)
!6583 = distinct !DILexicalBlock(scope: !6579, file: !5421, line: 249, column: 6)
!6584 = !DILocation(line: 237, column: 29, scope: !6570)
!6585 = !DILocation(line: 237, column: 42, scope: !6570)
!6586 = !DILocation(line: 237, column: 54, scope: !6570)
!6587 = !DILocation(line: 239, column: 2, scope: !6570)
!6588 = !DILocation(line: 239, column: 6, scope: !6570)
!6589 = !DILocation(line: 239, column: 33, scope: !6570)
!6590 = !DILocation(line: 239, column: 11, scope: !6570)
!6591 = !DILocation(line: 240, column: 6, scope: !6592)
!6592 = distinct !DILexicalBlock(scope: !6570, file: !5421, line: 240, column: 6)
!6593 = !DILocation(line: 0, scope: !6592)
!6594 = !DILocation(line: 240, column: 6, scope: !6570)
!6595 = !DILocation(line: 241, column: 29, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6597, file: !5421, line: 241, column: 7)
!6597 = distinct !DILexicalBlock(scope: !6592, file: !5421, line: 240, column: 39)
!6598 = !DILocation(line: 241, column: 8, scope: !6596)
!6599 = !DILocation(line: 241, column: 7, scope: !6597)
!6600 = !DILocation(line: 242, column: 18, scope: !6596)
!6601 = !DILocation(line: 242, column: 22, scope: !6596)
!6602 = !DILocation(line: 242, column: 4, scope: !6596)
!6603 = !DILocation(line: 243, column: 12, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6596, file: !5421, line: 243, column: 12)
!6605 = !{i8 0, i8 2}
!6606 = !DILocation(line: 243, column: 12, scope: !6596)
!6607 = !DILocation(line: 244, column: 4, scope: !6604)
!6608 = !{i32 972393}
!6609 = !DILocation(line: 246, column: 4, scope: !6604)
!6610 = !{i32 972422}
!6611 = !DILocation(line: 247, column: 3, scope: !6597)
!6612 = !DILocation(line: 249, column: 6, scope: !6579)
!6613 = !DILocation(line: 249, column: 6, scope: !6583)
!6614 = !DILocation(line: 249, column: 6, scope: !6582)
!6615 = !DILocation(line: 249, column: 6, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6582, file: !5421, line: 249, column: 6)
!6617 = !DILocation(line: 249, column: 6, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6582, file: !5421, line: 249, column: 6)
!6619 = !{i64 2149624664, i64 2149624693, i64 2149624739, i64 2149624797, i64 2149624851, i64 2149624905, i64 2149624960, i64 2149624991, i64 2149625299, i64 2149625305, i64 2149625352, i64 2149625375, i64 2149625401}
!6620 = !DILocation(line: 249, column: 6, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6582, file: !5421, line: 249, column: 6)
!6622 = !DILocation(line: 249, column: 6, scope: !6580)
!6623 = !DILocation(line: 249, column: 6, scope: !6570)
!6624 = !DILocation(line: 250, column: 3, scope: !6580)
!6625 = !DILocation(line: 251, column: 20, scope: !6570)
!6626 = !DILocation(line: 251, column: 26, scope: !6570)
!6627 = !DILocation(line: 251, column: 33, scope: !6570)
!6628 = !DILocation(line: 251, column: 2, scope: !6570)
!6629 = !DILocation(line: 252, column: 2, scope: !6570)
!6630 = !DILocation(line: 253, column: 1, scope: !6570)
!6631 = !DISubprogram(name: "_copy_to_user", scope: !5886, file: !5886, line: 176, type: !5887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6632 = distinct !DISubprogram(name: "copy_overflow", scope: !5421, file: !5421, line: 230, type: !6633, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6635)
!6633 = !DISubroutineType(types: !6634)
!6634 = !{null, !109, !365}
!6635 = !{!6636, !6637}
!6636 = !DILocalVariable(name: "size", arg: 1, scope: !6632, file: !5421, line: 230, type: !109)
!6637 = !DILocalVariable(name: "count", arg: 2, scope: !6632, file: !5421, line: 230, type: !365)
!6638 = !DILocation(line: 230, column: 38, scope: !6632)
!6639 = !DILocation(line: 230, column: 58, scope: !6632)
!6640 = !DILocation(line: 233, column: 19, scope: !6641)
!6641 = distinct !DILexicalBlock(scope: !6632, file: !5421, line: 232, column: 6)
!6642 = !DILocation(line: 233, column: 25, scope: !6641)
!6643 = !DILocation(line: 233, column: 3, scope: !6641)
!6644 = !DILocation(line: 234, column: 1, scope: !6632)
!6645 = !DISubprogram(name: "__bad_copy_from", scope: !5421, file: !5421, line: 224, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6646 = !DISubprogram(name: "__bad_copy_to", scope: !5421, file: !5421, line: 226, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6647 = distinct !DISubprogram(name: "check_object_size", scope: !5421, file: !5421, line: 218, type: !6648, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6650)
!6648 = !DISubroutineType(types: !6649)
!6649 = !{null, !2615, !365, !735}
!6650 = !{!6651, !6652, !6653}
!6651 = !DILocalVariable(name: "ptr", arg: 1, scope: !6647, file: !5421, line: 218, type: !2615)
!6652 = !DILocalVariable(name: "n", arg: 2, scope: !6647, file: !5421, line: 218, type: !365)
!6653 = !DILocalVariable(name: "to_user", arg: 3, scope: !6647, file: !5421, line: 219, type: !735)
!6654 = !DILocation(line: 218, column: 50, scope: !6647)
!6655 = !DILocation(line: 218, column: 69, scope: !6647)
!6656 = !DILocation(line: 219, column: 15, scope: !6647)
!6657 = !DILocation(line: 220, column: 3, scope: !6647)
!6658 = !DISubprogram(name: "__copy_overflow", scope: !5421, file: !5421, line: 228, type: !6633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
