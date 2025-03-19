; ModuleID = 'arch/x86/boot/main.c'
source_filename = "arch/x86/boot/main.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type { i64, i64, i32 }
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon, %union.anon.5, i8, i8 }>
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i16, i32, i64 }
%struct.port_io_ops = type { ptr, ptr, ptr }
%struct.cpu_features = type { i32, i32, i32, [22 x i32] }
%struct.old_cmdline = type { i16, i16 }
%struct.biosregs = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.18 = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.19 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@_end = external dso_local global [0 x i8], align 1
@HEAP = dso_local global ptr @_end, align 4, !dbg !0
@heap_end = dso_local global ptr @_end, align 4, !dbg !15
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !dbg !17
@.str.1 = private unnamed_addr constant [29 x i8] c"early console in setup code\0A\00", align 1, !dbg !22
@.str.2 = private unnamed_addr constant [64 x i8] c"Unable to boot - please use a kernel appropriate for your CPU.\0A\00", align 1, !dbg !27
@boot_params = dso_local global %struct.boot_params zeroinitializer, align 16, !dbg !32
@pio_ops = dso_local global %struct.port_io_ops zeroinitializer, align 4, !dbg !371
@hdr = external dso_local global %struct.setup_header, align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"WARNING: Ancient bootloader, some functionality may be limited!\0A\00", align 1, !dbg !391
@cpu = external dso_local global %struct.cpu_features, align 4

; Function Attrs: nounwind
define dso_local void @main() #0 !dbg !402 {
entry:
  call void @init_default_io_ops() #8, !dbg !405
  call void @copy_boot_params() #8, !dbg !406
  call void @console_init() #8, !dbg !407
  %call = call i32 @cmdline_find_option_bool(ptr inreg noundef @.str) #8, !dbg !408
  %tobool = icmp ne i32 %call, 0, !dbg !408
  br i1 %tobool, label %if.then, label %if.end, !dbg !410

if.then:                                          ; preds = %entry
  call void @puts(ptr inreg noundef @.str.1) #8, !dbg !411
  br label %if.end, !dbg !411

if.end:                                           ; preds = %if.then, %entry
  call void @init_heap() #8, !dbg !412
  %call1 = call i32 @validate_cpu() #8, !dbg !413
  %tobool2 = icmp ne i32 %call1, 0, !dbg !413
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !415

if.then3:                                         ; preds = %if.end
  call void @puts(ptr inreg noundef @.str.2) #8, !dbg !416
  call void @die() #9, !dbg !418
  unreachable, !dbg !418

if.end4:                                          ; preds = %if.end
  call void @set_bios_mode() #8, !dbg !419
  call void @detect_memory() #8, !dbg !420
  call void @keyboard_init() #8, !dbg !421
  call void @query_ist() #8, !dbg !422
  call void @set_video() #8, !dbg !423
  call void @go_to_protected_mode() #9, !dbg !424
  unreachable, !dbg !424
}

; Function Attrs: inlinehint nounwind
define internal void @init_default_io_ops() #1 !dbg !425 {
entry:
  store ptr @__inb, ptr @pio_ops, align 4, !dbg !426
  store ptr @__outb, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !427
  store ptr @__outw, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 2), align 4, !dbg !428
  ret void, !dbg !429
}

; Function Attrs: nounwind
define internal void @copy_boot_params() #0 !dbg !430 {
entry:
  %oldcmd = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %cmdline_seg = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldcmd) #10, !dbg !445
  call void @llvm.dbg.declare(metadata ptr %oldcmd, metadata !432, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #10, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !440, metadata !DIExpression()), !dbg !447
  store i32 32, ptr %__ptr, align 4, !dbg !447
  %0 = load i32, ptr %__ptr, align 4, !dbg !447
  %add = add i32 %0, 0, !dbg !447
  %1 = inttoptr i32 %add to ptr, !dbg !447
  store ptr %1, ptr %tmp, align 4, !dbg !447
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #10, !dbg !448
  %2 = load ptr, ptr %tmp, align 4, !dbg !447
  store ptr %2, ptr %oldcmd, align 4, !dbg !446
  br label %do.body, !dbg !449

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !450

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !450

do.end:                                           ; preds = %do.cond
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28), ptr align 1 @hdr, i32 123, i1 false), !dbg !452
  %3 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 23), align 1, !dbg !453
  %tobool = icmp ne i32 %3, 0, !dbg !454
  br i1 %tobool, label %if.end11, label %land.lhs.true, !dbg !455

land.lhs.true:                                    ; preds = %do.end
  %4 = load ptr, ptr %oldcmd, align 4, !dbg !456
  %cl_magic = getelementptr inbounds %struct.old_cmdline, ptr %4, i32 0, i32 0, !dbg !457
  %5 = load i16, ptr %cl_magic, align 2, !dbg !457
  %conv = zext i16 %5 to i32, !dbg !456
  %cmp = icmp eq i32 %conv, 41791, !dbg !458
  br i1 %cmp, label %if.then, label %if.end11, !dbg !459

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 2, ptr %cmdline_seg) #10, !dbg !460
  call void @llvm.dbg.declare(metadata ptr %cmdline_seg, metadata !442, metadata !DIExpression()), !dbg !461
  %6 = load ptr, ptr %oldcmd, align 4, !dbg !462
  %cl_offset = getelementptr inbounds %struct.old_cmdline, ptr %6, i32 0, i32 1, !dbg !464
  %7 = load i16, ptr %cl_offset, align 2, !dbg !464
  %conv2 = zext i16 %7 to i32, !dbg !462
  %8 = load i16, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 15), align 1, !dbg !465
  %conv3 = zext i16 %8 to i32, !dbg !466
  %cmp4 = icmp slt i32 %conv2, %conv3, !dbg !467
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !468

if.then6:                                         ; preds = %if.then
  %call = call zeroext i16 @ds() #8, !dbg !469
  store i16 %call, ptr %cmdline_seg, align 2, !dbg !470
  br label %if.end, !dbg !471

if.else:                                          ; preds = %if.then
  store i16 -28672, ptr %cmdline_seg, align 2, !dbg !472
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %9 = load i16, ptr %cmdline_seg, align 2, !dbg !473
  %conv7 = zext i16 %9 to i32, !dbg !473
  %shl = shl i32 %conv7, 4, !dbg !474
  %10 = load ptr, ptr %oldcmd, align 4, !dbg !475
  %cl_offset8 = getelementptr inbounds %struct.old_cmdline, ptr %10, i32 0, i32 1, !dbg !476
  %11 = load i16, ptr %cl_offset8, align 2, !dbg !476
  %conv9 = zext i16 %11 to i32, !dbg !475
  %add10 = add nsw i32 %shl, %conv9, !dbg !477
  store i32 %add10, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 23), align 1, !dbg !478
  call void @llvm.lifetime.end.p0(i64 2, ptr %cmdline_seg) #10, !dbg !479
  br label %if.end11, !dbg !480

if.end11:                                         ; preds = %if.end, %land.lhs.true, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldcmd) #10, !dbg !481
  ret void, !dbg !481
}

declare !dbg !482 dso_local void @console_init() #2

; Function Attrs: inlinehint nounwind
define internal i32 @cmdline_find_option_bool(ptr inreg noundef %option) #1 !dbg !484 {
entry:
  %retval = alloca i32, align 4
  %option.addr = alloca ptr, align 4
  %cmd_line_ptr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %option, ptr %option.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !491, metadata !DIExpression()), !dbg !493
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd_line_ptr) #10, !dbg !494
  call void @llvm.dbg.declare(metadata ptr %cmd_line_ptr, metadata !492, metadata !DIExpression()), !dbg !495
  %0 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 23), align 1, !dbg !496
  store i32 %0, ptr %cmd_line_ptr, align 4, !dbg !495
  %1 = load i32, ptr %cmd_line_ptr, align 4, !dbg !497
  %cmp = icmp uge i32 %1, 1048576, !dbg !499
  br i1 %cmp, label %if.then, label %if.end, !dbg !500

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !501

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %cmd_line_ptr, align 4, !dbg !502
  %3 = load ptr, ptr %option.addr, align 4, !dbg !503
  %call = call i32 @__cmdline_find_option_bool(i32 inreg noundef %2, ptr inreg noundef %3) #8, !dbg !504
  store i32 %call, ptr %retval, align 4, !dbg !505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !505

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd_line_ptr) #10, !dbg !506
  %4 = load i32, ptr %retval, align 4, !dbg !506
  ret i32 %4, !dbg !506
}

declare !dbg !507 dso_local void @puts(ptr inreg noundef) #2

; Function Attrs: nounwind
define internal void @init_heap() #0 !dbg !510 {
entry:
  %stack_end = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %stack_end) #10, !dbg !513
  call void @llvm.dbg.declare(metadata ptr %stack_end, metadata !512, metadata !DIExpression()), !dbg !514
  %0 = load i8, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 14), align 1, !dbg !515
  %conv = zext i8 %0 to i32, !dbg !517
  %and = and i32 %conv, 128, !dbg !518
  %tobool = icmp ne i32 %and, 0, !dbg !518
  br i1 %tobool, label %if.then, label %if.else, !dbg !519

if.then:                                          ; preds = %entry
  %1 = call ptr asm "leal ${1:n}(%esp),$0", "=r,i,~{dirflag},~{fpsr},~{flags}"(i32 1024) #11, !dbg !520, !srcloc !522
  store ptr %1, ptr %stack_end, align 4, !dbg !520
  %2 = load i16, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 20), align 1, !dbg !523
  %conv1 = zext i16 %2 to i32, !dbg !524
  %add = add i32 %conv1, 512, !dbg !525
  %3 = inttoptr i32 %add to ptr, !dbg !526
  store ptr %3, ptr @heap_end, align 4, !dbg !527
  %4 = load ptr, ptr @heap_end, align 4, !dbg !528
  %5 = load ptr, ptr %stack_end, align 4, !dbg !530
  %cmp = icmp ugt ptr %4, %5, !dbg !531
  br i1 %cmp, label %if.then3, label %if.end, !dbg !532

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %stack_end, align 4, !dbg !533
  store ptr %6, ptr @heap_end, align 4, !dbg !534
  br label %if.end, !dbg !535

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4, !dbg !536

if.else:                                          ; preds = %entry
  call void @puts(ptr inreg noundef @.str.3) #8, !dbg !537
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %stack_end) #10, !dbg !539
  ret void, !dbg !539
}

declare !dbg !540 dso_local i32 @validate_cpu() #2

; Function Attrs: noreturn
declare !dbg !543 dso_local void @die() #3

; Function Attrs: nounwind
define internal void @set_bios_mode() #0 !dbg !544 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #10, !dbg !627
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !546, metadata !DIExpression()), !dbg !628
  call void @initregs(ptr inreg noundef %ireg) #8, !dbg !629
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !630
  %ax = getelementptr inbounds %struct.anon.18, ptr %0, i32 0, i32 14, !dbg !630
  store i16 -5120, ptr %ax, align 4, !dbg !631
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !632
  %bx = getelementptr inbounds %struct.anon.18, ptr %1, i32 0, i32 8, !dbg !632
  store i16 2, ptr %bx, align 4, !dbg !633
  call void @intcall(i8 inreg noundef zeroext 21, ptr inreg noundef %ireg, ptr inreg noundef null) #8, !dbg !634
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #10, !dbg !635
  ret void, !dbg !635
}

declare !dbg !636 dso_local void @detect_memory() #2

; Function Attrs: nounwind
define internal void @keyboard_init() #0 !dbg !637 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #10, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !639, metadata !DIExpression()), !dbg !642
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #10, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !640, metadata !DIExpression()), !dbg !643
  call void @initregs(ptr inreg noundef %ireg) #8, !dbg !644
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !645
  %ah = getelementptr inbounds %struct.anon.19, ptr %0, i32 0, i32 29, !dbg !645
  store i8 2, ptr %ah, align 1, !dbg !646
  call void @intcall(i8 inreg noundef zeroext 22, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #8, !dbg !647
  %1 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !648
  %al = getelementptr inbounds %struct.anon.19, ptr %1, i32 0, i32 28, !dbg !648
  %2 = load i8, ptr %al, align 4, !dbg !648
  store i8 %2, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 23), align 1, !dbg !649
  %3 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !650
  %ax = getelementptr inbounds %struct.anon.18, ptr %3, i32 0, i32 14, !dbg !650
  store i16 773, ptr %ax, align 4, !dbg !651
  call void @intcall(i8 inreg noundef zeroext 22, ptr inreg noundef %ireg, ptr inreg noundef null) #8, !dbg !652
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #10, !dbg !653
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #10, !dbg !653
  ret void, !dbg !653
}

; Function Attrs: nounwind
define internal void @query_ist() #0 !dbg !654 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #10, !dbg !658
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !656, metadata !DIExpression()), !dbg !659
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #10, !dbg !658
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !657, metadata !DIExpression()), !dbg !660
  %0 = load i32, ptr @cpu, align 4, !dbg !661
  %cmp = icmp slt i32 %0, 6, !dbg !663
  br i1 %cmp, label %if.then, label %if.end, !dbg !664

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !665

if.end:                                           ; preds = %entry
  call void @initregs(ptr inreg noundef %ireg) #8, !dbg !666
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !667
  %ax = getelementptr inbounds %struct.anon.18, ptr %1, i32 0, i32 14, !dbg !667
  store i16 -5760, ptr %ax, align 4, !dbg !668
  %2 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !669
  %edx = getelementptr inbounds %struct.anon.17, ptr %2, i32 0, i32 5, !dbg !669
  store i32 1196640579, ptr %edx, align 4, !dbg !670
  call void @intcall(i8 inreg noundef zeroext 21, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #8, !dbg !671
  %3 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !672
  %eax = getelementptr inbounds %struct.anon.17, ptr %3, i32 0, i32 7, !dbg !672
  %4 = load i32, ptr %eax, align 4, !dbg !672
  store i32 %4, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 4), align 16, !dbg !673
  %5 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !674
  %ebx = getelementptr inbounds %struct.anon.17, ptr %5, i32 0, i32 4, !dbg !674
  %6 = load i32, ptr %ebx, align 4, !dbg !674
  store i32 %6, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 4, i32 1), align 4, !dbg !675
  %7 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !676
  %ecx = getelementptr inbounds %struct.anon.17, ptr %7, i32 0, i32 6, !dbg !676
  %8 = load i32, ptr %ecx, align 4, !dbg !676
  store i32 %8, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 4, i32 2), align 8, !dbg !677
  %9 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !678
  %edx1 = getelementptr inbounds %struct.anon.17, ptr %9, i32 0, i32 5, !dbg !678
  %10 = load i32, ptr %edx1, align 4, !dbg !678
  store i32 %10, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 4, i32 3), align 4, !dbg !679
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !680
  br label %cleanup, !dbg !680

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #10, !dbg !680
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #10, !dbg !680
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !680

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !681 dso_local void @set_video() #2

; Function Attrs: noreturn
declare !dbg !682 dso_local void @go_to_protected_mode() #3

; Function Attrs: alwaysinline nounwind
define internal zeroext i8 @__inb(i16 inreg noundef zeroext %port) #4 !dbg !683 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !686, metadata !DIExpression()), !dbg !688
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #10, !dbg !688
  call void @llvm.dbg.declare(metadata ptr %value, metadata !687, metadata !DIExpression()), !dbg !688
  %0 = load i16, ptr %port.addr, align 2, !dbg !688
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #10, !dbg !688, !srcloc !689
  store i8 %1, ptr %value, align 1, !dbg !688
  %2 = load i8, ptr %value, align 1, !dbg !688
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #10, !dbg !688
  ret i8 %2, !dbg !688
}

; Function Attrs: alwaysinline nounwind
define internal void @__outb(i8 inreg noundef zeroext %value, i16 inreg noundef zeroext %port) #4 !dbg !690 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !692, metadata !DIExpression()), !dbg !694
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !693, metadata !DIExpression()), !dbg !694
  %0 = load i8, ptr %value.addr, align 1, !dbg !694
  %1 = load i16, ptr %port.addr, align 2, !dbg !694
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #10, !dbg !694, !srcloc !695
  ret void, !dbg !694
}

; Function Attrs: alwaysinline nounwind
define internal void @__outw(i16 inreg noundef zeroext %value, i16 inreg noundef zeroext %port) #4 !dbg !696 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i16, align 2
  store i16 %value, ptr %value.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !698, metadata !DIExpression()), !dbg !700
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !699, metadata !DIExpression()), !dbg !700
  %0 = load i16, ptr %value.addr, align 2, !dbg !700
  %1 = load i16, ptr %port.addr, align 2, !dbg !700
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16 %1) #10, !dbg !700, !srcloc !701
  ret void, !dbg !700
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @ds() #1 !dbg !702 {
entry:
  %seg = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %seg) #10, !dbg !707
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !706, metadata !DIExpression()), !dbg !708
  call void asm "movw %ds,$0", "=*rm,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %seg) #10, !dbg !709, !srcloc !710
  %0 = load i16, ptr %seg, align 2, !dbg !711
  call void @llvm.lifetime.end.p0(i64 2, ptr %seg) #10, !dbg !712
  ret i16 %0, !dbg !713
}

declare !dbg !714 dso_local i32 @__cmdline_find_option_bool(i32 inreg noundef, ptr inreg noundef) #2

declare !dbg !717 dso_local void @initregs(ptr inreg noundef) #2

declare !dbg !721 dso_local void @intcall(i8 inreg noundef zeroext, ptr inreg noundef, ptr inreg noundef) #2

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #3 = { noreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { alwaysinline nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin noreturn "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!396, !397, !398, !399, !400}
!llvm.ident = !{!401}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "HEAP", scope: !2, file: !3, line: 22, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.main.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/main\22 -D KBUILD_BASENAME=\22main\22 -D KBUILD_MODNAME=\22main\22 -D __KBUILD_MODNAME=kmod_main -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/main.ll arch/x86/boot/main.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/boot/main.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e6956548d6da8f97166bdf9ce034bbc")
!4 = !{!5, !6, !7, !9}
!5 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 61, baseType: !11)
!10 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !12, line: 68, baseType: !13)
!12 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!0, !15, !17, !22, !27, !32, !371, !391}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "heap_end", scope: !2, file: !3, line: 23, type: !7, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !3, line: 145, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !3, line: 146, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 232, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 29)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !3, line: 153, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 64)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "boot_params", scope: !2, file: !3, line: 18, type: !34, isLocal: false, isDefinition: true, align: 128)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_params", file: !35, line: 186, size: 32768, elements: !36)
!35 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!36 = !{!37, !86, !99, !103, !106, !114, !115, !119, !123, !124, !132, !139, !140, !141, !142, !146, !147, !155, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !179, !221, !225, !227, !234, !238, !367}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "screen_info", scope: !34, file: !35, line: 187, baseType: !38, size: 512)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "screen_info", file: !39, line: 11, size: 512, elements: !40)
!39 = !DIFile(filename: "./include/uapi/linux/screen_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "395c08eb846a258de3277732fcbc2819")
!40 = !{!41, !45, !46, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "orig_x", scope: !38, file: !39, line: 12, baseType: !42, size: 8)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !43, line: 21, baseType: !44)
!43 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "orig_y", scope: !38, file: !39, line: 13, baseType: !42, size: 8, offset: 8)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ext_mem_k", scope: !38, file: !39, line: 14, baseType: !47, size: 16, offset: 16)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !43, line: 24, baseType: !48)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_page", scope: !38, file: !39, line: 15, baseType: !47, size: 16, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_mode", scope: !38, file: !39, line: 16, baseType: !42, size: 8, offset: 48)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_cols", scope: !38, file: !39, line: 17, baseType: !42, size: 8, offset: 56)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !39, line: 18, baseType: !42, size: 8, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !38, file: !39, line: 19, baseType: !42, size: 8, offset: 72)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_ega_bx", scope: !38, file: !39, line: 20, baseType: !47, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !38, file: !39, line: 21, baseType: !47, size: 16, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_lines", scope: !38, file: !39, line: 22, baseType: !42, size: 8, offset: 112)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_isVGA", scope: !38, file: !39, line: 23, baseType: !42, size: 8, offset: 120)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_points", scope: !38, file: !39, line: 24, baseType: !47, size: 16, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_width", scope: !38, file: !39, line: 27, baseType: !47, size: 16, offset: 144)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_height", scope: !38, file: !39, line: 28, baseType: !47, size: 16, offset: 160)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_depth", scope: !38, file: !39, line: 29, baseType: !47, size: 16, offset: 176)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_base", scope: !38, file: !39, line: 30, baseType: !63, size: 32, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !43, line: 27, baseType: !13)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_size", scope: !38, file: !39, line: 31, baseType: !63, size: 32, offset: 224)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "cl_magic", scope: !38, file: !39, line: 32, baseType: !47, size: 16, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "cl_offset", scope: !38, file: !39, line: 32, baseType: !47, size: 16, offset: 272)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_linelength", scope: !38, file: !39, line: 33, baseType: !47, size: 16, offset: 288)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "red_size", scope: !38, file: !39, line: 34, baseType: !42, size: 8, offset: 304)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "red_pos", scope: !38, file: !39, line: 35, baseType: !42, size: 8, offset: 312)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "green_size", scope: !38, file: !39, line: 36, baseType: !42, size: 8, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "green_pos", scope: !38, file: !39, line: 37, baseType: !42, size: 8, offset: 328)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "blue_size", scope: !38, file: !39, line: 38, baseType: !42, size: 8, offset: 336)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "blue_pos", scope: !38, file: !39, line: 39, baseType: !42, size: 8, offset: 344)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_size", scope: !38, file: !39, line: 40, baseType: !42, size: 8, offset: 352)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_pos", scope: !38, file: !39, line: 41, baseType: !42, size: 8, offset: 360)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_seg", scope: !38, file: !39, line: 42, baseType: !47, size: 16, offset: 368)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_off", scope: !38, file: !39, line: 43, baseType: !47, size: 16, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !38, file: !39, line: 44, baseType: !47, size: 16, offset: 400)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "vesa_attributes", scope: !38, file: !39, line: 45, baseType: !47, size: 16, offset: 416)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !38, file: !39, line: 46, baseType: !63, size: 32, offset: 432)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ext_lfb_base", scope: !38, file: !39, line: 47, baseType: !63, size: 32, offset: 464)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved", scope: !38, file: !39, line: 48, baseType: !83, size: 16, offset: 496)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 16, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 2)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "apm_bios_info", scope: !34, file: !35, line: 188, baseType: !87, size: 160, offset: 512)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apm_bios_info", file: !88, line: 25, size: 160, elements: !89)
!88 = !DIFile(filename: "./include/uapi/linux/apm_bios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a2faf7b1bd7c92e79370dc4887ba91d3")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !87, file: !88, line: 26, baseType: !47, size: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cseg", scope: !87, file: !88, line: 27, baseType: !47, size: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !87, file: !88, line: 28, baseType: !63, size: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16", scope: !87, file: !88, line: 29, baseType: !47, size: 16, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "dseg", scope: !87, file: !88, line: 30, baseType: !47, size: 16, offset: 80)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !88, line: 31, baseType: !47, size: 16, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_len", scope: !87, file: !88, line: 32, baseType: !47, size: 16, offset: 112)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16_len", scope: !87, file: !88, line: 33, baseType: !47, size: 16, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "dseg_len", scope: !87, file: !88, line: 34, baseType: !47, size: 16, offset: 144)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2", scope: !34, file: !35, line: 189, baseType: !100, size: 32, offset: 672)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 4)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tboot_addr", scope: !34, file: !35, line: 190, baseType: !104, size: 64, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !43, line: 31, baseType: !105)
!105 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ist_info", scope: !34, file: !35, line: 191, baseType: !107, size: 128, offset: 768)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ist_info", file: !108, line: 23, size: 128, elements: !109)
!108 = !DIFile(filename: "./arch/x86/include/uapi/asm/ist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3966eee4102636d4a6a170719935cbb6")
!109 = !{!110, !111, !112, !113}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !107, file: !108, line: 24, baseType: !63, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !107, file: !108, line: 25, baseType: !63, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !107, file: !108, line: 26, baseType: !63, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "perf_level", scope: !107, file: !108, line: 27, baseType: !63, size: 32, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_rsdp_addr", scope: !34, file: !35, line: 192, baseType: !104, size: 64, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3", scope: !34, file: !35, line: 193, baseType: !116, size: 64, offset: 960)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "hd0_info", scope: !34, file: !35, line: 194, baseType: !120, size: 128, offset: 1024)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 128, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 16)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "hd1_info", scope: !34, file: !35, line: 195, baseType: !120, size: 128, offset: 1152)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sys_desc_table", scope: !34, file: !35, line: 196, baseType: !125, size: 128, offset: 1280)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_desc_table", file: !35, line: 110, size: 128, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !125, file: !35, line: 111, baseType: !47, size: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !125, file: !35, line: 112, baseType: !129, size: 112, offset: 16)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 112, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 14)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "olpc_ofw_header", scope: !34, file: !35, line: 197, baseType: !133, size: 128, offset: 1408)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "olpc_ofw_header", file: !35, line: 116, size: 128, elements: !134)
!134 = !{!135, !136, !137, !138}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_magic", scope: !133, file: !35, line: 117, baseType: !63, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_version", scope: !133, file: !35, line: 118, baseType: !63, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "cif_handler", scope: !133, file: !35, line: 119, baseType: !63, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "irq_desc_table", scope: !133, file: !35, line: 120, baseType: !63, size: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_image", scope: !34, file: !35, line: 198, baseType: !63, size: 32, offset: 1536)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_size", scope: !34, file: !35, line: 199, baseType: !63, size: 32, offset: 1568)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cmd_line_ptr", scope: !34, file: !35, line: 200, baseType: !63, size: 32, offset: 1600)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_pad4", scope: !34, file: !35, line: 201, baseType: !143, size: 896, offset: 1632)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 896, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 112)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cc_blob_address", scope: !34, file: !35, line: 202, baseType: !63, size: 32, offset: 2528)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "edid_info", scope: !34, file: !35, line: 203, baseType: !148, size: 1024, offset: 2560)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edid_info", file: !149, line: 5, size: 1024, elements: !150)
!149 = !DIFile(filename: "./include/uapi/video/edid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a36c5e7269b764712ba1a5dc2e5eb27d")
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !148, file: !149, line: 6, baseType: !152, size: 1024)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 1024, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "efi_info", scope: !34, file: !35, line: 204, baseType: !156, size: 256, offset: 3584)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_info", file: !35, line: 123, size: 256, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "efi_loader_signature", scope: !156, file: !35, line: 124, baseType: !63, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab", scope: !156, file: !35, line: 125, baseType: !63, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_size", scope: !156, file: !35, line: 126, baseType: !63, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_version", scope: !156, file: !35, line: 127, baseType: !63, size: 32, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap", scope: !156, file: !35, line: 128, baseType: !63, size: 32, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_size", scope: !156, file: !35, line: 129, baseType: !63, size: 32, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab_hi", scope: !156, file: !35, line: 130, baseType: !63, size: 32, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_hi", scope: !156, file: !35, line: 131, baseType: !63, size: 32, offset: 224)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "alt_mem_k", scope: !34, file: !35, line: 205, baseType: !63, size: 32, offset: 3840)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !34, file: !35, line: 206, baseType: !63, size: 32, offset: 3872)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "e820_entries", scope: !34, file: !35, line: 207, baseType: !42, size: 8, offset: 3904)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf_entries", scope: !34, file: !35, line: 208, baseType: !42, size: 8, offset: 3912)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buf_entries", scope: !34, file: !35, line: 209, baseType: !42, size: 8, offset: 3920)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "kbd_status", scope: !34, file: !35, line: 210, baseType: !42, size: 8, offset: 3928)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "secure_boot", scope: !34, file: !35, line: 211, baseType: !42, size: 8, offset: 3936)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_pad5", scope: !34, file: !35, line: 212, baseType: !83, size: 16, offset: 3944)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !34, file: !35, line: 224, baseType: !42, size: 8, offset: 3960)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_pad6", scope: !34, file: !35, line: 225, baseType: !176, size: 8, offset: 3968)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 1)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !34, file: !35, line: 226, baseType: !180, size: 984, offset: 3976)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_header", file: !35, line: 68, size: 984, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "setup_sects", scope: !180, file: !35, line: 69, baseType: !42, size: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "root_flags", scope: !180, file: !35, line: 70, baseType: !47, size: 16, offset: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "syssize", scope: !180, file: !35, line: 71, baseType: !63, size: 32, offset: 24)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ram_size", scope: !180, file: !35, line: 72, baseType: !47, size: 16, offset: 56)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "vid_mode", scope: !180, file: !35, line: 73, baseType: !47, size: 16, offset: 72)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "root_dev", scope: !180, file: !35, line: 74, baseType: !47, size: 16, offset: 88)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "boot_flag", scope: !180, file: !35, line: 75, baseType: !47, size: 16, offset: 104)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !180, file: !35, line: 76, baseType: !47, size: 16, offset: 120)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !180, file: !35, line: 77, baseType: !63, size: 32, offset: 136)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !180, file: !35, line: 78, baseType: !47, size: 16, offset: 168)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "realmode_swtch", scope: !180, file: !35, line: 79, baseType: !63, size: 32, offset: 184)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "start_sys_seg", scope: !180, file: !35, line: 80, baseType: !47, size: 16, offset: 216)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_version", scope: !180, file: !35, line: 81, baseType: !47, size: 16, offset: 232)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "type_of_loader", scope: !180, file: !35, line: 82, baseType: !42, size: 8, offset: 248)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "loadflags", scope: !180, file: !35, line: 83, baseType: !42, size: 8, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "setup_move_size", scope: !180, file: !35, line: 84, baseType: !47, size: 16, offset: 264)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "code32_start", scope: !180, file: !35, line: 85, baseType: !63, size: 32, offset: 280)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_image", scope: !180, file: !35, line: 86, baseType: !63, size: 32, offset: 312)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_size", scope: !180, file: !35, line: 87, baseType: !63, size: 32, offset: 344)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "bootsect_kludge", scope: !180, file: !35, line: 88, baseType: !63, size: 32, offset: 376)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "heap_end_ptr", scope: !180, file: !35, line: 89, baseType: !47, size: 16, offset: 408)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_ver", scope: !180, file: !35, line: 90, baseType: !42, size: 8, offset: 424)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_type", scope: !180, file: !35, line: 91, baseType: !42, size: 8, offset: 432)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_line_ptr", scope: !180, file: !35, line: 92, baseType: !63, size: 32, offset: 440)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "initrd_addr_max", scope: !180, file: !35, line: 93, baseType: !63, size: 32, offset: 472)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_alignment", scope: !180, file: !35, line: 94, baseType: !63, size: 32, offset: 504)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "relocatable_kernel", scope: !180, file: !35, line: 95, baseType: !42, size: 8, offset: 536)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "min_alignment", scope: !180, file: !35, line: 96, baseType: !42, size: 8, offset: 544)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "xloadflags", scope: !180, file: !35, line: 97, baseType: !47, size: 16, offset: 552)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_size", scope: !180, file: !35, line: 98, baseType: !63, size: 32, offset: 568)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch", scope: !180, file: !35, line: 99, baseType: !63, size: 32, offset: 600)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch_data", scope: !180, file: !35, line: 100, baseType: !104, size: 64, offset: 632)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "payload_offset", scope: !180, file: !35, line: 101, baseType: !63, size: 32, offset: 696)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !180, file: !35, line: 102, baseType: !63, size: 32, offset: 728)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "setup_data", scope: !180, file: !35, line: 103, baseType: !104, size: 64, offset: 760)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pref_address", scope: !180, file: !35, line: 104, baseType: !104, size: 64, offset: 824)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "init_size", scope: !180, file: !35, line: 105, baseType: !63, size: 32, offset: 888)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "handover_offset", scope: !180, file: !35, line: 106, baseType: !63, size: 32, offset: 920)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_info_offset", scope: !180, file: !35, line: 107, baseType: !63, size: 32, offset: 952)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_pad7", scope: !34, file: !35, line: 227, baseType: !222, size: 288, offset: 4960)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 288, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 36)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buffer", scope: !34, file: !35, line: 228, baseType: !226, size: 512, offset: 5248)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 512, elements: !121)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "e820_table", scope: !34, file: !35, line: 229, baseType: !228, size: 20480, offset: 5760)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 20480, elements: !153)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_e820_entry", file: !35, line: 143, size: 160, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !229, file: !35, line: 144, baseType: !104, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !229, file: !35, line: 145, baseType: !104, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !229, file: !35, line: 146, baseType: !63, size: 32, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_pad8", scope: !34, file: !35, line: 230, baseType: !235, size: 384, offset: 26240)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 384, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 48)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf", scope: !34, file: !35, line: 231, baseType: !239, size: 3936, offset: 26624)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 3936, elements: !20)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_info", file: !241, line: 173, size: 656, elements: !242)
!241 = !DIFile(filename: "./include/uapi/linux/edd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6546916b3caeeabef2983c5e06678df")
!242 = !{!243, !244, !245, !246, !247, !248, !249}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !240, file: !241, line: 174, baseType: !42, size: 8)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !240, file: !241, line: 175, baseType: !42, size: 8, offset: 8)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "interface_support", scope: !240, file: !241, line: 176, baseType: !47, size: 16, offset: 16)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_cylinder", scope: !240, file: !241, line: 177, baseType: !47, size: 16, offset: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_head", scope: !240, file: !241, line: 178, baseType: !42, size: 8, offset: 48)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_sectors_per_track", scope: !240, file: !241, line: 179, baseType: !42, size: 8, offset: 56)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !240, file: !241, line: 180, baseType: !250, size: 592, offset: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_device_params", file: !241, line: 72, size: 592, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !299, !365, !366}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !250, file: !241, line: 73, baseType: !47, size: 16)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !250, file: !241, line: 74, baseType: !47, size: 16, offset: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_cylinders", scope: !250, file: !241, line: 75, baseType: !63, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_heads", scope: !250, file: !241, line: 76, baseType: !63, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sectors_per_track", scope: !250, file: !241, line: 77, baseType: !63, size: 32, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_sectors", scope: !250, file: !241, line: 78, baseType: !104, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_sector", scope: !250, file: !241, line: 79, baseType: !47, size: 16, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "dpte_ptr", scope: !250, file: !241, line: 80, baseType: !63, size: 32, offset: 208)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !250, file: !241, line: 81, baseType: !47, size: 16, offset: 240)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "device_path_info_length", scope: !250, file: !241, line: 82, baseType: !42, size: 8, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !250, file: !241, line: 83, baseType: !42, size: 8, offset: 264)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !250, file: !241, line: 84, baseType: !47, size: 16, offset: 272)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "host_bus_type", scope: !250, file: !241, line: 85, baseType: !100, size: 32, offset: 288)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "interface_type", scope: !250, file: !241, line: 86, baseType: !116, size: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "interface_path", scope: !250, file: !241, line: 113, baseType: !267, size: 64, offset: 384)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !241, line: 87, size: 64, elements: !268)
!268 = !{!269, !275, !283, !287, !291, !295}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !267, file: !241, line: 92, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !241, line: 88, size: 64, elements: !271)
!271 = !{!272, !273, !274}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !270, file: !241, line: 89, baseType: !47, size: 16)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !270, file: !241, line: 90, baseType: !47, size: 16, offset: 16)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !270, file: !241, line: 91, baseType: !63, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !267, file: !241, line: 99, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !241, line: 93, size: 64, elements: !277)
!277 = !{!278, !279, !280, !281, !282}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !276, file: !241, line: 94, baseType: !42, size: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !276, file: !241, line: 95, baseType: !42, size: 8, offset: 8)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !276, file: !241, line: 96, baseType: !42, size: 8, offset: 16)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !276, file: !241, line: 97, baseType: !42, size: 8, offset: 24)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !276, file: !241, line: 98, baseType: !63, size: 32, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ibnd", scope: !267, file: !241, line: 103, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !241, line: 101, size: 64, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !284, file: !241, line: 102, baseType: !104, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "xprs", scope: !267, file: !241, line: 106, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !241, line: 104, size: 64, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !288, file: !241, line: 105, baseType: !104, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "htpt", scope: !267, file: !241, line: 109, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !241, line: 107, size: 64, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !292, file: !241, line: 108, baseType: !104, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !267, file: !241, line: 112, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !241, line: 110, size: 64, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !296, file: !241, line: 111, baseType: !104, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "device_path", scope: !250, file: !241, line: 168, baseType: !300, size: 128, offset: 448)
!300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !241, line: 114, size: 128, elements: !301)
!301 = !{!302, !310, !319, !326, !331, !336, !341, !346, !352, !360}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ata", scope: !300, file: !241, line: 121, baseType: !303, size: 128)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !241, line: 115, size: 128, elements: !304)
!304 = !{!305, !306, !307, !308, !309}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !303, file: !241, line: 116, baseType: !42, size: 8)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !303, file: !241, line: 117, baseType: !42, size: 8, offset: 8)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !303, file: !241, line: 118, baseType: !47, size: 16, offset: 16)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !303, file: !241, line: 119, baseType: !63, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !303, file: !241, line: 120, baseType: !104, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "atapi", scope: !300, file: !241, line: 129, baseType: !311, size: 128)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !241, line: 122, size: 128, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !311, file: !241, line: 123, baseType: !42, size: 8)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !311, file: !241, line: 124, baseType: !42, size: 8, offset: 8)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !311, file: !241, line: 125, baseType: !42, size: 8, offset: 16)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !311, file: !241, line: 126, baseType: !42, size: 8, offset: 24)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !311, file: !241, line: 127, baseType: !63, size: 32, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !311, file: !241, line: 128, baseType: !104, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "scsi", scope: !300, file: !241, line: 135, baseType: !320, size: 128)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !241, line: 130, size: 128, elements: !321)
!321 = !{!322, !323, !324, !325}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !320, file: !241, line: 131, baseType: !47, size: 16)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !320, file: !241, line: 132, baseType: !104, size: 64, offset: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !320, file: !241, line: 133, baseType: !47, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !320, file: !241, line: 134, baseType: !63, size: 32, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "usb", scope: !300, file: !241, line: 139, baseType: !327, size: 128)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !241, line: 136, size: 128, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !327, file: !241, line: 137, baseType: !104, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !327, file: !241, line: 138, baseType: !104, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i1394", scope: !300, file: !241, line: 143, baseType: !332, size: 128)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !241, line: 140, size: 128, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "eui", scope: !332, file: !241, line: 141, baseType: !104, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !332, file: !241, line: 142, baseType: !104, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "fibre", scope: !300, file: !241, line: 147, baseType: !337, size: 128)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !241, line: 144, size: 128, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "wwid", scope: !337, file: !241, line: 145, baseType: !104, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !337, file: !241, line: 146, baseType: !104, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i2o", scope: !300, file: !241, line: 151, baseType: !342, size: 128)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !241, line: 148, size: 128, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "identity_tag", scope: !342, file: !241, line: 149, baseType: !104, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !342, file: !241, line: 150, baseType: !104, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "raid", scope: !300, file: !241, line: 156, baseType: !347, size: 128)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !241, line: 152, size: 128, elements: !348)
!348 = !{!349, !350, !351}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "array_number", scope: !347, file: !241, line: 153, baseType: !63, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !347, file: !241, line: 154, baseType: !63, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !347, file: !241, line: 155, baseType: !104, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "sata", scope: !300, file: !241, line: 163, baseType: !353, size: 128)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !241, line: 157, size: 128, elements: !354)
!354 = !{!355, !356, !357, !358, !359}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !353, file: !241, line: 158, baseType: !42, size: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !353, file: !241, line: 159, baseType: !42, size: 8, offset: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !353, file: !241, line: 160, baseType: !47, size: 16, offset: 16)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !353, file: !241, line: 161, baseType: !63, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !353, file: !241, line: 162, baseType: !104, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !300, file: !241, line: 167, baseType: !361, size: 128)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !241, line: 164, size: 128, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !361, file: !241, line: 165, baseType: !104, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !361, file: !241, line: 166, baseType: !104, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !250, file: !241, line: 169, baseType: !42, size: 8, offset: 576)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !250, file: !241, line: 170, baseType: !42, size: 8, offset: 584)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_pad9", scope: !34, file: !35, line: 232, baseType: !368, size: 2208, offset: 30560)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2208, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 276)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "pio_ops", scope: !2, file: !3, line: 20, type: !373, isLocal: false, isDefinition: true)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "port_io_ops", file: !374, line: 14, size: 96, elements: !375)
!374 = !DIFile(filename: "arch/x86/boot/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3eae878608090f3626da203e8d7145d")
!375 = !{!376, !383, !387}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "f_inb", scope: !373, file: !374, line: 15, baseType: !377, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 32)
!378 = !DISubroutineType(types: !379)
!379 = !{!380, !382}
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !381, line: 17, baseType: !42)
!381 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !381, line: 19, baseType: !47)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "f_outb", scope: !373, file: !374, line: 16, baseType: !384, size: 32, offset: 32)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 32)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !380, !382}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "f_outw", scope: !373, file: !374, line: 17, baseType: !388, size: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 32)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !382, !382}
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !393, isLocal: true, isDefinition: true)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 520, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 65)
!396 = !{i32 1, !"NumRegisterParameters", i32 3}
!397 = !{i32 7, !"Dwarf Version", i32 5}
!398 = !{i32 2, !"Debug Info Version", i32 3}
!399 = !{i32 1, !"wchar_size", i32 4}
!400 = !{i32 1, !"override-stack-alignment", i32 4}
!401 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!402 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 136, type: !403, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!403 = !DISubroutineType(types: !404)
!404 = !{null}
!405 = !DILocation(line: 138, column: 2, scope: !402)
!406 = !DILocation(line: 141, column: 2, scope: !402)
!407 = !DILocation(line: 144, column: 2, scope: !402)
!408 = !DILocation(line: 145, column: 6, scope: !409)
!409 = distinct !DILexicalBlock(scope: !402, file: !3, line: 145, column: 6)
!410 = !DILocation(line: 145, column: 6, scope: !402)
!411 = !DILocation(line: 146, column: 3, scope: !409)
!412 = !DILocation(line: 149, column: 2, scope: !402)
!413 = !DILocation(line: 152, column: 6, scope: !414)
!414 = distinct !DILexicalBlock(scope: !402, file: !3, line: 152, column: 6)
!415 = !DILocation(line: 152, column: 6, scope: !402)
!416 = !DILocation(line: 153, column: 3, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !3, line: 152, column: 22)
!418 = !DILocation(line: 155, column: 3, scope: !417)
!419 = !DILocation(line: 159, column: 2, scope: !402)
!420 = !DILocation(line: 162, column: 2, scope: !402)
!421 = !DILocation(line: 165, column: 2, scope: !402)
!422 = !DILocation(line: 168, column: 2, scope: !402)
!423 = !DILocation(line: 181, column: 2, scope: !402)
!424 = !DILocation(line: 184, column: 2, scope: !402)
!425 = distinct !DISubprogram(name: "init_default_io_ops", scope: !374, file: !374, line: 26, type: !403, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!426 = !DILocation(line: 28, column: 17, scope: !425)
!427 = !DILocation(line: 29, column: 17, scope: !425)
!428 = !DILocation(line: 30, column: 17, scope: !425)
!429 = !DILocation(line: 31, column: 1, scope: !425)
!430 = distinct !DISubprogram(name: "copy_boot_params", scope: !3, file: !3, line: 31, type: !403, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !431)
!431 = !{!432, !440, !442}
!432 = !DILocalVariable(name: "oldcmd", scope: !430, file: !3, line: 37, type: !433)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_cmdline", scope: !430, file: !3, line: 33, size: 32, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "cl_magic", scope: !436, file: !3, line: 34, baseType: !382, size: 16)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "cl_offset", scope: !436, file: !3, line: 35, baseType: !382, size: 16, offset: 16)
!440 = !DILocalVariable(name: "__ptr", scope: !441, file: !3, line: 38, type: !5)
!441 = distinct !DILexicalBlock(scope: !430, file: !3, line: 38, column: 3)
!442 = !DILocalVariable(name: "cmdline_seg", scope: !443, file: !3, line: 46, type: !382)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 44, column: 40)
!444 = distinct !DILexicalBlock(scope: !430, file: !3, line: 43, column: 6)
!445 = !DILocation(line: 37, column: 2, scope: !430)
!446 = !DILocation(line: 37, column: 35, scope: !430)
!447 = !DILocation(line: 38, column: 3, scope: !441)
!448 = !DILocation(line: 38, column: 3, scope: !430)
!449 = !DILocation(line: 40, column: 2, scope: !430)
!450 = !DILocation(line: 40, column: 2, scope: !451)
!451 = distinct !DILexicalBlock(scope: !430, file: !3, line: 40, column: 2)
!452 = !DILocation(line: 41, column: 2, scope: !430)
!453 = !DILocation(line: 43, column: 23, scope: !444)
!454 = !DILocation(line: 43, column: 7, scope: !444)
!455 = !DILocation(line: 43, column: 36, scope: !444)
!456 = !DILocation(line: 44, column: 6, scope: !444)
!457 = !DILocation(line: 44, column: 14, scope: !444)
!458 = !DILocation(line: 44, column: 23, scope: !444)
!459 = !DILocation(line: 43, column: 6, scope: !430)
!460 = !DILocation(line: 46, column: 3, scope: !443)
!461 = !DILocation(line: 46, column: 7, scope: !443)
!462 = !DILocation(line: 51, column: 7, scope: !463)
!463 = distinct !DILexicalBlock(scope: !443, file: !3, line: 51, column: 7)
!464 = !DILocation(line: 51, column: 15, scope: !463)
!465 = !DILocation(line: 51, column: 43, scope: !463)
!466 = !DILocation(line: 51, column: 27, scope: !463)
!467 = !DILocation(line: 51, column: 25, scope: !463)
!468 = !DILocation(line: 51, column: 7, scope: !443)
!469 = !DILocation(line: 52, column: 18, scope: !463)
!470 = !DILocation(line: 52, column: 16, scope: !463)
!471 = !DILocation(line: 52, column: 4, scope: !463)
!472 = !DILocation(line: 54, column: 16, scope: !463)
!473 = !DILocation(line: 57, column: 5, scope: !443)
!474 = !DILocation(line: 57, column: 17, scope: !443)
!475 = !DILocation(line: 57, column: 25, scope: !443)
!476 = !DILocation(line: 57, column: 33, scope: !443)
!477 = !DILocation(line: 57, column: 23, scope: !443)
!478 = !DILocation(line: 56, column: 32, scope: !443)
!479 = !DILocation(line: 58, column: 2, scope: !444)
!480 = !DILocation(line: 58, column: 2, scope: !443)
!481 = !DILocation(line: 59, column: 1, scope: !430)
!482 = !DISubprogram(name: "console_init", scope: !483, file: !483, line: 278, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!483 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!484 = distinct !DISubprogram(name: "cmdline_find_option_bool", scope: !483, file: !483, line: 261, type: !485, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !490)
!485 = !DISubroutineType(types: !486)
!486 = !{!487, !488}
!487 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!490 = !{!491, !492}
!491 = !DILocalVariable(name: "option", arg: 1, scope: !484, file: !483, line: 261, type: !488)
!492 = !DILocalVariable(name: "cmd_line_ptr", scope: !484, file: !483, line: 263, type: !5)
!493 = !DILocation(line: 261, column: 56, scope: !484)
!494 = !DILocation(line: 263, column: 2, scope: !484)
!495 = !DILocation(line: 263, column: 16, scope: !484)
!496 = !DILocation(line: 263, column: 47, scope: !484)
!497 = !DILocation(line: 265, column: 6, scope: !498)
!498 = distinct !DILexicalBlock(scope: !484, file: !483, line: 265, column: 6)
!499 = !DILocation(line: 265, column: 19, scope: !498)
!500 = !DILocation(line: 265, column: 6, scope: !484)
!501 = !DILocation(line: 266, column: 3, scope: !498)
!502 = !DILocation(line: 268, column: 36, scope: !484)
!503 = !DILocation(line: 268, column: 50, scope: !484)
!504 = !DILocation(line: 268, column: 9, scope: !484)
!505 = !DILocation(line: 268, column: 2, scope: !484)
!506 = !DILocation(line: 269, column: 1, scope: !484)
!507 = !DISubprogram(name: "puts", scope: !483, file: !483, line: 314, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !488}
!510 = distinct !DISubprogram(name: "init_heap", scope: !3, file: !3, line: 117, type: !403, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !511)
!511 = !{!512}
!512 = !DILocalVariable(name: "stack_end", scope: !510, file: !3, line: 119, type: !7)
!513 = !DILocation(line: 119, column: 2, scope: !510)
!514 = !DILocation(line: 119, column: 8, scope: !510)
!515 = !DILocation(line: 121, column: 22, scope: !516)
!516 = distinct !DILexicalBlock(scope: !510, file: !3, line: 121, column: 6)
!517 = !DILocation(line: 121, column: 6, scope: !516)
!518 = !DILocation(line: 121, column: 32, scope: !516)
!519 = !DILocation(line: 121, column: 6, scope: !510)
!520 = !DILocation(line: 122, column: 3, scope: !521)
!521 = distinct !DILexicalBlock(scope: !516, file: !3, line: 121, column: 48)
!522 = !{i64 2967}
!523 = !DILocation(line: 126, column: 29, scope: !521)
!524 = !DILocation(line: 126, column: 5, scope: !521)
!525 = !DILocation(line: 126, column: 42, scope: !521)
!526 = !DILocation(line: 125, column: 14, scope: !521)
!527 = !DILocation(line: 125, column: 12, scope: !521)
!528 = !DILocation(line: 127, column: 7, scope: !529)
!529 = distinct !DILexicalBlock(scope: !521, file: !3, line: 127, column: 7)
!530 = !DILocation(line: 127, column: 18, scope: !529)
!531 = !DILocation(line: 127, column: 16, scope: !529)
!532 = !DILocation(line: 127, column: 7, scope: !521)
!533 = !DILocation(line: 128, column: 15, scope: !529)
!534 = !DILocation(line: 128, column: 13, scope: !529)
!535 = !DILocation(line: 128, column: 4, scope: !529)
!536 = !DILocation(line: 129, column: 2, scope: !521)
!537 = !DILocation(line: 131, column: 3, scope: !538)
!538 = distinct !DILexicalBlock(scope: !516, file: !3, line: 129, column: 9)
!539 = !DILocation(line: 134, column: 1, scope: !510)
!540 = !DISubprogram(name: "validate_cpu", scope: !483, file: !483, line: 274, type: !541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DISubroutineType(types: !542)
!542 = !{!487}
!543 = !DISubprogram(name: "die", scope: !483, file: !483, line: 284, type: !403, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!544 = distinct !DISubprogram(name: "set_bios_mode", scope: !3, file: !3, line: 105, type: !403, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !545)
!545 = !{!546}
!546 = !DILocalVariable(name: "ireg", scope: !544, file: !3, line: 108, type: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "biosregs", file: !483, line: 206, size: 352, elements: !548)
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !483, line: 207, baseType: !550, size: 352)
!550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !483, line: 207, size: 352, elements: !551)
!551 = !{!552, !567, !592}
!552 = !DIDerivedType(tag: DW_TAG_member, scope: !550, file: !483, line: 208, baseType: !553, size: 352)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !550, file: !483, line: 208, size: 352, elements: !554)
!554 = !{!555, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "edi", scope: !553, file: !483, line: 209, baseType: !556, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !381, line: 21, baseType: !63)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "esi", scope: !553, file: !483, line: 210, baseType: !556, size: 32, offset: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ebp", scope: !553, file: !483, line: 211, baseType: !556, size: 32, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_esp", scope: !553, file: !483, line: 212, baseType: !556, size: 32, offset: 96)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !553, file: !483, line: 213, baseType: !556, size: 32, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !553, file: !483, line: 214, baseType: !556, size: 32, offset: 160)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !553, file: !483, line: 215, baseType: !556, size: 32, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !553, file: !483, line: 216, baseType: !556, size: 32, offset: 224)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_fsgs", scope: !553, file: !483, line: 217, baseType: !556, size: 32, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_dses", scope: !553, file: !483, line: 218, baseType: !556, size: 32, offset: 288)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !553, file: !483, line: 219, baseType: !556, size: 32, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !550, file: !483, line: 221, baseType: !568, size: 352)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !550, file: !483, line: 221, size: 352, elements: !569)
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !568, file: !483, line: 222, baseType: !382, size: 16)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "hdi", scope: !568, file: !483, line: 222, baseType: !382, size: 16, offset: 16)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !568, file: !483, line: 223, baseType: !382, size: 16, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "hsi", scope: !568, file: !483, line: 223, baseType: !382, size: 16, offset: 48)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !568, file: !483, line: 224, baseType: !382, size: 16, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "hbp", scope: !568, file: !483, line: 224, baseType: !382, size: 16, offset: 80)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_sp", scope: !568, file: !483, line: 225, baseType: !382, size: 16, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_hsp", scope: !568, file: !483, line: 225, baseType: !382, size: 16, offset: 112)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !568, file: !483, line: 226, baseType: !382, size: 16, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "hbx", scope: !568, file: !483, line: 226, baseType: !382, size: 16, offset: 144)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !568, file: !483, line: 227, baseType: !382, size: 16, offset: 160)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "hdx", scope: !568, file: !483, line: 227, baseType: !382, size: 16, offset: 176)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !568, file: !483, line: 228, baseType: !382, size: 16, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "hcx", scope: !568, file: !483, line: 228, baseType: !382, size: 16, offset: 208)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !568, file: !483, line: 229, baseType: !382, size: 16, offset: 224)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "hax", scope: !568, file: !483, line: 229, baseType: !382, size: 16, offset: 240)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !568, file: !483, line: 230, baseType: !382, size: 16, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !568, file: !483, line: 230, baseType: !382, size: 16, offset: 272)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !568, file: !483, line: 231, baseType: !382, size: 16, offset: 288)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !568, file: !483, line: 231, baseType: !382, size: 16, offset: 304)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !568, file: !483, line: 232, baseType: !382, size: 16, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "hflags", scope: !568, file: !483, line: 232, baseType: !382, size: 16, offset: 336)
!592 = !DIDerivedType(tag: DW_TAG_member, scope: !550, file: !483, line: 234, baseType: !593, size: 256)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !550, file: !483, line: 234, size: 256, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dil", scope: !593, file: !483, line: 235, baseType: !380, size: 8)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !593, file: !483, line: 235, baseType: !380, size: 8, offset: 8)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "edi2", scope: !593, file: !483, line: 235, baseType: !380, size: 8, offset: 16)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "edi3", scope: !593, file: !483, line: 235, baseType: !380, size: 8, offset: 24)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sil", scope: !593, file: !483, line: 236, baseType: !380, size: 8, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sih", scope: !593, file: !483, line: 236, baseType: !380, size: 8, offset: 40)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "esi2", scope: !593, file: !483, line: 236, baseType: !380, size: 8, offset: 48)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "esi3", scope: !593, file: !483, line: 236, baseType: !380, size: 8, offset: 56)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !593, file: !483, line: 237, baseType: !380, size: 8, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !593, file: !483, line: 237, baseType: !380, size: 8, offset: 72)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ebp2", scope: !593, file: !483, line: 237, baseType: !380, size: 8, offset: 80)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ebp3", scope: !593, file: !483, line: 237, baseType: !380, size: 8, offset: 88)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_spl", scope: !593, file: !483, line: 238, baseType: !380, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_sph", scope: !593, file: !483, line: 238, baseType: !380, size: 8, offset: 104)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_esp2", scope: !593, file: !483, line: 238, baseType: !380, size: 8, offset: 112)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_esp3", scope: !593, file: !483, line: 238, baseType: !380, size: 8, offset: 120)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !593, file: !483, line: 239, baseType: !380, size: 8, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !593, file: !483, line: 239, baseType: !380, size: 8, offset: 136)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ebx2", scope: !593, file: !483, line: 239, baseType: !380, size: 8, offset: 144)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ebx3", scope: !593, file: !483, line: 239, baseType: !380, size: 8, offset: 152)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !593, file: !483, line: 240, baseType: !380, size: 8, offset: 160)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !593, file: !483, line: 240, baseType: !380, size: 8, offset: 168)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "edx2", scope: !593, file: !483, line: 240, baseType: !380, size: 8, offset: 176)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "edx3", scope: !593, file: !483, line: 240, baseType: !380, size: 8, offset: 184)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !593, file: !483, line: 241, baseType: !380, size: 8, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !593, file: !483, line: 241, baseType: !380, size: 8, offset: 200)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ecx2", scope: !593, file: !483, line: 241, baseType: !380, size: 8, offset: 208)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ecx3", scope: !593, file: !483, line: 241, baseType: !380, size: 8, offset: 216)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "al", scope: !593, file: !483, line: 242, baseType: !380, size: 8, offset: 224)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "ah", scope: !593, file: !483, line: 242, baseType: !380, size: 8, offset: 232)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "eax2", scope: !593, file: !483, line: 242, baseType: !380, size: 8, offset: 240)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "eax3", scope: !593, file: !483, line: 242, baseType: !380, size: 8, offset: 248)
!627 = !DILocation(line: 108, column: 2, scope: !544)
!628 = !DILocation(line: 108, column: 18, scope: !544)
!629 = !DILocation(line: 110, column: 2, scope: !544)
!630 = !DILocation(line: 111, column: 7, scope: !544)
!631 = !DILocation(line: 111, column: 10, scope: !544)
!632 = !DILocation(line: 112, column: 7, scope: !544)
!633 = !DILocation(line: 112, column: 10, scope: !544)
!634 = !DILocation(line: 113, column: 2, scope: !544)
!635 = !DILocation(line: 115, column: 1, scope: !544)
!636 = !DISubprogram(name: "detect_memory", scope: !483, file: !483, line: 287, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!637 = distinct !DISubprogram(name: "keyboard_init", scope: !3, file: !3, line: 66, type: !403, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !638)
!638 = !{!639, !640}
!639 = !DILocalVariable(name: "ireg", scope: !637, file: !3, line: 68, type: !547)
!640 = !DILocalVariable(name: "oreg", scope: !637, file: !3, line: 68, type: !547)
!641 = !DILocation(line: 68, column: 2, scope: !637)
!642 = !DILocation(line: 68, column: 18, scope: !637)
!643 = !DILocation(line: 68, column: 24, scope: !637)
!644 = !DILocation(line: 69, column: 2, scope: !637)
!645 = !DILocation(line: 71, column: 7, scope: !637)
!646 = !DILocation(line: 71, column: 10, scope: !637)
!647 = !DILocation(line: 72, column: 2, scope: !637)
!648 = !DILocation(line: 73, column: 32, scope: !637)
!649 = !DILocation(line: 73, column: 25, scope: !637)
!650 = !DILocation(line: 75, column: 7, scope: !637)
!651 = !DILocation(line: 75, column: 10, scope: !637)
!652 = !DILocation(line: 76, column: 2, scope: !637)
!653 = !DILocation(line: 77, column: 1, scope: !637)
!654 = distinct !DISubprogram(name: "query_ist", scope: !3, file: !3, line: 82, type: !403, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !655)
!655 = !{!656, !657}
!656 = !DILocalVariable(name: "ireg", scope: !654, file: !3, line: 84, type: !547)
!657 = !DILocalVariable(name: "oreg", scope: !654, file: !3, line: 84, type: !547)
!658 = !DILocation(line: 84, column: 2, scope: !654)
!659 = !DILocation(line: 84, column: 18, scope: !654)
!660 = !DILocation(line: 84, column: 24, scope: !654)
!661 = !DILocation(line: 88, column: 10, scope: !662)
!662 = distinct !DILexicalBlock(scope: !654, file: !3, line: 88, column: 6)
!663 = !DILocation(line: 88, column: 16, scope: !662)
!664 = !DILocation(line: 88, column: 6, scope: !654)
!665 = !DILocation(line: 89, column: 3, scope: !662)
!666 = !DILocation(line: 91, column: 2, scope: !654)
!667 = !DILocation(line: 92, column: 7, scope: !654)
!668 = !DILocation(line: 92, column: 11, scope: !654)
!669 = !DILocation(line: 93, column: 7, scope: !654)
!670 = !DILocation(line: 93, column: 11, scope: !654)
!671 = !DILocation(line: 94, column: 2, scope: !654)
!672 = !DILocation(line: 96, column: 41, scope: !654)
!673 = !DILocation(line: 96, column: 34, scope: !654)
!674 = !DILocation(line: 97, column: 41, scope: !654)
!675 = !DILocation(line: 97, column: 34, scope: !654)
!676 = !DILocation(line: 98, column: 41, scope: !654)
!677 = !DILocation(line: 98, column: 34, scope: !654)
!678 = !DILocation(line: 99, column: 41, scope: !654)
!679 = !DILocation(line: 99, column: 34, scope: !654)
!680 = !DILocation(line: 100, column: 1, scope: !654)
!681 = !DISubprogram(name: "set_video", scope: !483, file: !483, line: 321, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!682 = !DISubprogram(name: "go_to_protected_mode", scope: !483, file: !483, line: 290, type: !403, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!683 = distinct !DISubprogram(name: "__inb", scope: !684, file: !684, line: 22, type: !378, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !685)
!684 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!685 = !{!686, !687}
!686 = !DILocalVariable(name: "port", arg: 1, scope: !683, file: !684, line: 22, type: !382)
!687 = !DILocalVariable(name: "value", scope: !683, file: !684, line: 22, type: !380)
!688 = !DILocation(line: 22, column: 1, scope: !683)
!689 = !{i64 2147848428}
!690 = distinct !DISubprogram(name: "__outb", scope: !684, file: !684, line: 22, type: !385, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !691)
!691 = !{!692, !693}
!692 = !DILocalVariable(name: "value", arg: 1, scope: !690, file: !684, line: 22, type: !380)
!693 = !DILocalVariable(name: "port", arg: 2, scope: !690, file: !684, line: 22, type: !382)
!694 = !DILocation(line: 22, column: 1, scope: !690)
!695 = !{i64 2147848232}
!696 = distinct !DISubprogram(name: "__outw", scope: !684, file: !684, line: 23, type: !389, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !697)
!697 = !{!698, !699}
!698 = !DILocalVariable(name: "value", arg: 1, scope: !696, file: !684, line: 23, type: !382)
!699 = !DILocalVariable(name: "port", arg: 2, scope: !696, file: !684, line: 23, type: !382)
!700 = !DILocation(line: 23, column: 1, scope: !696)
!701 = !{i64 2147849073}
!702 = distinct !DISubprogram(name: "ds", scope: !483, file: !483, line: 47, type: !703, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{!382}
!705 = !{!706}
!706 = !DILocalVariable(name: "seg", scope: !702, file: !483, line: 49, type: !382)
!707 = !DILocation(line: 49, column: 2, scope: !702)
!708 = !DILocation(line: 49, column: 6, scope: !702)
!709 = !DILocation(line: 50, column: 2, scope: !702)
!710 = !{i64 178872}
!711 = !DILocation(line: 51, column: 9, scope: !702)
!712 = !DILocation(line: 52, column: 1, scope: !702)
!713 = !DILocation(line: 51, column: 2, scope: !702)
!714 = !DISubprogram(name: "__cmdline_find_option_bool", scope: !483, file: !483, line: 250, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!715 = !DISubroutineType(types: !716)
!716 = !{!487, !5, !488}
!717 = !DISubprogram(name: "initregs", scope: !483, file: !483, line: 302, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !720}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 32)
!721 = !DISubprogram(name: "intcall", scope: !483, file: !483, line: 246, type: !722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !380, !724, !720}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
