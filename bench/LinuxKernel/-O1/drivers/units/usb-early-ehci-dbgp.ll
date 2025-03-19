; ModuleID = 'drivers/usb/early/ehci-dbgp.c'
source_filename = "drivers/usb/early/ehci-dbgp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dbgp_reset_prep: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dbgp_reset_prep ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dbgp_external_startup: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad dbgp_external_startup ; .previous"

%struct.ehci_dev = type { i32, i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i64, i64, ptr, %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pgprot = type { i64 }
%struct.ehci_caps = type { i32, i32, i32, [8 x i8] }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.16, %union.anon.18, [2 x i32], i32 }
%union.anon.16 = type { [15 x i32] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i32, [15 x i32] }
%struct.ehci_dbg_port = type { i32, i32, i32, i32, i32 }
%struct.usb_debug_descriptor = type { i8, i8, i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }

@.str = private unnamed_addr constant [14 x i8] c"dbgp_num: %d\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [40 x i8] c"Found EHCI debug port on %02x:%02x.%1x\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [24 x i8] c"bar: %02x offset: %03x\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [36 x i8] c"only debug ports on bar 1 handled.\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [28 x i8] c"bar_val: %02x offset: %03x\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [39 x i8] c"only simple 32bit mmio bars supported\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [23 x i8] c"mmio for ehci enabled\0A\00", align 1, !dbg !32
@__default_kernel_pte_mask = external dso_local global i64, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"ehci_bar: %p\0A\00", align 1, !dbg !37
@ehci_caps = internal global ptr null, align 8, !dbg !39
@ehci_regs = internal global ptr null, align 8, !dbg !5190
@ehci_debug = internal global ptr null, align 8, !dbg !5234
@ehci_dev = internal global %struct.ehci_dev zeroinitializer, align 4, !dbg !5247
@.str.8 = private unnamed_addr constant [19 x i8] c"ehci_setup failed\0A\00", align 1, !dbg !227
@.str.9 = private unnamed_addr constant [20 x i8] c"early_init_complete\00", align 1, !dbg !232
@early_dbgp_console = hidden global %struct.console { [16 x i8] c"earlydbg\00\00\00\00\00\00\00\00", ptr @early_dbgp_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, i64 0, i64 0, ptr null, %struct.hlist_node zeroinitializer }, align 8, !dbg !237
@dbgp_not_safe = internal global i32 0, align 4, !dbg !5245
@__UNIQUE_ID___addressable_dbgp_reset_prep308 = internal global ptr @dbgp_reset_prep, section ".discard.addressable", align 8, !dbg !5186
@__UNIQUE_ID___addressable_dbgp_external_startup309 = internal global ptr @dbgp_external_startup, section ".discard.addressable", align 8, !dbg !5188
@.str.10 = private unnamed_addr constant [29 x i8] c"using nvidia set_debug_port\0A\00", align 1, !dbg !5254
@set_debug_port = internal global ptr @default_set_debug_port, section ".init.data", align 8, !dbg !5264
@.str.11 = private unnamed_addr constant [22 x i8] c"set debug port to %d\0A\00", align 1, !dbg !5259
@dbgp_phys_port = internal global i32 1, align 4, !dbg !5290
@.str.12 = private unnamed_addr constant [16 x i8] c"debug_port: %d\0A\00", align 1, !dbg !5268
@.str.13 = private unnamed_addr constant [16 x i8] c"n_ports:    %d\0A\00", align 1, !dbg !5270
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !5272
@.str.15 = private unnamed_addr constant [20 x i8] c"portstatus%d: %08x\0A\00", align 1, !dbg !5274
@.str.16 = private unnamed_addr constant [31 x i8] c"ehci skip - already configured\00", align 1, !dbg !5276
@.str.17 = private unnamed_addr constant [28 x i8] c"dbgp: ehci BIOS state %08x\0A\00", align 1, !dbg !5281
@.str.18 = private unnamed_addr constant [20 x i8] c"dbgp: BIOS handoff\0A\00", align 1, !dbg !5283
@.str.19 = private unnamed_addr constant [33 x i8] c"dbgp: BIOS handoff failed: %08x\0A\00", align 1, !dbg !5285
@.str.20 = private unnamed_addr constant [20 x i8] c"can not reset ehci\0A\00", align 1, !dbg !5292
@.str.21 = private unnamed_addr constant [16 x i8] c"ehci reset done\00", align 1, !dbg !5294
@dbgp_endpoint_out = internal global i32 0, align 4, !dbg !5304
@dbgp_pid_write_update.data0 = internal global i32 75, align 4, !dbg !5296
@.str.22 = private unnamed_addr constant [34 x i8] c"Trying to force debug port online\00", align 1, !dbg !5306
@.str.23 = private unnamed_addr constant [31 x i8] c"No device found in debug port\0A\00", align 1, !dbg !5311
@.str.24 = private unnamed_addr constant [19 x i8] c"wait for port done\00", align 1, !dbg !5313
@.str.25 = private unnamed_addr constant [25 x i8] c"No device in debug port\0A\00", align 1, !dbg !5315
@.str.26 = private unnamed_addr constant [21 x i8] c"debug ported enabled\00", align 1, !dbg !5320
@.str.27 = private unnamed_addr constant [38 x i8] c"Could not find attached debug device\0A\00", align 1, !dbg !5325
@dbgp_endpoint_in = internal global i32 0, align 4, !dbg !5362
@.str.28 = private unnamed_addr constant [38 x i8] c"Could not move attached device to %d\0A\00", align 1, !dbg !5330
@.str.29 = private unnamed_addr constant [29 x i8] c"debug device renamed to 127\0A\00", align 1, !dbg !5332
@.str.30 = private unnamed_addr constant [36 x i8] c" Could not enable the debug device\0A\00", align 1, !dbg !5334
@.str.31 = private unnamed_addr constant [25 x i8] c"debug interface enabled\0A\00", align 1, !dbg !5336
@.str.32 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !5338
@.str.33 = private unnamed_addr constant [28 x i8] c"dbgp_bulk_write failed: %d\0A\00", align 1, !dbg !5341
@.str.34 = private unnamed_addr constant [18 x i8] c"small write done\0A\00", align 1, !dbg !5343
@.str.35 = private unnamed_addr constant [13 x i8] c"EHCI startup\00", align 1, !dbg !5348
@.str.36 = private unnamed_addr constant [25 x i8] c"ehci can not be started\0A\00", align 1, !dbg !5353
@.str.37 = private unnamed_addr constant [14 x i8] c"ehci started\0A\00", align 1, !dbg !5355
@.str.38 = private unnamed_addr constant [11 x i8] c"reset port\00", align 1, !dbg !5357
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_dbgp_reset_prep308, ptr @__UNIQUE_ID___addressable_dbgp_external_startup309], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @early_dbgp_init(ptr noundef %s) #0 section ".init.text" align 16 !dbg !5381 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %debug_port = alloca i32, align 4
  %bar = alloca i32, align 4
  %offset = alloca i32, align 4
  %bus = alloca i32, align 4
  %slot = alloca i32, align 4
  %func = alloca i32, align 4
  %cap = alloca i32, align 4
  %ehci_bar = alloca ptr, align 8
  %dbgp_num = alloca i32, align 4
  %bar_val = alloca i32, align 4
  %e = alloca ptr, align 8
  %ret = alloca i32, align 4
  %byte = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.pgprot, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5385, metadata !DIExpression()), !dbg !5399
  call void @llvm.lifetime.start.p0(i64 4, ptr %debug_port) #9, !dbg !5400
  call void @llvm.dbg.declare(metadata ptr %debug_port, metadata !5386, metadata !DIExpression()), !dbg !5401
  call void @llvm.lifetime.start.p0(i64 4, ptr %bar) #9, !dbg !5400
  call void @llvm.dbg.declare(metadata ptr %bar, metadata !5387, metadata !DIExpression()), !dbg !5402
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #9, !dbg !5400
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5388, metadata !DIExpression()), !dbg !5403
  call void @llvm.lifetime.start.p0(i64 4, ptr %bus) #9, !dbg !5404
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5389, metadata !DIExpression()), !dbg !5405
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #9, !dbg !5404
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5390, metadata !DIExpression()), !dbg !5406
  call void @llvm.lifetime.start.p0(i64 4, ptr %func) #9, !dbg !5404
  call void @llvm.dbg.declare(metadata ptr %func, metadata !5391, metadata !DIExpression()), !dbg !5407
  call void @llvm.lifetime.start.p0(i64 4, ptr %cap) #9, !dbg !5404
  call void @llvm.dbg.declare(metadata ptr %cap, metadata !5392, metadata !DIExpression()), !dbg !5408
  call void @llvm.lifetime.start.p0(i64 8, ptr %ehci_bar) #9, !dbg !5409
  call void @llvm.dbg.declare(metadata ptr %ehci_bar, metadata !5393, metadata !DIExpression()), !dbg !5410
  call void @llvm.lifetime.start.p0(i64 4, ptr %dbgp_num) #9, !dbg !5411
  call void @llvm.dbg.declare(metadata ptr %dbgp_num, metadata !5394, metadata !DIExpression()), !dbg !5412
  call void @llvm.lifetime.start.p0(i64 4, ptr %bar_val) #9, !dbg !5413
  call void @llvm.dbg.declare(metadata ptr %bar_val, metadata !5395, metadata !DIExpression()), !dbg !5414
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #9, !dbg !5415
  call void @llvm.dbg.declare(metadata ptr %e, metadata !5396, metadata !DIExpression()), !dbg !5416
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5417
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5397, metadata !DIExpression()), !dbg !5418
  call void @llvm.lifetime.start.p0(i64 1, ptr %byte) #9, !dbg !5419
  call void @llvm.dbg.declare(metadata ptr %byte, metadata !5398, metadata !DIExpression()), !dbg !5420
  %call = call i32 @early_pci_allowed() #10, !dbg !5421
  %tobool = icmp ne i32 %call, 0, !dbg !5421
  br i1 %tobool, label %if.end, label %if.then, !dbg !5423

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5424

if.end:                                           ; preds = %entry
  store i32 0, ptr %dbgp_num, align 4, !dbg !5425
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5426
  %1 = load i8, ptr %0, align 1, !dbg !5428
  %tobool1 = icmp ne i8 %1, 0, !dbg !5428
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5429

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %s.addr, align 8, !dbg !5430
  %call3 = call i64 @simple_strtoul(ptr noundef %2, ptr noundef %e, i32 noundef 10) #10, !dbg !5431
  %conv = trunc i64 %call3 to i32, !dbg !5431
  store i32 %conv, ptr %dbgp_num, align 4, !dbg !5432
  br label %if.end4, !dbg !5433

if.end4:                                          ; preds = %if.then2, %if.end
  %3 = load i32, ptr %dbgp_num, align 4, !dbg !5434
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str, i32 noundef %3) #10, !dbg !5435
  %4 = load i32, ptr %dbgp_num, align 4, !dbg !5436
  %call5 = call i32 @find_dbgp(i32 noundef %4, ptr noundef %bus, ptr noundef %slot, ptr noundef %func) #11, !dbg !5437
  store i32 %call5, ptr %cap, align 4, !dbg !5438
  %5 = load i32, ptr %cap, align 4, !dbg !5439
  %tobool6 = icmp ne i32 %5, 0, !dbg !5439
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5441

if.then7:                                         ; preds = %if.end4
  store i32 -1, ptr %retval, align 4, !dbg !5442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5442

if.end8:                                          ; preds = %if.end4
  %6 = load i32, ptr %bus, align 4, !dbg !5443
  %7 = load i32, ptr %slot, align 4, !dbg !5444
  %8 = load i32, ptr %func, align 4, !dbg !5445
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.1, i32 noundef %6, i32 noundef %7, i32 noundef %8) #10, !dbg !5446
  %9 = load i32, ptr %bus, align 4, !dbg !5447
  %conv9 = trunc i32 %9 to i8, !dbg !5447
  %10 = load i32, ptr %slot, align 4, !dbg !5448
  %conv10 = trunc i32 %10 to i8, !dbg !5448
  %11 = load i32, ptr %func, align 4, !dbg !5449
  %conv11 = trunc i32 %11 to i8, !dbg !5449
  %12 = load i32, ptr %cap, align 4, !dbg !5450
  %conv12 = trunc i32 %12 to i8, !dbg !5450
  %call13 = call i32 @read_pci_config(i8 noundef zeroext %conv9, i8 noundef zeroext %conv10, i8 noundef zeroext %conv11, i8 noundef zeroext %conv12) #10, !dbg !5451
  store i32 %call13, ptr %debug_port, align 4, !dbg !5452
  %13 = load i32, ptr %debug_port, align 4, !dbg !5453
  %shr = lshr i32 %13, 29, !dbg !5454
  %and = and i32 %shr, 7, !dbg !5455
  store i32 %and, ptr %bar, align 4, !dbg !5456
  %14 = load i32, ptr %bar, align 4, !dbg !5457
  %mul = mul i32 %14, 4, !dbg !5458
  %add = add i32 %mul, 12, !dbg !5459
  store i32 %add, ptr %bar, align 4, !dbg !5460
  %15 = load i32, ptr %debug_port, align 4, !dbg !5461
  %shr14 = lshr i32 %15, 16, !dbg !5462
  %and15 = and i32 %shr14, 4095, !dbg !5463
  store i32 %and15, ptr %offset, align 4, !dbg !5464
  %16 = load i32, ptr %bar, align 4, !dbg !5465
  %17 = load i32, ptr %offset, align 4, !dbg !5466
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.2, i32 noundef %16, i32 noundef %17) #10, !dbg !5467
  %18 = load i32, ptr %bar, align 4, !dbg !5468
  %cmp = icmp ne i32 %18, 16, !dbg !5470
  br i1 %cmp, label %if.then17, label %if.end18, !dbg !5471

if.then17:                                        ; preds = %if.end8
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.3) #10, !dbg !5472
  store i32 -1, ptr %retval, align 4, !dbg !5474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5474

if.end18:                                         ; preds = %if.end8
  %19 = load i32, ptr %bus, align 4, !dbg !5475
  %conv19 = trunc i32 %19 to i8, !dbg !5475
  %20 = load i32, ptr %slot, align 4, !dbg !5476
  %conv20 = trunc i32 %20 to i8, !dbg !5476
  %21 = load i32, ptr %func, align 4, !dbg !5477
  %conv21 = trunc i32 %21 to i8, !dbg !5477
  %call22 = call i32 @read_pci_config(i8 noundef zeroext %conv19, i8 noundef zeroext %conv20, i8 noundef zeroext %conv21, i8 noundef zeroext 16) #10, !dbg !5478
  store i32 %call22, ptr %bar_val, align 4, !dbg !5479
  %22 = load i32, ptr %bar_val, align 4, !dbg !5480
  %23 = load i32, ptr %offset, align 4, !dbg !5481
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.4, i32 noundef %22, i32 noundef %23) #10, !dbg !5482
  %24 = load i32, ptr %bar_val, align 4, !dbg !5483
  %conv23 = zext i32 %24 to i64, !dbg !5483
  %and24 = and i64 %conv23, 15, !dbg !5485
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5485
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5486

if.then26:                                        ; preds = %if.end18
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.5) #10, !dbg !5487
  store i32 -1, ptr %retval, align 4, !dbg !5489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5489

if.end27:                                         ; preds = %if.end18
  %25 = load i32, ptr %bus, align 4, !dbg !5490
  %conv28 = trunc i32 %25 to i8, !dbg !5490
  %26 = load i32, ptr %slot, align 4, !dbg !5491
  %conv29 = trunc i32 %26 to i8, !dbg !5491
  %27 = load i32, ptr %func, align 4, !dbg !5492
  %conv30 = trunc i32 %27 to i8, !dbg !5492
  %call31 = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext %conv28, i8 noundef zeroext %conv29, i8 noundef zeroext %conv30, i8 noundef zeroext 4) #10, !dbg !5493
  store i8 %call31, ptr %byte, align 1, !dbg !5494
  %28 = load i8, ptr %byte, align 1, !dbg !5495
  %conv32 = zext i8 %28 to i32, !dbg !5495
  %and33 = and i32 %conv32, 2, !dbg !5497
  %tobool34 = icmp ne i32 %and33, 0, !dbg !5497
  br i1 %tobool34, label %if.end41, label %if.then35, !dbg !5498

if.then35:                                        ; preds = %if.end27
  %29 = load i8, ptr %byte, align 1, !dbg !5499
  %conv36 = zext i8 %29 to i32, !dbg !5499
  %or = or i32 %conv36, 2, !dbg !5499
  %conv37 = trunc i32 %or to i8, !dbg !5499
  store i8 %conv37, ptr %byte, align 1, !dbg !5499
  %30 = load i32, ptr %bus, align 4, !dbg !5501
  %conv38 = trunc i32 %30 to i8, !dbg !5501
  %31 = load i32, ptr %slot, align 4, !dbg !5502
  %conv39 = trunc i32 %31 to i8, !dbg !5502
  %32 = load i32, ptr %func, align 4, !dbg !5503
  %conv40 = trunc i32 %32 to i8, !dbg !5503
  %33 = load i8, ptr %byte, align 1, !dbg !5504
  call void @write_pci_config_byte(i8 noundef zeroext %conv38, i8 noundef zeroext %conv39, i8 noundef zeroext %conv40, i8 noundef zeroext 4, i8 noundef zeroext %33) #10, !dbg !5505
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.6) #10, !dbg !5506
  br label %if.end41, !dbg !5507

if.end41:                                         ; preds = %if.then35, %if.end27
  %34 = load i32, ptr %bar_val, align 4, !dbg !5508
  %conv42 = zext i32 %34 to i64, !dbg !5508
  %and43 = and i64 %conv42, -4096, !dbg !5508
  %pgprot = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !5508
  %call44 = call i64 @cachemode2protval(i32 noundef 3) #10, !dbg !5508
  %or45 = or i64 -9223372036854775453, %call44, !dbg !5508
  %35 = load i64, ptr @__default_kernel_pte_mask, align 8, !dbg !5508
  %and46 = and i64 %or45, %35, !dbg !5508
  store i64 %and46, ptr %pgprot, align 8, !dbg !5508
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %.compoundliteral, i32 0, i32 0, !dbg !5508
  %36 = load i64, ptr %coerce.dive, align 8, !dbg !5508
  call void @__set_fixmap(i32 noundef 512, i64 noundef %and43, i64 %36) #10, !dbg !5508
  store ptr inttoptr (i64 -10489856 to ptr), ptr %ehci_bar, align 8, !dbg !5509
  %37 = load i32, ptr %bar_val, align 4, !dbg !5510
  %conv47 = zext i32 %37 to i64, !dbg !5510
  %and48 = and i64 %conv47, 4095, !dbg !5511
  %38 = load ptr, ptr %ehci_bar, align 8, !dbg !5512
  %add.ptr = getelementptr i8, ptr %38, i64 %and48, !dbg !5512
  store ptr %add.ptr, ptr %ehci_bar, align 8, !dbg !5512
  %39 = load ptr, ptr %ehci_bar, align 8, !dbg !5513
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.7, ptr noundef %39) #10, !dbg !5514
  %40 = load ptr, ptr %ehci_bar, align 8, !dbg !5515
  store ptr %40, ptr @ehci_caps, align 8, !dbg !5516
  %41 = load ptr, ptr %ehci_bar, align 8, !dbg !5517
  %42 = load ptr, ptr @ehci_caps, align 8, !dbg !5518
  %hc_capbase = getelementptr inbounds %struct.ehci_caps, ptr %42, i32 0, i32 0, !dbg !5518
  %call49 = call i32 @readl(ptr noundef %hc_capbase) #10, !dbg !5518
  %and50 = and i32 255, %call49, !dbg !5518
  %idx.ext = zext i32 %and50 to i64, !dbg !5519
  %add.ptr51 = getelementptr i8, ptr %41, i64 %idx.ext, !dbg !5519
  store ptr %add.ptr51, ptr @ehci_regs, align 8, !dbg !5520
  %43 = load ptr, ptr %ehci_bar, align 8, !dbg !5521
  %44 = load i32, ptr %offset, align 4, !dbg !5522
  %idx.ext52 = zext i32 %44 to i64, !dbg !5523
  %add.ptr53 = getelementptr i8, ptr %43, i64 %idx.ext52, !dbg !5523
  store ptr %add.ptr53, ptr @ehci_debug, align 8, !dbg !5524
  %45 = load i32, ptr %bus, align 4, !dbg !5525
  store i32 %45, ptr @ehci_dev, align 4, !dbg !5526
  %46 = load i32, ptr %slot, align 4, !dbg !5527
  store i32 %46, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 1), align 4, !dbg !5528
  %47 = load i32, ptr %func, align 4, !dbg !5529
  store i32 %47, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 2), align 4, !dbg !5530
  call void @detect_set_debug_port() #11, !dbg !5531
  %call54 = call i32 @ehci_setup() #11, !dbg !5532
  store i32 %call54, ptr %ret, align 4, !dbg !5533
  %48 = load i32, ptr %ret, align 4, !dbg !5534
  %cmp55 = icmp slt i32 %48, 0, !dbg !5536
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !5537

if.then57:                                        ; preds = %if.end41
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.8) #10, !dbg !5538
  store ptr null, ptr @ehci_debug, align 8, !dbg !5540
  store i32 -1, ptr %retval, align 4, !dbg !5541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5541

if.end58:                                         ; preds = %if.end41
  call void @dbgp_ehci_status(ptr noundef @.str.9) #10, !dbg !5542
  store i32 0, ptr %retval, align 4, !dbg !5543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5543

cleanup:                                          ; preds = %if.end58, %if.then57, %if.then26, %if.then17, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %byte) #9, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #9, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 4, ptr %bar_val) #9, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 4, ptr %dbgp_num) #9, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 8, ptr %ehci_bar) #9, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 4, ptr %cap) #9, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 4, ptr %func) #9, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #9, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 4, ptr %bus) #9, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #9, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 4, ptr %bar) #9, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 4, ptr %debug_port) #9, !dbg !5544
  %49 = load i32, ptr %retval, align 4, !dbg !5544
  ret i32 %49, !dbg !5544
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5545 dso_local i32 @early_pci_allowed() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5547 dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dbgp_printk(ptr noundef %fmt, ...) #4 align 16 !dbg !5552 {
entry:
  %fmt.addr = alloca ptr, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !5556, metadata !DIExpression()), !dbg !5557
  ret void, !dbg !5558
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @find_dbgp(i32 noundef %ehci_num, ptr noundef %rbus, ptr noundef %rslot, ptr noundef %rfunc) #0 section ".init.text" align 16 !dbg !5559 {
entry:
  %retval = alloca i32, align 4
  %ehci_num.addr = alloca i32, align 4
  %rbus.addr = alloca ptr, align 8
  %rslot.addr = alloca ptr, align 8
  %rfunc.addr = alloca ptr, align 8
  %bus = alloca i32, align 4
  %slot = alloca i32, align 4
  %func = alloca i32, align 4
  %cap = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %ehci_num, ptr %ehci_num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ehci_num.addr, metadata !5563, metadata !DIExpression()), !dbg !5580
  store ptr %rbus, ptr %rbus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rbus.addr, metadata !5564, metadata !DIExpression()), !dbg !5581
  store ptr %rslot, ptr %rslot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rslot.addr, metadata !5565, metadata !DIExpression()), !dbg !5582
  store ptr %rfunc, ptr %rfunc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rfunc.addr, metadata !5566, metadata !DIExpression()), !dbg !5583
  call void @llvm.lifetime.start.p0(i64 4, ptr %bus) #9, !dbg !5584
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5567, metadata !DIExpression()), !dbg !5585
  call void @llvm.lifetime.start.p0(i64 4, ptr %slot) #9, !dbg !5584
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5568, metadata !DIExpression()), !dbg !5586
  call void @llvm.lifetime.start.p0(i64 4, ptr %func) #9, !dbg !5584
  call void @llvm.dbg.declare(metadata ptr %func, metadata !5569, metadata !DIExpression()), !dbg !5587
  store i32 0, ptr %bus, align 4, !dbg !5588
  br label %for.cond, !dbg !5589

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, ptr %bus, align 4, !dbg !5590
  %cmp = icmp ult i32 %0, 256, !dbg !5591
  br i1 %cmp, label %for.body, label %for.end15, !dbg !5592

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %slot, align 4, !dbg !5593
  br label %for.cond1, !dbg !5594

for.cond1:                                        ; preds = %for.inc10, %for.body
  %1 = load i32, ptr %slot, align 4, !dbg !5595
  %cmp2 = icmp ult i32 %1, 32, !dbg !5596
  br i1 %cmp2, label %for.body3, label %for.end12, !dbg !5597

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %func, align 4, !dbg !5598
  br label %for.cond4, !dbg !5599

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %func, align 4, !dbg !5600
  %cmp5 = icmp ult i32 %2, 8, !dbg !5601
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !5602

for.body6:                                        ; preds = %for.cond4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cap) #9, !dbg !5603
  call void @llvm.dbg.declare(metadata ptr %cap, metadata !5570, metadata !DIExpression()), !dbg !5604
  %3 = load i32, ptr %bus, align 4, !dbg !5605
  %4 = load i32, ptr %slot, align 4, !dbg !5606
  %5 = load i32, ptr %func, align 4, !dbg !5607
  %call = call i32 @__find_dbgp(i32 noundef %3, i32 noundef %4, i32 noundef %5) #11, !dbg !5608
  store i32 %call, ptr %cap, align 4, !dbg !5609
  %6 = load i32, ptr %cap, align 4, !dbg !5610
  %tobool = icmp ne i32 %6, 0, !dbg !5610
  br i1 %tobool, label %if.end, label %if.then, !dbg !5612

if.then:                                          ; preds = %for.body6
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5613

if.end:                                           ; preds = %for.body6
  %7 = load i32, ptr %ehci_num.addr, align 4, !dbg !5614
  %dec = add i32 %7, -1, !dbg !5614
  store i32 %dec, ptr %ehci_num.addr, align 4, !dbg !5614
  %cmp7 = icmp ne i32 %7, 0, !dbg !5616
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5617

if.then8:                                         ; preds = %if.end
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5618

if.end9:                                          ; preds = %if.end
  %8 = load i32, ptr %bus, align 4, !dbg !5619
  %9 = load ptr, ptr %rbus.addr, align 8, !dbg !5620
  store i32 %8, ptr %9, align 4, !dbg !5621
  %10 = load i32, ptr %slot, align 4, !dbg !5622
  %11 = load ptr, ptr %rslot.addr, align 8, !dbg !5623
  store i32 %10, ptr %11, align 4, !dbg !5624
  %12 = load i32, ptr %func, align 4, !dbg !5625
  %13 = load ptr, ptr %rfunc.addr, align 8, !dbg !5626
  store i32 %12, ptr %13, align 4, !dbg !5627
  %14 = load i32, ptr %cap, align 4, !dbg !5628
  store i32 %14, ptr %retval, align 4, !dbg !5629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5629

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cap) #9, !dbg !5630
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 10, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %15 = load i32, ptr %func, align 4, !dbg !5631
  %inc = add i32 %15, 1, !dbg !5631
  store i32 %inc, ptr %func, align 4, !dbg !5631
  br label %for.cond4, !dbg !5632, !llvm.loop !5633

for.end:                                          ; preds = %for.cond4
  br label %for.inc10, !dbg !5637

for.inc10:                                        ; preds = %for.end
  %16 = load i32, ptr %slot, align 4, !dbg !5638
  %inc11 = add i32 %16, 1, !dbg !5638
  store i32 %inc11, ptr %slot, align 4, !dbg !5638
  br label %for.cond1, !dbg !5639, !llvm.loop !5640

for.end12:                                        ; preds = %for.cond1
  br label %for.inc13, !dbg !5642

for.inc13:                                        ; preds = %for.end12
  %17 = load i32, ptr %bus, align 4, !dbg !5643
  %inc14 = add i32 %17, 1, !dbg !5643
  store i32 %inc14, ptr %bus, align 4, !dbg !5643
  br label %for.cond, !dbg !5644, !llvm.loop !5645

for.end15:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !5647

cleanup16:                                        ; preds = %for.end15, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %func) #9, !dbg !5648
  call void @llvm.lifetime.end.p0(i64 4, ptr %slot) #9, !dbg !5648
  call void @llvm.lifetime.end.p0(i64 4, ptr %bus) #9, !dbg !5648
  %18 = load i32, ptr %retval, align 4, !dbg !5648
  ret i32 %18, !dbg !5648
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5649 dso_local i32 @read_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5652 dso_local zeroext i8 @read_pci_config_byte(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5655 dso_local void @write_pci_config_byte(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__set_fixmap(i32 noundef %idx, i64 noundef %phys, i64 %flags.coerce) #4 align 16 !dbg !5658 {
entry:
  %flags = alloca %struct.pgprot, align 8
  %idx.addr = alloca i32, align 4
  %phys.addr = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0
  store i64 %flags.coerce, ptr %coerce.dive, align 8
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5662, metadata !DIExpression()), !dbg !5665
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !5663, metadata !DIExpression()), !dbg !5666
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5664, metadata !DIExpression()), !dbg !5667
  %0 = load i32, ptr %idx.addr, align 4, !dbg !5668
  %1 = load i64, ptr %phys.addr, align 8, !dbg !5669
  %coerce.dive1 = getelementptr inbounds %struct.pgprot, ptr %flags, i32 0, i32 0, !dbg !5670
  %2 = load i64, ptr %coerce.dive1, align 8, !dbg !5670
  call void @native_set_fixmap(i32 noundef %0, i64 noundef %1, i64 %2) #10, !dbg !5670
  ret void, !dbg !5671
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5672 dso_local i64 @cachemode2protval(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #4 align 16 !dbg !5675 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5683, metadata !DIExpression()), !dbg !5685
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5685
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5684, metadata !DIExpression()), !dbg !5685
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5685
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #9, !dbg !5685, !srcloc !5686
  store i32 %1, ptr %ret, align 4, !dbg !5685
  %2 = load i32, ptr %ret, align 4, !dbg !5685
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5685
  ret i32 %2, !dbg !5685
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @detect_set_debug_port() #0 section ".init.text" align 16 !dbg !5687 {
entry:
  %vendorid = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %vendorid) #9, !dbg !5690
  call void @llvm.dbg.declare(metadata ptr %vendorid, metadata !5689, metadata !DIExpression()), !dbg !5691
  %0 = load i32, ptr @ehci_dev, align 4, !dbg !5692
  %conv = trunc i32 %0 to i8, !dbg !5693
  %1 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 1), align 4, !dbg !5694
  %conv1 = trunc i32 %1 to i8, !dbg !5695
  %2 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 2), align 4, !dbg !5696
  %conv2 = trunc i32 %2 to i8, !dbg !5697
  %call = call i32 @read_pci_config(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 0) #10, !dbg !5698
  store i32 %call, ptr %vendorid, align 4, !dbg !5699
  %3 = load i32, ptr %vendorid, align 4, !dbg !5700
  %and = and i32 %3, 65535, !dbg !5702
  %cmp = icmp eq i32 %and, 4318, !dbg !5703
  br i1 %cmp, label %if.then, label %if.end, !dbg !5704

if.then:                                          ; preds = %entry
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.10) #10, !dbg !5705
  store ptr @nvidia_set_debug_port, ptr @set_debug_port, align 8, !dbg !5707
  br label %if.end, !dbg !5708

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %vendorid) #9, !dbg !5709
  ret void, !dbg !5709
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ehci_setup() #0 section ".init.text" align 16 !dbg !5710 {
entry:
  %retval = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %portsc = alloca i32, align 4
  %hcs_params = alloca i32, align 4
  %debug_port = alloca i32, align 4
  %new_debug_port = alloca i32, align 4
  %n_ports = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %port_map_tried = alloca i32, align 4
  %playtimes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl) #9, !dbg !5725
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !5712, metadata !DIExpression()), !dbg !5726
  call void @llvm.lifetime.start.p0(i64 4, ptr %portsc) #9, !dbg !5725
  call void @llvm.dbg.declare(metadata ptr %portsc, metadata !5713, metadata !DIExpression()), !dbg !5727
  call void @llvm.lifetime.start.p0(i64 4, ptr %hcs_params) #9, !dbg !5725
  call void @llvm.dbg.declare(metadata ptr %hcs_params, metadata !5714, metadata !DIExpression()), !dbg !5728
  call void @llvm.lifetime.start.p0(i64 4, ptr %debug_port) #9, !dbg !5729
  call void @llvm.dbg.declare(metadata ptr %debug_port, metadata !5715, metadata !DIExpression()), !dbg !5730
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_debug_port) #9, !dbg !5729
  call void @llvm.dbg.declare(metadata ptr %new_debug_port, metadata !5716, metadata !DIExpression()), !dbg !5731
  store i32 0, ptr %new_debug_port, align 4, !dbg !5731
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ports) #9, !dbg !5729
  call void @llvm.dbg.declare(metadata ptr %n_ports, metadata !5717, metadata !DIExpression()), !dbg !5732
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !5733
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5718, metadata !DIExpression()), !dbg !5734
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !5733
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5719, metadata !DIExpression()), !dbg !5735
  call void @llvm.lifetime.start.p0(i64 4, ptr %port_map_tried) #9, !dbg !5736
  call void @llvm.dbg.declare(metadata ptr %port_map_tried, metadata !5720, metadata !DIExpression()), !dbg !5737
  call void @llvm.lifetime.start.p0(i64 4, ptr %playtimes) #9, !dbg !5738
  call void @llvm.dbg.declare(metadata ptr %playtimes, metadata !5721, metadata !DIExpression()), !dbg !5739
  store i32 3, ptr %playtimes, align 4, !dbg !5739
  call void @early_ehci_bios_handoff() #11, !dbg !5740
  br label %try_next_time, !dbg !5740

try_next_time:                                    ; preds = %if.then38, %if.then7, %entry
  call void @llvm.dbg.label(metadata !5722), !dbg !5741
  store i32 0, ptr %port_map_tried, align 4, !dbg !5742
  br label %try_next_port, !dbg !5743

try_next_port:                                    ; preds = %if.then34, %try_next_time
  call void @llvm.dbg.label(metadata !5723), !dbg !5744
  %0 = load ptr, ptr @ehci_caps, align 8, !dbg !5745
  %hcs_params1 = getelementptr inbounds %struct.ehci_caps, ptr %0, i32 0, i32 1, !dbg !5746
  %call = call i32 @readl(ptr noundef %hcs_params1) #10, !dbg !5747
  store i32 %call, ptr %hcs_params, align 4, !dbg !5748
  %1 = load i32, ptr %hcs_params, align 4, !dbg !5749
  %shr = lshr i32 %1, 20, !dbg !5749
  %and = and i32 %shr, 15, !dbg !5749
  store i32 %and, ptr %debug_port, align 4, !dbg !5750
  %2 = load i32, ptr %debug_port, align 4, !dbg !5751
  store i32 %2, ptr @dbgp_phys_port, align 4, !dbg !5752
  %3 = load i32, ptr %hcs_params, align 4, !dbg !5753
  %shr2 = lshr i32 %3, 0, !dbg !5753
  %and3 = and i32 %shr2, 15, !dbg !5753
  store i32 %and3, ptr %n_ports, align 4, !dbg !5754
  %4 = load i32, ptr %debug_port, align 4, !dbg !5755
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.12, i32 noundef %4) #10, !dbg !5756
  %5 = load i32, ptr %n_ports, align 4, !dbg !5757
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.13, i32 noundef %5) #10, !dbg !5758
  call void @dbgp_ehci_status(ptr noundef @.str.14) #10, !dbg !5759
  store i32 1, ptr %i, align 4, !dbg !5760
  br label %for.cond, !dbg !5762

for.cond:                                         ; preds = %for.inc, %try_next_port
  %6 = load i32, ptr %i, align 4, !dbg !5763
  %7 = load i32, ptr %n_ports, align 4, !dbg !5765
  %cmp = icmp ule i32 %6, %7, !dbg !5766
  br i1 %cmp, label %for.body, label %for.end, !dbg !5767

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr @ehci_regs, align 8, !dbg !5768
  %9 = getelementptr inbounds %struct.ehci_regs, ptr %8, i32 0, i32 11, !dbg !5770
  %10 = load i32, ptr %i, align 4, !dbg !5771
  %sub = sub i32 %10, 1, !dbg !5772
  %idxprom = sext i32 %sub to i64, !dbg !5768
  %arrayidx = getelementptr [15 x i32], ptr %9, i64 0, i64 %idxprom, !dbg !5768
  %call4 = call i32 @readl(ptr noundef %arrayidx) #10, !dbg !5773
  store i32 %call4, ptr %portsc, align 4, !dbg !5774
  %11 = load i32, ptr %i, align 4, !dbg !5775
  %12 = load i32, ptr %portsc, align 4, !dbg !5776
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.15, i32 noundef %11, i32 noundef %12) #10, !dbg !5777
  br label %for.inc, !dbg !5778

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !dbg !5779
  %inc = add i32 %13, 1, !dbg !5779
  store i32 %inc, ptr %i, align 4, !dbg !5779
  br label %for.cond, !dbg !5780, !llvm.loop !5781

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %port_map_tried, align 4, !dbg !5783
  %tobool = icmp ne i32 %14, 0, !dbg !5783
  br i1 %tobool, label %land.lhs.true, label %if.end8, !dbg !5785

land.lhs.true:                                    ; preds = %for.end
  %15 = load i32, ptr %new_debug_port, align 4, !dbg !5786
  %16 = load i32, ptr %debug_port, align 4, !dbg !5787
  %cmp5 = icmp ne i32 %15, %16, !dbg !5788
  br i1 %cmp5, label %if.then, label %if.end8, !dbg !5789

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, ptr %playtimes, align 4, !dbg !5790
  %dec = add i32 %17, -1, !dbg !5790
  store i32 %dec, ptr %playtimes, align 4, !dbg !5790
  %tobool6 = icmp ne i32 %dec, 0, !dbg !5790
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !5793

if.then7:                                         ; preds = %if.then
  %18 = load ptr, ptr @set_debug_port, align 8, !dbg !5794
  %19 = load i32, ptr %new_debug_port, align 4, !dbg !5796
  call void %18(i32 noundef %19) #10, !dbg !5794
  br label %try_next_time, !dbg !5797

if.end:                                           ; preds = %if.then
  store i32 -1, ptr %retval, align 4, !dbg !5798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5798

if.end8:                                          ; preds = %land.lhs.true, %for.end
  %20 = load ptr, ptr @ehci_regs, align 8, !dbg !5799
  %configured_flag = getelementptr inbounds %struct.ehci_regs, ptr %20, i32 0, i32 10, !dbg !5801
  %call9 = call i32 @readl(ptr noundef %configured_flag) #10, !dbg !5802
  %and10 = and i32 %call9, 1, !dbg !5803
  %tobool11 = icmp ne i32 %and10, 0, !dbg !5803
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !5804

if.then12:                                        ; preds = %if.end8
  %call13 = call i32 @dbgp_ehci_controller_reset() #10, !dbg !5805
  %cmp14 = icmp ne i32 %call13, 0, !dbg !5808
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !5809

if.then15:                                        ; preds = %if.then12
  store i32 -1, ptr %retval, align 4, !dbg !5810
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5810

if.end16:                                         ; preds = %if.then12
  br label %if.end17, !dbg !5811

if.else:                                          ; preds = %if.end8
  call void @dbgp_ehci_status(ptr noundef @.str.16) #10, !dbg !5812
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end16
  %call18 = call i32 @_dbgp_external_startup() #10, !dbg !5814
  store i32 %call18, ptr %ret, align 4, !dbg !5815
  %21 = load i32, ptr %ret, align 4, !dbg !5816
  %cmp19 = icmp eq i32 %21, -5, !dbg !5818
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !5819

if.then20:                                        ; preds = %if.end17
  br label %next_debug_port, !dbg !5820

if.end21:                                         ; preds = %if.end17
  %22 = load i32, ptr %ret, align 4, !dbg !5821
  %cmp22 = icmp slt i32 %22, 0, !dbg !5823
  br i1 %cmp22, label %if.then23, label %if.end27, !dbg !5824

if.then23:                                        ; preds = %if.end21
  %23 = load ptr, ptr @ehci_debug, align 8, !dbg !5825
  %control = getelementptr inbounds %struct.ehci_dbg_port, ptr %23, i32 0, i32 0, !dbg !5827
  %call24 = call i32 @readl(ptr noundef %control) #10, !dbg !5828
  store i32 %call24, ptr %ctrl, align 4, !dbg !5829
  %24 = load i32, ptr %ctrl, align 4, !dbg !5830
  %and25 = and i32 %24, -1342178321, !dbg !5830
  store i32 %and25, ptr %ctrl, align 4, !dbg !5830
  %25 = load i32, ptr %ctrl, align 4, !dbg !5831
  %26 = load ptr, ptr @ehci_debug, align 8, !dbg !5832
  %control26 = getelementptr inbounds %struct.ehci_dbg_port, ptr %26, i32 0, i32 0, !dbg !5833
  call void @writel(i32 noundef %25, ptr noundef %control26) #10, !dbg !5834
  store i32 -1, ptr %retval, align 4, !dbg !5835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5835

if.end27:                                         ; preds = %if.end21
  store i32 0, ptr %retval, align 4, !dbg !5836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5836

next_debug_port:                                  ; preds = %if.then20
  call void @llvm.dbg.label(metadata !5724), !dbg !5837
  %27 = load i32, ptr %debug_port, align 4, !dbg !5838
  %sub28 = sub i32 %27, 1, !dbg !5839
  %shl = shl i32 1, %sub28, !dbg !5840
  %28 = load i32, ptr %port_map_tried, align 4, !dbg !5841
  %or = or i32 %28, %shl, !dbg !5841
  store i32 %or, ptr %port_map_tried, align 4, !dbg !5841
  %29 = load i32, ptr %debug_port, align 4, !dbg !5842
  %sub29 = sub i32 %29, 1, !dbg !5843
  %add = add i32 %sub29, 1, !dbg !5844
  %30 = load i32, ptr %n_ports, align 4, !dbg !5845
  %rem = urem i32 %add, %30, !dbg !5846
  %add30 = add i32 %rem, 1, !dbg !5847
  store i32 %add30, ptr %new_debug_port, align 4, !dbg !5848
  %31 = load i32, ptr %port_map_tried, align 4, !dbg !5849
  %32 = load i32, ptr %n_ports, align 4, !dbg !5851
  %shl31 = shl i32 1, %32, !dbg !5852
  %sub32 = sub i32 %shl31, 1, !dbg !5853
  %cmp33 = icmp ne i32 %31, %sub32, !dbg !5854
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5855

if.then34:                                        ; preds = %next_debug_port
  %33 = load ptr, ptr @set_debug_port, align 8, !dbg !5856
  %34 = load i32, ptr %new_debug_port, align 4, !dbg !5858
  call void %33(i32 noundef %34) #10, !dbg !5856
  br label %try_next_port, !dbg !5859

if.end35:                                         ; preds = %next_debug_port
  %35 = load i32, ptr %playtimes, align 4, !dbg !5860
  %dec36 = add i32 %35, -1, !dbg !5860
  store i32 %dec36, ptr %playtimes, align 4, !dbg !5860
  %tobool37 = icmp ne i32 %dec36, 0, !dbg !5860
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !5862

if.then38:                                        ; preds = %if.end35
  %36 = load ptr, ptr @set_debug_port, align 8, !dbg !5863
  %37 = load i32, ptr %new_debug_port, align 4, !dbg !5865
  call void %36(i32 noundef %37) #10, !dbg !5863
  br label %try_next_time, !dbg !5866

if.end39:                                         ; preds = %if.end35
  store i32 -1, ptr %retval, align 4, !dbg !5867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5867

cleanup:                                          ; preds = %if.end39, %if.end27, %if.then23, %if.then15, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %playtimes) #9, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 4, ptr %port_map_tried) #9, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ports) #9, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_debug_port) #9, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 4, ptr %debug_port) #9, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 4, ptr %hcs_params) #9, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 4, ptr %portsc) #9, !dbg !5868
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl) #9, !dbg !5868
  %38 = load i32, ptr %retval, align 4, !dbg !5868
  ret i32 %38, !dbg !5868
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dbgp_ehci_status(ptr noundef %str) #4 align 16 !dbg !5869 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  ret void, !dbg !5875
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_dbgp_write(ptr noundef %con, ptr noundef %str, i32 noundef %n) #5 align 16 !dbg !5876 {
entry:
  %con.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %chunk = alloca i32, align 4
  %buf = alloca [8 x i8], align 1
  %use_cr = alloca i32, align 4
  %cmd = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %reset_run = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %con, ptr %con.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %con.addr, metadata !5880, metadata !DIExpression()), !dbg !5889
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5881, metadata !DIExpression()), !dbg !5890
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5882, metadata !DIExpression()), !dbg !5891
  call void @llvm.lifetime.start.p0(i64 4, ptr %chunk) #9, !dbg !5892
  call void @llvm.dbg.declare(metadata ptr %chunk, metadata !5883, metadata !DIExpression()), !dbg !5893
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #9, !dbg !5894
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5884, metadata !DIExpression()), !dbg !5895
  call void @llvm.lifetime.start.p0(i64 4, ptr %use_cr) #9, !dbg !5896
  call void @llvm.dbg.declare(metadata ptr %use_cr, metadata !5885, metadata !DIExpression()), !dbg !5897
  store i32 0, ptr %use_cr, align 4, !dbg !5897
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd) #9, !dbg !5898
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !5886, metadata !DIExpression()), !dbg !5899
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl) #9, !dbg !5898
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !5887, metadata !DIExpression()), !dbg !5900
  call void @llvm.lifetime.start.p0(i64 4, ptr %reset_run) #9, !dbg !5901
  call void @llvm.dbg.declare(metadata ptr %reset_run, metadata !5888, metadata !DIExpression()), !dbg !5902
  store i32 0, ptr %reset_run, align 4, !dbg !5902
  %0 = load ptr, ptr @ehci_debug, align 8, !dbg !5903
  %tobool = icmp ne ptr %0, null, !dbg !5903
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5905

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @dbgp_not_safe, align 4, !dbg !5906
  %tobool1 = icmp ne i32 %1, 0, !dbg !5906
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5907

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5908

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr @ehci_regs, align 8, !dbg !5909
  %command = getelementptr inbounds %struct.ehci_regs, ptr %2, i32 0, i32 0, !dbg !5910
  %call = call i32 @readl(ptr noundef %command) #10, !dbg !5911
  store i32 %call, ptr %cmd, align 4, !dbg !5912
  %3 = load i32, ptr %cmd, align 4, !dbg !5913
  %and = and i32 %3, 1, !dbg !5913
  %tobool2 = icmp ne i32 %and, 0, !dbg !5913
  %lnot = xor i1 %tobool2, true, !dbg !5913
  %lnot3 = xor i1 %lnot, true, !dbg !5913
  %lnot4 = xor i1 %lnot3, true, !dbg !5913
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5913
  %conv = sext i32 %lnot.ext to i64, !dbg !5913
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5913
  %tobool5 = icmp ne i64 %expval, 0, !dbg !5913
  br i1 %tobool5, label %if.then6, label %if.end14, !dbg !5915

if.then6:                                         ; preds = %if.end
  %4 = load ptr, ptr @ehci_debug, align 8, !dbg !5916
  %control = getelementptr inbounds %struct.ehci_dbg_port, ptr %4, i32 0, i32 0, !dbg !5918
  %call7 = call i32 @readl(ptr noundef %control) #10, !dbg !5919
  store i32 %call7, ptr %ctrl, align 4, !dbg !5920
  %5 = load i32, ptr %ctrl, align 4, !dbg !5921
  %and8 = and i32 %5, 268435456, !dbg !5923
  %tobool9 = icmp ne i32 %and8, 0, !dbg !5923
  br i1 %tobool9, label %if.else, label %if.then10, !dbg !5924

if.then10:                                        ; preds = %if.then6
  store i32 1, ptr @dbgp_not_safe, align 4, !dbg !5925
  %call11 = call i32 @_dbgp_external_startup() #10, !dbg !5927
  br label %if.end13, !dbg !5928

if.else:                                          ; preds = %if.then6
  %6 = load i32, ptr %cmd, align 4, !dbg !5929
  %or = or i32 %6, 1, !dbg !5929
  store i32 %or, ptr %cmd, align 4, !dbg !5929
  %7 = load i32, ptr %cmd, align 4, !dbg !5931
  %8 = load ptr, ptr @ehci_regs, align 8, !dbg !5932
  %command12 = getelementptr inbounds %struct.ehci_regs, ptr %8, i32 0, i32 0, !dbg !5933
  call void @writel(i32 noundef %7, ptr noundef %command12) #10, !dbg !5934
  store i32 1, ptr %reset_run, align 4, !dbg !5935
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  br label %if.end14, !dbg !5936

if.end14:                                         ; preds = %if.end13, %if.end
  br label %while.cond, !dbg !5937

while.cond:                                       ; preds = %if.end37, %if.end14
  %9 = load i32, ptr %n.addr, align 4, !dbg !5938
  %cmp = icmp ugt i32 %9, 0, !dbg !5939
  br i1 %cmp, label %while.body, label %while.end, !dbg !5937

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %chunk, align 4, !dbg !5940
  br label %for.cond, !dbg !5943

for.cond:                                         ; preds = %for.inc, %while.body
  %10 = load i32, ptr %chunk, align 4, !dbg !5944
  %cmp16 = icmp slt i32 %10, 8, !dbg !5946
  br i1 %cmp16, label %land.rhs, label %land.end, !dbg !5947

land.rhs:                                         ; preds = %for.cond
  %11 = load i32, ptr %n.addr, align 4, !dbg !5948
  %cmp18 = icmp ugt i32 %11, 0, !dbg !5949
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp18, %land.rhs ], !dbg !5950
  br i1 %12, label %for.body, label %for.end, !dbg !5951

for.body:                                         ; preds = %land.end
  %13 = load i32, ptr %use_cr, align 4, !dbg !5952
  %tobool20 = icmp ne i32 %13, 0, !dbg !5952
  br i1 %tobool20, label %if.end25, label %land.lhs.true, !dbg !5955

land.lhs.true:                                    ; preds = %for.body
  %14 = load ptr, ptr %str.addr, align 8, !dbg !5956
  %15 = load i8, ptr %14, align 1, !dbg !5957
  %conv21 = zext i8 %15 to i32, !dbg !5957
  %cmp22 = icmp eq i32 %conv21, 10, !dbg !5958
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5959

if.then24:                                        ; preds = %land.lhs.true
  store i32 1, ptr %use_cr, align 4, !dbg !5960
  %16 = load i32, ptr %chunk, align 4, !dbg !5962
  %idxprom = sext i32 %16 to i64, !dbg !5963
  %arrayidx = getelementptr [8 x i8], ptr %buf, i64 0, i64 %idxprom, !dbg !5963
  store i8 13, ptr %arrayidx, align 1, !dbg !5964
  %17 = load ptr, ptr %str.addr, align 8, !dbg !5965
  %incdec.ptr = getelementptr i8, ptr %17, i32 -1, !dbg !5965
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !5965
  %18 = load i32, ptr %n.addr, align 4, !dbg !5966
  %inc = add i32 %18, 1, !dbg !5966
  store i32 %inc, ptr %n.addr, align 4, !dbg !5966
  br label %for.inc, !dbg !5967

if.end25:                                         ; preds = %land.lhs.true, %for.body
  %19 = load i32, ptr %use_cr, align 4, !dbg !5968
  %tobool26 = icmp ne i32 %19, 0, !dbg !5968
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5970

if.then27:                                        ; preds = %if.end25
  store i32 0, ptr %use_cr, align 4, !dbg !5971
  br label %if.end28, !dbg !5972

if.end28:                                         ; preds = %if.then27, %if.end25
  %20 = load ptr, ptr %str.addr, align 8, !dbg !5973
  %21 = load i8, ptr %20, align 1, !dbg !5974
  %22 = load i32, ptr %chunk, align 4, !dbg !5975
  %idxprom29 = sext i32 %22 to i64, !dbg !5976
  %arrayidx30 = getelementptr [8 x i8], ptr %buf, i64 0, i64 %idxprom29, !dbg !5976
  store i8 %21, ptr %arrayidx30, align 1, !dbg !5977
  br label %for.inc, !dbg !5978

for.inc:                                          ; preds = %if.end28, %if.then24
  %23 = load ptr, ptr %str.addr, align 8, !dbg !5979
  %incdec.ptr31 = getelementptr i8, ptr %23, i32 1, !dbg !5979
  store ptr %incdec.ptr31, ptr %str.addr, align 8, !dbg !5979
  %24 = load i32, ptr %chunk, align 4, !dbg !5980
  %inc32 = add i32 %24, 1, !dbg !5980
  store i32 %inc32, ptr %chunk, align 4, !dbg !5980
  %25 = load i32, ptr %n.addr, align 4, !dbg !5981
  %dec = add i32 %25, -1, !dbg !5981
  store i32 %dec, ptr %n.addr, align 4, !dbg !5981
  br label %for.cond, !dbg !5982, !llvm.loop !5983

for.end:                                          ; preds = %land.end
  %26 = load i32, ptr %chunk, align 4, !dbg !5985
  %cmp33 = icmp sgt i32 %26, 0, !dbg !5987
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !5988

if.then35:                                        ; preds = %for.end
  %27 = load i32, ptr @dbgp_endpoint_out, align 4, !dbg !5989
  %arraydecay = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0, !dbg !5991
  %28 = load i32, ptr %chunk, align 4, !dbg !5992
  %call36 = call i32 @dbgp_bulk_write(i32 noundef 127, i32 noundef %27, ptr noundef %arraydecay, i32 noundef %28) #10, !dbg !5993
  br label %if.end37, !dbg !5994

if.end37:                                         ; preds = %if.then35, %for.end
  br label %while.cond, !dbg !5937, !llvm.loop !5995

while.end:                                        ; preds = %while.cond
  %29 = load i32, ptr %reset_run, align 4, !dbg !5997
  %tobool38 = icmp ne i32 %29, 0, !dbg !5997
  %lnot39 = xor i1 %tobool38, true, !dbg !5997
  %lnot41 = xor i1 %lnot39, true, !dbg !5997
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5997
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5997
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5997
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !5997
  br i1 %tobool45, label %if.then46, label %if.end51, !dbg !5999

if.then46:                                        ; preds = %while.end
  %30 = load ptr, ptr @ehci_regs, align 8, !dbg !6000
  %command47 = getelementptr inbounds %struct.ehci_regs, ptr %30, i32 0, i32 0, !dbg !6002
  %call48 = call i32 @readl(ptr noundef %command47) #10, !dbg !6003
  store i32 %call48, ptr %cmd, align 4, !dbg !6004
  %31 = load i32, ptr %cmd, align 4, !dbg !6005
  %and49 = and i32 %31, -2, !dbg !6005
  store i32 %and49, ptr %cmd, align 4, !dbg !6005
  %32 = load i32, ptr %cmd, align 4, !dbg !6006
  %33 = load ptr, ptr @ehci_regs, align 8, !dbg !6007
  %command50 = getelementptr inbounds %struct.ehci_regs, ptr %33, i32 0, i32 0, !dbg !6008
  call void @writel(i32 noundef %32, ptr noundef %command50) #10, !dbg !6009
  br label %if.end51, !dbg !6010

if.end51:                                         ; preds = %if.then46, %while.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6011
  br label %cleanup, !dbg !6011

cleanup:                                          ; preds = %if.end51, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %reset_run) #9, !dbg !6011
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl) #9, !dbg !6011
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd) #9, !dbg !6011
  call void @llvm.lifetime.end.p0(i64 4, ptr %use_cr) #9, !dbg !6011
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #9, !dbg !6011
  call void @llvm.lifetime.end.p0(i64 4, ptr %chunk) #9, !dbg !6011
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6011

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dbgp_reset_prep(ptr noundef %hcd) #5 align 16 !dbg !6012 {
entry:
  %retval = alloca i32, align 4
  %hcd.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hcd, ptr %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hcd.addr, metadata !6018, metadata !DIExpression()), !dbg !6021
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6022
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6019, metadata !DIExpression()), !dbg !6023
  %0 = load ptr, ptr %hcd.addr, align 8, !dbg !6024
  %call = call i32 @xen_dbgp_reset_prep(ptr noundef %0) #10, !dbg !6025
  store i32 %call, ptr %ret, align 4, !dbg !6023
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl) #9, !dbg !6026
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !6020, metadata !DIExpression()), !dbg !6027
  %1 = load i32, ptr %ret, align 4, !dbg !6028
  %tobool = icmp ne i32 %1, 0, !dbg !6028
  br i1 %tobool, label %if.then, label %if.end, !dbg !6030

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !6031
  store i32 %2, ptr %retval, align 4, !dbg !6032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6032

if.end:                                           ; preds = %entry
  store i32 1, ptr @dbgp_not_safe, align 4, !dbg !6033
  %3 = load ptr, ptr @ehci_debug, align 8, !dbg !6034
  %tobool1 = icmp ne ptr %3, null, !dbg !6034
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6036

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6037

if.end3:                                          ; preds = %if.end
  %4 = load i16, ptr getelementptr inbounds (%struct.console, ptr @early_dbgp_console, i32 0, i32 9), align 2, !dbg !6038
  %conv = sext i16 %4 to i32, !dbg !6040
  %cmp = icmp ne i32 %conv, -1, !dbg !6041
  br i1 %cmp, label %land.lhs.true, label %if.end8, !dbg !6042

land.lhs.true:                                    ; preds = %if.end3
  %5 = load i16, ptr getelementptr inbounds (%struct.console, ptr @early_dbgp_console, i32 0, i32 8), align 8, !dbg !6043
  %conv5 = sext i16 %5 to i32, !dbg !6044
  %and = and i32 %conv5, 8, !dbg !6045
  %tobool6 = icmp ne i32 %and, 0, !dbg !6045
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !6046

if.then7:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6047

if.end8:                                          ; preds = %land.lhs.true, %if.end3
  %6 = load ptr, ptr @ehci_debug, align 8, !dbg !6048
  %control = getelementptr inbounds %struct.ehci_dbg_port, ptr %6, i32 0, i32 0, !dbg !6049
  %call9 = call i32 @readl(ptr noundef %control) #10, !dbg !6050
  store i32 %call9, ptr %ctrl, align 4, !dbg !6051
  %7 = load i32, ptr %ctrl, align 4, !dbg !6052
  %and10 = and i32 %7, 268435456, !dbg !6054
  %tobool11 = icmp ne i32 %and10, 0, !dbg !6054
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !6055

if.then12:                                        ; preds = %if.end8
  %8 = load i32, ptr %ctrl, align 4, !dbg !6056
  %and13 = and i32 %8, -1342178305, !dbg !6056
  store i32 %and13, ptr %ctrl, align 4, !dbg !6056
  %9 = load i32, ptr %ctrl, align 4, !dbg !6058
  %10 = load ptr, ptr @ehci_debug, align 8, !dbg !6059
  %control14 = getelementptr inbounds %struct.ehci_dbg_port, ptr %10, i32 0, i32 0, !dbg !6060
  call void @writel(i32 noundef %9, ptr noundef %control14) #10, !dbg !6061
  br label %if.end15, !dbg !6062

if.end15:                                         ; preds = %if.then12, %if.end8
  store i32 0, ptr %retval, align 4, !dbg !6063
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6063

cleanup:                                          ; preds = %if.end15, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl) #9, !dbg !6064
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6064
  %11 = load i32, ptr %retval, align 4, !dbg !6064
  ret i32 %11, !dbg !6064
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xen_dbgp_reset_prep(ptr noundef %hcd) #4 align 16 !dbg !6065 {
entry:
  %hcd.addr = alloca ptr, align 8
  store ptr %hcd, ptr %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hcd.addr, metadata !6067, metadata !DIExpression()), !dbg !6068
  ret i32 1, !dbg !6069
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writel(i32 noundef %val, ptr noundef %addr) #4 align 16 !dbg !6070 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6075, metadata !DIExpression()), !dbg !6077
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6076, metadata !DIExpression()), !dbg !6077
  %0 = load i32, ptr %val.addr, align 4, !dbg !6077
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6077
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #9, !dbg !6077, !srcloc !6078
  ret void, !dbg !6077
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dbgp_external_startup(ptr noundef %hcd) #5 align 16 !dbg !6079 {
entry:
  %hcd.addr = alloca ptr, align 8
  store ptr %hcd, ptr %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hcd.addr, metadata !6081, metadata !DIExpression()), !dbg !6082
  %0 = load ptr, ptr %hcd.addr, align 8, !dbg !6083
  %call = call i32 @xen_dbgp_external_startup(ptr noundef %0) #10, !dbg !6084
  %tobool = icmp ne i32 %call, 0, !dbg !6084
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6084

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6084

cond.false:                                       ; preds = %entry
  %call1 = call i32 @_dbgp_external_startup() #10, !dbg !6085
  br label %cond.end, !dbg !6084

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ], !dbg !6084
  ret i32 %cond, !dbg !6086
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xen_dbgp_external_startup(ptr noundef %hcd) #4 align 16 !dbg !6087 {
entry:
  %hcd.addr = alloca ptr, align 8
  store ptr %hcd, ptr %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hcd.addr, metadata !6089, metadata !DIExpression()), !dbg !6090
  ret i32 -1, !dbg !6091
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_dbgp_external_startup() #5 align 16 !dbg !6092 {
entry:
  %retval = alloca i32, align 4
  %devnum = alloca i32, align 4
  %dbgp_desc = alloca %struct.usb_debug_descriptor, align 1
  %ret = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %portsc = alloca i32, align 4
  %cmd = alloca i32, align 4
  %dbg_port = alloca i32, align 4
  %tries = alloca i32, align 4
  %reset_port_tries = alloca i32, align 4
  %try_hard_once = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ms = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %devnum) #9, !dbg !6120
  call void @llvm.dbg.declare(metadata ptr %devnum, metadata !6094, metadata !DIExpression()), !dbg !6121
  call void @llvm.lifetime.start.p0(i64 4, ptr %dbgp_desc) #9, !dbg !6122
  call void @llvm.dbg.declare(metadata ptr %dbgp_desc, metadata !6095, metadata !DIExpression()), !dbg !6123
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6124
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6103, metadata !DIExpression()), !dbg !6125
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl) #9, !dbg !6126
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !6104, metadata !DIExpression()), !dbg !6127
  call void @llvm.lifetime.start.p0(i64 4, ptr %portsc) #9, !dbg !6126
  call void @llvm.dbg.declare(metadata ptr %portsc, metadata !6105, metadata !DIExpression()), !dbg !6128
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd) #9, !dbg !6126
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !6106, metadata !DIExpression()), !dbg !6129
  call void @llvm.lifetime.start.p0(i64 4, ptr %dbg_port) #9, !dbg !6130
  call void @llvm.dbg.declare(metadata ptr %dbg_port, metadata !6107, metadata !DIExpression()), !dbg !6131
  %0 = load i32, ptr @dbgp_phys_port, align 4, !dbg !6132
  store i32 %0, ptr %dbg_port, align 4, !dbg !6131
  call void @llvm.lifetime.start.p0(i64 4, ptr %tries) #9, !dbg !6133
  call void @llvm.dbg.declare(metadata ptr %tries, metadata !6108, metadata !DIExpression()), !dbg !6134
  store i32 3, ptr %tries, align 4, !dbg !6134
  call void @llvm.lifetime.start.p0(i64 4, ptr %reset_port_tries) #9, !dbg !6135
  call void @llvm.dbg.declare(metadata ptr %reset_port_tries, metadata !6109, metadata !DIExpression()), !dbg !6136
  store i32 1, ptr %reset_port_tries, align 4, !dbg !6136
  call void @llvm.lifetime.start.p0(i64 4, ptr %try_hard_once) #9, !dbg !6137
  call void @llvm.dbg.declare(metadata ptr %try_hard_once, metadata !6110, metadata !DIExpression()), !dbg !6138
  store i32 1, ptr %try_hard_once, align 4, !dbg !6138
  br label %try_port_reset_again, !dbg !6137

try_port_reset_again:                             ; preds = %if.then21, %while.end, %entry
  call void @llvm.dbg.label(metadata !6111), !dbg !6139
  %call = call i32 @dbgp_ehci_startup() #10, !dbg !6140
  store i32 %call, ptr %ret, align 4, !dbg !6141
  %1 = load i32, ptr %ret, align 4, !dbg !6142
  %tobool = icmp ne i32 %1, 0, !dbg !6142
  br i1 %tobool, label %if.then, label %if.end, !dbg !6144

if.then:                                          ; preds = %try_port_reset_again
  %2 = load i32, ptr %ret, align 4, !dbg !6145
  store i32 %2, ptr %retval, align 4, !dbg !6146
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6146

if.end:                                           ; preds = %try_port_reset_again
  %3 = load i32, ptr %dbg_port, align 4, !dbg !6147
  %call1 = call i32 @ehci_wait_for_port(i32 noundef %3) #10, !dbg !6148
  store i32 %call1, ptr %ret, align 4, !dbg !6149
  %4 = load i32, ptr %ret, align 4, !dbg !6150
  %cmp = icmp slt i32 %4, 0, !dbg !6151
  br i1 %cmp, label %if.then2, label %if.end24, !dbg !6152

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr @ehci_regs, align 8, !dbg !6153
  %6 = getelementptr inbounds %struct.ehci_regs, ptr %5, i32 0, i32 11, !dbg !6154
  %7 = load i32, ptr %dbg_port, align 4, !dbg !6155
  %sub = sub i32 %7, 1, !dbg !6156
  %idxprom = sext i32 %sub to i64, !dbg !6153
  %arrayidx = getelementptr [15 x i32], ptr %6, i64 0, i64 %idxprom, !dbg !6153
  %call3 = call i32 @readl(ptr noundef %arrayidx) #10, !dbg !6157
  store i32 %call3, ptr %portsc, align 4, !dbg !6158
  %8 = load i32, ptr %portsc, align 4, !dbg !6159
  %and = and i32 %8, 1, !dbg !6160
  %tobool4 = icmp ne i32 %and, 0, !dbg !6160
  br i1 %tobool4, label %if.else, label %land.lhs.true, !dbg !6161

land.lhs.true:                                    ; preds = %if.then2
  %9 = load i32, ptr %try_hard_once, align 4, !dbg !6162
  %tobool5 = icmp ne i32 %9, 0, !dbg !6162
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !6163

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, ptr %try_hard_once, align 4, !dbg !6164
  %10 = load ptr, ptr @ehci_regs, align 8, !dbg !6165
  %command = getelementptr inbounds %struct.ehci_regs, ptr %10, i32 0, i32 0, !dbg !6166
  %call7 = call i32 @readl(ptr noundef %command) #10, !dbg !6167
  store i32 %call7, ptr %cmd, align 4, !dbg !6168
  %11 = load i32, ptr %cmd, align 4, !dbg !6169
  %and8 = and i32 %11, -2, !dbg !6169
  store i32 %and8, ptr %cmd, align 4, !dbg !6169
  %12 = load i32, ptr %cmd, align 4, !dbg !6170
  %13 = load ptr, ptr @ehci_regs, align 8, !dbg !6171
  %command9 = getelementptr inbounds %struct.ehci_regs, ptr %13, i32 0, i32 0, !dbg !6172
  call void @writel(i32 noundef %12, ptr noundef %command9) #10, !dbg !6173
  %14 = load ptr, ptr @ehci_regs, align 8, !dbg !6174
  %15 = getelementptr inbounds %struct.ehci_regs, ptr %14, i32 0, i32 11, !dbg !6175
  %16 = load i32, ptr %dbg_port, align 4, !dbg !6176
  %sub10 = sub i32 %16, 1, !dbg !6177
  %idxprom11 = sext i32 %sub10 to i64, !dbg !6174
  %arrayidx12 = getelementptr [15 x i32], ptr %15, i64 0, i64 %idxprom11, !dbg !6174
  %call13 = call i32 @readl(ptr noundef %arrayidx12) #10, !dbg !6178
  store i32 %call13, ptr %portsc, align 4, !dbg !6179
  %17 = load i32, ptr %portsc, align 4, !dbg !6180
  %or = or i32 %17, 262144, !dbg !6180
  store i32 %or, ptr %portsc, align 4, !dbg !6180
  %18 = load i32, ptr %portsc, align 4, !dbg !6181
  %19 = load ptr, ptr @ehci_regs, align 8, !dbg !6182
  %20 = getelementptr inbounds %struct.ehci_regs, ptr %19, i32 0, i32 11, !dbg !6183
  %21 = load i32, ptr %dbg_port, align 4, !dbg !6184
  %sub14 = sub i32 %21, 1, !dbg !6185
  %idxprom15 = sext i32 %sub14 to i64, !dbg !6182
  %arrayidx16 = getelementptr [15 x i32], ptr %20, i64 0, i64 %idxprom15, !dbg !6182
  call void @writel(i32 noundef %18, ptr noundef %arrayidx16) #10, !dbg !6186
  call void @dbgp_ehci_status(ptr noundef @.str.22) #10, !dbg !6187
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ms) #9, !dbg !6188
  call void @llvm.dbg.declare(metadata ptr %__ms, metadata !6112, metadata !DIExpression()), !dbg !6188
  store i64 50, ptr %__ms, align 8, !dbg !6188
  br label %while.cond, !dbg !6188

while.cond:                                       ; preds = %while.body, %if.then6
  %22 = load i64, ptr %__ms, align 8, !dbg !6188
  %dec = add i64 %22, -1, !dbg !6188
  store i64 %dec, ptr %__ms, align 8, !dbg !6188
  %tobool17 = icmp ne i64 %22, 0, !dbg !6188
  br i1 %tobool17, label %while.body, label %while.end, !dbg !6188

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 noundef 4295000) #10, !dbg !6189
  br label %while.cond, !dbg !6188, !llvm.loop !6194

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ms) #9, !dbg !6195
  %call18 = call i32 @dbgp_ehci_controller_reset() #10, !dbg !6196
  br label %try_port_reset_again, !dbg !6197

if.else:                                          ; preds = %land.lhs.true, %if.then2
  %23 = load i32, ptr %reset_port_tries, align 4, !dbg !6198
  %dec19 = add i32 %23, -1, !dbg !6198
  store i32 %dec19, ptr %reset_port_tries, align 4, !dbg !6198
  %tobool20 = icmp ne i32 %23, 0, !dbg !6198
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !6200

if.then21:                                        ; preds = %if.else
  br label %try_port_reset_again, !dbg !6201

if.end22:                                         ; preds = %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.23) #10, !dbg !6203
  store i32 -5, ptr %retval, align 4, !dbg !6204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6204

if.end24:                                         ; preds = %if.end
  call void @dbgp_ehci_status(ptr noundef @.str.24) #10, !dbg !6205
  %24 = load ptr, ptr @ehci_debug, align 8, !dbg !6206
  %control = getelementptr inbounds %struct.ehci_dbg_port, ptr %24, i32 0, i32 0, !dbg !6207
  %call25 = call i32 @readl(ptr noundef %control) #10, !dbg !6208
  store i32 %call25, ptr %ctrl, align 4, !dbg !6209
  %25 = load i32, ptr %ctrl, align 4, !dbg !6210
  %or26 = or i32 %25, 1342178304, !dbg !6210
  store i32 %or26, ptr %ctrl, align 4, !dbg !6210
  %26 = load i32, ptr %ctrl, align 4, !dbg !6211
  %27 = load ptr, ptr @ehci_debug, align 8, !dbg !6212
  %control27 = getelementptr inbounds %struct.ehci_dbg_port, ptr %27, i32 0, i32 0, !dbg !6213
  call void @writel(i32 noundef %26, ptr noundef %control27) #10, !dbg !6214
  %28 = load ptr, ptr @ehci_debug, align 8, !dbg !6215
  %control28 = getelementptr inbounds %struct.ehci_dbg_port, ptr %28, i32 0, i32 0, !dbg !6216
  %call29 = call i32 @readl(ptr noundef %control28) #10, !dbg !6217
  store i32 %call29, ptr %ctrl, align 4, !dbg !6218
  %29 = load i32, ptr %ctrl, align 4, !dbg !6219
  %and30 = and i32 %29, 1342178304, !dbg !6221
  %cmp31 = icmp ne i32 %and30, 1342178304, !dbg !6222
  br i1 %cmp31, label %if.then32, label %if.end35, !dbg !6223

if.then32:                                        ; preds = %if.end24
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.25) #10, !dbg !6224
  %30 = load i32, ptr %ctrl, align 4, !dbg !6226
  %and33 = and i32 %30, -1342178305, !dbg !6227
  %31 = load ptr, ptr @ehci_debug, align 8, !dbg !6228
  %control34 = getelementptr inbounds %struct.ehci_dbg_port, ptr %31, i32 0, i32 0, !dbg !6229
  call void @writel(i32 noundef %and33, ptr noundef %control34) #10, !dbg !6230
  store i32 -19, ptr %retval, align 4, !dbg !6231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6231

if.end35:                                         ; preds = %if.end24
  call void @dbgp_ehci_status(ptr noundef @.str.26) #10, !dbg !6232
  %32 = load ptr, ptr @ehci_regs, align 8, !dbg !6233
  %33 = getelementptr inbounds %struct.ehci_regs, ptr %32, i32 0, i32 11, !dbg !6234
  %34 = load i32, ptr %dbg_port, align 4, !dbg !6235
  %sub36 = sub i32 %34, 1, !dbg !6236
  %idxprom37 = sext i32 %sub36 to i64, !dbg !6233
  %arrayidx38 = getelementptr [15 x i32], ptr %33, i64 0, i64 %idxprom37, !dbg !6233
  %call39 = call i32 @readl(ptr noundef %arrayidx38) #10, !dbg !6237
  store i32 %call39, ptr %portsc, align 4, !dbg !6238
  %35 = load i32, ptr %portsc, align 4, !dbg !6239
  %and40 = and i32 %35, -5, !dbg !6239
  store i32 %and40, ptr %portsc, align 4, !dbg !6239
  %36 = load i32, ptr %portsc, align 4, !dbg !6240
  %37 = load ptr, ptr @ehci_regs, align 8, !dbg !6241
  %38 = getelementptr inbounds %struct.ehci_regs, ptr %37, i32 0, i32 11, !dbg !6242
  %39 = load i32, ptr %dbg_port, align 4, !dbg !6243
  %sub41 = sub i32 %39, 1, !dbg !6244
  %idxprom42 = sext i32 %sub41 to i64, !dbg !6241
  %arrayidx43 = getelementptr [15 x i32], ptr %38, i64 0, i64 %idxprom42, !dbg !6241
  call void @writel(i32 noundef %36, ptr noundef %arrayidx43) #10, !dbg !6245
  call void @dbgp_mdelay(i32 noundef 100) #10, !dbg !6246
  br label %try_again, !dbg !6246

try_again:                                        ; preds = %if.then74, %if.end35
  call void @llvm.dbg.label(metadata !6118), !dbg !6247
  store i32 0, ptr %devnum, align 4, !dbg !6248
  br label %for.cond, !dbg !6250

for.cond:                                         ; preds = %for.inc, %try_again
  %40 = load i32, ptr %devnum, align 4, !dbg !6251
  %cmp44 = icmp sle i32 %40, 127, !dbg !6253
  br i1 %cmp44, label %for.body, label %for.end, !dbg !6254

for.body:                                         ; preds = %for.cond
  %41 = load i32, ptr %devnum, align 4, !dbg !6255
  %call45 = call i32 @dbgp_control_msg(i32 noundef %41, i32 noundef 128, i32 noundef 6, i32 noundef 2560, i32 noundef 0, ptr noundef %dbgp_desc, i32 noundef 4) #10, !dbg !6257
  store i32 %call45, ptr %ret, align 4, !dbg !6258
  %42 = load i32, ptr %ret, align 4, !dbg !6259
  %cmp46 = icmp sgt i32 %42, 0, !dbg !6261
  br i1 %cmp46, label %if.then47, label %if.end48, !dbg !6262

if.then47:                                        ; preds = %for.body
  br label %for.end, !dbg !6263

if.end48:                                         ; preds = %for.body
  br label %for.inc, !dbg !6264

for.inc:                                          ; preds = %if.end48
  %43 = load i32, ptr %devnum, align 4, !dbg !6265
  %inc = add i32 %43, 1, !dbg !6265
  store i32 %inc, ptr %devnum, align 4, !dbg !6265
  br label %for.cond, !dbg !6266, !llvm.loop !6267

for.end:                                          ; preds = %if.then47, %for.cond
  %44 = load i32, ptr %devnum, align 4, !dbg !6269
  %cmp49 = icmp sgt i32 %44, 127, !dbg !6271
  br i1 %cmp49, label %if.then50, label %if.end51, !dbg !6272

if.then50:                                        ; preds = %for.end
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.27) #10, !dbg !6273
  br label %err, !dbg !6275

if.end51:                                         ; preds = %for.end
  %bDebugOutEndpoint = getelementptr inbounds %struct.usb_debug_descriptor, ptr %dbgp_desc, i32 0, i32 3, !dbg !6276
  %45 = load i8, ptr %bDebugOutEndpoint, align 1, !dbg !6276
  %conv = zext i8 %45 to i32, !dbg !6277
  store i32 %conv, ptr @dbgp_endpoint_out, align 4, !dbg !6278
  %bDebugInEndpoint = getelementptr inbounds %struct.usb_debug_descriptor, ptr %dbgp_desc, i32 0, i32 2, !dbg !6279
  %46 = load i8, ptr %bDebugInEndpoint, align 1, !dbg !6279
  %conv52 = zext i8 %46 to i32, !dbg !6280
  store i32 %conv52, ptr @dbgp_endpoint_in, align 4, !dbg !6281
  %47 = load i32, ptr %devnum, align 4, !dbg !6282
  %cmp53 = icmp ne i32 %47, 127, !dbg !6284
  br i1 %cmp53, label %if.then55, label %if.end61, !dbg !6285

if.then55:                                        ; preds = %if.end51
  %48 = load i32, ptr %devnum, align 4, !dbg !6286
  %call56 = call i32 @dbgp_control_msg(i32 noundef %48, i32 noundef 0, i32 noundef 5, i32 noundef 127, i32 noundef 0, ptr noundef null, i32 noundef 0) #10, !dbg !6288
  store i32 %call56, ptr %ret, align 4, !dbg !6289
  %49 = load i32, ptr %ret, align 4, !dbg !6290
  %cmp57 = icmp slt i32 %49, 0, !dbg !6292
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !6293

if.then59:                                        ; preds = %if.then55
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.28, i32 noundef 127) #10, !dbg !6294
  br label %err, !dbg !6296

if.end60:                                         ; preds = %if.then55
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.29) #10, !dbg !6297
  br label %if.end61, !dbg !6298

if.end61:                                         ; preds = %if.end60, %if.end51
  %call62 = call i32 @dbgp_control_msg(i32 noundef 127, i32 noundef 0, i32 noundef 3, i32 noundef 6, i32 noundef 0, ptr noundef null, i32 noundef 0) #10, !dbg !6299
  store i32 %call62, ptr %ret, align 4, !dbg !6300
  %50 = load i32, ptr %ret, align 4, !dbg !6301
  %cmp63 = icmp slt i32 %50, 0, !dbg !6303
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !6304

if.then65:                                        ; preds = %if.end61
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.30) #10, !dbg !6305
  br label %err, !dbg !6307

if.end66:                                         ; preds = %if.end61
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.31) #10, !dbg !6308
  %51 = load i32, ptr @dbgp_endpoint_out, align 4, !dbg !6309
  %call67 = call i32 @dbgp_bulk_write(i32 noundef 127, i32 noundef %51, ptr noundef @.str.32, i32 noundef 1) #10, !dbg !6310
  store i32 %call67, ptr %ret, align 4, !dbg !6311
  %52 = load i32, ptr %ret, align 4, !dbg !6312
  %cmp68 = icmp slt i32 %52, 0, !dbg !6314
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !6315

if.then70:                                        ; preds = %if.end66
  %53 = load i32, ptr %ret, align 4, !dbg !6316
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.33, i32 noundef %53) #10, !dbg !6318
  br label %err, !dbg !6319

if.end71:                                         ; preds = %if.end66
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.34) #10, !dbg !6320
  store i32 0, ptr @dbgp_not_safe, align 4, !dbg !6321
  store i32 0, ptr %retval, align 4, !dbg !6322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6322

err:                                              ; preds = %if.then70, %if.then65, %if.then59, %if.then50
  call void @llvm.dbg.label(metadata !6119), !dbg !6323
  %54 = load i32, ptr %tries, align 4, !dbg !6324
  %dec72 = add i32 %54, -1, !dbg !6324
  store i32 %dec72, ptr %tries, align 4, !dbg !6324
  %tobool73 = icmp ne i32 %54, 0, !dbg !6324
  br i1 %tobool73, label %if.then74, label %if.end75, !dbg !6326

if.then74:                                        ; preds = %err
  br label %try_again, !dbg !6327

if.end75:                                         ; preds = %err
  store i32 -19, ptr %retval, align 4, !dbg !6328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6328

cleanup:                                          ; preds = %if.end75, %if.end71, %if.then32, %if.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %try_hard_once) #9, !dbg !6329
  call void @llvm.lifetime.end.p0(i64 4, ptr %reset_port_tries) #9, !dbg !6329
  call void @llvm.lifetime.end.p0(i64 4, ptr %tries) #9, !dbg !6329
  call void @llvm.lifetime.end.p0(i64 4, ptr %dbg_port) #9, !dbg !6329
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd) #9, !dbg !6329
  call void @llvm.lifetime.end.p0(i64 4, ptr %portsc) #9, !dbg !6329
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl) #9, !dbg !6329
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6329
  call void @llvm.lifetime.end.p0(i64 4, ptr %dbgp_desc) #9, !dbg !6329
  call void @llvm.lifetime.end.p0(i64 4, ptr %devnum) #9, !dbg !6329
  %55 = load i32, ptr %retval, align 4, !dbg !6329
  ret i32 %55, !dbg !6329
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @__find_dbgp(i32 noundef %bus, i32 noundef %slot, i32 noundef %func) #0 section ".init.text" align 16 !dbg !6330 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %class = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6334, metadata !DIExpression()), !dbg !6338
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !6335, metadata !DIExpression()), !dbg !6339
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !6336, metadata !DIExpression()), !dbg !6340
  call void @llvm.lifetime.start.p0(i64 4, ptr %class) #9, !dbg !6341
  call void @llvm.dbg.declare(metadata ptr %class, metadata !6337, metadata !DIExpression()), !dbg !6342
  %0 = load i32, ptr %bus.addr, align 4, !dbg !6343
  %conv = trunc i32 %0 to i8, !dbg !6343
  %1 = load i32, ptr %slot.addr, align 4, !dbg !6344
  %conv1 = trunc i32 %1 to i8, !dbg !6344
  %2 = load i32, ptr %func.addr, align 4, !dbg !6345
  %conv2 = trunc i32 %2 to i8, !dbg !6345
  %call = call i32 @read_pci_config(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 8) #10, !dbg !6346
  store i32 %call, ptr %class, align 4, !dbg !6347
  %3 = load i32, ptr %class, align 4, !dbg !6348
  %shr = lshr i32 %3, 8, !dbg !6350
  %cmp = icmp ne i32 %shr, 787232, !dbg !6351
  br i1 %cmp, label %if.then, label %if.end, !dbg !6352

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6353

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %bus.addr, align 4, !dbg !6354
  %5 = load i32, ptr %slot.addr, align 4, !dbg !6355
  %6 = load i32, ptr %func.addr, align 4, !dbg !6356
  %call4 = call i32 @find_cap(i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef 10) #11, !dbg !6357
  store i32 %call4, ptr %retval, align 4, !dbg !6358
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6358

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %class) #9, !dbg !6359
  %7 = load i32, ptr %retval, align 4, !dbg !6359
  ret i32 %7, !dbg !6359
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @find_cap(i32 noundef %num, i32 noundef %slot, i32 noundef %func, i32 noundef %cap) #0 section ".init.text" align 16 !dbg !6360 {
entry:
  %retval = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %slot.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %cap.addr = alloca i32, align 4
  %pos = alloca i8, align 1
  %bytes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %id = alloca i8, align 1
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !6364, metadata !DIExpression()), !dbg !6374
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !6365, metadata !DIExpression()), !dbg !6375
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !6366, metadata !DIExpression()), !dbg !6376
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !6367, metadata !DIExpression()), !dbg !6377
  call void @llvm.lifetime.start.p0(i64 1, ptr %pos) #9, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6368, metadata !DIExpression()), !dbg !6379
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes) #9, !dbg !6380
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6369, metadata !DIExpression()), !dbg !6381
  %0 = load i32, ptr %num.addr, align 4, !dbg !6382
  %conv = trunc i32 %0 to i8, !dbg !6382
  %1 = load i32, ptr %slot.addr, align 4, !dbg !6384
  %conv1 = trunc i32 %1 to i8, !dbg !6384
  %2 = load i32, ptr %func.addr, align 4, !dbg !6385
  %conv2 = trunc i32 %2 to i8, !dbg !6385
  %call = call zeroext i16 @read_pci_config_16(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 6) #10, !dbg !6386
  %conv3 = zext i16 %call to i32, !dbg !6386
  %and = and i32 %conv3, 16, !dbg !6387
  %tobool = icmp ne i32 %and, 0, !dbg !6387
  br i1 %tobool, label %if.end, label %if.then, !dbg !6388

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !6389

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %num.addr, align 4, !dbg !6390
  %conv4 = trunc i32 %3 to i8, !dbg !6390
  %4 = load i32, ptr %slot.addr, align 4, !dbg !6391
  %conv5 = trunc i32 %4 to i8, !dbg !6391
  %5 = load i32, ptr %func.addr, align 4, !dbg !6392
  %conv6 = trunc i32 %5 to i8, !dbg !6392
  %call7 = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext %conv4, i8 noundef zeroext %conv5, i8 noundef zeroext %conv6, i8 noundef zeroext 52) #10, !dbg !6393
  store i8 %call7, ptr %pos, align 1, !dbg !6394
  store i32 0, ptr %bytes, align 4, !dbg !6395
  br label %for.cond, !dbg !6396

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %bytes, align 4, !dbg !6397
  %cmp = icmp slt i32 %6, 48, !dbg !6398
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6399

land.rhs:                                         ; preds = %for.cond
  %7 = load i8, ptr %pos, align 1, !dbg !6400
  %conv9 = zext i8 %7 to i32, !dbg !6400
  %cmp10 = icmp sge i32 %conv9, 64, !dbg !6401
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp10, %land.rhs ], !dbg !6402
  br i1 %8, label %for.body, label %for.end, !dbg !6403

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %id) #9, !dbg !6404
  call void @llvm.dbg.declare(metadata ptr %id, metadata !6370, metadata !DIExpression()), !dbg !6405
  %9 = load i8, ptr %pos, align 1, !dbg !6406
  %conv12 = zext i8 %9 to i32, !dbg !6406
  %and13 = and i32 %conv12, -4, !dbg !6406
  %conv14 = trunc i32 %and13 to i8, !dbg !6406
  store i8 %conv14, ptr %pos, align 1, !dbg !6406
  %10 = load i32, ptr %num.addr, align 4, !dbg !6407
  %conv15 = trunc i32 %10 to i8, !dbg !6407
  %11 = load i32, ptr %slot.addr, align 4, !dbg !6408
  %conv16 = trunc i32 %11 to i8, !dbg !6408
  %12 = load i32, ptr %func.addr, align 4, !dbg !6409
  %conv17 = trunc i32 %12 to i8, !dbg !6409
  %13 = load i8, ptr %pos, align 1, !dbg !6410
  %conv18 = zext i8 %13 to i32, !dbg !6410
  %add = add i32 %conv18, 0, !dbg !6411
  %conv19 = trunc i32 %add to i8, !dbg !6410
  %call20 = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext %conv15, i8 noundef zeroext %conv16, i8 noundef zeroext %conv17, i8 noundef zeroext %conv19) #10, !dbg !6412
  store i8 %call20, ptr %id, align 1, !dbg !6413
  %14 = load i8, ptr %id, align 1, !dbg !6414
  %conv21 = zext i8 %14 to i32, !dbg !6414
  %cmp22 = icmp eq i32 %conv21, 255, !dbg !6416
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !6417

if.then24:                                        ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6418

if.end25:                                         ; preds = %for.body
  %15 = load i8, ptr %id, align 1, !dbg !6419
  %conv26 = zext i8 %15 to i32, !dbg !6419
  %16 = load i32, ptr %cap.addr, align 4, !dbg !6421
  %cmp27 = icmp eq i32 %conv26, %16, !dbg !6422
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !6423

if.then29:                                        ; preds = %if.end25
  %17 = load i8, ptr %pos, align 1, !dbg !6424
  %conv30 = zext i8 %17 to i32, !dbg !6424
  store i32 %conv30, ptr %retval, align 4, !dbg !6425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6425

if.end31:                                         ; preds = %if.end25
  %18 = load i32, ptr %num.addr, align 4, !dbg !6426
  %conv32 = trunc i32 %18 to i8, !dbg !6426
  %19 = load i32, ptr %slot.addr, align 4, !dbg !6427
  %conv33 = trunc i32 %19 to i8, !dbg !6427
  %20 = load i32, ptr %func.addr, align 4, !dbg !6428
  %conv34 = trunc i32 %20 to i8, !dbg !6428
  %21 = load i8, ptr %pos, align 1, !dbg !6429
  %conv35 = zext i8 %21 to i32, !dbg !6429
  %add36 = add i32 %conv35, 1, !dbg !6430
  %conv37 = trunc i32 %add36 to i8, !dbg !6429
  %call38 = call zeroext i8 @read_pci_config_byte(i8 noundef zeroext %conv32, i8 noundef zeroext %conv33, i8 noundef zeroext %conv34, i8 noundef zeroext %conv37) #10, !dbg !6431
  store i8 %call38, ptr %pos, align 1, !dbg !6432
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6433
  br label %cleanup, !dbg !6433

cleanup:                                          ; preds = %if.end31, %if.then29, %if.then24
  call void @llvm.lifetime.end.p0(i64 1, ptr %id) #9, !dbg !6433
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup39 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6434

for.inc:                                          ; preds = %cleanup.cont
  %22 = load i32, ptr %bytes, align 4, !dbg !6435
  %inc = add i32 %22, 1, !dbg !6435
  store i32 %inc, ptr %bytes, align 4, !dbg !6435
  br label %for.cond, !dbg !6436, !llvm.loop !6437

for.end:                                          ; preds = %cleanup, %land.end
  store i32 0, ptr %retval, align 4, !dbg !6439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !6439

cleanup39:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes) #9, !dbg !6440
  call void @llvm.lifetime.end.p0(i64 1, ptr %pos) #9, !dbg !6440
  %23 = load i32, ptr %retval, align 4, !dbg !6440
  ret i32 %23, !dbg !6440
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6441 dso_local zeroext i16 @read_pci_config_16(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6444 dso_local void @native_set_fixmap(i32 noundef, i64 noundef, i64) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @nvidia_set_debug_port(i32 noundef %port) #0 section ".init.text" align 16 !dbg !6447 {
entry:
  %port.addr = alloca i32, align 4
  %dword = alloca i32, align 4
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6449, metadata !DIExpression()), !dbg !6451
  call void @llvm.lifetime.start.p0(i64 4, ptr %dword) #9, !dbg !6452
  call void @llvm.dbg.declare(metadata ptr %dword, metadata !6450, metadata !DIExpression()), !dbg !6453
  %0 = load i32, ptr @ehci_dev, align 4, !dbg !6454
  %conv = trunc i32 %0 to i8, !dbg !6455
  %1 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 1), align 4, !dbg !6456
  %conv1 = trunc i32 %1 to i8, !dbg !6457
  %2 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 2), align 4, !dbg !6458
  %conv2 = trunc i32 %2 to i8, !dbg !6459
  %call = call i32 @read_pci_config(i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, i8 noundef zeroext 116) #10, !dbg !6460
  store i32 %call, ptr %dword, align 4, !dbg !6461
  %3 = load i32, ptr %dword, align 4, !dbg !6462
  %and = and i32 %3, -61441, !dbg !6462
  store i32 %and, ptr %dword, align 4, !dbg !6462
  %4 = load i32, ptr %port.addr, align 4, !dbg !6463
  %and3 = and i32 %4, 15, !dbg !6464
  %shl = shl i32 %and3, 12, !dbg !6465
  %5 = load i32, ptr %dword, align 4, !dbg !6466
  %or = or i32 %5, %shl, !dbg !6466
  store i32 %or, ptr %dword, align 4, !dbg !6466
  %6 = load i32, ptr @ehci_dev, align 4, !dbg !6467
  %conv4 = trunc i32 %6 to i8, !dbg !6468
  %7 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 1), align 4, !dbg !6469
  %conv5 = trunc i32 %7 to i8, !dbg !6470
  %8 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 2), align 4, !dbg !6471
  %conv6 = trunc i32 %8 to i8, !dbg !6472
  %9 = load i32, ptr %dword, align 4, !dbg !6473
  call void @write_pci_config(i8 noundef zeroext %conv4, i8 noundef zeroext %conv5, i8 noundef zeroext %conv6, i8 noundef zeroext 116, i32 noundef %9) #10, !dbg !6474
  %10 = load i32, ptr %port.addr, align 4, !dbg !6475
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.11, i32 noundef %10) #10, !dbg !6476
  call void @llvm.lifetime.end.p0(i64 4, ptr %dword) #9, !dbg !6477
  ret void, !dbg !6477
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6478 dso_local void @write_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @default_set_debug_port(i32 noundef %port) #0 section ".init.text" align 16 !dbg !6481 {
entry:
  %port.addr = alloca i32, align 4
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6483, metadata !DIExpression()), !dbg !6484
  ret void, !dbg !6485
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @early_ehci_bios_handoff() #0 section ".init.text" align 16 !dbg !6486 {
entry:
  %hcc_params = alloca i32, align 4
  %offset = alloca i32, align 4
  %cap = alloca i32, align 4
  %msec = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ms = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %hcc_params) #9, !dbg !6495
  call void @llvm.dbg.declare(metadata ptr %hcc_params, metadata !6488, metadata !DIExpression()), !dbg !6496
  %0 = load ptr, ptr @ehci_caps, align 8, !dbg !6497
  %hcc_params1 = getelementptr inbounds %struct.ehci_caps, ptr %0, i32 0, i32 2, !dbg !6498
  %call = call i32 @readl(ptr noundef %hcc_params1) #10, !dbg !6499
  store i32 %call, ptr %hcc_params, align 4, !dbg !6496
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #9, !dbg !6500
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6489, metadata !DIExpression()), !dbg !6501
  %1 = load i32, ptr %hcc_params, align 4, !dbg !6502
  %shr = lshr i32 %1, 8, !dbg !6503
  %and = and i32 %shr, 255, !dbg !6504
  store i32 %and, ptr %offset, align 4, !dbg !6501
  call void @llvm.lifetime.start.p0(i64 4, ptr %cap) #9, !dbg !6505
  call void @llvm.dbg.declare(metadata ptr %cap, metadata !6490, metadata !DIExpression()), !dbg !6506
  call void @llvm.lifetime.start.p0(i64 4, ptr %msec) #9, !dbg !6507
  call void @llvm.dbg.declare(metadata ptr %msec, metadata !6491, metadata !DIExpression()), !dbg !6508
  %2 = load i32, ptr %offset, align 4, !dbg !6509
  %tobool = icmp ne i32 %2, 0, !dbg !6509
  br i1 %tobool, label %if.end, label %if.then, !dbg !6511

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6512

if.end:                                           ; preds = %entry
  %3 = load i32, ptr @ehci_dev, align 4, !dbg !6513
  %conv = trunc i32 %3 to i8, !dbg !6514
  %4 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 1), align 4, !dbg !6515
  %conv2 = trunc i32 %4 to i8, !dbg !6516
  %5 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 2), align 4, !dbg !6517
  %conv3 = trunc i32 %5 to i8, !dbg !6518
  %6 = load i32, ptr %offset, align 4, !dbg !6519
  %conv4 = trunc i32 %6 to i8, !dbg !6519
  %call5 = call i32 @read_pci_config(i8 noundef zeroext %conv, i8 noundef zeroext %conv2, i8 noundef zeroext %conv3, i8 noundef zeroext %conv4) #10, !dbg !6520
  store i32 %call5, ptr %cap, align 4, !dbg !6521
  %7 = load i32, ptr %cap, align 4, !dbg !6522
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.17, i32 noundef %7) #10, !dbg !6523
  %8 = load i32, ptr %cap, align 4, !dbg !6524
  %and6 = and i32 %8, 255, !dbg !6526
  %cmp = icmp eq i32 %and6, 1, !dbg !6527
  br i1 %cmp, label %land.lhs.true, label %if.end15, !dbg !6528

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, ptr %cap, align 4, !dbg !6529
  %and8 = and i32 %9, 65536, !dbg !6530
  %tobool9 = icmp ne i32 %and8, 0, !dbg !6530
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !6531

if.then10:                                        ; preds = %land.lhs.true
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.18) #10, !dbg !6532
  %10 = load i32, ptr @ehci_dev, align 4, !dbg !6534
  %conv11 = trunc i32 %10 to i8, !dbg !6535
  %11 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 1), align 4, !dbg !6536
  %conv12 = trunc i32 %11 to i8, !dbg !6537
  %12 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 2), align 4, !dbg !6538
  %conv13 = trunc i32 %12 to i8, !dbg !6539
  %13 = load i32, ptr %offset, align 4, !dbg !6540
  %add = add i32 %13, 3, !dbg !6541
  %conv14 = trunc i32 %add to i8, !dbg !6540
  call void @write_pci_config_byte(i8 noundef zeroext %conv11, i8 noundef zeroext %conv12, i8 noundef zeroext %conv13, i8 noundef zeroext %conv14, i8 noundef zeroext 1) #10, !dbg !6542
  br label %if.end15, !dbg !6543

if.end15:                                         ; preds = %if.then10, %land.lhs.true, %if.end
  store i32 1000, ptr %msec, align 4, !dbg !6544
  br label %while.cond, !dbg !6545

while.cond:                                       ; preds = %while.end, %if.end15
  %14 = load i32, ptr %cap, align 4, !dbg !6546
  %and16 = and i32 %14, 65536, !dbg !6547
  %tobool17 = icmp ne i32 %and16, 0, !dbg !6547
  br i1 %tobool17, label %land.rhs, label %land.end, !dbg !6548

land.rhs:                                         ; preds = %while.cond
  %15 = load i32, ptr %msec, align 4, !dbg !6549
  %cmp18 = icmp sgt i32 %15, 0, !dbg !6550
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ], !dbg !6551
  br i1 %16, label %while.body, label %while.end28, !dbg !6545

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ms) #9, !dbg !6552
  call void @llvm.dbg.declare(metadata ptr %__ms, metadata !6492, metadata !DIExpression()), !dbg !6552
  store i64 10, ptr %__ms, align 8, !dbg !6552
  br label %while.cond20, !dbg !6552

while.cond20:                                     ; preds = %while.body22, %while.body
  %17 = load i64, ptr %__ms, align 8, !dbg !6552
  %dec = add i64 %17, -1, !dbg !6552
  store i64 %dec, ptr %__ms, align 8, !dbg !6552
  %tobool21 = icmp ne i64 %17, 0, !dbg !6552
  br i1 %tobool21, label %while.body22, label %while.end, !dbg !6552

while.body22:                                     ; preds = %while.cond20
  call void @__const_udelay(i64 noundef 4295000) #10, !dbg !6553
  br label %while.cond20, !dbg !6552, !llvm.loop !6558

while.end:                                        ; preds = %while.cond20
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ms) #9, !dbg !6559
  %18 = load i32, ptr %msec, align 4, !dbg !6560
  %sub = sub i32 %18, 10, !dbg !6560
  store i32 %sub, ptr %msec, align 4, !dbg !6560
  %19 = load i32, ptr @ehci_dev, align 4, !dbg !6561
  %conv23 = trunc i32 %19 to i8, !dbg !6562
  %20 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 1), align 4, !dbg !6563
  %conv24 = trunc i32 %20 to i8, !dbg !6564
  %21 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 2), align 4, !dbg !6565
  %conv25 = trunc i32 %21 to i8, !dbg !6566
  %22 = load i32, ptr %offset, align 4, !dbg !6567
  %conv26 = trunc i32 %22 to i8, !dbg !6567
  %call27 = call i32 @read_pci_config(i8 noundef zeroext %conv23, i8 noundef zeroext %conv24, i8 noundef zeroext %conv25, i8 noundef zeroext %conv26) #10, !dbg !6568
  store i32 %call27, ptr %cap, align 4, !dbg !6569
  br label %while.cond, !dbg !6545, !llvm.loop !6570

while.end28:                                      ; preds = %land.end
  %23 = load i32, ptr %cap, align 4, !dbg !6572
  %and29 = and i32 %23, 65536, !dbg !6574
  %tobool30 = icmp ne i32 %and29, 0, !dbg !6574
  br i1 %tobool30, label %if.then31, label %if.end37, !dbg !6575

if.then31:                                        ; preds = %while.end28
  %24 = load i32, ptr %cap, align 4, !dbg !6576
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.19, i32 noundef %24) #10, !dbg !6578
  %25 = load i32, ptr @ehci_dev, align 4, !dbg !6579
  %conv32 = trunc i32 %25 to i8, !dbg !6580
  %26 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 1), align 4, !dbg !6581
  %conv33 = trunc i32 %26 to i8, !dbg !6582
  %27 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 2), align 4, !dbg !6583
  %conv34 = trunc i32 %27 to i8, !dbg !6584
  %28 = load i32, ptr %offset, align 4, !dbg !6585
  %add35 = add i32 %28, 2, !dbg !6586
  %conv36 = trunc i32 %add35 to i8, !dbg !6585
  call void @write_pci_config_byte(i8 noundef zeroext %conv32, i8 noundef zeroext %conv33, i8 noundef zeroext %conv34, i8 noundef zeroext %conv36, i8 noundef zeroext 0) #10, !dbg !6587
  br label %if.end37, !dbg !6588

if.end37:                                         ; preds = %if.then31, %while.end28
  %29 = load i32, ptr @ehci_dev, align 4, !dbg !6589
  %conv38 = trunc i32 %29 to i8, !dbg !6590
  %30 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 1), align 4, !dbg !6591
  %conv39 = trunc i32 %30 to i8, !dbg !6592
  %31 = load i32, ptr getelementptr inbounds (%struct.ehci_dev, ptr @ehci_dev, i32 0, i32 2), align 4, !dbg !6593
  %conv40 = trunc i32 %31 to i8, !dbg !6594
  %32 = load i32, ptr %offset, align 4, !dbg !6595
  %add41 = add i32 %32, 4, !dbg !6596
  %conv42 = trunc i32 %add41 to i8, !dbg !6595
  call void @write_pci_config_byte(i8 noundef zeroext %conv38, i8 noundef zeroext %conv39, i8 noundef zeroext %conv40, i8 noundef zeroext %conv42, i8 noundef zeroext 0) #10, !dbg !6597
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6598
  br label %cleanup, !dbg !6598

cleanup:                                          ; preds = %if.end37, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %msec) #9, !dbg !6598
  call void @llvm.lifetime.end.p0(i64 4, ptr %cap) #9, !dbg !6598
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #9, !dbg !6598
  call void @llvm.lifetime.end.p0(i64 4, ptr %hcc_params) #9, !dbg !6598
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6598

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dbgp_ehci_controller_reset() #5 align 16 !dbg !6599 {
entry:
  %retval = alloca i32, align 4
  %loop = alloca i32, align 4
  %cmd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %loop) #9, !dbg !6603
  call void @llvm.dbg.declare(metadata ptr %loop, metadata !6601, metadata !DIExpression()), !dbg !6604
  store i32 250000, ptr %loop, align 4, !dbg !6604
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd) #9, !dbg !6605
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !6602, metadata !DIExpression()), !dbg !6606
  %0 = load ptr, ptr @ehci_regs, align 8, !dbg !6607
  %command = getelementptr inbounds %struct.ehci_regs, ptr %0, i32 0, i32 0, !dbg !6608
  %call = call i32 @readl(ptr noundef %command) #10, !dbg !6609
  store i32 %call, ptr %cmd, align 4, !dbg !6610
  %1 = load i32, ptr %cmd, align 4, !dbg !6611
  %or = or i32 %1, 2, !dbg !6611
  store i32 %or, ptr %cmd, align 4, !dbg !6611
  %2 = load i32, ptr %cmd, align 4, !dbg !6612
  %3 = load ptr, ptr @ehci_regs, align 8, !dbg !6613
  %command1 = getelementptr inbounds %struct.ehci_regs, ptr %3, i32 0, i32 0, !dbg !6614
  call void @writel(i32 noundef %2, ptr noundef %command1) #10, !dbg !6615
  br label %do.body, !dbg !6616

do.body:                                          ; preds = %land.end, %entry
  %4 = load ptr, ptr @ehci_regs, align 8, !dbg !6617
  %command2 = getelementptr inbounds %struct.ehci_regs, ptr %4, i32 0, i32 0, !dbg !6619
  %call3 = call i32 @readl(ptr noundef %command2) #10, !dbg !6620
  store i32 %call3, ptr %cmd, align 4, !dbg !6621
  br label %do.cond, !dbg !6622

do.cond:                                          ; preds = %do.body
  %5 = load i32, ptr %cmd, align 4, !dbg !6623
  %and = and i32 %5, 2, !dbg !6624
  %tobool = icmp ne i32 %and, 0, !dbg !6624
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6625

land.rhs:                                         ; preds = %do.cond
  %6 = load i32, ptr %loop, align 4, !dbg !6626
  %dec = add i32 %6, -1, !dbg !6626
  store i32 %dec, ptr %loop, align 4, !dbg !6626
  %cmp = icmp sgt i32 %dec, 0, !dbg !6627
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %7 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ], !dbg !6628
  br i1 %7, label %do.body, label %do.end, !dbg !6622, !llvm.loop !6629

do.end:                                           ; preds = %land.end
  %8 = load i32, ptr %loop, align 4, !dbg !6631
  %tobool4 = icmp ne i32 %8, 0, !dbg !6631
  br i1 %tobool4, label %if.end, label %if.then, !dbg !6633

if.then:                                          ; preds = %do.end
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.20) #10, !dbg !6634
  store i32 -1, ptr %retval, align 4, !dbg !6636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6636

if.end:                                           ; preds = %do.end
  call void @dbgp_ehci_status(ptr noundef @.str.21) #10, !dbg !6637
  store i32 0, ptr %retval, align 4, !dbg !6638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6638

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd) #9, !dbg !6639
  call void @llvm.lifetime.end.p0(i64 4, ptr %loop) #9, !dbg !6639
  %9 = load i32, ptr %retval, align 4, !dbg !6639
  ret i32 %9, !dbg !6639
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6640 dso_local void @__const_udelay(i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dbgp_bulk_write(i32 noundef %devnum, i32 noundef %endpoint, ptr noundef %bytes, i32 noundef %size) #5 align 16 !dbg !6644 {
entry:
  %retval = alloca i32, align 4
  %devnum.addr = alloca i32, align 4
  %endpoint.addr = alloca i32, align 4
  %bytes.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %addr = alloca i32, align 4
  %pids = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %devnum, ptr %devnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devnum.addr, metadata !6648, metadata !DIExpression()), !dbg !6656
  store i32 %endpoint, ptr %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %endpoint.addr, metadata !6649, metadata !DIExpression()), !dbg !6657
  store ptr %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6650, metadata !DIExpression()), !dbg !6658
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6651, metadata !DIExpression()), !dbg !6659
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6660
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6652, metadata !DIExpression()), !dbg !6661
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr) #9, !dbg !6662
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !6653, metadata !DIExpression()), !dbg !6663
  call void @llvm.lifetime.start.p0(i64 4, ptr %pids) #9, !dbg !6664
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !6654, metadata !DIExpression()), !dbg !6665
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl) #9, !dbg !6664
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !6655, metadata !DIExpression()), !dbg !6666
  %0 = load i32, ptr %size.addr, align 4, !dbg !6667
  %cmp = icmp sgt i32 %0, 8, !dbg !6669
  br i1 %cmp, label %if.then, label %if.end, !dbg !6670

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !6671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6671

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %devnum.addr, align 4, !dbg !6672
  %shl = shl i32 %1, 8, !dbg !6672
  %2 = load i32, ptr %endpoint.addr, align 4, !dbg !6672
  %or = or i32 %shl, %2, !dbg !6672
  store i32 %or, ptr %addr, align 4, !dbg !6673
  %3 = load ptr, ptr @ehci_debug, align 8, !dbg !6674
  %pids1 = getelementptr inbounds %struct.ehci_dbg_port, ptr %3, i32 0, i32 1, !dbg !6675
  %call = call i32 @readl(ptr noundef %pids1) #10, !dbg !6676
  store i32 %call, ptr %pids, align 4, !dbg !6677
  %4 = load i32, ptr %pids, align 4, !dbg !6678
  %call2 = call i32 @dbgp_pid_write_update(i32 noundef %4, i32 noundef 225) #10, !dbg !6679
  store i32 %call2, ptr %pids, align 4, !dbg !6680
  %5 = load ptr, ptr @ehci_debug, align 8, !dbg !6681
  %control = getelementptr inbounds %struct.ehci_dbg_port, ptr %5, i32 0, i32 0, !dbg !6682
  %call3 = call i32 @readl(ptr noundef %control) #10, !dbg !6683
  store i32 %call3, ptr %ctrl, align 4, !dbg !6684
  %6 = load i32, ptr %ctrl, align 4, !dbg !6685
  %7 = load i32, ptr %size.addr, align 4, !dbg !6686
  %call4 = call i32 @dbgp_len_update(i32 noundef %6, i32 noundef %7) #10, !dbg !6687
  store i32 %call4, ptr %ctrl, align 4, !dbg !6688
  %8 = load i32, ptr %ctrl, align 4, !dbg !6689
  %or5 = or i32 %8, 16, !dbg !6689
  store i32 %or5, ptr %ctrl, align 4, !dbg !6689
  %9 = load i32, ptr %ctrl, align 4, !dbg !6690
  %or6 = or i32 %9, 32, !dbg !6690
  store i32 %or6, ptr %ctrl, align 4, !dbg !6690
  %10 = load ptr, ptr %bytes.addr, align 8, !dbg !6691
  %11 = load i32, ptr %size.addr, align 4, !dbg !6692
  call void @dbgp_set_data(ptr noundef %10, i32 noundef %11) #10, !dbg !6693
  %12 = load i32, ptr %addr, align 4, !dbg !6694
  %13 = load ptr, ptr @ehci_debug, align 8, !dbg !6695
  %address = getelementptr inbounds %struct.ehci_dbg_port, ptr %13, i32 0, i32 4, !dbg !6696
  call void @writel(i32 noundef %12, ptr noundef %address) #10, !dbg !6697
  %14 = load i32, ptr %pids, align 4, !dbg !6698
  %15 = load ptr, ptr @ehci_debug, align 8, !dbg !6699
  %pids7 = getelementptr inbounds %struct.ehci_dbg_port, ptr %15, i32 0, i32 1, !dbg !6700
  call void @writel(i32 noundef %14, ptr noundef %pids7) #10, !dbg !6701
  %16 = load i32, ptr %ctrl, align 4, !dbg !6702
  %call8 = call i32 @dbgp_wait_until_done(i32 noundef %16, i32 noundef 1000) #10, !dbg !6703
  store i32 %call8, ptr %ret, align 4, !dbg !6704
  %17 = load i32, ptr %ret, align 4, !dbg !6705
  store i32 %17, ptr %retval, align 4, !dbg !6706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6706

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl) #9, !dbg !6707
  call void @llvm.lifetime.end.p0(i64 4, ptr %pids) #9, !dbg !6707
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr) #9, !dbg !6707
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6707
  %18 = load i32, ptr %retval, align 4, !dbg !6707
  ret i32 %18, !dbg !6707
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dbgp_pid_write_update(i32 noundef %x, i32 noundef %tok) #4 align 16 !dbg !5298 {
entry:
  %x.addr = alloca i32, align 4
  %tok.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5302, metadata !DIExpression()), !dbg !6708
  store i32 %tok, ptr %tok.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tok.addr, metadata !5303, metadata !DIExpression()), !dbg !6709
  %0 = load i32, ptr @dbgp_pid_write_update.data0, align 4, !dbg !6710
  %xor = xor i32 %0, 136, !dbg !6710
  store i32 %xor, ptr @dbgp_pid_write_update.data0, align 4, !dbg !6710
  %1 = load i32, ptr %x.addr, align 4, !dbg !6711
  %and = and i32 %1, -65536, !dbg !6712
  %2 = load i32, ptr @dbgp_pid_write_update.data0, align 4, !dbg !6713
  %shl = shl i32 %2, 8, !dbg !6714
  %or = or i32 %and, %shl, !dbg !6715
  %3 = load i32, ptr %tok.addr, align 4, !dbg !6716
  %and1 = and i32 %3, 255, !dbg !6717
  %or2 = or i32 %or, %and1, !dbg !6718
  ret i32 %or2, !dbg !6719
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dbgp_len_update(i32 noundef %x, i32 noundef %len) #4 align 16 !dbg !6720 {
entry:
  %x.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6722, metadata !DIExpression()), !dbg !6724
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6723, metadata !DIExpression()), !dbg !6725
  %0 = load i32, ptr %x.addr, align 4, !dbg !6726
  %and = and i32 %0, -16, !dbg !6727
  %1 = load i32, ptr %len.addr, align 4, !dbg !6728
  %and1 = and i32 %1, 15, !dbg !6729
  %or = or i32 %and, %and1, !dbg !6730
  ret i32 %or, !dbg !6731
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dbgp_set_data(ptr noundef %buf, i32 noundef %size) #4 align 16 !dbg !6732 {
entry:
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %bytes = alloca ptr, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6736, metadata !DIExpression()), !dbg !6742
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6737, metadata !DIExpression()), !dbg !6743
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #9, !dbg !6744
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6738, metadata !DIExpression()), !dbg !6745
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6746
  store ptr %0, ptr %bytes, align 8, !dbg !6745
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #9, !dbg !6747
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !6739, metadata !DIExpression()), !dbg !6748
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #9, !dbg !6747
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !6740, metadata !DIExpression()), !dbg !6749
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !6750
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6741, metadata !DIExpression()), !dbg !6751
  store i32 0, ptr %hi, align 4, !dbg !6752
  store i32 0, ptr %lo, align 4, !dbg !6753
  store i32 0, ptr %i, align 4, !dbg !6754
  br label %for.cond, !dbg !6756

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !6757
  %cmp = icmp slt i32 %1, 4, !dbg !6759
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6760

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !6761
  %3 = load i32, ptr %size.addr, align 4, !dbg !6762
  %cmp1 = icmp slt i32 %2, %3, !dbg !6763
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ], !dbg !6764
  br i1 %4, label %for.body, label %for.end, !dbg !6765

for.body:                                         ; preds = %land.end
  %5 = load ptr, ptr %bytes, align 8, !dbg !6766
  %6 = load i32, ptr %i, align 4, !dbg !6767
  %idxprom = sext i32 %6 to i64, !dbg !6766
  %arrayidx = getelementptr i8, ptr %5, i64 %idxprom, !dbg !6766
  %7 = load i8, ptr %arrayidx, align 1, !dbg !6766
  %conv = zext i8 %7 to i32, !dbg !6766
  %8 = load i32, ptr %i, align 4, !dbg !6768
  %mul = mul i32 8, %8, !dbg !6769
  %shl = shl i32 %conv, %mul, !dbg !6770
  %9 = load i32, ptr %lo, align 4, !dbg !6771
  %or = or i32 %9, %shl, !dbg !6771
  store i32 %or, ptr %lo, align 4, !dbg !6771
  br label %for.inc, !dbg !6772

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !6773
  %inc = add i32 %10, 1, !dbg !6773
  store i32 %inc, ptr %i, align 4, !dbg !6773
  br label %for.cond, !dbg !6774, !llvm.loop !6775

for.end:                                          ; preds = %land.end
  br label %for.cond2, !dbg !6777

for.cond2:                                        ; preds = %for.inc16, %for.end
  %11 = load i32, ptr %i, align 4, !dbg !6778
  %cmp3 = icmp slt i32 %11, 8, !dbg !6781
  br i1 %cmp3, label %land.rhs5, label %land.end8, !dbg !6782

land.rhs5:                                        ; preds = %for.cond2
  %12 = load i32, ptr %i, align 4, !dbg !6783
  %13 = load i32, ptr %size.addr, align 4, !dbg !6784
  %cmp6 = icmp slt i32 %12, %13, !dbg !6785
  br label %land.end8

land.end8:                                        ; preds = %land.rhs5, %for.cond2
  %14 = phi i1 [ false, %for.cond2 ], [ %cmp6, %land.rhs5 ], !dbg !6786
  br i1 %14, label %for.body9, label %for.end18, !dbg !6787

for.body9:                                        ; preds = %land.end8
  %15 = load ptr, ptr %bytes, align 8, !dbg !6788
  %16 = load i32, ptr %i, align 4, !dbg !6789
  %idxprom10 = sext i32 %16 to i64, !dbg !6788
  %arrayidx11 = getelementptr i8, ptr %15, i64 %idxprom10, !dbg !6788
  %17 = load i8, ptr %arrayidx11, align 1, !dbg !6788
  %conv12 = zext i8 %17 to i32, !dbg !6788
  %18 = load i32, ptr %i, align 4, !dbg !6790
  %sub = sub i32 %18, 4, !dbg !6791
  %mul13 = mul i32 8, %sub, !dbg !6792
  %shl14 = shl i32 %conv12, %mul13, !dbg !6793
  %19 = load i32, ptr %hi, align 4, !dbg !6794
  %or15 = or i32 %19, %shl14, !dbg !6794
  store i32 %or15, ptr %hi, align 4, !dbg !6794
  br label %for.inc16, !dbg !6795

for.inc16:                                        ; preds = %for.body9
  %20 = load i32, ptr %i, align 4, !dbg !6796
  %inc17 = add i32 %20, 1, !dbg !6796
  store i32 %inc17, ptr %i, align 4, !dbg !6796
  br label %for.cond2, !dbg !6797, !llvm.loop !6798

for.end18:                                        ; preds = %land.end8
  %21 = load i32, ptr %lo, align 4, !dbg !6800
  %22 = load ptr, ptr @ehci_debug, align 8, !dbg !6801
  %data03 = getelementptr inbounds %struct.ehci_dbg_port, ptr %22, i32 0, i32 2, !dbg !6802
  call void @writel(i32 noundef %21, ptr noundef %data03) #10, !dbg !6803
  %23 = load i32, ptr %hi, align 4, !dbg !6804
  %24 = load ptr, ptr @ehci_debug, align 8, !dbg !6805
  %data47 = getelementptr inbounds %struct.ehci_dbg_port, ptr %24, i32 0, i32 3, !dbg !6806
  call void @writel(i32 noundef %23, ptr noundef %data47) #10, !dbg !6807
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !6808
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #9, !dbg !6808
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #9, !dbg !6808
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #9, !dbg !6808
  ret void, !dbg !6808
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dbgp_wait_until_done(i32 noundef %ctrl, i32 noundef %loop) #5 align 16 !dbg !6809 {
entry:
  %retval = alloca i32, align 4
  %ctrl.addr = alloca i32, align 4
  %loop.addr = alloca i32, align 4
  %pids = alloca i32, align 4
  %lpid = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %ctrl, ptr %ctrl.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ctrl.addr, metadata !6813, metadata !DIExpression()), !dbg !6819
  store i32 %loop, ptr %loop.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %loop.addr, metadata !6814, metadata !DIExpression()), !dbg !6820
  call void @llvm.lifetime.start.p0(i64 4, ptr %pids) #9, !dbg !6821
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !6815, metadata !DIExpression()), !dbg !6822
  call void @llvm.lifetime.start.p0(i64 4, ptr %lpid) #9, !dbg !6821
  call void @llvm.dbg.declare(metadata ptr %lpid, metadata !6816, metadata !DIExpression()), !dbg !6823
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6824
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6817, metadata !DIExpression()), !dbg !6825
  br label %retry, !dbg !6824

retry:                                            ; preds = %if.then19, %if.then8, %entry
  call void @llvm.dbg.label(metadata !6818), !dbg !6826
  %0 = load i32, ptr %ctrl.addr, align 4, !dbg !6827
  %or = or i32 %0, 32, !dbg !6828
  %1 = load ptr, ptr @ehci_debug, align 8, !dbg !6829
  %control = getelementptr inbounds %struct.ehci_dbg_port, ptr %1, i32 0, i32 0, !dbg !6830
  call void @writel(i32 noundef %or, ptr noundef %control) #10, !dbg !6831
  %call = call i32 @dbgp_wait_until_complete() #10, !dbg !6832
  store i32 %call, ptr %ret, align 4, !dbg !6833
  %2 = load ptr, ptr @ehci_debug, align 8, !dbg !6834
  %pids1 = getelementptr inbounds %struct.ehci_dbg_port, ptr %2, i32 0, i32 1, !dbg !6835
  %call2 = call i32 @readl(ptr noundef %pids1) #10, !dbg !6836
  store i32 %call2, ptr %pids, align 4, !dbg !6837
  %3 = load i32, ptr %pids, align 4, !dbg !6838
  %shr = lshr i32 %3, 16, !dbg !6838
  %and = and i32 %shr, 255, !dbg !6838
  store i32 %and, ptr %lpid, align 4, !dbg !6839
  %4 = load i32, ptr %ret, align 4, !dbg !6840
  %cmp = icmp slt i32 %4, 0, !dbg !6842
  br i1 %cmp, label %if.then, label %if.end10, !dbg !6843

if.then:                                          ; preds = %retry
  %5 = load i32, ptr %ret, align 4, !dbg !6844
  %cmp3 = icmp eq i32 %5, -250000, !dbg !6847
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !6848

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32, ptr @dbgp_not_safe, align 4, !dbg !6849
  %tobool = icmp ne i32 %6, 0, !dbg !6849
  br i1 %tobool, label %if.end, label %if.then4, !dbg !6850

if.then4:                                         ; preds = %land.lhs.true
  store i32 1, ptr @dbgp_not_safe, align 4, !dbg !6851
  br label %if.end, !dbg !6852

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.then
  %7 = load i32, ptr %ret, align 4, !dbg !6853
  %cmp5 = icmp eq i32 %7, -1, !dbg !6855
  br i1 %cmp5, label %land.lhs.true6, label %if.end9, !dbg !6856

land.lhs.true6:                                   ; preds = %if.end
  %8 = load i32, ptr %loop.addr, align 4, !dbg !6857
  %dec = add i32 %8, -1, !dbg !6857
  store i32 %dec, ptr %loop.addr, align 4, !dbg !6857
  %cmp7 = icmp sgt i32 %dec, 0, !dbg !6858
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !6859

if.then8:                                         ; preds = %land.lhs.true6
  br label %retry, !dbg !6860

if.end9:                                          ; preds = %land.lhs.true6, %if.end
  %9 = load i32, ptr %ret, align 4, !dbg !6861
  store i32 %9, ptr %retval, align 4, !dbg !6862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6862

if.end10:                                         ; preds = %retry
  %10 = load i32, ptr %lpid, align 4, !dbg !6863
  %cmp11 = icmp eq i32 %10, 90, !dbg !6865
  br i1 %cmp11, label %if.then13, label %lor.lhs.false, !dbg !6866

lor.lhs.false:                                    ; preds = %if.end10
  %11 = load i32, ptr %lpid, align 4, !dbg !6867
  %cmp12 = icmp eq i32 %11, 150, !dbg !6868
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6869

if.then13:                                        ; preds = %lor.lhs.false, %if.end10
  call void @dbgp_breath() #10, !dbg !6870
  br label %if.end14, !dbg !6870

if.end14:                                         ; preds = %if.then13, %lor.lhs.false
  %12 = load i32, ptr %lpid, align 4, !dbg !6871
  %cmp15 = icmp eq i32 %12, 90, !dbg !6873
  br i1 %cmp15, label %if.then16, label %if.end21, !dbg !6874

if.then16:                                        ; preds = %if.end14
  %13 = load i32, ptr %loop.addr, align 4, !dbg !6875
  %dec17 = add i32 %13, -1, !dbg !6875
  store i32 %dec17, ptr %loop.addr, align 4, !dbg !6875
  %cmp18 = icmp sgt i32 %dec17, 0, !dbg !6878
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6879

if.then19:                                        ; preds = %if.then16
  br label %retry, !dbg !6880

if.end20:                                         ; preds = %if.then16
  br label %if.end21, !dbg !6881

if.end21:                                         ; preds = %if.end20, %if.end14
  %14 = load i32, ptr %ret, align 4, !dbg !6882
  store i32 %14, ptr %retval, align 4, !dbg !6883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6883

cleanup:                                          ; preds = %if.end21, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6884
  call void @llvm.lifetime.end.p0(i64 4, ptr %lpid) #9, !dbg !6884
  call void @llvm.lifetime.end.p0(i64 4, ptr %pids) #9, !dbg !6884
  %15 = load i32, ptr %retval, align 4, !dbg !6884
  ret i32 %15, !dbg !6884
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dbgp_wait_until_complete() #5 align 16 !dbg !6885 {
entry:
  %retval = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %ret = alloca i32, align 4
  %__timeout_us = alloca i64, align 8
  %__left_ns = alloca i64, align 8
  %__delay_us = alloca i64, align 8
  %__delay_ns = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl) #9, !dbg !6894
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !6887, metadata !DIExpression()), !dbg !6895
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !6896
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6888, metadata !DIExpression()), !dbg !6897
  call void @llvm.lifetime.start.p0(i64 8, ptr %__timeout_us) #9, !dbg !6898
  call void @llvm.dbg.declare(metadata ptr %__timeout_us, metadata !6889, metadata !DIExpression()), !dbg !6898
  store i64 250000, ptr %__timeout_us, align 8, !dbg !6898
  call void @llvm.lifetime.start.p0(i64 8, ptr %__left_ns) #9, !dbg !6898
  call void @llvm.dbg.declare(metadata ptr %__left_ns, metadata !6891, metadata !DIExpression()), !dbg !6898
  %0 = load i64, ptr %__timeout_us, align 8, !dbg !6898
  %mul = mul i64 %0, 1000, !dbg !6898
  store i64 %mul, ptr %__left_ns, align 8, !dbg !6898
  call void @llvm.lifetime.start.p0(i64 8, ptr %__delay_us) #9, !dbg !6898
  call void @llvm.dbg.declare(metadata ptr %__delay_us, metadata !6892, metadata !DIExpression()), !dbg !6898
  store i64 1, ptr %__delay_us, align 8, !dbg !6898
  call void @llvm.lifetime.start.p0(i64 8, ptr %__delay_ns) #9, !dbg !6898
  call void @llvm.dbg.declare(metadata ptr %__delay_ns, metadata !6893, metadata !DIExpression()), !dbg !6898
  %1 = load i64, ptr %__delay_us, align 8, !dbg !6898
  %mul1 = mul i64 %1, 1000, !dbg !6898
  store i64 %mul1, ptr %__delay_ns, align 8, !dbg !6898
  br label %for.cond, !dbg !6898

for.cond:                                         ; preds = %if.end22, %entry
  %2 = load ptr, ptr @ehci_debug, align 8, !dbg !6899
  %control = getelementptr inbounds %struct.ehci_dbg_port, ptr %2, i32 0, i32 0, !dbg !6899
  %call = call i32 @readl(ptr noundef %control) #10, !dbg !6899
  store i32 %call, ptr %ctrl, align 4, !dbg !6899
  %3 = load i32, ptr %ctrl, align 4, !dbg !6903
  %and = and i32 %3, 65536, !dbg !6903
  %tobool = icmp ne i32 %and, 0, !dbg !6903
  br i1 %tobool, label %if.then, label %if.end, !dbg !6899

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !6903

if.end:                                           ; preds = %for.cond
  %4 = load i64, ptr %__timeout_us, align 8, !dbg !6905
  %tobool2 = icmp ne i64 %4, 0, !dbg !6905
  br i1 %tobool2, label %land.lhs.true, label %if.end6, !dbg !6905

land.lhs.true:                                    ; preds = %if.end
  %5 = load i64, ptr %__left_ns, align 8, !dbg !6905
  %cmp = icmp slt i64 %5, 0, !dbg !6905
  br i1 %cmp, label %if.then3, label %if.end6, !dbg !6899

if.then3:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr @ehci_debug, align 8, !dbg !6907
  %control4 = getelementptr inbounds %struct.ehci_dbg_port, ptr %6, i32 0, i32 0, !dbg !6907
  %call5 = call i32 @readl(ptr noundef %control4) #10, !dbg !6907
  store i32 %call5, ptr %ctrl, align 4, !dbg !6907
  br label %for.end, !dbg !6907

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %7 = load i64, ptr %__delay_us, align 8, !dbg !6909
  %tobool7 = icmp ne i64 %7, 0, !dbg !6909
  br i1 %tobool7, label %if.then8, label %if.end19, !dbg !6899

if.then8:                                         ; preds = %if.end6
  %8 = load i64, ptr %__delay_us, align 8, !dbg !6911
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !6911
  br i1 %9, label %if.then9, label %if.else14, !dbg !6915

if.then9:                                         ; preds = %if.then8
  %10 = load i64, ptr %__delay_us, align 8, !dbg !6916
  %div = udiv i64 %10, 20000, !dbg !6916
  %cmp10 = icmp uge i64 %div, 1, !dbg !6916
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !6919

if.then11:                                        ; preds = %if.then9
  call void @__bad_udelay() #10, !dbg !6916
  br label %if.end13, !dbg !6916

if.else:                                          ; preds = %if.then9
  %11 = load i64, ptr %__delay_us, align 8, !dbg !6916
  %mul12 = mul i64 %11, 4295, !dbg !6916
  call void @__const_udelay(i64 noundef %mul12) #10, !dbg !6916
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  br label %if.end15, !dbg !6919

if.else14:                                        ; preds = %if.then8
  %12 = load i64, ptr %__delay_us, align 8, !dbg !6920
  call void @__udelay(i64 noundef %12) #10, !dbg !6920
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.end13
  %13 = load i64, ptr %__timeout_us, align 8, !dbg !6922
  %tobool16 = icmp ne i64 %13, 0, !dbg !6922
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6924

if.then17:                                        ; preds = %if.end15
  %14 = load i64, ptr %__delay_ns, align 8, !dbg !6922
  %15 = load i64, ptr %__left_ns, align 8, !dbg !6922
  %sub = sub i64 %15, %14, !dbg !6922
  store i64 %sub, ptr %__left_ns, align 8, !dbg !6922
  br label %if.end18, !dbg !6922

if.end18:                                         ; preds = %if.then17, %if.end15
  br label %if.end19, !dbg !6924

if.end19:                                         ; preds = %if.end18, %if.end6
  call void @cpu_relax() #10, !dbg !6899
  %16 = load i64, ptr %__timeout_us, align 8, !dbg !6925
  %tobool20 = icmp ne i64 %16, 0, !dbg !6925
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !6899

if.then21:                                        ; preds = %if.end19
  %17 = load i64, ptr %__left_ns, align 8, !dbg !6925
  %dec = add i64 %17, -1, !dbg !6925
  store i64 %dec, ptr %__left_ns, align 8, !dbg !6925
  br label %if.end22, !dbg !6925

if.end22:                                         ; preds = %if.then21, %if.end19
  br label %for.cond, !dbg !6927, !llvm.loop !6928

for.end:                                          ; preds = %if.then3, %if.then
  %18 = load i32, ptr %ctrl, align 4, !dbg !6898
  %and23 = and i32 %18, 65536, !dbg !6898
  %tobool24 = icmp ne i32 %and23, 0, !dbg !6898
  %19 = zext i1 %tobool24 to i64, !dbg !6898
  %cond = select i1 %tobool24, i32 0, i32 -110, !dbg !6898
  store i32 %cond, ptr %tmp, align 4, !dbg !6929
  call void @llvm.lifetime.end.p0(i64 8, ptr %__delay_ns) #9, !dbg !6930
  call void @llvm.lifetime.end.p0(i64 8, ptr %__delay_us) #9, !dbg !6930
  call void @llvm.lifetime.end.p0(i64 8, ptr %__left_ns) #9, !dbg !6930
  call void @llvm.lifetime.end.p0(i64 8, ptr %__timeout_us) #9, !dbg !6930
  %20 = load i32, ptr %tmp, align 4, !dbg !6898
  store i32 %20, ptr %ret, align 4, !dbg !6931
  %21 = load i32, ptr %ret, align 4, !dbg !6932
  %tobool25 = icmp ne i32 %21, 0, !dbg !6932
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6934

if.then26:                                        ; preds = %for.end
  store i32 -250000, ptr %retval, align 4, !dbg !6935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6935

if.end27:                                         ; preds = %for.end
  %22 = load i32, ptr %ctrl, align 4, !dbg !6936
  %or = or i32 %22, 65536, !dbg !6937
  %23 = load ptr, ptr @ehci_debug, align 8, !dbg !6938
  %control28 = getelementptr inbounds %struct.ehci_dbg_port, ptr %23, i32 0, i32 0, !dbg !6939
  call void @writel(i32 noundef %or, ptr noundef %control28) #10, !dbg !6940
  %24 = load i32, ptr %ctrl, align 4, !dbg !6941
  %and29 = and i32 %24, 64, !dbg !6942
  %tobool30 = icmp ne i32 %and29, 0, !dbg !6942
  br i1 %tobool30, label %cond.true, label %cond.false, !dbg !6943

cond.true:                                        ; preds = %if.end27
  %25 = load i32, ptr %ctrl, align 4, !dbg !6944
  %shr = lshr i32 %25, 7, !dbg !6944
  %and31 = and i32 %shr, 7, !dbg !6944
  %sub32 = sub i32 0, %and31, !dbg !6945
  br label %cond.end, !dbg !6943

cond.false:                                       ; preds = %if.end27
  %26 = load i32, ptr %ctrl, align 4, !dbg !6946
  %shr33 = lshr i32 %26, 0, !dbg !6946
  %and34 = and i32 %shr33, 15, !dbg !6946
  br label %cond.end, !dbg !6943

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond35 = phi i32 [ %sub32, %cond.true ], [ %and34, %cond.false ], !dbg !6943
  store i32 %cond35, ptr %retval, align 4, !dbg !6947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6947

cleanup:                                          ; preds = %cond.end, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !6948
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl) #9, !dbg !6948
  %27 = load i32, ptr %retval, align 4, !dbg !6948
  ret i32 %27, !dbg !6948
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dbgp_breath() #5 align 16 !dbg !6949 {
entry:
  ret void, !dbg !6950
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6951 dso_local void @__bad_udelay() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6952 dso_local void @__udelay(i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #8 align 16 !dbg !6953 {
entry:
  call void @rep_nop() #10, !dbg !6955
  ret void, !dbg !6956
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #8 align 16 !dbg !6957 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !6958, !srcloc !6959
  ret void, !dbg !6960
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dbgp_ehci_startup() #5 align 16 !dbg !6961 {
entry:
  %retval = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %cmd = alloca i32, align 4
  %status = alloca i32, align 4
  %loop = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl) #9, !dbg !6967
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !6963, metadata !DIExpression()), !dbg !6968
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd) #9, !dbg !6967
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !6964, metadata !DIExpression()), !dbg !6969
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #9, !dbg !6967
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6965, metadata !DIExpression()), !dbg !6970
  call void @llvm.lifetime.start.p0(i64 4, ptr %loop) #9, !dbg !6971
  call void @llvm.dbg.declare(metadata ptr %loop, metadata !6966, metadata !DIExpression()), !dbg !6972
  %0 = load ptr, ptr @ehci_debug, align 8, !dbg !6973
  %control = getelementptr inbounds %struct.ehci_dbg_port, ptr %0, i32 0, i32 0, !dbg !6974
  %call = call i32 @readl(ptr noundef %control) #10, !dbg !6975
  store i32 %call, ptr %ctrl, align 4, !dbg !6976
  %1 = load i32, ptr %ctrl, align 4, !dbg !6977
  %or = or i32 %1, 1073741824, !dbg !6977
  store i32 %or, ptr %ctrl, align 4, !dbg !6977
  %2 = load i32, ptr %ctrl, align 4, !dbg !6978
  %and = and i32 %2, -268436481, !dbg !6978
  store i32 %and, ptr %ctrl, align 4, !dbg !6978
  %3 = load i32, ptr %ctrl, align 4, !dbg !6979
  %4 = load ptr, ptr @ehci_debug, align 8, !dbg !6980
  %control1 = getelementptr inbounds %struct.ehci_dbg_port, ptr %4, i32 0, i32 0, !dbg !6981
  call void @writel(i32 noundef %3, ptr noundef %control1) #10, !dbg !6982
  call void @__const_udelay(i64 noundef 4295) #10, !dbg !6983
  call void @dbgp_ehci_status(ptr noundef @.str.35) #10, !dbg !6988
  %5 = load ptr, ptr @ehci_regs, align 8, !dbg !6989
  %command = getelementptr inbounds %struct.ehci_regs, ptr %5, i32 0, i32 0, !dbg !6990
  %call2 = call i32 @readl(ptr noundef %command) #10, !dbg !6991
  store i32 %call2, ptr %cmd, align 4, !dbg !6992
  %6 = load i32, ptr %cmd, align 4, !dbg !6993
  %and3 = and i32 %6, -243, !dbg !6993
  store i32 %and3, ptr %cmd, align 4, !dbg !6993
  %7 = load i32, ptr %cmd, align 4, !dbg !6994
  %or4 = or i32 %7, 1, !dbg !6994
  store i32 %or4, ptr %cmd, align 4, !dbg !6994
  %8 = load i32, ptr %cmd, align 4, !dbg !6995
  %9 = load ptr, ptr @ehci_regs, align 8, !dbg !6996
  %command5 = getelementptr inbounds %struct.ehci_regs, ptr %9, i32 0, i32 0, !dbg !6997
  call void @writel(i32 noundef %8, ptr noundef %command5) #10, !dbg !6998
  %10 = load ptr, ptr @ehci_regs, align 8, !dbg !6999
  %configured_flag = getelementptr inbounds %struct.ehci_regs, ptr %10, i32 0, i32 10, !dbg !7000
  call void @writel(i32 noundef 1, ptr noundef %configured_flag) #10, !dbg !7001
  store i32 1000, ptr %loop, align 4, !dbg !7002
  br label %do.body, !dbg !7003

do.body:                                          ; preds = %do.cond, %entry
  %11 = load ptr, ptr @ehci_regs, align 8, !dbg !7004
  %status6 = getelementptr inbounds %struct.ehci_regs, ptr %11, i32 0, i32 1, !dbg !7006
  %call7 = call i32 @readl(ptr noundef %status6) #10, !dbg !7007
  store i32 %call7, ptr %status, align 4, !dbg !7008
  %12 = load i32, ptr %status, align 4, !dbg !7009
  %and8 = and i32 %12, 4096, !dbg !7011
  %tobool = icmp ne i32 %and8, 0, !dbg !7011
  br i1 %tobool, label %if.end, label %if.then, !dbg !7012

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !7013

if.end:                                           ; preds = %do.body
  call void @__const_udelay(i64 noundef 4295) #10, !dbg !7014
  br label %do.cond, !dbg !7019

do.cond:                                          ; preds = %if.end
  %13 = load i32, ptr %loop, align 4, !dbg !7020
  %dec = add i32 %13, -1, !dbg !7020
  store i32 %dec, ptr %loop, align 4, !dbg !7020
  %cmp = icmp sgt i32 %dec, 0, !dbg !7021
  br i1 %cmp, label %do.body, label %do.end, !dbg !7019, !llvm.loop !7022

do.end:                                           ; preds = %do.cond, %if.then
  %14 = load i32, ptr %loop, align 4, !dbg !7024
  %tobool9 = icmp ne i32 %14, 0, !dbg !7024
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !7026

if.then10:                                        ; preds = %do.end
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.36) #10, !dbg !7027
  store i32 -19, ptr %retval, align 4, !dbg !7029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7029

if.end11:                                         ; preds = %do.end
  call void (ptr, ...) @dbgp_printk(ptr noundef @.str.37) #10, !dbg !7030
  store i32 0, ptr %retval, align 4, !dbg !7031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7031

cleanup:                                          ; preds = %if.end11, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %loop) #9, !dbg !7032
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #9, !dbg !7032
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd) #9, !dbg !7032
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl) #9, !dbg !7032
  %15 = load i32, ptr %retval, align 4, !dbg !7032
  ret i32 %15, !dbg !7032
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ehci_wait_for_port(i32 noundef %port) #5 align 16 !dbg !7033 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  %reps = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !7035, metadata !DIExpression()), !dbg !7039
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #9, !dbg !7040
  call void @llvm.dbg.declare(metadata ptr %status, metadata !7036, metadata !DIExpression()), !dbg !7041
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !7042
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7037, metadata !DIExpression()), !dbg !7043
  call void @llvm.lifetime.start.p0(i64 4, ptr %reps) #9, !dbg !7042
  call void @llvm.dbg.declare(metadata ptr %reps, metadata !7038, metadata !DIExpression()), !dbg !7044
  store i32 0, ptr %reps, align 4, !dbg !7045
  br label %for.cond, !dbg !7047

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %reps, align 4, !dbg !7048
  %cmp = icmp slt i32 %0, 300, !dbg !7050
  br i1 %cmp, label %for.body, label %for.end, !dbg !7051

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr @ehci_regs, align 8, !dbg !7052
  %status1 = getelementptr inbounds %struct.ehci_regs, ptr %1, i32 0, i32 1, !dbg !7054
  %call = call i32 @readl(ptr noundef %status1) #10, !dbg !7055
  store i32 %call, ptr %status, align 4, !dbg !7056
  %2 = load i32, ptr %status, align 4, !dbg !7057
  %and = and i32 %2, 4, !dbg !7059
  %tobool = icmp ne i32 %and, 0, !dbg !7059
  br i1 %tobool, label %if.then, label %if.end, !dbg !7060

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !7061

if.end:                                           ; preds = %for.body
  call void @dbgp_mdelay(i32 noundef 1) #10, !dbg !7062
  br label %for.inc, !dbg !7063

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %reps, align 4, !dbg !7064
  %inc = add i32 %3, 1, !dbg !7064
  store i32 %inc, ptr %reps, align 4, !dbg !7064
  br label %for.cond, !dbg !7065, !llvm.loop !7066

for.end:                                          ; preds = %if.then, %for.cond
  %4 = load i32, ptr %port.addr, align 4, !dbg !7068
  %call2 = call i32 @ehci_reset_port(i32 noundef %4) #10, !dbg !7069
  store i32 %call2, ptr %ret, align 4, !dbg !7070
  %5 = load i32, ptr %ret, align 4, !dbg !7071
  %cmp3 = icmp eq i32 %5, 0, !dbg !7073
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !7074

if.then4:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !7075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7075

if.end5:                                          ; preds = %for.end
  store i32 -107, ptr %retval, align 4, !dbg !7076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7076

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %reps) #9, !dbg !7077
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !7077
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #9, !dbg !7077
  %6 = load i32, ptr %retval, align 4, !dbg !7077
  ret i32 %6, !dbg !7077
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dbgp_mdelay(i32 noundef %ms) #4 align 16 !dbg !7078 {
entry:
  %ms.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %ms, ptr %ms.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ms.addr, metadata !7080, metadata !DIExpression()), !dbg !7082
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !7083
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7081, metadata !DIExpression()), !dbg !7084
  br label %while.cond, !dbg !7085

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i32, ptr %ms.addr, align 4, !dbg !7086
  %dec = add i32 %0, -1, !dbg !7086
  store i32 %dec, ptr %ms.addr, align 4, !dbg !7086
  %tobool = icmp ne i32 %0, 0, !dbg !7085
  br i1 %tobool, label %while.body, label %while.end, !dbg !7085

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %i, align 4, !dbg !7087
  br label %for.cond, !dbg !7090

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i32, ptr %i, align 4, !dbg !7091
  %cmp = icmp slt i32 %1, 1000, !dbg !7093
  br i1 %cmp, label %for.body, label %for.end, !dbg !7094

for.body:                                         ; preds = %for.cond
  call void @__outb(i8 noundef zeroext 1, i16 noundef zeroext 128) #10, !dbg !7095
  br label %for.inc, !dbg !7095

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !dbg !7096
  %inc = add i32 %2, 1, !dbg !7096
  store i32 %inc, ptr %i, align 4, !dbg !7096
  br label %for.cond, !dbg !7097, !llvm.loop !7098

for.end:                                          ; preds = %for.cond
  br label %while.cond, !dbg !7085, !llvm.loop !7100

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !7102
  ret void, !dbg !7102
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dbgp_control_msg(i32 noundef %devnum, i32 noundef %requesttype, i32 noundef %request, i32 noundef %value, i32 noundef %index, ptr noundef %data, i32 noundef %size) #5 align 16 !dbg !7103 {
entry:
  %retval = alloca i32, align 4
  %devnum.addr = alloca i32, align 4
  %requesttype.addr = alloca i32, align 4
  %request.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %pids = alloca i32, align 4
  %addr = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %req = alloca %struct.usb_ctrlrequest, align 1
  %read = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %devnum, ptr %devnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devnum.addr, metadata !7107, metadata !DIExpression()), !dbg !7127
  store i32 %requesttype, ptr %requesttype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %requesttype.addr, metadata !7108, metadata !DIExpression()), !dbg !7128
  store i32 %request, ptr %request.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %request.addr, metadata !7109, metadata !DIExpression()), !dbg !7129
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !7110, metadata !DIExpression()), !dbg !7130
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !7111, metadata !DIExpression()), !dbg !7131
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7112, metadata !DIExpression()), !dbg !7132
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7113, metadata !DIExpression()), !dbg !7133
  call void @llvm.lifetime.start.p0(i64 4, ptr %pids) #9, !dbg !7134
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !7114, metadata !DIExpression()), !dbg !7135
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr) #9, !dbg !7134
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !7115, metadata !DIExpression()), !dbg !7136
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl) #9, !dbg !7134
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !7116, metadata !DIExpression()), !dbg !7137
  call void @llvm.lifetime.start.p0(i64 8, ptr %req) #9, !dbg !7138
  call void @llvm.dbg.declare(metadata ptr %req, metadata !7117, metadata !DIExpression()), !dbg !7139
  call void @llvm.lifetime.start.p0(i64 4, ptr %read) #9, !dbg !7140
  call void @llvm.dbg.declare(metadata ptr %read, metadata !7125, metadata !DIExpression()), !dbg !7141
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !7142
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7126, metadata !DIExpression()), !dbg !7143
  %0 = load i32, ptr %requesttype.addr, align 4, !dbg !7144
  %and = and i32 %0, 128, !dbg !7145
  %cmp = icmp ne i32 %and, 0, !dbg !7146
  %conv = zext i1 %cmp to i32, !dbg !7146
  store i32 %conv, ptr %read, align 4, !dbg !7147
  %1 = load i32, ptr %size.addr, align 4, !dbg !7148
  %2 = load i32, ptr %read, align 4, !dbg !7150
  %tobool = icmp ne i32 %2, 0, !dbg !7150
  %3 = zext i1 %tobool to i64, !dbg !7150
  %cond = select i1 %tobool, i32 8, i32 0, !dbg !7150
  %cmp1 = icmp sgt i32 %1, %cond, !dbg !7151
  br i1 %cmp1, label %if.then, label %if.end, !dbg !7152

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !7153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7153

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %requesttype.addr, align 4, !dbg !7154
  %conv3 = trunc i32 %4 to i8, !dbg !7154
  %bRequestType = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 0, !dbg !7155
  store i8 %conv3, ptr %bRequestType, align 1, !dbg !7156
  %5 = load i32, ptr %request.addr, align 4, !dbg !7157
  %conv4 = trunc i32 %5 to i8, !dbg !7157
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 1, !dbg !7158
  store i8 %conv4, ptr %bRequest, align 1, !dbg !7159
  %6 = load i32, ptr %value.addr, align 4, !dbg !7160
  %conv5 = trunc i32 %6 to i16, !dbg !7160
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 2, !dbg !7161
  store i16 %conv5, ptr %wValue, align 1, !dbg !7162
  %7 = load i32, ptr %index.addr, align 4, !dbg !7163
  %conv6 = trunc i32 %7 to i16, !dbg !7163
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 3, !dbg !7164
  store i16 %conv6, ptr %wIndex, align 1, !dbg !7165
  %8 = load i32, ptr %size.addr, align 4, !dbg !7166
  %conv7 = trunc i32 %8 to i16, !dbg !7166
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %req, i32 0, i32 4, !dbg !7167
  store i16 %conv7, ptr %wLength, align 1, !dbg !7168
  store i32 49965, ptr %pids, align 4, !dbg !7169
  %9 = load i32, ptr %devnum.addr, align 4, !dbg !7170
  %shl = shl i32 %9, 8, !dbg !7170
  %or = or i32 %shl, 0, !dbg !7170
  store i32 %or, ptr %addr, align 4, !dbg !7171
  %10 = load ptr, ptr @ehci_debug, align 8, !dbg !7172
  %control = getelementptr inbounds %struct.ehci_dbg_port, ptr %10, i32 0, i32 0, !dbg !7173
  %call = call i32 @readl(ptr noundef %control) #10, !dbg !7174
  store i32 %call, ptr %ctrl, align 4, !dbg !7175
  %11 = load i32, ptr %ctrl, align 4, !dbg !7176
  %call8 = call i32 @dbgp_len_update(i32 noundef %11, i32 noundef 8) #10, !dbg !7177
  store i32 %call8, ptr %ctrl, align 4, !dbg !7178
  %12 = load i32, ptr %ctrl, align 4, !dbg !7179
  %or9 = or i32 %12, 16, !dbg !7179
  store i32 %or9, ptr %ctrl, align 4, !dbg !7179
  %13 = load i32, ptr %ctrl, align 4, !dbg !7180
  %or10 = or i32 %13, 32, !dbg !7180
  store i32 %or10, ptr %ctrl, align 4, !dbg !7180
  call void @dbgp_set_data(ptr noundef %req, i32 noundef 8) #10, !dbg !7181
  %14 = load i32, ptr %addr, align 4, !dbg !7182
  %15 = load ptr, ptr @ehci_debug, align 8, !dbg !7183
  %address = getelementptr inbounds %struct.ehci_dbg_port, ptr %15, i32 0, i32 4, !dbg !7184
  call void @writel(i32 noundef %14, ptr noundef %address) #10, !dbg !7185
  %16 = load i32, ptr %pids, align 4, !dbg !7186
  %17 = load ptr, ptr @ehci_debug, align 8, !dbg !7187
  %pids11 = getelementptr inbounds %struct.ehci_dbg_port, ptr %17, i32 0, i32 1, !dbg !7188
  call void @writel(i32 noundef %16, ptr noundef %pids11) #10, !dbg !7189
  %18 = load i32, ptr %ctrl, align 4, !dbg !7190
  %call12 = call i32 @dbgp_wait_until_done(i32 noundef %18, i32 noundef 1000) #10, !dbg !7191
  store i32 %call12, ptr %ret, align 4, !dbg !7192
  %19 = load i32, ptr %ret, align 4, !dbg !7193
  %cmp13 = icmp slt i32 %19, 0, !dbg !7195
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !7196

if.then15:                                        ; preds = %if.end
  %20 = load i32, ptr %ret, align 4, !dbg !7197
  store i32 %20, ptr %retval, align 4, !dbg !7198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7198

if.end16:                                         ; preds = %if.end
  %21 = load i32, ptr %devnum.addr, align 4, !dbg !7199
  %22 = load ptr, ptr %data.addr, align 8, !dbg !7200
  %23 = load i32, ptr %size.addr, align 4, !dbg !7201
  %call17 = call i32 @dbgp_bulk_read(i32 noundef %21, i32 noundef 0, ptr noundef %22, i32 noundef %23, i32 noundef 1000) #10, !dbg !7202
  store i32 %call17, ptr %retval, align 4, !dbg !7203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7203

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !7204
  call void @llvm.lifetime.end.p0(i64 4, ptr %read) #9, !dbg !7204
  call void @llvm.lifetime.end.p0(i64 8, ptr %req) #9, !dbg !7204
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl) #9, !dbg !7204
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr) #9, !dbg !7204
  call void @llvm.lifetime.end.p0(i64 4, ptr %pids) #9, !dbg !7204
  %24 = load i32, ptr %retval, align 4, !dbg !7204
  ret i32 %24, !dbg !7204
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ehci_reset_port(i32 noundef %port) #5 align 16 !dbg !7205 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca i32, align 4
  %portsc = alloca i32, align 4
  %delay_time = alloca i32, align 4
  %delay = alloca i32, align 4
  %loop = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !7207, metadata !DIExpression()), !dbg !7212
  call void @llvm.lifetime.start.p0(i64 4, ptr %portsc) #9, !dbg !7213
  call void @llvm.dbg.declare(metadata ptr %portsc, metadata !7208, metadata !DIExpression()), !dbg !7214
  call void @llvm.lifetime.start.p0(i64 4, ptr %delay_time) #9, !dbg !7215
  call void @llvm.dbg.declare(metadata ptr %delay_time, metadata !7209, metadata !DIExpression()), !dbg !7216
  call void @llvm.lifetime.start.p0(i64 4, ptr %delay) #9, !dbg !7215
  call void @llvm.dbg.declare(metadata ptr %delay, metadata !7210, metadata !DIExpression()), !dbg !7217
  call void @llvm.lifetime.start.p0(i64 4, ptr %loop) #9, !dbg !7218
  call void @llvm.dbg.declare(metadata ptr %loop, metadata !7211, metadata !DIExpression()), !dbg !7219
  call void @dbgp_ehci_status(ptr noundef @.str.38) #10, !dbg !7220
  %0 = load ptr, ptr @ehci_regs, align 8, !dbg !7221
  %1 = getelementptr inbounds %struct.ehci_regs, ptr %0, i32 0, i32 11, !dbg !7222
  %2 = load i32, ptr %port.addr, align 4, !dbg !7223
  %sub = sub i32 %2, 1, !dbg !7224
  %idxprom = sext i32 %sub to i64, !dbg !7221
  %arrayidx = getelementptr [15 x i32], ptr %1, i64 0, i64 %idxprom, !dbg !7221
  %call = call i32 @readl(ptr noundef %arrayidx) #10, !dbg !7225
  store i32 %call, ptr %portsc, align 4, !dbg !7226
  %3 = load i32, ptr %portsc, align 4, !dbg !7227
  %and = and i32 %3, -5, !dbg !7227
  store i32 %and, ptr %portsc, align 4, !dbg !7227
  %4 = load i32, ptr %portsc, align 4, !dbg !7228
  %or = or i32 %4, 256, !dbg !7228
  store i32 %or, ptr %portsc, align 4, !dbg !7228
  %5 = load i32, ptr %portsc, align 4, !dbg !7229
  %6 = load ptr, ptr @ehci_regs, align 8, !dbg !7230
  %7 = getelementptr inbounds %struct.ehci_regs, ptr %6, i32 0, i32 11, !dbg !7231
  %8 = load i32, ptr %port.addr, align 4, !dbg !7232
  %sub1 = sub i32 %8, 1, !dbg !7233
  %idxprom2 = sext i32 %sub1 to i64, !dbg !7230
  %arrayidx3 = getelementptr [15 x i32], ptr %7, i64 0, i64 %idxprom2, !dbg !7230
  call void @writel(i32 noundef %5, ptr noundef %arrayidx3) #10, !dbg !7234
  store i32 50, ptr %delay, align 4, !dbg !7235
  store i32 0, ptr %delay_time, align 4, !dbg !7236
  br label %for.cond, !dbg !7238

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %delay_time, align 4, !dbg !7239
  %cmp = icmp ult i32 %9, 500, !dbg !7241
  br i1 %cmp, label %for.body, label %for.end, !dbg !7242

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %delay, align 4, !dbg !7243
  call void @dbgp_mdelay(i32 noundef %10) #10, !dbg !7245
  %11 = load ptr, ptr @ehci_regs, align 8, !dbg !7246
  %12 = getelementptr inbounds %struct.ehci_regs, ptr %11, i32 0, i32 11, !dbg !7247
  %13 = load i32, ptr %port.addr, align 4, !dbg !7248
  %sub4 = sub i32 %13, 1, !dbg !7249
  %idxprom5 = sext i32 %sub4 to i64, !dbg !7246
  %arrayidx6 = getelementptr [15 x i32], ptr %12, i64 0, i64 %idxprom5, !dbg !7246
  %call7 = call i32 @readl(ptr noundef %arrayidx6) #10, !dbg !7250
  store i32 %call7, ptr %portsc, align 4, !dbg !7251
  %14 = load i32, ptr %portsc, align 4, !dbg !7252
  %and8 = and i32 %14, 256, !dbg !7254
  %tobool = icmp ne i32 %and8, 0, !dbg !7254
  br i1 %tobool, label %if.end, label %if.then, !dbg !7255

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !7256

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !7257

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %delay, align 4, !dbg !7258
  %16 = load i32, ptr %delay_time, align 4, !dbg !7259
  %add = add i32 %16, %15, !dbg !7259
  store i32 %add, ptr %delay_time, align 4, !dbg !7259
  br label %for.cond, !dbg !7260, !llvm.loop !7261

for.end:                                          ; preds = %if.then, %for.cond
  %17 = load i32, ptr %portsc, align 4, !dbg !7263
  %and9 = and i32 %17, 256, !dbg !7265
  %tobool10 = icmp ne i32 %and9, 0, !dbg !7265
  br i1 %tobool10, label %if.then11, label %if.end23, !dbg !7266

if.then11:                                        ; preds = %for.end
  store i32 100000, ptr %loop, align 4, !dbg !7267
  %18 = load i32, ptr %portsc, align 4, !dbg !7269
  %and12 = and i32 %18, -299, !dbg !7270
  %19 = load ptr, ptr @ehci_regs, align 8, !dbg !7271
  %20 = getelementptr inbounds %struct.ehci_regs, ptr %19, i32 0, i32 11, !dbg !7272
  %21 = load i32, ptr %port.addr, align 4, !dbg !7273
  %sub13 = sub i32 %21, 1, !dbg !7274
  %idxprom14 = sext i32 %sub13 to i64, !dbg !7271
  %arrayidx15 = getelementptr [15 x i32], ptr %20, i64 0, i64 %idxprom14, !dbg !7271
  call void @writel(i32 noundef %and12, ptr noundef %arrayidx15) #10, !dbg !7275
  br label %do.body, !dbg !7276

do.body:                                          ; preds = %land.end, %if.then11
  call void @__const_udelay(i64 noundef 4295) #10, !dbg !7277
  %22 = load ptr, ptr @ehci_regs, align 8, !dbg !7283
  %23 = getelementptr inbounds %struct.ehci_regs, ptr %22, i32 0, i32 11, !dbg !7284
  %24 = load i32, ptr %port.addr, align 4, !dbg !7285
  %sub16 = sub i32 %24, 1, !dbg !7286
  %idxprom17 = sext i32 %sub16 to i64, !dbg !7283
  %arrayidx18 = getelementptr [15 x i32], ptr %23, i64 0, i64 %idxprom17, !dbg !7283
  %call19 = call i32 @readl(ptr noundef %arrayidx18) #10, !dbg !7287
  store i32 %call19, ptr %portsc, align 4, !dbg !7288
  br label %do.cond, !dbg !7289

do.cond:                                          ; preds = %do.body
  %25 = load i32, ptr %portsc, align 4, !dbg !7290
  %and20 = and i32 %25, 256, !dbg !7291
  %tobool21 = icmp ne i32 %and20, 0, !dbg !7291
  br i1 %tobool21, label %land.rhs, label %land.end, !dbg !7292

land.rhs:                                         ; preds = %do.cond
  %26 = load i32, ptr %loop, align 4, !dbg !7293
  %dec = add i32 %26, -1, !dbg !7293
  store i32 %dec, ptr %loop, align 4, !dbg !7293
  %cmp22 = icmp sgt i32 %dec, 0, !dbg !7294
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %27 = phi i1 [ false, %do.cond ], [ %cmp22, %land.rhs ], !dbg !7295
  br i1 %27, label %do.body, label %do.end, !dbg !7289, !llvm.loop !7296

do.end:                                           ; preds = %land.end
  br label %if.end23, !dbg !7298

if.end23:                                         ; preds = %do.end, %for.end
  %28 = load i32, ptr %portsc, align 4, !dbg !7299
  %and24 = and i32 %28, 1, !dbg !7301
  %tobool25 = icmp ne i32 %and24, 0, !dbg !7301
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !7302

if.then26:                                        ; preds = %if.end23
  store i32 -107, ptr %retval, align 4, !dbg !7303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7303

if.end27:                                         ; preds = %if.end23
  %29 = load i32, ptr %portsc, align 4, !dbg !7304
  %and28 = and i32 %29, 2, !dbg !7306
  %tobool29 = icmp ne i32 %and28, 0, !dbg !7306
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !7307

if.then30:                                        ; preds = %if.end27
  store i32 -22, ptr %retval, align 4, !dbg !7308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7308

if.end31:                                         ; preds = %if.end27
  %30 = load i32, ptr %portsc, align 4, !dbg !7309
  %and32 = and i32 %30, 256, !dbg !7311
  %tobool33 = icmp ne i32 %and32, 0, !dbg !7311
  br i1 %tobool33, label %if.end37, label %land.lhs.true, !dbg !7312

land.lhs.true:                                    ; preds = %if.end31
  %31 = load i32, ptr %portsc, align 4, !dbg !7313
  %and34 = and i32 %31, 4, !dbg !7314
  %tobool35 = icmp ne i32 %and34, 0, !dbg !7314
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !7315

if.then36:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !7316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7316

if.end37:                                         ; preds = %land.lhs.true, %if.end31
  store i32 -16, ptr %retval, align 4, !dbg !7317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7317

cleanup:                                          ; preds = %if.end37, %if.then36, %if.then30, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %loop) #9, !dbg !7318
  call void @llvm.lifetime.end.p0(i64 4, ptr %delay) #9, !dbg !7318
  call void @llvm.lifetime.end.p0(i64 4, ptr %delay_time) #9, !dbg !7318
  call void @llvm.lifetime.end.p0(i64 4, ptr %portsc) #9, !dbg !7318
  %32 = load i32, ptr %retval, align 4, !dbg !7318
  ret i32 %32, !dbg !7318
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #8 align 16 !dbg !7319 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !7324, metadata !DIExpression()), !dbg !7326
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !7325, metadata !DIExpression()), !dbg !7326
  %0 = load i8, ptr %value.addr, align 1, !dbg !7326
  %1 = load i16, ptr %port.addr, align 2, !dbg !7326
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #9, !dbg !7326, !srcloc !7327
  ret void, !dbg !7326
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dbgp_bulk_read(i32 noundef %devnum, i32 noundef %endpoint, ptr noundef %data, i32 noundef %size, i32 noundef %loops) #5 align 16 !dbg !7328 {
entry:
  %retval = alloca i32, align 4
  %devnum.addr = alloca i32, align 4
  %endpoint.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %loops.addr = alloca i32, align 4
  %pids = alloca i32, align 4
  %addr = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %devnum, ptr %devnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devnum.addr, metadata !7332, metadata !DIExpression()), !dbg !7341
  store i32 %endpoint, ptr %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %endpoint.addr, metadata !7333, metadata !DIExpression()), !dbg !7342
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7334, metadata !DIExpression()), !dbg !7343
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7335, metadata !DIExpression()), !dbg !7344
  store i32 %loops, ptr %loops.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %loops.addr, metadata !7336, metadata !DIExpression()), !dbg !7345
  call void @llvm.lifetime.start.p0(i64 4, ptr %pids) #9, !dbg !7346
  call void @llvm.dbg.declare(metadata ptr %pids, metadata !7337, metadata !DIExpression()), !dbg !7347
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr) #9, !dbg !7346
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !7338, metadata !DIExpression()), !dbg !7348
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl) #9, !dbg !7346
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !7339, metadata !DIExpression()), !dbg !7349
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !7350
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7340, metadata !DIExpression()), !dbg !7351
  %0 = load i32, ptr %size.addr, align 4, !dbg !7352
  %cmp = icmp sgt i32 %0, 8, !dbg !7354
  br i1 %cmp, label %if.then, label %if.end, !dbg !7355

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !7356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7356

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %devnum.addr, align 4, !dbg !7357
  %shl = shl i32 %1, 8, !dbg !7357
  %2 = load i32, ptr %endpoint.addr, align 4, !dbg !7357
  %or = or i32 %shl, %2, !dbg !7357
  store i32 %or, ptr %addr, align 4, !dbg !7358
  %3 = load ptr, ptr @ehci_debug, align 8, !dbg !7359
  %pids1 = getelementptr inbounds %struct.ehci_dbg_port, ptr %3, i32 0, i32 1, !dbg !7360
  %call = call i32 @readl(ptr noundef %pids1) #10, !dbg !7361
  store i32 %call, ptr %pids, align 4, !dbg !7362
  %4 = load i32, ptr %pids, align 4, !dbg !7363
  %call2 = call i32 @dbgp_pid_read_update(i32 noundef %4, i32 noundef 105) #10, !dbg !7364
  store i32 %call2, ptr %pids, align 4, !dbg !7365
  %5 = load ptr, ptr @ehci_debug, align 8, !dbg !7366
  %control = getelementptr inbounds %struct.ehci_dbg_port, ptr %5, i32 0, i32 0, !dbg !7367
  %call3 = call i32 @readl(ptr noundef %control) #10, !dbg !7368
  store i32 %call3, ptr %ctrl, align 4, !dbg !7369
  %6 = load i32, ptr %ctrl, align 4, !dbg !7370
  %7 = load i32, ptr %size.addr, align 4, !dbg !7371
  %call4 = call i32 @dbgp_len_update(i32 noundef %6, i32 noundef %7) #10, !dbg !7372
  store i32 %call4, ptr %ctrl, align 4, !dbg !7373
  %8 = load i32, ptr %ctrl, align 4, !dbg !7374
  %and = and i32 %8, -17, !dbg !7374
  store i32 %and, ptr %ctrl, align 4, !dbg !7374
  %9 = load i32, ptr %ctrl, align 4, !dbg !7375
  %or5 = or i32 %9, 32, !dbg !7375
  store i32 %or5, ptr %ctrl, align 4, !dbg !7375
  %10 = load i32, ptr %addr, align 4, !dbg !7376
  %11 = load ptr, ptr @ehci_debug, align 8, !dbg !7377
  %address = getelementptr inbounds %struct.ehci_dbg_port, ptr %11, i32 0, i32 4, !dbg !7378
  call void @writel(i32 noundef %10, ptr noundef %address) #10, !dbg !7379
  %12 = load i32, ptr %pids, align 4, !dbg !7380
  %13 = load ptr, ptr @ehci_debug, align 8, !dbg !7381
  %pids6 = getelementptr inbounds %struct.ehci_dbg_port, ptr %13, i32 0, i32 1, !dbg !7382
  call void @writel(i32 noundef %12, ptr noundef %pids6) #10, !dbg !7383
  %14 = load i32, ptr %ctrl, align 4, !dbg !7384
  %15 = load i32, ptr %loops.addr, align 4, !dbg !7385
  %call7 = call i32 @dbgp_wait_until_done(i32 noundef %14, i32 noundef %15) #10, !dbg !7386
  store i32 %call7, ptr %ret, align 4, !dbg !7387
  %16 = load i32, ptr %ret, align 4, !dbg !7388
  %cmp8 = icmp slt i32 %16, 0, !dbg !7390
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !7391

if.then9:                                         ; preds = %if.end
  %17 = load i32, ptr %ret, align 4, !dbg !7392
  store i32 %17, ptr %retval, align 4, !dbg !7393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7393

if.end10:                                         ; preds = %if.end
  %18 = load i32, ptr %size.addr, align 4, !dbg !7394
  %19 = load i32, ptr %ret, align 4, !dbg !7396
  %cmp11 = icmp sgt i32 %18, %19, !dbg !7397
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !7398

if.then12:                                        ; preds = %if.end10
  %20 = load i32, ptr %ret, align 4, !dbg !7399
  store i32 %20, ptr %size.addr, align 4, !dbg !7400
  br label %if.end13, !dbg !7401

if.end13:                                         ; preds = %if.then12, %if.end10
  %21 = load ptr, ptr %data.addr, align 8, !dbg !7402
  %22 = load i32, ptr %size.addr, align 4, !dbg !7403
  call void @dbgp_get_data(ptr noundef %21, i32 noundef %22) #10, !dbg !7404
  %23 = load i32, ptr %ret, align 4, !dbg !7405
  store i32 %23, ptr %retval, align 4, !dbg !7406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7406

cleanup:                                          ; preds = %if.end13, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !7407
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl) #9, !dbg !7407
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr) #9, !dbg !7407
  call void @llvm.lifetime.end.p0(i64 4, ptr %pids) #9, !dbg !7407
  %24 = load i32, ptr %retval, align 4, !dbg !7407
  ret i32 %24, !dbg !7407
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dbgp_pid_read_update(i32 noundef %x, i32 noundef %tok) #4 align 16 !dbg !7408 {
entry:
  %x.addr = alloca i32, align 4
  %tok.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !7410, metadata !DIExpression()), !dbg !7412
  store i32 %tok, ptr %tok.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tok.addr, metadata !7411, metadata !DIExpression()), !dbg !7413
  %0 = load i32, ptr %x.addr, align 4, !dbg !7414
  %and = and i32 %0, -65536, !dbg !7415
  %or = or i32 %and, 49920, !dbg !7416
  %1 = load i32, ptr %tok.addr, align 4, !dbg !7417
  %and1 = and i32 %1, 255, !dbg !7418
  %or2 = or i32 %or, %and1, !dbg !7419
  ret i32 %or2, !dbg !7420
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dbgp_get_data(ptr noundef %buf, i32 noundef %size) #4 align 16 !dbg !7421 {
entry:
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %bytes = alloca ptr, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7425, metadata !DIExpression()), !dbg !7431
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7426, metadata !DIExpression()), !dbg !7432
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #9, !dbg !7433
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !7427, metadata !DIExpression()), !dbg !7434
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !7435
  store ptr %0, ptr %bytes, align 8, !dbg !7434
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #9, !dbg !7436
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !7428, metadata !DIExpression()), !dbg !7437
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #9, !dbg !7436
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !7429, metadata !DIExpression()), !dbg !7438
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !7439
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7430, metadata !DIExpression()), !dbg !7440
  %1 = load ptr, ptr @ehci_debug, align 8, !dbg !7441
  %data03 = getelementptr inbounds %struct.ehci_dbg_port, ptr %1, i32 0, i32 2, !dbg !7442
  %call = call i32 @readl(ptr noundef %data03) #10, !dbg !7443
  store i32 %call, ptr %lo, align 4, !dbg !7444
  %2 = load ptr, ptr @ehci_debug, align 8, !dbg !7445
  %data47 = getelementptr inbounds %struct.ehci_dbg_port, ptr %2, i32 0, i32 3, !dbg !7446
  %call1 = call i32 @readl(ptr noundef %data47) #10, !dbg !7447
  store i32 %call1, ptr %hi, align 4, !dbg !7448
  store i32 0, ptr %i, align 4, !dbg !7449
  br label %for.cond, !dbg !7451

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !7452
  %cmp = icmp slt i32 %3, 4, !dbg !7454
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7455

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !dbg !7456
  %5 = load i32, ptr %size.addr, align 4, !dbg !7457
  %cmp2 = icmp slt i32 %4, %5, !dbg !7458
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ], !dbg !7459
  br i1 %6, label %for.body, label %for.end, !dbg !7460

for.body:                                         ; preds = %land.end
  %7 = load i32, ptr %lo, align 4, !dbg !7461
  %8 = load i32, ptr %i, align 4, !dbg !7462
  %mul = mul i32 8, %8, !dbg !7463
  %shr = lshr i32 %7, %mul, !dbg !7464
  %and = and i32 %shr, 255, !dbg !7465
  %conv = trunc i32 %and to i8, !dbg !7466
  %9 = load ptr, ptr %bytes, align 8, !dbg !7467
  %10 = load i32, ptr %i, align 4, !dbg !7468
  %idxprom = sext i32 %10 to i64, !dbg !7467
  %arrayidx = getelementptr i8, ptr %9, i64 %idxprom, !dbg !7467
  store i8 %conv, ptr %arrayidx, align 1, !dbg !7469
  br label %for.inc, !dbg !7467

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !7470
  %inc = add i32 %11, 1, !dbg !7470
  store i32 %inc, ptr %i, align 4, !dbg !7470
  br label %for.cond, !dbg !7471, !llvm.loop !7472

for.end:                                          ; preds = %land.end
  br label %for.cond3, !dbg !7474

for.cond3:                                        ; preds = %for.inc17, %for.end
  %12 = load i32, ptr %i, align 4, !dbg !7475
  %cmp4 = icmp slt i32 %12, 8, !dbg !7478
  br i1 %cmp4, label %land.rhs6, label %land.end9, !dbg !7479

land.rhs6:                                        ; preds = %for.cond3
  %13 = load i32, ptr %i, align 4, !dbg !7480
  %14 = load i32, ptr %size.addr, align 4, !dbg !7481
  %cmp7 = icmp slt i32 %13, %14, !dbg !7482
  br label %land.end9

land.end9:                                        ; preds = %land.rhs6, %for.cond3
  %15 = phi i1 [ false, %for.cond3 ], [ %cmp7, %land.rhs6 ], !dbg !7483
  br i1 %15, label %for.body10, label %for.end19, !dbg !7484

for.body10:                                       ; preds = %land.end9
  %16 = load i32, ptr %hi, align 4, !dbg !7485
  %17 = load i32, ptr %i, align 4, !dbg !7486
  %sub = sub i32 %17, 4, !dbg !7487
  %mul11 = mul i32 8, %sub, !dbg !7488
  %shr12 = lshr i32 %16, %mul11, !dbg !7489
  %and13 = and i32 %shr12, 255, !dbg !7490
  %conv14 = trunc i32 %and13 to i8, !dbg !7491
  %18 = load ptr, ptr %bytes, align 8, !dbg !7492
  %19 = load i32, ptr %i, align 4, !dbg !7493
  %idxprom15 = sext i32 %19 to i64, !dbg !7492
  %arrayidx16 = getelementptr i8, ptr %18, i64 %idxprom15, !dbg !7492
  store i8 %conv14, ptr %arrayidx16, align 1, !dbg !7494
  br label %for.inc17, !dbg !7492

for.inc17:                                        ; preds = %for.body10
  %20 = load i32, ptr %i, align 4, !dbg !7495
  %inc18 = add i32 %20, 1, !dbg !7495
  store i32 %inc18, ptr %i, align 4, !dbg !7495
  br label %for.cond3, !dbg !7496, !llvm.loop !7497

for.end19:                                        ; preds = %land.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !7499
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #9, !dbg !7499
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #9, !dbg !7499
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #9, !dbg !7499
  ret void, !dbg !7499
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!41}
!llvm.module.flags = !{!5372, !5373, !5374, !5375, !5376, !5377, !5378, !5379}
!llvm.ident = !{!5380}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 842, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/usb/early/ehci-dbgp.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9361acc1d9f26fbbf756900291d59ee")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 848, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 40)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 855, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 24)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 857, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 36)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 863, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 28)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 865, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 39)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 875, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 23)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 885, type: !3, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "ehci_caps", scope: !41, file: !2, line: 58, type: !5364, isLocal: true, isDefinition: true)
!41 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/usb/early/.ehci-dbgp.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/usb/early/ehci-dbgp\22 -D KBUILD_BASENAME=\22ehci_dbgp\22 -D KBUILD_MODNAME=\22ehci_dbgp\22 -D __KBUILD_MODNAME=kmod_ehci_dbgp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/usb/early/ehci-dbgp.ll drivers/usb/early/ehci-dbgp.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !42, retainedTypes: !214, globals: !226, splitDebugInlining: false, nameTableKind: None)
!42 = !{!43, !58, !68, !75, !80, !85, !91, !97, !104, !112, !120, !126, !135, !140, !145, !151, !159, !175, !182, !190, !196, !203}
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fixed_addresses", file: !44, line: 81, baseType: !45, size: 32, elements: !46)
!44 = !DIFile(filename: "./arch/x86/include/asm/fixmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f7ee1b51217b4f967bead339632e7de6")
!45 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!47 = !DIEnumerator(name: "VSYSCALL_PAGE", value: 511)
!48 = !DIEnumerator(name: "FIX_DBGP_BASE", value: 512)
!49 = !DIEnumerator(name: "FIX_EARLYCON_MEM_BASE", value: 513)
!50 = !DIEnumerator(name: "FIX_OHCI1394_BASE", value: 514)
!51 = !DIEnumerator(name: "FIX_APIC_BASE", value: 515)
!52 = !DIEnumerator(name: "FIX_IO_APIC_BASE_0", value: 516)
!53 = !DIEnumerator(name: "FIX_IO_APIC_BASE_END", value: 643)
!54 = !DIEnumerator(name: "__end_of_permanent_fixed_addresses", value: 644)
!55 = !DIEnumerator(name: "FIX_BTMAP_END", value: 1024)
!56 = !DIEnumerator(name: "FIX_BTMAP_BEGIN", value: 1535)
!57 = !DIEnumerator(name: "__end_of_fixed_addresses", value: 1536)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_cache_mode", file: !59, line: 168, baseType: !45, size: 32, elements: !60)
!59 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WB", value: 0)
!62 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WC", value: 1)
!63 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC_MINUS", value: 2)
!64 = !DIEnumerator(name: "_PAGE_CACHE_MODE_UC", value: 3)
!65 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WT", value: 4)
!66 = !DIEnumerator(name: "_PAGE_CACHE_MODE_WP", value: 5)
!67 = !DIEnumerator(name: "_PAGE_CACHE_MODE_NUM", value: 8)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !69, line: 312, baseType: !45, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!70 = !{!71, !72, !73, !74}
!71 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!72 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!73 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!74 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !76, line: 2052, baseType: !45, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!77 = !{!78, !79}
!78 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!79 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !81, line: 65, baseType: !45, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!82 = !{!83, !84}
!83 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!84 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !86, line: 16, baseType: !45, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "TT_NONE", value: 0)
!89 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!90 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !92, line: 45, baseType: !45, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!93 = !{!94, !95, !96}
!94 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!95 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!96 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !98, line: 487, baseType: !45, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!99 = !{!100, !101, !102, !103}
!100 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!101 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!102 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!103 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !105, line: 620, baseType: !45, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!106 = !{!107, !108, !109, !110, !111}
!107 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!108 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!109 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!110 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!111 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !105, line: 597, baseType: !113, size: 32, elements: !114)
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!116 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!117 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!118 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!119 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !121, line: 26, baseType: !45, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!122 = !{!123, !124, !125}
!123 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!124 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!125 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !98, line: 547, baseType: !45, size: 32, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134}
!128 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!130 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!131 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!132 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!133 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!134 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !98, line: 564, baseType: !45, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!138 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!139 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !98, line: 577, baseType: !45, size: 32, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!143 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!144 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !98, line: 503, baseType: !45, size: 32, elements: !146)
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!148 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!149 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!150 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !152, line: 68, baseType: !45, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!153 = !{!154, !155, !156, !157, !158}
!154 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!155 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!156 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!157 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!158 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !160, line: 1325, baseType: !45, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!162 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!163 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!164 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!165 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!166 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!167 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!168 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!169 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!170 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!171 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!172 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!173 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!174 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !176, line: 51, baseType: !45, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!177 = !{!178, !179, !180, !181}
!178 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!179 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!180 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!181 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !183, line: 9, baseType: !45, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!186 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!187 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!188 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!189 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !191, line: 54, baseType: !45, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "USRQUOTA", value: 0)
!194 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!195 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !197, line: 15, baseType: !45, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!198 = !{!199, !200, !201, !202}
!199 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!200 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!201 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!202 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cons_flags", file: !204, line: 160, baseType: !45, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/linux/console.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d83301157f54621331b27ae09c0fe11")
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213}
!206 = !DIEnumerator(name: "CON_PRINTBUFFER", value: 1)
!207 = !DIEnumerator(name: "CON_CONSDEV", value: 2)
!208 = !DIEnumerator(name: "CON_ENABLED", value: 4)
!209 = !DIEnumerator(name: "CON_BOOT", value: 8)
!210 = !DIEnumerator(name: "CON_ANYTIME", value: 16)
!211 = !DIEnumerator(name: "CON_BRL", value: 32)
!212 = !DIEnumerator(name: "CON_EXTENDED", value: 64)
!213 = !DIEnumerator(name: "CON_SUSPENDED", value: 128)
!214 = !{!215, !218, !217, !219, !221, !223}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !216, line: 14, baseType: !217)
!216 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!217 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !222, line: 36, baseType: !223)
!222 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !224, line: 24, baseType: !225)
!224 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!225 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!226 = !{!0, !7, !12, !17, !22, !27, !32, !37, !227, !232, !237, !5186, !5188, !39, !5190, !5234, !5245, !5247, !5254, !5259, !5264, !5268, !5270, !5272, !5274, !5276, !5281, !5283, !5285, !5290, !5292, !5294, !5296, !5304, !5306, !5311, !5313, !5315, !5320, !5325, !5330, !5332, !5334, !5336, !5338, !5341, !5343, !5348, !5353, !5355, !5357, !5362}
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !2, line: 898, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 19)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 903, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 20)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "early_dbgp_console", scope: !41, file: !2, line: 960, type: !239, isLocal: false, isDefinition: true)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "console", file: !204, line: 191, size: 1024, elements: !240)
!240 = !{!241, !245, !252, !257, !5163, !5164, !5168, !5172, !5176, !5177, !5178, !5179, !5181, !5182, !5183, !5184, !5185}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !204, line: 192, baseType: !242, size: 128)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 16)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !239, file: !204, line: 193, baseType: !246, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !249, !250, !45}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !239, file: !204, line: 194, baseType: !253, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!113, !249, !256, !45}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !239, file: !204, line: 195, baseType: !258, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !249, !835}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !263, line: 441, size: 1472, elements: !264)
!263 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!264 = !{!265, !280, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5152, !5153, !5155, !5157, !5160, !5161, !5162}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !262, file: !263, line: 442, baseType: !266, size: 32)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !267, line: 19, size: 32, elements: !268)
!267 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !266, file: !267, line: 20, baseType: !270, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !271, line: 113, baseType: !272)
!271 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !271, line: 111, size: 32, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !272, file: !271, line: 112, baseType: !275, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !276, line: 174, baseType: !277)
!276 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 172, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !277, file: !276, line: 173, baseType: !113, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !262, file: !263, line: 443, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !284, line: 14, size: 832, elements: !285)
!284 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!285 = !{!286, !5132, !5133, !5134, !5135, !5136}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !283, file: !284, line: 15, baseType: !287, size: 512)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !288, line: 64, size: 512, elements: !289)
!288 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!289 = !{!290, !291, !297, !299, !380, !5034, !5126, !5127, !5128, !5129, !5130, !5131}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !288, line: 65, baseType: !250, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !287, file: !288, line: 66, baseType: !292, size: 128, offset: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !276, line: 190, size: 128, elements: !293)
!293 = !{!294, !296}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !276, line: 191, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !292, file: !276, line: 191, baseType: !295, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !287, file: !288, line: 67, baseType: !298, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !287, file: !288, line: 68, baseType: !300, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !288, line: 168, size: 768, elements: !302)
!302 = !{!303, !304, !340, !341}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !301, file: !288, line: 169, baseType: !292, size: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !301, file: !288, line: 170, baseType: !305, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !306, line: 29, baseType: !307)
!306 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !306, line: 17, size: 32, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !306, line: 18, baseType: !310, size: 32)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !306, line: 18, size: 32, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !310, file: !306, line: 19, baseType: !313, size: 32)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !314, line: 14, size: 32, elements: !315)
!314 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !313, file: !314, line: 15, baseType: !317, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !318, line: 44, baseType: !319)
!318 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !318, line: 14, size: 32, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !318, line: 15, baseType: !322, size: 32)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !318, line: 15, size: 32, elements: !323)
!323 = !{!324, !325, !334}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !322, file: !318, line: 16, baseType: !275, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !318, line: 24, baseType: !326, size: 16)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !318, line: 24, size: 16, elements: !327)
!327 = !{!328, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !326, file: !318, line: 25, baseType: !329, size: 8)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !330, line: 17, baseType: !331)
!330 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !224, line: 21, baseType: !332)
!332 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !326, file: !318, line: 26, baseType: !329, size: 8, offset: 8)
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !318, line: 28, baseType: !335, size: 32)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !318, line: 28, size: 32, elements: !336)
!336 = !{!337, !339}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !335, file: !318, line: 29, baseType: !338, size: 16)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !330, line: 19, baseType: !223)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !335, file: !318, line: 30, baseType: !338, size: 16, offset: 16)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !301, file: !288, line: 171, baseType: !287, size: 512, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !301, file: !288, line: 172, baseType: !342, size: 64, offset: 704)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !288, line: 133, size: 192, elements: !345)
!345 = !{!346, !353, !358}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !344, file: !288, line: 134, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!113, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !288, line: 135, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!250, !351}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !344, file: !288, line: 136, baseType: !359, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!113, !351, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !288, line: 125, size: 20736, elements: !365)
!365 = !{!366, !370, !374, !375, !379}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !364, file: !288, line: 126, baseType: !367, size: 192)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 192, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 3)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !364, file: !288, line: 127, baseType: !371, size: 4096, offset: 192)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 4096, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !364, file: !288, line: 128, baseType: !113, size: 32, offset: 4288)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !364, file: !288, line: 129, baseType: !376, size: 16384, offset: 4320)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 2048)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !364, file: !288, line: 130, baseType: !113, size: 32, offset: 20704)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !287, file: !288, line: 69, baseType: !381, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !288, line: 116, size: 384, elements: !384)
!384 = !{!385, !389, !417, !5022, !5026, !5030}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !383, file: !288, line: 117, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !298}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !383, file: !288, line: 118, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !393, line: 254, size: 128, elements: !394)
!393 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!394 = !{!395, !410}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !392, file: !393, line: 255, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!399, !298, !404, !256}
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !276, line: 66, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !401, line: 73, baseType: !402)
!401 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !401, line: 15, baseType: !403)
!403 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !393, line: 30, size: 128, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !393, line: 31, baseType: !250, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !405, file: !393, line: 32, baseType: !409, size: 16, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !276, line: 24, baseType: !225)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !392, file: !393, line: 256, baseType: !411, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!399, !298, !404, !250, !414}
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !276, line: 61, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !401, line: 72, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !401, line: 16, baseType: !217)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !383, file: !288, line: 119, baseType: !418, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !393, line: 84, size: 320, elements: !422)
!422 = !{!423, !424, !428, !5018, !5020}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !421, file: !393, line: 85, baseType: !250, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !421, file: !393, line: 86, baseType: !425, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!409, !298, !404, !113}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !421, file: !393, line: 88, baseType: !429, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!409, !298, !432, !113}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !393, line: 175, size: 512, elements: !434)
!434 = !{!435, !436, !437, !438, !5009, !5013, !5014}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !433, file: !393, line: 176, baseType: !405, size: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !433, file: !393, line: 177, baseType: !414, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !433, file: !393, line: 178, baseType: !218, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !433, file: !393, line: 179, baseType: !439, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !76, line: 472, size: 1536, align: 64, elements: !444)
!444 = !{!445, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !5003, !5004, !5005, !5006, !5007, !5008}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !443, file: !76, line: 473, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !76, line: 641, size: 4800, elements: !448)
!448 = !{!449, !450, !451, !459, !460, !467, !468, !471, !472, !4784, !4785, !4786, !4787, !4788, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4828, !4831, !4832, !4833, !4840, !4841, !4842, !4843}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !447, file: !76, line: 642, baseType: !409, size: 16)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !447, file: !76, line: 643, baseType: !225, size: 16, offset: 16)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !447, file: !76, line: 644, baseType: !452, size: 32, offset: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !453, line: 23, baseType: !454)
!453 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 21, size: 32, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !454, file: !453, line: 22, baseType: !457, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !276, line: 37, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !401, line: 49, baseType: !45)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !447, file: !76, line: 645, baseType: !292, size: 128, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !447, file: !76, line: 646, baseType: !461, size: 32, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !453, line: 28, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 26, size: 32, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !462, file: !453, line: 27, baseType: !465, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !276, line: 38, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !401, line: 50, baseType: !45)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !447, file: !76, line: 647, baseType: !45, size: 32, offset: 224)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !447, file: !76, line: 650, baseType: !469, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !76, line: 607, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !447, file: !76, line: 651, baseType: !469, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !447, file: !76, line: 654, baseType: !473, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !76, line: 1966, size: 2048, align: 512, elements: !476)
!476 = !{!477, !4618, !4628, !4632, !4636, !4640, !4644, !4648, !4652, !4656, !4660, !4661, !4665, !4669, !4706, !4735, !4739, !4745, !4749, !4753, !4757, !4761, !4765, !4771, !4775}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !475, file: !76, line: 1967, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!481, !446, !481, !45}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !483, line: 82, size: 1536, elements: !484)
!483 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!484 = !{!485, !486, !496, !504, !505, !525, !526, !530, !543, !4601, !4602, !4603, !4604, !4610, !4611, !4612}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !482, file: !483, line: 84, baseType: !45, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !482, file: !483, line: 85, baseType: !487, size: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !488, line: 275, baseType: !489)
!488 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !488, line: 275, size: 32, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !489, file: !488, line: 275, baseType: !492, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !488, line: 69, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !488, line: 64, size: 32, elements: !494)
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !493, file: !488, line: 65, baseType: !45, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !482, file: !483, line: 86, baseType: !497, size: 128, offset: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !498, line: 38, size: 128, elements: !499)
!498 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!499 = !{!500, !502}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !498, line: 39, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !497, file: !498, line: 39, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !482, file: !483, line: 87, baseType: !481, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !482, file: !483, line: 88, baseType: !506, size: 128, offset: 256)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !483, line: 49, size: 128, elements: !507)
!507 = !{!508, !522}
!508 = !DIDerivedType(tag: DW_TAG_member, scope: !506, file: !483, line: 50, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !506, file: !483, line: 50, size: 64, elements: !510)
!510 = !{!511, !518}
!511 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !483, line: 51, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !509, file: !483, line: 51, size: 64, elements: !513)
!513 = !{!514, !517}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !512, file: !483, line: 52, baseType: !515, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !330, line: 21, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !224, line: 27, baseType: !45)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !512, file: !483, line: 52, baseType: !515, size: 32, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !509, file: !483, line: 54, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !330, line: 23, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !224, line: 31, baseType: !521)
!521 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !506, file: !483, line: 56, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !482, file: !483, line: 89, baseType: !446, size: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !482, file: !483, line: 91, baseType: !527, size: 256, offset: 448)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 256, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !482, file: !483, line: 94, baseType: !531, size: 64, offset: 704)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !532, line: 25, size: 64, elements: !533)
!532 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !532, line: 26, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !532, line: 26, size: 64, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !535, file: !532, line: 28, baseType: !520, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !532, line: 30, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !532, line: 30, size: 64, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !539, file: !532, line: 31, baseType: !305, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !539, file: !532, line: 32, baseType: !113, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !482, file: !483, line: 95, baseType: !544, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !483, line: 128, size: 1024, align: 512, elements: !547)
!547 = !{!548, !552, !553, !560, !566, !570, !574, !578, !579, !583, !587, !4591, !4595}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !546, file: !483, line: 129, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!113, !481, !45}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !546, file: !483, line: 130, baseType: !549, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !546, file: !483, line: 131, baseType: !554, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!113, !557, !559}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !546, file: !483, line: 132, baseType: !561, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!113, !557, !45, !250, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !546, file: !483, line: 134, baseType: !567, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!113, !557}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !546, file: !483, line: 135, baseType: !571, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!113, !481}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !546, file: !483, line: 136, baseType: !575, size: 64, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !481}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !546, file: !483, line: 137, baseType: !575, size: 64, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !546, file: !483, line: 138, baseType: !580, size: 64, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !481, !446}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !546, file: !483, line: 139, baseType: !584, size: 64, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!256, !481, !256, !113}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !546, file: !483, line: 140, baseType: !588, size: 64, offset: 640)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!591, !4590}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !593, line: 70, size: 256, elements: !594)
!593 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!594 = !{!595, !596, !4586, !4587}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !592, file: !593, line: 71, baseType: !481, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !592, file: !593, line: 72, baseType: !597, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !76, line: 1190, size: 10752, elements: !599)
!599 = !{!600, !601, !604, !605, !606, !610, !1089, !4291, !4331, !4416, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4433, !4437, !4438, !4441, !4444, !4447, !4450, !4451, !4452, !4493, !4519, !4520, !4521, !4522, !4523, !4524, !4527, !4529, !4536, !4537, !4538, !4539, !4540, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !598, file: !76, line: 1191, baseType: !292, size: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !598, file: !76, line: 1192, baseType: !602, size: 32, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !276, line: 21, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !276, line: 18, baseType: !515)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !598, file: !76, line: 1193, baseType: !332, size: 8, offset: 160)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !598, file: !76, line: 1194, baseType: !217, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !598, file: !76, line: 1195, baseType: !607, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !276, line: 52, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !401, line: 88, baseType: !609)
!609 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !598, file: !76, line: 1196, baseType: !611, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !76, line: 2366, size: 576, elements: !613)
!613 = !{!614, !615, !616, !622, !626, !630, !634, !1074, !1075, !1079, !1081, !1082, !1083, !1085, !1086, !1087, !1088}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !612, file: !76, line: 2367, baseType: !250, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !612, file: !76, line: 2368, baseType: !113, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !612, file: !76, line: 2376, baseType: !617, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!113, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !593, line: 21, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !612, file: !76, line: 2377, baseType: !623, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !76, line: 75, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !612, file: !76, line: 2378, baseType: !627, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!481, !611, !113, !250, !218}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !612, file: !76, line: 2380, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !597}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !612, file: !76, line: 2381, baseType: !635, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !69, line: 402, size: 9216, align: 512, elements: !637)
!637 = !{!638, !639, !640, !644, !666, !692, !693, !694, !695, !699, !704, !705, !725, !781, !782, !783, !784, !785, !788, !789, !790, !798, !802, !829, !850, !851, !852, !853, !862, !885, !886, !889, !892, !893, !894, !895, !896, !897, !898, !903, !904, !1032, !1040, !1041, !1042, !1044, !1048, !1049, !1053, !1054, !1055, !1056, !1058, !1059, !1060, !1067, !1068, !1069, !1073}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !636, file: !69, line: 403, baseType: !68, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !636, file: !69, line: 406, baseType: !292, size: 128, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !636, file: !69, line: 409, baseType: !641, size: 448, offset: 192)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 56)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !636, file: !69, line: 417, baseType: !645, size: 768, offset: 640)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !69, line: 45, size: 768, elements: !646)
!646 = !{!647, !648, !649, !650, !653}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !645, file: !69, line: 46, baseType: !287, size: 512)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !645, file: !69, line: 47, baseType: !635, size: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !645, file: !69, line: 48, baseType: !298, size: 64, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !645, file: !69, line: 49, baseType: !651, size: 64, offset: 640)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !69, line: 49, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !645, file: !69, line: 50, baseType: !654, size: 64, offset: 704)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !656, line: 26, size: 256, elements: !657)
!656 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !655, file: !656, line: 27, baseType: !45, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !655, file: !656, line: 28, baseType: !660, size: 192, offset: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !661, line: 43, size: 192, elements: !662)
!661 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!662 = !{!663, !665}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !660, file: !661, line: 44, baseType: !664, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !314, line: 23, baseType: !313)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !660, file: !661, line: 45, baseType: !292, size: 128, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !636, file: !69, line: 418, baseType: !667, size: 64, offset: 1408)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !69, line: 53, size: 448, elements: !669)
!669 = !{!670, !671, !676, !680, !684, !688}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !668, file: !69, line: 54, baseType: !405, size: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !668, file: !69, line: 55, baseType: !672, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!399, !667, !675, !256}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !668, file: !69, line: 57, baseType: !677, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!399, !667, !675, !250, !414}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !668, file: !69, line: 59, baseType: !681, size: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !635, !250}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !668, file: !69, line: 60, baseType: !685, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!113, !635}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !668, file: !69, line: 61, baseType: !689, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !635}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !636, file: !69, line: 419, baseType: !250, size: 64, offset: 1472)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !636, file: !69, line: 420, baseType: !250, size: 64, offset: 1536)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !636, file: !69, line: 421, baseType: !298, size: 64, offset: 1600)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !636, file: !69, line: 424, baseType: !696, size: 64, offset: 1664)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !69, line: 424, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !636, file: !69, line: 425, baseType: !700, size: 64, offset: 1728)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !330, line: 20, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !224, line: 26, baseType: !113)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !636, file: !69, line: 426, baseType: !45, size: 32, offset: 1792)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !636, file: !69, line: 435, baseType: !706, size: 256, offset: 1856)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !707, line: 66, size: 256, elements: !708)
!707 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!708 = !{!709, !718, !719, !724}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !706, file: !707, line: 67, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !711, line: 13, baseType: !712)
!711 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !276, line: 181, baseType: !713)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 179, size: 64, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !713, file: !276, line: 180, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !330, line: 22, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !224, line: 30, baseType: !609)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !706, file: !707, line: 68, baseType: !664, size: 32, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !706, file: !707, line: 70, baseType: !720, size: 32, offset: 96)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !721, line: 15, size: 32, elements: !722)
!721 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !720, file: !721, line: 20, baseType: !275, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !706, file: !707, line: 72, baseType: !292, size: 128, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !636, file: !69, line: 437, baseType: !726, size: 64, offset: 2112)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !728, line: 69, size: 320, elements: !729)
!728 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!729 = !{!730, !731, !732, !752, !754, !758, !759}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !727, file: !728, line: 70, baseType: !250, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !727, file: !728, line: 71, baseType: !635, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !727, file: !728, line: 72, baseType: !733, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !728, line: 47, size: 256, elements: !736)
!736 = !{!737, !738, !744, !748}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !728, line: 49, baseType: !45, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !735, file: !728, line: 51, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!113, !250, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !735, file: !728, line: 53, baseType: !745, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!113, !256, !742}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !735, file: !728, line: 55, baseType: !749, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !218}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !727, file: !728, line: 73, baseType: !753, size: 16, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !727, file: !728, line: 74, baseType: !755, size: 8, offset: 208)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !330, line: 16, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !224, line: 20, baseType: !757)
!757 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !728, line: 75, baseType: !329, size: 8, offset: 216)
!759 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !728, line: 76, baseType: !760, size: 64, offset: 256)
!760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !728, line: 76, size: 64, elements: !761)
!761 = !{!762, !763, !770}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !760, file: !728, line: 77, baseType: !218, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !760, file: !728, line: 78, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !728, line: 86, size: 128, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !766, file: !728, line: 87, baseType: !45, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !766, file: !728, line: 88, baseType: !256, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !760, file: !728, line: 79, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !728, line: 92, size: 256, elements: !774)
!774 = !{!775, !776, !777, !779, !780}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !773, file: !728, line: 94, baseType: !45, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !773, file: !728, line: 95, baseType: !45, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !773, file: !728, line: 96, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !773, file: !728, line: 97, baseType: !733, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !773, file: !728, line: 98, baseType: !218, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !636, file: !69, line: 438, baseType: !45, size: 32, offset: 2176)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !636, file: !69, line: 441, baseType: !45, size: 32, offset: 2208)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !636, file: !69, line: 442, baseType: !696, size: 64, offset: 2240)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !636, file: !69, line: 443, baseType: !700, size: 64, offset: 2304)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !636, file: !69, line: 444, baseType: !786, size: 8, offset: 2368)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !276, line: 35, baseType: !787)
!787 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !636, file: !69, line: 451, baseType: !786, size: 8, offset: 2376)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !636, file: !69, line: 454, baseType: !45, size: 32, offset: 2400)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !636, file: !69, line: 455, baseType: !791, size: 64, offset: 2432)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !793, line: 23, size: 96, elements: !794)
!793 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!794 = !{!795, !796, !797}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !792, file: !793, line: 24, baseType: !113, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !792, file: !793, line: 24, baseType: !113, size: 32, offset: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !792, file: !793, line: 24, baseType: !113, size: 32, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !636, file: !69, line: 458, baseType: !799, size: 64, offset: 2496)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!113}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !636, file: !69, line: 460, baseType: !803, size: 4032, align: 512, offset: 2560)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 4032, elements: !827)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !69, line: 362, size: 576, elements: !805)
!805 = !{!806, !807, !808}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !804, file: !69, line: 363, baseType: !218, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !804, file: !69, line: 364, baseType: !45, size: 32, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !804, file: !69, line: 367, baseType: !809, size: 448, offset: 128)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !69, line: 319, size: 448, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !809, file: !69, line: 320, baseType: !635, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !809, file: !69, line: 321, baseType: !813, size: 384, offset: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !814, line: 40, size: 384, elements: !815)
!814 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !813, file: !814, line: 41, baseType: !817, size: 384, align: 64)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 384, align: 64, elements: !825)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !819, line: 5, size: 192, align: 64, elements: !820)
!819 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!820 = !{!821, !822, !824}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !818, file: !819, line: 6, baseType: !217, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !818, file: !819, line: 7, baseType: !823, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !818, file: !819, line: 8, baseType: !823, size: 64, offset: 128)
!825 = !{!826}
!826 = !DISubrange(count: 2)
!827 = !{!828}
!828 = !DISubrange(count: 7)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !636, file: !69, line: 463, baseType: !830, size: 192, offset: 6592)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !831, line: 8, size: 192, elements: !832)
!831 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!832 = !{!833, !834, !836}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !830, file: !831, line: 10, baseType: !45, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !830, file: !831, line: 11, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !830, file: !831, line: 12, baseType: !837, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !839, line: 59, size: 48, elements: !840)
!839 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!840 = !{!841, !845, !846, !847, !848, !849}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !838, file: !839, line: 60, baseType: !842, size: 16)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !330, line: 18, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !224, line: 23, baseType: !844)
!844 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !838, file: !839, line: 61, baseType: !842, size: 16, offset: 16)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !838, file: !839, line: 63, baseType: !45, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !838, file: !839, line: 64, baseType: !45, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !838, file: !839, line: 65, baseType: !45, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !838, file: !839, line: 66, baseType: !45, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !636, file: !69, line: 465, baseType: !217, size: 64, offset: 6784)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !636, file: !69, line: 469, baseType: !45, size: 32, offset: 6848)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !636, file: !69, line: 470, baseType: !292, size: 128, offset: 6912)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !636, file: !69, line: 471, baseType: !854, size: 64, offset: 7040)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !856, line: 33, size: 96, elements: !857)
!856 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!857 = !{!858, !859, !860, !861}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !855, file: !856, line: 37, baseType: !113, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !855, file: !856, line: 43, baseType: !113, size: 32, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !855, file: !856, line: 45, baseType: !225, size: 16, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !855, file: !856, line: 47, baseType: !225, size: 16, offset: 80)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !636, file: !69, line: 476, baseType: !863, size: 64, offset: 7104)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !69, line: 378, size: 256, elements: !865)
!865 = !{!866, !882, !883, !884}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !864, file: !69, line: 379, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !869, line: 204, baseType: !870)
!869 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !869, line: 197, size: 192, elements: !871)
!871 = !{!872, !874, !875, !876, !878, !880}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !870, file: !869, line: 198, baseType: !873, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !869, line: 21, baseType: !516)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !870, file: !869, line: 199, baseType: !332, size: 8, offset: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !870, file: !869, line: 200, baseType: !332, size: 8, offset: 40)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !870, file: !869, line: 201, baseType: !877, size: 16, offset: 48)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !869, line: 17, baseType: !223)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !870, file: !869, line: 202, baseType: !879, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !869, line: 16, baseType: !520)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !870, file: !869, line: 203, baseType: !881, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !869, line: 22, baseType: !520)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !864, file: !69, line: 380, baseType: !45, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !864, file: !69, line: 381, baseType: !256, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !864, file: !69, line: 382, baseType: !256, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !636, file: !69, line: 477, baseType: !864, size: 256, offset: 7168)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !636, file: !69, line: 480, baseType: !887, size: 64, offset: 7424)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !69, line: 480, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !636, file: !69, line: 483, baseType: !890, size: 64, offset: 7488)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !69, line: 483, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !636, file: !69, line: 488, baseType: !256, size: 64, offset: 7552)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !636, file: !69, line: 492, baseType: !218, size: 64, offset: 7616)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !636, file: !69, line: 493, baseType: !45, size: 32, offset: 7680)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !636, file: !69, line: 495, baseType: !218, size: 64, offset: 7744)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !636, file: !69, line: 496, baseType: !45, size: 32, offset: 7808)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !636, file: !69, line: 499, baseType: !45, size: 32, offset: 7840)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !636, file: !69, line: 500, baseType: !899, size: 64, offset: 7872)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !901, line: 45, baseType: !902)
!901 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !636, file: !69, line: 503, baseType: !45, size: 32, offset: 7936)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !636, file: !69, line: 504, baseType: !905, size: 64, offset: 8000)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !908, line: 96, size: 192, elements: !909)
!908 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!909 = !{!910, !911, !992, !996}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !907, file: !908, line: 97, baseType: !45, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !907, file: !908, line: 98, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !908, line: 24, size: 3072, elements: !914)
!914 = !{!915, !917, !918, !919, !920, !944, !945, !946, !947, !965, !977, !978, !989, !990, !991}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !913, file: !908, line: 26, baseType: !916, size: 128)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, size: 128, elements: !825)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !913, file: !908, line: 27, baseType: !916, size: 128, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !913, file: !908, line: 28, baseType: !113, size: 32, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !913, file: !908, line: 31, baseType: !305, size: 32, align: 512, offset: 512)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !913, file: !908, line: 32, baseType: !921, size: 960, offset: 576)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !922, line: 206, size: 960, elements: !923)
!922 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!923 = !{!924, !933, !938, !940, !941, !943}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !921, file: !922, line: 207, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !276, line: 232, size: 128, align: 64, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !926, file: !276, line: 233, baseType: !925, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !926, file: !276, line: 234, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !925}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !921, file: !922, line: 208, baseType: !934, size: 256, offset: 64)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 256, elements: !936)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!936 = !{!937}
!937 = !DISubrange(count: 4)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !921, file: !922, line: 209, baseType: !939, size: 256, offset: 320)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !936)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !921, file: !922, line: 213, baseType: !403, size: 64, offset: 576)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !921, file: !922, line: 215, baseType: !942, size: 256, offset: 640)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 256, elements: !936)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !921, file: !922, line: 216, baseType: !329, size: 8, offset: 896)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !913, file: !908, line: 33, baseType: !217, size: 64, offset: 1536)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !913, file: !908, line: 34, baseType: !217, size: 64, offset: 1600)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !913, file: !908, line: 35, baseType: !786, size: 8, offset: 1664)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !913, file: !908, line: 36, baseType: !948, size: 320, offset: 1728)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !949, line: 11, size: 320, elements: !950)
!949 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!950 = !{!951, !958, !959, !964}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !948, file: !949, line: 16, baseType: !952, size: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !276, line: 198, size: 128, elements: !953)
!953 = !{!954, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !952, file: !276, line: 199, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !952, file: !276, line: 199, baseType: !957, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !948, file: !949, line: 17, baseType: !217, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !948, file: !949, line: 18, baseType: !960, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !963}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !948, file: !949, line: 19, baseType: !515, size: 32, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !913, file: !908, line: 37, baseType: !966, size: 256, offset: 2048)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !967, line: 98, size: 256, elements: !968)
!967 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !966, file: !967, line: 99, baseType: !710, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !966, file: !967, line: 100, baseType: !292, size: 128, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !966, file: !967, line: 101, baseType: !972, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !967, line: 21, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !913, file: !908, line: 38, baseType: !926, size: 128, align: 64, offset: 2304)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !913, file: !908, line: 39, baseType: !979, size: 64, offset: 2432)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !908, line: 49, size: 768, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987, !988}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !980, file: !908, line: 50, baseType: !305, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !980, file: !908, line: 51, baseType: !939, size: 256, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !980, file: !908, line: 53, baseType: !939, size: 256, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !980, file: !908, line: 54, baseType: !217, size: 64, offset: 576)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !980, file: !908, line: 55, baseType: !979, size: 64, offset: 640)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !980, file: !908, line: 56, baseType: !113, size: 32, offset: 704)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !980, file: !908, line: 57, baseType: !113, size: 32, offset: 736)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !913, file: !908, line: 40, baseType: !217, size: 64, offset: 2496)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !913, file: !908, line: 42, baseType: !113, size: 32, offset: 2560)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !913, file: !908, line: 43, baseType: !906, size: 64, offset: 2624)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !907, file: !908, line: 99, baseType: !993, offset: 128)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !994, line: 211, elements: !995)
!994 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!995 = !{}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !907, file: !908, line: 100, baseType: !997, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !908, line: 63, size: 3008, elements: !999)
!999 = !{!1000, !1001, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1031}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !998, file: !908, line: 64, baseType: !979, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !998, file: !908, line: 65, baseType: !1002, size: 192, offset: 64)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !979, size: 192, elements: !368)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !998, file: !908, line: 67, baseType: !113, size: 32, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !998, file: !908, line: 68, baseType: !706, size: 256, offset: 320)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !998, file: !908, line: 69, baseType: !305, size: 32, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !998, file: !908, line: 70, baseType: !706, size: 256, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !998, file: !908, line: 71, baseType: !217, size: 64, offset: 896)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !998, file: !908, line: 72, baseType: !217, size: 64, offset: 960)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !998, file: !908, line: 73, baseType: !217, size: 64, offset: 1024)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !998, file: !908, line: 74, baseType: !217, size: 64, offset: 1088)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !998, file: !908, line: 75, baseType: !217, size: 64, offset: 1152)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !998, file: !908, line: 76, baseType: !217, size: 64, offset: 1216)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !998, file: !908, line: 77, baseType: !217, size: 64, offset: 1280)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !998, file: !908, line: 78, baseType: !217, size: 64, offset: 1344)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !998, file: !908, line: 79, baseType: !786, size: 8, offset: 1408)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !998, file: !908, line: 80, baseType: !217, size: 64, offset: 1472)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !998, file: !908, line: 81, baseType: !706, size: 256, offset: 1536)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !998, file: !908, line: 82, baseType: !655, size: 256, offset: 1792)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !998, file: !908, line: 84, baseType: !275, size: 32, offset: 2048)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !998, file: !908, line: 87, baseType: !217, size: 64, offset: 2112)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !998, file: !908, line: 88, baseType: !217, size: 64, offset: 2176)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !998, file: !908, line: 89, baseType: !1023, size: 704, offset: 2240)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !967, line: 111, size: 704, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1030}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1023, file: !967, line: 112, baseType: !966, size: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1023, file: !967, line: 113, baseType: !948, size: 320, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1023, file: !967, line: 116, baseType: !1028, size: 64, offset: 576)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !967, line: 18, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1023, file: !967, line: 117, baseType: !113, size: 32, offset: 640)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !998, file: !908, line: 90, baseType: !906, size: 64, offset: 2944)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !636, file: !69, line: 515, baseType: !1033, size: 64, offset: 8064)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1035, line: 117, size: 128, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1034, file: !1035, line: 118, baseType: !702, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1034, file: !1035, line: 119, baseType: !702, size: 32, offset: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1034, file: !1035, line: 120, baseType: !403, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !636, file: !69, line: 516, baseType: !45, size: 32, offset: 8128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !636, file: !69, line: 519, baseType: !45, size: 32, offset: 8160)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !636, file: !69, line: 520, baseType: !1043, size: 64, offset: 8192)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !636, file: !69, line: 523, baseType: !1045, size: 64, offset: 8256)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !69, line: 523, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !636, file: !69, line: 524, baseType: !45, size: 32, offset: 8320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !636, file: !69, line: 525, baseType: !1050, size: 64, offset: 8384)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !69, line: 525, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !636, file: !69, line: 526, baseType: !45, size: 32, offset: 8448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !636, file: !69, line: 533, baseType: !218, size: 64, offset: 8512)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !636, file: !69, line: 534, baseType: !45, size: 32, offset: 8576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !636, file: !69, line: 535, baseType: !1057, size: 64, offset: 8640)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !636, file: !69, line: 536, baseType: !45, size: 32, offset: 8704)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !636, file: !69, line: 539, baseType: !113, size: 32, offset: 8736)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !636, file: !69, line: 540, baseType: !1061, size: 64, offset: 8768)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1063, line: 32, size: 64, elements: !1064)
!1063 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1062, file: !1063, line: 33, baseType: !702, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1062, file: !1063, line: 34, baseType: !702, size: 32, offset: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !636, file: !69, line: 563, baseType: !292, size: 128, offset: 8832)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !636, file: !69, line: 565, baseType: !292, size: 128, offset: 8960)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !636, file: !69, line: 568, baseType: !1070, size: 64, offset: 9088)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !636, file: !69, line: 570, baseType: !275, size: 32, offset: 9152)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !612, file: !76, line: 2382, baseType: !611, size: 64, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !612, file: !76, line: 2383, baseType: !1076, size: 64, offset: 512)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !276, line: 194, size: 64, elements: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1076, file: !276, line: 195, baseType: !955, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !612, file: !76, line: 2385, baseType: !1080, offset: 576)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !994, line: 206, elements: !995)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !612, file: !76, line: 2386, baseType: !1080, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !612, file: !76, line: 2387, baseType: !1080, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !612, file: !76, line: 2388, baseType: !1084, offset: 576)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1080, elements: !368)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !612, file: !76, line: 2390, baseType: !1080, offset: 576)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !612, file: !76, line: 2391, baseType: !1080, offset: 576)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !612, file: !76, line: 2392, baseType: !1080, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !612, file: !76, line: 2393, baseType: !1080, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !598, file: !76, line: 1197, baseType: !1090, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !76, line: 2057, size: 1664, elements: !1093)
!1093 = !{!1094, !1098, !1102, !1103, !1107, !1113, !1117, !1118, !1119, !1123, !1127, !1131, !1132, !1133, !1139, !1143, !1144, !4216, !4217, !4218, !4219, !4223, !4227, !4274, !4289, !4290}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1092, file: !76, line: 2058, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!446, !597}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1092, file: !76, line: 2059, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !446}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1092, file: !76, line: 2060, baseType: !1099, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1092, file: !76, line: 2062, baseType: !1104, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !446, !113}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1092, file: !76, line: 2063, baseType: !1108, size: 64, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!113, !446, !1111}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !76, line: 309, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1092, file: !76, line: 2064, baseType: !1114, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!113, !446}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1092, file: !76, line: 2065, baseType: !1099, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1092, file: !76, line: 2066, baseType: !631, size: 64, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1092, file: !76, line: 2067, baseType: !1120, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!113, !597, !113}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1092, file: !76, line: 2068, baseType: !1124, size: 64, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!113, !597, !75}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1092, file: !76, line: 2069, baseType: !1128, size: 64, offset: 640)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!113, !597}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1092, file: !76, line: 2070, baseType: !1124, size: 64, offset: 704)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1092, file: !76, line: 2071, baseType: !1128, size: 64, offset: 768)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1092, file: !76, line: 2072, baseType: !1134, size: 64, offset: 832)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!113, !481, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !76, line: 62, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1092, file: !76, line: 2073, baseType: !1140, size: 64, offset: 896)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!113, !597, !835, !256}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1092, file: !76, line: 2074, baseType: !631, size: 64, offset: 960)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1092, file: !76, line: 2076, baseType: !1145, size: 64, offset: 1024)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!113, !1148, !481}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1150, line: 17, size: 960, elements: !1151)
!1150 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1182, !1183, !4215}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1149, file: !1150, line: 18, baseType: !256, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1149, file: !1150, line: 19, baseType: !414, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1149, file: !1150, line: 20, baseType: !414, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1149, file: !1150, line: 21, baseType: !414, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1149, file: !1150, line: 22, baseType: !414, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1149, file: !1150, line: 23, baseType: !607, size: 64, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1149, file: !1150, line: 24, baseType: !607, size: 64, offset: 384)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1149, file: !1150, line: 25, baseType: !706, size: 256, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1149, file: !1150, line: 26, baseType: !1161, size: 64, offset: 704)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1150, line: 32, size: 256, elements: !1164)
!1164 = !{!1165, !1170, !1174, !1178}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1163, file: !1150, line: 33, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!218, !1148, !1169}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1163, file: !1150, line: 34, baseType: !1171, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !1148, !218}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1163, file: !1150, line: 35, baseType: !1175, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!218, !1148, !218, !1169}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1163, file: !1150, line: 36, baseType: !1179, size: 64, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!113, !1148, !218}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1149, file: !1150, line: 27, baseType: !113, size: 32, offset: 768)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1149, file: !1150, line: 28, baseType: !1184, size: 64, offset: 832)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !76, line: 994, size: 1856, align: 64, elements: !1187)
!1187 = !{!1188, !1199, !1200, !1202, !1203, !1204, !1205, !1206, !4034, !4035, !4044, !4050, !4051, !4205, !4206, !4207, !4208, !4210, !4211, !4214}
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !76, line: 995, baseType: !1189, size: 128)
!1189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !76, line: 995, size: 128, elements: !1190)
!1190 = !{!1191, !1197, !1198}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1189, file: !76, line: 996, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1193, line: 60, size: 64, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1192, file: !1193, line: 61, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1189, file: !76, line: 997, baseType: !926, size: 128, align: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1189, file: !76, line: 998, baseType: !45, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1186, file: !76, line: 1005, baseType: !305, size: 32, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1186, file: !76, line: 1006, baseType: !1201, size: 32, offset: 160)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !276, line: 156, baseType: !45)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1186, file: !76, line: 1007, baseType: !710, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1186, file: !76, line: 1008, baseType: !706, size: 256, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1186, file: !76, line: 1009, baseType: !607, size: 64, offset: 512)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1186, file: !76, line: 1010, baseType: !45, size: 32, offset: 576)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1186, file: !76, line: 1011, baseType: !1207, size: 256, offset: 640)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !76, line: 948, size: 256, elements: !1208)
!1208 = !{!1209, !1230, !4030, !4031, !4032, !4033}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1207, file: !76, line: 949, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1211, line: 34, baseType: !1212)
!1211 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1211, line: 25, size: 64, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1212, file: !1211, line: 26, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1216, line: 27, baseType: !1217)
!1216 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1216, line: 13, size: 64, elements: !1218)
!1218 = !{!1219, !1229}
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !1216, line: 14, baseType: !1220, size: 32)
!1220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1217, file: !1216, line: 14, size: 32, elements: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1220, file: !1216, line: 15, baseType: !275, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !1216, line: 16, baseType: !1224, size: 32)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !1216, line: 16, size: 32, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1224, file: !1216, line: 18, baseType: !329, size: 8)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1224, file: !1216, line: 19, baseType: !1228, size: 24, offset: 8)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 24, elements: !368)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1217, file: !1216, line: 26, baseType: !317, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1207, file: !76, line: 950, baseType: !1231, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !183, line: 59, size: 768, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1239, !1240, !1247, !1248}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1232, file: !183, line: 61, baseType: !270, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1232, file: !183, line: 62, baseType: !45, size: 32, offset: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1232, file: !183, line: 63, baseType: !305, size: 32, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1232, file: !183, line: 65, baseType: !1238, size: 256, offset: 128)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, size: 256, elements: !936)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1232, file: !183, line: 66, baseType: !1076, size: 64, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1232, file: !183, line: 68, baseType: !1241, size: 192, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1242, line: 41, baseType: !1243)
!1242 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1242, line: 37, size: 192, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1243, file: !1242, line: 38, baseType: !305, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1243, file: !1242, line: 39, baseType: !292, size: 128, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1232, file: !183, line: 69, baseType: !926, size: 128, align: 64, offset: 640)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1232, file: !183, line: 70, baseType: !1249, offset: 768)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1250, elements: !1734)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !183, line: 54, size: 128, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1250, file: !183, line: 55, baseType: !113, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1250, file: !183, line: 56, baseType: !1254, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1256, line: 26, size: 1152, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1257 = !{!1258, !1272, !1273, !1274, !4006, !4010, !4011, !4012, !4015, !4016, !4017, !4018, !4029}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1255, file: !1256, line: 27, baseType: !1259, size: 192)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1260, line: 19, size: 192, elements: !1261)
!1260 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1261 = !{!1262, !1270, !1271}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1259, file: !1260, line: 20, baseType: !1263, size: 128)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1264, line: 296, size: 128, elements: !1265)
!1264 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1265 = !{!1266, !1267, !1269}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1263, file: !1264, line: 297, baseType: !305, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1263, file: !1264, line: 299, baseType: !1268, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !276, line: 154, baseType: !45)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1263, file: !1264, line: 300, baseType: !218, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1259, file: !1260, line: 21, baseType: !45, size: 32, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1259, file: !1260, line: 22, baseType: !45, size: 32, offset: 160)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1255, file: !1256, line: 28, baseType: !926, size: 128, align: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1255, file: !1256, line: 29, baseType: !45, size: 32, offset: 320)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1255, file: !1256, line: 30, baseType: !1275, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1277, line: 746, size: 58368, elements: !1278)
!1277 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1278 = !{!1279, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1359, !1370, !1465, !1469, !1472, !1503, !1504, !1505, !1506, !1517, !1519, !1520, !1521, !1522, !1523, !1524, !1535, !1536, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1553, !1554, !1561, !1562, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1815, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1863, !1869, !2051, !2052, !2053, !2054, !2055, !2058, !2065, !2070, !2073, !2076, !2079, !2105, !3127, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3165, !3166, !3167, !3176, !3184, !3185, !3186, !3187, !3188, !3193, !3194, !3195, !3198, !3199, !3202, !3205, !3208, !3216, !3219, !3220, !3306, !3307, !3308, !3309, !3310, !3316, !3317, !3318, !3319, !3322, !3323, !3326, !3329, !3330, !3333, !3334, !3335, !3338, !3339, !3340, !3343, !3344, !3345, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3377, !3380, !3668, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3680, !3752, !3754, !3755, !3756, !3757, !3758, !3759, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1276, file: !1277, line: 752, baseType: !1280, size: 192)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1281, line: 56, size: 192, elements: !1282)
!1281 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1282 = !{!1283, !1284, !1285, !1286}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1280, file: !1281, line: 57, baseType: !217, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1280, file: !1281, line: 58, baseType: !217, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1280, file: !1281, line: 59, baseType: !515, size: 32, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1280, file: !1281, line: 61, baseType: !515, size: 32, offset: 160)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1276, file: !1277, line: 754, baseType: !45, size: 32, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1276, file: !1277, line: 767, baseType: !218, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1276, file: !1277, line: 768, baseType: !270, size: 32, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1276, file: !1277, line: 770, baseType: !45, size: 32, offset: 352)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1276, file: !1277, line: 771, baseType: !45, size: 32, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1276, file: !1277, line: 774, baseType: !113, size: 32, offset: 416)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1276, file: !1277, line: 775, baseType: !1294, size: 128, offset: 448)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1295, line: 58, size: 128, elements: !1296)
!1295 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1296 = !{!1297, !1298, !1303, !1304}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1294, file: !1295, line: 59, baseType: !1192, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !1295, line: 60, baseType: !1299, size: 32, offset: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !1295, line: 60, size: 32, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1299, file: !1295, line: 61, baseType: !45, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1299, file: !1295, line: 62, baseType: !275, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1294, file: !1295, line: 65, baseType: !338, size: 16, offset: 96)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1294, file: !1295, line: 65, baseType: !338, size: 16, offset: 112)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1276, file: !1277, line: 776, baseType: !45, size: 32, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1276, file: !1277, line: 777, baseType: !217, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1276, file: !1277, line: 778, baseType: !1275, size: 64, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1276, file: !1277, line: 787, baseType: !113, size: 32, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1276, file: !1277, line: 788, baseType: !113, size: 32, offset: 800)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1276, file: !1277, line: 790, baseType: !113, size: 32, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1276, file: !1277, line: 792, baseType: !113, size: 32, offset: 864)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1276, file: !1277, line: 793, baseType: !113, size: 32, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1276, file: !1277, line: 794, baseType: !113, size: 32, offset: 928)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1276, file: !1277, line: 795, baseType: !45, size: 32, offset: 960)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1276, file: !1277, line: 797, baseType: !1316, size: 2048, offset: 1024)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1277, line: 551, size: 2048, elements: !1317)
!1317 = !{!1318, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1338, !1341, !1342, !1343}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1316, file: !1277, line: 553, baseType: !1319, size: 128)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1277, line: 411, size: 128, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1319, file: !1277, line: 412, baseType: !217, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1319, file: !1277, line: 413, baseType: !515, size: 32, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1316, file: !1277, line: 554, baseType: !818, size: 192, align: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1316, file: !1277, line: 555, baseType: !519, size: 64, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1316, file: !1277, line: 556, baseType: !519, size: 64, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1316, file: !1277, line: 558, baseType: !292, size: 128, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1316, file: !1277, line: 559, baseType: !45, size: 32, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1316, file: !1277, line: 561, baseType: !519, size: 64, offset: 640)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1316, file: !1277, line: 562, baseType: !519, size: 64, offset: 704)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1316, file: !1277, line: 563, baseType: !519, size: 64, offset: 768)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1316, file: !1277, line: 564, baseType: !519, size: 64, offset: 832)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1316, file: !1277, line: 565, baseType: !716, size: 64, offset: 896)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1316, file: !1277, line: 566, baseType: !519, size: 64, offset: 960)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1316, file: !1277, line: 568, baseType: !519, size: 64, offset: 1024)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1316, file: !1277, line: 571, baseType: !113, size: 32, offset: 1088)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1316, file: !1277, line: 572, baseType: !1337, size: 64, offset: 1152)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1316, file: !1277, line: 574, baseType: !1339, size: 64, offset: 1216)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1277, line: 49, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1316, file: !1277, line: 576, baseType: !1339, size: 64, offset: 1280)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1316, file: !1277, line: 578, baseType: !217, size: 64, offset: 1344)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1316, file: !1277, line: 588, baseType: !1344, size: 512, align: 512, offset: 1536)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1277, line: 497, size: 512, align: 512, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1344, file: !1277, line: 498, baseType: !519, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1344, file: !1277, line: 499, baseType: !519, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1344, file: !1277, line: 500, baseType: !519, size: 64, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1344, file: !1277, line: 501, baseType: !515, size: 32, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1344, file: !1277, line: 502, baseType: !515, size: 32, offset: 224)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1344, file: !1277, line: 503, baseType: !217, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1344, file: !1277, line: 504, baseType: !217, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1344, file: !1277, line: 505, baseType: !217, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1344, file: !1277, line: 506, baseType: !1355, size: 64, align: 64, offset: 448)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1277, line: 445, size: 64, align: 64, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1355, file: !1277, line: 446, baseType: !45, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1355, file: !1277, line: 447, baseType: !45, size: 32, offset: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1276, file: !1277, line: 798, baseType: !1360, size: 384, offset: 3072)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1277, line: 592, size: 384, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1360, file: !1277, line: 593, baseType: !292, size: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1360, file: !1277, line: 594, baseType: !217, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1360, file: !1277, line: 595, baseType: !217, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1360, file: !1277, line: 596, baseType: !45, size: 32, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1360, file: !1277, line: 597, baseType: !225, size: 16, offset: 288)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1360, file: !1277, line: 598, baseType: !225, size: 16, offset: 304)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1360, file: !1277, line: 600, baseType: !1369, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1276, file: !1277, line: 799, baseType: !1371, size: 1792, offset: 3456)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1277, line: 610, size: 1792, elements: !1372)
!1372 = !{!1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1462, !1463}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1371, file: !1277, line: 611, baseType: !818, size: 192, align: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1371, file: !1277, line: 618, baseType: !519, size: 64, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1371, file: !1277, line: 619, baseType: !519, size: 64, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1371, file: !1277, line: 620, baseType: !519, size: 64, offset: 320)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1371, file: !1277, line: 621, baseType: !519, size: 64, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1371, file: !1277, line: 622, baseType: !519, size: 64, offset: 448)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1371, file: !1277, line: 629, baseType: !716, size: 64, offset: 512)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1371, file: !1277, line: 630, baseType: !519, size: 64, offset: 576)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1371, file: !1277, line: 631, baseType: !45, size: 32, offset: 640)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1371, file: !1277, line: 653, baseType: !45, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1371, file: !1277, line: 654, baseType: !45, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1371, file: !1277, line: 655, baseType: !45, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1371, file: !1277, line: 656, baseType: !45, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1371, file: !1277, line: 662, baseType: !1387, size: 512, offset: 704)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !81, line: 118, size: 512, elements: !1388)
!1388 = !{!1389, !1397, !1398, !1403, !1458, !1459, !1460, !1461}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1387, file: !81, line: 119, baseType: !1390, size: 256)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1391, line: 9, size: 256, elements: !1392)
!1391 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1390, file: !1391, line: 10, baseType: !818, size: 192, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1390, file: !1391, line: 11, baseType: !1395, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1396, line: 29, baseType: !716)
!1396 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1387, file: !81, line: 120, baseType: !1395, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1387, file: !81, line: 121, baseType: !1399, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!80, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1387, file: !81, line: 122, baseType: !1404, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !81, line: 159, size: 512, align: 512, elements: !1406)
!1406 = !{!1407, !1432, !1433, !1436, !1441, !1442, !1453, !1457}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1405, file: !81, line: 160, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !81, line: 215, size: 4608, align: 512, elements: !1410)
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1409, file: !81, line: 216, baseType: !664, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1409, file: !81, line: 217, baseType: !45, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1409, file: !81, line: 218, baseType: !45, size: 32, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1409, file: !81, line: 219, baseType: !45, size: 32, offset: 96)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1409, file: !81, line: 220, baseType: !45, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1409, file: !81, line: 221, baseType: !45, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1409, file: !81, line: 222, baseType: !45, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1409, file: !81, line: 223, baseType: !45, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1409, file: !81, line: 224, baseType: !45, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1409, file: !81, line: 226, baseType: !45, size: 32, offset: 160)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1409, file: !81, line: 227, baseType: !225, size: 16, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1409, file: !81, line: 228, baseType: !225, size: 16, offset: 208)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1409, file: !81, line: 229, baseType: !45, size: 32, offset: 224)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1409, file: !81, line: 235, baseType: !1395, size: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1409, file: !81, line: 236, baseType: !1402, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1409, file: !81, line: 237, baseType: !1395, size: 64, offset: 384)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1409, file: !81, line: 238, baseType: !1402, size: 64, offset: 448)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1409, file: !81, line: 239, baseType: !1429, size: 4096, align: 512, offset: 512)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1405, size: 4096, align: 512, elements: !1430)
!1430 = !{!1431}
!1431 = !DISubrange(count: 8)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1405, file: !81, line: 161, baseType: !45, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1405, file: !81, line: 162, baseType: !1434, size: 32, offset: 96)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !276, line: 32, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !401, line: 96, baseType: !113)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1405, file: !81, line: 163, baseType: !1437, size: 32, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !488, line: 274, baseType: !1438)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !488, line: 274, size: 32, elements: !1439)
!1439 = !{!1440}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1438, file: !488, line: 274, baseType: !492, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1405, file: !81, line: 164, baseType: !1402, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1405, file: !81, line: 165, baseType: !1443, size: 128, offset: 256)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1391, line: 14, size: 128, elements: !1444)
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1443, file: !1391, line: 15, baseType: !1446, size: 128)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !819, line: 26, size: 128, elements: !1447)
!1447 = !{!1448, !1452}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1446, file: !819, line: 27, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !819, line: 12, size: 64, elements: !1450)
!1450 = !{!1451}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1449, file: !819, line: 13, baseType: !823, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1446, file: !819, line: 28, baseType: !823, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1405, file: !81, line: 166, baseType: !1454, size: 64, offset: 384)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!1395}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1405, file: !81, line: 167, baseType: !1395, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1387, file: !81, line: 123, baseType: !329, size: 8, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1387, file: !81, line: 124, baseType: !329, size: 8, offset: 456)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1387, file: !81, line: 125, baseType: !329, size: 8, offset: 464)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1387, file: !81, line: 126, baseType: !329, size: 8, offset: 472)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1371, file: !1277, line: 671, baseType: !1387, size: 512, offset: 1216)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1371, file: !1277, line: 679, baseType: !1464, size: 64, offset: 1728)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1276, file: !1277, line: 800, baseType: !1466, size: 64, offset: 5248)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1468)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1277, line: 800, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1276, file: !1277, line: 809, baseType: !1470, size: 64, offset: 5312)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1277, line: 70, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1276, file: !1277, line: 825, baseType: !1473, size: 2048, align: 512, offset: 5632)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1277, line: 509, size: 2048, align: 512, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1473, file: !1277, line: 511, baseType: !519, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1473, file: !1277, line: 512, baseType: !519, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1473, file: !1277, line: 513, baseType: !519, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1473, file: !1277, line: 514, baseType: !519, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1473, file: !1277, line: 515, baseType: !519, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1473, file: !1277, line: 516, baseType: !519, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1473, file: !1277, line: 518, baseType: !519, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1473, file: !1277, line: 519, baseType: !519, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1473, file: !1277, line: 520, baseType: !716, size: 64, offset: 512)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1473, file: !1277, line: 522, baseType: !519, size: 64, offset: 576)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1473, file: !1277, line: 523, baseType: !519, size: 64, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1473, file: !1277, line: 524, baseType: !716, size: 64, offset: 704)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1473, file: !1277, line: 526, baseType: !716, size: 64, offset: 768)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1473, file: !1277, line: 527, baseType: !519, size: 64, offset: 832)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1473, file: !1277, line: 529, baseType: !519, size: 64, offset: 896)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1473, file: !1277, line: 530, baseType: !519, size: 64, offset: 960)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1473, file: !1277, line: 531, baseType: !519, size: 64, offset: 1024)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1473, file: !1277, line: 532, baseType: !519, size: 64, offset: 1088)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1473, file: !1277, line: 533, baseType: !519, size: 64, offset: 1152)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1473, file: !1277, line: 535, baseType: !519, size: 64, offset: 1216)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1473, file: !1277, line: 536, baseType: !519, size: 64, offset: 1280)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1473, file: !1277, line: 537, baseType: !519, size: 64, offset: 1344)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1473, file: !1277, line: 538, baseType: !519, size: 64, offset: 1408)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1473, file: !1277, line: 539, baseType: !519, size: 64, offset: 1472)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1473, file: !1277, line: 540, baseType: !519, size: 64, offset: 1536)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1473, file: !1277, line: 541, baseType: !519, size: 64, offset: 1600)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1473, file: !1277, line: 542, baseType: !519, size: 64, offset: 1664)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1473, file: !1277, line: 543, baseType: !519, size: 64, offset: 1728)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1276, file: !1277, line: 833, baseType: !45, size: 32, offset: 7680)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1276, file: !1277, line: 836, baseType: !45, size: 32, offset: 7712)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1276, file: !1277, line: 837, baseType: !113, size: 32, offset: 7744)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1276, file: !1277, line: 838, baseType: !1507, size: 64, offset: 7808)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1510, line: 19, baseType: !1511)
!1510 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1510, line: 19, size: 64, elements: !1512)
!1512 = !{!1513}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1511, file: !1510, line: 19, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 64, elements: !1515)
!1515 = !{!1516}
!1516 = !DISubrange(count: 1)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1276, file: !1277, line: 839, baseType: !1518, size: 64, offset: 7872)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1276, file: !1277, line: 840, baseType: !1509, size: 64, offset: 7936)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1276, file: !1277, line: 841, baseType: !218, size: 64, offset: 8000)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1276, file: !1277, line: 843, baseType: !225, size: 16, offset: 8064)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1276, file: !1277, line: 845, baseType: !225, size: 16, offset: 8080)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1276, file: !1277, line: 848, baseType: !113, size: 32, offset: 8096)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1276, file: !1277, line: 849, baseType: !1525, size: 32, offset: 8128)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1277, line: 718, size: 32, elements: !1526)
!1526 = !{!1527, !1534}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1525, file: !1277, line: 724, baseType: !1528, size: 32)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1525, file: !1277, line: 719, size: 32, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1528, file: !1277, line: 720, baseType: !329, size: 8)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1528, file: !1277, line: 721, baseType: !329, size: 8, offset: 8)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1528, file: !1277, line: 722, baseType: !329, size: 8, offset: 16)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1528, file: !1277, line: 723, baseType: !329, size: 8, offset: 24)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1525, file: !1277, line: 725, baseType: !515, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1276, file: !1277, line: 850, baseType: !292, size: 128, offset: 8192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1276, file: !1277, line: 851, baseType: !1537, size: 64, offset: 8320)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1277, line: 60, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1276, file: !1277, line: 855, baseType: !217, size: 64, offset: 8384)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1276, file: !1277, line: 856, baseType: !329, size: 8, offset: 8448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1276, file: !1277, line: 857, baseType: !329, size: 8, offset: 8456)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1276, file: !1277, line: 858, baseType: !113, size: 32, offset: 8480)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1276, file: !1277, line: 859, baseType: !292, size: 128, offset: 8512)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1276, file: !1277, line: 860, baseType: !113, size: 32, offset: 8640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1276, file: !1277, line: 861, baseType: !292, size: 128, offset: 8704)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1276, file: !1277, line: 873, baseType: !1547, size: 256, offset: 8832)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1277, line: 376, size: 256, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1547, file: !1277, line: 381, baseType: !217, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1547, file: !1277, line: 384, baseType: !521, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1547, file: !1277, line: 389, baseType: !521, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1547, file: !1277, line: 392, baseType: !521, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1276, file: !1277, line: 875, baseType: !292, size: 128, offset: 9088)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1276, file: !1277, line: 877, baseType: !1555, size: 320, offset: 9216)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1556, line: 86, size: 320, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1557 = !{!1558, !1559, !1560}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1555, file: !1556, line: 87, baseType: !113, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1555, file: !1556, line: 88, baseType: !292, size: 128, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1555, file: !1556, line: 89, baseType: !292, size: 128, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1276, file: !1277, line: 878, baseType: !818, size: 192, align: 64, offset: 9536)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1276, file: !1277, line: 881, baseType: !1563, size: 64, offset: 9728)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !160, line: 733, size: 10240, elements: !1565)
!1565 = !{!1566, !1732}
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1564, file: !160, line: 734, baseType: !1567, size: 10240)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1564, file: !160, line: 734, size: 10240, elements: !1568)
!1568 = !{!1569, !1573, !1586, !1591, !1592, !1593, !1594, !1595, !1596, !1603, !1604, !1605, !1611, !1612, !1613, !1614, !1615, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1652, !1662, !1665, !1710, !1711, !1712, !1715, !1718, !1719, !1722, !1723, !1724, !1730, !1731}
!1569 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !160, line: 739, baseType: !1570, size: 512, align: 512)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !160, line: 739, size: 512, align: 512, elements: !1571)
!1571 = !{!1572}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1570, file: !160, line: 747, baseType: !275, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1567, file: !160, line: 750, baseType: !1574, size: 128, offset: 512)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1575, line: 218, size: 128, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1576 = !{!1577, !1584, !1585}
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1575, line: 219, baseType: !1578, size: 32)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !1575, line: 219, size: 32, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1578, file: !1575, line: 220, baseType: !305, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1578, file: !1575, line: 221, baseType: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1575, line: 197, baseType: !1583)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1575, line: 197, elements: !995)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1574, file: !1575, line: 223, baseType: !45, size: 32, offset: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1574, file: !1575, line: 224, baseType: !218, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1567, file: !160, line: 752, baseType: !1587, size: 64, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!217, !1590, !217, !217, !217, !217}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1567, file: !160, line: 756, baseType: !217, size: 64, offset: 704)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1567, file: !160, line: 757, baseType: !217, size: 64, offset: 768)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1567, file: !160, line: 760, baseType: !217, size: 64, offset: 832)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1567, file: !160, line: 761, baseType: !217, size: 64, offset: 896)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1567, file: !160, line: 763, baseType: !217, size: 64, offset: 960)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1567, file: !160, line: 764, baseType: !1597, size: 64, offset: 1024)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !59, line: 299, baseType: !1599)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 299, size: 64, elements: !1600)
!1600 = !{!1601}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1599, file: !59, line: 299, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !216, line: 18, baseType: !217)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1567, file: !160, line: 773, baseType: !275, size: 32, offset: 1088)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1567, file: !160, line: 785, baseType: !275, size: 32, offset: 1120)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1567, file: !160, line: 795, baseType: !1606, size: 64, offset: 1152)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !160, line: 726, size: 128, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1607, file: !160, line: 727, baseType: !519, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1607, file: !160, line: 728, baseType: !113, size: 32, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1567, file: !160, line: 801, baseType: !217, size: 64, offset: 1216)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1567, file: !160, line: 804, baseType: !710, size: 64, offset: 1280)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1567, file: !160, line: 806, baseType: !113, size: 32, offset: 1344)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1567, file: !160, line: 808, baseType: !305, size: 32, offset: 1376)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1567, file: !160, line: 823, baseType: !1616, size: 320, offset: 1408)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1617, line: 48, size: 320, elements: !1618)
!1617 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1618 = !{!1619, !1620, !1621, !1622, !1623}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1616, file: !1617, line: 49, baseType: !710, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1616, file: !1617, line: 55, baseType: !710, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1616, file: !1617, line: 57, baseType: !720, size: 32, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1616, file: !1617, line: 59, baseType: !664, size: 32, offset: 160)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1616, file: !1617, line: 60, baseType: !292, size: 128, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1567, file: !160, line: 825, baseType: !292, size: 128, offset: 1728)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1567, file: !160, line: 845, baseType: !113, size: 32, offset: 1856)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1567, file: !160, line: 849, baseType: !217, size: 64, offset: 1920)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1567, file: !160, line: 850, baseType: !217, size: 64, offset: 1984)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1567, file: !160, line: 852, baseType: !217, size: 64, offset: 2048)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1567, file: !160, line: 853, baseType: !217, size: 64, offset: 2112)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1567, file: !160, line: 854, baseType: !712, size: 64, offset: 2176)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1567, file: !160, line: 855, baseType: !217, size: 64, offset: 2240)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1567, file: !160, line: 856, baseType: !217, size: 64, offset: 2304)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1567, file: !160, line: 857, baseType: !217, size: 64, offset: 2368)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1567, file: !160, line: 858, baseType: !217, size: 64, offset: 2432)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1567, file: !160, line: 865, baseType: !492, size: 32, offset: 2496)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1567, file: !160, line: 867, baseType: !305, size: 32, offset: 2528)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1567, file: !160, line: 869, baseType: !217, size: 64, offset: 2560)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1567, file: !160, line: 869, baseType: !217, size: 64, offset: 2624)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1567, file: !160, line: 869, baseType: !217, size: 64, offset: 2688)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1567, file: !160, line: 869, baseType: !217, size: 64, offset: 2752)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1567, file: !160, line: 870, baseType: !217, size: 64, offset: 2816)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1567, file: !160, line: 870, baseType: !217, size: 64, offset: 2880)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1567, file: !160, line: 870, baseType: !217, size: 64, offset: 2944)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1567, file: !160, line: 871, baseType: !217, size: 64, offset: 3008)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1567, file: !160, line: 871, baseType: !217, size: 64, offset: 3072)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1567, file: !160, line: 871, baseType: !217, size: 64, offset: 3136)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1567, file: !160, line: 871, baseType: !217, size: 64, offset: 3200)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1567, file: !160, line: 873, baseType: !1649, size: 3328, offset: 3264)
!1649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 3328, elements: !1650)
!1650 = !{!1651}
!1651 = !DISubrange(count: 52)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1567, file: !160, line: 875, baseType: !1653, size: 1280, offset: 6592)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1654, size: 1280, elements: !936)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1655, line: 22, size: 320, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1656 = !{!1657, !1658, !1659, !1660}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1654, file: !1655, line: 23, baseType: !664, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1654, file: !1655, line: 24, baseType: !716, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1654, file: !1655, line: 26, baseType: !292, size: 128, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1654, file: !1655, line: 28, baseType: !1661, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1567, file: !160, line: 877, baseType: !1663, size: 64, offset: 7872)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !160, line: 877, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1567, file: !160, line: 880, baseType: !1666, size: 1088, offset: 7936)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1667, line: 72, baseType: !1668)
!1667 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1667, line: 23, size: 1088, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1674, !1677, !1678, !1679, !1680, !1707, !1708, !1709}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1668, file: !1667, line: 28, baseType: !519, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1668, file: !1667, line: 38, baseType: !712, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1668, file: !1667, line: 40, baseType: !217, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1668, file: !1667, line: 43, baseType: !1616, size: 320, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1668, file: !1667, line: 44, baseType: !1675, size: 64, offset: 512)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1667, line: 44, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1668, file: !1667, line: 48, baseType: !217, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1668, file: !1667, line: 59, baseType: !706, size: 256, offset: 640)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1668, file: !1667, line: 60, baseType: !218, size: 64, offset: 896)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1668, file: !1667, line: 61, baseType: !1681, size: 64, offset: 960)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1683)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1684, line: 13, size: 1216, elements: !1685)
!1684 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1683, file: !1684, line: 14, baseType: !218, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1683, file: !1684, line: 15, baseType: !217, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1683, file: !1684, line: 17, baseType: !217, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1683, file: !1684, line: 17, baseType: !217, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1683, file: !1684, line: 18, baseType: !217, size: 64, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1683, file: !1684, line: 18, baseType: !217, size: 64, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1683, file: !1684, line: 19, baseType: !1693, size: 64, offset: 384)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1683, file: !1684, line: 21, baseType: !403, size: 64, offset: 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1683, file: !1684, line: 23, baseType: !403, size: 64, offset: 512)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1683, file: !1684, line: 24, baseType: !403, size: 64, offset: 576)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1683, file: !1684, line: 25, baseType: !403, size: 64, offset: 640)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1683, file: !1684, line: 26, baseType: !403, size: 64, offset: 704)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1683, file: !1684, line: 27, baseType: !403, size: 64, offset: 768)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1683, file: !1684, line: 28, baseType: !403, size: 64, offset: 832)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1683, file: !1684, line: 29, baseType: !403, size: 64, offset: 896)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1683, file: !1684, line: 30, baseType: !403, size: 64, offset: 960)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1683, file: !1684, line: 31, baseType: !403, size: 64, offset: 1024)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1683, file: !1684, line: 32, baseType: !403, size: 64, offset: 1088)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1683, file: !1684, line: 33, baseType: !403, size: 64, offset: 1152)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1668, file: !1667, line: 63, baseType: !275, size: 32, offset: 1024)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1668, file: !1667, line: 69, baseType: !338, size: 16, offset: 1056)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1668, file: !1667, line: 70, baseType: !842, size: 16, offset: 1072)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1567, file: !160, line: 882, baseType: !217, size: 64, offset: 9024)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1567, file: !160, line: 885, baseType: !305, size: 32, offset: 9088)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1567, file: !160, line: 886, baseType: !1713, size: 64, offset: 9152)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !160, line: 732, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1567, file: !160, line: 901, baseType: !1716, size: 64, offset: 9216)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !453, line: 18, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1567, file: !160, line: 904, baseType: !1590, size: 64, offset: 9280)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1567, file: !160, line: 906, baseType: !1720, size: 64, offset: 9344)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !160, line: 906, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1567, file: !160, line: 930, baseType: !275, size: 32, offset: 9408)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1567, file: !160, line: 933, baseType: !275, size: 32, offset: 9440)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1567, file: !160, line: 935, baseType: !1725, size: 64, offset: 9472)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !176, line: 103, size: 64, elements: !1726)
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1725, file: !176, line: 104, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !176, line: 101, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1567, file: !160, line: 940, baseType: !710, size: 64, offset: 9536)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1567, file: !160, line: 942, baseType: !966, size: 256, offset: 9600)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1564, file: !160, line: 986, baseType: !1733, offset: 10240)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !1734)
!1734 = !{!1735}
!1735 = !DISubrange(count: -1)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1276, file: !1277, line: 882, baseType: !1563, size: 64, offset: 9792)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1276, file: !1277, line: 884, baseType: !113, size: 32, offset: 9856)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1276, file: !1277, line: 885, baseType: !113, size: 32, offset: 9888)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1276, file: !1277, line: 886, baseType: !113, size: 32, offset: 9920)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1276, file: !1277, line: 888, baseType: !113, size: 32, offset: 9952)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1276, file: !1277, line: 890, baseType: !217, size: 64, offset: 9984)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1276, file: !1277, line: 893, baseType: !45, size: 32, offset: 10048)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1276, file: !1277, line: 896, baseType: !45, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1276, file: !1277, line: 897, baseType: !45, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1276, file: !1277, line: 898, baseType: !45, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1276, file: !1277, line: 899, baseType: !45, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1276, file: !1277, line: 919, baseType: !45, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1276, file: !1277, line: 922, baseType: !45, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1276, file: !1277, line: 923, baseType: !45, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1276, file: !1277, line: 925, baseType: !45, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1276, file: !1277, line: 939, baseType: !45, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1276, file: !1277, line: 941, baseType: !45, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1276, file: !1277, line: 944, baseType: !45, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1276, file: !1277, line: 956, baseType: !45, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1276, file: !1277, line: 962, baseType: !45, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1276, file: !1277, line: 966, baseType: !45, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1276, file: !1277, line: 969, baseType: !217, size: 64, offset: 10176)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1276, file: !1277, line: 971, baseType: !1759, size: 448, offset: 10240)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !86, line: 25, size: 448, elements: !1760)
!1760 = !{!1761, !1762, !1767}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1759, file: !86, line: 26, baseType: !217, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1759, file: !86, line: 27, baseType: !1763, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!403, !1766}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !86, line: 28, baseType: !1768, size: 320, offset: 128)
!1768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !86, line: 28, size: 320, elements: !1769)
!1769 = !{!1770, !1780, !1805}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1768, file: !86, line: 37, baseType: !1771, size: 320)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1768, file: !86, line: 30, size: 320, elements: !1772)
!1772 = !{!1773, !1775, !1776, !1777, !1778, !1779}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1771, file: !86, line: 31, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1771, file: !86, line: 32, baseType: !515, size: 32, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1771, file: !86, line: 33, baseType: !515, size: 32, offset: 96)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1771, file: !86, line: 34, baseType: !515, size: 32, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1771, file: !86, line: 35, baseType: !519, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1771, file: !86, line: 36, baseType: !1774, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1768, file: !86, line: 47, baseType: !1781, size: 192)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1768, file: !86, line: 39, size: 192, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1804}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1781, file: !86, line: 40, baseType: !1434, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1781, file: !86, line: 41, baseType: !85, size: 32, offset: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !86, line: 42, baseType: !1786, size: 64, offset: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1781, file: !86, line: 42, size: 64, elements: !1787)
!1787 = !{!1788, !1796}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1786, file: !86, line: 43, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1791, line: 7, size: 128, elements: !1792)
!1791 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1792 = !{!1793, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1790, file: !1791, line: 8, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !401, line: 93, baseType: !609)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1790, file: !1791, line: 9, baseType: !609, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1786, file: !86, line: 44, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1799, line: 7, size: 64, elements: !1800)
!1799 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1800 = !{!1801, !1803}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1798, file: !1799, line: 8, baseType: !1802, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1799, line: 5, baseType: !702)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1798, file: !1799, line: 9, baseType: !702, size: 32, offset: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1781, file: !86, line: 46, baseType: !519, size: 64, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1768, file: !86, line: 55, baseType: !1806, size: 256)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1768, file: !86, line: 49, size: 256, elements: !1807)
!1807 = !{!1808, !1811, !1812, !1813, !1814}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1806, file: !86, line: 50, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !86, line: 14, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1806, file: !86, line: 51, baseType: !113, size: 32, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1806, file: !86, line: 52, baseType: !113, size: 32, offset: 96)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1806, file: !86, line: 53, baseType: !217, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1806, file: !86, line: 54, baseType: !217, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1276, file: !1277, line: 973, baseType: !1816, size: 32, offset: 10688)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !276, line: 27, baseType: !1817)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !401, line: 28, baseType: !113)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1276, file: !1277, line: 974, baseType: !1816, size: 32, offset: 10720)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1276, file: !1277, line: 978, baseType: !217, size: 64, offset: 10752)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1276, file: !1277, line: 987, baseType: !1275, size: 64, offset: 10816)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1276, file: !1277, line: 990, baseType: !1275, size: 64, offset: 10880)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1276, file: !1277, line: 995, baseType: !292, size: 128, offset: 10944)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1276, file: !1277, line: 996, baseType: !292, size: 128, offset: 11072)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1276, file: !1277, line: 997, baseType: !1275, size: 64, offset: 11200)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1276, file: !1277, line: 1005, baseType: !292, size: 128, offset: 11264)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1276, file: !1277, line: 1006, baseType: !292, size: 128, offset: 11392)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1276, file: !1277, line: 1009, baseType: !1231, size: 64, offset: 11520)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1276, file: !1277, line: 1010, baseType: !1829, size: 512, offset: 11584)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 512, elements: !936)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1276, file: !1277, line: 1011, baseType: !292, size: 128, offset: 12096)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1276, file: !1277, line: 1012, baseType: !292, size: 128, offset: 12224)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1276, file: !1277, line: 1014, baseType: !654, size: 64, offset: 12352)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1276, file: !1277, line: 1017, baseType: !835, size: 64, offset: 12416)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1276, file: !1277, line: 1020, baseType: !835, size: 64, offset: 12480)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1276, file: !1277, line: 1023, baseType: !218, size: 64, offset: 12544)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1276, file: !1277, line: 1025, baseType: !519, size: 64, offset: 12608)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1276, file: !1277, line: 1026, baseType: !519, size: 64, offset: 12672)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1276, file: !1277, line: 1031, baseType: !519, size: 64, offset: 12736)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1276, file: !1277, line: 1032, baseType: !1840, size: 192, offset: 12800)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1277, line: 324, size: 192, elements: !1841)
!1841 = !{!1842, !1843, !1844}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1840, file: !1277, line: 326, baseType: !519, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1840, file: !1277, line: 327, baseType: !519, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1840, file: !1277, line: 328, baseType: !664, size: 32, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1276, file: !1277, line: 1041, baseType: !217, size: 64, offset: 12992)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1276, file: !1277, line: 1042, baseType: !217, size: 64, offset: 13056)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1276, file: !1277, line: 1045, baseType: !519, size: 64, offset: 13120)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1276, file: !1277, line: 1048, baseType: !519, size: 64, offset: 13184)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1276, file: !1277, line: 1051, baseType: !217, size: 64, offset: 13248)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1276, file: !1277, line: 1052, baseType: !217, size: 64, offset: 13312)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1276, file: !1277, line: 1055, baseType: !1852, size: 640, offset: 13376)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1853, line: 132, size: 640, elements: !1854)
!1853 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1854 = !{!1855, !1861, !1862}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1852, file: !1853, line: 133, baseType: !1856, size: 576)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1857, size: 576, elements: !368)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1853, line: 117, size: 192, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1857, file: !1853, line: 118, baseType: !519, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1857, file: !1853, line: 119, baseType: !1443, size: 128, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1852, file: !1853, line: 134, baseType: !45, size: 32, offset: 576)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1852, file: !1853, line: 135, baseType: !45, size: 32, offset: 608)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1276, file: !1277, line: 1058, baseType: !1864, size: 448, offset: 14016)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1853, line: 144, size: 448, elements: !1865)
!1865 = !{!1866, !1867, !1868}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1864, file: !1853, line: 145, baseType: !926, size: 128, align: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1864, file: !1853, line: 146, baseType: !706, size: 256, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1864, file: !1853, line: 147, baseType: !45, size: 32, offset: 384)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1276, file: !1277, line: 1064, baseType: !1870, size: 64, offset: 14464)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1872)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1873, line: 110, size: 1472, elements: !1874)
!1873 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1891, !1892, !1893, !1894, !1895, !1896, !2006, !2007, !2008, !2009, !2010, !2033, !2034, !2038, !2046}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1872, file: !1873, line: 111, baseType: !710, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1872, file: !1873, line: 112, baseType: !452, size: 32, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1872, file: !1873, line: 113, baseType: !461, size: 32, offset: 96)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1872, file: !1873, line: 114, baseType: !452, size: 32, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1872, file: !1873, line: 115, baseType: !461, size: 32, offset: 160)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1872, file: !1873, line: 116, baseType: !452, size: 32, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1872, file: !1873, line: 117, baseType: !461, size: 32, offset: 224)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1872, file: !1873, line: 118, baseType: !452, size: 32, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1872, file: !1873, line: 119, baseType: !461, size: 32, offset: 288)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1872, file: !1873, line: 120, baseType: !45, size: 32, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1872, file: !1873, line: 121, baseType: !1886, size: 64, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1887, line: 24, baseType: !1888)
!1887 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1887, line: 24, size: 64, elements: !1889)
!1889 = !{!1890}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1888, file: !1887, line: 24, baseType: !519, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1872, file: !1873, line: 122, baseType: !1886, size: 64, offset: 448)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1872, file: !1873, line: 123, baseType: !1886, size: 64, offset: 512)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1872, file: !1873, line: 124, baseType: !1886, size: 64, offset: 576)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1872, file: !1873, line: 125, baseType: !1886, size: 64, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1872, file: !1873, line: 127, baseType: !332, size: 8, offset: 704)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1872, file: !1873, line: 129, baseType: !1897, size: 64, offset: 768)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1899, line: 195, size: 1728, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1900 = !{!1901, !1902, !1905, !1910, !1911, !1914, !1915, !1922, !1923, !1924, !1925, !1928, !1929, !1930, !1931, !1932, !1970, !1991}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1898, file: !1899, line: 196, baseType: !270, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1898, file: !1899, line: 197, baseType: !1903, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1899, line: 28, baseType: !1904)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !276, line: 104, baseType: !702)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1898, file: !1899, line: 198, baseType: !1906, size: 192, offset: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !1899, line: 198, size: 192, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1906, file: !1899, line: 199, baseType: !292, size: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1906, file: !1899, line: 200, baseType: !818, size: 192, align: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1898, file: !1899, line: 205, baseType: !1616, size: 320, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1898, file: !1899, line: 206, baseType: !1912, size: 64, offset: 576)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1899, line: 206, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1898, file: !1899, line: 207, baseType: !218, size: 64, offset: 640)
!1915 = !DIDerivedType(tag: DW_TAG_member, scope: !1898, file: !1899, line: 208, baseType: !1916, size: 64, offset: 704)
!1916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !1899, line: 208, size: 64, elements: !1917)
!1917 = !{!1918, !1921}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1916, file: !1899, line: 209, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1920, line: 8, baseType: !717)
!1920 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1916, file: !1899, line: 210, baseType: !1919, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1898, file: !1899, line: 212, baseType: !1919, size: 64, offset: 768)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1898, file: !1899, line: 213, baseType: !452, size: 32, offset: 832)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1898, file: !1899, line: 214, baseType: !461, size: 32, offset: 864)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1898, file: !1899, line: 215, baseType: !1926, size: 32, offset: 896)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1899, line: 31, baseType: !1927)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !276, line: 110, baseType: !515)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1898, file: !1899, line: 216, baseType: !225, size: 16, offset: 928)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1898, file: !1899, line: 217, baseType: !225, size: 16, offset: 944)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1898, file: !1899, line: 221, baseType: !844, size: 16, offset: 960)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1898, file: !1899, line: 228, baseType: !217, size: 64, offset: 1024)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1898, file: !1899, line: 245, baseType: !1933, size: 320, offset: 1088)
!1933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !1899, line: 245, size: 320, elements: !1934)
!1934 = !{!1935, !1962}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1933, file: !1899, line: 246, baseType: !1936, size: 320)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1899, line: 114, size: 320, elements: !1937)
!1937 = !{!1938, !1939, !1951, !1954, !1961}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1936, file: !1899, line: 116, baseType: !217, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !1899, line: 117, baseType: !1940, size: 64, offset: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !1899, line: 117, size: 64, elements: !1941)
!1941 = !{!1942, !1950}
!1942 = !DIDerivedType(tag: DW_TAG_member, scope: !1940, file: !1899, line: 118, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1940, file: !1899, line: 118, size: 64, elements: !1944)
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1943, file: !1899, line: 120, baseType: !338, size: 16)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1943, file: !1899, line: 121, baseType: !1947, size: 48, offset: 16)
!1947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1948)
!1948 = !{!1949}
!1949 = !DISubrange(count: 6)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1940, file: !1899, line: 127, baseType: !217, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1936, file: !1899, line: 129, baseType: !1952, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1899, line: 102, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1936, file: !1899, line: 130, baseType: !1955, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1899, line: 108, size: 192, elements: !1957)
!1957 = !{!1958, !1959, !1960}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1956, file: !1899, line: 109, baseType: !926, size: 128, align: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1956, file: !1899, line: 110, baseType: !270, size: 32, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1956, file: !1899, line: 111, baseType: !786, size: 8, offset: 160)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1936, file: !1899, line: 131, baseType: !250, size: 64, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1933, file: !1899, line: 247, baseType: !1963, size: 320)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1933, file: !1899, line: 247, size: 320, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1968, !1969}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1963, file: !1899, line: 248, baseType: !217, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1963, file: !1899, line: 249, baseType: !217, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1963, file: !1899, line: 250, baseType: !1952, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1963, file: !1899, line: 251, baseType: !1955, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1963, file: !1899, line: 252, baseType: !256, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, scope: !1898, file: !1899, line: 260, baseType: !1971, size: 256, offset: 1408)
!1971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !1899, line: 260, size: 256, elements: !1972)
!1972 = !{!1973, !1979}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1971, file: !1899, line: 261, baseType: !1974, size: 256)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1899, line: 134, size: 256, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1974, file: !1899, line: 135, baseType: !218, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1974, file: !1899, line: 136, baseType: !1978, size: 256)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 256, elements: !936)
!1979 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !1899, line: 262, baseType: !1980, size: 256)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1971, file: !1899, line: 262, size: 256, elements: !1981)
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1980, file: !1899, line: 264, baseType: !292, size: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1980, file: !1899, line: 265, baseType: !1984, size: 128, offset: 128)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1985, line: 22, size: 128, elements: !1986)
!1985 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1986 = !{!1987, !1990}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1984, file: !1985, line: 23, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1985, line: 23, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1984, file: !1985, line: 24, baseType: !217, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1898, file: !1899, line: 280, baseType: !1992, size: 64, offset: 1664)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1899, line: 176, size: 192, elements: !1994)
!1994 = !{!1995, !2004, !2005}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1993, file: !1899, line: 177, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1899, line: 171, baseType: !1997)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!113, !1897, !2000, !2002, !1897}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1974)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1993, file: !1899, line: 178, baseType: !1897, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1993, file: !1899, line: 179, baseType: !1952, size: 64, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1872, file: !1873, line: 130, baseType: !1897, size: 64, offset: 832)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1872, file: !1873, line: 131, baseType: !1897, size: 64, offset: 896)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1872, file: !1873, line: 132, baseType: !1897, size: 64, offset: 960)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1872, file: !1873, line: 135, baseType: !218, size: 64, offset: 1024)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1872, file: !1873, line: 137, baseType: !2011, size: 64, offset: 1088)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2013, line: 14, size: 1088, elements: !2014)
!2013 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2014 = !{!2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2012, file: !2013, line: 15, baseType: !270, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2012, file: !2013, line: 17, baseType: !1654, size: 320, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2012, file: !2013, line: 19, baseType: !217, size: 64, offset: 384)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2012, file: !2013, line: 20, baseType: !710, size: 64, offset: 448)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2012, file: !2013, line: 23, baseType: !952, size: 128, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2012, file: !2013, line: 24, baseType: !452, size: 32, offset: 640)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2012, file: !2013, line: 29, baseType: !710, size: 64, offset: 704)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2012, file: !2013, line: 36, baseType: !2023, size: 320, offset: 768)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2024, line: 15, size: 320, elements: !2025)
!2024 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031, !2032}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2023, file: !2024, line: 16, baseType: !664, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2023, file: !2024, line: 18, baseType: !113, size: 32, offset: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2023, file: !2024, line: 19, baseType: !113, size: 32, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2023, file: !2024, line: 20, baseType: !113, size: 32, offset: 96)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2023, file: !2024, line: 21, baseType: !113, size: 32, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2023, file: !2024, line: 22, baseType: !217, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2023, file: !2024, line: 23, baseType: !217, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1872, file: !1873, line: 138, baseType: !1716, size: 64, offset: 1152)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1872, file: !1873, line: 139, baseType: !2035, size: 64, offset: 1216)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2037, line: 16, flags: DIFlagFwdDecl)
!2037 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1872, file: !1873, line: 140, baseType: !2039, size: 64, offset: 1280)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1873, line: 25, size: 64, elements: !2041)
!2041 = !{!2042, !2043, !2044}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2040, file: !1873, line: 26, baseType: !275, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2040, file: !1873, line: 27, baseType: !113, size: 32, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2040, file: !1873, line: 28, baseType: !2045, offset: 64)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, elements: !1734)
!2046 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !1873, line: 142, baseType: !2047, size: 128, offset: 1344)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !1873, line: 142, size: 128, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2047, file: !1873, line: 143, baseType: !113, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2047, file: !1873, line: 144, baseType: !926, size: 128, align: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1276, file: !1277, line: 1067, baseType: !1870, size: 64, offset: 14528)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1276, file: !1277, line: 1070, baseType: !1870, size: 64, offset: 14592)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1276, file: !1277, line: 1074, baseType: !1897, size: 64, offset: 14656)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1276, file: !1277, line: 1084, baseType: !242, size: 128, offset: 14720)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1276, file: !1277, line: 1086, baseType: !2056, size: 64, offset: 14848)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1277, line: 55, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1276, file: !1277, line: 1089, baseType: !2059, size: 64, offset: 14912)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2060, line: 12, size: 64, elements: !2061)
!2060 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2061 = !{!2062}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2059, file: !2060, line: 13, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2060, line: 8, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1276, file: !1277, line: 1090, baseType: !2066, size: 128, offset: 14976)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2067, line: 13, size: 128, elements: !2068)
!2067 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2068 = !{!2069}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2066, file: !2067, line: 14, baseType: !292, size: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1276, file: !1277, line: 1097, baseType: !2071, size: 64, offset: 15104)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1277, line: 50, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1276, file: !1277, line: 1100, baseType: !2074, size: 64, offset: 15168)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1277, line: 1100, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1276, file: !1277, line: 1103, baseType: !2077, size: 64, offset: 15232)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1277, line: 53, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1276, file: !1277, line: 1107, baseType: !2080, size: 64, offset: 15296)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2082, line: 31, size: 576, elements: !2083)
!2082 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2083 = !{!2084, !2085, !2088, !2091, !2094, !2095, !2098, !2101, !2102}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2081, file: !2082, line: 32, baseType: !270, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2081, file: !2082, line: 33, baseType: !2086, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2082, line: 9, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2081, file: !2082, line: 34, baseType: !2089, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2082, line: 10, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2081, file: !2082, line: 35, baseType: !2092, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2082, line: 8, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2081, file: !2082, line: 36, baseType: !1254, size: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2081, file: !2082, line: 37, baseType: !2096, size: 64, offset: 320)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1899, line: 34, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2081, file: !2082, line: 38, baseType: !2099, size: 64, offset: 384)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2082, line: 38, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2081, file: !2082, line: 39, baseType: !2099, size: 64, offset: 448)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2081, file: !2082, line: 40, baseType: !2103, size: 64, offset: 512)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2082, line: 12, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1276, file: !1277, line: 1110, baseType: !2106, size: 64, offset: 15360)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2108, line: 93, size: 8768, elements: !2109)
!2108 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2157, !2166, !2167, !2169, !2170, !2171, !3058, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3096, !3097, !3104, !3114, !3117, !3118, !3121, !3122, !3123, !3124, !3125, !3126}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2107, file: !2108, line: 94, baseType: !270, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2107, file: !2108, line: 95, baseType: !275, size: 32, offset: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2107, file: !2108, line: 96, baseType: !113, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2107, file: !2108, line: 97, baseType: !113, size: 32, offset: 96)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2107, file: !2108, line: 98, baseType: !292, size: 128, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2107, file: !2108, line: 100, baseType: !1241, size: 192, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2107, file: !2108, line: 103, baseType: !1275, size: 64, offset: 448)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2107, file: !2108, line: 106, baseType: !2118, size: 192, offset: 512)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2037, line: 32, size: 192, elements: !2119)
!2119 = !{!2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2118, file: !2037, line: 33, baseType: !292, size: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2118, file: !2037, line: 34, baseType: !2122, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2123, line: 25, baseType: !2124)
!2123 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2123, line: 23, size: 64, elements: !2125)
!2125 = !{!2126}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2124, file: !2123, line: 24, baseType: !1514, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2107, file: !2108, line: 109, baseType: !1076, size: 64, offset: 704)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2107, file: !2108, line: 112, baseType: !113, size: 32, offset: 768)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2107, file: !2108, line: 114, baseType: !113, size: 32, offset: 800)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2107, file: !2108, line: 115, baseType: !1275, size: 64, offset: 832)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2107, file: !2108, line: 118, baseType: !113, size: 32, offset: 896)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2107, file: !2108, line: 119, baseType: !45, size: 32, offset: 928)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2107, file: !2108, line: 121, baseType: !2134, size: 64, offset: 960)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2108, line: 80, size: 448, elements: !2136)
!2136 = !{!2137, !2138, !2144}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2135, file: !2108, line: 81, baseType: !275, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2135, file: !2108, line: 82, baseType: !2139, size: 128, offset: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2108, line: 75, size: 128, elements: !2140)
!2140 = !{!2141, !2142}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2139, file: !2108, line: 76, baseType: !1275, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2139, file: !2108, line: 77, baseType: !2143, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2135, file: !2108, line: 83, baseType: !655, size: 256, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2107, file: !2108, line: 132, baseType: !45, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2107, file: !2108, line: 133, baseType: !45, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2107, file: !2108, line: 138, baseType: !45, size: 32, offset: 1056)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2107, file: !2108, line: 139, baseType: !292, size: 128, offset: 1088)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2107, file: !2108, line: 142, baseType: !1387, size: 512, offset: 1216)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2107, file: !2108, line: 143, baseType: !1395, size: 64, offset: 1728)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2107, file: !2108, line: 150, baseType: !2152, size: 256, offset: 1792)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2153, size: 256, elements: !825)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2108, line: 38, size: 128, elements: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2153, file: !2108, line: 39, baseType: !519, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2153, file: !2108, line: 40, baseType: !519, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2107, file: !2108, line: 156, baseType: !2158, size: 192, offset: 2048)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2108, line: 66, size: 192, elements: !2159)
!2159 = !{!2160}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2158, file: !2108, line: 67, baseType: !2161, size: 192)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2108, line: 47, size: 192, elements: !2162)
!2162 = !{!2163, !2164, !2165}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2161, file: !2108, line: 48, baseType: !712, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2161, file: !2108, line: 49, baseType: !712, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2161, file: !2108, line: 50, baseType: !712, size: 64, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2107, file: !2108, line: 160, baseType: !1852, size: 640, offset: 2240)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2107, file: !2108, line: 163, baseType: !2168, size: 256, offset: 2880)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 256, elements: !936)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2107, file: !2108, line: 169, baseType: !1231, size: 64, offset: 3136)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2107, file: !2108, line: 172, baseType: !113, size: 32, offset: 3200)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2107, file: !2108, line: 174, baseType: !2172, size: 64, offset: 3264)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2174, line: 193, size: 5248, elements: !2175)
!2174 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!2175 = !{!2176, !2177, !2178, !2655, !2656, !2776, !2945, !2996, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3013, !3014, !3015, !3016, !3017, !3025, !3034, !3035, !3036, !3037, !3038, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2173, file: !2174, line: 194, baseType: !266, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2173, file: !2174, line: 195, baseType: !113, size: 32, offset: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2173, file: !2174, line: 196, baseType: !2179, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !98, line: 705, size: 5824, elements: !2181)
!2181 = !{!2182, !2183, !2184, !2187, !2188, !2243, !2313, !2314, !2315, !2316, !2317, !2324, !2416, !2429, !2439, !2443, !2445, !2446, !2447, !2451, !2458, !2459, !2462, !2465, !2469, !2573, !2574, !2575, !2576, !2577, !2578, !2632, !2633, !2634, !2637, !2640, !2649, !2650, !2651, !2652, !2653, !2654}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2180, file: !98, line: 706, baseType: !287, size: 512)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2180, file: !98, line: 707, baseType: !2179, size: 64, offset: 512)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2180, file: !98, line: 709, baseType: !2185, size: 64, offset: 576)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !98, line: 37, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2180, file: !98, line: 711, baseType: !250, size: 64, offset: 640)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2180, file: !98, line: 712, baseType: !2189, size: 64, offset: 704)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2191)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !98, line: 89, size: 384, elements: !2192)
!2192 = !{!2193, !2194, !2195, !2201, !2208, !2212}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2191, file: !98, line: 90, baseType: !250, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2191, file: !98, line: 91, baseType: !418, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2191, file: !98, line: 92, baseType: !2196, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!113, !2199, !363}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2180)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2191, file: !98, line: 93, baseType: !2202, size: 64, offset: 192)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!256, !2199, !2205, !2206, !2207}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2191, file: !98, line: 95, baseType: !2209, size: 64, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !2179}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2191, file: !98, line: 97, baseType: !2213, size: 64, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !105, line: 286, size: 1472, elements: !2216)
!2216 = !{!2217, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2215, file: !105, line: 287, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!113, !2179}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2215, file: !105, line: 288, baseType: !2209, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2215, file: !105, line: 289, baseType: !2218, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2215, file: !105, line: 290, baseType: !2218, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2215, file: !105, line: 291, baseType: !2218, size: 64, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2215, file: !105, line: 292, baseType: !2218, size: 64, offset: 320)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2215, file: !105, line: 293, baseType: !2218, size: 64, offset: 384)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2215, file: !105, line: 294, baseType: !2218, size: 64, offset: 448)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2215, file: !105, line: 295, baseType: !2218, size: 64, offset: 512)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2215, file: !105, line: 296, baseType: !2218, size: 64, offset: 576)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2215, file: !105, line: 297, baseType: !2218, size: 64, offset: 640)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2215, file: !105, line: 298, baseType: !2218, size: 64, offset: 704)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2215, file: !105, line: 299, baseType: !2218, size: 64, offset: 768)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2215, file: !105, line: 300, baseType: !2218, size: 64, offset: 832)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2215, file: !105, line: 301, baseType: !2218, size: 64, offset: 896)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2215, file: !105, line: 302, baseType: !2218, size: 64, offset: 960)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2215, file: !105, line: 303, baseType: !2218, size: 64, offset: 1024)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2215, file: !105, line: 304, baseType: !2218, size: 64, offset: 1088)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2215, file: !105, line: 305, baseType: !2218, size: 64, offset: 1152)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2215, file: !105, line: 306, baseType: !2218, size: 64, offset: 1216)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2215, file: !105, line: 307, baseType: !2218, size: 64, offset: 1280)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2215, file: !105, line: 308, baseType: !2218, size: 64, offset: 1344)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2215, file: !105, line: 309, baseType: !2218, size: 64, offset: 1408)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2180, file: !98, line: 714, baseType: !2244, size: 64, offset: 768)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2246)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2247, line: 80, size: 1344, elements: !2248)
!2247 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2248 = !{!2249, !2250, !2251, !2252, !2253, !2254, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2312}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2246, file: !2247, line: 81, baseType: !250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2246, file: !2247, line: 82, baseType: !250, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2246, file: !2247, line: 83, baseType: !418, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2246, file: !2247, line: 84, baseType: !418, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2246, file: !2247, line: 85, baseType: !418, size: 64, offset: 256)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2246, file: !2247, line: 87, baseType: !2255, size: 64, offset: 320)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!113, !2179, !2258}
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !92, line: 96, size: 1152, elements: !2260)
!2260 = !{!2261, !2262, !2263, !2264, !2265, !2266, !2267, !2271, !2275, !2276, !2277, !2278, !2279, !2287, !2288, !2289, !2290, !2291, !2292}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2259, file: !92, line: 97, baseType: !250, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2259, file: !92, line: 98, baseType: !2244, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2259, file: !92, line: 100, baseType: !635, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2259, file: !92, line: 101, baseType: !250, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2259, file: !92, line: 103, baseType: !786, size: 8, offset: 256)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2259, file: !92, line: 104, baseType: !91, size: 32, offset: 288)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2259, file: !92, line: 106, baseType: !2268, size: 64, offset: 320)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2270)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !92, line: 106, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2259, file: !92, line: 107, baseType: !2272, size: 64, offset: 384)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !92, line: 107, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2259, file: !92, line: 109, baseType: !2218, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2259, file: !92, line: 110, baseType: !2209, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2259, file: !92, line: 111, baseType: !2218, size: 64, offset: 576)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2259, file: !92, line: 112, baseType: !2209, size: 64, offset: 640)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2259, file: !92, line: 113, baseType: !2280, size: 64, offset: 704)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!113, !2179, !2283}
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !105, line: 60, baseType: !2284)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !105, line: 58, size: 32, elements: !2285)
!2285 = !{!2286}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2284, file: !105, line: 59, baseType: !113, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2259, file: !92, line: 114, baseType: !2218, size: 64, offset: 768)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2259, file: !92, line: 115, baseType: !418, size: 64, offset: 832)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2259, file: !92, line: 116, baseType: !418, size: 64, offset: 896)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2259, file: !92, line: 118, baseType: !2213, size: 64, offset: 960)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2259, file: !92, line: 119, baseType: !2209, size: 64, offset: 1024)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2259, file: !92, line: 121, baseType: !2293, size: 64, offset: 1088)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !92, line: 121, flags: DIFlagFwdDecl)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2246, file: !2247, line: 88, baseType: !2196, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2246, file: !2247, line: 89, baseType: !2218, size: 64, offset: 448)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2246, file: !2247, line: 90, baseType: !2209, size: 64, offset: 512)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2246, file: !2247, line: 91, baseType: !2209, size: 64, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2246, file: !2247, line: 92, baseType: !2209, size: 64, offset: 640)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2246, file: !2247, line: 94, baseType: !2218, size: 64, offset: 704)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2246, file: !2247, line: 95, baseType: !2218, size: 64, offset: 768)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2246, file: !2247, line: 97, baseType: !2280, size: 64, offset: 832)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2246, file: !2247, line: 98, baseType: !2218, size: 64, offset: 896)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2246, file: !2247, line: 100, baseType: !2218, size: 64, offset: 960)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2246, file: !2247, line: 102, baseType: !2218, size: 64, offset: 1024)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2246, file: !2247, line: 103, baseType: !2209, size: 64, offset: 1088)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2246, file: !2247, line: 105, baseType: !2213, size: 64, offset: 1152)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2246, file: !2247, line: 107, baseType: !2309, size: 64, offset: 1216)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2311)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2247, line: 107, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2246, file: !2247, line: 109, baseType: !786, size: 8, offset: 1280)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2180, file: !98, line: 715, baseType: !2258, size: 64, offset: 832)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2180, file: !98, line: 717, baseType: !218, size: 64, offset: 896)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2180, file: !98, line: 719, baseType: !218, size: 64, offset: 960)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2180, file: !98, line: 721, baseType: !706, size: 256, offset: 1024)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2180, file: !98, line: 725, baseType: !2318, size: 448, offset: 1280)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !98, line: 517, size: 448, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2318, file: !98, line: 518, baseType: !292, size: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2318, file: !98, line: 519, baseType: !292, size: 128, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2318, file: !98, line: 520, baseType: !292, size: 128, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2318, file: !98, line: 521, baseType: !97, size: 32, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2180, file: !98, line: 726, baseType: !2325, size: 2496, offset: 1728)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !105, line: 663, size: 2496, elements: !2326)
!2326 = !{!2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2409, !2413}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2325, file: !105, line: 664, baseType: !2283, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2325, file: !105, line: 665, baseType: !45, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2325, file: !105, line: 666, baseType: !45, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2325, file: !105, line: 667, baseType: !786, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2325, file: !105, line: 668, baseType: !786, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2325, file: !105, line: 669, baseType: !786, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2325, file: !105, line: 670, baseType: !786, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2325, file: !105, line: 671, baseType: !786, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2325, file: !105, line: 672, baseType: !786, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2325, file: !105, line: 673, baseType: !786, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2325, file: !105, line: 674, baseType: !786, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2325, file: !105, line: 675, baseType: !515, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2325, file: !105, line: 676, baseType: !305, size: 32, offset: 96)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2325, file: !105, line: 678, baseType: !292, size: 128, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2325, file: !105, line: 679, baseType: !655, size: 256, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2325, file: !105, line: 680, baseType: !2343, size: 64, offset: 512)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2345, line: 43, size: 1536, elements: !2346)
!2345 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2346 = !{!2347, !2348, !2349, !2350, !2351, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2344, file: !2345, line: 44, baseType: !250, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2344, file: !2345, line: 45, baseType: !113, size: 32, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2344, file: !2345, line: 46, baseType: !292, size: 128, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2344, file: !2345, line: 47, baseType: !305, size: 32, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2344, file: !2345, line: 48, baseType: !2352, size: 64, offset: 320)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !105, line: 629, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2344, file: !2345, line: 49, baseType: !948, size: 320, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2344, file: !2345, line: 50, baseType: !217, size: 64, offset: 704)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2344, file: !2345, line: 51, baseType: !1395, size: 64, offset: 768)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2344, file: !2345, line: 52, baseType: !1395, size: 64, offset: 832)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2344, file: !2345, line: 53, baseType: !1395, size: 64, offset: 896)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2344, file: !2345, line: 54, baseType: !1395, size: 64, offset: 960)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2344, file: !2345, line: 55, baseType: !1395, size: 64, offset: 1024)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2344, file: !2345, line: 56, baseType: !217, size: 64, offset: 1088)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2344, file: !2345, line: 57, baseType: !217, size: 64, offset: 1152)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2344, file: !2345, line: 58, baseType: !217, size: 64, offset: 1216)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2344, file: !2345, line: 59, baseType: !217, size: 64, offset: 1280)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2344, file: !2345, line: 60, baseType: !217, size: 64, offset: 1344)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2344, file: !2345, line: 61, baseType: !2179, size: 64, offset: 1408)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2344, file: !2345, line: 62, baseType: !786, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2344, file: !2345, line: 63, baseType: !786, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2325, file: !105, line: 681, baseType: !786, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2325, file: !105, line: 682, baseType: !786, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2325, file: !105, line: 683, baseType: !786, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2325, file: !105, line: 684, baseType: !45, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2325, file: !105, line: 685, baseType: !45, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2325, file: !105, line: 690, baseType: !1387, size: 512, offset: 640)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2325, file: !105, line: 691, baseType: !519, size: 64, offset: 1152)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2325, file: !105, line: 692, baseType: !966, size: 256, offset: 1216)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2325, file: !105, line: 693, baseType: !1241, size: 192, offset: 1472)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2325, file: !105, line: 694, baseType: !2352, size: 64, offset: 1664)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2325, file: !105, line: 695, baseType: !275, size: 32, offset: 1728)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2325, file: !105, line: 696, baseType: !275, size: 32, offset: 1760)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2325, file: !105, line: 697, baseType: !45, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2325, file: !105, line: 698, baseType: !45, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2325, file: !105, line: 699, baseType: !45, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2325, file: !105, line: 700, baseType: !45, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2325, file: !105, line: 701, baseType: !45, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2325, file: !105, line: 702, baseType: !45, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2325, file: !105, line: 703, baseType: !786, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2325, file: !105, line: 704, baseType: !45, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2325, file: !105, line: 705, baseType: !45, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2325, file: !105, line: 706, baseType: !45, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2325, file: !105, line: 707, baseType: !45, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2325, file: !105, line: 708, baseType: !45, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2325, file: !105, line: 709, baseType: !45, size: 32, offset: 1824)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2325, file: !105, line: 710, baseType: !104, size: 32, offset: 1856)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2325, file: !105, line: 711, baseType: !112, size: 32, offset: 1888)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2325, file: !105, line: 712, baseType: !112, size: 32, offset: 1920)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2325, file: !105, line: 713, baseType: !113, size: 32, offset: 1952)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2325, file: !105, line: 714, baseType: !113, size: 32, offset: 1984)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2325, file: !105, line: 715, baseType: !519, size: 64, offset: 2048)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2325, file: !105, line: 716, baseType: !519, size: 64, offset: 2112)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2325, file: !105, line: 717, baseType: !519, size: 64, offset: 2176)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2325, file: !105, line: 718, baseType: !519, size: 64, offset: 2240)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2325, file: !105, line: 720, baseType: !2404, size: 64, offset: 2304)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !105, line: 632, size: 64, elements: !2406)
!2406 = !{!2407, !2408}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2405, file: !105, line: 633, baseType: !305, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2405, file: !105, line: 634, baseType: !45, size: 32, offset: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2325, file: !105, line: 721, baseType: !2410, size: 64, offset: 2368)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !2179, !702}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2325, file: !105, line: 722, baseType: !2414, size: 64, offset: 2432)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !105, line: 722, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2180, file: !98, line: 727, baseType: !2417, size: 64, offset: 4224)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !105, line: 742, size: 1792, elements: !2419)
!2419 = !{!2420, !2421, !2422, !2426, !2427, !2428}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2418, file: !105, line: 743, baseType: !2215, size: 1472)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2418, file: !105, line: 744, baseType: !2218, size: 64, offset: 1472)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2418, file: !105, line: 745, baseType: !2423, size: 64, offset: 1536)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !2179, !786}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2418, file: !105, line: 746, baseType: !2218, size: 64, offset: 1600)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2418, file: !105, line: 747, baseType: !2209, size: 64, offset: 1664)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2418, file: !105, line: 748, baseType: !2209, size: 64, offset: 1728)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2180, file: !98, line: 736, baseType: !2430, size: 128, offset: 4288)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !98, line: 529, size: 128, elements: !2431)
!2431 = !{!2432, !2436}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2430, file: !98, line: 531, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2435, line: 13, flags: DIFlagFwdDecl)
!2435 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2430, file: !98, line: 532, baseType: !2437, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !98, line: 49, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2180, file: !98, line: 738, baseType: !2440, size: 64, offset: 4416)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2442)
!2442 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !98, line: 738, flags: DIFlagFwdDecl)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2180, file: !98, line: 740, baseType: !2444, size: 64, offset: 4480)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2180, file: !98, line: 741, baseType: !519, size: 64, offset: 4544)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2180, file: !98, line: 746, baseType: !519, size: 64, offset: 4608)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2180, file: !98, line: 747, baseType: !2448, size: 64, offset: 4672)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2450)
!2450 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !98, line: 747, flags: DIFlagFwdDecl)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2180, file: !98, line: 749, baseType: !2452, size: 64, offset: 4736)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !98, line: 428, size: 128, elements: !2454)
!2454 = !{!2455, !2456, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2453, file: !98, line: 433, baseType: !45, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2453, file: !98, line: 434, baseType: !45, size: 32, offset: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2453, file: !98, line: 435, baseType: !217, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2180, file: !98, line: 751, baseType: !292, size: 128, offset: 4800)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2180, file: !98, line: 762, baseType: !2460, size: 64, offset: 4928)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !98, line: 762, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2180, file: !98, line: 770, baseType: !2463, offset: 4992)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2464, line: 5, elements: !995)
!2464 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2180, file: !98, line: 772, baseType: !2466, size: 64, offset: 4992)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2468, line: 18, flags: DIFlagFwdDecl)
!2468 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2180, file: !98, line: 773, baseType: !2470, size: 64, offset: 5056)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2472, line: 41, size: 512, elements: !2473)
!2472 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2473 = !{!2474, !2475, !2569, !2570, !2571, !2572}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2471, file: !2472, line: 42, baseType: !2470, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2471, file: !2472, line: 43, baseType: !2476, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2478)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2472, line: 125, size: 1408, elements: !2479)
!2479 = !{!2480, !2484, !2488, !2494, !2498, !2499, !2504, !2508, !2512, !2516, !2520, !2521, !2525, !2529, !2533, !2544, !2545, !2546, !2547, !2557, !2561, !2565}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2478, file: !2472, line: 126, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!2470, !2470}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2478, file: !2472, line: 127, baseType: !2485, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{null, !2470}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2478, file: !2472, line: 128, baseType: !2489, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!786, !2492}
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2471)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2478, file: !2472, line: 129, baseType: !2495, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!1693, !2492, !2199}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2478, file: !2472, line: 131, baseType: !2489, size: 64, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2478, file: !2472, line: 133, baseType: !2500, size: 64, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!2503, !2492}
!2503 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !2472, line: 132, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2478, file: !2472, line: 134, baseType: !2505, size: 64, offset: 384)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!786, !2492, !250}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2478, file: !2472, line: 136, baseType: !2509, size: 64, offset: 448)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!113, !2492, !250, !45, !218, !414}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2478, file: !2472, line: 141, baseType: !2513, size: 64, offset: 512)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!113, !2492, !250, !1043, !414}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2478, file: !2472, line: 144, baseType: !2517, size: 64, offset: 576)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!250, !2492}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2478, file: !2472, line: 145, baseType: !2517, size: 64, offset: 640)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2478, file: !2472, line: 146, baseType: !2522, size: 64, offset: 704)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!2470, !2492}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2478, file: !2472, line: 148, baseType: !2526, size: 64, offset: 768)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!2470, !2492, !2470}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2478, file: !2472, line: 151, baseType: !2530, size: 64, offset: 832)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!2470, !2492, !250}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2478, file: !2472, line: 153, baseType: !2534, size: 64, offset: 896)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!113, !2492, !250, !250, !45, !45, !2537}
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2472, line: 94, size: 640, elements: !2539)
!2539 = !{!2540, !2541, !2542}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2538, file: !2472, line: 95, baseType: !2470, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2538, file: !2472, line: 96, baseType: !45, size: 32, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2538, file: !2472, line: 97, baseType: !2543, size: 512, offset: 128)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 512, elements: !1430)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2478, file: !2472, line: 158, baseType: !2526, size: 64, offset: 960)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2478, file: !2472, line: 161, baseType: !2522, size: 64, offset: 1024)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2478, file: !2472, line: 163, baseType: !2481, size: 64, offset: 1088)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2478, file: !2472, line: 164, baseType: !2548, size: 64, offset: 1152)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!113, !2492, !2551}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2472, line: 73, size: 128, elements: !2553)
!2553 = !{!2554, !2555, !2556}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2552, file: !2472, line: 74, baseType: !45, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2552, file: !2472, line: 75, baseType: !45, size: 32, offset: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2552, file: !2472, line: 76, baseType: !2492, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2478, file: !2472, line: 166, baseType: !2558, size: 64, offset: 1216)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!218, !2470, !113}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2478, file: !2472, line: 167, baseType: !2562, size: 64, offset: 1280)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!113, !2492, !45}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2478, file: !2472, line: 168, baseType: !2566, size: 64, offset: 1344)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!113, !2470}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2471, file: !2472, line: 44, baseType: !2179, size: 64, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2471, file: !2472, line: 45, baseType: !292, size: 128, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2471, file: !2472, line: 46, baseType: !292, size: 128, offset: 320)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2471, file: !2472, line: 47, baseType: !329, size: 8, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2180, file: !98, line: 776, baseType: !113, size: 32, offset: 5120)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2180, file: !98, line: 778, baseType: !602, size: 32, offset: 5152)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2180, file: !98, line: 779, baseType: !515, size: 32, offset: 5184)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2180, file: !98, line: 781, baseType: !305, size: 32, offset: 5216)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2180, file: !98, line: 782, baseType: !292, size: 128, offset: 5248)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2180, file: !98, line: 784, baseType: !2579, size: 64, offset: 5376)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2581)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2582, line: 52, size: 768, elements: !2583)
!2582 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2583 = !{!2584, !2585, !2586, !2587, !2588, !2592, !2596, !2597, !2598, !2623, !2627, !2631}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2581, file: !2582, line: 53, baseType: !250, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2581, file: !2582, line: 55, baseType: !418, size: 64, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2581, file: !2582, line: 56, baseType: !418, size: 64, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2581, file: !2582, line: 58, baseType: !2196, size: 64, offset: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2581, file: !2582, line: 59, baseType: !2589, size: 64, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!256, !2199, !2205}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2581, file: !2582, line: 61, baseType: !2593, size: 64, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{null, !2579}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2581, file: !2582, line: 62, baseType: !2209, size: 64, offset: 384)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2581, file: !2582, line: 64, baseType: !2218, size: 64, offset: 448)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2581, file: !2582, line: 66, baseType: !2599, size: 64, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2601)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !121, line: 39, size: 384, elements: !2602)
!2602 = !{!2603, !2604, !2608, !2612, !2618, !2622}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2601, file: !121, line: 40, baseType: !120, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2601, file: !121, line: 41, baseType: !2605, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!786}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2601, file: !121, line: 42, baseType: !2609, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!218}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2601, file: !121, line: 43, baseType: !2613, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!1693, !2616}
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !121, line: 19, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2601, file: !121, line: 44, baseType: !2619, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!1693}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2601, file: !121, line: 45, baseType: !749, size: 64, offset: 320)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2581, file: !2582, line: 67, baseType: !2624, size: 64, offset: 576)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!1693, !2199}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2581, file: !2582, line: 69, baseType: !2628, size: 64, offset: 640)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{null, !2199, !2206, !2207}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2581, file: !2582, line: 71, baseType: !2213, size: 64, offset: 704)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2180, file: !98, line: 785, baseType: !418, size: 64, offset: 5440)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2180, file: !98, line: 787, baseType: !2209, size: 64, offset: 5504)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2180, file: !98, line: 788, baseType: !2635, size: 64, offset: 5568)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !98, line: 46, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2180, file: !98, line: 789, baseType: !2638, size: 64, offset: 5632)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !98, line: 48, flags: DIFlagFwdDecl)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2180, file: !98, line: 791, baseType: !2641, size: 64, offset: 5696)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !98, line: 597, size: 128, elements: !2643)
!2643 = !{!2644, !2645, !2646, !2647, !2648}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2642, file: !98, line: 598, baseType: !126, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2642, file: !98, line: 599, baseType: !135, size: 32, offset: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2642, file: !98, line: 600, baseType: !140, size: 32, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2642, file: !98, line: 601, baseType: !786, size: 8, offset: 96)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2642, file: !98, line: 602, baseType: !786, size: 8, offset: 104)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2180, file: !98, line: 793, baseType: !145, size: 32, offset: 5760)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2180, file: !98, line: 795, baseType: !786, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2180, file: !98, line: 796, baseType: !786, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2180, file: !98, line: 797, baseType: !786, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2180, file: !98, line: 798, baseType: !786, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2180, file: !98, line: 799, baseType: !786, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2173, file: !2174, line: 197, baseType: !261, size: 64, offset: 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2173, file: !2174, line: 198, baseType: !2657, size: 64, offset: 192)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !2659, line: 101, size: 3008, elements: !2660)
!2659 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!2660 = !{!2661, !2693, !2694, !2695, !2717, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2745, !2771, !2772, !2773, !2774, !2775}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2658, file: !2659, line: 102, baseType: !2662, size: 1088)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !2663, line: 35, size: 1088, elements: !2664)
!2663 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!2664 = !{!2665, !2682, !2683, !2684, !2685, !2686, !2690, !2691, !2692}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2662, file: !2663, line: 36, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !2663, line: 10, size: 256, elements: !2668)
!2668 = !{!2669, !2674, !2675, !2676, !2677, !2678, !2679, !2680}
!2669 = !DIDerivedType(tag: DW_TAG_member, scope: !2667, file: !2663, line: 11, baseType: !2670, size: 64)
!2670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2667, file: !2663, line: 11, size: 64, elements: !2671)
!2671 = !{!2672, !2673}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2670, file: !2663, line: 12, baseType: !2666, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2670, file: !2663, line: 13, baseType: !1192, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2667, file: !2663, line: 15, baseType: !45, size: 32, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2667, file: !2663, line: 16, baseType: !45, size: 32, offset: 96)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !2667, file: !2663, line: 17, baseType: !45, size: 32, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2667, file: !2663, line: 18, baseType: !45, size: 32, offset: 160)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2667, file: !2663, line: 19, baseType: !45, size: 32, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2667, file: !2663, line: 20, baseType: !786, size: 8, offset: 224)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2667, file: !2663, line: 22, baseType: !2681, align: 64, offset: 256)
!2681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, elements: !1734)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2662, file: !2663, line: 37, baseType: !966, size: 256, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2662, file: !2663, line: 38, baseType: !706, size: 256, offset: 320)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2662, file: !2663, line: 39, baseType: !275, size: 32, offset: 576)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !2662, file: !2663, line: 40, baseType: !2667, size: 256, offset: 640)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2662, file: !2663, line: 41, baseType: !2687, size: 64, offset: 896)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1193, line: 56, size: 64, elements: !2688)
!2688 = !{!2689}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2687, file: !1193, line: 57, baseType: !1196, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !2662, file: !2663, line: 42, baseType: !275, size: 32, offset: 960)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !2662, file: !2663, line: 43, baseType: !113, size: 32, offset: 992)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2662, file: !2663, line: 44, baseType: !2666, size: 64, offset: 1024)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2658, file: !2659, line: 103, baseType: !2172, size: 64, offset: 1088)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !2658, file: !2659, line: 104, baseType: !2172, size: 64, offset: 1152)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2658, file: !2659, line: 105, baseType: !2696, size: 64, offset: 1216)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2698)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !2659, line: 33, size: 320, elements: !2699)
!2699 = !{!2700, !2704, !2708, !2712, !2716}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !2698, file: !2659, line: 34, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!786, !2657}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !2698, file: !2659, line: 35, baseType: !2705, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{null, !2657, !786}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2698, file: !2659, line: 36, baseType: !2709, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null, !2657}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2698, file: !2659, line: 37, baseType: !2713, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!113, !2657, !2172}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !2698, file: !2659, line: 38, baseType: !2709, size: 64, offset: 256)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !2658, file: !2659, line: 106, baseType: !2718, size: 64, offset: 1280)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2720)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !2659, line: 41, size: 192, elements: !2721)
!2721 = !{!2722, !2728, !2732}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2720, file: !2659, line: 42, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!414, !2657, !2726, !2726, !414}
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !2720, file: !2659, line: 44, baseType: !2729, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null, !2657, !2726, !2726, !414}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2720, file: !2659, line: 46, baseType: !2709, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2658, file: !2659, line: 107, baseType: !305, size: 32, offset: 1344)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !2658, file: !2659, line: 108, baseType: !113, size: 32, offset: 1376)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2658, file: !2659, line: 109, baseType: !113, size: 32, offset: 1408)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !2658, file: !2659, line: 110, baseType: !1241, size: 192, offset: 1472)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !2658, file: !2659, line: 111, baseType: !1241, size: 192, offset: 1664)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2658, file: !2659, line: 112, baseType: !217, size: 64, offset: 1856)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !2658, file: !2659, line: 113, baseType: !217, size: 64, offset: 1920)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !2658, file: !2659, line: 114, baseType: !332, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2658, file: !2659, line: 115, baseType: !706, size: 256, offset: 2048)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !2658, file: !2659, line: 116, baseType: !706, size: 256, offset: 2304)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !2658, file: !2659, line: 117, baseType: !2744, size: 64, offset: 2560)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !2658, file: !2659, line: 118, baseType: !2746, size: 192, offset: 2624)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2658, file: !2659, line: 118, size: 192, elements: !2747)
!2747 = !{!2748, !2769}
!2748 = !DIDerivedType(tag: DW_TAG_member, scope: !2746, file: !2659, line: 118, baseType: !2749, size: 192)
!2749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2746, file: !2659, line: 118, size: 192, elements: !2750)
!2750 = !{!2751, !2760, !2761, !2762, !2767, !2768}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !2749, file: !2659, line: 118, baseType: !2752, size: 192)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !2753, line: 44, size: 192, elements: !2754)
!2753 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!2754 = !{!2755, !2756, !2757, !2758, !2759}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2752, file: !2753, line: 45, baseType: !45, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2752, file: !2753, line: 46, baseType: !45, size: 32, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2752, file: !2753, line: 47, baseType: !45, size: 32, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !2752, file: !2753, line: 48, baseType: !45, size: 32, offset: 96)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2752, file: !2753, line: 49, baseType: !218, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2749, file: !2659, line: 118, baseType: !2744, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !2749, file: !2659, line: 118, baseType: !523, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !2749, file: !2659, line: 118, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !2765)
!2765 = !{!2766}
!2766 = !DISubrange(count: 0)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2749, file: !2659, line: 118, baseType: !2744, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !2749, file: !2659, line: 118, baseType: !523, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2746, file: !2659, line: 118, baseType: !2770, offset: 192)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, elements: !2765)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !2658, file: !2659, line: 119, baseType: !45, size: 32, offset: 2816)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !2658, file: !2659, line: 120, baseType: !45, size: 32, offset: 2848)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !2658, file: !2659, line: 121, baseType: !113, size: 32, offset: 2880)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2658, file: !2659, line: 122, baseType: !266, size: 32, offset: 2912)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !2658, file: !2659, line: 123, baseType: !218, size: 64, offset: 2944)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2173, file: !2174, line: 199, baseType: !2777, size: 64, offset: 256)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2779)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !263, line: 357, size: 2176, elements: !2780)
!2780 = !{!2781, !2785, !2789, !2793, !2797, !2801, !2805, !2806, !2810, !2814, !2815, !2819, !2820, !2824, !2828, !2850, !2851, !2852, !2853, !2854, !2855, !2859, !2860, !2861, !2862, !2866, !2870, !2874, !2878, !2890, !2913, !2939, !2940, !2944}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2779, file: !263, line: 358, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!2172, !261, !1590, !113}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !2779, file: !263, line: 360, baseType: !2786, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!113, !261, !2172}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2779, file: !263, line: 361, baseType: !2790, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{null, !261, !2172}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2779, file: !263, line: 362, baseType: !2794, size: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!113, !2172, !1590}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2779, file: !263, line: 363, baseType: !2798, size: 64, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2172, !1590}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2779, file: !263, line: 364, baseType: !2802, size: 64, offset: 320)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !2172}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2779, file: !263, line: 365, baseType: !2802, size: 64, offset: 384)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2779, file: !263, line: 366, baseType: !2807, size: 64, offset: 448)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!399, !2172, !2726, !414}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !2779, file: !263, line: 367, baseType: !2811, size: 64, offset: 512)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!113, !2172, !329}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !2779, file: !263, line: 368, baseType: !2802, size: 64, offset: 576)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !2779, file: !263, line: 369, baseType: !2816, size: 64, offset: 640)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!45, !2172}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !2779, file: !263, line: 370, baseType: !2816, size: 64, offset: 704)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2779, file: !263, line: 371, baseType: !2821, size: 64, offset: 768)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!113, !2172, !45, !217}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2779, file: !263, line: 373, baseType: !2825, size: 64, offset: 832)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!403, !2172, !45, !217}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2779, file: !263, line: 375, baseType: !2829, size: 64, offset: 896)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{null, !2172, !2832}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2834)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !2835, line: 30, size: 352, elements: !2836)
!2835 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!2836 = !{!2837, !2839, !2840, !2841, !2842, !2845, !2847, !2849}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !2834, file: !2835, line: 31, baseType: !2838, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !2835, line: 7, baseType: !45)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !2834, file: !2835, line: 32, baseType: !2838, size: 32, offset: 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !2834, file: !2835, line: 33, baseType: !2838, size: 32, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !2834, file: !2835, line: 34, baseType: !2838, size: 32, offset: 96)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !2834, file: !2835, line: 35, baseType: !2843, size: 8, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !2844, line: 5, baseType: !332)
!2844 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !2834, file: !2835, line: 36, baseType: !2846, size: 152, offset: 136)
!2846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2843, size: 152, elements: !230)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !2834, file: !2835, line: 37, baseType: !2848, size: 32, offset: 288)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !2844, line: 6, baseType: !45)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !2834, file: !2835, line: 38, baseType: !2848, size: 32, offset: 320)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2779, file: !263, line: 376, baseType: !2802, size: 64, offset: 960)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !2779, file: !263, line: 377, baseType: !2802, size: 64, offset: 1024)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2779, file: !263, line: 378, baseType: !2802, size: 64, offset: 1088)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2779, file: !263, line: 379, baseType: !2802, size: 64, offset: 1152)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2779, file: !263, line: 380, baseType: !2802, size: 64, offset: 1216)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !2779, file: !263, line: 381, baseType: !2856, size: 64, offset: 1280)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!113, !2172, !113}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2779, file: !263, line: 382, baseType: !2802, size: 64, offset: 1344)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !2779, file: !263, line: 383, baseType: !2856, size: 64, offset: 1408)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !2779, file: !263, line: 384, baseType: !2802, size: 64, offset: 1472)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !2779, file: !263, line: 385, baseType: !2863, size: 64, offset: 1536)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{null, !2172, !113}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !2779, file: !263, line: 386, baseType: !2867, size: 64, offset: 1600)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{null, !2172, !4}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !2779, file: !263, line: 387, baseType: !2871, size: 64, offset: 1664)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!113, !2172}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !2779, file: !263, line: 388, baseType: !2875, size: 64, offset: 1728)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!113, !2172, !45, !45}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !2779, file: !263, line: 390, baseType: !2879, size: 64, offset: 1792)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!113, !2172, !2882}
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !2884, line: 15, size: 64, elements: !2885)
!2884 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!2885 = !{!2886, !2887, !2888, !2889}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !2883, file: !2884, line: 16, baseType: !225, size: 16)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !2883, file: !2884, line: 17, baseType: !225, size: 16, offset: 16)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !2883, file: !2884, line: 18, baseType: !225, size: 16, offset: 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !2883, file: !2884, line: 19, baseType: !225, size: 16, offset: 48)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !2779, file: !263, line: 391, baseType: !2891, size: 64, offset: 1856)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!113, !2172, !2894}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !2896, line: 102, size: 640, elements: !2897)
!2896 = !DIFile(filename: "./include/uapi/linux/serial.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a92ffabcada0669ea97b2d286627d08d")
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "cts", scope: !2895, file: !2896, line: 103, baseType: !113, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !2895, file: !2896, line: 103, baseType: !113, size: 32, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !2895, file: !2896, line: 103, baseType: !113, size: 32, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "dcd", scope: !2895, file: !2896, line: 103, baseType: !113, size: 32, offset: 96)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !2895, file: !2896, line: 104, baseType: !113, size: 32, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !2895, file: !2896, line: 104, baseType: !113, size: 32, offset: 160)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !2895, file: !2896, line: 105, baseType: !113, size: 32, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "overrun", scope: !2895, file: !2896, line: 105, baseType: !113, size: 32, offset: 224)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !2895, file: !2896, line: 105, baseType: !113, size: 32, offset: 256)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2895, file: !2896, line: 105, baseType: !113, size: 32, offset: 288)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "buf_overrun", scope: !2895, file: !2896, line: 106, baseType: !113, size: 32, offset: 320)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2895, file: !2896, line: 107, baseType: !2910, size: 288, offset: 352)
!2910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 288, elements: !2911)
!2911 = !{!2912}
!2912 = !DISubrange(count: 9)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !2779, file: !263, line: 393, baseType: !2914, size: 64, offset: 1920)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!113, !2172, !2917}
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !2896, line: 19, size: 576, elements: !2919)
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2932, !2933, !2934, !2935, !2936, !2937, !2938}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2918, file: !2896, line: 20, baseType: !113, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2918, file: !2896, line: 21, baseType: !113, size: 32, offset: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2918, file: !2896, line: 22, baseType: !45, size: 32, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2918, file: !2896, line: 23, baseType: !113, size: 32, offset: 96)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2918, file: !2896, line: 24, baseType: !113, size: 32, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo_size", scope: !2918, file: !2896, line: 25, baseType: !113, size: 32, offset: 160)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "custom_divisor", scope: !2918, file: !2896, line: 26, baseType: !113, size: 32, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "baud_base", scope: !2918, file: !2896, line: 27, baseType: !113, size: 32, offset: 224)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !2918, file: !2896, line: 28, baseType: !225, size: 16, offset: 256)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "io_type", scope: !2918, file: !2896, line: 29, baseType: !4, size: 8, offset: 272)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_char", scope: !2918, file: !2896, line: 30, baseType: !2931, size: 8, offset: 280)
!2931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !1515)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "hub6", scope: !2918, file: !2896, line: 31, baseType: !113, size: 32, offset: 288)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !2918, file: !2896, line: 32, baseType: !225, size: 16, offset: 320)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait2", scope: !2918, file: !2896, line: 33, baseType: !225, size: 16, offset: 336)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "iomem_base", scope: !2918, file: !2896, line: 34, baseType: !2744, size: 64, offset: 384)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "iomem_reg_shift", scope: !2918, file: !2896, line: 35, baseType: !225, size: 16, offset: 448)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "port_high", scope: !2918, file: !2896, line: 36, baseType: !45, size: 32, offset: 480)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "iomap_base", scope: !2918, file: !2896, line: 37, baseType: !217, size: 64, offset: 512)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !2779, file: !263, line: 394, baseType: !2914, size: 64, offset: 1984)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2779, file: !263, line: 395, baseType: !2941, size: 64, offset: 2048)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !2172, !1148}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !2779, file: !263, line: 401, baseType: !1179, size: 64, offset: 2112)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !2173, file: !2174, line: 201, baseType: !2946, size: 64, offset: 320)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !2948, line: 269, size: 128, elements: !2949)
!2948 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!2949 = !{!2950, !2995}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2947, file: !2948, line: 270, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !2948, line: 231, size: 1152, elements: !2953)
!2953 = !{!2954, !2955, !2956, !2957, !2958, !2959, !2965, !2969, !2970, !2971, !2972, !2979, !2980, !2984, !2985, !2989, !2993, !2994}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2952, file: !2948, line: 232, baseType: !256, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2952, file: !2948, line: 233, baseType: !113, size: 32, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2952, file: !2948, line: 238, baseType: !2871, size: 64, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2952, file: !2948, line: 239, baseType: !2802, size: 64, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2952, file: !2948, line: 240, baseType: !2802, size: 64, offset: 256)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2952, file: !2948, line: 241, baseType: !2960, size: 64, offset: 320)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!399, !2172, !1590, !2963, !414, !2964, !217}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2952, file: !2948, line: 243, baseType: !2966, size: 64, offset: 384)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!399, !2172, !1590, !2726, !414}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2952, file: !2948, line: 245, baseType: !2821, size: 64, offset: 448)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2952, file: !2948, line: 247, baseType: !2821, size: 64, offset: 512)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2952, file: !2948, line: 249, baseType: !2829, size: 64, offset: 576)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2952, file: !2948, line: 250, baseType: !2973, size: 64, offset: 640)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!2976, !2172, !1590, !2977}
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !222, line: 59, baseType: !45)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !76, line: 61, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2952, file: !2948, line: 252, baseType: !2802, size: 64, offset: 704)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2952, file: !2948, line: 257, baseType: !2981, size: 64, offset: 768)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !2172, !2726, !2726, !414}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2952, file: !2948, line: 259, baseType: !2802, size: 64, offset: 832)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !2952, file: !2948, line: 260, baseType: !2986, size: 64, offset: 896)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2172, !786}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !2952, file: !2948, line: 261, baseType: !2990, size: 64, offset: 960)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!414, !2172, !2726, !2726, !414}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !2952, file: !2948, line: 263, baseType: !2981, size: 64, offset: 1024)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2952, file: !2948, line: 266, baseType: !635, size: 64, offset: 1088)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2947, file: !2948, line: 271, baseType: !2172, size: 64, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !2173, file: !2174, line: 202, baseType: !2997, size: 384, offset: 384)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !2948, line: 17, size: 384, elements: !2998)
!2998 = !{!2999, !3000, !3001, !3002, !3003}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2997, file: !2948, line: 18, baseType: !710, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2997, file: !2948, line: 19, baseType: !664, size: 32, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !2997, file: !2948, line: 20, baseType: !45, size: 32, offset: 96)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2997, file: !2948, line: 21, baseType: !292, size: 128, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2997, file: !2948, line: 22, baseType: !292, size: 128, offset: 256)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !2173, file: !2174, line: 204, baseType: !706, size: 256, offset: 768)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !2173, file: !2174, line: 205, baseType: !706, size: 256, offset: 1024)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !2173, file: !2174, line: 206, baseType: !706, size: 256, offset: 1280)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !2173, file: !2174, line: 207, baseType: !1616, size: 320, offset: 1536)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !2173, file: !2174, line: 208, baseType: !706, size: 256, offset: 1856)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !2173, file: !2174, line: 209, baseType: !2834, size: 352, offset: 2112)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !2173, file: !2174, line: 209, baseType: !2834, size: 352, offset: 2464)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2173, file: !2174, line: 210, baseType: !3012, size: 512, offset: 2816)
!3012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !372)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2173, file: !2174, line: 211, baseType: !217, size: 64, offset: 3328)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2173, file: !2174, line: 212, baseType: !113, size: 32, offset: 3392)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !2173, file: !2174, line: 213, baseType: !45, size: 32, offset: 3424)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !2173, file: !2174, line: 214, baseType: !2883, size: 64, offset: 3456)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !2173, file: !2174, line: 221, baseType: !3018, size: 64, align: 64, offset: 3520)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2173, file: !2174, line: 216, size: 64, align: 64, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3018, file: !2174, line: 217, baseType: !305, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !3018, file: !2174, line: 218, baseType: !786, size: 8, offset: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !3018, file: !2174, line: 219, baseType: !786, size: 8, offset: 40)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3018, file: !2174, line: 220, baseType: !3024, offset: 64)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !2765)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !2173, file: !2174, line: 230, baseType: !3026, size: 192, align: 64, offset: 3584)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2173, file: !2174, line: 223, size: 192, align: 64, elements: !3027)
!3027 = !{!3028, !3029, !3030, !3031, !3032, !3033}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !3026, file: !2174, line: 224, baseType: !1231, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !3026, file: !2174, line: 225, baseType: !1231, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3026, file: !2174, line: 226, baseType: !305, size: 32, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !3026, file: !2174, line: 227, baseType: !332, size: 8, offset: 160)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !3026, file: !2174, line: 228, baseType: !786, size: 8, offset: 168)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3026, file: !2174, line: 229, baseType: !3024, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !2173, file: !2174, line: 232, baseType: !786, size: 8, offset: 3776)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !2173, file: !2174, line: 233, baseType: !786, size: 8, offset: 3784)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !2173, file: !2174, line: 234, baseType: !113, size: 32, offset: 3808)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2173, file: !2174, line: 236, baseType: !2172, size: 64, offset: 3840)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2173, file: !2174, line: 237, baseType: !3039, size: 64, offset: 3904)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !76, line: 1083, size: 384, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3047}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3040, file: !76, line: 1084, baseType: !1210, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3040, file: !76, line: 1085, baseType: !113, size: 32, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3040, file: !76, line: 1086, baseType: !113, size: 32, offset: 96)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3040, file: !76, line: 1087, baseType: !3039, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3040, file: !76, line: 1088, baseType: !1590, size: 64, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3040, file: !76, line: 1089, baseType: !926, size: 128, align: 64, offset: 256)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2173, file: !2174, line: 238, baseType: !1241, size: 192, offset: 3968)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2173, file: !2174, line: 239, baseType: !1241, size: 192, offset: 4160)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !2173, file: !2174, line: 240, baseType: !966, size: 256, offset: 4352)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !2173, file: !2174, line: 241, baseType: !218, size: 64, offset: 4608)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2173, file: !2174, line: 242, baseType: !218, size: 64, offset: 4672)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !2173, file: !2174, line: 243, baseType: !305, size: 32, offset: 4736)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !2173, file: !2174, line: 244, baseType: !113, size: 32, offset: 4768)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2173, file: !2174, line: 245, baseType: !2744, size: 64, offset: 4800)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !2173, file: !2174, line: 247, baseType: !292, size: 128, offset: 4864)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !2173, file: !2174, line: 250, baseType: !966, size: 256, offset: 4992)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2107, file: !2108, line: 185, baseType: !3059, size: 64, offset: 3328)
!3059 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !488, line: 860, baseType: !3060)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 853, size: 64, elements: !3061)
!3061 = !{!3062, !3063}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3060, file: !488, line: 858, baseType: !487, size: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3060, file: !488, line: 859, baseType: !305, size: 32, offset: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2107, file: !2108, line: 186, baseType: !519, size: 64, offset: 3392)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2107, file: !2108, line: 186, baseType: !519, size: 64, offset: 3456)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2107, file: !2108, line: 186, baseType: !519, size: 64, offset: 3520)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2107, file: !2108, line: 186, baseType: !519, size: 64, offset: 3584)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2107, file: !2108, line: 187, baseType: !519, size: 64, offset: 3648)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2107, file: !2108, line: 188, baseType: !519, size: 64, offset: 3712)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2107, file: !2108, line: 189, baseType: !1840, size: 192, offset: 3776)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2107, file: !2108, line: 190, baseType: !217, size: 64, offset: 3968)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2107, file: !2108, line: 190, baseType: !217, size: 64, offset: 4032)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2107, file: !2108, line: 190, baseType: !217, size: 64, offset: 4096)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2107, file: !2108, line: 190, baseType: !217, size: 64, offset: 4160)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2107, file: !2108, line: 191, baseType: !217, size: 64, offset: 4224)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2107, file: !2108, line: 191, baseType: !217, size: 64, offset: 4288)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2107, file: !2108, line: 191, baseType: !217, size: 64, offset: 4352)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2107, file: !2108, line: 191, baseType: !217, size: 64, offset: 4416)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2107, file: !2108, line: 192, baseType: !217, size: 64, offset: 4480)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2107, file: !2108, line: 192, baseType: !217, size: 64, offset: 4544)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2107, file: !2108, line: 192, baseType: !217, size: 64, offset: 4608)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2107, file: !2108, line: 192, baseType: !217, size: 64, offset: 4672)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2107, file: !2108, line: 193, baseType: !217, size: 64, offset: 4736)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2107, file: !2108, line: 193, baseType: !217, size: 64, offset: 4800)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2107, file: !2108, line: 194, baseType: !3086, size: 448, offset: 4864)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3087, line: 12, size: 448, elements: !3088)
!3087 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3088 = !{!3089, !3090, !3091, !3092, !3093, !3094, !3095}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3086, file: !3087, line: 15, baseType: !519, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3086, file: !3087, line: 17, baseType: !519, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3086, file: !3087, line: 19, baseType: !519, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3086, file: !3087, line: 21, baseType: !519, size: 64, offset: 192)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3086, file: !3087, line: 29, baseType: !519, size: 64, offset: 256)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3086, file: !3087, line: 35, baseType: !519, size: 64, offset: 320)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3086, file: !3087, line: 44, baseType: !519, size: 64, offset: 384)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2107, file: !2108, line: 202, baseType: !521, size: 64, offset: 5312)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2107, file: !2108, line: 213, baseType: !3098, size: 2048, offset: 5376)
!3098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3099, size: 2048, elements: !243)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3100, line: 43, size: 128, elements: !3101)
!3100 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3101 = !{!3102, !3103}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3099, file: !3100, line: 44, baseType: !416, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3099, file: !3100, line: 45, baseType: !416, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2107, file: !2108, line: 216, baseType: !3105, size: 448, offset: 7424)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2108, line: 30, size: 448, elements: !3106)
!3106 = !{!3107, !3108, !3109, !3110, !3111, !3112, !3113}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3105, file: !2108, line: 31, baseType: !113, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3105, file: !2108, line: 32, baseType: !403, size: 64, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3105, file: !2108, line: 33, baseType: !217, size: 64, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3105, file: !2108, line: 34, baseType: !519, size: 64, offset: 192)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3105, file: !2108, line: 34, baseType: !519, size: 64, offset: 256)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3105, file: !2108, line: 35, baseType: !217, size: 64, offset: 320)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3105, file: !2108, line: 35, baseType: !217, size: 64, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2107, file: !2108, line: 219, baseType: !3115, size: 64, offset: 7872)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2108, line: 219, flags: DIFlagFwdDecl)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2107, file: !2108, line: 222, baseType: !45, size: 32, offset: 7936)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2107, file: !2108, line: 223, baseType: !3119, size: 64, offset: 8000)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2108, line: 223, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2107, file: !2108, line: 230, baseType: !786, size: 8, offset: 8064)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2107, file: !2108, line: 231, baseType: !844, size: 16, offset: 8080)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2107, file: !2108, line: 232, baseType: !844, size: 16, offset: 8096)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2107, file: !2108, line: 234, baseType: !1563, size: 64, offset: 8128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2107, file: !2108, line: 237, baseType: !706, size: 256, offset: 8192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2107, file: !2108, line: 243, baseType: !1616, size: 320, offset: 8448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1276, file: !1277, line: 1111, baseType: !3128, size: 64, offset: 15424)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2108, line: 20, size: 16640, elements: !3130)
!3130 = !{!3131, !3132, !3133, !3134}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3129, file: !2108, line: 21, baseType: !305, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3129, file: !2108, line: 22, baseType: !270, size: 32, offset: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3129, file: !2108, line: 23, baseType: !1241, size: 192, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3129, file: !2108, line: 24, baseType: !3135, size: 16384, offset: 256)
!3135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3136, size: 16384, elements: !372)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2037, line: 51, size: 256, elements: !3137)
!3137 = !{!3138}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3136, file: !2037, line: 52, baseType: !3139, size: 256)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2037, line: 37, size: 256, elements: !3140)
!3140 = !{!3141, !3148, !3149, !3153}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3139, file: !2037, line: 39, baseType: !3142, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3143, line: 83, baseType: !3144)
!3143 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3143, line: 82, baseType: !3146)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{null, !113}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3139, file: !2037, line: 40, baseType: !217, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3139, file: !2037, line: 46, baseType: !3150, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3143, line: 86, baseType: !3151)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3143, line: 85, baseType: !1071)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3139, file: !2037, line: 48, baseType: !2122, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1276, file: !1277, line: 1112, baseType: !2122, size: 64, offset: 15488)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1276, file: !1277, line: 1113, baseType: !2122, size: 64, offset: 15552)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1276, file: !1277, line: 1115, baseType: !2122, size: 64, offset: 15616)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1276, file: !1277, line: 1116, baseType: !2118, size: 192, offset: 15680)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1276, file: !1277, line: 1117, baseType: !217, size: 64, offset: 15872)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1276, file: !1277, line: 1118, baseType: !414, size: 64, offset: 15936)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1276, file: !1277, line: 1119, baseType: !45, size: 32, offset: 16000)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1276, file: !1277, line: 1121, baseType: !925, size: 64, offset: 16064)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1276, file: !1277, line: 1125, baseType: !3163, size: 64, offset: 16128)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1277, line: 43, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1276, file: !1277, line: 1127, baseType: !452, size: 32, offset: 16192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1276, file: !1277, line: 1128, baseType: !45, size: 32, offset: 16224)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1276, file: !1277, line: 1130, baseType: !3168, size: 128, offset: 16256)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3169, line: 37, size: 128, elements: !3170)
!3169 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3170 = !{!3171, !3172, !3173}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3168, file: !3169, line: 38, baseType: !113, size: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3168, file: !3169, line: 39, baseType: !275, size: 32, offset: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3168, file: !3169, line: 40, baseType: !3174, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3169, line: 24, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1276, file: !1277, line: 1131, baseType: !3177, size: 256, offset: 16384)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3178, line: 12, size: 256, elements: !3179)
!3178 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3179 = !{!3180, !3181, !3182, !3183}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3177, file: !3178, line: 13, baseType: !256, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3177, file: !3178, line: 14, baseType: !217, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3177, file: !3178, line: 15, baseType: !217, size: 64, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3177, file: !3178, line: 16, baseType: !786, size: 8, offset: 192)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1276, file: !1277, line: 1134, baseType: !519, size: 64, offset: 16640)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1276, file: !1277, line: 1135, baseType: !519, size: 64, offset: 16704)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1276, file: !1277, line: 1138, baseType: !305, size: 32, offset: 16768)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1276, file: !1277, line: 1141, baseType: !664, size: 32, offset: 16800)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1276, file: !1277, line: 1143, baseType: !3189, size: 64, offset: 16832)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1277, line: 735, size: 64, elements: !3190)
!3190 = !{!3191}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3189, file: !1277, line: 736, baseType: !3192, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1276, file: !1277, line: 1147, baseType: !1446, size: 128, offset: 16896)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1276, file: !1277, line: 1149, baseType: !1275, size: 64, offset: 17024)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1276, file: !1277, line: 1151, baseType: !3196, size: 64, offset: 17088)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1277, line: 1151, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1276, file: !1277, line: 1188, baseType: !218, size: 64, offset: 17152)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1276, file: !1277, line: 1191, baseType: !3200, size: 64, offset: 17216)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1277, line: 44, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1276, file: !1277, line: 1194, baseType: !3203, size: 64, offset: 17280)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1277, line: 45, flags: DIFlagFwdDecl)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1276, file: !1277, line: 1197, baseType: !3206, size: 64, offset: 17344)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1277, line: 61, flags: DIFlagFwdDecl)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1276, file: !1277, line: 1199, baseType: !3209, size: 64, offset: 17408)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3211, line: 99, size: 128, elements: !3212)
!3211 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3212 = !{!3213, !3214, !3215}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3210, file: !3211, line: 100, baseType: !710, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3210, file: !3211, line: 101, baseType: !275, size: 32, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3210, file: !3211, line: 103, baseType: !225, size: 16, offset: 96)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1276, file: !1277, line: 1202, baseType: !3217, size: 64, offset: 17472)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1277, line: 48, flags: DIFlagFwdDecl)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1276, file: !1277, line: 1205, baseType: !217, size: 64, offset: 17536)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1276, file: !1277, line: 1206, baseType: !3221, size: 64, offset: 17600)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2037, line: 14, baseType: !3223)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2037, line: 12, size: 384, elements: !3224)
!3224 = !{!3225}
!3225 = !DIDerivedType(tag: DW_TAG_member, scope: !3223, file: !2037, line: 13, baseType: !3226, size: 384)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3223, file: !2037, line: 13, size: 384, elements: !3227)
!3227 = !{!3228, !3229, !3230, !3231}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3226, file: !2037, line: 13, baseType: !113, size: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3226, file: !2037, line: 13, baseType: !113, size: 32, offset: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3226, file: !2037, line: 13, baseType: !113, size: 32, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3226, file: !2037, line: 13, baseType: !3232, size: 256, offset: 128)
!3232 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3233, line: 37, size: 256, elements: !3234)
!3233 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3234 = !{!3235, !3240, !3253, !3259, !3268, !3295, !3300}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3232, file: !3233, line: 42, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3232, file: !3233, line: 39, size: 64, elements: !3237)
!3237 = !{!3238, !3239}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3236, file: !3233, line: 40, baseType: !1817, size: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3236, file: !3233, line: 41, baseType: !458, size: 32, offset: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3232, file: !3233, line: 50, baseType: !3241, size: 192)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3232, file: !3233, line: 45, size: 192, elements: !3242)
!3242 = !{!3243, !3245, !3246, !3252}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3241, file: !3233, line: 46, baseType: !3244, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !401, line: 95, baseType: !113)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3241, file: !3233, line: 47, baseType: !113, size: 32, offset: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3241, file: !3233, line: 48, baseType: !3247, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3233, line: 11, baseType: !3248)
!3248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3233, line: 8, size: 64, elements: !3249)
!3249 = !{!3250, !3251}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3248, file: !3233, line: 9, baseType: !113, size: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3248, file: !3233, line: 10, baseType: !218, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3241, file: !3233, line: 49, baseType: !113, size: 32, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3232, file: !3233, line: 57, baseType: !3254, size: 128)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3232, file: !3233, line: 53, size: 128, elements: !3255)
!3255 = !{!3256, !3257, !3258}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3254, file: !3233, line: 54, baseType: !1817, size: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3254, file: !3233, line: 55, baseType: !458, size: 32, offset: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3254, file: !3233, line: 56, baseType: !3247, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3232, file: !3233, line: 66, baseType: !3260, size: 256)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3232, file: !3233, line: 60, size: 256, elements: !3261)
!3261 = !{!3262, !3263, !3264, !3265, !3267}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3260, file: !3233, line: 61, baseType: !1817, size: 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3260, file: !3233, line: 62, baseType: !458, size: 32, offset: 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3260, file: !3233, line: 63, baseType: !113, size: 32, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3260, file: !3233, line: 64, baseType: !3266, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !401, line: 94, baseType: !402)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3260, file: !3233, line: 65, baseType: !3266, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3232, file: !3233, line: 105, baseType: !3269, size: 256)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3232, file: !3233, line: 69, size: 256, elements: !3270)
!3270 = !{!3271, !3272}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3269, file: !3233, line: 70, baseType: !218, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !3269, file: !3233, line: 79, baseType: !3273, size: 192, offset: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3269, file: !3233, line: 79, size: 192, elements: !3274)
!3274 = !{!3275, !3276, !3277, !3284, !3289}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3273, file: !3233, line: 81, baseType: !113, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3273, file: !3233, line: 86, baseType: !844, size: 16)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3273, file: !3233, line: 92, baseType: !3278, size: 192)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3273, file: !3233, line: 88, size: 192, elements: !3279)
!3279 = !{!3280, !3282, !3283}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3278, file: !3233, line: 89, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1430)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3278, file: !3233, line: 90, baseType: !218, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3278, file: !3233, line: 91, baseType: !218, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3273, file: !3233, line: 97, baseType: !3285, size: 96)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3273, file: !3233, line: 94, size: 96, elements: !3286)
!3286 = !{!3287, !3288}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3285, file: !3233, line: 95, baseType: !3281, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3285, file: !3233, line: 96, baseType: !516, size: 32, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3273, file: !3233, line: 103, baseType: !3290, size: 128)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3273, file: !3233, line: 99, size: 128, elements: !3291)
!3291 = !{!3292, !3293, !3294}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3290, file: !3233, line: 100, baseType: !217, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3290, file: !3233, line: 101, baseType: !516, size: 32, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3290, file: !3233, line: 102, baseType: !516, size: 32, offset: 96)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3232, file: !3233, line: 111, baseType: !3296, size: 128)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3232, file: !3233, line: 108, size: 128, elements: !3297)
!3297 = !{!3298, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3296, file: !3233, line: 109, baseType: !403, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3296, file: !3233, line: 110, baseType: !113, size: 32, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3232, file: !3233, line: 118, baseType: !3301, size: 128)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3232, file: !3233, line: 114, size: 128, elements: !3302)
!3302 = !{!3303, !3304, !3305}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3301, file: !3233, line: 115, baseType: !218, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3301, file: !3233, line: 116, baseType: !113, size: 32, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3301, file: !3233, line: 117, baseType: !45, size: 32, offset: 96)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1276, file: !1277, line: 1208, baseType: !3086, size: 448, offset: 17664)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1276, file: !1277, line: 1215, baseType: !519, size: 64, offset: 18112)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1276, file: !1277, line: 1217, baseType: !519, size: 64, offset: 18176)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1276, file: !1277, line: 1219, baseType: !519, size: 64, offset: 18240)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1276, file: !1277, line: 1223, baseType: !3311, size: 64, offset: 18304)
!3311 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3312, line: 99, baseType: !3313)
!3312 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3312, line: 99, size: 64, elements: !3314)
!3314 = !{!3315}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3313, file: !3312, line: 99, baseType: !1514, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1276, file: !1277, line: 1225, baseType: !487, size: 32, offset: 18368)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1276, file: !1277, line: 1226, baseType: !113, size: 32, offset: 18400)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1276, file: !1277, line: 1227, baseType: !113, size: 32, offset: 18432)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1276, file: !1277, line: 1231, baseType: !3320, size: 64, offset: 18496)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1277, line: 1231, flags: DIFlagFwdDecl)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1276, file: !1277, line: 1233, baseType: !292, size: 128, offset: 18560)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1276, file: !1277, line: 1240, baseType: !3324, size: 64, offset: 18688)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1277, line: 62, flags: DIFlagFwdDecl)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1276, file: !1277, line: 1242, baseType: !3327, size: 64, offset: 18752)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1277, line: 1242, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1276, file: !1277, line: 1244, baseType: !292, size: 128, offset: 18816)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1276, file: !1277, line: 1245, baseType: !3331, size: 64, offset: 18944)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1277, line: 51, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1276, file: !1277, line: 1246, baseType: !706, size: 256, offset: 19008)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1276, file: !1277, line: 1247, baseType: !45, size: 32, offset: 19264)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1276, file: !1277, line: 1250, baseType: !3336, size: 64, offset: 19328)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1277, line: 57, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1276, file: !1277, line: 1251, baseType: !706, size: 256, offset: 19392)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1276, file: !1277, line: 1252, baseType: !292, size: 128, offset: 19648)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1276, file: !1277, line: 1259, baseType: !3341, size: 64, offset: 19776)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1277, line: 54, flags: DIFlagFwdDecl)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1276, file: !1277, line: 1260, baseType: !844, size: 16, offset: 19840)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1276, file: !1277, line: 1261, baseType: !844, size: 16, offset: 19856)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1276, file: !1277, line: 1314, baseType: !3346, size: 64, offset: 19904)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3348, line: 62, size: 256, align: 256, elements: !3349)
!3348 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3355, !3356}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3347, file: !3348, line: 75, baseType: !516, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3347, file: !3348, line: 90, baseType: !516, size: 32, offset: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3347, file: !3348, line: 112, baseType: !520, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3347, file: !3348, line: 132, baseType: !516, size: 32, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3347, file: !3348, line: 140, baseType: !516, size: 32, offset: 160)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3347, file: !3348, line: 149, baseType: !516, size: 32, offset: 192)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3347, file: !3348, line: 154, baseType: !3357, offset: 224)
!3357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1734)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1276, file: !1277, line: 1315, baseType: !515, size: 32, offset: 19968)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1276, file: !1277, line: 1316, baseType: !515, size: 32, offset: 20000)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1276, file: !1277, line: 1321, baseType: !217, size: 64, offset: 20032)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1276, file: !1277, line: 1325, baseType: !113, size: 32, offset: 20096)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1276, file: !1277, line: 1326, baseType: !113, size: 32, offset: 20128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1276, file: !1277, line: 1327, baseType: !113, size: 32, offset: 20160)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1276, file: !1277, line: 1328, baseType: !113, size: 32, offset: 20192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1276, file: !1277, line: 1329, baseType: !926, size: 128, align: 64, offset: 20224)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1276, file: !1277, line: 1332, baseType: !3367, size: 128, offset: 20352)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3368, line: 51, size: 128, elements: !3369)
!3368 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3369 = !{!3370, !3375, !3376}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3367, file: !3368, line: 60, baseType: !3371, size: 64)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3372, line: 7, size: 64, elements: !3373)
!3372 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3373 = !{!3374}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3371, file: !3372, line: 12, baseType: !1511, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3367, file: !3368, line: 63, baseType: !786, size: 8, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3367, file: !3368, line: 70, baseType: !786, size: 8, offset: 72)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1276, file: !1277, line: 1335, baseType: !3378, size: 64, offset: 20480)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1277, line: 59, flags: DIFlagFwdDecl)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1276, file: !1277, line: 1337, baseType: !3381, size: 128, offset: 20544)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3368, line: 39, size: 128, elements: !3382)
!3382 = !{!3383, !3666, !3667}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3381, file: !3368, line: 40, baseType: !3384, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !160, line: 74, size: 512, align: 128, elements: !3386)
!3386 = !{!3387, !3388, !3660, !3665}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3385, file: !160, line: 75, baseType: !217, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, scope: !3385, file: !160, line: 83, baseType: !3389, size: 320, offset: 64)
!3389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3385, file: !160, line: 83, size: 320, elements: !3390)
!3390 = !{!3391, !3412, !3426, !3430, !3659}
!3391 = !DIDerivedType(tag: DW_TAG_member, scope: !3389, file: !160, line: 84, baseType: !3392, size: 320)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3389, file: !160, line: 84, size: 320, elements: !3393)
!3393 = !{!3394, !3405, !3406, !3411}
!3394 = !DIDerivedType(tag: DW_TAG_member, scope: !3392, file: !160, line: 90, baseType: !3395, size: 128)
!3395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3392, file: !160, line: 90, size: 128, elements: !3396)
!3396 = !{!3397, !3398, !3403, !3404}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3395, file: !160, line: 91, baseType: !292, size: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, scope: !3395, file: !160, line: 94, baseType: !3399, size: 128)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3395, file: !160, line: 94, size: 128, elements: !3400)
!3400 = !{!3401, !3402}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3399, file: !160, line: 96, baseType: !218, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3399, file: !160, line: 98, baseType: !45, size: 32, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !3395, file: !160, line: 102, baseType: !292, size: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !3395, file: !160, line: 103, baseType: !292, size: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3392, file: !160, line: 106, baseType: !442, size: 64, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_member, scope: !3392, file: !160, line: 107, baseType: !3407, size: 64, offset: 192)
!3407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3392, file: !160, line: 107, size: 64, elements: !3408)
!3408 = !{!3409, !3410}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3407, file: !160, line: 108, baseType: !217, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3407, file: !160, line: 109, baseType: !217, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3392, file: !160, line: 117, baseType: !217, size: 64, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, scope: !3389, file: !160, line: 119, baseType: !3413, size: 320)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3389, file: !160, line: 119, size: 320, elements: !3414)
!3414 = !{!3415, !3416, !3419, !3420, !3421}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3413, file: !160, line: 124, baseType: !217, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3413, file: !160, line: 125, baseType: !3417, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !160, line: 125, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3413, file: !160, line: 126, baseType: !217, size: 64, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3413, file: !160, line: 127, baseType: !217, size: 64, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_member, scope: !3413, file: !160, line: 128, baseType: !3422, size: 64, offset: 256)
!3422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3413, file: !160, line: 128, size: 64, elements: !3423)
!3423 = !{!3424, !3425}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3422, file: !160, line: 133, baseType: !217, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3422, file: !160, line: 138, baseType: !710, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, scope: !3389, file: !160, line: 141, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3389, file: !160, line: 141, size: 64, elements: !3428)
!3428 = !{!3429}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3427, file: !160, line: 142, baseType: !217, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, scope: !3389, file: !160, line: 144, baseType: !3431, size: 128)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3389, file: !160, line: 144, size: 128, elements: !3432)
!3432 = !{!3433, !3658}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3431, file: !160, line: 146, baseType: !3434, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !152, line: 126, size: 1216, elements: !3436)
!3436 = !{!3437, !3447, !3468, !3469, !3470, !3471, !3472, !3640, !3641, !3642}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3435, file: !152, line: 127, baseType: !3438, size: 384)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !152, line: 21, size: 384, elements: !3439)
!3439 = !{!3440, !3441, !3443, !3444, !3445, !3446}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3438, file: !152, line: 22, baseType: !217, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3438, file: !152, line: 23, baseType: !3442, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3438, file: !152, line: 24, baseType: !3442, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3438, file: !152, line: 25, baseType: !217, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3438, file: !152, line: 26, baseType: !217, size: 64, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3438, file: !152, line: 27, baseType: !217, size: 64, offset: 320)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3435, file: !152, line: 128, baseType: !3448, size: 128, offset: 384)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3449, line: 105, size: 128, elements: !3450)
!3449 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3450 = !{!3451, !3452}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3448, file: !3449, line: 110, baseType: !217, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3448, file: !3449, line: 118, baseType: !3453, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3449, line: 95, size: 448, elements: !3455)
!3455 = !{!3456, !3457, !3463, !3464, !3465, !3466, !3467}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3454, file: !3449, line: 96, baseType: !710, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3454, file: !3449, line: 97, baseType: !3458, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3449, line: 60, baseType: !3460)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{null, !3462}
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3454, file: !3449, line: 98, baseType: !3458, size: 64, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3454, file: !3449, line: 99, baseType: !786, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3454, file: !3449, line: 100, baseType: !786, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3454, file: !3449, line: 101, baseType: !926, size: 128, align: 64, offset: 256)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3454, file: !3449, line: 102, baseType: !3462, size: 64, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3435, file: !152, line: 129, baseType: !655, size: 256, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3435, file: !152, line: 130, baseType: !151, size: 32, offset: 768)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3435, file: !152, line: 131, baseType: !45, size: 32, offset: 800)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !3435, file: !152, line: 132, baseType: !217, size: 64, offset: 832)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3435, file: !152, line: 133, baseType: !3473, size: 64, offset: 896)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3475)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !152, line: 77, size: 192, elements: !3476)
!3476 = !{!3477, !3481, !3636}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3475, file: !152, line: 83, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{null, !3384}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3475, file: !152, line: 89, baseType: !3482, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!3485, !3486}
!3485 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !160, line: 1184, baseType: !45)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !3488, line: 512, size: 896, elements: !3489)
!3488 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!3489 = !{!3490, !3604, !3605, !3612, !3619, !3628, !3629, !3630, !3632, !3634}
!3490 = !DIDerivedType(tag: DW_TAG_member, scope: !3487, file: !3488, line: 513, baseType: !3491, size: 320)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3487, file: !3488, line: 513, size: 320, elements: !3492)
!3492 = !{!3493, !3600, !3601, !3602, !3603}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3491, file: !3488, line: 514, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !160, line: 625, size: 1344, elements: !3496)
!3496 = !{!3497, !3506, !3507, !3513, !3520, !3521, !3526, !3527, !3532, !3533, !3536, !3593, !3594, !3595, !3596, !3597, !3598}
!3497 = !DIDerivedType(tag: DW_TAG_member, scope: !3495, file: !160, line: 628, baseType: !3498, size: 128)
!3498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3495, file: !160, line: 628, size: 128, elements: !3499)
!3499 = !{!3500, !3505}
!3500 = !DIDerivedType(tag: DW_TAG_member, scope: !3498, file: !160, line: 629, baseType: !3501, size: 128)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3498, file: !160, line: 629, size: 128, elements: !3502)
!3502 = !{!3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3501, file: !160, line: 631, baseType: !217, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3501, file: !160, line: 632, baseType: !217, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3498, file: !160, line: 635, baseType: !926, size: 128, align: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3495, file: !160, line: 639, baseType: !1563, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3495, file: !160, line: 640, baseType: !3508, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !59, line: 297, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !59, line: 297, size: 64, elements: !3510)
!3510 = !{!3511}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3509, file: !59, line: 297, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !216, line: 19, baseType: !217)
!3513 = !DIDerivedType(tag: DW_TAG_member, scope: !3495, file: !160, line: 646, baseType: !3514, size: 64, offset: 256)
!3514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3495, file: !160, line: 646, size: 64, elements: !3515)
!3515 = !{!3516, !3519}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3514, file: !160, line: 647, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3518)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !160, line: 542, baseType: !217)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3514, file: !160, line: 648, baseType: !3518, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3495, file: !160, line: 666, baseType: !113, size: 32, offset: 320)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3495, file: !160, line: 667, baseType: !3522, size: 64, offset: 384)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !160, line: 579, size: 320, elements: !3524)
!3524 = !{!3525}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3523, file: !160, line: 580, baseType: !1616, size: 320)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3495, file: !160, line: 670, baseType: !786, size: 8, offset: 448)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3495, file: !160, line: 681, baseType: !3528, size: 256, offset: 512)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3495, file: !160, line: 678, size: 256, elements: !3529)
!3529 = !{!3530, !3531}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3528, file: !160, line: 679, baseType: !818, size: 192, align: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3528, file: !160, line: 680, baseType: !217, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3495, file: !160, line: 689, baseType: !292, size: 128, offset: 768)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3495, file: !160, line: 691, baseType: !3534, size: 64, offset: 896)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !160, line: 691, flags: DIFlagFwdDecl)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3495, file: !160, line: 694, baseType: !3537, size: 64, offset: 960)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3539)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !3488, line: 563, size: 1024, elements: !3540)
!3540 = !{!3541, !3545, !3546, !3550, !3554, !3558, !3559, !3563, !3567, !3571, !3572, !3573, !3577, !3581, !3585, !3589}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3539, file: !3488, line: 564, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{null, !3494}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3539, file: !3488, line: 569, baseType: !3542, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !3539, file: !3488, line: 571, baseType: !3547, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!113, !3494, !217}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3539, file: !3488, line: 572, baseType: !3551, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!113, !3494}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !3539, file: !3488, line: 578, baseType: !3555, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!113, !3494, !217, !217, !217}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3539, file: !3488, line: 580, baseType: !3482, size: 64, offset: 320)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3539, file: !3488, line: 581, baseType: !3560, size: 64, offset: 384)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!3485, !3486, !45}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3539, file: !3488, line: 582, baseType: !3564, size: 64, offset: 448)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!3485, !3486, !217, !217}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3539, file: !3488, line: 584, baseType: !3568, size: 64, offset: 512)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!217, !3494}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3539, file: !3488, line: 588, baseType: !3482, size: 64, offset: 576)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3539, file: !3488, line: 591, baseType: !3482, size: 64, offset: 640)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3539, file: !3488, line: 597, baseType: !3574, size: 64, offset: 704)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!113, !3494, !217, !218, !113, !113}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3539, file: !3488, line: 603, baseType: !3578, size: 64, offset: 768)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!250, !3494}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !3539, file: !3488, line: 613, baseType: !3582, size: 64, offset: 832)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!113, !3494, !3341}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !3539, file: !3488, line: 625, baseType: !3586, size: 64, offset: 896)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!3341, !3494, !217}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3539, file: !3488, line: 633, baseType: !3590, size: 64, offset: 960)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!3384, !3494, !217}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3495, file: !160, line: 697, baseType: !217, size: 64, offset: 1024)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3495, file: !160, line: 699, baseType: !1590, size: 64, offset: 1088)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3495, file: !160, line: 700, baseType: !218, size: 64, offset: 1152)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3495, file: !160, line: 711, baseType: !710, size: 64, offset: 1216)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3495, file: !160, line: 717, baseType: !3341, size: 64, offset: 1280)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3495, file: !160, line: 722, baseType: !3599, offset: 1344)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !160, line: 570, elements: !995)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3491, file: !3488, line: 515, baseType: !1268, size: 32, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3491, file: !3488, line: 516, baseType: !217, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3491, file: !3488, line: 517, baseType: !217, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !3491, file: !3488, line: 518, baseType: !217, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3487, file: !3488, line: 520, baseType: !159, size: 32, offset: 320)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3487, file: !3488, line: 522, baseType: !3606, size: 64, offset: 384)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !216, line: 22, baseType: !3608)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 22, size: 64, elements: !3609)
!3609 = !{!3610}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3608, file: !216, line: 22, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !216, line: 15, baseType: !217)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3487, file: !3488, line: 524, baseType: !3613, size: 64, offset: 448)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !59, line: 372, baseType: !3615)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 372, size: 64, elements: !3616)
!3616 = !{!3617}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3615, file: !59, line: 372, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !216, line: 16, baseType: !217)
!3619 = !DIDerivedType(tag: DW_TAG_member, scope: !3487, file: !3488, line: 527, baseType: !3620, size: 64, offset: 512)
!3620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3487, file: !3488, line: 527, size: 64, elements: !3621)
!3621 = !{!3622, !3627}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3620, file: !3488, line: 528, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !216, line: 21, baseType: !3624)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 21, size: 64, elements: !3625)
!3625 = !{!3626}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3624, file: !216, line: 21, baseType: !215, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3620, file: !3488, line: 529, baseType: !3607, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !3487, file: !3488, line: 534, baseType: !3384, size: 64, offset: 576)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3487, file: !3488, line: 535, baseType: !3384, size: 64, offset: 640)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3487, file: !3488, line: 541, baseType: !3631, size: 64, offset: 704)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3487, file: !3488, line: 545, baseType: !3633, size: 64, offset: 768)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !3487, file: !3488, line: 549, baseType: !3635, size: 64, offset: 832)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !59, line: 520, baseType: !3384)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3475, file: !152, line: 100, baseType: !3637, size: 64, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!113, !3434, !217, !217, !113}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3435, file: !152, line: 134, baseType: !218, size: 64, offset: 960)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3435, file: !152, line: 135, baseType: !113, size: 32, offset: 1024)
!3642 = !DIDerivedType(tag: DW_TAG_member, scope: !3435, file: !152, line: 136, baseType: !3643, size: 128, offset: 1088)
!3643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3435, file: !152, line: 136, size: 128, elements: !3644)
!3644 = !{!3645, !3651}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3643, file: !152, line: 137, baseType: !3646, size: 128)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3647, line: 6, size: 128, elements: !3648)
!3647 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3648 = !{!3649, !3650}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3646, file: !3647, line: 7, baseType: !519, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3646, file: !3647, line: 8, baseType: !519, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, scope: !3643, file: !152, line: 138, baseType: !3652)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3643, file: !152, line: 138, elements: !3653)
!3653 = !{!3654, !3656}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3652, file: !152, line: 138, baseType: !3655)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3652, file: !152, line: 138, elements: !995)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3652, file: !152, line: 138, baseType: !3657)
!3657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3646, elements: !1734)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3431, file: !160, line: 147, baseType: !218, size: 64, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3389, file: !160, line: 161, baseType: !926, size: 128, align: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, scope: !3385, file: !160, line: 164, baseType: !3661, size: 32, offset: 384)
!3661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3385, file: !160, line: 164, size: 32, elements: !3662)
!3662 = !{!3663, !3664}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3661, file: !160, line: 169, baseType: !275, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3661, file: !160, line: 177, baseType: !45, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3385, file: !160, line: 181, baseType: !275, size: 32, offset: 416)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3381, file: !3368, line: 42, baseType: !516, size: 32, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3381, file: !3368, line: 43, baseType: !516, size: 32, offset: 96)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1276, file: !1277, line: 1340, baseType: !3669, size: 64, offset: 20672)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1277, line: 69, flags: DIFlagFwdDecl)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1276, file: !1277, line: 1351, baseType: !113, size: 32, offset: 20736)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1276, file: !1277, line: 1352, baseType: !113, size: 32, offset: 20768)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1276, file: !1277, line: 1354, baseType: !217, size: 64, offset: 20800)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1276, file: !1277, line: 1364, baseType: !519, size: 64, offset: 20864)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1276, file: !1277, line: 1365, baseType: !519, size: 64, offset: 20928)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1276, file: !1277, line: 1412, baseType: !217, size: 64, offset: 20992)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1276, file: !1277, line: 1453, baseType: !3678, size: 64, offset: 21056)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1277, line: 1453, flags: DIFlagFwdDecl)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1276, file: !1277, line: 1457, baseType: !3681, size: 64, offset: 21120)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !176, line: 61, size: 576, elements: !3683)
!3683 = !{!3684, !3685, !3704, !3707, !3708, !3741, !3751}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3682, file: !176, line: 62, baseType: !175, size: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, scope: !3682, file: !176, line: 64, baseType: !3686, size: 192, offset: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3682, file: !176, line: 64, size: 192, elements: !3687)
!3687 = !{!3688, !3699}
!3688 = !DIDerivedType(tag: DW_TAG_member, scope: !3686, file: !176, line: 65, baseType: !3689, size: 192)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3686, file: !176, line: 65, size: 192, elements: !3690)
!3690 = !{!3691, !3698}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3689, file: !176, line: 66, baseType: !3692, size: 128)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3693, line: 50, size: 128, elements: !3694)
!3693 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3694 = !{!3695, !3696, !3697}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3692, file: !3693, line: 52, baseType: !217, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3692, file: !3693, line: 54, baseType: !45, size: 32, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3692, file: !3693, line: 55, baseType: !45, size: 32, offset: 96)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3689, file: !176, line: 67, baseType: !217, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, scope: !3686, file: !176, line: 70, baseType: !3700, size: 192)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3686, file: !176, line: 70, size: 192, elements: !3701)
!3701 = !{!3702, !3703}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3700, file: !176, line: 71, baseType: !926, size: 128, align: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3700, file: !176, line: 72, baseType: !217, size: 64, offset: 128)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3682, file: !176, line: 76, baseType: !3705, size: 64, offset: 256)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !176, line: 76, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3682, file: !176, line: 77, baseType: !217, size: 64, offset: 320)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3682, file: !176, line: 79, baseType: !3709, size: 64, offset: 384)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3693, line: 25, size: 256, elements: !3711)
!3711 = !{!3712, !3718, !3722}
!3712 = !DIDerivedType(tag: DW_TAG_member, scope: !3710, file: !3693, line: 26, baseType: !3713, size: 128)
!3713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3710, file: !3693, line: 26, size: 128, elements: !3714)
!3714 = !{!3715, !3717}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3713, file: !3693, line: 27, baseType: !3716, size: 128)
!3716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 128, elements: !243)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3713, file: !3693, line: 28, baseType: !3716, size: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3710, file: !3693, line: 31, baseType: !3719, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3721)
!3721 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3693, line: 23, flags: DIFlagFwdDecl)
!3722 = !DIDerivedType(tag: DW_TAG_member, scope: !3710, file: !3693, line: 33, baseType: !3723, size: 64, offset: 192)
!3723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3710, file: !3693, line: 33, size: 64, elements: !3724)
!3724 = !{!3725, !3731, !3736}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3723, file: !3693, line: 38, baseType: !3726, size: 64)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3723, file: !3693, line: 34, size: 64, elements: !3727)
!3727 = !{!3728, !3729, !3730}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3726, file: !3693, line: 35, baseType: !702, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3726, file: !3693, line: 36, baseType: !329, size: 8, offset: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3726, file: !3693, line: 37, baseType: !329, size: 8, offset: 40)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3723, file: !3693, line: 42, baseType: !3732, size: 16)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3723, file: !3693, line: 39, size: 16, elements: !3733)
!3733 = !{!3734, !3735}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3732, file: !3693, line: 40, baseType: !329, size: 8)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3732, file: !3693, line: 41, baseType: !329, size: 8, offset: 8)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3723, file: !3693, line: 46, baseType: !3737, size: 16)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3723, file: !3693, line: 43, size: 16, elements: !3738)
!3738 = !{!3739, !3740}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3737, file: !3693, line: 44, baseType: !329, size: 8)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3737, file: !3693, line: 45, baseType: !329, size: 8, offset: 8)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3682, file: !176, line: 81, baseType: !3742, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !176, line: 85, size: 384, elements: !3744)
!3744 = !{!3745, !3746, !3747, !3748, !3749, !3750}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3743, file: !176, line: 86, baseType: !3705, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3743, file: !176, line: 87, baseType: !217, size: 64, offset: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3743, file: !176, line: 88, baseType: !217, size: 64, offset: 128)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3743, file: !176, line: 89, baseType: !217, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3743, file: !176, line: 90, baseType: !786, size: 8, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3743, file: !176, line: 92, baseType: !3742, size: 64, offset: 320)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3682, file: !176, line: 82, baseType: !45, size: 32, offset: 512)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1276, file: !1277, line: 1463, baseType: !3753, offset: 21184)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1277, line: 739, elements: !995)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1276, file: !1277, line: 1470, baseType: !926, size: 128, align: 64, offset: 21184)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1276, file: !1277, line: 1471, baseType: !270, size: 32, offset: 21312)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1276, file: !1277, line: 1472, baseType: !113, size: 32, offset: 21344)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1276, file: !1277, line: 1474, baseType: !1275, size: 64, offset: 21376)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1276, file: !1277, line: 1475, baseType: !948, size: 320, offset: 21440)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1276, file: !1277, line: 1478, baseType: !3760, size: 64, offset: 21760)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3762, line: 49, size: 512, elements: !3763)
!3762 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3763 = !{!3764, !3765, !3766, !3767, !3768, !3770, !3771, !3772, !3774}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3761, file: !3762, line: 50, baseType: !3760, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3761, file: !3762, line: 51, baseType: !218, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3761, file: !3762, line: 52, baseType: !217, size: 64, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3761, file: !3762, line: 53, baseType: !217, size: 64, offset: 192)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3761, file: !3762, line: 54, baseType: !3769, size: 64, offset: 256)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3761, file: !3762, line: 56, baseType: !45, size: 32, offset: 320)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3761, file: !3762, line: 58, baseType: !45, size: 32, offset: 352)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3761, file: !3762, line: 59, baseType: !3773, size: 64, offset: 384)
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !276, line: 159, baseType: !519)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3761, file: !3762, line: 60, baseType: !1693, size: 64, offset: 448)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1276, file: !1277, line: 1482, baseType: !270, size: 32, offset: 21824)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1276, file: !1277, line: 1489, baseType: !218, size: 64, offset: 21888)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1276, file: !1277, line: 1504, baseType: !218, size: 64, offset: 21952)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1276, file: !1277, line: 1505, baseType: !520, size: 64, offset: 22016)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1276, file: !1277, line: 1506, baseType: !519, size: 64, offset: 22080)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1276, file: !1277, line: 1507, baseType: !520, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1276, file: !1277, line: 1508, baseType: !520, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1276, file: !1277, line: 1509, baseType: !520, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1276, file: !1277, line: 1510, baseType: !926, size: 128, align: 64, offset: 22208)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1276, file: !1277, line: 1511, baseType: !113, size: 32, offset: 22336)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1276, file: !1277, line: 1515, baseType: !2687, size: 64, offset: 22400)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1276, file: !1277, line: 1518, baseType: !2687, size: 64, offset: 22464)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1276, file: !1277, line: 1528, baseType: !926, size: 128, align: 64, offset: 22528)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1276, file: !1277, line: 1552, baseType: !3789, size: 35328, offset: 23040)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3790, line: 430, size: 35328, elements: !3791)
!3790 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3791 = !{!3792, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3821, !3822, !3823, !3824, !3825, !3826, !3829, !3830, !3831, !3832}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3789, file: !3790, line: 432, baseType: !3793, size: 192)
!3793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3794, size: 192, elements: !368)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3795, line: 16, size: 64, elements: !3796)
!3795 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3796 = !{!3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3794, file: !3795, line: 17, baseType: !338, size: 16)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3794, file: !3795, line: 18, baseType: !338, size: 16, offset: 16)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3794, file: !3795, line: 19, baseType: !338, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3794, file: !3795, line: 19, baseType: !338, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3794, file: !3795, line: 19, baseType: !338, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3794, file: !3795, line: 19, baseType: !338, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3794, file: !3795, line: 19, baseType: !338, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3794, file: !3795, line: 20, baseType: !338, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3794, file: !3795, line: 20, baseType: !338, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3794, file: !3795, line: 20, baseType: !338, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3794, file: !3795, line: 20, baseType: !338, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3794, file: !3795, line: 20, baseType: !338, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3794, file: !3795, line: 20, baseType: !338, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3789, file: !3790, line: 436, baseType: !217, size: 64, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3789, file: !3790, line: 440, baseType: !225, size: 16, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3789, file: !3790, line: 441, baseType: !225, size: 16, offset: 272)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3789, file: !3790, line: 442, baseType: !225, size: 16, offset: 288)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3789, file: !3790, line: 443, baseType: !225, size: 16, offset: 304)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3789, file: !3790, line: 447, baseType: !217, size: 64, offset: 320)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3789, file: !3790, line: 448, baseType: !217, size: 64, offset: 384)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3789, file: !3790, line: 459, baseType: !3818, size: 256, offset: 448)
!3818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3819, size: 256, elements: !936)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3790, line: 428, flags: DIFlagFwdDecl)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3789, file: !3790, line: 461, baseType: !217, size: 64, offset: 704)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3789, file: !3790, line: 463, baseType: !217, size: 64, offset: 768)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3789, file: !3790, line: 465, baseType: !217, size: 64, offset: 832)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3789, file: !3790, line: 466, baseType: !217, size: 64, offset: 896)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3789, file: !3790, line: 467, baseType: !217, size: 64, offset: 960)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3789, file: !3790, line: 473, baseType: !3827, size: 64, offset: 1024)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3790, line: 10, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3789, file: !3790, line: 480, baseType: !217, size: 64, offset: 1088)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3789, file: !3790, line: 482, baseType: !45, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3789, file: !3790, line: 491, baseType: !515, size: 32, offset: 1184)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3789, file: !3790, line: 501, baseType: !3833, size: 33792, offset: 1536)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3834, line: 448, size: 33792, elements: !3835)
!3834 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3835 = !{!3836, !3837, !3838, !3997, !3998, !4004, !4005}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3833, file: !3834, line: 461, baseType: !45, size: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3833, file: !3834, line: 468, baseType: !217, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3833, file: !3834, line: 476, baseType: !3839, size: 64, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3834, line: 356, size: 33280, align: 512, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3840, file: !3834, line: 358, baseType: !45, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3840, file: !3834, line: 361, baseType: !45, size: 32, offset: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3840, file: !3834, line: 364, baseType: !519, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3840, file: !3834, line: 367, baseType: !519, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3840, file: !3834, line: 370, baseType: !519, size: 64, offset: 192)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3840, file: !3834, line: 373, baseType: !45, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3840, file: !3834, line: 376, baseType: !45, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3840, file: !3834, line: 391, baseType: !45, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3840, file: !3834, line: 394, baseType: !45, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3840, file: !3834, line: 397, baseType: !3852, size: 32768, offset: 512)
!3852 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3834, line: 348, size: 32768, elements: !3853)
!3853 = !{!3854, !3867, !3904, !3981, !3993}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3852, file: !3834, line: 349, baseType: !3855, size: 896)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3834, line: 12, size: 896, elements: !3856)
!3856 = !{!3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3866}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3855, file: !3834, line: 13, baseType: !515, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3855, file: !3834, line: 14, baseType: !515, size: 32, offset: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3855, file: !3834, line: 15, baseType: !515, size: 32, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3855, file: !3834, line: 16, baseType: !515, size: 32, offset: 96)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3855, file: !3834, line: 17, baseType: !515, size: 32, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3855, file: !3834, line: 18, baseType: !515, size: 32, offset: 160)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3855, file: !3834, line: 19, baseType: !515, size: 32, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3855, file: !3834, line: 22, baseType: !3865, size: 640, offset: 224)
!3865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 640, elements: !235)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3855, file: !3834, line: 25, baseType: !515, size: 32, offset: 864)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3852, file: !3834, line: 350, baseType: !3868, size: 4096, align: 128)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3834, line: 34, size: 4096, align: 128, elements: !3869)
!3869 = !{!3870, !3871, !3872, !3873, !3874, !3889, !3890, !3891, !3893, !3895, !3899}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3868, file: !3834, line: 35, baseType: !338, size: 16)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3868, file: !3834, line: 36, baseType: !338, size: 16, offset: 16)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3868, file: !3834, line: 37, baseType: !338, size: 16, offset: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3868, file: !3834, line: 38, baseType: !338, size: 16, offset: 48)
!3874 = !DIDerivedType(tag: DW_TAG_member, scope: !3868, file: !3834, line: 39, baseType: !3875, size: 128, offset: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3868, file: !3834, line: 39, size: 128, elements: !3876)
!3876 = !{!3877, !3882}
!3877 = !DIDerivedType(tag: DW_TAG_member, scope: !3875, file: !3834, line: 40, baseType: !3878, size: 128)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3875, file: !3834, line: 40, size: 128, elements: !3879)
!3879 = !{!3880, !3881}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3878, file: !3834, line: 41, baseType: !519, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3878, file: !3834, line: 42, baseType: !519, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, scope: !3875, file: !3834, line: 44, baseType: !3883, size: 128)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3875, file: !3834, line: 44, size: 128, elements: !3884)
!3884 = !{!3885, !3886, !3887, !3888}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3883, file: !3834, line: 45, baseType: !515, size: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3883, file: !3834, line: 46, baseType: !515, size: 32, offset: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3883, file: !3834, line: 47, baseType: !515, size: 32, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3883, file: !3834, line: 48, baseType: !515, size: 32, offset: 96)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3868, file: !3834, line: 51, baseType: !515, size: 32, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3868, file: !3834, line: 52, baseType: !515, size: 32, offset: 224)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3868, file: !3834, line: 55, baseType: !3892, size: 1024, offset: 256)
!3892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 1024, elements: !528)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3868, file: !3834, line: 58, baseType: !3894, size: 2048, offset: 1280)
!3894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 2048, elements: !372)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3868, file: !3834, line: 60, baseType: !3896, size: 384, offset: 3328)
!3896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 384, elements: !3897)
!3897 = !{!3898}
!3898 = !DISubrange(count: 12)
!3899 = !DIDerivedType(tag: DW_TAG_member, scope: !3868, file: !3834, line: 62, baseType: !3900, size: 384, offset: 3712)
!3900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3868, file: !3834, line: 62, size: 384, elements: !3901)
!3901 = !{!3902, !3903}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3900, file: !3834, line: 63, baseType: !3896, size: 384)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3900, file: !3834, line: 64, baseType: !3896, size: 384)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3852, file: !3834, line: 351, baseType: !3905, size: 1088)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3834, line: 79, size: 1088, elements: !3906)
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3980}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3905, file: !3834, line: 80, baseType: !515, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3905, file: !3834, line: 81, baseType: !515, size: 32, offset: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3905, file: !3834, line: 82, baseType: !515, size: 32, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3905, file: !3834, line: 83, baseType: !515, size: 32, offset: 96)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3905, file: !3834, line: 84, baseType: !515, size: 32, offset: 128)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3905, file: !3834, line: 85, baseType: !515, size: 32, offset: 160)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3905, file: !3834, line: 86, baseType: !515, size: 32, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3905, file: !3834, line: 88, baseType: !3865, size: 640, offset: 224)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3905, file: !3834, line: 89, baseType: !329, size: 8, offset: 864)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3905, file: !3834, line: 90, baseType: !329, size: 8, offset: 872)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3905, file: !3834, line: 91, baseType: !329, size: 8, offset: 880)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3905, file: !3834, line: 92, baseType: !329, size: 8, offset: 888)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3905, file: !3834, line: 93, baseType: !329, size: 8, offset: 896)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3905, file: !3834, line: 94, baseType: !329, size: 8, offset: 904)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3905, file: !3834, line: 95, baseType: !3922, size: 64, offset: 960)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3924, line: 11, size: 128, elements: !3925)
!3924 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3925 = !{!3926, !3927}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3923, file: !3924, line: 12, baseType: !403, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3923, file: !3924, line: 13, baseType: !3928, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3930, line: 103, size: 1344, elements: !3931)
!3930 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3931 = !{!3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3960, !3961, !3962}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3929, file: !3930, line: 109, baseType: !217, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3929, file: !3930, line: 110, baseType: !217, size: 64, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3929, file: !3930, line: 111, baseType: !217, size: 64, offset: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3929, file: !3930, line: 112, baseType: !217, size: 64, offset: 192)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3929, file: !3930, line: 113, baseType: !217, size: 64, offset: 256)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3929, file: !3930, line: 114, baseType: !217, size: 64, offset: 320)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3929, file: !3930, line: 117, baseType: !217, size: 64, offset: 384)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3929, file: !3930, line: 118, baseType: !217, size: 64, offset: 448)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3929, file: !3930, line: 119, baseType: !217, size: 64, offset: 512)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3929, file: !3930, line: 120, baseType: !217, size: 64, offset: 576)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3929, file: !3930, line: 121, baseType: !217, size: 64, offset: 640)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3929, file: !3930, line: 122, baseType: !217, size: 64, offset: 704)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3929, file: !3930, line: 123, baseType: !217, size: 64, offset: 768)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3929, file: !3930, line: 124, baseType: !217, size: 64, offset: 832)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3929, file: !3930, line: 125, baseType: !217, size: 64, offset: 896)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3929, file: !3930, line: 139, baseType: !217, size: 64, offset: 960)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3929, file: !3930, line: 142, baseType: !217, size: 64, offset: 1024)
!3949 = !DIDerivedType(tag: DW_TAG_member, scope: !3929, file: !3930, line: 144, baseType: !3950, size: 64, offset: 1088)
!3950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3929, file: !3930, line: 144, size: 64, elements: !3951)
!3951 = !{!3952, !3953, !3954}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3950, file: !3930, line: 146, baseType: !338, size: 16)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3950, file: !3930, line: 148, baseType: !519, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3950, file: !3930, line: 150, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3930, line: 59, size: 64, elements: !3956)
!3956 = !{!3957, !3958, !3959}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3955, file: !3930, line: 61, baseType: !519, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3955, file: !3930, line: 63, baseType: !519, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3955, file: !3930, line: 65, baseType: !519, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3929, file: !3930, line: 153, baseType: !217, size: 64, offset: 1152)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3929, file: !3930, line: 154, baseType: !217, size: 64, offset: 1216)
!3962 = !DIDerivedType(tag: DW_TAG_member, scope: !3929, file: !3930, line: 156, baseType: !3963, size: 64, offset: 1280)
!3963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3929, file: !3930, line: 156, size: 64, elements: !3964)
!3964 = !{!3965, !3966, !3967}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3963, file: !3930, line: 158, baseType: !338, size: 16)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3963, file: !3930, line: 160, baseType: !519, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3963, file: !3930, line: 162, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3930, line: 69, size: 64, elements: !3969)
!3969 = !{!3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3968, file: !3930, line: 71, baseType: !519, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3968, file: !3930, line: 73, baseType: !519, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3968, file: !3930, line: 75, baseType: !519, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3968, file: !3930, line: 77, baseType: !519, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3968, file: !3930, line: 80, baseType: !519, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3968, file: !3930, line: 83, baseType: !519, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3968, file: !3930, line: 86, baseType: !519, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3968, file: !3930, line: 88, baseType: !519, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3968, file: !3930, line: 93, baseType: !519, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3968, file: !3930, line: 100, baseType: !519, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3905, file: !3834, line: 96, baseType: !515, size: 32, offset: 1024)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3852, file: !3834, line: 352, baseType: !3982, size: 4608, align: 512)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3834, line: 333, size: 4608, align: 512, elements: !3983)
!3983 = !{!3984, !3985, !3992}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3982, file: !3834, line: 334, baseType: !3868, size: 4096, align: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3982, file: !3834, line: 335, baseType: !3986, size: 512, offset: 4096)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3834, line: 312, size: 512, elements: !3987)
!3987 = !{!3988, !3989, !3990}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3986, file: !3834, line: 313, baseType: !519, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3986, file: !3834, line: 314, baseType: !519, size: 64, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3986, file: !3834, line: 315, baseType: !3991, size: 384, offset: 128)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 384, elements: !1948)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3982, file: !3834, line: 336, baseType: !2681, offset: 4608)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3852, file: !3834, line: 353, baseType: !3994, size: 32768)
!3994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 32768, elements: !3995)
!3995 = !{!3996}
!3996 = !DISubrange(count: 4096)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3833, file: !3834, line: 484, baseType: !3839, size: 64, offset: 192)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3833, file: !3834, line: 491, baseType: !3999, size: 128, offset: 256)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3834, line: 404, size: 128, elements: !4000)
!4000 = !{!4001, !4002, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3999, file: !3834, line: 424, baseType: !519, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3999, file: !3834, line: 432, baseType: !45, size: 32, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3999, file: !3834, line: 440, baseType: !45, size: 32, offset: 96)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3833, file: !3834, line: 498, baseType: !3999, size: 128, offset: 384)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3833, file: !3834, line: 508, baseType: !3840, size: 33280, align: 512, offset: 512)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1255, file: !1256, line: 31, baseType: !4007, size: 64, offset: 448)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4009, line: 325, flags: DIFlagFwdDecl)
!4009 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1255, file: !1256, line: 32, baseType: !45, size: 32, offset: 512)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1255, file: !1256, line: 33, baseType: !1254, size: 64, offset: 576)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1255, file: !1256, line: 35, baseType: !4013, size: 64, offset: 640)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1256, line: 17, flags: DIFlagFwdDecl)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1255, file: !1256, line: 37, baseType: !1716, size: 64, offset: 704)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1255, file: !1256, line: 38, baseType: !2035, size: 64, offset: 768)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1255, file: !1256, line: 39, baseType: !113, size: 32, offset: 832)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1255, file: !1256, line: 40, baseType: !4019, size: 192, offset: 896)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !4020, line: 9, size: 192, elements: !4021)
!4020 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!4021 = !{!4022, !4023, !4027, !4028}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !4019, file: !4020, line: 10, baseType: !710, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4019, file: !4020, line: 11, baseType: !4024, size: 64, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4026)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !4020, line: 7, flags: DIFlagFwdDecl)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !4019, file: !4020, line: 12, baseType: !45, size: 32, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4019, file: !4020, line: 13, baseType: !270, size: 32, offset: 160)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1255, file: !1256, line: 42, baseType: !113, size: 32, offset: 1088)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1207, file: !76, line: 951, baseType: !182, size: 32, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1207, file: !76, line: 952, baseType: !452, size: 32, offset: 160)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1207, file: !76, line: 952, baseType: !452, size: 32, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1207, file: !76, line: 953, baseType: !113, size: 32, offset: 224)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1186, file: !76, line: 1012, baseType: !1870, size: 64, offset: 896)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1186, file: !76, line: 1013, baseType: !4036, size: 256, offset: 960)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !76, line: 970, size: 256, elements: !4037)
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4043}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4036, file: !76, line: 971, baseType: !217, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4036, file: !76, line: 972, baseType: !45, size: 32, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4036, file: !76, line: 973, baseType: !45, size: 32, offset: 96)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4036, file: !76, line: 974, baseType: !45, size: 32, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4036, file: !76, line: 975, baseType: !45, size: 32, offset: 160)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4036, file: !76, line: 976, baseType: !607, size: 64, offset: 192)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1186, file: !76, line: 1014, baseType: !4045, size: 128, offset: 1216)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !4046, line: 8, size: 128, elements: !4047)
!4046 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!4047 = !{!4048, !4049}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !4045, file: !4046, line: 9, baseType: !591, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !4045, file: !4046, line: 10, baseType: !481, size: 64, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1186, file: !76, line: 1015, baseType: !446, size: 64, offset: 1344)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1186, file: !76, line: 1016, baseType: !4052, size: 64, offset: 1408)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4054)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !76, line: 1914, size: 2112, elements: !4055)
!4055 = !{!4056, !4057, !4061, !4065, !4069, !4097, !4098, !4104, !4117, !4121, !4125, !4126, !4130, !4131, !4135, !4140, !4141, !4145, !4149, !4155, !4156, !4160, !4161, !4165, !4169, !4173, !4178, !4182, !4186, !4190, !4194, !4195, !4201}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4054, file: !76, line: 1915, baseType: !635, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4054, file: !76, line: 1916, baseType: !4058, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!607, !1590, !607, !113}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4054, file: !76, line: 1917, baseType: !4062, size: 64, offset: 128)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!399, !1590, !256, !414, !1169}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4054, file: !76, line: 1918, baseType: !4066, size: 64, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!399, !1590, !250, !414, !1169}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4054, file: !76, line: 1919, baseType: !4070, size: 64, offset: 256)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!399, !4073, !4095}
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !76, line: 373, size: 384, elements: !4075)
!4075 = !{!4076, !4077, !4078, !4082, !4083, !4084, !4085}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4074, file: !76, line: 374, baseType: !1590, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4074, file: !76, line: 375, baseType: !607, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4074, file: !76, line: 376, baseType: !4079, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !4073, !403}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4074, file: !76, line: 377, baseType: !218, size: 64, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4074, file: !76, line: 378, baseType: !113, size: 32, offset: 256)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4074, file: !76, line: 379, baseType: !338, size: 16, offset: 288)
!4085 = !DIDerivedType(tag: DW_TAG_member, scope: !4074, file: !76, line: 380, baseType: !4086, size: 64, offset: 320)
!4086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4074, file: !76, line: 380, size: 64, elements: !4087)
!4087 = !{!4088, !4091}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4086, file: !76, line: 386, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !76, line: 386, flags: DIFlagFwdDecl)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4086, file: !76, line: 395, baseType: !4092, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!399, !218}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !3762, line: 17, flags: DIFlagFwdDecl)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4054, file: !76, line: 1920, baseType: !4070, size: 64, offset: 320)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4054, file: !76, line: 1921, baseType: !4099, size: 64, offset: 384)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!113, !4073, !4102, !45}
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !76, line: 53, flags: DIFlagFwdDecl)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4054, file: !76, line: 1923, baseType: !4105, size: 64, offset: 448)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!113, !1590, !4108}
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !76, line: 1858, size: 128, elements: !4110)
!4110 = !{!4111, !4116}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4109, file: !76, line: 1859, baseType: !4112, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !76, line: 1855, baseType: !4113)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!786, !4108, !250, !113, !607, !519, !45}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4109, file: !76, line: 1860, baseType: !607, size: 64, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4054, file: !76, line: 1924, baseType: !4118, size: 64, offset: 512)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!2976, !1590, !2977}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4054, file: !76, line: 1925, baseType: !4122, size: 64, offset: 576)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!403, !1590, !45, !217}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4054, file: !76, line: 1926, baseType: !4122, size: 64, offset: 640)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4054, file: !76, line: 1927, baseType: !4127, size: 64, offset: 704)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!113, !1590, !3494}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4054, file: !76, line: 1928, baseType: !217, size: 64, offset: 768)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4054, file: !76, line: 1929, baseType: !4132, size: 64, offset: 832)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!113, !446, !1590}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4054, file: !76, line: 1930, baseType: !4136, size: 64, offset: 896)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!113, !1590, !4139}
!4139 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !76, line: 1061, baseType: !218)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4054, file: !76, line: 1931, baseType: !4132, size: 64, offset: 960)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4054, file: !76, line: 1932, baseType: !4142, size: 64, offset: 1024)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!113, !1590, !607, !607, !113}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4054, file: !76, line: 1933, baseType: !4146, size: 64, offset: 1088)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!113, !113, !1590, !113}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4054, file: !76, line: 1934, baseType: !4150, size: 64, offset: 1152)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!113, !1590, !113, !4153}
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !76, line: 1063, flags: DIFlagFwdDecl)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4054, file: !76, line: 1935, baseType: !1587, size: 64, offset: 1216)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4054, file: !76, line: 1936, baseType: !4157, size: 64, offset: 1280)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!113, !113}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4054, file: !76, line: 1937, baseType: !4150, size: 64, offset: 1344)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4054, file: !76, line: 1938, baseType: !4162, size: 64, offset: 1408)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!399, !3378, !1590, !1169, !414, !45}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4054, file: !76, line: 1939, baseType: !4166, size: 64, offset: 1472)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!399, !1590, !1169, !3378, !414, !45}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4054, file: !76, line: 1940, baseType: !4170, size: 64, offset: 1536)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !1590}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4054, file: !76, line: 1941, baseType: !4174, size: 64, offset: 1600)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!113, !1590, !113, !4177, !2964}
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4054, file: !76, line: 1942, baseType: !4179, size: 64, offset: 1664)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!403, !1590, !113, !607, !607}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4054, file: !76, line: 1944, baseType: !4183, size: 64, offset: 1728)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{null, !1148, !1590}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4054, file: !76, line: 1948, baseType: !4187, size: 64, offset: 1792)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!399, !1590, !607, !1590, !607, !414, !45}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4054, file: !76, line: 1950, baseType: !4191, size: 64, offset: 1856)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!607, !1590, !607, !1590, !607, !607, !45}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4054, file: !76, line: 1953, baseType: !4142, size: 64, offset: 1920)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4054, file: !76, line: 1954, baseType: !4196, size: 64, offset: 1984)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!113, !4199, !45}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !76, line: 1911, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4054, file: !76, line: 1955, baseType: !4202, size: 64, offset: 2048)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!113, !4199, !4102, !45}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1186, file: !76, line: 1018, baseType: !519, size: 64, offset: 1472)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1186, file: !76, line: 1020, baseType: !218, size: 64, offset: 1536)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1186, file: !76, line: 1023, baseType: !218, size: 64, offset: 1600)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1186, file: !76, line: 1027, baseType: !4209, size: 64, offset: 1664)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1186, file: !76, line: 1029, baseType: !442, size: 64, offset: 1728)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1186, file: !76, line: 1030, baseType: !4212, size: 32, offset: 1792)
!4212 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4213, line: 8, baseType: !515)
!4213 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1186, file: !76, line: 1031, baseType: !4212, size: 32, offset: 1824)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1149, file: !1150, line: 29, baseType: !218, size: 64, offset: 896)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1092, file: !76, line: 2077, baseType: !1145, size: 64, offset: 1088)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1092, file: !76, line: 2078, baseType: !1145, size: 64, offset: 1152)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1092, file: !76, line: 2079, baseType: !1145, size: 64, offset: 1216)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1092, file: !76, line: 2081, baseType: !4220, size: 64, offset: 1280)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!399, !597, !113, !256, !414, !607}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1092, file: !76, line: 2082, baseType: !4224, size: 64, offset: 1344)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!399, !597, !113, !250, !414, !607}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1092, file: !76, line: 2083, baseType: !4228, size: 64, offset: 1408)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!4231, !446}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !191, line: 296, size: 1664, elements: !4234)
!4234 = !{!4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4259, !4260, !4261}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4233, file: !191, line: 297, baseType: !952, size: 128)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4233, file: !191, line: 298, baseType: !292, size: 128, offset: 128)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4233, file: !191, line: 299, baseType: !292, size: 128, offset: 256)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4233, file: !191, line: 300, baseType: !292, size: 128, offset: 384)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4233, file: !191, line: 301, baseType: !706, size: 256, offset: 512)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4233, file: !191, line: 302, baseType: !305, size: 32, offset: 768)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4233, file: !191, line: 303, baseType: !275, size: 32, offset: 800)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4233, file: !191, line: 304, baseType: !597, size: 64, offset: 832)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4233, file: !191, line: 305, baseType: !4244, size: 64, offset: 896)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !191, line: 68, size: 64, elements: !4245)
!4245 = !{!4246, !4258}
!4246 = !DIDerivedType(tag: DW_TAG_member, scope: !4244, file: !191, line: 69, baseType: !4247, size: 32)
!4247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4244, file: !191, line: 69, size: 32, elements: !4248)
!4248 = !{!4249, !4250, !4251}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4247, file: !191, line: 70, baseType: !452, size: 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4247, file: !191, line: 71, baseType: !461, size: 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4247, file: !191, line: 72, baseType: !4252, size: 32)
!4252 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4253, line: 24, baseType: !4254)
!4253 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4253, line: 22, size: 32, elements: !4255)
!4255 = !{!4256}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4254, file: !4253, line: 23, baseType: !4257, size: 32)
!4257 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4253, line: 20, baseType: !458)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4244, file: !191, line: 74, baseType: !190, size: 32, offset: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4233, file: !191, line: 306, baseType: !607, size: 64, offset: 960)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4233, file: !191, line: 307, baseType: !217, size: 64, offset: 1024)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4233, file: !191, line: 308, baseType: !4262, size: 576, offset: 1088)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !191, line: 205, size: 576, elements: !4263)
!4263 = !{!4264, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4262, file: !191, line: 206, baseType: !4265, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !191, line: 66, baseType: !609)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4262, file: !191, line: 207, baseType: !4265, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4262, file: !191, line: 208, baseType: !4265, size: 64, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4262, file: !191, line: 209, baseType: !4265, size: 64, offset: 192)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4262, file: !191, line: 210, baseType: !4265, size: 64, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4262, file: !191, line: 211, baseType: !4265, size: 64, offset: 320)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4262, file: !191, line: 212, baseType: !4265, size: 64, offset: 384)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4262, file: !191, line: 213, baseType: !1919, size: 64, offset: 448)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4262, file: !191, line: 214, baseType: !1919, size: 64, offset: 512)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1092, file: !76, line: 2085, baseType: !4275, size: 64, offset: 1472)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!403, !597, !4278}
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4280, line: 15, size: 256, elements: !4281)
!4280 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4281 = !{!4282, !4283, !4284, !4285, !4286}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4279, file: !4280, line: 16, baseType: !1268, size: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4279, file: !4280, line: 19, baseType: !113, size: 32, offset: 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4279, file: !4280, line: 26, baseType: !217, size: 64, offset: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4279, file: !4280, line: 33, baseType: !217, size: 64, offset: 128)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4279, file: !4280, line: 36, baseType: !4287, size: 64, offset: 192)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !4280, line: 36, flags: DIFlagFwdDecl)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1092, file: !76, line: 2087, baseType: !4275, size: 64, offset: 1536)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1092, file: !76, line: 2089, baseType: !631, size: 64, offset: 1600)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !598, file: !76, line: 1198, baseType: !4292, size: 64, offset: 448)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4294)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !191, line: 324, size: 704, elements: !4295)
!4295 = !{!4296, !4300, !4304, !4308, !4309, !4310, !4311, !4312, !4317, !4322, !4326}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4294, file: !191, line: 325, baseType: !4297, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!113, !4232}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4294, file: !191, line: 326, baseType: !4301, size: 64, offset: 64)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!4232, !597, !113}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4294, file: !191, line: 327, baseType: !4305, size: 64, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{null, !4232}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4294, file: !191, line: 328, baseType: !4297, size: 64, offset: 192)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4294, file: !191, line: 329, baseType: !4297, size: 64, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4294, file: !191, line: 330, baseType: !4297, size: 64, offset: 320)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4294, file: !191, line: 331, baseType: !1120, size: 64, offset: 384)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4294, file: !191, line: 334, baseType: !4313, size: 64, offset: 448)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!4316, !446}
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4294, file: !191, line: 335, baseType: !4318, size: 64, offset: 512)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!113, !446, !4321}
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4294, file: !191, line: 337, baseType: !4323, size: 64, offset: 576)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!113, !446, !4316}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4294, file: !191, line: 339, baseType: !4327, size: 64, offset: 640)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!113, !597, !4330}
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !598, file: !76, line: 1199, baseType: !4332, size: 64, offset: 512)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4334)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !191, line: 430, size: 704, elements: !4335)
!4335 = !{!4336, !4342, !4343, !4347, !4348, !4349, !4364, !4387, !4391, !4392, !4415}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4334, file: !191, line: 431, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!113, !597, !113, !113, !4340}
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4045)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4334, file: !191, line: 432, baseType: !1120, size: 64, offset: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4334, file: !191, line: 433, baseType: !4344, size: 64, offset: 128)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!113, !597, !45}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4334, file: !191, line: 434, baseType: !4344, size: 64, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4334, file: !191, line: 435, baseType: !1120, size: 64, offset: 256)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4334, file: !191, line: 436, baseType: !4350, size: 64, offset: 320)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!113, !597, !113, !4353}
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !191, line: 417, size: 256, elements: !4355)
!4355 = !{!4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4354, file: !191, line: 418, baseType: !113, size: 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4354, file: !191, line: 419, baseType: !45, size: 32, offset: 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4354, file: !191, line: 420, baseType: !45, size: 32, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4354, file: !191, line: 422, baseType: !45, size: 32, offset: 96)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4354, file: !191, line: 423, baseType: !45, size: 32, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4354, file: !191, line: 424, baseType: !45, size: 32, offset: 160)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4354, file: !191, line: 425, baseType: !45, size: 32, offset: 192)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4354, file: !191, line: 426, baseType: !45, size: 32, offset: 224)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4334, file: !191, line: 437, baseType: !4365, size: 64, offset: 384)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!113, !597, !4244, !4368}
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !191, line: 345, size: 960, elements: !4370)
!4370 = !{!4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4369, file: !191, line: 346, baseType: !113, size: 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4369, file: !191, line: 347, baseType: !519, size: 64, offset: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4369, file: !191, line: 348, baseType: !519, size: 64, offset: 128)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4369, file: !191, line: 349, baseType: !519, size: 64, offset: 192)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4369, file: !191, line: 350, baseType: !519, size: 64, offset: 256)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4369, file: !191, line: 351, baseType: !519, size: 64, offset: 320)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4369, file: !191, line: 352, baseType: !519, size: 64, offset: 384)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4369, file: !191, line: 353, baseType: !716, size: 64, offset: 448)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4369, file: !191, line: 355, baseType: !716, size: 64, offset: 512)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4369, file: !191, line: 356, baseType: !113, size: 32, offset: 576)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4369, file: !191, line: 357, baseType: !113, size: 32, offset: 608)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4369, file: !191, line: 358, baseType: !519, size: 64, offset: 640)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4369, file: !191, line: 359, baseType: !519, size: 64, offset: 704)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4369, file: !191, line: 360, baseType: !519, size: 64, offset: 768)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4369, file: !191, line: 361, baseType: !716, size: 64, offset: 832)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4369, file: !191, line: 362, baseType: !113, size: 32, offset: 896)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4334, file: !191, line: 438, baseType: !4388, size: 64, offset: 448)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!113, !597, !4330, !4368}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4334, file: !191, line: 440, baseType: !4365, size: 64, offset: 512)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4334, file: !191, line: 441, baseType: !4393, size: 64, offset: 576)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!113, !597, !4396}
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !191, line: 411, size: 1408, elements: !4398)
!4398 = !{!4399, !4400}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4397, file: !191, line: 412, baseType: !45, size: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4397, file: !191, line: 413, baseType: !4401, size: 1344, offset: 64)
!4401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4402, size: 1344, elements: !368)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !191, line: 397, size: 448, elements: !4403)
!4403 = !{!4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4414}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4402, file: !191, line: 398, baseType: !45, size: 32)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4402, file: !191, line: 399, baseType: !45, size: 32, offset: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4402, file: !191, line: 401, baseType: !45, size: 32, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4402, file: !191, line: 402, baseType: !45, size: 32, offset: 96)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4402, file: !191, line: 403, baseType: !45, size: 32, offset: 128)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4402, file: !191, line: 404, baseType: !45, size: 32, offset: 160)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4402, file: !191, line: 405, baseType: !45, size: 32, offset: 192)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4402, file: !191, line: 406, baseType: !521, size: 64, offset: 256)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4402, file: !191, line: 407, baseType: !4413, size: 64, offset: 320)
!4413 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !276, line: 132, baseType: !519)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4402, file: !191, line: 408, baseType: !4413, size: 64, offset: 384)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4334, file: !191, line: 442, baseType: !4344, size: 64, offset: 640)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !598, file: !76, line: 1200, baseType: !4417, size: 64, offset: 576)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4419)
!4419 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !76, line: 54, flags: DIFlagFwdDecl)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !598, file: !76, line: 1201, baseType: !217, size: 64, offset: 640)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !598, file: !76, line: 1202, baseType: !217, size: 64, offset: 704)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !598, file: !76, line: 1203, baseType: !217, size: 64, offset: 768)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !598, file: !76, line: 1204, baseType: !481, size: 64, offset: 832)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !598, file: !76, line: 1205, baseType: !1616, size: 320, offset: 896)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !598, file: !76, line: 1206, baseType: !113, size: 32, offset: 1216)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !598, file: !76, line: 1207, baseType: !275, size: 32, offset: 1248)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !598, file: !76, line: 1209, baseType: !218, size: 64, offset: 1280)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !598, file: !76, line: 1211, baseType: !4429, size: 64, offset: 1344)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4432)
!4432 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !76, line: 1211, flags: DIFlagFwdDecl)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !598, file: !76, line: 1223, baseType: !4434, size: 64, offset: 1408)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !498, line: 34, size: 64, elements: !4435)
!4435 = !{!4436}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4434, file: !498, line: 35, baseType: !501, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !598, file: !76, line: 1224, baseType: !292, size: 128, offset: 1472)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !598, file: !76, line: 1225, baseType: !4439, size: 64, offset: 1600)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !76, line: 1225, flags: DIFlagFwdDecl)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !598, file: !76, line: 1226, baseType: !4442, size: 64, offset: 1664)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !76, line: 1226, flags: DIFlagFwdDecl)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !598, file: !76, line: 1227, baseType: !4445, size: 64, offset: 1728)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !76, line: 50, flags: DIFlagFwdDecl)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !598, file: !76, line: 1228, baseType: !4448, size: 64, offset: 1792)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !76, line: 1228, flags: DIFlagFwdDecl)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !598, file: !76, line: 1229, baseType: !952, size: 128, offset: 1856)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !598, file: !76, line: 1230, baseType: !45, size: 32, offset: 1984)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !598, file: !76, line: 1231, baseType: !4453, size: 2496, offset: 2048)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !191, line: 521, size: 2496, elements: !4454)
!4454 = !{!4455, !4456, !4457, !4459, !4491}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4453, file: !191, line: 522, baseType: !45, size: 32)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4453, file: !191, line: 523, baseType: !1616, size: 320, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4453, file: !191, line: 524, baseType: !4458, size: 192, offset: 384)
!4458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 192, elements: !368)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4453, file: !191, line: 525, baseType: !4460, size: 1728, offset: 576)
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4461, size: 1728, elements: !368)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !191, line: 222, size: 576, elements: !4462)
!4462 = !{!4463, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4461, file: !191, line: 223, baseType: !4464, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !191, line: 445, size: 256, elements: !4466)
!4466 = !{!4467, !4468, !4481, !4482}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4465, file: !191, line: 446, baseType: !113, size: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4465, file: !191, line: 447, baseType: !4469, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4471)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !191, line: 312, size: 512, elements: !4472)
!4472 = !{!4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4471, file: !191, line: 313, baseType: !1120, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4471, file: !191, line: 314, baseType: !1120, size: 64, offset: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4471, file: !191, line: 315, baseType: !1120, size: 64, offset: 128)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4471, file: !191, line: 316, baseType: !1120, size: 64, offset: 192)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4471, file: !191, line: 317, baseType: !4297, size: 64, offset: 256)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4471, file: !191, line: 318, baseType: !4297, size: 64, offset: 320)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4471, file: !191, line: 319, baseType: !4297, size: 64, offset: 384)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4471, file: !191, line: 320, baseType: !4327, size: 64, offset: 448)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4465, file: !191, line: 448, baseType: !635, size: 64, offset: 128)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4465, file: !191, line: 449, baseType: !4464, size: 64, offset: 192)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4461, file: !191, line: 224, baseType: !113, size: 32, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4461, file: !191, line: 226, baseType: !292, size: 128, offset: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4461, file: !191, line: 227, baseType: !217, size: 64, offset: 256)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4461, file: !191, line: 228, baseType: !45, size: 32, offset: 320)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4461, file: !191, line: 229, baseType: !45, size: 32, offset: 352)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4461, file: !191, line: 230, baseType: !4265, size: 64, offset: 384)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4461, file: !191, line: 231, baseType: !4265, size: 64, offset: 448)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4461, file: !191, line: 232, baseType: !218, size: 64, offset: 512)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4453, file: !191, line: 526, baseType: !4492, size: 192, offset: 2304)
!4492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4469, size: 192, elements: !368)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !598, file: !76, line: 1233, baseType: !4494, size: 2368, offset: 4544)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !76, line: 1184, size: 2368, elements: !4495)
!4495 = !{!4496, !4497, !4498}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4494, file: !76, line: 1185, baseType: !225, size: 16)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4494, file: !76, line: 1186, baseType: !225, size: 16, offset: 16)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4494, file: !76, line: 1187, baseType: !4499, size: 2304, offset: 64)
!4499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4500, size: 2304, elements: !368)
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4501, line: 12, size: 768, elements: !4502)
!4501 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4502 = !{!4503, !4511, !4512, !4517, !4518}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4500, file: !4501, line: 13, baseType: !4504, size: 384)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4505, line: 17, size: 384, elements: !4506)
!4505 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4506 = !{!4507, !4508, !4509, !4510}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4504, file: !4505, line: 18, baseType: !113, size: 32)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4504, file: !4505, line: 19, baseType: !113, size: 32, offset: 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4504, file: !4505, line: 20, baseType: !1241, size: 192, offset: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4504, file: !4505, line: 22, baseType: !926, size: 128, align: 64, offset: 256)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4500, file: !4501, line: 14, baseType: !778, size: 64, offset: 384)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4500, file: !4501, line: 15, baseType: !4513, size: 64, offset: 448)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4514, line: 16, size: 64, elements: !4515)
!4514 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4515 = !{!4516}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4513, file: !4514, line: 17, baseType: !1275, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4500, file: !4501, line: 16, baseType: !1241, size: 192, offset: 512)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4500, file: !4501, line: 17, baseType: !275, size: 32, offset: 704)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !598, file: !76, line: 1240, baseType: !218, size: 64, offset: 6912)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !598, file: !76, line: 1243, baseType: !515, size: 32, offset: 6976)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !598, file: !76, line: 1245, baseType: !1919, size: 64, offset: 7040)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !598, file: !76, line: 1246, baseType: !1919, size: 64, offset: 7104)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !598, file: !76, line: 1248, baseType: !516, size: 32, offset: 7168)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !598, file: !76, line: 1249, baseType: !4525, size: 64, offset: 7232)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !76, line: 634, flags: DIFlagFwdDecl)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !598, file: !76, line: 1252, baseType: !4528, size: 256, offset: 7296)
!4528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !528)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !598, file: !76, line: 1253, baseType: !4530, size: 128, offset: 7552)
!4530 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4531, line: 21, baseType: !4532)
!4531 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4531, line: 19, size: 128, elements: !4533)
!4533 = !{!4534}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4532, file: !4531, line: 20, baseType: !4535, size: 128)
!4535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 128, elements: !243)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !598, file: !76, line: 1255, baseType: !45, size: 32, offset: 7680)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !598, file: !76, line: 1261, baseType: !706, size: 256, offset: 7744)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !598, file: !76, line: 1267, baseType: !250, size: 64, offset: 8000)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !598, file: !76, line: 1269, baseType: !544, size: 64, offset: 8064)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !598, file: !76, line: 1271, baseType: !4541, size: 448, offset: 8128)
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4280, line: 63, size: 448, elements: !4542)
!4542 = !{!4543, !4548, !4549, !4550, !4551, !4552, !4553}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4541, file: !4280, line: 64, baseType: !4544, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!217, !4547, !4278}
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4541, file: !4280, line: 66, baseType: !4544, size: 64, offset: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4541, file: !4280, line: 69, baseType: !403, size: 64, offset: 128)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4541, file: !4280, line: 70, baseType: !113, size: 32, offset: 192)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4541, file: !4280, line: 71, baseType: !45, size: 32, offset: 224)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4541, file: !4280, line: 74, baseType: !292, size: 128, offset: 256)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4541, file: !4280, line: 85, baseType: !4554, size: 64, offset: 384)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !598, file: !76, line: 1274, baseType: !710, size: 64, offset: 8576)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !598, file: !76, line: 1280, baseType: !710, size: 64, offset: 8640)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !598, file: !76, line: 1283, baseType: !113, size: 32, offset: 8704)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !598, file: !76, line: 1286, baseType: !4212, size: 32, offset: 8736)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !598, file: !76, line: 1289, baseType: !1028, size: 64, offset: 8768)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !598, file: !76, line: 1290, baseType: !1076, size: 64, offset: 8832)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !598, file: !76, line: 1297, baseType: !1716, size: 64, offset: 8896)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !598, file: !76, line: 1304, baseType: !4563, size: 64, offset: 8960)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4564, line: 49, size: 64, elements: !4565)
!4564 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4565 = !{!4566}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4563, file: !4564, line: 50, baseType: !4567, size: 64)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4564, line: 41, size: 512, align: 512, elements: !4569)
!4569 = !{!4570, !4571, !4576}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4568, file: !4564, line: 43, baseType: !305, size: 32)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4568, file: !4564, line: 45, baseType: !4572, size: 192, offset: 64)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4564, line: 29, size: 192, elements: !4573)
!4573 = !{!4574, !4575}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4572, file: !4564, line: 30, baseType: !292, size: 128)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4572, file: !4564, line: 32, baseType: !403, size: 64, offset: 128)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4568, file: !4564, line: 46, baseType: !403, size: 64, offset: 256)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !598, file: !76, line: 1305, baseType: !4563, size: 64, offset: 9024)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !598, file: !76, line: 1306, baseType: !926, size: 128, align: 64, offset: 9088)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !598, file: !76, line: 1307, baseType: !966, size: 256, offset: 9216)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !598, file: !76, line: 1309, baseType: !706, size: 256, offset: 9472)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !598, file: !76, line: 1314, baseType: !113, size: 32, offset: 9728)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !598, file: !76, line: 1317, baseType: !305, size: 32, align: 512, offset: 10240)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !598, file: !76, line: 1318, baseType: !292, size: 128, offset: 10304)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !598, file: !76, line: 1320, baseType: !305, size: 32, offset: 10432)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !598, file: !76, line: 1321, baseType: !292, size: 128, offset: 10496)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !592, file: !593, line: 73, baseType: !113, size: 32, offset: 128)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !592, file: !593, line: 74, baseType: !4588, size: 64, offset: 192)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1887, line: 42, flags: DIFlagFwdDecl)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !546, file: !483, line: 141, baseType: !4592, size: 64, offset: 704)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!113, !4340, !786}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !546, file: !483, line: 142, baseType: !4596, size: 64, offset: 768)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!481, !481, !4599}
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !482, file: !483, line: 96, baseType: !597, size: 64, offset: 832)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !482, file: !483, line: 97, baseType: !217, size: 64, offset: 896)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !482, file: !483, line: 98, baseType: !218, size: 64, offset: 960)
!4604 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !483, line: 100, baseType: !4605, size: 128, offset: 1024)
!4605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !482, file: !483, line: 100, size: 128, elements: !4606)
!4606 = !{!4607, !4608}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4605, file: !483, line: 101, baseType: !292, size: 128)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4605, file: !483, line: 102, baseType: !4609, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !482, file: !483, line: 104, baseType: !292, size: 128, offset: 1152)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !482, file: !483, line: 105, baseType: !292, size: 128, offset: 1280)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !482, file: !483, line: 113, baseType: !4613, size: 128, offset: 1408)
!4613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !482, file: !483, line: 109, size: 128, elements: !4614)
!4614 = !{!4615, !4616, !4617}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4613, file: !483, line: 110, baseType: !952, size: 128)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4613, file: !483, line: 111, baseType: !497, size: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4613, file: !483, line: 112, baseType: !926, size: 128, align: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !475, file: !76, line: 1968, baseType: !4619, size: 64, offset: 64)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!250, !481, !446, !4622}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4624, line: 10, size: 128, elements: !4625)
!4624 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4625 = !{!4626, !4627}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4623, file: !4624, line: 11, baseType: !749, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4623, file: !4624, line: 12, baseType: !218, size: 64, offset: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !475, file: !76, line: 1969, baseType: !4629, size: 64, offset: 128)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!113, !4588, !446, !113}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !475, file: !76, line: 1970, baseType: !4633, size: 64, offset: 192)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!469, !446, !113, !786}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !475, file: !76, line: 1972, baseType: !4637, size: 64, offset: 256)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!113, !481, !256, !113}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !475, file: !76, line: 1974, baseType: !4641, size: 64, offset: 320)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!113, !4588, !446, !481, !409, !786}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !475, file: !76, line: 1976, baseType: !4645, size: 64, offset: 384)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!113, !481, !446, !481}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !475, file: !76, line: 1977, baseType: !4649, size: 64, offset: 448)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!113, !446, !481}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !475, file: !76, line: 1978, baseType: !4653, size: 64, offset: 512)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!113, !4588, !446, !481, !250}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !475, file: !76, line: 1980, baseType: !4657, size: 64, offset: 576)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!113, !4588, !446, !481, !409}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !475, file: !76, line: 1982, baseType: !4649, size: 64, offset: 640)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !475, file: !76, line: 1983, baseType: !4662, size: 64, offset: 704)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!113, !4588, !446, !481, !409, !602}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !475, file: !76, line: 1985, baseType: !4666, size: 64, offset: 768)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!113, !4588, !446, !481, !446, !481, !45}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !475, file: !76, line: 1987, baseType: !4670, size: 64, offset: 832)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!113, !4588, !481, !4673}
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !76, line: 226, size: 640, elements: !4675)
!4675 = !{!4676, !4677, !4678, !4688, !4697, !4698, !4703, !4704, !4705}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4674, file: !76, line: 227, baseType: !45, size: 32)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4674, file: !76, line: 228, baseType: !409, size: 16, offset: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, scope: !4674, file: !76, line: 241, baseType: !4679, size: 32, offset: 64)
!4679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4674, file: !76, line: 241, size: 32, elements: !4680)
!4680 = !{!4681, !4682}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4679, file: !76, line: 242, baseType: !452, size: 32)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4679, file: !76, line: 243, baseType: !4683, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4684, line: 16, baseType: !4685)
!4684 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4684, line: 14, size: 32, elements: !4686)
!4686 = !{!4687}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4685, file: !4684, line: 15, baseType: !457, size: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, scope: !4674, file: !76, line: 245, baseType: !4689, size: 32, offset: 96)
!4689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4674, file: !76, line: 245, size: 32, elements: !4690)
!4690 = !{!4691, !4692}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4689, file: !76, line: 246, baseType: !461, size: 32)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4689, file: !76, line: 247, baseType: !4693, size: 32)
!4693 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4684, line: 20, baseType: !4694)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4684, line: 18, size: 32, elements: !4695)
!4695 = !{!4696}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4694, file: !4684, line: 19, baseType: !465, size: 32)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4674, file: !76, line: 249, baseType: !607, size: 64, offset: 128)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4674, file: !76, line: 250, baseType: !4699, size: 128, offset: 192)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1920, line: 13, size: 128, elements: !4700)
!4700 = !{!4701, !4702}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4699, file: !1920, line: 14, baseType: !1919, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4699, file: !1920, line: 15, baseType: !403, size: 64, offset: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4674, file: !76, line: 251, baseType: !4699, size: 128, offset: 320)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4674, file: !76, line: 252, baseType: !4699, size: 128, offset: 448)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4674, file: !76, line: 259, baseType: !1590, size: 64, offset: 576)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !475, file: !76, line: 1988, baseType: !4707, size: 64, offset: 896)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!113, !4588, !4340, !4710, !515, !45}
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4712, line: 22, size: 1280, elements: !4713)
!4712 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4713 = !{!4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4711, file: !4712, line: 23, baseType: !515, size: 32)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4711, file: !4712, line: 24, baseType: !409, size: 16, offset: 32)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4711, file: !4712, line: 25, baseType: !45, size: 32, offset: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4711, file: !4712, line: 26, baseType: !1927, size: 32, offset: 96)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4711, file: !4712, line: 27, baseType: !519, size: 64, offset: 128)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4711, file: !4712, line: 28, baseType: !519, size: 64, offset: 192)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4711, file: !4712, line: 41, baseType: !519, size: 64, offset: 256)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4711, file: !4712, line: 42, baseType: !602, size: 32, offset: 320)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4711, file: !4712, line: 43, baseType: !602, size: 32, offset: 352)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4711, file: !4712, line: 44, baseType: !452, size: 32, offset: 384)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4711, file: !4712, line: 45, baseType: !461, size: 32, offset: 416)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4711, file: !4712, line: 46, baseType: !607, size: 64, offset: 448)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4711, file: !4712, line: 47, baseType: !4699, size: 128, offset: 512)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4711, file: !4712, line: 48, baseType: !4699, size: 128, offset: 640)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4711, file: !4712, line: 49, baseType: !4699, size: 128, offset: 768)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4711, file: !4712, line: 50, baseType: !4699, size: 128, offset: 896)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4711, file: !4712, line: 51, baseType: !519, size: 64, offset: 1024)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4711, file: !4712, line: 52, baseType: !519, size: 64, offset: 1088)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4711, file: !4712, line: 53, baseType: !515, size: 32, offset: 1152)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4711, file: !4712, line: 54, baseType: !515, size: 32, offset: 1184)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4711, file: !4712, line: 55, baseType: !519, size: 64, offset: 1216)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !475, file: !76, line: 1990, baseType: !4736, size: 64, offset: 960)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!399, !481, !256, !414}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !475, file: !76, line: 1991, baseType: !4740, size: 64, offset: 1024)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!113, !446, !4743, !519, !519}
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !76, line: 55, flags: DIFlagFwdDecl)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !475, file: !76, line: 1993, baseType: !4746, size: 64, offset: 1088)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!113, !446, !113}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !475, file: !76, line: 1994, baseType: !4750, size: 64, offset: 1152)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!113, !446, !481, !1590, !45, !409}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !475, file: !76, line: 1997, baseType: !4754, size: 64, offset: 1216)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!113, !4588, !446, !1590, !409}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !475, file: !76, line: 1999, baseType: !4758, size: 64, offset: 1280)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!469, !4588, !481, !113}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !475, file: !76, line: 2001, baseType: !4762, size: 64, offset: 1344)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!113, !4588, !481, !469, !113}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !475, file: !76, line: 2003, baseType: !4766, size: 64, offset: 1408)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!113, !4588, !481, !4769}
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !76, line: 76, flags: DIFlagFwdDecl)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !475, file: !76, line: 2005, baseType: !4772, size: 64, offset: 1472)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!113, !481, !4769}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !475, file: !76, line: 2006, baseType: !4776, size: 64, offset: 1536)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!4779, !446}
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !76, line: 3192, size: 192, elements: !4781)
!4781 = !{!4782, !4783}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4780, file: !76, line: 3193, baseType: !1263, size: 128)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4780, file: !76, line: 3194, baseType: !515, size: 32, offset: 128)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !447, file: !76, line: 655, baseType: !597, size: 64, offset: 448)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !447, file: !76, line: 656, baseType: !442, size: 64, offset: 512)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !447, file: !76, line: 659, baseType: !218, size: 64, offset: 576)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !447, file: !76, line: 663, baseType: !217, size: 64, offset: 640)
!4788 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !76, line: 671, baseType: !4789, size: 32, offset: 704)
!4789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !76, line: 671, size: 32, elements: !4790)
!4790 = !{!4791, !4793}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4789, file: !76, line: 672, baseType: !4792, size: 32)
!4792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4789, file: !76, line: 673, baseType: !45, size: 32)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !447, file: !76, line: 675, baseType: !602, size: 32, offset: 736)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !447, file: !76, line: 676, baseType: !607, size: 64, offset: 768)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !447, file: !76, line: 677, baseType: !4699, size: 128, offset: 832)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !447, file: !76, line: 678, baseType: !4699, size: 128, offset: 960)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !447, file: !76, line: 679, baseType: !4699, size: 128, offset: 1088)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !447, file: !76, line: 680, baseType: !305, size: 32, offset: 1216)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !447, file: !76, line: 681, baseType: !225, size: 16, offset: 1248)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !447, file: !76, line: 682, baseType: !329, size: 8, offset: 1264)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !447, file: !76, line: 683, baseType: !329, size: 8, offset: 1272)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !447, file: !76, line: 684, baseType: !4413, size: 64, offset: 1280)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !447, file: !76, line: 691, baseType: !217, size: 64, offset: 1344)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !447, file: !76, line: 692, baseType: !1616, size: 320, offset: 1408)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !447, file: !76, line: 694, baseType: !217, size: 64, offset: 1728)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !447, file: !76, line: 695, baseType: !217, size: 64, offset: 1792)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !447, file: !76, line: 697, baseType: !952, size: 128, offset: 1856)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !447, file: !76, line: 698, baseType: !292, size: 128, offset: 1984)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !447, file: !76, line: 707, baseType: !292, size: 128, offset: 2112)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !447, file: !76, line: 708, baseType: !292, size: 128, offset: 2240)
!4812 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !76, line: 709, baseType: !4813, size: 128, offset: 2368)
!4813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !76, line: 709, size: 128, elements: !4814)
!4814 = !{!4815, !4816}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4813, file: !76, line: 710, baseType: !1076, size: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4813, file: !76, line: 711, baseType: !926, size: 128, align: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !447, file: !76, line: 713, baseType: !712, size: 64, offset: 2496)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !447, file: !76, line: 714, baseType: !712, size: 64, offset: 2560)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !447, file: !76, line: 715, baseType: !275, size: 32, offset: 2624)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !447, file: !76, line: 716, baseType: !275, size: 32, offset: 2656)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !447, file: !76, line: 717, baseType: !275, size: 32, offset: 2688)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !447, file: !76, line: 719, baseType: !275, size: 32, offset: 2720)
!4823 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !76, line: 721, baseType: !4824, size: 64, offset: 2752)
!4824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !76, line: 721, size: 64, elements: !4825)
!4825 = !{!4826, !4827}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4824, file: !76, line: 722, baseType: !4052, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4824, file: !76, line: 723, baseType: !1099, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !447, file: !76, line: 725, baseType: !4829, size: 64, offset: 2816)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !76, line: 725, flags: DIFlagFwdDecl)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !447, file: !76, line: 726, baseType: !443, size: 1536, align: 64, offset: 2880)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !447, file: !76, line: 727, baseType: !292, size: 128, offset: 4416)
!4833 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !76, line: 728, baseType: !4834, size: 64, offset: 4544)
!4834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !76, line: 728, size: 64, elements: !4835)
!4835 = !{!4836, !4837, !4838, !4839}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4834, file: !76, line: 729, baseType: !3378, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4834, file: !76, line: 730, baseType: !282, size: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4834, file: !76, line: 731, baseType: !256, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4834, file: !76, line: 732, baseType: !45, size: 32)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !447, file: !76, line: 735, baseType: !516, size: 32, offset: 4608)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !447, file: !76, line: 738, baseType: !516, size: 32, offset: 4640)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !447, file: !76, line: 739, baseType: !4525, size: 64, offset: 4672)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !447, file: !76, line: 750, baseType: !218, size: 64, offset: 4736)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !443, file: !76, line: 474, baseType: !1263, size: 128, offset: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !443, file: !76, line: 475, baseType: !1616, size: 320, offset: 192)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !443, file: !76, line: 476, baseType: !1268, size: 32, offset: 512)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !443, file: !76, line: 477, baseType: !275, size: 32, offset: 544)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !443, file: !76, line: 482, baseType: !1446, size: 128, offset: 576)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !443, file: !76, line: 483, baseType: !217, size: 64, offset: 704)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !443, file: !76, line: 484, baseType: !217, size: 64, offset: 768)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !443, file: !76, line: 485, baseType: !4852, size: 64, offset: 832)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4854)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !76, line: 404, size: 1280, elements: !4855)
!4855 = !{!4856, !4860, !4930, !4934, !4938, !4944, !4948, !4952, !4957, !4961, !4965, !4969, !4970, !4974, !4978, !4982, !4987, !4991, !4998, !4999}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4854, file: !76, line: 405, baseType: !4857, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!113, !3384, !1111}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4854, file: !76, line: 406, baseType: !4861, size: 64, offset: 64)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!113, !1590, !4864}
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !160, line: 293, size: 1536, elements: !4866)
!4866 = !{!4867, !4897, !4911}
!4867 = !DIDerivedType(tag: DW_TAG_member, scope: !4865, file: !160, line: 295, baseType: !4868, size: 512)
!4868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4865, file: !160, line: 295, size: 512, elements: !4869)
!4869 = !{!4870, !4896}
!4870 = !DIDerivedType(tag: DW_TAG_member, scope: !4868, file: !160, line: 296, baseType: !4871, size: 448)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4868, file: !160, line: 296, size: 448, elements: !4872)
!4872 = !{!4873, !4874, !4883, !4884, !4885, !4894, !4895}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4871, file: !160, line: 298, baseType: !217, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, scope: !4871, file: !160, line: 299, baseType: !4875, size: 128, offset: 64)
!4875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4871, file: !160, line: 299, size: 128, elements: !4876)
!4876 = !{!4877, !4878}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4875, file: !160, line: 300, baseType: !292, size: 128)
!4878 = !DIDerivedType(tag: DW_TAG_member, scope: !4875, file: !160, line: 302, baseType: !4879, size: 128)
!4879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4875, file: !160, line: 302, size: 128, elements: !4880)
!4880 = !{!4881, !4882}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4879, file: !160, line: 303, baseType: !218, size: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4879, file: !160, line: 305, baseType: !45, size: 32, offset: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4871, file: !160, line: 310, baseType: !442, size: 64, offset: 192)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4871, file: !160, line: 311, baseType: !217, size: 64, offset: 256)
!4885 = !DIDerivedType(tag: DW_TAG_member, scope: !4871, file: !160, line: 312, baseType: !4886, size: 64, offset: 320)
!4886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4871, file: !160, line: 312, size: 64, elements: !4887)
!4887 = !{!4888, !4889}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4886, file: !160, line: 313, baseType: !218, size: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4886, file: !160, line: 314, baseType: !4890, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !160, line: 257, baseType: !4891)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 255, size: 64, elements: !4892)
!4892 = !{!4893}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4891, file: !160, line: 256, baseType: !217, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4871, file: !160, line: 316, baseType: !275, size: 32, offset: 384)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4871, file: !160, line: 317, baseType: !275, size: 32, offset: 416)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4868, file: !160, line: 323, baseType: !3385, size: 512, align: 128)
!4897 = !DIDerivedType(tag: DW_TAG_member, scope: !4865, file: !160, line: 325, baseType: !4898, size: 512, offset: 512)
!4898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4865, file: !160, line: 325, size: 512, elements: !4899)
!4899 = !{!4900, !4910}
!4900 = !DIDerivedType(tag: DW_TAG_member, scope: !4898, file: !160, line: 326, baseType: !4901, size: 320)
!4901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4898, file: !160, line: 326, size: 320, elements: !4902)
!4902 = !{!4903, !4904, !4905, !4906, !4907, !4908, !4909}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4901, file: !160, line: 327, baseType: !217, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4901, file: !160, line: 328, baseType: !217, size: 64, offset: 64)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4901, file: !160, line: 329, baseType: !217, size: 64, offset: 128)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4901, file: !160, line: 331, baseType: !275, size: 32, offset: 192)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4901, file: !160, line: 332, baseType: !275, size: 32, offset: 224)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4901, file: !160, line: 333, baseType: !275, size: 32, offset: 256)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4901, file: !160, line: 335, baseType: !45, size: 32, offset: 288)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4898, file: !160, line: 339, baseType: !3385, size: 512, align: 128)
!4911 = !DIDerivedType(tag: DW_TAG_member, scope: !4865, file: !160, line: 341, baseType: !4912, size: 512, offset: 1024)
!4912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4865, file: !160, line: 341, size: 512, elements: !4913)
!4913 = !{!4914, !4923, !4929}
!4914 = !DIDerivedType(tag: DW_TAG_member, scope: !4912, file: !160, line: 342, baseType: !4915, size: 384)
!4915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4912, file: !160, line: 342, size: 384, elements: !4916)
!4916 = !{!4917, !4918, !4919, !4920, !4921, !4922}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4915, file: !160, line: 343, baseType: !217, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4915, file: !160, line: 344, baseType: !217, size: 64, offset: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4915, file: !160, line: 346, baseType: !218, size: 64, offset: 128)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4915, file: !160, line: 347, baseType: !218, size: 64, offset: 192)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4915, file: !160, line: 348, baseType: !218, size: 64, offset: 256)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4915, file: !160, line: 349, baseType: !218, size: 64, offset: 320)
!4923 = !DIDerivedType(tag: DW_TAG_member, scope: !4912, file: !160, line: 352, baseType: !4924, size: 256)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4912, file: !160, line: 352, size: 256, elements: !4925)
!4925 = !{!4926, !4927, !4928}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4924, file: !160, line: 353, baseType: !217, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4924, file: !160, line: 354, baseType: !217, size: 64, offset: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4924, file: !160, line: 356, baseType: !292, size: 128, offset: 128)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4912, file: !160, line: 359, baseType: !3385, size: 512, align: 128)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4854, file: !76, line: 409, baseType: !4931, size: 64, offset: 128)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!113, !442, !1111}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4854, file: !76, line: 412, baseType: !4935, size: 64, offset: 192)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!786, !442, !4864}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4854, file: !76, line: 414, baseType: !4939, size: 64, offset: 256)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{null, !4942}
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !76, line: 310, flags: DIFlagFwdDecl)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4854, file: !76, line: 416, baseType: !4945, size: 64, offset: 320)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!113, !1590, !442, !607, !45, !3769, !2964}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4854, file: !76, line: 419, baseType: !4949, size: 64, offset: 384)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!113, !1590, !442, !607, !45, !45, !3384, !218}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4854, file: !76, line: 424, baseType: !4953, size: 64, offset: 448)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!4956, !442, !4956}
!4956 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !276, line: 131, baseType: !519)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4854, file: !76, line: 425, baseType: !4958, size: 64, offset: 512)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{null, !4864, !414, !414}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4854, file: !76, line: 426, baseType: !4962, size: 64, offset: 576)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!786, !4864, !1268}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4854, file: !76, line: 427, baseType: !4966, size: 64, offset: 640)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{null, !4864}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4854, file: !76, line: 428, baseType: !4070, size: 64, offset: 704)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4854, file: !76, line: 433, baseType: !4971, size: 64, offset: 768)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!113, !442, !4864, !4864, !196}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4854, file: !76, line: 435, baseType: !4975, size: 64, offset: 832)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!113, !4864}
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4854, file: !76, line: 436, baseType: !4979, size: 64, offset: 896)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!786, !4864, !414, !414}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4854, file: !76, line: 438, baseType: !4983, size: 64, offset: 960)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{null, !4864, !4986, !4986}
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4854, file: !76, line: 439, baseType: !4988, size: 64, offset: 1024)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!113, !442, !3384}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4854, file: !76, line: 442, baseType: !4992, size: 64, offset: 1088)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{!113, !4995, !1590, !4997}
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !76, line: 66, flags: DIFlagFwdDecl)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4854, file: !76, line: 444, baseType: !4170, size: 64, offset: 1152)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4854, file: !76, line: 445, baseType: !5000, size: 64, offset: 1216)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!113, !4073, !4095}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !443, file: !76, line: 486, baseType: !217, size: 64, offset: 896)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !443, file: !76, line: 487, baseType: !1616, size: 320, offset: 960)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !443, file: !76, line: 488, baseType: !4212, size: 32, offset: 1280)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !443, file: !76, line: 489, baseType: !305, size: 32, offset: 1312)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !443, file: !76, line: 490, baseType: !292, size: 128, offset: 1344)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !443, file: !76, line: 491, baseType: !218, size: 64, offset: 1472)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !433, file: !393, line: 180, baseType: !5010, size: 64, offset: 320)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!399, !1590, !298, !432, !256, !607, !414}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !433, file: !393, line: 182, baseType: !5010, size: 64, offset: 384)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !433, file: !393, line: 184, baseType: !5015, size: 64, offset: 448)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!113, !1590, !298, !432, !3494}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !421, file: !393, line: 90, baseType: !5019, size: 64, offset: 192)
!5019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !421, file: !393, line: 91, baseType: !5021, size: 64, offset: 256)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !383, file: !288, line: 120, baseType: !5023, size: 64, offset: 192)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!2599, !351}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !383, file: !288, line: 121, baseType: !5027, size: 64, offset: 256)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!1693, !351}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !383, file: !288, line: 122, baseType: !5031, size: 64, offset: 320)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{null, !351, !2206, !2207}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !287, file: !288, line: 70, baseType: !5035, size: 64, offset: 384)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !5037, line: 190, size: 1152, elements: !5038)
!5037 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!5038 = !{!5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5118, !5119, !5120, !5121, !5122, !5125}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5036, file: !5037, line: 191, baseType: !275, size: 32)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5036, file: !5037, line: 192, baseType: !275, size: 32, offset: 32)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5036, file: !5037, line: 202, baseType: !5035, size: 64, offset: 64)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5036, file: !5037, line: 203, baseType: !250, size: 64, offset: 128)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5036, file: !5037, line: 205, baseType: !818, size: 192, align: 64, offset: 192)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5036, file: !5037, line: 207, baseType: !1693, size: 64, offset: 384)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5036, file: !5037, line: 208, baseType: !45, size: 32, offset: 448)
!5046 = !DIDerivedType(tag: DW_TAG_member, scope: !5036, file: !5037, line: 209, baseType: !5047, size: 256, offset: 512)
!5047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5036, file: !5037, line: 209, size: 256, elements: !5048)
!5048 = !{!5049, !5058, !5062}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5047, file: !5037, line: 210, baseType: !5050, size: 256)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !5037, line: 153, size: 256, elements: !5051)
!5051 = !{!5052, !5053, !5054, !5057}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !5050, file: !5037, line: 154, baseType: !217, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5050, file: !5037, line: 156, baseType: !1449, size: 64, offset: 64)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5050, file: !5037, line: 162, baseType: !5055, size: 64, offset: 128)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !5037, line: 162, flags: DIFlagFwdDecl)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5050, file: !5037, line: 167, baseType: !217, size: 64, offset: 192)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !5047, file: !5037, line: 211, baseType: !5059, size: 64)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !5037, line: 170, size: 64, elements: !5060)
!5060 = !{!5061}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !5059, file: !5037, line: 171, baseType: !5035, size: 64)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5047, file: !5037, line: 212, baseType: !5063, size: 256)
!5063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !5037, line: 174, size: 256, elements: !5064)
!5064 = !{!5065, !5113, !5116, !5117}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5063, file: !5037, line: 175, baseType: !5066, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5068)
!5068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !5037, line: 271, size: 768, elements: !5069)
!5069 = !{!5070, !5090, !5094, !5095, !5096, !5097, !5098, !5102, !5103, !5104, !5105, !5109}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5068, file: !5037, line: 276, baseType: !5071, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!113, !5074}
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !5037, line: 251, size: 1216, elements: !5076)
!5076 = !{!5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5075, file: !5037, line: 253, baseType: !5035, size: 64)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5075, file: !5037, line: 254, baseType: !1590, size: 64, offset: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !5075, file: !5037, line: 255, baseType: !1148, size: 64, offset: 128)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5075, file: !5037, line: 256, baseType: !218, size: 64, offset: 192)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5075, file: !5037, line: 259, baseType: !706, size: 256, offset: 256)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !5075, file: !5037, line: 260, baseType: !706, size: 256, offset: 512)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5075, file: !5037, line: 261, baseType: !113, size: 32, offset: 768)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5075, file: !5037, line: 262, baseType: !292, size: 128, offset: 832)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !5075, file: !5037, line: 263, baseType: !256, size: 64, offset: 960)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5075, file: !5037, line: 265, baseType: !414, size: 64, offset: 1024)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !5075, file: !5037, line: 266, baseType: !786, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !5075, file: !5037, line: 267, baseType: !786, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5075, file: !5037, line: 268, baseType: !3537, size: 64, offset: 1152)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5068, file: !5037, line: 277, baseType: !5091, size: 64, offset: 64)
!5091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5092, size: 64)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{null, !5074}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5068, file: !5037, line: 290, baseType: !1179, size: 64, offset: 128)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5068, file: !5037, line: 292, baseType: !1166, size: 64, offset: 192)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5068, file: !5037, line: 293, baseType: !1175, size: 64, offset: 256)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5068, file: !5037, line: 294, baseType: !1171, size: 64, offset: 320)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5068, file: !5037, line: 296, baseType: !5099, size: 64, offset: 384)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!399, !5074, !256, !414, !607}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5068, file: !5037, line: 306, baseType: !414, size: 64, offset: 448)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !5068, file: !5037, line: 313, baseType: !786, size: 8, offset: 512)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5068, file: !5037, line: 314, baseType: !5099, size: 64, offset: 576)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5068, file: !5037, line: 317, baseType: !5106, size: 64, offset: 640)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!2976, !5074, !2977}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5068, file: !5037, line: 320, baseType: !5110, size: 64, offset: 704)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!113, !5074, !3494}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5063, file: !5037, line: 176, baseType: !5114, size: 64, offset: 64)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !5037, line: 35, flags: DIFlagFwdDecl)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5063, file: !5037, line: 177, baseType: !607, size: 64, offset: 128)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !5063, file: !5037, line: 178, baseType: !5035, size: 64, offset: 192)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5036, file: !5037, line: 215, baseType: !218, size: 64, offset: 768)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5036, file: !5037, line: 221, baseType: !519, size: 64, offset: 832)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5036, file: !5037, line: 223, baseType: !225, size: 16, offset: 896)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5036, file: !5037, line: 224, baseType: !409, size: 16, offset: 912)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !5036, file: !5037, line: 225, baseType: !5123, size: 64, offset: 960)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !5037, line: 36, flags: DIFlagFwdDecl)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5036, file: !5037, line: 227, baseType: !926, size: 128, align: 64, offset: 1024)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !287, file: !288, line: 71, baseType: !266, size: 32, offset: 448)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !287, file: !288, line: 73, baseType: !45, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !287, file: !288, line: 74, baseType: !45, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !287, file: !288, line: 75, baseType: !45, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !287, file: !288, line: 76, baseType: !45, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !287, file: !288, line: 77, baseType: !45, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !283, file: !284, line: 16, baseType: !635, size: 64, offset: 512)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !283, file: !284, line: 17, baseType: !4052, size: 64, offset: 576)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !283, file: !284, line: 18, baseType: !292, size: 128, offset: 640)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !283, file: !284, line: 19, baseType: !602, size: 32, offset: 768)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !283, file: !284, line: 20, baseType: !45, size: 32, offset: 800)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !262, file: !263, line: 444, baseType: !635, size: 64, offset: 128)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !262, file: !263, line: 445, baseType: !250, size: 64, offset: 192)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !262, file: !263, line: 446, baseType: !250, size: 64, offset: 256)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !262, file: !263, line: 447, baseType: !113, size: 32, offset: 320)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !262, file: !263, line: 448, baseType: !113, size: 32, offset: 352)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !262, file: !263, line: 449, baseType: !113, size: 32, offset: 384)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !262, file: !263, line: 450, baseType: !45, size: 32, offset: 416)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !262, file: !263, line: 451, baseType: !844, size: 16, offset: 448)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !262, file: !263, line: 452, baseType: !844, size: 16, offset: 464)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !262, file: !263, line: 453, baseType: !2834, size: 352, offset: 480)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !262, file: !263, line: 454, baseType: !217, size: 64, offset: 832)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !262, file: !263, line: 455, baseType: !5149, size: 64, offset: 896)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !5151, line: 131, flags: DIFlagFwdDecl)
!5151 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !262, file: !263, line: 456, baseType: !261, size: 64, offset: 960)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !262, file: !263, line: 461, baseType: !5154, size: 64, offset: 1024)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !262, file: !263, line: 462, baseType: !5156, size: 64, offset: 1088)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !262, file: !263, line: 463, baseType: !5158, size: 64, offset: 1152)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !262, file: !263, line: 464, baseType: !218, size: 64, offset: 1216)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !262, file: !263, line: 470, baseType: !2777, size: 64, offset: 1280)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !262, file: !263, line: 471, baseType: !292, size: 128, offset: 1344)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "unblank", scope: !239, file: !204, line: 196, baseType: !1070, size: 64, offset: 320)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !239, file: !204, line: 197, baseType: !5165, size: 64, offset: 384)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!113, !249, !256}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !239, file: !204, line: 198, baseType: !5169, size: 64, offset: 448)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!113, !249}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !239, file: !204, line: 199, baseType: !5173, size: 64, offset: 512)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!113, !249, !256, !113, !256}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !239, file: !204, line: 200, baseType: !844, size: 16, offset: 576)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !239, file: !204, line: 201, baseType: !844, size: 16, offset: 592)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "cflag", scope: !239, file: !204, line: 202, baseType: !113, size: 32, offset: 608)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "ispeed", scope: !239, file: !204, line: 203, baseType: !5180, size: 32, offset: 640)
!5180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !276, line: 93, baseType: !45)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "ospeed", scope: !239, file: !204, line: 204, baseType: !5180, size: 32, offset: 672)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !239, file: !204, line: 205, baseType: !519, size: 64, offset: 704)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !239, file: !204, line: 206, baseType: !217, size: 64, offset: 768)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !239, file: !204, line: 207, baseType: !218, size: 64, offset: 832)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !239, file: !204, line: 208, baseType: !952, size: 128, offset: 896)
!5186 = !DIGlobalVariableExpression(var: !5187, expr: !DIExpression())
!5187 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dbgp_reset_prep308", scope: !41, file: !2, line: 994, type: !218, isLocal: true, isDefinition: true)
!5188 = !DIGlobalVariableExpression(var: !5189, expr: !DIExpression())
!5189 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dbgp_external_startup309", scope: !41, file: !2, line: 1000, type: !218, isLocal: true, isDefinition: true)
!5190 = !DIGlobalVariableExpression(var: !5191, expr: !DIExpression())
!5191 = distinct !DIGlobalVariable(name: "ehci_regs", scope: !41, file: !2, line: 59, type: !5192, isLocal: true, isDefinition: true)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ehci_regs", file: !5194, line: 54, size: 1632, elements: !5195)
!5194 = !DIFile(filename: "./include/linux/usb/ehci_def.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90f7cf4b4d88c92db1d6089d7f893120")
!5195 = !{!5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5205, !5206, !5208, !5209, !5222, !5232, !5233}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !5193, file: !5194, line: 57, baseType: !515, size: 32)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5193, file: !5194, line: 77, baseType: !515, size: 32, offset: 32)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "intr_enable", scope: !5193, file: !5194, line: 93, baseType: !515, size: 32, offset: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "frame_index", scope: !5193, file: !5194, line: 96, baseType: !515, size: 32, offset: 96)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !5193, file: !5194, line: 98, baseType: !515, size: 32, offset: 128)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "frame_list", scope: !5193, file: !5194, line: 100, baseType: !515, size: 32, offset: 160)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "async_next", scope: !5193, file: !5194, line: 102, baseType: !515, size: 32, offset: 192)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5193, file: !5194, line: 104, baseType: !5204, size: 64, offset: 224)
!5204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 64, elements: !825)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "txfill_tuning", scope: !5193, file: !5194, line: 107, baseType: !515, size: 32, offset: 288)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !5193, file: !5194, line: 110, baseType: !5207, size: 192, offset: 320)
!5207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 192, elements: !1948)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "configured_flag", scope: !5193, file: !5194, line: 113, baseType: !515, size: 32, offset: 512)
!5209 = !DIDerivedType(tag: DW_TAG_member, scope: !5193, file: !5194, line: 116, baseType: !5210, size: 480, offset: 544)
!5210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5193, file: !5194, line: 116, size: 480, elements: !5211)
!5211 = !{!5212, !5216}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "port_status", scope: !5210, file: !5194, line: 118, baseType: !5213, size: 480)
!5213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 480, elements: !5214)
!5214 = !{!5215}
!5215 = !DISubrange(count: 15)
!5216 = !DIDerivedType(tag: DW_TAG_member, scope: !5210, file: !5194, line: 155, baseType: !5217, size: 320)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5210, file: !5194, line: 155, size: 320, elements: !5218)
!5218 = !{!5219, !5221}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !5217, file: !5194, line: 156, baseType: !5220, size: 288)
!5220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 288, elements: !2911)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "usbmode", scope: !5217, file: !5194, line: 158, baseType: !515, size: 32, offset: 288)
!5222 = !DIDerivedType(tag: DW_TAG_member, scope: !5193, file: !5194, line: 170, baseType: !5223, size: 512, offset: 1024)
!5223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5193, file: !5194, line: 170, size: 512, elements: !5224)
!5224 = !{!5225, !5230}
!5225 = !DIDerivedType(tag: DW_TAG_member, scope: !5223, file: !5194, line: 171, baseType: !5226, size: 512)
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5223, file: !5194, line: 171, size: 512, elements: !5227)
!5227 = !{!5228, !5229}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !5226, file: !5194, line: 172, baseType: !515, size: 32)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "hostpc", scope: !5226, file: !5194, line: 174, baseType: !5213, size: 480, offset: 32)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "brcm_insnreg", scope: !5223, file: !5194, line: 180, baseType: !5231, size: 128)
!5231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 128, elements: !936)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "reserved5", scope: !5193, file: !5194, line: 183, baseType: !5204, size: 64, offset: 1536)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "usbmode_ex", scope: !5193, file: !5194, line: 186, baseType: !515, size: 32, offset: 1600)
!5234 = !DIGlobalVariableExpression(var: !5235, expr: !DIExpression())
!5235 = distinct !DIGlobalVariable(name: "ehci_debug", scope: !41, file: !2, line: 60, type: !5236, isLocal: true, isDefinition: true)
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5237, size: 64)
!5237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ehci_dbg_port", file: !5238, line: 24, size: 160, elements: !5239)
!5238 = !DIFile(filename: "./include/linux/usb/ehci-dbgp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f4a5d17563349dd8c76bba0a9c34830")
!5239 = !{!5240, !5241, !5242, !5243, !5244}
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !5237, file: !5238, line: 25, baseType: !515, size: 32)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !5237, file: !5238, line: 37, baseType: !515, size: 32, offset: 32)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "data03", scope: !5237, file: !5238, line: 40, baseType: !515, size: 32, offset: 64)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "data47", scope: !5237, file: !5238, line: 41, baseType: !515, size: 32, offset: 96)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5237, file: !5238, line: 42, baseType: !515, size: 32, offset: 128)
!5245 = !DIGlobalVariableExpression(var: !5246, expr: !DIExpression())
!5246 = distinct !DIGlobalVariable(name: "dbgp_not_safe", scope: !41, file: !2, line: 61, type: !113, isLocal: true, isDefinition: true)
!5247 = !DIGlobalVariableExpression(var: !5248, expr: !DIExpression())
!5248 = distinct !DIGlobalVariable(name: "ehci_dev", scope: !41, file: !2, line: 71, type: !5249, isLocal: true, isDefinition: true)
!5249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ehci_dev", file: !2, line: 65, size: 96, elements: !5250)
!5250 = !{!5251, !5252, !5253}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5249, file: !2, line: 66, baseType: !515, size: 32)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !5249, file: !2, line: 67, baseType: !515, size: 32, offset: 32)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5249, file: !2, line: 68, baseType: !515, size: 32, offset: 64)
!5254 = !DIGlobalVariableExpression(var: !5255, expr: !DIExpression())
!5255 = distinct !DIGlobalVariable(scope: null, file: !2, line: 699, type: !5256, isLocal: true, isDefinition: true)
!5256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5257)
!5257 = !{!5258}
!5258 = !DISubrange(count: 29)
!5259 = !DIGlobalVariableExpression(var: !5260, expr: !DIExpression())
!5260 = distinct !DIGlobalVariable(scope: null, file: !2, line: 688, type: !5261, isLocal: true, isDefinition: true)
!5261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5262)
!5262 = !{!5263}
!5263 = !DISubrange(count: 22)
!5264 = !DIGlobalVariableExpression(var: !5265, expr: !DIExpression())
!5265 = distinct !DIGlobalVariable(name: "set_debug_port", scope: !41, file: !2, line: 677, type: !5266, isLocal: true, isDefinition: true)
!5266 = !DIDerivedType(tag: DW_TAG_typedef, name: "set_debug_port_t", file: !2, line: 671, baseType: !5267)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!5268 = !DIGlobalVariableExpression(var: !5269, expr: !DIExpression())
!5269 = distinct !DIGlobalVariable(scope: null, file: !2, line: 771, type: !242, isLocal: true, isDefinition: true)
!5270 = !DIGlobalVariableExpression(var: !5271, expr: !DIExpression())
!5271 = distinct !DIGlobalVariable(scope: null, file: !2, line: 772, type: !242, isLocal: true, isDefinition: true)
!5272 = !DIGlobalVariableExpression(var: !5273, expr: !DIExpression())
!5273 = distinct !DIGlobalVariable(scope: null, file: !2, line: 773, type: !2931, isLocal: true, isDefinition: true)
!5274 = !DIGlobalVariableExpression(var: !5275, expr: !DIExpression())
!5275 = distinct !DIGlobalVariable(scope: null, file: !2, line: 777, type: !234, isLocal: true, isDefinition: true)
!5276 = !DIGlobalVariableExpression(var: !5277, expr: !DIExpression())
!5277 = distinct !DIGlobalVariable(scope: null, file: !2, line: 794, type: !5278, isLocal: true, isDefinition: true)
!5278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !5279)
!5279 = !{!5280}
!5280 = !DISubrange(count: 31)
!5281 = !DIGlobalVariableExpression(var: !5282, expr: !DIExpression())
!5282 = distinct !DIGlobalVariable(scope: null, file: !2, line: 721, type: !24, isLocal: true, isDefinition: true)
!5283 = !DIGlobalVariableExpression(var: !5284, expr: !DIExpression())
!5284 = distinct !DIGlobalVariable(scope: null, file: !2, line: 724, type: !234, isLocal: true, isDefinition: true)
!5285 = !DIGlobalVariableExpression(var: !5286, expr: !DIExpression())
!5286 = distinct !DIGlobalVariable(scope: null, file: !2, line: 741, type: !5287, isLocal: true, isDefinition: true)
!5287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !5288)
!5288 = !{!5289}
!5289 = !DISubrange(count: 33)
!5290 = !DIGlobalVariableExpression(var: !5291, expr: !DIExpression())
!5291 = distinct !DIGlobalVariable(name: "dbgp_phys_port", scope: !41, file: !2, line: 56, type: !113, isLocal: true, isDefinition: true)
!5292 = !DIGlobalVariableExpression(var: !5293, expr: !DIExpression())
!5293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !234, isLocal: true, isDefinition: true)
!5294 = !DIGlobalVariableExpression(var: !5295, expr: !DIExpression())
!5295 = distinct !DIGlobalVariable(scope: null, file: !2, line: 482, type: !242, isLocal: true, isDefinition: true)
!5296 = !DIGlobalVariableExpression(var: !5297, expr: !DIExpression())
!5297 = distinct !DIGlobalVariable(name: "data0", scope: !5298, file: !2, line: 152, type: !113, isLocal: true, isDefinition: true)
!5298 = distinct !DISubprogram(name: "dbgp_pid_write_update", scope: !2, file: !2, line: 150, type: !5299, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !5301)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!515, !515, !515}
!5301 = !{!5302, !5303}
!5302 = !DILocalVariable(name: "x", arg: 1, scope: !5298, file: !2, line: 150, type: !515)
!5303 = !DILocalVariable(name: "tok", arg: 2, scope: !5298, file: !2, line: 150, type: !515)
!5304 = !DIGlobalVariableExpression(var: !5305, expr: !DIExpression())
!5305 = distinct !DIGlobalVariable(name: "dbgp_endpoint_out", scope: !41, file: !2, line: 62, type: !45, isLocal: true, isDefinition: true)
!5306 = !DIGlobalVariableExpression(var: !5307, expr: !DIExpression())
!5307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !5308, isLocal: true, isDefinition: true)
!5308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !5309)
!5309 = !{!5310}
!5310 = !DISubrange(count: 34)
!5311 = !DIGlobalVariableExpression(var: !5312, expr: !DIExpression())
!5312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 528, type: !5278, isLocal: true, isDefinition: true)
!5313 = !DIGlobalVariableExpression(var: !5314, expr: !DIExpression())
!5314 = distinct !DIGlobalVariable(scope: null, file: !2, line: 531, type: !229, isLocal: true, isDefinition: true)
!5315 = !DIGlobalVariableExpression(var: !5316, expr: !DIExpression())
!5316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 539, type: !5317, isLocal: true, isDefinition: true)
!5317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !5318)
!5318 = !{!5319}
!5319 = !DISubrange(count: 25)
!5320 = !DIGlobalVariableExpression(var: !5321, expr: !DIExpression())
!5321 = distinct !DIGlobalVariable(scope: null, file: !2, line: 543, type: !5322, isLocal: true, isDefinition: true)
!5322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5323)
!5323 = !{!5324}
!5324 = !DISubrange(count: 21)
!5325 = !DIGlobalVariableExpression(var: !5326, expr: !DIExpression())
!5326 = distinct !DIGlobalVariable(scope: null, file: !2, line: 563, type: !5327, isLocal: true, isDefinition: true)
!5327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !5328)
!5328 = !{!5329}
!5329 = !DISubrange(count: 38)
!5330 = !DIGlobalVariableExpression(var: !5331, expr: !DIExpression())
!5331 = distinct !DIGlobalVariable(scope: null, file: !2, line: 575, type: !5327, isLocal: true, isDefinition: true)
!5332 = !DIGlobalVariableExpression(var: !5333, expr: !DIExpression())
!5333 = distinct !DIGlobalVariable(scope: null, file: !2, line: 579, type: !5256, isLocal: true, isDefinition: true)
!5334 = !DIGlobalVariableExpression(var: !5335, expr: !DIExpression())
!5335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 587, type: !19, isLocal: true, isDefinition: true)
!5336 = !DIGlobalVariableExpression(var: !5337, expr: !DIExpression())
!5337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 590, type: !5317, isLocal: true, isDefinition: true)
!5338 = !DIGlobalVariableExpression(var: !5339, expr: !DIExpression())
!5339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 593, type: !5340, isLocal: true, isDefinition: true)
!5340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !825)
!5341 = !DIGlobalVariableExpression(var: !5342, expr: !DIExpression())
!5342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 595, type: !24, isLocal: true, isDefinition: true)
!5343 = !DIGlobalVariableExpression(var: !5344, expr: !DIExpression())
!5344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 598, type: !5345, isLocal: true, isDefinition: true)
!5345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5346)
!5346 = !{!5347}
!5347 = !DISubrange(count: 18)
!5348 = !DIGlobalVariableExpression(var: !5349, expr: !DIExpression())
!5349 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !5350, isLocal: true, isDefinition: true)
!5350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5351)
!5351 = !{!5352}
!5352 = !DISubrange(count: 13)
!5353 = !DIGlobalVariableExpression(var: !5354, expr: !DIExpression())
!5354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 458, type: !5317, isLocal: true, isDefinition: true)
!5355 = !DIGlobalVariableExpression(var: !5356, expr: !DIExpression())
!5356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 461, type: !3, isLocal: true, isDefinition: true)
!5357 = !DIGlobalVariableExpression(var: !5358, expr: !DIExpression())
!5358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 614, type: !5359, isLocal: true, isDefinition: true)
!5359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5360)
!5360 = !{!5361}
!5361 = !DISubrange(count: 11)
!5362 = !DIGlobalVariableExpression(var: !5363, expr: !DIExpression())
!5363 = distinct !DIGlobalVariable(name: "dbgp_endpoint_in", scope: !41, file: !2, line: 63, type: !45, isLocal: true, isDefinition: true)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ehci_caps", file: !5194, line: 14, size: 160, elements: !5366)
!5366 = !{!5367, !5368, !5369, !5370}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "hc_capbase", scope: !5365, file: !5194, line: 21, baseType: !515, size: 32)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "hcs_params", scope: !5365, file: !5194, line: 26, baseType: !515, size: 32, offset: 32)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "hcc_params", scope: !5365, file: !5194, line: 36, baseType: !515, size: 32, offset: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "portroute", scope: !5365, file: !5194, line: 49, baseType: !5371, size: 64, offset: 96)
!5371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 64, elements: !1430)
!5372 = !{i32 7, !"Dwarf Version", i32 5}
!5373 = !{i32 2, !"Debug Info Version", i32 3}
!5374 = !{i32 1, !"wchar_size", i32 2}
!5375 = !{i32 8, !"cf-protection-branch", i32 1}
!5376 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5377 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5378 = !{i32 1, !"Code Model", i32 2}
!5379 = !{i32 1, !"override-stack-alignment", i32 8}
!5380 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5381 = distinct !DISubprogram(name: "early_dbgp_init", scope: !2, file: !2, line: 825, type: !5382, scopeLine: 826, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !5384)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!113, !256}
!5384 = !{!5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5395, !5396, !5397, !5398}
!5385 = !DILocalVariable(name: "s", arg: 1, scope: !5381, file: !2, line: 825, type: !256)
!5386 = !DILocalVariable(name: "debug_port", scope: !5381, file: !2, line: 827, type: !515)
!5387 = !DILocalVariable(name: "bar", scope: !5381, file: !2, line: 827, type: !515)
!5388 = !DILocalVariable(name: "offset", scope: !5381, file: !2, line: 827, type: !515)
!5389 = !DILocalVariable(name: "bus", scope: !5381, file: !2, line: 828, type: !515)
!5390 = !DILocalVariable(name: "slot", scope: !5381, file: !2, line: 828, type: !515)
!5391 = !DILocalVariable(name: "func", scope: !5381, file: !2, line: 828, type: !515)
!5392 = !DILocalVariable(name: "cap", scope: !5381, file: !2, line: 828, type: !515)
!5393 = !DILocalVariable(name: "ehci_bar", scope: !5381, file: !2, line: 829, type: !218)
!5394 = !DILocalVariable(name: "dbgp_num", scope: !5381, file: !2, line: 830, type: !515)
!5395 = !DILocalVariable(name: "bar_val", scope: !5381, file: !2, line: 831, type: !515)
!5396 = !DILocalVariable(name: "e", scope: !5381, file: !2, line: 832, type: !256)
!5397 = !DILocalVariable(name: "ret", scope: !5381, file: !2, line: 833, type: !113)
!5398 = !DILocalVariable(name: "byte", scope: !5381, file: !2, line: 834, type: !329)
!5399 = !DILocation(line: 825, column: 34, scope: !5381)
!5400 = !DILocation(line: 827, column: 2, scope: !5381)
!5401 = !DILocation(line: 827, column: 6, scope: !5381)
!5402 = !DILocation(line: 827, column: 18, scope: !5381)
!5403 = !DILocation(line: 827, column: 23, scope: !5381)
!5404 = !DILocation(line: 828, column: 2, scope: !5381)
!5405 = !DILocation(line: 828, column: 6, scope: !5381)
!5406 = !DILocation(line: 828, column: 11, scope: !5381)
!5407 = !DILocation(line: 828, column: 17, scope: !5381)
!5408 = !DILocation(line: 828, column: 23, scope: !5381)
!5409 = !DILocation(line: 829, column: 2, scope: !5381)
!5410 = !DILocation(line: 829, column: 16, scope: !5381)
!5411 = !DILocation(line: 830, column: 2, scope: !5381)
!5412 = !DILocation(line: 830, column: 6, scope: !5381)
!5413 = !DILocation(line: 831, column: 2, scope: !5381)
!5414 = !DILocation(line: 831, column: 6, scope: !5381)
!5415 = !DILocation(line: 832, column: 2, scope: !5381)
!5416 = !DILocation(line: 832, column: 8, scope: !5381)
!5417 = !DILocation(line: 833, column: 2, scope: !5381)
!5418 = !DILocation(line: 833, column: 6, scope: !5381)
!5419 = !DILocation(line: 834, column: 2, scope: !5381)
!5420 = !DILocation(line: 834, column: 5, scope: !5381)
!5421 = !DILocation(line: 836, column: 7, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5381, file: !2, line: 836, column: 6)
!5423 = !DILocation(line: 836, column: 6, scope: !5381)
!5424 = !DILocation(line: 837, column: 3, scope: !5422)
!5425 = !DILocation(line: 839, column: 11, scope: !5381)
!5426 = !DILocation(line: 840, column: 7, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5381, file: !2, line: 840, column: 6)
!5428 = !DILocation(line: 840, column: 6, scope: !5427)
!5429 = !DILocation(line: 840, column: 6, scope: !5381)
!5430 = !DILocation(line: 841, column: 29, scope: !5427)
!5431 = !DILocation(line: 841, column: 14, scope: !5427)
!5432 = !DILocation(line: 841, column: 12, scope: !5427)
!5433 = !DILocation(line: 841, column: 3, scope: !5427)
!5434 = !DILocation(line: 842, column: 32, scope: !5381)
!5435 = !DILocation(line: 842, column: 2, scope: !5381)
!5436 = !DILocation(line: 844, column: 18, scope: !5381)
!5437 = !DILocation(line: 844, column: 8, scope: !5381)
!5438 = !DILocation(line: 844, column: 6, scope: !5381)
!5439 = !DILocation(line: 845, column: 7, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5381, file: !2, line: 845, column: 6)
!5441 = !DILocation(line: 845, column: 6, scope: !5381)
!5442 = !DILocation(line: 846, column: 3, scope: !5440)
!5443 = !DILocation(line: 848, column: 58, scope: !5381)
!5444 = !DILocation(line: 848, column: 63, scope: !5381)
!5445 = !DILocation(line: 849, column: 5, scope: !5381)
!5446 = !DILocation(line: 848, column: 2, scope: !5381)
!5447 = !DILocation(line: 851, column: 31, scope: !5381)
!5448 = !DILocation(line: 851, column: 36, scope: !5381)
!5449 = !DILocation(line: 851, column: 42, scope: !5381)
!5450 = !DILocation(line: 851, column: 48, scope: !5381)
!5451 = !DILocation(line: 851, column: 15, scope: !5381)
!5452 = !DILocation(line: 851, column: 13, scope: !5381)
!5453 = !DILocation(line: 852, column: 9, scope: !5381)
!5454 = !DILocation(line: 852, column: 20, scope: !5381)
!5455 = !DILocation(line: 852, column: 27, scope: !5381)
!5456 = !DILocation(line: 852, column: 6, scope: !5381)
!5457 = !DILocation(line: 853, column: 9, scope: !5381)
!5458 = !DILocation(line: 853, column: 13, scope: !5381)
!5459 = !DILocation(line: 853, column: 18, scope: !5381)
!5460 = !DILocation(line: 853, column: 6, scope: !5381)
!5461 = !DILocation(line: 854, column: 12, scope: !5381)
!5462 = !DILocation(line: 854, column: 23, scope: !5381)
!5463 = !DILocation(line: 854, column: 30, scope: !5381)
!5464 = !DILocation(line: 854, column: 9, scope: !5381)
!5465 = !DILocation(line: 855, column: 42, scope: !5381)
!5466 = !DILocation(line: 855, column: 47, scope: !5381)
!5467 = !DILocation(line: 855, column: 2, scope: !5381)
!5468 = !DILocation(line: 856, column: 6, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5381, file: !2, line: 856, column: 6)
!5470 = !DILocation(line: 856, column: 10, scope: !5469)
!5471 = !DILocation(line: 856, column: 6, scope: !5381)
!5472 = !DILocation(line: 857, column: 3, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5469, file: !2, line: 856, column: 33)
!5474 = !DILocation(line: 859, column: 3, scope: !5473)
!5475 = !DILocation(line: 862, column: 28, scope: !5381)
!5476 = !DILocation(line: 862, column: 33, scope: !5381)
!5477 = !DILocation(line: 862, column: 39, scope: !5381)
!5478 = !DILocation(line: 862, column: 12, scope: !5381)
!5479 = !DILocation(line: 862, column: 10, scope: !5381)
!5480 = !DILocation(line: 863, column: 46, scope: !5381)
!5481 = !DILocation(line: 863, column: 55, scope: !5381)
!5482 = !DILocation(line: 863, column: 2, scope: !5381)
!5483 = !DILocation(line: 864, column: 6, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5381, file: !2, line: 864, column: 6)
!5485 = !DILocation(line: 864, column: 14, scope: !5484)
!5486 = !DILocation(line: 864, column: 6, scope: !5381)
!5487 = !DILocation(line: 865, column: 3, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5484, file: !2, line: 864, column: 44)
!5489 = !DILocation(line: 867, column: 3, scope: !5488)
!5490 = !DILocation(line: 871, column: 30, scope: !5381)
!5491 = !DILocation(line: 871, column: 35, scope: !5381)
!5492 = !DILocation(line: 871, column: 41, scope: !5381)
!5493 = !DILocation(line: 871, column: 9, scope: !5381)
!5494 = !DILocation(line: 871, column: 7, scope: !5381)
!5495 = !DILocation(line: 872, column: 8, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5381, file: !2, line: 872, column: 6)
!5497 = !DILocation(line: 872, column: 13, scope: !5496)
!5498 = !DILocation(line: 872, column: 6, scope: !5381)
!5499 = !DILocation(line: 873, column: 9, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5496, file: !2, line: 872, column: 21)
!5501 = !DILocation(line: 874, column: 25, scope: !5500)
!5502 = !DILocation(line: 874, column: 30, scope: !5500)
!5503 = !DILocation(line: 874, column: 36, scope: !5500)
!5504 = !DILocation(line: 874, column: 48, scope: !5500)
!5505 = !DILocation(line: 874, column: 3, scope: !5500)
!5506 = !DILocation(line: 875, column: 3, scope: !5500)
!5507 = !DILocation(line: 876, column: 2, scope: !5500)
!5508 = !DILocation(line: 882, column: 2, scope: !5381)
!5509 = !DILocation(line: 883, column: 11, scope: !5381)
!5510 = !DILocation(line: 884, column: 14, scope: !5381)
!5511 = !DILocation(line: 884, column: 22, scope: !5381)
!5512 = !DILocation(line: 884, column: 11, scope: !5381)
!5513 = !DILocation(line: 885, column: 32, scope: !5381)
!5514 = !DILocation(line: 885, column: 2, scope: !5381)
!5515 = !DILocation(line: 887, column: 15, scope: !5381)
!5516 = !DILocation(line: 887, column: 13, scope: !5381)
!5517 = !DILocation(line: 888, column: 15, scope: !5381)
!5518 = !DILocation(line: 888, column: 26, scope: !5381)
!5519 = !DILocation(line: 888, column: 24, scope: !5381)
!5520 = !DILocation(line: 888, column: 13, scope: !5381)
!5521 = !DILocation(line: 889, column: 15, scope: !5381)
!5522 = !DILocation(line: 889, column: 26, scope: !5381)
!5523 = !DILocation(line: 889, column: 24, scope: !5381)
!5524 = !DILocation(line: 889, column: 13, scope: !5381)
!5525 = !DILocation(line: 890, column: 17, scope: !5381)
!5526 = !DILocation(line: 890, column: 15, scope: !5381)
!5527 = !DILocation(line: 891, column: 18, scope: !5381)
!5528 = !DILocation(line: 891, column: 16, scope: !5381)
!5529 = !DILocation(line: 892, column: 18, scope: !5381)
!5530 = !DILocation(line: 892, column: 16, scope: !5381)
!5531 = !DILocation(line: 894, column: 2, scope: !5381)
!5532 = !DILocation(line: 896, column: 8, scope: !5381)
!5533 = !DILocation(line: 896, column: 6, scope: !5381)
!5534 = !DILocation(line: 897, column: 6, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5381, file: !2, line: 897, column: 6)
!5536 = !DILocation(line: 897, column: 10, scope: !5535)
!5537 = !DILocation(line: 897, column: 6, scope: !5381)
!5538 = !DILocation(line: 898, column: 3, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5535, file: !2, line: 897, column: 15)
!5540 = !DILocation(line: 899, column: 14, scope: !5539)
!5541 = !DILocation(line: 901, column: 3, scope: !5539)
!5542 = !DILocation(line: 903, column: 2, scope: !5381)
!5543 = !DILocation(line: 905, column: 2, scope: !5381)
!5544 = !DILocation(line: 906, column: 1, scope: !5381)
!5545 = !DISubprogram(name: "early_pci_allowed", scope: !5546, file: !5546, line: 17, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5546 = !DIFile(filename: "./arch/x86/include/asm/pci-direct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09799ff96bfe39e3d200f5cb3dffbc74")
!5547 = !DISubprogram(name: "simple_strtoul", scope: !5548, file: !5548, line: 145, type: !5549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5548 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!217, !250, !5551, !45}
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!5552 = distinct !DISubprogram(name: "dbgp_printk", scope: !2, file: !2, line: 92, type: !5553, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !5555)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{null, !250, null}
!5555 = !{!5556}
!5556 = !DILocalVariable(name: "fmt", arg: 1, scope: !5552, file: !2, line: 92, type: !250)
!5557 = !DILocation(line: 92, column: 44, scope: !5552)
!5558 = !DILocation(line: 92, column: 56, scope: !5552)
!5559 = distinct !DISubprogram(name: "find_dbgp", scope: !2, file: !2, line: 401, type: !5560, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !5562)
!5560 = !DISubroutineType(types: !5561)
!5561 = !{!515, !113, !1774, !1774, !1774}
!5562 = !{!5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570}
!5563 = !DILocalVariable(name: "ehci_num", arg: 1, scope: !5559, file: !2, line: 401, type: !113)
!5564 = !DILocalVariable(name: "rbus", arg: 2, scope: !5559, file: !2, line: 401, type: !1774)
!5565 = !DILocalVariable(name: "rslot", arg: 3, scope: !5559, file: !2, line: 401, type: !1774)
!5566 = !DILocalVariable(name: "rfunc", arg: 4, scope: !5559, file: !2, line: 401, type: !1774)
!5567 = !DILocalVariable(name: "bus", scope: !5559, file: !2, line: 403, type: !515)
!5568 = !DILocalVariable(name: "slot", scope: !5559, file: !2, line: 403, type: !515)
!5569 = !DILocalVariable(name: "func", scope: !5559, file: !2, line: 403, type: !515)
!5570 = !DILocalVariable(name: "cap", scope: !5571, file: !2, line: 408, type: !45)
!5571 = distinct !DILexicalBlock(scope: !5572, file: !2, line: 407, column: 37)
!5572 = distinct !DILexicalBlock(scope: !5573, file: !2, line: 407, column: 4)
!5573 = distinct !DILexicalBlock(scope: !5574, file: !2, line: 407, column: 4)
!5574 = distinct !DILexicalBlock(scope: !5575, file: !2, line: 406, column: 37)
!5575 = distinct !DILexicalBlock(scope: !5576, file: !2, line: 406, column: 3)
!5576 = distinct !DILexicalBlock(scope: !5577, file: !2, line: 406, column: 3)
!5577 = distinct !DILexicalBlock(scope: !5578, file: !2, line: 405, column: 34)
!5578 = distinct !DILexicalBlock(scope: !5579, file: !2, line: 405, column: 2)
!5579 = distinct !DILexicalBlock(scope: !5559, file: !2, line: 405, column: 2)
!5580 = !DILocation(line: 401, column: 33, scope: !5559)
!5581 = !DILocation(line: 401, column: 48, scope: !5559)
!5582 = !DILocation(line: 401, column: 59, scope: !5559)
!5583 = !DILocation(line: 401, column: 71, scope: !5559)
!5584 = !DILocation(line: 403, column: 2, scope: !5559)
!5585 = !DILocation(line: 403, column: 6, scope: !5559)
!5586 = !DILocation(line: 403, column: 11, scope: !5559)
!5587 = !DILocation(line: 403, column: 17, scope: !5559)
!5588 = !DILocation(line: 405, column: 11, scope: !5579)
!5589 = !DILocation(line: 405, column: 7, scope: !5579)
!5590 = !DILocation(line: 405, column: 16, scope: !5578)
!5591 = !DILocation(line: 405, column: 20, scope: !5578)
!5592 = !DILocation(line: 405, column: 2, scope: !5579)
!5593 = !DILocation(line: 406, column: 13, scope: !5576)
!5594 = !DILocation(line: 406, column: 8, scope: !5576)
!5595 = !DILocation(line: 406, column: 18, scope: !5575)
!5596 = !DILocation(line: 406, column: 23, scope: !5575)
!5597 = !DILocation(line: 406, column: 3, scope: !5576)
!5598 = !DILocation(line: 407, column: 14, scope: !5573)
!5599 = !DILocation(line: 407, column: 9, scope: !5573)
!5600 = !DILocation(line: 407, column: 19, scope: !5572)
!5601 = !DILocation(line: 407, column: 24, scope: !5572)
!5602 = !DILocation(line: 407, column: 4, scope: !5573)
!5603 = !DILocation(line: 408, column: 5, scope: !5571)
!5604 = !DILocation(line: 408, column: 14, scope: !5571)
!5605 = !DILocation(line: 410, column: 23, scope: !5571)
!5606 = !DILocation(line: 410, column: 28, scope: !5571)
!5607 = !DILocation(line: 410, column: 34, scope: !5571)
!5608 = !DILocation(line: 410, column: 11, scope: !5571)
!5609 = !DILocation(line: 410, column: 9, scope: !5571)
!5610 = !DILocation(line: 412, column: 10, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5571, file: !2, line: 412, column: 9)
!5612 = !DILocation(line: 412, column: 9, scope: !5571)
!5613 = !DILocation(line: 413, column: 6, scope: !5611)
!5614 = !DILocation(line: 414, column: 17, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5571, file: !2, line: 414, column: 9)
!5616 = !DILocation(line: 414, column: 20, scope: !5615)
!5617 = !DILocation(line: 414, column: 9, scope: !5571)
!5618 = !DILocation(line: 415, column: 6, scope: !5615)
!5619 = !DILocation(line: 416, column: 13, scope: !5571)
!5620 = !DILocation(line: 416, column: 6, scope: !5571)
!5621 = !DILocation(line: 416, column: 11, scope: !5571)
!5622 = !DILocation(line: 417, column: 14, scope: !5571)
!5623 = !DILocation(line: 417, column: 6, scope: !5571)
!5624 = !DILocation(line: 417, column: 12, scope: !5571)
!5625 = !DILocation(line: 418, column: 14, scope: !5571)
!5626 = !DILocation(line: 418, column: 6, scope: !5571)
!5627 = !DILocation(line: 418, column: 12, scope: !5571)
!5628 = !DILocation(line: 419, column: 12, scope: !5571)
!5629 = !DILocation(line: 419, column: 5, scope: !5571)
!5630 = !DILocation(line: 420, column: 4, scope: !5572)
!5631 = !DILocation(line: 407, column: 33, scope: !5572)
!5632 = !DILocation(line: 407, column: 4, scope: !5572)
!5633 = distinct !{!5633, !5602, !5634, !5635, !5636}
!5634 = !DILocation(line: 420, column: 4, scope: !5573)
!5635 = !{!"llvm.loop.mustprogress"}
!5636 = !{!"llvm.loop.unroll.disable"}
!5637 = !DILocation(line: 421, column: 3, scope: !5574)
!5638 = !DILocation(line: 406, column: 33, scope: !5575)
!5639 = !DILocation(line: 406, column: 3, scope: !5575)
!5640 = distinct !{!5640, !5597, !5641, !5635, !5636}
!5641 = !DILocation(line: 421, column: 3, scope: !5576)
!5642 = !DILocation(line: 422, column: 2, scope: !5577)
!5643 = !DILocation(line: 405, column: 30, scope: !5578)
!5644 = !DILocation(line: 405, column: 2, scope: !5578)
!5645 = distinct !{!5645, !5592, !5646, !5635, !5636}
!5646 = !DILocation(line: 422, column: 2, scope: !5579)
!5647 = !DILocation(line: 423, column: 2, scope: !5559)
!5648 = !DILocation(line: 424, column: 1, scope: !5559)
!5649 = !DISubprogram(name: "read_pci_config", scope: !5546, file: !5546, line: 10, type: !5650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5650 = !DISubroutineType(types: !5651)
!5651 = !{!515, !329, !329, !329, !329}
!5652 = !DISubprogram(name: "read_pci_config_byte", scope: !5546, file: !5546, line: 11, type: !5653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5653 = !DISubroutineType(types: !5654)
!5654 = !{!329, !329, !329, !329, !329}
!5655 = !DISubprogram(name: "write_pci_config_byte", scope: !5546, file: !5546, line: 14, type: !5656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5656 = !DISubroutineType(types: !5657)
!5657 = !{null, !329, !329, !329, !329, !329}
!5658 = distinct !DISubprogram(name: "__set_fixmap", scope: !44, file: !44, line: 164, type: !5659, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !5661)
!5659 = !DISubroutineType(types: !5660)
!5660 = !{null, !43, !3773, !3508}
!5661 = !{!5662, !5663, !5664}
!5662 = !DILocalVariable(name: "idx", arg: 1, scope: !5658, file: !44, line: 164, type: !43)
!5663 = !DILocalVariable(name: "phys", arg: 2, scope: !5658, file: !44, line: 165, type: !3773)
!5664 = !DILocalVariable(name: "flags", arg: 3, scope: !5658, file: !44, line: 165, type: !3508)
!5665 = !DILocation(line: 164, column: 54, scope: !5658)
!5666 = !DILocation(line: 165, column: 17, scope: !5658)
!5667 = !DILocation(line: 165, column: 32, scope: !5658)
!5668 = !DILocation(line: 167, column: 20, scope: !5658)
!5669 = !DILocation(line: 167, column: 25, scope: !5658)
!5670 = !DILocation(line: 167, column: 2, scope: !5658)
!5671 = !DILocation(line: 168, column: 1, scope: !5658)
!5672 = !DISubprogram(name: "cachemode2protval", scope: !59, file: !59, line: 497, type: !5673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!217, !58}
!5675 = distinct !DISubprogram(name: "readl", scope: !5676, file: !5676, line: 58, type: !5677, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !5682)
!5676 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!45, !5679}
!5679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5680, size: 64)
!5680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5681)
!5681 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5682 = !{!5683, !5684}
!5683 = !DILocalVariable(name: "addr", arg: 1, scope: !5675, file: !5676, line: 58, type: !5679)
!5684 = !DILocalVariable(name: "ret", scope: !5675, file: !5676, line: 58, type: !45)
!5685 = !DILocation(line: 58, column: 1, scope: !5675)
!5686 = !{i64 2150875002}
!5687 = distinct !DISubprogram(name: "detect_set_debug_port", scope: !2, file: !2, line: 691, type: !1071, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !5688)
!5688 = !{!5689}
!5689 = !DILocalVariable(name: "vendorid", scope: !5687, file: !2, line: 693, type: !515)
!5690 = !DILocation(line: 693, column: 2, scope: !5687)
!5691 = !DILocation(line: 693, column: 6, scope: !5687)
!5692 = !DILocation(line: 695, column: 38, scope: !5687)
!5693 = !DILocation(line: 695, column: 29, scope: !5687)
!5694 = !DILocation(line: 695, column: 52, scope: !5687)
!5695 = !DILocation(line: 695, column: 43, scope: !5687)
!5696 = !DILocation(line: 695, column: 67, scope: !5687)
!5697 = !DILocation(line: 695, column: 58, scope: !5687)
!5698 = !DILocation(line: 695, column: 13, scope: !5687)
!5699 = !DILocation(line: 695, column: 11, scope: !5687)
!5700 = !DILocation(line: 698, column: 7, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5687, file: !2, line: 698, column: 6)
!5702 = !DILocation(line: 698, column: 16, scope: !5701)
!5703 = !DILocation(line: 698, column: 26, scope: !5701)
!5704 = !DILocation(line: 698, column: 6, scope: !5687)
!5705 = !DILocation(line: 699, column: 3, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5701, file: !2, line: 698, column: 37)
!5707 = !DILocation(line: 700, column: 18, scope: !5706)
!5708 = !DILocation(line: 701, column: 2, scope: !5706)
!5709 = !DILocation(line: 702, column: 1, scope: !5687)
!5710 = distinct !DISubprogram(name: "ehci_setup", scope: !2, file: !2, line: 751, type: !800, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !5711)
!5711 = !{!5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724}
!5712 = !DILocalVariable(name: "ctrl", scope: !5710, file: !2, line: 753, type: !515)
!5713 = !DILocalVariable(name: "portsc", scope: !5710, file: !2, line: 753, type: !515)
!5714 = !DILocalVariable(name: "hcs_params", scope: !5710, file: !2, line: 753, type: !515)
!5715 = !DILocalVariable(name: "debug_port", scope: !5710, file: !2, line: 754, type: !515)
!5716 = !DILocalVariable(name: "new_debug_port", scope: !5710, file: !2, line: 754, type: !515)
!5717 = !DILocalVariable(name: "n_ports", scope: !5710, file: !2, line: 754, type: !515)
!5718 = !DILocalVariable(name: "ret", scope: !5710, file: !2, line: 755, type: !113)
!5719 = !DILocalVariable(name: "i", scope: !5710, file: !2, line: 755, type: !113)
!5720 = !DILocalVariable(name: "port_map_tried", scope: !5710, file: !2, line: 756, type: !113)
!5721 = !DILocalVariable(name: "playtimes", scope: !5710, file: !2, line: 757, type: !113)
!5722 = !DILabel(scope: !5710, name: "try_next_time", file: !2, line: 761)
!5723 = !DILabel(scope: !5710, name: "try_next_port", file: !2, line: 764)
!5724 = !DILabel(scope: !5710, name: "next_debug_port", file: !2, line: 810)
!5725 = !DILocation(line: 753, column: 2, scope: !5710)
!5726 = !DILocation(line: 753, column: 6, scope: !5710)
!5727 = !DILocation(line: 753, column: 12, scope: !5710)
!5728 = !DILocation(line: 753, column: 20, scope: !5710)
!5729 = !DILocation(line: 754, column: 2, scope: !5710)
!5730 = !DILocation(line: 754, column: 6, scope: !5710)
!5731 = !DILocation(line: 754, column: 18, scope: !5710)
!5732 = !DILocation(line: 754, column: 38, scope: !5710)
!5733 = !DILocation(line: 755, column: 2, scope: !5710)
!5734 = !DILocation(line: 755, column: 6, scope: !5710)
!5735 = !DILocation(line: 755, column: 11, scope: !5710)
!5736 = !DILocation(line: 756, column: 2, scope: !5710)
!5737 = !DILocation(line: 756, column: 6, scope: !5710)
!5738 = !DILocation(line: 757, column: 2, scope: !5710)
!5739 = !DILocation(line: 757, column: 6, scope: !5710)
!5740 = !DILocation(line: 759, column: 2, scope: !5710)
!5741 = !DILocation(line: 761, column: 1, scope: !5710)
!5742 = !DILocation(line: 762, column: 17, scope: !5710)
!5743 = !DILocation(line: 762, column: 2, scope: !5710)
!5744 = !DILocation(line: 764, column: 1, scope: !5710)
!5745 = !DILocation(line: 766, column: 22, scope: !5710)
!5746 = !DILocation(line: 766, column: 33, scope: !5710)
!5747 = !DILocation(line: 766, column: 15, scope: !5710)
!5748 = !DILocation(line: 766, column: 13, scope: !5710)
!5749 = !DILocation(line: 767, column: 15, scope: !5710)
!5750 = !DILocation(line: 767, column: 13, scope: !5710)
!5751 = !DILocation(line: 768, column: 19, scope: !5710)
!5752 = !DILocation(line: 768, column: 17, scope: !5710)
!5753 = !DILocation(line: 769, column: 15, scope: !5710)
!5754 = !DILocation(line: 769, column: 13, scope: !5710)
!5755 = !DILocation(line: 771, column: 34, scope: !5710)
!5756 = !DILocation(line: 771, column: 2, scope: !5710)
!5757 = !DILocation(line: 772, column: 34, scope: !5710)
!5758 = !DILocation(line: 772, column: 2, scope: !5710)
!5759 = !DILocation(line: 773, column: 2, scope: !5710)
!5760 = !DILocation(line: 775, column: 9, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5710, file: !2, line: 775, column: 2)
!5762 = !DILocation(line: 775, column: 7, scope: !5761)
!5763 = !DILocation(line: 775, column: 14, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5761, file: !2, line: 775, column: 2)
!5765 = !DILocation(line: 775, column: 19, scope: !5764)
!5766 = !DILocation(line: 775, column: 16, scope: !5764)
!5767 = !DILocation(line: 775, column: 2, scope: !5761)
!5768 = !DILocation(line: 776, column: 19, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5764, file: !2, line: 775, column: 33)
!5770 = !DILocation(line: 776, column: 30, scope: !5769)
!5771 = !DILocation(line: 776, column: 42, scope: !5769)
!5772 = !DILocation(line: 776, column: 43, scope: !5769)
!5773 = !DILocation(line: 776, column: 12, scope: !5769)
!5774 = !DILocation(line: 776, column: 10, scope: !5769)
!5775 = !DILocation(line: 777, column: 39, scope: !5769)
!5776 = !DILocation(line: 777, column: 42, scope: !5769)
!5777 = !DILocation(line: 777, column: 3, scope: !5769)
!5778 = !DILocation(line: 778, column: 2, scope: !5769)
!5779 = !DILocation(line: 775, column: 29, scope: !5764)
!5780 = !DILocation(line: 775, column: 2, scope: !5764)
!5781 = distinct !{!5781, !5767, !5782, !5635, !5636}
!5782 = !DILocation(line: 778, column: 2, scope: !5761)
!5783 = !DILocation(line: 780, column: 6, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5710, file: !2, line: 780, column: 6)
!5785 = !DILocation(line: 780, column: 21, scope: !5784)
!5786 = !DILocation(line: 780, column: 25, scope: !5784)
!5787 = !DILocation(line: 780, column: 43, scope: !5784)
!5788 = !DILocation(line: 780, column: 40, scope: !5784)
!5789 = !DILocation(line: 780, column: 6, scope: !5710)
!5790 = !DILocation(line: 781, column: 7, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5792, file: !2, line: 781, column: 7)
!5792 = distinct !DILexicalBlock(scope: !5784, file: !2, line: 780, column: 56)
!5793 = !DILocation(line: 781, column: 7, scope: !5792)
!5794 = !DILocation(line: 782, column: 4, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5791, file: !2, line: 781, column: 20)
!5796 = !DILocation(line: 782, column: 19, scope: !5795)
!5797 = !DILocation(line: 783, column: 4, scope: !5795)
!5798 = !DILocation(line: 785, column: 3, scope: !5792)
!5799 = !DILocation(line: 790, column: 15, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5710, file: !2, line: 790, column: 6)
!5801 = !DILocation(line: 790, column: 26, scope: !5800)
!5802 = !DILocation(line: 790, column: 8, scope: !5800)
!5803 = !DILocation(line: 790, column: 43, scope: !5800)
!5804 = !DILocation(line: 790, column: 6, scope: !5710)
!5805 = !DILocation(line: 791, column: 7, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5807, file: !2, line: 791, column: 7)
!5807 = distinct !DILexicalBlock(scope: !5800, file: !2, line: 790, column: 55)
!5808 = !DILocation(line: 791, column: 36, scope: !5806)
!5809 = !DILocation(line: 791, column: 7, scope: !5807)
!5810 = !DILocation(line: 792, column: 4, scope: !5806)
!5811 = !DILocation(line: 793, column: 2, scope: !5807)
!5812 = !DILocation(line: 794, column: 3, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5800, file: !2, line: 793, column: 9)
!5814 = !DILocation(line: 797, column: 8, scope: !5710)
!5815 = !DILocation(line: 797, column: 6, scope: !5710)
!5816 = !DILocation(line: 798, column: 6, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5710, file: !2, line: 798, column: 6)
!5818 = !DILocation(line: 798, column: 10, scope: !5817)
!5819 = !DILocation(line: 798, column: 6, scope: !5710)
!5820 = !DILocation(line: 799, column: 3, scope: !5817)
!5821 = !DILocation(line: 801, column: 6, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5710, file: !2, line: 801, column: 6)
!5823 = !DILocation(line: 801, column: 10, scope: !5822)
!5824 = !DILocation(line: 801, column: 6, scope: !5710)
!5825 = !DILocation(line: 803, column: 17, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5822, file: !2, line: 801, column: 15)
!5827 = !DILocation(line: 803, column: 29, scope: !5826)
!5828 = !DILocation(line: 803, column: 10, scope: !5826)
!5829 = !DILocation(line: 803, column: 8, scope: !5826)
!5830 = !DILocation(line: 804, column: 8, scope: !5826)
!5831 = !DILocation(line: 805, column: 10, scope: !5826)
!5832 = !DILocation(line: 805, column: 17, scope: !5826)
!5833 = !DILocation(line: 805, column: 29, scope: !5826)
!5834 = !DILocation(line: 805, column: 3, scope: !5826)
!5835 = !DILocation(line: 806, column: 3, scope: !5826)
!5836 = !DILocation(line: 808, column: 2, scope: !5710)
!5837 = !DILocation(line: 810, column: 1, scope: !5710)
!5838 = !DILocation(line: 811, column: 25, scope: !5710)
!5839 = !DILocation(line: 811, column: 36, scope: !5710)
!5840 = !DILocation(line: 811, column: 22, scope: !5710)
!5841 = !DILocation(line: 811, column: 17, scope: !5710)
!5842 = !DILocation(line: 812, column: 21, scope: !5710)
!5843 = !DILocation(line: 812, column: 31, scope: !5710)
!5844 = !DILocation(line: 812, column: 33, scope: !5710)
!5845 = !DILocation(line: 812, column: 37, scope: !5710)
!5846 = !DILocation(line: 812, column: 36, scope: !5710)
!5847 = !DILocation(line: 812, column: 46, scope: !5710)
!5848 = !DILocation(line: 812, column: 17, scope: !5710)
!5849 = !DILocation(line: 813, column: 6, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5710, file: !2, line: 813, column: 6)
!5851 = !DILocation(line: 813, column: 29, scope: !5850)
!5852 = !DILocation(line: 813, column: 27, scope: !5850)
!5853 = !DILocation(line: 813, column: 38, scope: !5850)
!5854 = !DILocation(line: 813, column: 21, scope: !5850)
!5855 = !DILocation(line: 813, column: 6, scope: !5710)
!5856 = !DILocation(line: 814, column: 3, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5850, file: !2, line: 813, column: 44)
!5858 = !DILocation(line: 814, column: 18, scope: !5857)
!5859 = !DILocation(line: 815, column: 3, scope: !5857)
!5860 = !DILocation(line: 817, column: 6, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5710, file: !2, line: 817, column: 6)
!5862 = !DILocation(line: 817, column: 6, scope: !5710)
!5863 = !DILocation(line: 818, column: 3, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5861, file: !2, line: 817, column: 19)
!5865 = !DILocation(line: 818, column: 18, scope: !5864)
!5866 = !DILocation(line: 819, column: 3, scope: !5864)
!5867 = !DILocation(line: 822, column: 2, scope: !5710)
!5868 = !DILocation(line: 823, column: 1, scope: !5710)
!5869 = distinct !DISubprogram(name: "dbgp_ehci_status", scope: !2, file: !2, line: 91, type: !5870, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !5872)
!5870 = !DISubroutineType(types: !5871)
!5871 = !{null, !256}
!5872 = !{!5873}
!5873 = !DILocalVariable(name: "str", arg: 1, scope: !5869, file: !2, line: 91, type: !256)
!5874 = !DILocation(line: 91, column: 43, scope: !5869)
!5875 = !DILocation(line: 91, column: 50, scope: !5869)
!5876 = distinct !DISubprogram(name: "early_dbgp_write", scope: !2, file: !2, line: 908, type: !5877, scopeLine: 909, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !5879)
!5877 = !DISubroutineType(types: !5878)
!5878 = !{null, !249, !250, !515}
!5879 = !{!5880, !5881, !5882, !5883, !5884, !5885, !5886, !5887, !5888}
!5880 = !DILocalVariable(name: "con", arg: 1, scope: !5876, file: !2, line: 908, type: !249)
!5881 = !DILocalVariable(name: "str", arg: 2, scope: !5876, file: !2, line: 908, type: !250)
!5882 = !DILocalVariable(name: "n", arg: 3, scope: !5876, file: !2, line: 908, type: !515)
!5883 = !DILocalVariable(name: "chunk", scope: !5876, file: !2, line: 910, type: !113)
!5884 = !DILocalVariable(name: "buf", scope: !5876, file: !2, line: 911, type: !3281)
!5885 = !DILocalVariable(name: "use_cr", scope: !5876, file: !2, line: 912, type: !113)
!5886 = !DILocalVariable(name: "cmd", scope: !5876, file: !2, line: 913, type: !515)
!5887 = !DILocalVariable(name: "ctrl", scope: !5876, file: !2, line: 913, type: !515)
!5888 = !DILocalVariable(name: "reset_run", scope: !5876, file: !2, line: 914, type: !113)
!5889 = !DILocation(line: 908, column: 46, scope: !5876)
!5890 = !DILocation(line: 908, column: 63, scope: !5876)
!5891 = !DILocation(line: 908, column: 72, scope: !5876)
!5892 = !DILocation(line: 910, column: 2, scope: !5876)
!5893 = !DILocation(line: 910, column: 6, scope: !5876)
!5894 = !DILocation(line: 911, column: 2, scope: !5876)
!5895 = !DILocation(line: 911, column: 7, scope: !5876)
!5896 = !DILocation(line: 912, column: 2, scope: !5876)
!5897 = !DILocation(line: 912, column: 6, scope: !5876)
!5898 = !DILocation(line: 913, column: 2, scope: !5876)
!5899 = !DILocation(line: 913, column: 6, scope: !5876)
!5900 = !DILocation(line: 913, column: 11, scope: !5876)
!5901 = !DILocation(line: 914, column: 2, scope: !5876)
!5902 = !DILocation(line: 914, column: 6, scope: !5876)
!5903 = !DILocation(line: 916, column: 7, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5876, file: !2, line: 916, column: 6)
!5905 = !DILocation(line: 916, column: 18, scope: !5904)
!5906 = !DILocation(line: 916, column: 21, scope: !5904)
!5907 = !DILocation(line: 916, column: 6, scope: !5876)
!5908 = !DILocation(line: 917, column: 3, scope: !5904)
!5909 = !DILocation(line: 919, column: 15, scope: !5876)
!5910 = !DILocation(line: 919, column: 26, scope: !5876)
!5911 = !DILocation(line: 919, column: 8, scope: !5876)
!5912 = !DILocation(line: 919, column: 6, scope: !5876)
!5913 = !DILocation(line: 920, column: 6, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5876, file: !2, line: 920, column: 6)
!5915 = !DILocation(line: 920, column: 6, scope: !5876)
!5916 = !DILocation(line: 924, column: 17, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5914, file: !2, line: 920, column: 34)
!5918 = !DILocation(line: 924, column: 29, scope: !5917)
!5919 = !DILocation(line: 924, column: 10, scope: !5917)
!5920 = !DILocation(line: 924, column: 8, scope: !5917)
!5921 = !DILocation(line: 925, column: 9, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5917, file: !2, line: 925, column: 7)
!5923 = !DILocation(line: 925, column: 14, scope: !5922)
!5924 = !DILocation(line: 925, column: 7, scope: !5917)
!5925 = !DILocation(line: 926, column: 18, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5922, file: !2, line: 925, column: 31)
!5927 = !DILocation(line: 927, column: 4, scope: !5926)
!5928 = !DILocation(line: 928, column: 3, scope: !5926)
!5929 = !DILocation(line: 929, column: 8, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5922, file: !2, line: 928, column: 10)
!5931 = !DILocation(line: 930, column: 11, scope: !5930)
!5932 = !DILocation(line: 930, column: 17, scope: !5930)
!5933 = !DILocation(line: 930, column: 28, scope: !5930)
!5934 = !DILocation(line: 930, column: 4, scope: !5930)
!5935 = !DILocation(line: 931, column: 14, scope: !5930)
!5936 = !DILocation(line: 933, column: 2, scope: !5917)
!5937 = !DILocation(line: 934, column: 2, scope: !5876)
!5938 = !DILocation(line: 934, column: 9, scope: !5876)
!5939 = !DILocation(line: 934, column: 11, scope: !5876)
!5940 = !DILocation(line: 935, column: 14, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5942, file: !2, line: 935, column: 3)
!5942 = distinct !DILexicalBlock(scope: !5876, file: !2, line: 934, column: 16)
!5943 = !DILocation(line: 935, column: 8, scope: !5941)
!5944 = !DILocation(line: 935, column: 19, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5941, file: !2, line: 935, column: 3)
!5946 = !DILocation(line: 935, column: 25, scope: !5945)
!5947 = !DILocation(line: 935, column: 43, scope: !5945)
!5948 = !DILocation(line: 935, column: 46, scope: !5945)
!5949 = !DILocation(line: 935, column: 48, scope: !5945)
!5950 = !DILocation(line: 0, scope: !5945)
!5951 = !DILocation(line: 935, column: 3, scope: !5941)
!5952 = !DILocation(line: 937, column: 9, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5954, file: !2, line: 937, column: 8)
!5954 = distinct !DILexicalBlock(scope: !5945, file: !2, line: 936, column: 29)
!5955 = !DILocation(line: 937, column: 16, scope: !5953)
!5956 = !DILocation(line: 937, column: 20, scope: !5953)
!5957 = !DILocation(line: 937, column: 19, scope: !5953)
!5958 = !DILocation(line: 937, column: 24, scope: !5953)
!5959 = !DILocation(line: 937, column: 8, scope: !5954)
!5960 = !DILocation(line: 938, column: 12, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5953, file: !2, line: 937, column: 33)
!5962 = !DILocation(line: 939, column: 9, scope: !5961)
!5963 = !DILocation(line: 939, column: 5, scope: !5961)
!5964 = !DILocation(line: 939, column: 16, scope: !5961)
!5965 = !DILocation(line: 940, column: 8, scope: !5961)
!5966 = !DILocation(line: 941, column: 6, scope: !5961)
!5967 = !DILocation(line: 942, column: 5, scope: !5961)
!5968 = !DILocation(line: 944, column: 8, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5954, file: !2, line: 944, column: 8)
!5970 = !DILocation(line: 944, column: 8, scope: !5954)
!5971 = !DILocation(line: 945, column: 12, scope: !5969)
!5972 = !DILocation(line: 945, column: 5, scope: !5969)
!5973 = !DILocation(line: 946, column: 18, scope: !5954)
!5974 = !DILocation(line: 946, column: 17, scope: !5954)
!5975 = !DILocation(line: 946, column: 8, scope: !5954)
!5976 = !DILocation(line: 946, column: 4, scope: !5954)
!5977 = !DILocation(line: 946, column: 15, scope: !5954)
!5978 = !DILocation(line: 947, column: 3, scope: !5954)
!5979 = !DILocation(line: 936, column: 11, scope: !5945)
!5980 = !DILocation(line: 936, column: 20, scope: !5945)
!5981 = !DILocation(line: 936, column: 25, scope: !5945)
!5982 = !DILocation(line: 935, column: 3, scope: !5945)
!5983 = distinct !{!5983, !5951, !5984, !5635, !5636}
!5984 = !DILocation(line: 947, column: 3, scope: !5941)
!5985 = !DILocation(line: 948, column: 7, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5942, file: !2, line: 948, column: 7)
!5987 = !DILocation(line: 948, column: 13, scope: !5986)
!5988 = !DILocation(line: 948, column: 7, scope: !5942)
!5989 = !DILocation(line: 950, column: 6, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5986, file: !2, line: 948, column: 18)
!5991 = !DILocation(line: 950, column: 25, scope: !5990)
!5992 = !DILocation(line: 950, column: 30, scope: !5990)
!5993 = !DILocation(line: 949, column: 4, scope: !5990)
!5994 = !DILocation(line: 951, column: 3, scope: !5990)
!5995 = distinct !{!5995, !5937, !5996, !5635, !5636}
!5996 = !DILocation(line: 952, column: 2, scope: !5876)
!5997 = !DILocation(line: 953, column: 6, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5876, file: !2, line: 953, column: 6)
!5999 = !DILocation(line: 953, column: 6, scope: !5876)
!6000 = !DILocation(line: 954, column: 16, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5998, file: !2, line: 953, column: 27)
!6002 = !DILocation(line: 954, column: 27, scope: !6001)
!6003 = !DILocation(line: 954, column: 9, scope: !6001)
!6004 = !DILocation(line: 954, column: 7, scope: !6001)
!6005 = !DILocation(line: 955, column: 7, scope: !6001)
!6006 = !DILocation(line: 956, column: 10, scope: !6001)
!6007 = !DILocation(line: 956, column: 16, scope: !6001)
!6008 = !DILocation(line: 956, column: 27, scope: !6001)
!6009 = !DILocation(line: 956, column: 3, scope: !6001)
!6010 = !DILocation(line: 957, column: 2, scope: !6001)
!6011 = !DILocation(line: 958, column: 1, scope: !5876)
!6012 = distinct !DISubprogram(name: "dbgp_reset_prep", scope: !2, file: !2, line: 968, type: !6013, scopeLine: 969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6017)
!6013 = !DISubroutineType(types: !6014)
!6014 = !{!113, !6015}
!6015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6016, size: 64)
!6016 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hcd", file: !5238, line: 51, flags: DIFlagFwdDecl)
!6017 = !{!6018, !6019, !6020}
!6018 = !DILocalVariable(name: "hcd", arg: 1, scope: !6012, file: !2, line: 968, type: !6015)
!6019 = !DILocalVariable(name: "ret", scope: !6012, file: !2, line: 970, type: !113)
!6020 = !DILocalVariable(name: "ctrl", scope: !6012, file: !2, line: 971, type: !515)
!6021 = !DILocation(line: 968, column: 37, scope: !6012)
!6022 = !DILocation(line: 970, column: 2, scope: !6012)
!6023 = !DILocation(line: 970, column: 6, scope: !6012)
!6024 = !DILocation(line: 970, column: 32, scope: !6012)
!6025 = !DILocation(line: 970, column: 12, scope: !6012)
!6026 = !DILocation(line: 971, column: 2, scope: !6012)
!6027 = !DILocation(line: 971, column: 6, scope: !6012)
!6028 = !DILocation(line: 973, column: 6, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6012, file: !2, line: 973, column: 6)
!6030 = !DILocation(line: 973, column: 6, scope: !6012)
!6031 = !DILocation(line: 974, column: 10, scope: !6029)
!6032 = !DILocation(line: 974, column: 3, scope: !6029)
!6033 = !DILocation(line: 976, column: 16, scope: !6012)
!6034 = !DILocation(line: 977, column: 7, scope: !6035)
!6035 = distinct !DILexicalBlock(scope: !6012, file: !2, line: 977, column: 6)
!6036 = !DILocation(line: 977, column: 6, scope: !6012)
!6037 = !DILocation(line: 978, column: 3, scope: !6035)
!6038 = !DILocation(line: 980, column: 26, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !6012, file: !2, line: 980, column: 6)
!6040 = !DILocation(line: 980, column: 7, scope: !6039)
!6041 = !DILocation(line: 980, column: 32, scope: !6039)
!6042 = !DILocation(line: 980, column: 38, scope: !6039)
!6043 = !DILocation(line: 981, column: 28, scope: !6039)
!6044 = !DILocation(line: 981, column: 9, scope: !6039)
!6045 = !DILocation(line: 981, column: 34, scope: !6039)
!6046 = !DILocation(line: 980, column: 6, scope: !6012)
!6047 = !DILocation(line: 983, column: 3, scope: !6039)
!6048 = !DILocation(line: 987, column: 16, scope: !6012)
!6049 = !DILocation(line: 987, column: 28, scope: !6012)
!6050 = !DILocation(line: 987, column: 9, scope: !6012)
!6051 = !DILocation(line: 987, column: 7, scope: !6012)
!6052 = !DILocation(line: 988, column: 6, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6012, file: !2, line: 988, column: 6)
!6054 = !DILocation(line: 988, column: 11, scope: !6053)
!6055 = !DILocation(line: 988, column: 6, scope: !6012)
!6056 = !DILocation(line: 989, column: 8, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !6053, file: !2, line: 988, column: 27)
!6058 = !DILocation(line: 990, column: 10, scope: !6057)
!6059 = !DILocation(line: 990, column: 17, scope: !6057)
!6060 = !DILocation(line: 990, column: 29, scope: !6057)
!6061 = !DILocation(line: 990, column: 3, scope: !6057)
!6062 = !DILocation(line: 991, column: 2, scope: !6057)
!6063 = !DILocation(line: 992, column: 2, scope: !6012)
!6064 = !DILocation(line: 993, column: 1, scope: !6012)
!6065 = distinct !DISubprogram(name: "xen_dbgp_reset_prep", scope: !5238, file: !5238, line: 57, type: !6013, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6066)
!6066 = !{!6067}
!6067 = !DILocalVariable(name: "hcd", arg: 1, scope: !6065, file: !5238, line: 57, type: !6015)
!6068 = !DILocation(line: 57, column: 55, scope: !6065)
!6069 = !DILocation(line: 59, column: 2, scope: !6065)
!6070 = distinct !DISubprogram(name: "writel", scope: !5676, file: !5676, line: 66, type: !6071, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6074)
!6071 = !DISubroutineType(types: !6072)
!6072 = !{null, !45, !6073}
!6073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5681, size: 64)
!6074 = !{!6075, !6076}
!6075 = !DILocalVariable(name: "val", arg: 1, scope: !6070, file: !5676, line: 66, type: !45)
!6076 = !DILocalVariable(name: "addr", arg: 2, scope: !6070, file: !5676, line: 66, type: !6073)
!6077 = !DILocation(line: 66, column: 1, scope: !6070)
!6078 = !{i64 2150877395}
!6079 = distinct !DISubprogram(name: "dbgp_external_startup", scope: !2, file: !2, line: 996, type: !6013, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6080)
!6080 = !{!6081}
!6081 = !DILocalVariable(name: "hcd", arg: 1, scope: !6079, file: !2, line: 996, type: !6015)
!6082 = !DILocation(line: 996, column: 43, scope: !6079)
!6083 = !DILocation(line: 998, column: 35, scope: !6079)
!6084 = !DILocation(line: 998, column: 9, scope: !6079)
!6085 = !DILocation(line: 998, column: 43, scope: !6079)
!6086 = !DILocation(line: 998, column: 2, scope: !6079)
!6087 = distinct !DISubprogram(name: "xen_dbgp_external_startup", scope: !5238, file: !5238, line: 62, type: !6013, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6088)
!6088 = !{!6089}
!6089 = !DILocalVariable(name: "hcd", arg: 1, scope: !6087, file: !5238, line: 62, type: !6015)
!6090 = !DILocation(line: 62, column: 61, scope: !6087)
!6091 = !DILocation(line: 64, column: 2, scope: !6087)
!6092 = distinct !DISubprogram(name: "_dbgp_external_startup", scope: !2, file: !2, line: 490, type: !800, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6093)
!6093 = !{!6094, !6095, !6103, !6104, !6105, !6106, !6107, !6108, !6109, !6110, !6111, !6112, !6118, !6119}
!6094 = !DILocalVariable(name: "devnum", scope: !6092, file: !2, line: 492, type: !113)
!6095 = !DILocalVariable(name: "dbgp_desc", scope: !6092, file: !2, line: 493, type: !6096)
!6096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_debug_descriptor", file: !6097, line: 771, size: 32, elements: !6098)
!6097 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80d6f45aac89efdd60a6063143f79a70")
!6098 = !{!6099, !6100, !6101, !6102}
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !6096, file: !6097, line: 772, baseType: !331, size: 8)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !6096, file: !6097, line: 773, baseType: !331, size: 8, offset: 8)
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "bDebugInEndpoint", scope: !6096, file: !6097, line: 776, baseType: !331, size: 8, offset: 16)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "bDebugOutEndpoint", scope: !6096, file: !6097, line: 777, baseType: !331, size: 8, offset: 24)
!6103 = !DILocalVariable(name: "ret", scope: !6092, file: !2, line: 494, type: !113)
!6104 = !DILocalVariable(name: "ctrl", scope: !6092, file: !2, line: 495, type: !515)
!6105 = !DILocalVariable(name: "portsc", scope: !6092, file: !2, line: 495, type: !515)
!6106 = !DILocalVariable(name: "cmd", scope: !6092, file: !2, line: 495, type: !515)
!6107 = !DILocalVariable(name: "dbg_port", scope: !6092, file: !2, line: 496, type: !113)
!6108 = !DILocalVariable(name: "tries", scope: !6092, file: !2, line: 497, type: !113)
!6109 = !DILocalVariable(name: "reset_port_tries", scope: !6092, file: !2, line: 498, type: !113)
!6110 = !DILocalVariable(name: "try_hard_once", scope: !6092, file: !2, line: 499, type: !113)
!6111 = !DILabel(scope: !6092, name: "try_port_reset_again", file: !2, line: 501)
!6112 = !DILocalVariable(name: "__ms", scope: !6113, file: !2, line: 522, type: !217)
!6113 = distinct !DILexicalBlock(scope: !6114, file: !2, line: 522, column: 4)
!6114 = distinct !DILexicalBlock(scope: !6115, file: !2, line: 510, column: 50)
!6115 = distinct !DILexicalBlock(scope: !6116, file: !2, line: 510, column: 7)
!6116 = distinct !DILexicalBlock(scope: !6117, file: !2, line: 508, column: 15)
!6117 = distinct !DILexicalBlock(scope: !6092, file: !2, line: 508, column: 6)
!6118 = !DILabel(scope: !6092, name: "try_again", file: !2, line: 552)
!6119 = !DILabel(scope: !6092, name: "err", file: !2, line: 602)
!6120 = !DILocation(line: 492, column: 2, scope: !6092)
!6121 = !DILocation(line: 492, column: 6, scope: !6092)
!6122 = !DILocation(line: 493, column: 2, scope: !6092)
!6123 = !DILocation(line: 493, column: 30, scope: !6092)
!6124 = !DILocation(line: 494, column: 2, scope: !6092)
!6125 = !DILocation(line: 494, column: 6, scope: !6092)
!6126 = !DILocation(line: 495, column: 2, scope: !6092)
!6127 = !DILocation(line: 495, column: 6, scope: !6092)
!6128 = !DILocation(line: 495, column: 12, scope: !6092)
!6129 = !DILocation(line: 495, column: 20, scope: !6092)
!6130 = !DILocation(line: 496, column: 2, scope: !6092)
!6131 = !DILocation(line: 496, column: 6, scope: !6092)
!6132 = !DILocation(line: 496, column: 17, scope: !6092)
!6133 = !DILocation(line: 497, column: 2, scope: !6092)
!6134 = !DILocation(line: 497, column: 6, scope: !6092)
!6135 = !DILocation(line: 498, column: 2, scope: !6092)
!6136 = !DILocation(line: 498, column: 6, scope: !6092)
!6137 = !DILocation(line: 499, column: 2, scope: !6092)
!6138 = !DILocation(line: 499, column: 6, scope: !6092)
!6139 = !DILocation(line: 501, column: 1, scope: !6092)
!6140 = !DILocation(line: 502, column: 8, scope: !6092)
!6141 = !DILocation(line: 502, column: 6, scope: !6092)
!6142 = !DILocation(line: 503, column: 6, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6092, file: !2, line: 503, column: 6)
!6144 = !DILocation(line: 503, column: 6, scope: !6092)
!6145 = !DILocation(line: 504, column: 10, scope: !6143)
!6146 = !DILocation(line: 504, column: 3, scope: !6143)
!6147 = !DILocation(line: 507, column: 27, scope: !6092)
!6148 = !DILocation(line: 507, column: 8, scope: !6092)
!6149 = !DILocation(line: 507, column: 6, scope: !6092)
!6150 = !DILocation(line: 508, column: 6, scope: !6117)
!6151 = !DILocation(line: 508, column: 10, scope: !6117)
!6152 = !DILocation(line: 508, column: 6, scope: !6092)
!6153 = !DILocation(line: 509, column: 19, scope: !6116)
!6154 = !DILocation(line: 509, column: 30, scope: !6116)
!6155 = !DILocation(line: 509, column: 42, scope: !6116)
!6156 = !DILocation(line: 509, column: 51, scope: !6116)
!6157 = !DILocation(line: 509, column: 12, scope: !6116)
!6158 = !DILocation(line: 509, column: 10, scope: !6116)
!6159 = !DILocation(line: 510, column: 9, scope: !6115)
!6160 = !DILocation(line: 510, column: 16, scope: !6115)
!6161 = !DILocation(line: 510, column: 32, scope: !6115)
!6162 = !DILocation(line: 510, column: 35, scope: !6115)
!6163 = !DILocation(line: 510, column: 7, scope: !6116)
!6164 = !DILocation(line: 514, column: 18, scope: !6114)
!6165 = !DILocation(line: 515, column: 17, scope: !6114)
!6166 = !DILocation(line: 515, column: 28, scope: !6114)
!6167 = !DILocation(line: 515, column: 10, scope: !6114)
!6168 = !DILocation(line: 515, column: 8, scope: !6114)
!6169 = !DILocation(line: 516, column: 8, scope: !6114)
!6170 = !DILocation(line: 517, column: 11, scope: !6114)
!6171 = !DILocation(line: 517, column: 17, scope: !6114)
!6172 = !DILocation(line: 517, column: 28, scope: !6114)
!6173 = !DILocation(line: 517, column: 4, scope: !6114)
!6174 = !DILocation(line: 518, column: 20, scope: !6114)
!6175 = !DILocation(line: 518, column: 31, scope: !6114)
!6176 = !DILocation(line: 518, column: 43, scope: !6114)
!6177 = !DILocation(line: 518, column: 52, scope: !6114)
!6178 = !DILocation(line: 518, column: 13, scope: !6114)
!6179 = !DILocation(line: 518, column: 11, scope: !6114)
!6180 = !DILocation(line: 519, column: 11, scope: !6114)
!6181 = !DILocation(line: 520, column: 11, scope: !6114)
!6182 = !DILocation(line: 520, column: 20, scope: !6114)
!6183 = !DILocation(line: 520, column: 31, scope: !6114)
!6184 = !DILocation(line: 520, column: 43, scope: !6114)
!6185 = !DILocation(line: 520, column: 52, scope: !6114)
!6186 = !DILocation(line: 520, column: 4, scope: !6114)
!6187 = !DILocation(line: 521, column: 4, scope: !6114)
!6188 = !DILocation(line: 522, column: 4, scope: !6113)
!6189 = !DILocation(line: 522, column: 4, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6191, file: !2, line: 522, column: 4)
!6191 = distinct !DILexicalBlock(scope: !6192, file: !2, line: 522, column: 4)
!6192 = distinct !DILexicalBlock(scope: !6193, file: !2, line: 522, column: 4)
!6193 = distinct !DILexicalBlock(scope: !6113, file: !2, line: 522, column: 4)
!6194 = distinct !{!6194, !6188, !6188, !5635, !5636}
!6195 = !DILocation(line: 522, column: 4, scope: !6114)
!6196 = !DILocation(line: 523, column: 4, scope: !6114)
!6197 = !DILocation(line: 524, column: 4, scope: !6114)
!6198 = !DILocation(line: 525, column: 30, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6115, file: !2, line: 525, column: 14)
!6200 = !DILocation(line: 525, column: 14, scope: !6115)
!6201 = !DILocation(line: 526, column: 4, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6199, file: !2, line: 525, column: 34)
!6203 = !DILocation(line: 528, column: 3, scope: !6116)
!6204 = !DILocation(line: 529, column: 3, scope: !6116)
!6205 = !DILocation(line: 531, column: 2, scope: !6092)
!6206 = !DILocation(line: 534, column: 16, scope: !6092)
!6207 = !DILocation(line: 534, column: 28, scope: !6092)
!6208 = !DILocation(line: 534, column: 9, scope: !6092)
!6209 = !DILocation(line: 534, column: 7, scope: !6092)
!6210 = !DILocation(line: 535, column: 7, scope: !6092)
!6211 = !DILocation(line: 536, column: 9, scope: !6092)
!6212 = !DILocation(line: 536, column: 16, scope: !6092)
!6213 = !DILocation(line: 536, column: 28, scope: !6092)
!6214 = !DILocation(line: 536, column: 2, scope: !6092)
!6215 = !DILocation(line: 537, column: 16, scope: !6092)
!6216 = !DILocation(line: 537, column: 28, scope: !6092)
!6217 = !DILocation(line: 537, column: 9, scope: !6092)
!6218 = !DILocation(line: 537, column: 7, scope: !6092)
!6219 = !DILocation(line: 538, column: 7, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6092, file: !2, line: 538, column: 6)
!6221 = !DILocation(line: 538, column: 12, scope: !6220)
!6222 = !DILocation(line: 538, column: 26, scope: !6220)
!6223 = !DILocation(line: 538, column: 6, scope: !6092)
!6224 = !DILocation(line: 539, column: 3, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6220, file: !2, line: 538, column: 41)
!6226 = !DILocation(line: 540, column: 10, scope: !6225)
!6227 = !DILocation(line: 540, column: 15, scope: !6225)
!6228 = !DILocation(line: 540, column: 31, scope: !6225)
!6229 = !DILocation(line: 540, column: 43, scope: !6225)
!6230 = !DILocation(line: 540, column: 3, scope: !6225)
!6231 = !DILocation(line: 541, column: 3, scope: !6225)
!6232 = !DILocation(line: 543, column: 2, scope: !6092)
!6233 = !DILocation(line: 546, column: 18, scope: !6092)
!6234 = !DILocation(line: 546, column: 29, scope: !6092)
!6235 = !DILocation(line: 546, column: 41, scope: !6092)
!6236 = !DILocation(line: 546, column: 50, scope: !6092)
!6237 = !DILocation(line: 546, column: 11, scope: !6092)
!6238 = !DILocation(line: 546, column: 9, scope: !6092)
!6239 = !DILocation(line: 547, column: 9, scope: !6092)
!6240 = !DILocation(line: 548, column: 9, scope: !6092)
!6241 = !DILocation(line: 548, column: 18, scope: !6092)
!6242 = !DILocation(line: 548, column: 29, scope: !6092)
!6243 = !DILocation(line: 548, column: 41, scope: !6092)
!6244 = !DILocation(line: 548, column: 50, scope: !6092)
!6245 = !DILocation(line: 548, column: 2, scope: !6092)
!6246 = !DILocation(line: 550, column: 2, scope: !6092)
!6247 = !DILocation(line: 552, column: 1, scope: !6092)
!6248 = !DILocation(line: 554, column: 14, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6092, file: !2, line: 554, column: 2)
!6250 = !DILocation(line: 554, column: 7, scope: !6249)
!6251 = !DILocation(line: 554, column: 19, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6249, file: !2, line: 554, column: 2)
!6253 = !DILocation(line: 554, column: 26, scope: !6252)
!6254 = !DILocation(line: 554, column: 2, scope: !6249)
!6255 = !DILocation(line: 555, column: 26, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6252, file: !2, line: 554, column: 44)
!6257 = !DILocation(line: 555, column: 9, scope: !6256)
!6258 = !DILocation(line: 555, column: 7, scope: !6256)
!6259 = !DILocation(line: 559, column: 7, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6256, file: !2, line: 559, column: 7)
!6261 = !DILocation(line: 559, column: 11, scope: !6260)
!6262 = !DILocation(line: 559, column: 7, scope: !6256)
!6263 = !DILocation(line: 560, column: 4, scope: !6260)
!6264 = !DILocation(line: 561, column: 2, scope: !6256)
!6265 = !DILocation(line: 554, column: 40, scope: !6252)
!6266 = !DILocation(line: 554, column: 2, scope: !6252)
!6267 = distinct !{!6267, !6254, !6268, !5635, !5636}
!6268 = !DILocation(line: 561, column: 2, scope: !6249)
!6269 = !DILocation(line: 562, column: 6, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6092, file: !2, line: 562, column: 6)
!6271 = !DILocation(line: 562, column: 13, scope: !6270)
!6272 = !DILocation(line: 562, column: 6, scope: !6092)
!6273 = !DILocation(line: 563, column: 3, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6270, file: !2, line: 562, column: 20)
!6275 = !DILocation(line: 564, column: 3, scope: !6274)
!6276 = !DILocation(line: 566, column: 32, scope: !6092)
!6277 = !DILocation(line: 566, column: 22, scope: !6092)
!6278 = !DILocation(line: 566, column: 20, scope: !6092)
!6279 = !DILocation(line: 567, column: 31, scope: !6092)
!6280 = !DILocation(line: 567, column: 21, scope: !6092)
!6281 = !DILocation(line: 567, column: 19, scope: !6092)
!6282 = !DILocation(line: 570, column: 6, scope: !6283)
!6283 = distinct !DILexicalBlock(scope: !6092, file: !2, line: 570, column: 6)
!6284 = !DILocation(line: 570, column: 13, scope: !6283)
!6285 = !DILocation(line: 570, column: 6, scope: !6092)
!6286 = !DILocation(line: 571, column: 26, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6283, file: !2, line: 570, column: 34)
!6288 = !DILocation(line: 571, column: 9, scope: !6287)
!6289 = !DILocation(line: 571, column: 7, scope: !6287)
!6290 = !DILocation(line: 574, column: 7, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6287, file: !2, line: 574, column: 7)
!6292 = !DILocation(line: 574, column: 11, scope: !6291)
!6293 = !DILocation(line: 574, column: 7, scope: !6287)
!6294 = !DILocation(line: 575, column: 4, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6291, file: !2, line: 574, column: 16)
!6296 = !DILocation(line: 577, column: 4, scope: !6295)
!6297 = !DILocation(line: 579, column: 3, scope: !6287)
!6298 = !DILocation(line: 580, column: 2, scope: !6287)
!6299 = !DILocation(line: 583, column: 8, scope: !6092)
!6300 = !DILocation(line: 583, column: 6, scope: !6092)
!6301 = !DILocation(line: 586, column: 6, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6092, file: !2, line: 586, column: 6)
!6303 = !DILocation(line: 586, column: 10, scope: !6302)
!6304 = !DILocation(line: 586, column: 6, scope: !6092)
!6305 = !DILocation(line: 587, column: 3, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6302, file: !2, line: 586, column: 15)
!6307 = !DILocation(line: 588, column: 3, scope: !6306)
!6308 = !DILocation(line: 590, column: 2, scope: !6092)
!6309 = !DILocation(line: 593, column: 42, scope: !6092)
!6310 = !DILocation(line: 593, column: 8, scope: !6092)
!6311 = !DILocation(line: 593, column: 6, scope: !6092)
!6312 = !DILocation(line: 594, column: 6, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6092, file: !2, line: 594, column: 6)
!6314 = !DILocation(line: 594, column: 10, scope: !6313)
!6315 = !DILocation(line: 594, column: 6, scope: !6092)
!6316 = !DILocation(line: 595, column: 47, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6313, file: !2, line: 594, column: 15)
!6318 = !DILocation(line: 595, column: 3, scope: !6317)
!6319 = !DILocation(line: 596, column: 3, scope: !6317)
!6320 = !DILocation(line: 598, column: 2, scope: !6092)
!6321 = !DILocation(line: 599, column: 16, scope: !6092)
!6322 = !DILocation(line: 601, column: 2, scope: !6092)
!6323 = !DILocation(line: 602, column: 1, scope: !6092)
!6324 = !DILocation(line: 603, column: 11, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6092, file: !2, line: 603, column: 6)
!6326 = !DILocation(line: 603, column: 6, scope: !6092)
!6327 = !DILocation(line: 604, column: 3, scope: !6325)
!6328 = !DILocation(line: 605, column: 2, scope: !6092)
!6329 = !DILocation(line: 606, column: 1, scope: !6092)
!6330 = distinct !DISubprogram(name: "__find_dbgp", scope: !2, file: !2, line: 390, type: !6331, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6333)
!6331 = !DISubroutineType(types: !6332)
!6332 = !{!515, !515, !515, !515}
!6333 = !{!6334, !6335, !6336, !6337}
!6334 = !DILocalVariable(name: "bus", arg: 1, scope: !6330, file: !2, line: 390, type: !515)
!6335 = !DILocalVariable(name: "slot", arg: 2, scope: !6330, file: !2, line: 390, type: !515)
!6336 = !DILocalVariable(name: "func", arg: 3, scope: !6330, file: !2, line: 390, type: !515)
!6337 = !DILocalVariable(name: "class", scope: !6330, file: !2, line: 392, type: !515)
!6338 = !DILocation(line: 390, column: 35, scope: !6330)
!6339 = !DILocation(line: 390, column: 44, scope: !6330)
!6340 = !DILocation(line: 390, column: 54, scope: !6330)
!6341 = !DILocation(line: 392, column: 2, scope: !6330)
!6342 = !DILocation(line: 392, column: 6, scope: !6330)
!6343 = !DILocation(line: 394, column: 26, scope: !6330)
!6344 = !DILocation(line: 394, column: 31, scope: !6330)
!6345 = !DILocation(line: 394, column: 37, scope: !6330)
!6346 = !DILocation(line: 394, column: 10, scope: !6330)
!6347 = !DILocation(line: 394, column: 8, scope: !6330)
!6348 = !DILocation(line: 395, column: 7, scope: !6349)
!6349 = distinct !DILexicalBlock(scope: !6330, file: !2, line: 395, column: 6)
!6350 = !DILocation(line: 395, column: 13, scope: !6349)
!6351 = !DILocation(line: 395, column: 19, scope: !6349)
!6352 = !DILocation(line: 395, column: 6, scope: !6330)
!6353 = !DILocation(line: 396, column: 3, scope: !6349)
!6354 = !DILocation(line: 398, column: 18, scope: !6330)
!6355 = !DILocation(line: 398, column: 23, scope: !6330)
!6356 = !DILocation(line: 398, column: 29, scope: !6330)
!6357 = !DILocation(line: 398, column: 9, scope: !6330)
!6358 = !DILocation(line: 398, column: 2, scope: !6330)
!6359 = !DILocation(line: 399, column: 1, scope: !6330)
!6360 = distinct !DISubprogram(name: "find_cap", scope: !2, file: !2, line: 364, type: !6361, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6363)
!6361 = !DISubroutineType(types: !6362)
!6362 = !{!515, !515, !515, !515, !113}
!6363 = !{!6364, !6365, !6366, !6367, !6368, !6369, !6370}
!6364 = !DILocalVariable(name: "num", arg: 1, scope: !6360, file: !2, line: 364, type: !515)
!6365 = !DILocalVariable(name: "slot", arg: 2, scope: !6360, file: !2, line: 364, type: !515)
!6366 = !DILocalVariable(name: "func", arg: 3, scope: !6360, file: !2, line: 364, type: !515)
!6367 = !DILocalVariable(name: "cap", arg: 4, scope: !6360, file: !2, line: 364, type: !113)
!6368 = !DILocalVariable(name: "pos", scope: !6360, file: !2, line: 366, type: !329)
!6369 = !DILocalVariable(name: "bytes", scope: !6360, file: !2, line: 367, type: !113)
!6370 = !DILocalVariable(name: "id", scope: !6371, file: !2, line: 375, type: !329)
!6371 = distinct !DILexicalBlock(scope: !6372, file: !2, line: 374, column: 54)
!6372 = distinct !DILexicalBlock(scope: !6373, file: !2, line: 374, column: 2)
!6373 = distinct !DILexicalBlock(scope: !6360, file: !2, line: 374, column: 2)
!6374 = !DILocation(line: 364, column: 32, scope: !6360)
!6375 = !DILocation(line: 364, column: 41, scope: !6360)
!6376 = !DILocation(line: 364, column: 51, scope: !6360)
!6377 = !DILocation(line: 364, column: 61, scope: !6360)
!6378 = !DILocation(line: 366, column: 2, scope: !6360)
!6379 = !DILocation(line: 366, column: 5, scope: !6360)
!6380 = !DILocation(line: 367, column: 2, scope: !6360)
!6381 = !DILocation(line: 367, column: 6, scope: !6360)
!6382 = !DILocation(line: 369, column: 27, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6360, file: !2, line: 369, column: 6)
!6384 = !DILocation(line: 369, column: 32, scope: !6383)
!6385 = !DILocation(line: 369, column: 38, scope: !6383)
!6386 = !DILocation(line: 369, column: 8, scope: !6383)
!6387 = !DILocation(line: 369, column: 56, scope: !6383)
!6388 = !DILocation(line: 369, column: 6, scope: !6360)
!6389 = !DILocation(line: 371, column: 3, scope: !6383)
!6390 = !DILocation(line: 373, column: 29, scope: !6360)
!6391 = !DILocation(line: 373, column: 34, scope: !6360)
!6392 = !DILocation(line: 373, column: 40, scope: !6360)
!6393 = !DILocation(line: 373, column: 8, scope: !6360)
!6394 = !DILocation(line: 373, column: 6, scope: !6360)
!6395 = !DILocation(line: 374, column: 13, scope: !6373)
!6396 = !DILocation(line: 374, column: 7, scope: !6373)
!6397 = !DILocation(line: 374, column: 18, scope: !6372)
!6398 = !DILocation(line: 374, column: 24, scope: !6372)
!6399 = !DILocation(line: 374, column: 29, scope: !6372)
!6400 = !DILocation(line: 374, column: 32, scope: !6372)
!6401 = !DILocation(line: 374, column: 36, scope: !6372)
!6402 = !DILocation(line: 0, scope: !6372)
!6403 = !DILocation(line: 374, column: 2, scope: !6373)
!6404 = !DILocation(line: 375, column: 3, scope: !6371)
!6405 = !DILocation(line: 375, column: 6, scope: !6371)
!6406 = !DILocation(line: 377, column: 7, scope: !6371)
!6407 = !DILocation(line: 378, column: 29, scope: !6371)
!6408 = !DILocation(line: 378, column: 34, scope: !6371)
!6409 = !DILocation(line: 378, column: 40, scope: !6371)
!6410 = !DILocation(line: 378, column: 46, scope: !6371)
!6411 = !DILocation(line: 378, column: 49, scope: !6371)
!6412 = !DILocation(line: 378, column: 8, scope: !6371)
!6413 = !DILocation(line: 378, column: 6, scope: !6371)
!6414 = !DILocation(line: 379, column: 7, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6371, file: !2, line: 379, column: 7)
!6416 = !DILocation(line: 379, column: 10, scope: !6415)
!6417 = !DILocation(line: 379, column: 7, scope: !6371)
!6418 = !DILocation(line: 380, column: 4, scope: !6415)
!6419 = !DILocation(line: 381, column: 7, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6371, file: !2, line: 381, column: 7)
!6421 = !DILocation(line: 381, column: 13, scope: !6420)
!6422 = !DILocation(line: 381, column: 10, scope: !6420)
!6423 = !DILocation(line: 381, column: 7, scope: !6371)
!6424 = !DILocation(line: 382, column: 11, scope: !6420)
!6425 = !DILocation(line: 382, column: 4, scope: !6420)
!6426 = !DILocation(line: 384, column: 30, scope: !6371)
!6427 = !DILocation(line: 384, column: 35, scope: !6371)
!6428 = !DILocation(line: 384, column: 41, scope: !6371)
!6429 = !DILocation(line: 385, column: 8, scope: !6371)
!6430 = !DILocation(line: 385, column: 11, scope: !6371)
!6431 = !DILocation(line: 384, column: 9, scope: !6371)
!6432 = !DILocation(line: 384, column: 7, scope: !6371)
!6433 = !DILocation(line: 386, column: 2, scope: !6372)
!6434 = !DILocation(line: 386, column: 2, scope: !6371)
!6435 = !DILocation(line: 374, column: 50, scope: !6372)
!6436 = !DILocation(line: 374, column: 2, scope: !6372)
!6437 = distinct !{!6437, !6403, !6438, !5635, !5636}
!6438 = !DILocation(line: 386, column: 2, scope: !6373)
!6439 = !DILocation(line: 387, column: 2, scope: !6360)
!6440 = !DILocation(line: 388, column: 1, scope: !6360)
!6441 = !DISubprogram(name: "read_pci_config_16", scope: !5546, file: !5546, line: 12, type: !6442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6442 = !DISubroutineType(types: !6443)
!6443 = !{!338, !329, !329, !329, !329}
!6444 = !DISubprogram(name: "native_set_fixmap", scope: !44, file: !44, line: 160, type: !6445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6445 = !DISubroutineType(types: !6446)
!6446 = !{null, !45, !3773, !3508}
!6447 = distinct !DISubprogram(name: "nvidia_set_debug_port", scope: !2, file: !2, line: 679, type: !3146, scopeLine: 680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6448)
!6448 = !{!6449, !6450}
!6449 = !DILocalVariable(name: "port", arg: 1, scope: !6447, file: !2, line: 679, type: !113)
!6450 = !DILocalVariable(name: "dword", scope: !6447, file: !2, line: 681, type: !515)
!6451 = !DILocation(line: 679, column: 46, scope: !6447)
!6452 = !DILocation(line: 681, column: 2, scope: !6447)
!6453 = !DILocation(line: 681, column: 6, scope: !6447)
!6454 = !DILocation(line: 682, column: 35, scope: !6447)
!6455 = !DILocation(line: 682, column: 26, scope: !6447)
!6456 = !DILocation(line: 682, column: 49, scope: !6447)
!6457 = !DILocation(line: 682, column: 40, scope: !6447)
!6458 = !DILocation(line: 682, column: 64, scope: !6447)
!6459 = !DILocation(line: 682, column: 55, scope: !6447)
!6460 = !DILocation(line: 682, column: 10, scope: !6447)
!6461 = !DILocation(line: 682, column: 8, scope: !6447)
!6462 = !DILocation(line: 684, column: 8, scope: !6447)
!6463 = !DILocation(line: 685, column: 13, scope: !6447)
!6464 = !DILocation(line: 685, column: 18, scope: !6447)
!6465 = !DILocation(line: 685, column: 25, scope: !6447)
!6466 = !DILocation(line: 685, column: 8, scope: !6447)
!6467 = !DILocation(line: 686, column: 28, scope: !6447)
!6468 = !DILocation(line: 686, column: 19, scope: !6447)
!6469 = !DILocation(line: 686, column: 42, scope: !6447)
!6470 = !DILocation(line: 686, column: 33, scope: !6447)
!6471 = !DILocation(line: 686, column: 57, scope: !6447)
!6472 = !DILocation(line: 686, column: 48, scope: !6447)
!6473 = !DILocation(line: 687, column: 6, scope: !6447)
!6474 = !DILocation(line: 686, column: 2, scope: !6447)
!6475 = !DILocation(line: 688, column: 40, scope: !6447)
!6476 = !DILocation(line: 688, column: 2, scope: !6447)
!6477 = !DILocation(line: 689, column: 1, scope: !6447)
!6478 = !DISubprogram(name: "write_pci_config", scope: !5546, file: !5546, line: 13, type: !6479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6479 = !DISubroutineType(types: !6480)
!6480 = !{null, !329, !329, !329, !329, !515}
!6481 = distinct !DISubprogram(name: "default_set_debug_port", scope: !2, file: !2, line: 673, type: !3146, scopeLine: 674, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6482)
!6482 = !{!6483}
!6483 = !DILocalVariable(name: "port", arg: 1, scope: !6481, file: !2, line: 673, type: !113)
!6484 = !DILocation(line: 673, column: 47, scope: !6481)
!6485 = !DILocation(line: 675, column: 1, scope: !6481)
!6486 = distinct !DISubprogram(name: "early_ehci_bios_handoff", scope: !2, file: !2, line: 709, type: !1071, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6487)
!6487 = !{!6488, !6489, !6490, !6491, !6492}
!6488 = !DILocalVariable(name: "hcc_params", scope: !6486, file: !2, line: 711, type: !515)
!6489 = !DILocalVariable(name: "offset", scope: !6486, file: !2, line: 712, type: !113)
!6490 = !DILocalVariable(name: "cap", scope: !6486, file: !2, line: 713, type: !515)
!6491 = !DILocalVariable(name: "msec", scope: !6486, file: !2, line: 714, type: !113)
!6492 = !DILocalVariable(name: "__ms", scope: !6493, file: !2, line: 732, type: !217)
!6493 = distinct !DILexicalBlock(scope: !6494, file: !2, line: 732, column: 3)
!6494 = distinct !DILexicalBlock(scope: !6486, file: !2, line: 731, column: 52)
!6495 = !DILocation(line: 711, column: 2, scope: !6486)
!6496 = !DILocation(line: 711, column: 6, scope: !6486)
!6497 = !DILocation(line: 711, column: 26, scope: !6486)
!6498 = !DILocation(line: 711, column: 37, scope: !6486)
!6499 = !DILocation(line: 711, column: 19, scope: !6486)
!6500 = !DILocation(line: 712, column: 2, scope: !6486)
!6501 = !DILocation(line: 712, column: 6, scope: !6486)
!6502 = !DILocation(line: 712, column: 16, scope: !6486)
!6503 = !DILocation(line: 712, column: 27, scope: !6486)
!6504 = !DILocation(line: 712, column: 33, scope: !6486)
!6505 = !DILocation(line: 713, column: 2, scope: !6486)
!6506 = !DILocation(line: 713, column: 6, scope: !6486)
!6507 = !DILocation(line: 714, column: 2, scope: !6486)
!6508 = !DILocation(line: 714, column: 6, scope: !6486)
!6509 = !DILocation(line: 716, column: 7, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6486, file: !2, line: 716, column: 6)
!6511 = !DILocation(line: 716, column: 6, scope: !6486)
!6512 = !DILocation(line: 717, column: 3, scope: !6510)
!6513 = !DILocation(line: 719, column: 33, scope: !6486)
!6514 = !DILocation(line: 719, column: 24, scope: !6486)
!6515 = !DILocation(line: 719, column: 47, scope: !6486)
!6516 = !DILocation(line: 719, column: 38, scope: !6486)
!6517 = !DILocation(line: 720, column: 19, scope: !6486)
!6518 = !DILocation(line: 720, column: 10, scope: !6486)
!6519 = !DILocation(line: 720, column: 25, scope: !6486)
!6520 = !DILocation(line: 719, column: 8, scope: !6486)
!6521 = !DILocation(line: 719, column: 6, scope: !6486)
!6522 = !DILocation(line: 721, column: 46, scope: !6486)
!6523 = !DILocation(line: 721, column: 2, scope: !6486)
!6524 = !DILocation(line: 723, column: 7, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6486, file: !2, line: 723, column: 6)
!6526 = !DILocation(line: 723, column: 11, scope: !6525)
!6527 = !DILocation(line: 723, column: 19, scope: !6525)
!6528 = !DILocation(line: 723, column: 24, scope: !6525)
!6529 = !DILocation(line: 723, column: 28, scope: !6525)
!6530 = !DILocation(line: 723, column: 32, scope: !6525)
!6531 = !DILocation(line: 723, column: 6, scope: !6486)
!6532 = !DILocation(line: 724, column: 3, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6525, file: !2, line: 723, column: 56)
!6534 = !DILocation(line: 725, column: 34, scope: !6533)
!6535 = !DILocation(line: 725, column: 25, scope: !6533)
!6536 = !DILocation(line: 725, column: 48, scope: !6533)
!6537 = !DILocation(line: 725, column: 39, scope: !6533)
!6538 = !DILocation(line: 726, column: 20, scope: !6533)
!6539 = !DILocation(line: 726, column: 11, scope: !6533)
!6540 = !DILocation(line: 726, column: 26, scope: !6533)
!6541 = !DILocation(line: 726, column: 33, scope: !6533)
!6542 = !DILocation(line: 725, column: 3, scope: !6533)
!6543 = !DILocation(line: 727, column: 2, scope: !6533)
!6544 = !DILocation(line: 730, column: 7, scope: !6486)
!6545 = !DILocation(line: 731, column: 2, scope: !6486)
!6546 = !DILocation(line: 731, column: 10, scope: !6486)
!6547 = !DILocation(line: 731, column: 14, scope: !6486)
!6548 = !DILocation(line: 731, column: 37, scope: !6486)
!6549 = !DILocation(line: 731, column: 41, scope: !6486)
!6550 = !DILocation(line: 731, column: 46, scope: !6486)
!6551 = !DILocation(line: 0, scope: !6486)
!6552 = !DILocation(line: 732, column: 3, scope: !6493)
!6553 = !DILocation(line: 732, column: 3, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6555, file: !2, line: 732, column: 3)
!6555 = distinct !DILexicalBlock(scope: !6556, file: !2, line: 732, column: 3)
!6556 = distinct !DILexicalBlock(scope: !6557, file: !2, line: 732, column: 3)
!6557 = distinct !DILexicalBlock(scope: !6493, file: !2, line: 732, column: 3)
!6558 = distinct !{!6558, !6552, !6552, !5635, !5636}
!6559 = !DILocation(line: 732, column: 3, scope: !6494)
!6560 = !DILocation(line: 733, column: 8, scope: !6494)
!6561 = !DILocation(line: 734, column: 34, scope: !6494)
!6562 = !DILocation(line: 734, column: 25, scope: !6494)
!6563 = !DILocation(line: 734, column: 48, scope: !6494)
!6564 = !DILocation(line: 734, column: 39, scope: !6494)
!6565 = !DILocation(line: 735, column: 20, scope: !6494)
!6566 = !DILocation(line: 735, column: 11, scope: !6494)
!6567 = !DILocation(line: 735, column: 26, scope: !6494)
!6568 = !DILocation(line: 734, column: 9, scope: !6494)
!6569 = !DILocation(line: 734, column: 7, scope: !6494)
!6570 = distinct !{!6570, !6545, !6571, !5635, !5636}
!6571 = !DILocation(line: 736, column: 2, scope: !6486)
!6572 = !DILocation(line: 738, column: 6, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6486, file: !2, line: 738, column: 6)
!6574 = !DILocation(line: 738, column: 10, scope: !6573)
!6575 = !DILocation(line: 738, column: 6, scope: !6486)
!6576 = !DILocation(line: 741, column: 52, scope: !6577)
!6577 = distinct !DILexicalBlock(scope: !6573, file: !2, line: 738, column: 33)
!6578 = !DILocation(line: 741, column: 3, scope: !6577)
!6579 = !DILocation(line: 742, column: 34, scope: !6577)
!6580 = !DILocation(line: 742, column: 25, scope: !6577)
!6581 = !DILocation(line: 742, column: 48, scope: !6577)
!6582 = !DILocation(line: 742, column: 39, scope: !6577)
!6583 = !DILocation(line: 743, column: 20, scope: !6577)
!6584 = !DILocation(line: 743, column: 11, scope: !6577)
!6585 = !DILocation(line: 743, column: 26, scope: !6577)
!6586 = !DILocation(line: 743, column: 33, scope: !6577)
!6587 = !DILocation(line: 742, column: 3, scope: !6577)
!6588 = !DILocation(line: 744, column: 2, scope: !6577)
!6589 = !DILocation(line: 747, column: 33, scope: !6486)
!6590 = !DILocation(line: 747, column: 24, scope: !6486)
!6591 = !DILocation(line: 747, column: 47, scope: !6486)
!6592 = !DILocation(line: 747, column: 38, scope: !6486)
!6593 = !DILocation(line: 747, column: 62, scope: !6486)
!6594 = !DILocation(line: 747, column: 53, scope: !6486)
!6595 = !DILocation(line: 748, column: 10, scope: !6486)
!6596 = !DILocation(line: 748, column: 17, scope: !6486)
!6597 = !DILocation(line: 747, column: 2, scope: !6486)
!6598 = !DILocation(line: 749, column: 1, scope: !6486)
!6599 = distinct !DISubprogram(name: "dbgp_ehci_controller_reset", scope: !2, file: !2, line: 465, type: !800, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6600)
!6600 = !{!6601, !6602}
!6601 = !DILocalVariable(name: "loop", scope: !6599, file: !2, line: 467, type: !113)
!6602 = !DILocalVariable(name: "cmd", scope: !6599, file: !2, line: 468, type: !515)
!6603 = !DILocation(line: 467, column: 2, scope: !6599)
!6604 = !DILocation(line: 467, column: 6, scope: !6599)
!6605 = !DILocation(line: 468, column: 2, scope: !6599)
!6606 = !DILocation(line: 468, column: 6, scope: !6599)
!6607 = !DILocation(line: 471, column: 15, scope: !6599)
!6608 = !DILocation(line: 471, column: 26, scope: !6599)
!6609 = !DILocation(line: 471, column: 8, scope: !6599)
!6610 = !DILocation(line: 471, column: 6, scope: !6599)
!6611 = !DILocation(line: 472, column: 6, scope: !6599)
!6612 = !DILocation(line: 473, column: 9, scope: !6599)
!6613 = !DILocation(line: 473, column: 15, scope: !6599)
!6614 = !DILocation(line: 473, column: 26, scope: !6599)
!6615 = !DILocation(line: 473, column: 2, scope: !6599)
!6616 = !DILocation(line: 474, column: 2, scope: !6599)
!6617 = !DILocation(line: 475, column: 16, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6599, file: !2, line: 474, column: 5)
!6619 = !DILocation(line: 475, column: 27, scope: !6618)
!6620 = !DILocation(line: 475, column: 9, scope: !6618)
!6621 = !DILocation(line: 475, column: 7, scope: !6618)
!6622 = !DILocation(line: 476, column: 2, scope: !6618)
!6623 = !DILocation(line: 476, column: 12, scope: !6599)
!6624 = !DILocation(line: 476, column: 16, scope: !6599)
!6625 = !DILocation(line: 476, column: 29, scope: !6599)
!6626 = !DILocation(line: 476, column: 33, scope: !6599)
!6627 = !DILocation(line: 476, column: 40, scope: !6599)
!6628 = !DILocation(line: 0, scope: !6599)
!6629 = distinct !{!6629, !6616, !6630, !5635, !5636}
!6630 = !DILocation(line: 476, column: 44, scope: !6599)
!6631 = !DILocation(line: 478, column: 7, scope: !6632)
!6632 = distinct !DILexicalBlock(scope: !6599, file: !2, line: 478, column: 6)
!6633 = !DILocation(line: 478, column: 6, scope: !6599)
!6634 = !DILocation(line: 479, column: 3, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6632, file: !2, line: 478, column: 13)
!6636 = !DILocation(line: 480, column: 3, scope: !6635)
!6637 = !DILocation(line: 482, column: 2, scope: !6599)
!6638 = !DILocation(line: 483, column: 2, scope: !6599)
!6639 = !DILocation(line: 484, column: 1, scope: !6599)
!6640 = !DISubprogram(name: "__const_udelay", scope: !6641, file: !6641, line: 11, type: !6642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6641 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!6642 = !DISubroutineType(types: !6643)
!6643 = !{null, !217}
!6644 = distinct !DISubprogram(name: "dbgp_bulk_write", scope: !2, file: !2, line: 265, type: !6645, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6647)
!6645 = !DISubroutineType(types: !6646)
!6646 = !{!113, !45, !45, !250, !113}
!6647 = !{!6648, !6649, !6650, !6651, !6652, !6653, !6654, !6655}
!6648 = !DILocalVariable(name: "devnum", arg: 1, scope: !6644, file: !2, line: 265, type: !45)
!6649 = !DILocalVariable(name: "endpoint", arg: 2, scope: !6644, file: !2, line: 265, type: !45)
!6650 = !DILocalVariable(name: "bytes", arg: 3, scope: !6644, file: !2, line: 266, type: !250)
!6651 = !DILocalVariable(name: "size", arg: 4, scope: !6644, file: !2, line: 266, type: !113)
!6652 = !DILocalVariable(name: "ret", scope: !6644, file: !2, line: 268, type: !113)
!6653 = !DILocalVariable(name: "addr", scope: !6644, file: !2, line: 269, type: !515)
!6654 = !DILocalVariable(name: "pids", scope: !6644, file: !2, line: 270, type: !515)
!6655 = !DILocalVariable(name: "ctrl", scope: !6644, file: !2, line: 270, type: !515)
!6656 = !DILocation(line: 265, column: 37, scope: !6644)
!6657 = !DILocation(line: 265, column: 54, scope: !6644)
!6658 = !DILocation(line: 266, column: 17, scope: !6644)
!6659 = !DILocation(line: 266, column: 28, scope: !6644)
!6660 = !DILocation(line: 268, column: 2, scope: !6644)
!6661 = !DILocation(line: 268, column: 6, scope: !6644)
!6662 = !DILocation(line: 269, column: 2, scope: !6644)
!6663 = !DILocation(line: 269, column: 6, scope: !6644)
!6664 = !DILocation(line: 270, column: 2, scope: !6644)
!6665 = !DILocation(line: 270, column: 6, scope: !6644)
!6666 = !DILocation(line: 270, column: 12, scope: !6644)
!6667 = !DILocation(line: 272, column: 6, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6644, file: !2, line: 272, column: 6)
!6669 = !DILocation(line: 272, column: 11, scope: !6668)
!6670 = !DILocation(line: 272, column: 6, scope: !6644)
!6671 = !DILocation(line: 273, column: 3, scope: !6668)
!6672 = !DILocation(line: 275, column: 9, scope: !6644)
!6673 = !DILocation(line: 275, column: 7, scope: !6644)
!6674 = !DILocation(line: 277, column: 16, scope: !6644)
!6675 = !DILocation(line: 277, column: 28, scope: !6644)
!6676 = !DILocation(line: 277, column: 9, scope: !6644)
!6677 = !DILocation(line: 277, column: 7, scope: !6644)
!6678 = !DILocation(line: 278, column: 31, scope: !6644)
!6679 = !DILocation(line: 278, column: 9, scope: !6644)
!6680 = !DILocation(line: 278, column: 7, scope: !6644)
!6681 = !DILocation(line: 280, column: 16, scope: !6644)
!6682 = !DILocation(line: 280, column: 28, scope: !6644)
!6683 = !DILocation(line: 280, column: 9, scope: !6644)
!6684 = !DILocation(line: 280, column: 7, scope: !6644)
!6685 = !DILocation(line: 281, column: 25, scope: !6644)
!6686 = !DILocation(line: 281, column: 31, scope: !6644)
!6687 = !DILocation(line: 281, column: 9, scope: !6644)
!6688 = !DILocation(line: 281, column: 7, scope: !6644)
!6689 = !DILocation(line: 282, column: 7, scope: !6644)
!6690 = !DILocation(line: 283, column: 7, scope: !6644)
!6691 = !DILocation(line: 285, column: 16, scope: !6644)
!6692 = !DILocation(line: 285, column: 23, scope: !6644)
!6693 = !DILocation(line: 285, column: 2, scope: !6644)
!6694 = !DILocation(line: 286, column: 9, scope: !6644)
!6695 = !DILocation(line: 286, column: 16, scope: !6644)
!6696 = !DILocation(line: 286, column: 28, scope: !6644)
!6697 = !DILocation(line: 286, column: 2, scope: !6644)
!6698 = !DILocation(line: 287, column: 9, scope: !6644)
!6699 = !DILocation(line: 287, column: 16, scope: !6644)
!6700 = !DILocation(line: 287, column: 28, scope: !6644)
!6701 = !DILocation(line: 287, column: 2, scope: !6644)
!6702 = !DILocation(line: 288, column: 29, scope: !6644)
!6703 = !DILocation(line: 288, column: 8, scope: !6644)
!6704 = !DILocation(line: 288, column: 6, scope: !6644)
!6705 = !DILocation(line: 290, column: 9, scope: !6644)
!6706 = !DILocation(line: 290, column: 2, scope: !6644)
!6707 = !DILocation(line: 291, column: 1, scope: !6644)
!6708 = !DILocation(line: 150, column: 45, scope: !5298)
!6709 = !DILocation(line: 150, column: 52, scope: !5298)
!6710 = !DILocation(line: 153, column: 8, scope: !5298)
!6711 = !DILocation(line: 154, column: 10, scope: !5298)
!6712 = !DILocation(line: 154, column: 12, scope: !5298)
!6713 = !DILocation(line: 154, column: 29, scope: !5298)
!6714 = !DILocation(line: 154, column: 35, scope: !5298)
!6715 = !DILocation(line: 154, column: 26, scope: !5298)
!6716 = !DILocation(line: 154, column: 44, scope: !5298)
!6717 = !DILocation(line: 154, column: 48, scope: !5298)
!6718 = !DILocation(line: 154, column: 41, scope: !5298)
!6719 = !DILocation(line: 154, column: 2, scope: !5298)
!6720 = distinct !DISubprogram(name: "dbgp_len_update", scope: !2, file: !2, line: 95, type: !5299, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6721)
!6721 = !{!6722, !6723}
!6722 = !DILocalVariable(name: "x", arg: 1, scope: !6720, file: !2, line: 95, type: !515)
!6723 = !DILocalVariable(name: "len", arg: 2, scope: !6720, file: !2, line: 95, type: !515)
!6724 = !DILocation(line: 95, column: 39, scope: !6720)
!6725 = !DILocation(line: 95, column: 46, scope: !6720)
!6726 = !DILocation(line: 97, column: 10, scope: !6720)
!6727 = !DILocation(line: 97, column: 12, scope: !6720)
!6728 = !DILocation(line: 97, column: 24, scope: !6720)
!6729 = !DILocation(line: 97, column: 28, scope: !6720)
!6730 = !DILocation(line: 97, column: 21, scope: !6720)
!6731 = !DILocation(line: 97, column: 2, scope: !6720)
!6732 = distinct !DISubprogram(name: "dbgp_set_data", scope: !2, file: !2, line: 236, type: !6733, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6735)
!6733 = !DISubroutineType(types: !6734)
!6734 = !{null, !1693, !113}
!6735 = !{!6736, !6737, !6738, !6739, !6740, !6741}
!6736 = !DILocalVariable(name: "buf", arg: 1, scope: !6732, file: !2, line: 236, type: !1693)
!6737 = !DILocalVariable(name: "size", arg: 2, scope: !6732, file: !2, line: 236, type: !113)
!6738 = !DILocalVariable(name: "bytes", scope: !6732, file: !2, line: 238, type: !523)
!6739 = !DILocalVariable(name: "lo", scope: !6732, file: !2, line: 239, type: !515)
!6740 = !DILocalVariable(name: "hi", scope: !6732, file: !2, line: 239, type: !515)
!6741 = !DILocalVariable(name: "i", scope: !6732, file: !2, line: 240, type: !113)
!6742 = !DILocation(line: 236, column: 46, scope: !6732)
!6743 = !DILocation(line: 236, column: 55, scope: !6732)
!6744 = !DILocation(line: 238, column: 2, scope: !6732)
!6745 = !DILocation(line: 238, column: 23, scope: !6732)
!6746 = !DILocation(line: 238, column: 31, scope: !6732)
!6747 = !DILocation(line: 239, column: 2, scope: !6732)
!6748 = !DILocation(line: 239, column: 6, scope: !6732)
!6749 = !DILocation(line: 239, column: 10, scope: !6732)
!6750 = !DILocation(line: 240, column: 2, scope: !6732)
!6751 = !DILocation(line: 240, column: 6, scope: !6732)
!6752 = !DILocation(line: 242, column: 10, scope: !6732)
!6753 = !DILocation(line: 242, column: 5, scope: !6732)
!6754 = !DILocation(line: 243, column: 9, scope: !6755)
!6755 = distinct !DILexicalBlock(scope: !6732, file: !2, line: 243, column: 2)
!6756 = !DILocation(line: 243, column: 7, scope: !6755)
!6757 = !DILocation(line: 243, column: 14, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6755, file: !2, line: 243, column: 2)
!6759 = !DILocation(line: 243, column: 16, scope: !6758)
!6760 = !DILocation(line: 243, column: 20, scope: !6758)
!6761 = !DILocation(line: 243, column: 23, scope: !6758)
!6762 = !DILocation(line: 243, column: 27, scope: !6758)
!6763 = !DILocation(line: 243, column: 25, scope: !6758)
!6764 = !DILocation(line: 0, scope: !6758)
!6765 = !DILocation(line: 243, column: 2, scope: !6755)
!6766 = !DILocation(line: 244, column: 9, scope: !6758)
!6767 = !DILocation(line: 244, column: 15, scope: !6758)
!6768 = !DILocation(line: 244, column: 24, scope: !6758)
!6769 = !DILocation(line: 244, column: 23, scope: !6758)
!6770 = !DILocation(line: 244, column: 18, scope: !6758)
!6771 = !DILocation(line: 244, column: 6, scope: !6758)
!6772 = !DILocation(line: 244, column: 3, scope: !6758)
!6773 = !DILocation(line: 243, column: 34, scope: !6758)
!6774 = !DILocation(line: 243, column: 2, scope: !6758)
!6775 = distinct !{!6775, !6765, !6776, !5635, !5636}
!6776 = !DILocation(line: 244, column: 25, scope: !6755)
!6777 = !DILocation(line: 245, column: 2, scope: !6732)
!6778 = !DILocation(line: 245, column: 9, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6780, file: !2, line: 245, column: 2)
!6780 = distinct !DILexicalBlock(scope: !6732, file: !2, line: 245, column: 2)
!6781 = !DILocation(line: 245, column: 11, scope: !6779)
!6782 = !DILocation(line: 245, column: 15, scope: !6779)
!6783 = !DILocation(line: 245, column: 18, scope: !6779)
!6784 = !DILocation(line: 245, column: 22, scope: !6779)
!6785 = !DILocation(line: 245, column: 20, scope: !6779)
!6786 = !DILocation(line: 0, scope: !6779)
!6787 = !DILocation(line: 245, column: 2, scope: !6780)
!6788 = !DILocation(line: 246, column: 9, scope: !6779)
!6789 = !DILocation(line: 246, column: 15, scope: !6779)
!6790 = !DILocation(line: 246, column: 25, scope: !6779)
!6791 = !DILocation(line: 246, column: 27, scope: !6779)
!6792 = !DILocation(line: 246, column: 23, scope: !6779)
!6793 = !DILocation(line: 246, column: 18, scope: !6779)
!6794 = !DILocation(line: 246, column: 6, scope: !6779)
!6795 = !DILocation(line: 246, column: 3, scope: !6779)
!6796 = !DILocation(line: 245, column: 29, scope: !6779)
!6797 = !DILocation(line: 245, column: 2, scope: !6779)
!6798 = distinct !{!6798, !6787, !6799, !5635, !5636}
!6799 = !DILocation(line: 246, column: 31, scope: !6780)
!6800 = !DILocation(line: 247, column: 9, scope: !6732)
!6801 = !DILocation(line: 247, column: 14, scope: !6732)
!6802 = !DILocation(line: 247, column: 26, scope: !6732)
!6803 = !DILocation(line: 247, column: 2, scope: !6732)
!6804 = !DILocation(line: 248, column: 9, scope: !6732)
!6805 = !DILocation(line: 248, column: 14, scope: !6732)
!6806 = !DILocation(line: 248, column: 26, scope: !6732)
!6807 = !DILocation(line: 248, column: 2, scope: !6732)
!6808 = !DILocation(line: 249, column: 1, scope: !6732)
!6809 = distinct !DISubprogram(name: "dbgp_wait_until_done", scope: !2, file: !2, line: 195, type: !6810, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6812)
!6810 = !DISubroutineType(types: !6811)
!6811 = !{!113, !45, !113}
!6812 = !{!6813, !6814, !6815, !6816, !6817, !6818}
!6813 = !DILocalVariable(name: "ctrl", arg: 1, scope: !6809, file: !2, line: 195, type: !45)
!6814 = !DILocalVariable(name: "loop", arg: 2, scope: !6809, file: !2, line: 195, type: !113)
!6815 = !DILocalVariable(name: "pids", scope: !6809, file: !2, line: 197, type: !515)
!6816 = !DILocalVariable(name: "lpid", scope: !6809, file: !2, line: 197, type: !515)
!6817 = !DILocalVariable(name: "ret", scope: !6809, file: !2, line: 198, type: !113)
!6818 = !DILabel(scope: !6809, name: "retry", file: !2, line: 200)
!6819 = !DILocation(line: 195, column: 42, scope: !6809)
!6820 = !DILocation(line: 195, column: 52, scope: !6809)
!6821 = !DILocation(line: 197, column: 2, scope: !6809)
!6822 = !DILocation(line: 197, column: 6, scope: !6809)
!6823 = !DILocation(line: 197, column: 12, scope: !6809)
!6824 = !DILocation(line: 198, column: 2, scope: !6809)
!6825 = !DILocation(line: 198, column: 6, scope: !6809)
!6826 = !DILocation(line: 200, column: 1, scope: !6809)
!6827 = !DILocation(line: 201, column: 9, scope: !6809)
!6828 = !DILocation(line: 201, column: 14, scope: !6809)
!6829 = !DILocation(line: 201, column: 26, scope: !6809)
!6830 = !DILocation(line: 201, column: 38, scope: !6809)
!6831 = !DILocation(line: 201, column: 2, scope: !6809)
!6832 = !DILocation(line: 202, column: 8, scope: !6809)
!6833 = !DILocation(line: 202, column: 6, scope: !6809)
!6834 = !DILocation(line: 203, column: 16, scope: !6809)
!6835 = !DILocation(line: 203, column: 28, scope: !6809)
!6836 = !DILocation(line: 203, column: 9, scope: !6809)
!6837 = !DILocation(line: 203, column: 7, scope: !6809)
!6838 = !DILocation(line: 204, column: 9, scope: !6809)
!6839 = !DILocation(line: 204, column: 7, scope: !6809)
!6840 = !DILocation(line: 206, column: 6, scope: !6841)
!6841 = distinct !DILexicalBlock(scope: !6809, file: !2, line: 206, column: 6)
!6842 = !DILocation(line: 206, column: 10, scope: !6841)
!6843 = !DILocation(line: 206, column: 6, scope: !6809)
!6844 = !DILocation(line: 213, column: 7, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6846, file: !2, line: 213, column: 7)
!6846 = distinct !DILexicalBlock(scope: !6841, file: !2, line: 206, column: 15)
!6847 = !DILocation(line: 213, column: 11, scope: !6845)
!6848 = !DILocation(line: 213, column: 28, scope: !6845)
!6849 = !DILocation(line: 213, column: 32, scope: !6845)
!6850 = !DILocation(line: 213, column: 7, scope: !6846)
!6851 = !DILocation(line: 214, column: 18, scope: !6845)
!6852 = !DILocation(line: 214, column: 4, scope: !6845)
!6853 = !DILocation(line: 215, column: 7, scope: !6854)
!6854 = distinct !DILexicalBlock(scope: !6846, file: !2, line: 215, column: 7)
!6855 = !DILocation(line: 215, column: 11, scope: !6854)
!6856 = !DILocation(line: 215, column: 28, scope: !6854)
!6857 = !DILocation(line: 215, column: 31, scope: !6854)
!6858 = !DILocation(line: 215, column: 38, scope: !6854)
!6859 = !DILocation(line: 215, column: 7, scope: !6846)
!6860 = !DILocation(line: 216, column: 4, scope: !6854)
!6861 = !DILocation(line: 217, column: 10, scope: !6846)
!6862 = !DILocation(line: 217, column: 3, scope: !6846)
!6863 = !DILocation(line: 224, column: 7, scope: !6864)
!6864 = distinct !DILexicalBlock(scope: !6809, file: !2, line: 224, column: 6)
!6865 = !DILocation(line: 224, column: 12, scope: !6864)
!6866 = !DILocation(line: 224, column: 28, scope: !6864)
!6867 = !DILocation(line: 224, column: 32, scope: !6864)
!6868 = !DILocation(line: 224, column: 37, scope: !6864)
!6869 = !DILocation(line: 224, column: 6, scope: !6809)
!6870 = !DILocation(line: 225, column: 3, scope: !6864)
!6871 = !DILocation(line: 228, column: 6, scope: !6872)
!6872 = distinct !DILexicalBlock(scope: !6809, file: !2, line: 228, column: 6)
!6873 = !DILocation(line: 228, column: 11, scope: !6872)
!6874 = !DILocation(line: 228, column: 6, scope: !6809)
!6875 = !DILocation(line: 229, column: 7, scope: !6876)
!6876 = distinct !DILexicalBlock(scope: !6877, file: !2, line: 229, column: 7)
!6877 = distinct !DILexicalBlock(scope: !6872, file: !2, line: 228, column: 27)
!6878 = !DILocation(line: 229, column: 14, scope: !6876)
!6879 = !DILocation(line: 229, column: 7, scope: !6877)
!6880 = !DILocation(line: 230, column: 4, scope: !6876)
!6881 = !DILocation(line: 231, column: 2, scope: !6877)
!6882 = !DILocation(line: 233, column: 9, scope: !6809)
!6883 = !DILocation(line: 233, column: 2, scope: !6809)
!6884 = !DILocation(line: 234, column: 1, scope: !6809)
!6885 = distinct !DISubprogram(name: "dbgp_wait_until_complete", scope: !2, file: !2, line: 162, type: !800, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6886)
!6886 = !{!6887, !6888, !6889, !6891, !6892, !6893}
!6887 = !DILocalVariable(name: "ctrl", scope: !6885, file: !2, line: 164, type: !515)
!6888 = !DILocalVariable(name: "ret", scope: !6885, file: !2, line: 165, type: !113)
!6889 = !DILocalVariable(name: "__timeout_us", scope: !6890, file: !2, line: 167, type: !519)
!6890 = distinct !DILexicalBlock(scope: !6885, file: !2, line: 167, column: 8)
!6891 = !DILocalVariable(name: "__left_ns", scope: !6890, file: !2, line: 167, type: !716)
!6892 = !DILocalVariable(name: "__delay_us", scope: !6890, file: !2, line: 167, type: !217)
!6893 = !DILocalVariable(name: "__delay_ns", scope: !6890, file: !2, line: 167, type: !519)
!6894 = !DILocation(line: 164, column: 2, scope: !6885)
!6895 = !DILocation(line: 164, column: 6, scope: !6885)
!6896 = !DILocation(line: 165, column: 2, scope: !6885)
!6897 = !DILocation(line: 165, column: 6, scope: !6885)
!6898 = !DILocation(line: 167, column: 8, scope: !6890)
!6899 = !DILocation(line: 167, column: 8, scope: !6900)
!6900 = distinct !DILexicalBlock(scope: !6901, file: !2, line: 167, column: 8)
!6901 = distinct !DILexicalBlock(scope: !6902, file: !2, line: 167, column: 8)
!6902 = distinct !DILexicalBlock(scope: !6890, file: !2, line: 167, column: 8)
!6903 = !DILocation(line: 167, column: 8, scope: !6904)
!6904 = distinct !DILexicalBlock(scope: !6900, file: !2, line: 167, column: 8)
!6905 = !DILocation(line: 167, column: 8, scope: !6906)
!6906 = distinct !DILexicalBlock(scope: !6900, file: !2, line: 167, column: 8)
!6907 = !DILocation(line: 167, column: 8, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6906, file: !2, line: 167, column: 8)
!6909 = !DILocation(line: 167, column: 8, scope: !6910)
!6910 = distinct !DILexicalBlock(scope: !6900, file: !2, line: 167, column: 8)
!6911 = !DILocation(line: 167, column: 8, scope: !6912)
!6912 = distinct !DILexicalBlock(scope: !6913, file: !2, line: 167, column: 8)
!6913 = distinct !DILexicalBlock(scope: !6914, file: !2, line: 167, column: 8)
!6914 = distinct !DILexicalBlock(scope: !6910, file: !2, line: 167, column: 8)
!6915 = !DILocation(line: 167, column: 8, scope: !6913)
!6916 = !DILocation(line: 167, column: 8, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6918, file: !2, line: 167, column: 8)
!6918 = distinct !DILexicalBlock(scope: !6912, file: !2, line: 167, column: 8)
!6919 = !DILocation(line: 167, column: 8, scope: !6918)
!6920 = !DILocation(line: 167, column: 8, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6912, file: !2, line: 167, column: 8)
!6922 = !DILocation(line: 167, column: 8, scope: !6923)
!6923 = distinct !DILexicalBlock(scope: !6914, file: !2, line: 167, column: 8)
!6924 = !DILocation(line: 167, column: 8, scope: !6914)
!6925 = !DILocation(line: 167, column: 8, scope: !6926)
!6926 = distinct !DILexicalBlock(scope: !6900, file: !2, line: 167, column: 8)
!6927 = !DILocation(line: 167, column: 8, scope: !6901)
!6928 = distinct !{!6928, !6929, !6929, !5636}
!6929 = !DILocation(line: 167, column: 8, scope: !6902)
!6930 = !DILocation(line: 167, column: 8, scope: !6885)
!6931 = !DILocation(line: 167, column: 6, scope: !6885)
!6932 = !DILocation(line: 169, column: 6, scope: !6933)
!6933 = distinct !DILexicalBlock(scope: !6885, file: !2, line: 169, column: 6)
!6934 = !DILocation(line: 169, column: 6, scope: !6885)
!6935 = !DILocation(line: 170, column: 3, scope: !6933)
!6936 = !DILocation(line: 176, column: 9, scope: !6885)
!6937 = !DILocation(line: 176, column: 14, scope: !6885)
!6938 = !DILocation(line: 176, column: 28, scope: !6885)
!6939 = !DILocation(line: 176, column: 40, scope: !6885)
!6940 = !DILocation(line: 176, column: 2, scope: !6885)
!6941 = !DILocation(line: 177, column: 10, scope: !6885)
!6942 = !DILocation(line: 177, column: 15, scope: !6885)
!6943 = !DILocation(line: 177, column: 9, scope: !6885)
!6944 = !DILocation(line: 177, column: 32, scope: !6885)
!6945 = !DILocation(line: 177, column: 31, scope: !6885)
!6946 = !DILocation(line: 177, column: 53, scope: !6885)
!6947 = !DILocation(line: 177, column: 2, scope: !6885)
!6948 = !DILocation(line: 178, column: 1, scope: !6885)
!6949 = distinct !DISubprogram(name: "dbgp_breath", scope: !2, file: !2, line: 190, type: !1071, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41)
!6950 = !DILocation(line: 193, column: 1, scope: !6949)
!6951 = !DISubprogram(name: "__bad_udelay", scope: !6641, file: !6641, line: 6, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6952 = !DISubprogram(name: "__udelay", scope: !6641, file: !6641, line: 9, type: !6642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6953 = distinct !DISubprogram(name: "cpu_relax", scope: !6954, file: !6954, line: 16, type: !1071, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41)
!6954 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!6955 = !DILocation(line: 18, column: 2, scope: !6953)
!6956 = !DILocation(line: 19, column: 1, scope: !6953)
!6957 = distinct !DISubprogram(name: "rep_nop", scope: !6954, file: !6954, line: 11, type: !1071, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41)
!6958 = !DILocation(line: 13, column: 2, scope: !6957)
!6959 = !{i64 2013702}
!6960 = !DILocation(line: 14, column: 1, scope: !6957)
!6961 = distinct !DISubprogram(name: "dbgp_ehci_startup", scope: !2, file: !2, line: 426, type: !800, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !6962)
!6962 = !{!6963, !6964, !6965, !6966}
!6963 = !DILocalVariable(name: "ctrl", scope: !6961, file: !2, line: 428, type: !515)
!6964 = !DILocalVariable(name: "cmd", scope: !6961, file: !2, line: 428, type: !515)
!6965 = !DILocalVariable(name: "status", scope: !6961, file: !2, line: 428, type: !515)
!6966 = !DILocalVariable(name: "loop", scope: !6961, file: !2, line: 429, type: !113)
!6967 = !DILocation(line: 428, column: 2, scope: !6961)
!6968 = !DILocation(line: 428, column: 6, scope: !6961)
!6969 = !DILocation(line: 428, column: 12, scope: !6961)
!6970 = !DILocation(line: 428, column: 17, scope: !6961)
!6971 = !DILocation(line: 429, column: 2, scope: !6961)
!6972 = !DILocation(line: 429, column: 6, scope: !6961)
!6973 = !DILocation(line: 432, column: 16, scope: !6961)
!6974 = !DILocation(line: 432, column: 28, scope: !6961)
!6975 = !DILocation(line: 432, column: 9, scope: !6961)
!6976 = !DILocation(line: 432, column: 7, scope: !6961)
!6977 = !DILocation(line: 433, column: 7, scope: !6961)
!6978 = !DILocation(line: 434, column: 7, scope: !6961)
!6979 = !DILocation(line: 435, column: 9, scope: !6961)
!6980 = !DILocation(line: 435, column: 16, scope: !6961)
!6981 = !DILocation(line: 435, column: 28, scope: !6961)
!6982 = !DILocation(line: 435, column: 2, scope: !6961)
!6983 = !DILocation(line: 436, column: 2, scope: !6984)
!6984 = distinct !DILexicalBlock(scope: !6985, file: !2, line: 436, column: 2)
!6985 = distinct !DILexicalBlock(scope: !6986, file: !2, line: 436, column: 2)
!6986 = distinct !DILexicalBlock(scope: !6987, file: !2, line: 436, column: 2)
!6987 = distinct !DILexicalBlock(scope: !6961, file: !2, line: 436, column: 2)
!6988 = !DILocation(line: 438, column: 2, scope: !6961)
!6989 = !DILocation(line: 440, column: 15, scope: !6961)
!6990 = !DILocation(line: 440, column: 26, scope: !6961)
!6991 = !DILocation(line: 440, column: 8, scope: !6961)
!6992 = !DILocation(line: 440, column: 6, scope: !6961)
!6993 = !DILocation(line: 441, column: 6, scope: !6961)
!6994 = !DILocation(line: 442, column: 6, scope: !6961)
!6995 = !DILocation(line: 443, column: 9, scope: !6961)
!6996 = !DILocation(line: 443, column: 15, scope: !6961)
!6997 = !DILocation(line: 443, column: 26, scope: !6961)
!6998 = !DILocation(line: 443, column: 2, scope: !6961)
!6999 = !DILocation(line: 446, column: 19, scope: !6961)
!7000 = !DILocation(line: 446, column: 30, scope: !6961)
!7001 = !DILocation(line: 446, column: 2, scope: !6961)
!7002 = !DILocation(line: 449, column: 7, scope: !6961)
!7003 = !DILocation(line: 450, column: 2, scope: !6961)
!7004 = !DILocation(line: 451, column: 19, scope: !7005)
!7005 = distinct !DILexicalBlock(scope: !6961, file: !2, line: 450, column: 5)
!7006 = !DILocation(line: 451, column: 30, scope: !7005)
!7007 = !DILocation(line: 451, column: 12, scope: !7005)
!7008 = !DILocation(line: 451, column: 10, scope: !7005)
!7009 = !DILocation(line: 452, column: 9, scope: !7010)
!7010 = distinct !DILexicalBlock(scope: !7005, file: !2, line: 452, column: 7)
!7011 = !DILocation(line: 452, column: 16, scope: !7010)
!7012 = !DILocation(line: 452, column: 7, scope: !7005)
!7013 = !DILocation(line: 453, column: 4, scope: !7010)
!7014 = !DILocation(line: 454, column: 3, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !7016, file: !2, line: 454, column: 3)
!7016 = distinct !DILexicalBlock(scope: !7017, file: !2, line: 454, column: 3)
!7017 = distinct !DILexicalBlock(scope: !7018, file: !2, line: 454, column: 3)
!7018 = distinct !DILexicalBlock(scope: !7005, file: !2, line: 454, column: 3)
!7019 = !DILocation(line: 455, column: 2, scope: !7005)
!7020 = !DILocation(line: 455, column: 11, scope: !6961)
!7021 = !DILocation(line: 455, column: 18, scope: !6961)
!7022 = distinct !{!7022, !7003, !7023, !5635, !5636}
!7023 = !DILocation(line: 455, column: 21, scope: !6961)
!7024 = !DILocation(line: 457, column: 7, scope: !7025)
!7025 = distinct !DILexicalBlock(scope: !6961, file: !2, line: 457, column: 6)
!7026 = !DILocation(line: 457, column: 6, scope: !6961)
!7027 = !DILocation(line: 458, column: 3, scope: !7028)
!7028 = distinct !DILexicalBlock(scope: !7025, file: !2, line: 457, column: 13)
!7029 = !DILocation(line: 459, column: 3, scope: !7028)
!7030 = !DILocation(line: 461, column: 2, scope: !6961)
!7031 = !DILocation(line: 462, column: 2, scope: !6961)
!7032 = !DILocation(line: 463, column: 1, scope: !6961)
!7033 = distinct !DISubprogram(name: "ehci_wait_for_port", scope: !2, file: !2, line: 654, type: !4158, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !7034)
!7034 = !{!7035, !7036, !7037, !7038}
!7035 = !DILocalVariable(name: "port", arg: 1, scope: !7033, file: !2, line: 654, type: !113)
!7036 = !DILocalVariable(name: "status", scope: !7033, file: !2, line: 656, type: !515)
!7037 = !DILocalVariable(name: "ret", scope: !7033, file: !2, line: 657, type: !113)
!7038 = !DILocalVariable(name: "reps", scope: !7033, file: !2, line: 657, type: !113)
!7039 = !DILocation(line: 654, column: 35, scope: !7033)
!7040 = !DILocation(line: 656, column: 2, scope: !7033)
!7041 = !DILocation(line: 656, column: 6, scope: !7033)
!7042 = !DILocation(line: 657, column: 2, scope: !7033)
!7043 = !DILocation(line: 657, column: 6, scope: !7033)
!7044 = !DILocation(line: 657, column: 11, scope: !7033)
!7045 = !DILocation(line: 659, column: 12, scope: !7046)
!7046 = distinct !DILexicalBlock(scope: !7033, file: !2, line: 659, column: 2)
!7047 = !DILocation(line: 659, column: 7, scope: !7046)
!7048 = !DILocation(line: 659, column: 17, scope: !7049)
!7049 = distinct !DILexicalBlock(scope: !7046, file: !2, line: 659, column: 2)
!7050 = !DILocation(line: 659, column: 22, scope: !7049)
!7051 = !DILocation(line: 659, column: 2, scope: !7046)
!7052 = !DILocation(line: 660, column: 19, scope: !7053)
!7053 = distinct !DILexicalBlock(scope: !7049, file: !2, line: 659, column: 37)
!7054 = !DILocation(line: 660, column: 30, scope: !7053)
!7055 = !DILocation(line: 660, column: 12, scope: !7053)
!7056 = !DILocation(line: 660, column: 10, scope: !7053)
!7057 = !DILocation(line: 661, column: 7, scope: !7058)
!7058 = distinct !DILexicalBlock(scope: !7053, file: !2, line: 661, column: 7)
!7059 = !DILocation(line: 661, column: 14, scope: !7058)
!7060 = !DILocation(line: 661, column: 7, scope: !7053)
!7061 = !DILocation(line: 662, column: 4, scope: !7058)
!7062 = !DILocation(line: 663, column: 3, scope: !7053)
!7063 = !DILocation(line: 664, column: 2, scope: !7053)
!7064 = !DILocation(line: 659, column: 33, scope: !7049)
!7065 = !DILocation(line: 659, column: 2, scope: !7049)
!7066 = distinct !{!7066, !7051, !7067, !5635, !5636}
!7067 = !DILocation(line: 664, column: 2, scope: !7046)
!7068 = !DILocation(line: 665, column: 24, scope: !7033)
!7069 = !DILocation(line: 665, column: 8, scope: !7033)
!7070 = !DILocation(line: 665, column: 6, scope: !7033)
!7071 = !DILocation(line: 666, column: 6, scope: !7072)
!7072 = distinct !DILexicalBlock(scope: !7033, file: !2, line: 666, column: 6)
!7073 = !DILocation(line: 666, column: 10, scope: !7072)
!7074 = !DILocation(line: 666, column: 6, scope: !7033)
!7075 = !DILocation(line: 667, column: 3, scope: !7072)
!7076 = !DILocation(line: 668, column: 2, scope: !7033)
!7077 = !DILocation(line: 669, column: 1, scope: !7033)
!7078 = distinct !DISubprogram(name: "dbgp_mdelay", scope: !2, file: !2, line: 180, type: !3146, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !7079)
!7079 = !{!7080, !7081}
!7080 = !DILocalVariable(name: "ms", arg: 1, scope: !7078, file: !2, line: 180, type: !113)
!7081 = !DILocalVariable(name: "i", scope: !7078, file: !2, line: 182, type: !113)
!7082 = !DILocation(line: 180, column: 36, scope: !7078)
!7083 = !DILocation(line: 182, column: 2, scope: !7078)
!7084 = !DILocation(line: 182, column: 6, scope: !7078)
!7085 = !DILocation(line: 184, column: 2, scope: !7078)
!7086 = !DILocation(line: 184, column: 11, scope: !7078)
!7087 = !DILocation(line: 185, column: 10, scope: !7088)
!7088 = distinct !DILexicalBlock(scope: !7089, file: !2, line: 185, column: 3)
!7089 = distinct !DILexicalBlock(scope: !7078, file: !2, line: 184, column: 15)
!7090 = !DILocation(line: 185, column: 8, scope: !7088)
!7091 = !DILocation(line: 185, column: 15, scope: !7092)
!7092 = distinct !DILexicalBlock(scope: !7088, file: !2, line: 185, column: 3)
!7093 = !DILocation(line: 185, column: 17, scope: !7092)
!7094 = !DILocation(line: 185, column: 3, scope: !7088)
!7095 = !DILocation(line: 186, column: 4, scope: !7092)
!7096 = !DILocation(line: 185, column: 26, scope: !7092)
!7097 = !DILocation(line: 185, column: 3, scope: !7092)
!7098 = distinct !{!7098, !7094, !7099, !5635, !5636}
!7099 = !DILocation(line: 186, column: 18, scope: !7088)
!7100 = distinct !{!7100, !7085, !7101, !5635, !5636}
!7101 = !DILocation(line: 187, column: 2, scope: !7078)
!7102 = !DILocation(line: 188, column: 1, scope: !7078)
!7103 = distinct !DISubprogram(name: "dbgp_control_msg", scope: !2, file: !2, line: 324, type: !7104, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !7106)
!7104 = !DISubroutineType(types: !7105)
!7105 = !{!113, !45, !113, !113, !113, !113, !218, !113}
!7106 = !{!7107, !7108, !7109, !7110, !7111, !7112, !7113, !7114, !7115, !7116, !7117, !7125, !7126}
!7107 = !DILocalVariable(name: "devnum", arg: 1, scope: !7103, file: !2, line: 324, type: !45)
!7108 = !DILocalVariable(name: "requesttype", arg: 2, scope: !7103, file: !2, line: 324, type: !113)
!7109 = !DILocalVariable(name: "request", arg: 3, scope: !7103, file: !2, line: 325, type: !113)
!7110 = !DILocalVariable(name: "value", arg: 4, scope: !7103, file: !2, line: 325, type: !113)
!7111 = !DILocalVariable(name: "index", arg: 5, scope: !7103, file: !2, line: 325, type: !113)
!7112 = !DILocalVariable(name: "data", arg: 6, scope: !7103, file: !2, line: 325, type: !218)
!7113 = !DILocalVariable(name: "size", arg: 7, scope: !7103, file: !2, line: 325, type: !113)
!7114 = !DILocalVariable(name: "pids", scope: !7103, file: !2, line: 327, type: !515)
!7115 = !DILocalVariable(name: "addr", scope: !7103, file: !2, line: 327, type: !515)
!7116 = !DILocalVariable(name: "ctrl", scope: !7103, file: !2, line: 327, type: !515)
!7117 = !DILocalVariable(name: "req", scope: !7103, file: !2, line: 328, type: !7118)
!7118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ctrlrequest", file: !6097, line: 210, size: 64, elements: !7119)
!7119 = !{!7120, !7121, !7122, !7123, !7124}
!7120 = !DIDerivedType(tag: DW_TAG_member, name: "bRequestType", scope: !7118, file: !6097, line: 211, baseType: !331, size: 8)
!7121 = !DIDerivedType(tag: DW_TAG_member, name: "bRequest", scope: !7118, file: !6097, line: 212, baseType: !331, size: 8, offset: 8)
!7122 = !DIDerivedType(tag: DW_TAG_member, name: "wValue", scope: !7118, file: !6097, line: 213, baseType: !221, size: 16, offset: 16)
!7123 = !DIDerivedType(tag: DW_TAG_member, name: "wIndex", scope: !7118, file: !6097, line: 214, baseType: !221, size: 16, offset: 32)
!7124 = !DIDerivedType(tag: DW_TAG_member, name: "wLength", scope: !7118, file: !6097, line: 215, baseType: !221, size: 16, offset: 48)
!7125 = !DILocalVariable(name: "read", scope: !7103, file: !2, line: 329, type: !113)
!7126 = !DILocalVariable(name: "ret", scope: !7103, file: !2, line: 330, type: !113)
!7127 = !DILocation(line: 324, column: 38, scope: !7103)
!7128 = !DILocation(line: 324, column: 50, scope: !7103)
!7129 = !DILocation(line: 325, column: 6, scope: !7103)
!7130 = !DILocation(line: 325, column: 19, scope: !7103)
!7131 = !DILocation(line: 325, column: 30, scope: !7103)
!7132 = !DILocation(line: 325, column: 43, scope: !7103)
!7133 = !DILocation(line: 325, column: 53, scope: !7103)
!7134 = !DILocation(line: 327, column: 2, scope: !7103)
!7135 = !DILocation(line: 327, column: 6, scope: !7103)
!7136 = !DILocation(line: 327, column: 12, scope: !7103)
!7137 = !DILocation(line: 327, column: 18, scope: !7103)
!7138 = !DILocation(line: 328, column: 2, scope: !7103)
!7139 = !DILocation(line: 328, column: 25, scope: !7103)
!7140 = !DILocation(line: 329, column: 2, scope: !7103)
!7141 = !DILocation(line: 329, column: 6, scope: !7103)
!7142 = !DILocation(line: 330, column: 2, scope: !7103)
!7143 = !DILocation(line: 330, column: 6, scope: !7103)
!7144 = !DILocation(line: 332, column: 10, scope: !7103)
!7145 = !DILocation(line: 332, column: 22, scope: !7103)
!7146 = !DILocation(line: 332, column: 36, scope: !7103)
!7147 = !DILocation(line: 332, column: 7, scope: !7103)
!7148 = !DILocation(line: 333, column: 6, scope: !7149)
!7149 = distinct !DILexicalBlock(scope: !7103, file: !2, line: 333, column: 6)
!7150 = !DILocation(line: 333, column: 14, scope: !7149)
!7151 = !DILocation(line: 333, column: 11, scope: !7149)
!7152 = !DILocation(line: 333, column: 6, scope: !7103)
!7153 = !DILocation(line: 334, column: 3, scope: !7149)
!7154 = !DILocation(line: 337, column: 21, scope: !7103)
!7155 = !DILocation(line: 337, column: 6, scope: !7103)
!7156 = !DILocation(line: 337, column: 19, scope: !7103)
!7157 = !DILocation(line: 338, column: 17, scope: !7103)
!7158 = !DILocation(line: 338, column: 6, scope: !7103)
!7159 = !DILocation(line: 338, column: 15, scope: !7103)
!7160 = !DILocation(line: 339, column: 15, scope: !7103)
!7161 = !DILocation(line: 339, column: 6, scope: !7103)
!7162 = !DILocation(line: 339, column: 13, scope: !7103)
!7163 = !DILocation(line: 340, column: 15, scope: !7103)
!7164 = !DILocation(line: 340, column: 6, scope: !7103)
!7165 = !DILocation(line: 340, column: 13, scope: !7103)
!7166 = !DILocation(line: 341, column: 16, scope: !7103)
!7167 = !DILocation(line: 341, column: 6, scope: !7103)
!7168 = !DILocation(line: 341, column: 14, scope: !7103)
!7169 = !DILocation(line: 343, column: 7, scope: !7103)
!7170 = !DILocation(line: 344, column: 9, scope: !7103)
!7171 = !DILocation(line: 344, column: 7, scope: !7103)
!7172 = !DILocation(line: 346, column: 16, scope: !7103)
!7173 = !DILocation(line: 346, column: 28, scope: !7103)
!7174 = !DILocation(line: 346, column: 9, scope: !7103)
!7175 = !DILocation(line: 346, column: 7, scope: !7103)
!7176 = !DILocation(line: 347, column: 25, scope: !7103)
!7177 = !DILocation(line: 347, column: 9, scope: !7103)
!7178 = !DILocation(line: 347, column: 7, scope: !7103)
!7179 = !DILocation(line: 348, column: 7, scope: !7103)
!7180 = !DILocation(line: 349, column: 7, scope: !7103)
!7181 = !DILocation(line: 352, column: 2, scope: !7103)
!7182 = !DILocation(line: 353, column: 9, scope: !7103)
!7183 = !DILocation(line: 353, column: 16, scope: !7103)
!7184 = !DILocation(line: 353, column: 28, scope: !7103)
!7185 = !DILocation(line: 353, column: 2, scope: !7103)
!7186 = !DILocation(line: 354, column: 9, scope: !7103)
!7187 = !DILocation(line: 354, column: 16, scope: !7103)
!7188 = !DILocation(line: 354, column: 28, scope: !7103)
!7189 = !DILocation(line: 354, column: 2, scope: !7103)
!7190 = !DILocation(line: 355, column: 29, scope: !7103)
!7191 = !DILocation(line: 355, column: 8, scope: !7103)
!7192 = !DILocation(line: 355, column: 6, scope: !7103)
!7193 = !DILocation(line: 356, column: 6, scope: !7194)
!7194 = distinct !DILexicalBlock(scope: !7103, file: !2, line: 356, column: 6)
!7195 = !DILocation(line: 356, column: 10, scope: !7194)
!7196 = !DILocation(line: 356, column: 6, scope: !7103)
!7197 = !DILocation(line: 357, column: 10, scope: !7194)
!7198 = !DILocation(line: 357, column: 3, scope: !7194)
!7199 = !DILocation(line: 360, column: 24, scope: !7103)
!7200 = !DILocation(line: 360, column: 35, scope: !7103)
!7201 = !DILocation(line: 360, column: 41, scope: !7103)
!7202 = !DILocation(line: 360, column: 9, scope: !7103)
!7203 = !DILocation(line: 360, column: 2, scope: !7103)
!7204 = !DILocation(line: 361, column: 1, scope: !7103)
!7205 = distinct !DISubprogram(name: "ehci_reset_port", scope: !2, file: !2, line: 608, type: !4158, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !7206)
!7206 = !{!7207, !7208, !7209, !7210, !7211}
!7207 = !DILocalVariable(name: "port", arg: 1, scope: !7205, file: !2, line: 608, type: !113)
!7208 = !DILocalVariable(name: "portsc", scope: !7205, file: !2, line: 610, type: !515)
!7209 = !DILocalVariable(name: "delay_time", scope: !7205, file: !2, line: 611, type: !515)
!7210 = !DILocalVariable(name: "delay", scope: !7205, file: !2, line: 611, type: !515)
!7211 = !DILocalVariable(name: "loop", scope: !7205, file: !2, line: 612, type: !113)
!7212 = !DILocation(line: 608, column: 32, scope: !7205)
!7213 = !DILocation(line: 610, column: 2, scope: !7205)
!7214 = !DILocation(line: 610, column: 6, scope: !7205)
!7215 = !DILocation(line: 611, column: 2, scope: !7205)
!7216 = !DILocation(line: 611, column: 6, scope: !7205)
!7217 = !DILocation(line: 611, column: 18, scope: !7205)
!7218 = !DILocation(line: 612, column: 2, scope: !7205)
!7219 = !DILocation(line: 612, column: 6, scope: !7205)
!7220 = !DILocation(line: 614, column: 2, scope: !7205)
!7221 = !DILocation(line: 616, column: 18, scope: !7205)
!7222 = !DILocation(line: 616, column: 29, scope: !7205)
!7223 = !DILocation(line: 616, column: 41, scope: !7205)
!7224 = !DILocation(line: 616, column: 46, scope: !7205)
!7225 = !DILocation(line: 616, column: 11, scope: !7205)
!7226 = !DILocation(line: 616, column: 9, scope: !7205)
!7227 = !DILocation(line: 617, column: 9, scope: !7205)
!7228 = !DILocation(line: 618, column: 9, scope: !7205)
!7229 = !DILocation(line: 619, column: 9, scope: !7205)
!7230 = !DILocation(line: 619, column: 18, scope: !7205)
!7231 = !DILocation(line: 619, column: 29, scope: !7205)
!7232 = !DILocation(line: 619, column: 41, scope: !7205)
!7233 = !DILocation(line: 619, column: 46, scope: !7205)
!7234 = !DILocation(line: 619, column: 2, scope: !7205)
!7235 = !DILocation(line: 621, column: 8, scope: !7205)
!7236 = !DILocation(line: 622, column: 18, scope: !7237)
!7237 = distinct !DILexicalBlock(scope: !7205, file: !2, line: 622, column: 2)
!7238 = !DILocation(line: 622, column: 7, scope: !7237)
!7239 = !DILocation(line: 622, column: 23, scope: !7240)
!7240 = distinct !DILexicalBlock(scope: !7237, file: !2, line: 622, column: 2)
!7241 = !DILocation(line: 622, column: 34, scope: !7240)
!7242 = !DILocation(line: 622, column: 2, scope: !7237)
!7243 = !DILocation(line: 624, column: 15, scope: !7244)
!7244 = distinct !DILexicalBlock(scope: !7240, file: !2, line: 623, column: 28)
!7245 = !DILocation(line: 624, column: 3, scope: !7244)
!7246 = !DILocation(line: 625, column: 19, scope: !7244)
!7247 = !DILocation(line: 625, column: 30, scope: !7244)
!7248 = !DILocation(line: 625, column: 42, scope: !7244)
!7249 = !DILocation(line: 625, column: 47, scope: !7244)
!7250 = !DILocation(line: 625, column: 12, scope: !7244)
!7251 = !DILocation(line: 625, column: 10, scope: !7244)
!7252 = !DILocation(line: 626, column: 9, scope: !7253)
!7253 = distinct !DILexicalBlock(scope: !7244, file: !2, line: 626, column: 7)
!7254 = !DILocation(line: 626, column: 16, scope: !7253)
!7255 = !DILocation(line: 626, column: 7, scope: !7244)
!7256 = !DILocation(line: 627, column: 4, scope: !7253)
!7257 = !DILocation(line: 628, column: 2, scope: !7244)
!7258 = !DILocation(line: 623, column: 21, scope: !7240)
!7259 = !DILocation(line: 623, column: 18, scope: !7240)
!7260 = !DILocation(line: 622, column: 2, scope: !7240)
!7261 = distinct !{!7261, !7242, !7262, !5635, !5636}
!7262 = !DILocation(line: 628, column: 2, scope: !7237)
!7263 = !DILocation(line: 629, column: 6, scope: !7264)
!7264 = distinct !DILexicalBlock(scope: !7205, file: !2, line: 629, column: 6)
!7265 = !DILocation(line: 629, column: 13, scope: !7264)
!7266 = !DILocation(line: 629, column: 6, scope: !7205)
!7267 = !DILocation(line: 631, column: 8, scope: !7268)
!7268 = distinct !DILexicalBlock(scope: !7264, file: !2, line: 629, column: 27)
!7269 = !DILocation(line: 632, column: 10, scope: !7268)
!7270 = !DILocation(line: 632, column: 17, scope: !7268)
!7271 = !DILocation(line: 633, column: 5, scope: !7268)
!7272 = !DILocation(line: 633, column: 16, scope: !7268)
!7273 = !DILocation(line: 633, column: 28, scope: !7268)
!7274 = !DILocation(line: 633, column: 33, scope: !7268)
!7275 = !DILocation(line: 632, column: 3, scope: !7268)
!7276 = !DILocation(line: 634, column: 3, scope: !7268)
!7277 = !DILocation(line: 635, column: 4, scope: !7278)
!7278 = distinct !DILexicalBlock(scope: !7279, file: !2, line: 635, column: 4)
!7279 = distinct !DILexicalBlock(scope: !7280, file: !2, line: 635, column: 4)
!7280 = distinct !DILexicalBlock(scope: !7281, file: !2, line: 635, column: 4)
!7281 = distinct !DILexicalBlock(scope: !7282, file: !2, line: 635, column: 4)
!7282 = distinct !DILexicalBlock(scope: !7268, file: !2, line: 634, column: 6)
!7283 = !DILocation(line: 636, column: 20, scope: !7282)
!7284 = !DILocation(line: 636, column: 31, scope: !7282)
!7285 = !DILocation(line: 636, column: 43, scope: !7282)
!7286 = !DILocation(line: 636, column: 47, scope: !7282)
!7287 = !DILocation(line: 636, column: 13, scope: !7282)
!7288 = !DILocation(line: 636, column: 11, scope: !7282)
!7289 = !DILocation(line: 637, column: 3, scope: !7282)
!7290 = !DILocation(line: 637, column: 13, scope: !7268)
!7291 = !DILocation(line: 637, column: 20, scope: !7268)
!7292 = !DILocation(line: 637, column: 34, scope: !7268)
!7293 = !DILocation(line: 637, column: 38, scope: !7268)
!7294 = !DILocation(line: 637, column: 45, scope: !7268)
!7295 = !DILocation(line: 0, scope: !7268)
!7296 = distinct !{!7296, !7276, !7297, !5635, !5636}
!7297 = !DILocation(line: 637, column: 49, scope: !7268)
!7298 = !DILocation(line: 638, column: 2, scope: !7268)
!7299 = !DILocation(line: 641, column: 8, scope: !7300)
!7300 = distinct !DILexicalBlock(scope: !7205, file: !2, line: 641, column: 6)
!7301 = !DILocation(line: 641, column: 15, scope: !7300)
!7302 = !DILocation(line: 641, column: 6, scope: !7205)
!7303 = !DILocation(line: 642, column: 3, scope: !7300)
!7304 = !DILocation(line: 645, column: 7, scope: !7305)
!7305 = distinct !DILexicalBlock(scope: !7205, file: !2, line: 645, column: 6)
!7306 = !DILocation(line: 645, column: 14, scope: !7305)
!7307 = !DILocation(line: 645, column: 6, scope: !7205)
!7308 = !DILocation(line: 646, column: 3, scope: !7305)
!7309 = !DILocation(line: 649, column: 8, scope: !7310)
!7310 = distinct !DILexicalBlock(scope: !7205, file: !2, line: 649, column: 6)
!7311 = !DILocation(line: 649, column: 15, scope: !7310)
!7312 = !DILocation(line: 649, column: 29, scope: !7310)
!7313 = !DILocation(line: 649, column: 33, scope: !7310)
!7314 = !DILocation(line: 649, column: 40, scope: !7310)
!7315 = !DILocation(line: 649, column: 6, scope: !7205)
!7316 = !DILocation(line: 650, column: 3, scope: !7310)
!7317 = !DILocation(line: 651, column: 2, scope: !7205)
!7318 = !DILocation(line: 652, column: 1, scope: !7205)
!7319 = distinct !DISubprogram(name: "__outb", scope: !7320, file: !7320, line: 22, type: !7321, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !7323)
!7320 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!7321 = !DISubroutineType(types: !7322)
!7322 = !{null, !329, !338}
!7323 = !{!7324, !7325}
!7324 = !DILocalVariable(name: "value", arg: 1, scope: !7319, file: !7320, line: 22, type: !329)
!7325 = !DILocalVariable(name: "port", arg: 2, scope: !7319, file: !7320, line: 22, type: !338)
!7326 = !DILocation(line: 22, column: 1, scope: !7319)
!7327 = !{i64 2150871648}
!7328 = distinct !DISubprogram(name: "dbgp_bulk_read", scope: !2, file: !2, line: 293, type: !7329, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !7331)
!7329 = !DISubroutineType(types: !7330)
!7330 = !{!113, !45, !45, !218, !113, !113}
!7331 = !{!7332, !7333, !7334, !7335, !7336, !7337, !7338, !7339, !7340}
!7332 = !DILocalVariable(name: "devnum", arg: 1, scope: !7328, file: !2, line: 293, type: !45)
!7333 = !DILocalVariable(name: "endpoint", arg: 2, scope: !7328, file: !2, line: 293, type: !45)
!7334 = !DILocalVariable(name: "data", arg: 3, scope: !7328, file: !2, line: 293, type: !218)
!7335 = !DILocalVariable(name: "size", arg: 4, scope: !7328, file: !2, line: 294, type: !113)
!7336 = !DILocalVariable(name: "loops", arg: 5, scope: !7328, file: !2, line: 294, type: !113)
!7337 = !DILocalVariable(name: "pids", scope: !7328, file: !2, line: 296, type: !515)
!7338 = !DILocalVariable(name: "addr", scope: !7328, file: !2, line: 296, type: !515)
!7339 = !DILocalVariable(name: "ctrl", scope: !7328, file: !2, line: 296, type: !515)
!7340 = !DILocalVariable(name: "ret", scope: !7328, file: !2, line: 297, type: !113)
!7341 = !DILocation(line: 293, column: 36, scope: !7328)
!7342 = !DILocation(line: 293, column: 53, scope: !7328)
!7343 = !DILocation(line: 293, column: 69, scope: !7328)
!7344 = !DILocation(line: 294, column: 10, scope: !7328)
!7345 = !DILocation(line: 294, column: 20, scope: !7328)
!7346 = !DILocation(line: 296, column: 2, scope: !7328)
!7347 = !DILocation(line: 296, column: 6, scope: !7328)
!7348 = !DILocation(line: 296, column: 12, scope: !7328)
!7349 = !DILocation(line: 296, column: 18, scope: !7328)
!7350 = !DILocation(line: 297, column: 2, scope: !7328)
!7351 = !DILocation(line: 297, column: 6, scope: !7328)
!7352 = !DILocation(line: 299, column: 6, scope: !7353)
!7353 = distinct !DILexicalBlock(scope: !7328, file: !2, line: 299, column: 6)
!7354 = !DILocation(line: 299, column: 11, scope: !7353)
!7355 = !DILocation(line: 299, column: 6, scope: !7328)
!7356 = !DILocation(line: 300, column: 3, scope: !7353)
!7357 = !DILocation(line: 302, column: 9, scope: !7328)
!7358 = !DILocation(line: 302, column: 7, scope: !7328)
!7359 = !DILocation(line: 304, column: 16, scope: !7328)
!7360 = !DILocation(line: 304, column: 28, scope: !7328)
!7361 = !DILocation(line: 304, column: 9, scope: !7328)
!7362 = !DILocation(line: 304, column: 7, scope: !7328)
!7363 = !DILocation(line: 305, column: 30, scope: !7328)
!7364 = !DILocation(line: 305, column: 9, scope: !7328)
!7365 = !DILocation(line: 305, column: 7, scope: !7328)
!7366 = !DILocation(line: 307, column: 16, scope: !7328)
!7367 = !DILocation(line: 307, column: 28, scope: !7328)
!7368 = !DILocation(line: 307, column: 9, scope: !7328)
!7369 = !DILocation(line: 307, column: 7, scope: !7328)
!7370 = !DILocation(line: 308, column: 25, scope: !7328)
!7371 = !DILocation(line: 308, column: 31, scope: !7328)
!7372 = !DILocation(line: 308, column: 9, scope: !7328)
!7373 = !DILocation(line: 308, column: 7, scope: !7328)
!7374 = !DILocation(line: 309, column: 7, scope: !7328)
!7375 = !DILocation(line: 310, column: 7, scope: !7328)
!7376 = !DILocation(line: 312, column: 9, scope: !7328)
!7377 = !DILocation(line: 312, column: 16, scope: !7328)
!7378 = !DILocation(line: 312, column: 28, scope: !7328)
!7379 = !DILocation(line: 312, column: 2, scope: !7328)
!7380 = !DILocation(line: 313, column: 9, scope: !7328)
!7381 = !DILocation(line: 313, column: 16, scope: !7328)
!7382 = !DILocation(line: 313, column: 28, scope: !7328)
!7383 = !DILocation(line: 313, column: 2, scope: !7328)
!7384 = !DILocation(line: 314, column: 29, scope: !7328)
!7385 = !DILocation(line: 314, column: 35, scope: !7328)
!7386 = !DILocation(line: 314, column: 8, scope: !7328)
!7387 = !DILocation(line: 314, column: 6, scope: !7328)
!7388 = !DILocation(line: 315, column: 6, scope: !7389)
!7389 = distinct !DILexicalBlock(scope: !7328, file: !2, line: 315, column: 6)
!7390 = !DILocation(line: 315, column: 10, scope: !7389)
!7391 = !DILocation(line: 315, column: 6, scope: !7328)
!7392 = !DILocation(line: 316, column: 10, scope: !7389)
!7393 = !DILocation(line: 316, column: 3, scope: !7389)
!7394 = !DILocation(line: 318, column: 6, scope: !7395)
!7395 = distinct !DILexicalBlock(scope: !7328, file: !2, line: 318, column: 6)
!7396 = !DILocation(line: 318, column: 13, scope: !7395)
!7397 = !DILocation(line: 318, column: 11, scope: !7395)
!7398 = !DILocation(line: 318, column: 6, scope: !7328)
!7399 = !DILocation(line: 319, column: 10, scope: !7395)
!7400 = !DILocation(line: 319, column: 8, scope: !7395)
!7401 = !DILocation(line: 319, column: 3, scope: !7395)
!7402 = !DILocation(line: 320, column: 16, scope: !7328)
!7403 = !DILocation(line: 320, column: 22, scope: !7328)
!7404 = !DILocation(line: 320, column: 2, scope: !7328)
!7405 = !DILocation(line: 321, column: 9, scope: !7328)
!7406 = !DILocation(line: 321, column: 2, scope: !7328)
!7407 = !DILocation(line: 322, column: 1, scope: !7328)
!7408 = distinct !DISubprogram(name: "dbgp_pid_read_update", scope: !2, file: !2, line: 157, type: !5299, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !7409)
!7409 = !{!7410, !7411}
!7410 = !DILocalVariable(name: "x", arg: 1, scope: !7408, file: !2, line: 157, type: !515)
!7411 = !DILocalVariable(name: "tok", arg: 2, scope: !7408, file: !2, line: 157, type: !515)
!7412 = !DILocation(line: 157, column: 44, scope: !7408)
!7413 = !DILocation(line: 157, column: 51, scope: !7408)
!7414 = !DILocation(line: 159, column: 10, scope: !7408)
!7415 = !DILocation(line: 159, column: 12, scope: !7408)
!7416 = !DILocation(line: 159, column: 26, scope: !7408)
!7417 = !DILocation(line: 159, column: 52, scope: !7408)
!7418 = !DILocation(line: 159, column: 56, scope: !7408)
!7419 = !DILocation(line: 159, column: 49, scope: !7408)
!7420 = !DILocation(line: 159, column: 2, scope: !7408)
!7421 = distinct !DISubprogram(name: "dbgp_get_data", scope: !2, file: !2, line: 251, type: !7422, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !7424)
!7422 = !DISubroutineType(types: !7423)
!7423 = !{null, !218, !113}
!7424 = !{!7425, !7426, !7427, !7428, !7429, !7430}
!7425 = !DILocalVariable(name: "buf", arg: 1, scope: !7421, file: !2, line: 251, type: !218)
!7426 = !DILocalVariable(name: "size", arg: 2, scope: !7421, file: !2, line: 251, type: !113)
!7427 = !DILocalVariable(name: "bytes", scope: !7421, file: !2, line: 253, type: !2744)
!7428 = !DILocalVariable(name: "lo", scope: !7421, file: !2, line: 254, type: !515)
!7429 = !DILocalVariable(name: "hi", scope: !7421, file: !2, line: 254, type: !515)
!7430 = !DILocalVariable(name: "i", scope: !7421, file: !2, line: 255, type: !113)
!7431 = !DILocation(line: 251, column: 40, scope: !7421)
!7432 = !DILocation(line: 251, column: 49, scope: !7421)
!7433 = !DILocation(line: 253, column: 2, scope: !7421)
!7434 = !DILocation(line: 253, column: 17, scope: !7421)
!7435 = !DILocation(line: 253, column: 25, scope: !7421)
!7436 = !DILocation(line: 254, column: 2, scope: !7421)
!7437 = !DILocation(line: 254, column: 6, scope: !7421)
!7438 = !DILocation(line: 254, column: 10, scope: !7421)
!7439 = !DILocation(line: 255, column: 2, scope: !7421)
!7440 = !DILocation(line: 255, column: 6, scope: !7421)
!7441 = !DILocation(line: 257, column: 14, scope: !7421)
!7442 = !DILocation(line: 257, column: 26, scope: !7421)
!7443 = !DILocation(line: 257, column: 7, scope: !7421)
!7444 = !DILocation(line: 257, column: 5, scope: !7421)
!7445 = !DILocation(line: 258, column: 14, scope: !7421)
!7446 = !DILocation(line: 258, column: 26, scope: !7421)
!7447 = !DILocation(line: 258, column: 7, scope: !7421)
!7448 = !DILocation(line: 258, column: 5, scope: !7421)
!7449 = !DILocation(line: 259, column: 9, scope: !7450)
!7450 = distinct !DILexicalBlock(scope: !7421, file: !2, line: 259, column: 2)
!7451 = !DILocation(line: 259, column: 7, scope: !7450)
!7452 = !DILocation(line: 259, column: 14, scope: !7453)
!7453 = distinct !DILexicalBlock(scope: !7450, file: !2, line: 259, column: 2)
!7454 = !DILocation(line: 259, column: 16, scope: !7453)
!7455 = !DILocation(line: 259, column: 20, scope: !7453)
!7456 = !DILocation(line: 259, column: 23, scope: !7453)
!7457 = !DILocation(line: 259, column: 27, scope: !7453)
!7458 = !DILocation(line: 259, column: 25, scope: !7453)
!7459 = !DILocation(line: 0, scope: !7453)
!7460 = !DILocation(line: 259, column: 2, scope: !7450)
!7461 = !DILocation(line: 260, column: 15, scope: !7453)
!7462 = !DILocation(line: 260, column: 24, scope: !7453)
!7463 = !DILocation(line: 260, column: 23, scope: !7453)
!7464 = !DILocation(line: 260, column: 18, scope: !7453)
!7465 = !DILocation(line: 260, column: 28, scope: !7453)
!7466 = !DILocation(line: 260, column: 14, scope: !7453)
!7467 = !DILocation(line: 260, column: 3, scope: !7453)
!7468 = !DILocation(line: 260, column: 9, scope: !7453)
!7469 = !DILocation(line: 260, column: 12, scope: !7453)
!7470 = !DILocation(line: 259, column: 34, scope: !7453)
!7471 = !DILocation(line: 259, column: 2, scope: !7453)
!7472 = distinct !{!7472, !7460, !7473, !5635, !5636}
!7473 = !DILocation(line: 260, column: 30, scope: !7450)
!7474 = !DILocation(line: 261, column: 2, scope: !7421)
!7475 = !DILocation(line: 261, column: 9, scope: !7476)
!7476 = distinct !DILexicalBlock(scope: !7477, file: !2, line: 261, column: 2)
!7477 = distinct !DILexicalBlock(scope: !7421, file: !2, line: 261, column: 2)
!7478 = !DILocation(line: 261, column: 11, scope: !7476)
!7479 = !DILocation(line: 261, column: 15, scope: !7476)
!7480 = !DILocation(line: 261, column: 18, scope: !7476)
!7481 = !DILocation(line: 261, column: 22, scope: !7476)
!7482 = !DILocation(line: 261, column: 20, scope: !7476)
!7483 = !DILocation(line: 0, scope: !7476)
!7484 = !DILocation(line: 261, column: 2, scope: !7477)
!7485 = !DILocation(line: 262, column: 15, scope: !7476)
!7486 = !DILocation(line: 262, column: 25, scope: !7476)
!7487 = !DILocation(line: 262, column: 27, scope: !7476)
!7488 = !DILocation(line: 262, column: 23, scope: !7476)
!7489 = !DILocation(line: 262, column: 18, scope: !7476)
!7490 = !DILocation(line: 262, column: 34, scope: !7476)
!7491 = !DILocation(line: 262, column: 14, scope: !7476)
!7492 = !DILocation(line: 262, column: 3, scope: !7476)
!7493 = !DILocation(line: 262, column: 9, scope: !7476)
!7494 = !DILocation(line: 262, column: 12, scope: !7476)
!7495 = !DILocation(line: 261, column: 29, scope: !7476)
!7496 = !DILocation(line: 261, column: 2, scope: !7476)
!7497 = distinct !{!7497, !7484, !7498, !5635, !5636}
!7498 = !DILocation(line: 262, column: 36, scope: !7477)
!7499 = !DILocation(line: 263, column: 1, scope: !7421)
