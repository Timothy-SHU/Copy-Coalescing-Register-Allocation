; ModuleID = 'drivers/firmware/efi/libstub/gop.c'
source_filename = "drivers/firmware/efi/libstub/gop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.2 = type { i32, %union.anon }
%union.anon = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i8 }
%struct.guid_t = type { [16 x i8] }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i64, i32, i64, ptr, i64, ptr, i64, i64, ptr, ptr, i64, i64 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.0 = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.4 = type { ptr, ptr, ptr, ptr }
%struct.anon.5 = type { i32, i32, i32, i32 }
%struct.anon.6 = type { i32, i32, ptr, i64, i64, i64 }
%struct.anon.7 = type { i32, i32, i32, i32, i64, i32 }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.efi_graphics_output_mode_info_t = type { i32, i32, i32, i32, %struct.efi_pixel_bitmask_t, i32 }
%struct.efi_pixel_bitmask_t = type { i32, i32, i32, i32 }
%struct.efi_input_key_t = type { i16, i16 }

@efi_system_table = external hidden global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"mode=\00", align 1, !dbg !0
@cmdline = internal global %struct.anon.2 zeroinitializer, align 4, !dbg !7
@.str.1 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1, !dbg !312
@.str.2 = private unnamed_addr constant [4 x i8] c"bgr\00", align 1, !dbg !317
@.str.3 = private unnamed_addr constant [5 x i8] c"auto\00", align 1, !dbg !319
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1, !dbg !324
@efi_is64 = external hidden constant i8, align 1
@__const.find_gop.conout_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c",o\B3\D3Q\D5\D4\11\9AF\00\90'?\C1M" }, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"\013ERROR: Failed to set requested mode\0A\00", align 1, !dbg !326
@.str.6 = private unnamed_addr constant [36 x i8] c"\013ERROR: Requested mode is invalid\0A\00", align 1, !dbg !331
@.str.7 = private unnamed_addr constant [40 x i8] c"\013ERROR: Couldn't get mode information\0A\00", align 1, !dbg !336
@.str.8 = private unnamed_addr constant [30 x i8] c"\013ERROR: Invalid PixelFormat\0A\00", align 1, !dbg !341
@.str.9 = private unnamed_addr constant [39 x i8] c"\013ERROR: Couldn't find requested mode\0A\00", align 1, !dbg !346
@.str.10 = private unnamed_addr constant [35 x i8] c"Available graphics modes are 0-%u\0A\00", align 1, !dbg !348
@.str.11 = private unnamed_addr constant [40 x i8] c"  * = current mode\0A  - = unusable mode\0A\00", align 1, !dbg !353
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !355
@.str.13 = private unnamed_addr constant [4 x i8] c"blt\00", align 1, !dbg !360
@.str.14 = private unnamed_addr constant [4 x i8] c"xxx\00", align 1, !dbg !362
@.str.15 = private unnamed_addr constant [42 x i8] c"Mode %3u %c%c: Resolution %ux%u-%s%.0hhu\0A\00", align 1, !dbg !364
@.str.16 = private unnamed_addr constant [49 x i8] c"\0APress any key to continue (or wait 10 seconds)\0A\00", align 1, !dbg !369
@.str.17 = private unnamed_addr constant [55 x i8] c"\013ERROR: Unable to read key, continuing in 10 seconds\0A\00", align 1, !dbg !374

; Function Attrs: noredzone nounwind
define hidden void @efi_parse_option_graphics(ptr noundef %option) #0 !dbg !399 {
entry:
  %option.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !404, metadata !DIExpression()), !dbg !405
  br label %while.cond, !dbg !406

while.cond:                                       ; preds = %while.end, %if.then8, %if.then5, %if.then2, %if.then, %entry
  %0 = load ptr, ptr %option.addr, align 8, !dbg !407
  %1 = load i8, ptr %0, align 1, !dbg !408
  %tobool = icmp ne i8 %1, 0, !dbg !406
  br i1 %tobool, label %while.body, label %while.end15, !dbg !406

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %option.addr, align 8, !dbg !409
  %call = call zeroext i1 @parse_modenum(ptr noundef %2, ptr noundef %option.addr) #8, !dbg !412
  br i1 %call, label %if.then, label %if.end, !dbg !413

if.then:                                          ; preds = %while.body
  br label %while.cond, !dbg !414, !llvm.loop !415

if.end:                                           ; preds = %while.body
  %3 = load ptr, ptr %option.addr, align 8, !dbg !419
  %call1 = call zeroext i1 @parse_res(ptr noundef %3, ptr noundef %option.addr) #8, !dbg !421
  br i1 %call1, label %if.then2, label %if.end3, !dbg !422

if.then2:                                         ; preds = %if.end
  br label %while.cond, !dbg !423, !llvm.loop !415

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %option.addr, align 8, !dbg !424
  %call4 = call zeroext i1 @parse_auto(ptr noundef %4, ptr noundef %option.addr) #8, !dbg !426
  br i1 %call4, label %if.then5, label %if.end6, !dbg !427

if.then5:                                         ; preds = %if.end3
  br label %while.cond, !dbg !428, !llvm.loop !415

if.end6:                                          ; preds = %if.end3
  %5 = load ptr, ptr %option.addr, align 8, !dbg !429
  %call7 = call zeroext i1 @parse_list(ptr noundef %5, ptr noundef %option.addr) #8, !dbg !431
  br i1 %call7, label %if.then8, label %if.end9, !dbg !432

if.then8:                                         ; preds = %if.end6
  br label %while.cond, !dbg !433, !llvm.loop !415

if.end9:                                          ; preds = %if.end6
  br label %while.cond10, !dbg !434

while.cond10:                                     ; preds = %while.body14, %if.end9
  %6 = load ptr, ptr %option.addr, align 8, !dbg !435
  %7 = load i8, ptr %6, align 1, !dbg !436
  %conv = sext i8 %7 to i32, !dbg !436
  %tobool11 = icmp ne i32 %conv, 0, !dbg !436
  br i1 %tobool11, label %land.rhs, label %land.end, !dbg !437

land.rhs:                                         ; preds = %while.cond10
  %8 = load ptr, ptr %option.addr, align 8, !dbg !438
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1, !dbg !438
  store ptr %incdec.ptr, ptr %option.addr, align 8, !dbg !438
  %9 = load i8, ptr %8, align 1, !dbg !439
  %conv12 = sext i8 %9 to i32, !dbg !439
  %cmp = icmp ne i32 %conv12, 44, !dbg !440
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond10
  %10 = phi i1 [ false, %while.cond10 ], [ %cmp, %land.rhs ], !dbg !441
  br i1 %10, label %while.body14, label %while.end, !dbg !434

while.body14:                                     ; preds = %land.end
  br label %while.cond10, !dbg !434, !llvm.loop !442

while.end:                                        ; preds = %land.end
  br label %while.cond, !dbg !406, !llvm.loop !415

while.end15:                                      ; preds = %while.cond
  ret void, !dbg !444
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone nounwind
define internal zeroext i1 @parse_modenum(ptr noundef %option, ptr noundef %next) #0 !dbg !445 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !450, metadata !DIExpression()), !dbg !453
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !451, metadata !DIExpression()), !dbg !454
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #9, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %m, metadata !452, metadata !DIExpression()), !dbg !456
  %0 = load ptr, ptr %option.addr, align 8, !dbg !457
  %call = call zeroext i1 @strstarts(ptr noundef %0, ptr noundef @.str) #8, !dbg !459
  br i1 %call, label %if.end, label %if.then, !dbg !460

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !461

if.end:                                           ; preds = %entry
  %call1 = call i64 @strlen(ptr noundef @.str) #8, !dbg !462
  %1 = load ptr, ptr %option.addr, align 8, !dbg !463
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %call1, !dbg !463
  store ptr %add.ptr, ptr %option.addr, align 8, !dbg !463
  %2 = load ptr, ptr %option.addr, align 8, !dbg !464
  %call2 = call i64 @simple_strtoull(ptr noundef %2, ptr noundef %option.addr, i32 noundef 0) #8, !dbg !465
  %conv = trunc i64 %call2 to i32, !dbg !465
  store i32 %conv, ptr %m, align 4, !dbg !466
  %3 = load ptr, ptr %option.addr, align 8, !dbg !467
  %4 = load i8, ptr %3, align 1, !dbg !469
  %conv3 = sext i8 %4 to i32, !dbg !469
  %tobool = icmp ne i32 %conv3, 0, !dbg !469
  br i1 %tobool, label %land.lhs.true, label %if.end7, !dbg !470

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %option.addr, align 8, !dbg !471
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1, !dbg !471
  store ptr %incdec.ptr, ptr %option.addr, align 8, !dbg !471
  %6 = load i8, ptr %5, align 1, !dbg !472
  %conv4 = sext i8 %6 to i32, !dbg !472
  %cmp = icmp ne i32 %conv4, 44, !dbg !473
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !474

if.then6:                                         ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !475

if.end7:                                          ; preds = %land.lhs.true, %if.end
  store i32 1, ptr @cmdline, align 4, !dbg !476
  %7 = load i32, ptr %m, align 4, !dbg !477
  store i32 %7, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), align 4, !dbg !478
  %8 = load ptr, ptr %option.addr, align 8, !dbg !479
  %9 = load ptr, ptr %next.addr, align 8, !dbg !480
  store ptr %8, ptr %9, align 8, !dbg !481
  store i1 true, ptr %retval, align 1, !dbg !482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !482

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #9, !dbg !483
  %10 = load i1, ptr %retval, align 1, !dbg !483
  ret i1 %10, !dbg !483
}

; Function Attrs: noredzone nounwind
define internal zeroext i1 @parse_res(ptr noundef %option, ptr noundef %next) #0 !dbg !484 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %d = alloca i32, align 4
  %pf = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !486, metadata !DIExpression()), !dbg !492
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !487, metadata !DIExpression()), !dbg !493
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #9, !dbg !494
  call void @llvm.dbg.declare(metadata ptr %w, metadata !488, metadata !DIExpression()), !dbg !495
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #9, !dbg !494
  call void @llvm.dbg.declare(metadata ptr %h, metadata !489, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #9, !dbg !494
  call void @llvm.dbg.declare(metadata ptr %d, metadata !490, metadata !DIExpression()), !dbg !497
  store i32 0, ptr %d, align 4, !dbg !497
  call void @llvm.lifetime.start.p0(i64 4, ptr %pf) #9, !dbg !498
  call void @llvm.dbg.declare(metadata ptr %pf, metadata !491, metadata !DIExpression()), !dbg !499
  store i32 -1, ptr %pf, align 4, !dbg !499
  %0 = load ptr, ptr %option.addr, align 8, !dbg !500
  %1 = load i8, ptr %0, align 1, !dbg !502
  %conv = sext i8 %1 to i32, !dbg !502
  %call = call i32 @isdigit(i32 noundef %conv) #8, !dbg !503
  %tobool = icmp ne i32 %call, 0, !dbg !503
  br i1 %tobool, label %if.end, label %if.then, !dbg !504

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !505

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %option.addr, align 8, !dbg !506
  %call1 = call i64 @simple_strtoull(ptr noundef %2, ptr noundef %option.addr, i32 noundef 10) #8, !dbg !507
  %conv2 = trunc i64 %call1 to i32, !dbg !507
  store i32 %conv2, ptr %w, align 4, !dbg !508
  %3 = load ptr, ptr %option.addr, align 8, !dbg !509
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !509
  store ptr %incdec.ptr, ptr %option.addr, align 8, !dbg !509
  %4 = load i8, ptr %3, align 1, !dbg !511
  %conv3 = sext i8 %4 to i32, !dbg !511
  %cmp = icmp ne i32 %conv3, 120, !dbg !512
  br i1 %cmp, label %if.then8, label %lor.lhs.false, !dbg !513

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr %option.addr, align 8, !dbg !514
  %6 = load i8, ptr %5, align 1, !dbg !515
  %conv5 = sext i8 %6 to i32, !dbg !515
  %call6 = call i32 @isdigit(i32 noundef %conv5) #8, !dbg !516
  %tobool7 = icmp ne i32 %call6, 0, !dbg !516
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !517

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  store i1 false, ptr %retval, align 1, !dbg !518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !518

if.end9:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %option.addr, align 8, !dbg !519
  %call10 = call i64 @simple_strtoull(ptr noundef %7, ptr noundef %option.addr, i32 noundef 10) #8, !dbg !520
  %conv11 = trunc i64 %call10 to i32, !dbg !520
  store i32 %conv11, ptr %h, align 4, !dbg !521
  %8 = load ptr, ptr %option.addr, align 8, !dbg !522
  %9 = load i8, ptr %8, align 1, !dbg !524
  %conv12 = sext i8 %9 to i32, !dbg !524
  %cmp13 = icmp eq i32 %conv12, 45, !dbg !525
  br i1 %cmp13, label %if.then15, label %if.end35, !dbg !526

if.then15:                                        ; preds = %if.end9
  %10 = load ptr, ptr %option.addr, align 8, !dbg !527
  %incdec.ptr16 = getelementptr inbounds i8, ptr %10, i32 1, !dbg !527
  store ptr %incdec.ptr16, ptr %option.addr, align 8, !dbg !527
  %11 = load ptr, ptr %option.addr, align 8, !dbg !529
  %call17 = call zeroext i1 @strstarts(ptr noundef %11, ptr noundef @.str.1) #8, !dbg !531
  br i1 %call17, label %if.then18, label %if.else, !dbg !532

if.then18:                                        ; preds = %if.then15
  %call19 = call i64 @strlen(ptr noundef @.str.1) #8, !dbg !533
  %12 = load ptr, ptr %option.addr, align 8, !dbg !535
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %call19, !dbg !535
  store ptr %add.ptr, ptr %option.addr, align 8, !dbg !535
  store i32 0, ptr %pf, align 4, !dbg !536
  br label %if.end34, !dbg !537

if.else:                                          ; preds = %if.then15
  %13 = load ptr, ptr %option.addr, align 8, !dbg !538
  %call20 = call zeroext i1 @strstarts(ptr noundef %13, ptr noundef @.str.2) #8, !dbg !540
  br i1 %call20, label %if.then21, label %if.else24, !dbg !541

if.then21:                                        ; preds = %if.else
  %call22 = call i64 @strlen(ptr noundef @.str.2) #8, !dbg !542
  %14 = load ptr, ptr %option.addr, align 8, !dbg !544
  %add.ptr23 = getelementptr inbounds i8, ptr %14, i64 %call22, !dbg !544
  store ptr %add.ptr23, ptr %option.addr, align 8, !dbg !544
  store i32 1, ptr %pf, align 4, !dbg !545
  br label %if.end33, !dbg !546

if.else24:                                        ; preds = %if.else
  %15 = load ptr, ptr %option.addr, align 8, !dbg !547
  %16 = load i8, ptr %15, align 1, !dbg !549
  %conv25 = sext i8 %16 to i32, !dbg !549
  %call26 = call i32 @isdigit(i32 noundef %conv25) #8, !dbg !550
  %tobool27 = icmp ne i32 %call26, 0, !dbg !550
  br i1 %tobool27, label %if.then28, label %if.else31, !dbg !551

if.then28:                                        ; preds = %if.else24
  %17 = load ptr, ptr %option.addr, align 8, !dbg !552
  %call29 = call i64 @simple_strtoull(ptr noundef %17, ptr noundef %option.addr, i32 noundef 10) #8, !dbg !553
  %conv30 = trunc i64 %call29 to i32, !dbg !553
  store i32 %conv30, ptr %d, align 4, !dbg !554
  br label %if.end32, !dbg !555

if.else31:                                        ; preds = %if.else24
  store i1 false, ptr %retval, align 1, !dbg !556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !556

if.end32:                                         ; preds = %if.then28
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then21
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then18
  br label %if.end35, !dbg !557

if.end35:                                         ; preds = %if.end34, %if.end9
  %18 = load ptr, ptr %option.addr, align 8, !dbg !558
  %19 = load i8, ptr %18, align 1, !dbg !560
  %conv36 = sext i8 %19 to i32, !dbg !560
  %tobool37 = icmp ne i32 %conv36, 0, !dbg !560
  br i1 %tobool37, label %land.lhs.true, label %if.end43, !dbg !561

land.lhs.true:                                    ; preds = %if.end35
  %20 = load ptr, ptr %option.addr, align 8, !dbg !562
  %incdec.ptr38 = getelementptr inbounds i8, ptr %20, i32 1, !dbg !562
  store ptr %incdec.ptr38, ptr %option.addr, align 8, !dbg !562
  %21 = load i8, ptr %20, align 1, !dbg !563
  %conv39 = sext i8 %21 to i32, !dbg !563
  %cmp40 = icmp ne i32 %conv39, 44, !dbg !564
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !565

if.then42:                                        ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !566

if.end43:                                         ; preds = %land.lhs.true, %if.end35
  store i32 2, ptr @cmdline, align 4, !dbg !567
  %22 = load i32, ptr %w, align 4, !dbg !568
  store i32 %22, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), align 4, !dbg !569
  %23 = load i32, ptr %h, align 4, !dbg !570
  store i32 %23, ptr getelementptr inbounds (%struct.anon.3, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), i32 0, i32 1), align 4, !dbg !571
  %24 = load i32, ptr %pf, align 4, !dbg !572
  store i32 %24, ptr getelementptr inbounds (%struct.anon.3, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), i32 0, i32 2), align 4, !dbg !573
  %25 = load i32, ptr %d, align 4, !dbg !574
  %conv44 = trunc i32 %25 to i8, !dbg !574
  store i8 %conv44, ptr getelementptr inbounds (%struct.anon.3, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), i32 0, i32 3), align 4, !dbg !575
  %26 = load ptr, ptr %option.addr, align 8, !dbg !576
  %27 = load ptr, ptr %next.addr, align 8, !dbg !577
  store ptr %26, ptr %27, align 8, !dbg !578
  store i1 true, ptr %retval, align 1, !dbg !579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !579

cleanup:                                          ; preds = %if.end43, %if.then42, %if.else31, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pf) #9, !dbg !580
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #9, !dbg !580
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #9, !dbg !580
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #9, !dbg !580
  %28 = load i1, ptr %retval, align 1, !dbg !580
  ret i1 %28, !dbg !580
}

; Function Attrs: noredzone nounwind
define internal zeroext i1 @parse_auto(ptr noundef %option, ptr noundef %next) #0 !dbg !581 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !583, metadata !DIExpression()), !dbg !585
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !584, metadata !DIExpression()), !dbg !586
  %0 = load ptr, ptr %option.addr, align 8, !dbg !587
  %call = call zeroext i1 @strstarts(ptr noundef %0, ptr noundef @.str.3) #8, !dbg !589
  br i1 %call, label %if.end, label %if.then, !dbg !590

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !591
  br label %return, !dbg !591

if.end:                                           ; preds = %entry
  %call1 = call i64 @strlen(ptr noundef @.str.3) #8, !dbg !592
  %1 = load ptr, ptr %option.addr, align 8, !dbg !593
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %call1, !dbg !593
  store ptr %add.ptr, ptr %option.addr, align 8, !dbg !593
  %2 = load ptr, ptr %option.addr, align 8, !dbg !594
  %3 = load i8, ptr %2, align 1, !dbg !596
  %conv = sext i8 %3 to i32, !dbg !596
  %tobool = icmp ne i32 %conv, 0, !dbg !596
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !597

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %option.addr, align 8, !dbg !598
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1, !dbg !598
  store ptr %incdec.ptr, ptr %option.addr, align 8, !dbg !598
  %5 = load i8, ptr %4, align 1, !dbg !599
  %conv2 = sext i8 %5 to i32, !dbg !599
  %cmp = icmp ne i32 %conv2, 44, !dbg !600
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !601

if.then4:                                         ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !602
  br label %return, !dbg !602

if.end5:                                          ; preds = %land.lhs.true, %if.end
  store i32 3, ptr @cmdline, align 4, !dbg !603
  %6 = load ptr, ptr %option.addr, align 8, !dbg !604
  %7 = load ptr, ptr %next.addr, align 8, !dbg !605
  store ptr %6, ptr %7, align 8, !dbg !606
  store i1 true, ptr %retval, align 1, !dbg !607
  br label %return, !dbg !607

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !608
  ret i1 %8, !dbg !608
}

; Function Attrs: noredzone nounwind
define internal zeroext i1 @parse_list(ptr noundef %option, ptr noundef %next) #0 !dbg !609 {
entry:
  %retval = alloca i1, align 1
  %option.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !611, metadata !DIExpression()), !dbg !613
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !612, metadata !DIExpression()), !dbg !614
  %0 = load ptr, ptr %option.addr, align 8, !dbg !615
  %call = call zeroext i1 @strstarts(ptr noundef %0, ptr noundef @.str.4) #8, !dbg !617
  br i1 %call, label %if.end, label %if.then, !dbg !618

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !619
  br label %return, !dbg !619

if.end:                                           ; preds = %entry
  %call1 = call i64 @strlen(ptr noundef @.str.4) #8, !dbg !620
  %1 = load ptr, ptr %option.addr, align 8, !dbg !621
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %call1, !dbg !621
  store ptr %add.ptr, ptr %option.addr, align 8, !dbg !621
  %2 = load ptr, ptr %option.addr, align 8, !dbg !622
  %3 = load i8, ptr %2, align 1, !dbg !624
  %conv = sext i8 %3 to i32, !dbg !624
  %tobool = icmp ne i32 %conv, 0, !dbg !624
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !625

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %option.addr, align 8, !dbg !626
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1, !dbg !626
  store ptr %incdec.ptr, ptr %option.addr, align 8, !dbg !626
  %5 = load i8, ptr %4, align 1, !dbg !627
  %conv2 = sext i8 %5 to i32, !dbg !627
  %cmp = icmp ne i32 %conv2, 44, !dbg !628
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !629

if.then4:                                         ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !630
  br label %return, !dbg !630

if.end5:                                          ; preds = %land.lhs.true, %if.end
  store i32 4, ptr @cmdline, align 4, !dbg !631
  %6 = load ptr, ptr %option.addr, align 8, !dbg !632
  %7 = load ptr, ptr %next.addr, align 8, !dbg !633
  store ptr %6, ptr %7, align 8, !dbg !634
  store i1 true, ptr %retval, align 1, !dbg !635
  br label %return, !dbg !635

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !636
  ret i1 %8, !dbg !636
}

; Function Attrs: noredzone nounwind
define hidden i64 @efi_setup_gop(ptr noundef %si, ptr noundef %proto, i64 noundef %size) #0 !dbg !637 {
entry:
  %retval = alloca i64, align 8
  %si.addr = alloca ptr, align 8
  %proto.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %status = alloca i64, align 8
  %gop_handle = alloca ptr, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad36 = alloca [3 x i64], align 16
  %tmp40 = alloca i64, align 8
  %__pad75 = alloca [3 x i64], align 16
  %tmp79 = alloca i64, align 8
  store ptr %si, ptr %si.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %si.addr, metadata !684, metadata !DIExpression()), !dbg !699
  store ptr %proto, ptr %proto.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %proto.addr, metadata !685, metadata !DIExpression()), !dbg !700
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !686, metadata !DIExpression()), !dbg !701
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %status, metadata !687, metadata !DIExpression()), !dbg !703
  call void @llvm.lifetime.start.p0(i64 8, ptr %gop_handle) #9, !dbg !704
  call void @llvm.dbg.declare(metadata ptr %gop_handle, metadata !688, metadata !DIExpression()), !dbg !705
  store ptr null, ptr %gop_handle, align 8, !dbg !705
  %call = call zeroext i1 @efi_is_native() #8, !dbg !706
  br i1 %call, label %cond.true, label %cond.false5, !dbg !706

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #8, !dbg !706
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !706

cond.true2:                                       ; preds = %cond.true
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !706
  %boottime = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 10, !dbg !706
  %1 = load ptr, ptr %boottime, align 8, !dbg !706
  br label %cond.end, !dbg !706

cond.false:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !706
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 10, !dbg !706
  %3 = load i32, ptr %boottime3, align 4, !dbg !706
  %conv = zext i32 %3 to i64, !dbg !706
  %4 = inttoptr i64 %conv to ptr, !dbg !706
  br label %cond.end, !dbg !706

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %1, %cond.true2 ], [ %4, %cond.false ], !dbg !706
  %allocate_pool = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 6, !dbg !706
  %5 = load ptr, ptr %allocate_pool, align 8, !dbg !706
  %6 = load i64, ptr %size.addr, align 8, !dbg !706
  %call4 = call win64cc i64 %5(i32 noundef 2, i64 noundef %6, ptr noundef %gop_handle) #8, !dbg !706
  br label %cond.end19, !dbg !706

cond.false5:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !707
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !689, metadata !DIExpression()), !dbg !707
  br label %do.body, !dbg !708

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !710

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !710

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #8, !dbg !707
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !707

cond.true8:                                       ; preds = %do.end
  %7 = load ptr, ptr @efi_system_table, align 8, !dbg !707
  %boottime9 = getelementptr inbounds %struct.anon.1, ptr %7, i32 0, i32 10, !dbg !707
  %8 = load ptr, ptr %boottime9, align 8, !dbg !707
  br label %cond.end13, !dbg !707

cond.false10:                                     ; preds = %do.end
  %9 = load ptr, ptr @efi_system_table, align 8, !dbg !707
  %boottime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %9, i32 0, i32 10, !dbg !707
  %10 = load i32, ptr %boottime11, align 4, !dbg !707
  %conv12 = zext i32 %10 to i64, !dbg !707
  %11 = inttoptr i64 %conv12 to ptr, !dbg !707
  br label %cond.end13, !dbg !707

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %8, %cond.true8 ], [ %11, %cond.false10 ], !dbg !707
  %allocate_pool15 = getelementptr inbounds %struct.anon.0, ptr %cond14, i32 0, i32 6, !dbg !707
  %12 = load i32, ptr %allocate_pool15, align 4, !dbg !707
  %13 = load i64, ptr %size.addr, align 8, !dbg !707
  %call16 = call ptr @efi64_zero_upper(ptr noundef %gop_handle) #8, !dbg !707
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !707
  %call17 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %12, i32 noundef 2, i64 noundef %13, ptr noundef %call16, ptr noundef %arraydecay) #8, !dbg !707
  store i64 %call17, ptr %tmp, align 8, !dbg !707
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !706
  %14 = load i64, ptr %tmp, align 8, !dbg !707
  %call18 = call i64 @__efi64_widen_efi_status(i64 noundef %14) #8, !dbg !706
  br label %cond.end19, !dbg !706

cond.end19:                                       ; preds = %cond.end13, %cond.end
  %cond20 = phi i64 [ %call4, %cond.end ], [ %call18, %cond.end13 ], !dbg !706
  store i64 %cond20, ptr %status, align 8, !dbg !712
  %15 = load i64, ptr %status, align 8, !dbg !713
  %cmp = icmp ne i64 %15, 0, !dbg !715
  br i1 %cmp, label %if.then, label %if.end, !dbg !716

if.then:                                          ; preds = %cond.end19
  %16 = load i64, ptr %status, align 8, !dbg !717
  store i64 %16, ptr %retval, align 8, !dbg !718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !718

if.end:                                           ; preds = %cond.end19
  %call22 = call zeroext i1 @efi_is_native() #8, !dbg !719
  br i1 %call22, label %cond.true24, label %cond.false35, !dbg !719

cond.true24:                                      ; preds = %if.end
  %call25 = call zeroext i1 @efi_is_native() #8, !dbg !719
  br i1 %call25, label %cond.true27, label %cond.false29, !dbg !719

cond.true27:                                      ; preds = %cond.true24
  %17 = load ptr, ptr @efi_system_table, align 8, !dbg !719
  %boottime28 = getelementptr inbounds %struct.anon.1, ptr %17, i32 0, i32 10, !dbg !719
  %18 = load ptr, ptr %boottime28, align 8, !dbg !719
  br label %cond.end32, !dbg !719

cond.false29:                                     ; preds = %cond.true24
  %19 = load ptr, ptr @efi_system_table, align 8, !dbg !719
  %boottime30 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %19, i32 0, i32 10, !dbg !719
  %20 = load i32, ptr %boottime30, align 4, !dbg !719
  %conv31 = zext i32 %20 to i64, !dbg !719
  %21 = inttoptr i64 %conv31 to ptr, !dbg !719
  br label %cond.end32, !dbg !719

cond.end32:                                       ; preds = %cond.false29, %cond.true27
  %cond33 = phi ptr [ %18, %cond.true27 ], [ %21, %cond.false29 ], !dbg !719
  %locate_handle = getelementptr inbounds %struct.anon, ptr %cond33, i32 0, i32 20, !dbg !719
  %22 = load ptr, ptr %locate_handle, align 8, !dbg !719
  %23 = load ptr, ptr %proto.addr, align 8, !dbg !719
  %24 = load ptr, ptr %gop_handle, align 8, !dbg !719
  %call34 = call win64cc i64 %22(i32 noundef 2, ptr noundef %23, ptr noundef null, ptr noundef %size.addr, ptr noundef %24) #8, !dbg !719
  br label %cond.end54, !dbg !719

cond.false35:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad36) #9, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %__pad36, metadata !694, metadata !DIExpression()), !dbg !720
  br label %do.body37, !dbg !721

do.body37:                                        ; preds = %cond.false35
  br label %do.cond38, !dbg !723

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !723

do.end39:                                         ; preds = %do.cond38
  %call41 = call zeroext i1 @efi_is_native() #8, !dbg !720
  br i1 %call41, label %cond.true43, label %cond.false45, !dbg !720

cond.true43:                                      ; preds = %do.end39
  %25 = load ptr, ptr @efi_system_table, align 8, !dbg !720
  %boottime44 = getelementptr inbounds %struct.anon.1, ptr %25, i32 0, i32 10, !dbg !720
  %26 = load ptr, ptr %boottime44, align 8, !dbg !720
  br label %cond.end48, !dbg !720

cond.false45:                                     ; preds = %do.end39
  %27 = load ptr, ptr @efi_system_table, align 8, !dbg !720
  %boottime46 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %27, i32 0, i32 10, !dbg !720
  %28 = load i32, ptr %boottime46, align 4, !dbg !720
  %conv47 = zext i32 %28 to i64, !dbg !720
  %29 = inttoptr i64 %conv47 to ptr, !dbg !720
  br label %cond.end48, !dbg !720

cond.end48:                                       ; preds = %cond.false45, %cond.true43
  %cond49 = phi ptr [ %26, %cond.true43 ], [ %29, %cond.false45 ], !dbg !720
  %locate_handle50 = getelementptr inbounds %struct.anon.0, ptr %cond49, i32 0, i32 20, !dbg !720
  %30 = load i32, ptr %locate_handle50, align 4, !dbg !720
  %31 = load ptr, ptr %proto.addr, align 8, !dbg !720
  %32 = load ptr, ptr %gop_handle, align 8, !dbg !720
  %arraydecay51 = getelementptr inbounds [3 x i64], ptr %__pad36, i64 0, i64 0, !dbg !720
  %call52 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %30, i32 noundef 2, ptr noundef %31, ptr noundef null, ptr noundef %size.addr, ptr noundef %32, ptr noundef %arraydecay51) #8, !dbg !720
  store i64 %call52, ptr %tmp40, align 8, !dbg !720
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad36) #9, !dbg !719
  %33 = load i64, ptr %tmp40, align 8, !dbg !720
  %call53 = call i64 @__efi64_widen_efi_status(i64 noundef %33) #8, !dbg !719
  br label %cond.end54, !dbg !719

cond.end54:                                       ; preds = %cond.end48, %cond.end32
  %cond55 = phi i64 [ %call34, %cond.end32 ], [ %call53, %cond.end48 ], !dbg !719
  store i64 %cond55, ptr %status, align 8, !dbg !725
  %34 = load i64, ptr %status, align 8, !dbg !726
  %cmp56 = icmp ne i64 %34, 0, !dbg !728
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !729

if.then58:                                        ; preds = %cond.end54
  br label %free_handle, !dbg !730

if.end59:                                         ; preds = %cond.end54
  %35 = load ptr, ptr %si.addr, align 8, !dbg !731
  %36 = load ptr, ptr %proto.addr, align 8, !dbg !732
  %37 = load i64, ptr %size.addr, align 8, !dbg !733
  %38 = load ptr, ptr %gop_handle, align 8, !dbg !734
  %call60 = call i64 @setup_gop(ptr noundef %35, ptr noundef %36, i64 noundef %37, ptr noundef %38) #8, !dbg !735
  store i64 %call60, ptr %status, align 8, !dbg !736
  br label %free_handle, !dbg !737

free_handle:                                      ; preds = %if.end59, %if.then58
  call void @llvm.dbg.label(metadata !696), !dbg !738
  %call61 = call zeroext i1 @efi_is_native() #8, !dbg !739
  br i1 %call61, label %cond.true63, label %cond.false74, !dbg !739

cond.true63:                                      ; preds = %free_handle
  %call64 = call zeroext i1 @efi_is_native() #8, !dbg !739
  br i1 %call64, label %cond.true66, label %cond.false68, !dbg !739

cond.true66:                                      ; preds = %cond.true63
  %39 = load ptr, ptr @efi_system_table, align 8, !dbg !739
  %boottime67 = getelementptr inbounds %struct.anon.1, ptr %39, i32 0, i32 10, !dbg !739
  %40 = load ptr, ptr %boottime67, align 8, !dbg !739
  br label %cond.end71, !dbg !739

cond.false68:                                     ; preds = %cond.true63
  %41 = load ptr, ptr @efi_system_table, align 8, !dbg !739
  %boottime69 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %41, i32 0, i32 10, !dbg !739
  %42 = load i32, ptr %boottime69, align 4, !dbg !739
  %conv70 = zext i32 %42 to i64, !dbg !739
  %43 = inttoptr i64 %conv70 to ptr, !dbg !739
  br label %cond.end71, !dbg !739

cond.end71:                                       ; preds = %cond.false68, %cond.true66
  %cond72 = phi ptr [ %40, %cond.true66 ], [ %43, %cond.false68 ], !dbg !739
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond72, i32 0, i32 7, !dbg !739
  %44 = load ptr, ptr %free_pool, align 8, !dbg !739
  %45 = load ptr, ptr %gop_handle, align 8, !dbg !739
  %call73 = call win64cc i64 %44(ptr noundef %45) #8, !dbg !739
  br label %cond.end93, !dbg !739

cond.false74:                                     ; preds = %free_handle
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad75) #9, !dbg !740
  call void @llvm.dbg.declare(metadata ptr %__pad75, metadata !697, metadata !DIExpression()), !dbg !740
  br label %do.body76, !dbg !741

do.body76:                                        ; preds = %cond.false74
  br label %do.cond77, !dbg !743

do.cond77:                                        ; preds = %do.body76
  br label %do.end78, !dbg !743

do.end78:                                         ; preds = %do.cond77
  %call80 = call zeroext i1 @efi_is_native() #8, !dbg !740
  br i1 %call80, label %cond.true82, label %cond.false84, !dbg !740

cond.true82:                                      ; preds = %do.end78
  %46 = load ptr, ptr @efi_system_table, align 8, !dbg !740
  %boottime83 = getelementptr inbounds %struct.anon.1, ptr %46, i32 0, i32 10, !dbg !740
  %47 = load ptr, ptr %boottime83, align 8, !dbg !740
  br label %cond.end87, !dbg !740

cond.false84:                                     ; preds = %do.end78
  %48 = load ptr, ptr @efi_system_table, align 8, !dbg !740
  %boottime85 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %48, i32 0, i32 10, !dbg !740
  %49 = load i32, ptr %boottime85, align 4, !dbg !740
  %conv86 = zext i32 %49 to i64, !dbg !740
  %50 = inttoptr i64 %conv86 to ptr, !dbg !740
  br label %cond.end87, !dbg !740

cond.end87:                                       ; preds = %cond.false84, %cond.true82
  %cond88 = phi ptr [ %47, %cond.true82 ], [ %50, %cond.false84 ], !dbg !740
  %free_pool89 = getelementptr inbounds %struct.anon.0, ptr %cond88, i32 0, i32 7, !dbg !740
  %51 = load i32, ptr %free_pool89, align 8, !dbg !740
  %52 = load ptr, ptr %gop_handle, align 8, !dbg !740
  %arraydecay90 = getelementptr inbounds [3 x i64], ptr %__pad75, i64 0, i64 0, !dbg !740
  %call91 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %51, ptr noundef %52, ptr noundef %arraydecay90) #8, !dbg !740
  store i64 %call91, ptr %tmp79, align 8, !dbg !740
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad75) #9, !dbg !739
  %53 = load i64, ptr %tmp79, align 8, !dbg !740
  %call92 = call i64 @__efi64_widen_efi_status(i64 noundef %53) #8, !dbg !739
  br label %cond.end93, !dbg !739

cond.end93:                                       ; preds = %cond.end87, %cond.end71
  %cond94 = phi i64 [ %call73, %cond.end71 ], [ %call92, %cond.end87 ], !dbg !739
  %54 = load i64, ptr %status, align 8, !dbg !745
  store i64 %54, ptr %retval, align 8, !dbg !746
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !746

cleanup:                                          ; preds = %cond.end93, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gop_handle) #9, !dbg !747
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !747
  %55 = load i64, ptr %retval, align 8, !dbg !747
  ret i64 %55, !dbg !747
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_native() #3 !dbg !748 {
entry:
  %call = call zeroext i1 @efi_is_64bit() #8, !dbg !752
  ret i1 %call, !dbg !753
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__efi64_widen_efi_status(i64 noundef %status) #3 !dbg !754 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !758, metadata !DIExpression()), !dbg !759
  %0 = load i64, ptr %status.addr, align 8, !dbg !760
  %conv = trunc i64 %0 to i32, !dbg !760
  %call = call i32 @rol32(i32 noundef %conv, i32 noundef 1) #8, !dbg !761
  %conv1 = zext i32 %call to i64, !dbg !761
  %call2 = call i64 @ror64(i64 noundef %conv1, i32 noundef 1) #8, !dbg !762
  ret i64 %call2, !dbg !763
}

; Function Attrs: noredzone
declare !dbg !764 hidden i64 @__efi64_thunk(i32 noundef, ...) #4

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @efi64_zero_upper(ptr noundef %p) #3 !dbg !767 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !771, metadata !DIExpression()), !dbg !772
  %0 = load ptr, ptr %p.addr, align 8, !dbg !773
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1, !dbg !774
  store i32 0, ptr %arrayidx, align 4, !dbg !775
  %1 = load ptr, ptr %p.addr, align 8, !dbg !776
  ret ptr %1, !dbg !777
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind
define internal i64 @setup_gop(ptr noundef %si, ptr noundef %proto, i64 noundef %size, ptr noundef %handles) #0 !dbg !778 {
entry:
  %retval = alloca i64, align 8
  %si.addr = alloca ptr, align 8
  %proto.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %handles.addr = alloca ptr, align 8
  %gop = alloca ptr, align 8
  %mode = alloca ptr, align 8
  %info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %si, ptr %si.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %si.addr, metadata !782, metadata !DIExpression()), !dbg !814
  store ptr %proto, ptr %proto.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %proto.addr, metadata !783, metadata !DIExpression()), !dbg !815
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !784, metadata !DIExpression()), !dbg !816
  store ptr %handles, ptr %handles.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handles.addr, metadata !785, metadata !DIExpression()), !dbg !817
  call void @llvm.lifetime.start.p0(i64 8, ptr %gop) #9, !dbg !818
  call void @llvm.dbg.declare(metadata ptr %gop, metadata !786, metadata !DIExpression()), !dbg !819
  call void @llvm.lifetime.start.p0(i64 8, ptr %mode) #9, !dbg !820
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !812, metadata !DIExpression()), !dbg !821
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #9, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %info, metadata !813, metadata !DIExpression()), !dbg !823
  %0 = load ptr, ptr %proto.addr, align 8, !dbg !824
  %1 = load i64, ptr %size.addr, align 8, !dbg !825
  %2 = load ptr, ptr %handles.addr, align 8, !dbg !826
  %call = call ptr @find_gop(ptr noundef %0, i64 noundef %1, ptr noundef %2) #8, !dbg !827
  store ptr %call, ptr %gop, align 8, !dbg !828
  %3 = load ptr, ptr %gop, align 8, !dbg !829
  %tobool = icmp ne ptr %3, null, !dbg !829
  br i1 %tobool, label %if.end, label %if.then, !dbg !831

if.then:                                          ; preds = %entry
  store i64 -9223372036854775794, ptr %retval, align 8, !dbg !832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !832

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %gop, align 8, !dbg !833
  call void @set_mode(ptr noundef %4) #8, !dbg !834
  %call1 = call zeroext i1 @efi_is_native() #8, !dbg !835
  br i1 %call1, label %cond.true, label %cond.false, !dbg !835

cond.true:                                        ; preds = %if.end
  %5 = load ptr, ptr %gop, align 8, !dbg !835
  %mode2 = getelementptr inbounds %struct.anon.4, ptr %5, i32 0, i32 3, !dbg !835
  %6 = load ptr, ptr %mode2, align 8, !dbg !835
  br label %cond.end, !dbg !835

cond.false:                                       ; preds = %if.end
  %7 = load ptr, ptr %gop, align 8, !dbg !835
  %mode3 = getelementptr inbounds %struct.anon.5, ptr %7, i32 0, i32 3, !dbg !835
  %8 = load i32, ptr %mode3, align 4, !dbg !835
  %conv = zext i32 %8 to i64, !dbg !835
  %9 = inttoptr i64 %conv to ptr, !dbg !835
  br label %cond.end, !dbg !835

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %9, %cond.false ], !dbg !835
  store ptr %cond, ptr %mode, align 8, !dbg !836
  %call4 = call zeroext i1 @efi_is_native() #8, !dbg !837
  br i1 %call4, label %cond.true6, label %cond.false8, !dbg !837

cond.true6:                                       ; preds = %cond.end
  %10 = load ptr, ptr %mode, align 8, !dbg !837
  %info7 = getelementptr inbounds %struct.anon.6, ptr %10, i32 0, i32 2, !dbg !837
  %11 = load ptr, ptr %info7, align 8, !dbg !837
  br label %cond.end11, !dbg !837

cond.false8:                                      ; preds = %cond.end
  %12 = load ptr, ptr %mode, align 8, !dbg !837
  %info9 = getelementptr inbounds %struct.anon.7, ptr %12, i32 0, i32 2, !dbg !837
  %13 = load i32, ptr %info9, align 8, !dbg !837
  %conv10 = zext i32 %13 to i64, !dbg !837
  %14 = inttoptr i64 %conv10 to ptr, !dbg !837
  br label %cond.end11, !dbg !837

cond.end11:                                       ; preds = %cond.false8, %cond.true6
  %cond12 = phi ptr [ %11, %cond.true6 ], [ %14, %cond.false8 ], !dbg !837
  store ptr %cond12, ptr %info, align 8, !dbg !838
  %15 = load ptr, ptr %si.addr, align 8, !dbg !839
  %orig_video_isVGA = getelementptr inbounds %struct.screen_info, ptr %15, i32 0, i32 11, !dbg !840
  store i8 112, ptr %orig_video_isVGA, align 1, !dbg !841
  %16 = load ptr, ptr %info, align 8, !dbg !842
  %horizontal_resolution = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %16, i32 0, i32 1, !dbg !843
  %17 = load i32, ptr %horizontal_resolution, align 4, !dbg !843
  %conv13 = trunc i32 %17 to i16, !dbg !842
  %18 = load ptr, ptr %si.addr, align 8, !dbg !844
  %lfb_width = getelementptr inbounds %struct.screen_info, ptr %18, i32 0, i32 13, !dbg !845
  store i16 %conv13, ptr %lfb_width, align 1, !dbg !846
  %19 = load ptr, ptr %info, align 8, !dbg !847
  %vertical_resolution = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %19, i32 0, i32 2, !dbg !848
  %20 = load i32, ptr %vertical_resolution, align 4, !dbg !848
  %conv14 = trunc i32 %20 to i16, !dbg !847
  %21 = load ptr, ptr %si.addr, align 8, !dbg !849
  %lfb_height = getelementptr inbounds %struct.screen_info, ptr %21, i32 0, i32 14, !dbg !850
  store i16 %conv14, ptr %lfb_height, align 1, !dbg !851
  %call15 = call zeroext i1 @efi_is_native() #8, !dbg !852
  br i1 %call15, label %cond.true17, label %cond.false18, !dbg !852

cond.true17:                                      ; preds = %cond.end11
  %22 = load ptr, ptr %mode, align 8, !dbg !852
  %frame_buffer_base = getelementptr inbounds %struct.anon.6, ptr %22, i32 0, i32 4, !dbg !852
  %23 = load i64, ptr %frame_buffer_base, align 8, !dbg !852
  br label %cond.end20, !dbg !852

cond.false18:                                     ; preds = %cond.end11
  %24 = load ptr, ptr %mode, align 8, !dbg !852
  %frame_buffer_base19 = getelementptr inbounds %struct.anon.7, ptr %24, i32 0, i32 4, !dbg !852
  %25 = load i64, ptr %frame_buffer_base19, align 8, !dbg !852
  br label %cond.end20, !dbg !852

cond.end20:                                       ; preds = %cond.false18, %cond.true17
  %cond21 = phi i64 [ %23, %cond.true17 ], [ %25, %cond.false18 ], !dbg !852
  %26 = load ptr, ptr %si.addr, align 8, !dbg !853
  %lfb_base = getelementptr inbounds %struct.screen_info, ptr %26, i32 0, i32 16, !dbg !854
  %27 = load ptr, ptr %si.addr, align 8, !dbg !855
  %ext_lfb_base = getelementptr inbounds %struct.screen_info, ptr %27, i32 0, i32 34, !dbg !856
  call void @efi_set_u64_split(i64 noundef %cond21, ptr noundef %lfb_base, ptr noundef %ext_lfb_base) #8, !dbg !857
  %28 = load ptr, ptr %si.addr, align 8, !dbg !858
  %ext_lfb_base22 = getelementptr inbounds %struct.screen_info, ptr %28, i32 0, i32 34, !dbg !860
  %29 = load i32, ptr %ext_lfb_base22, align 1, !dbg !860
  %tobool23 = icmp ne i32 %29, 0, !dbg !858
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !861

if.then24:                                        ; preds = %cond.end20
  %30 = load ptr, ptr %si.addr, align 8, !dbg !862
  %capabilities = getelementptr inbounds %struct.screen_info, ptr %30, i32 0, i32 33, !dbg !863
  %31 = load i32, ptr %capabilities, align 1, !dbg !864
  %or = or i32 %31, 2, !dbg !864
  store i32 %or, ptr %capabilities, align 1, !dbg !864
  br label %if.end25, !dbg !862

if.end25:                                         ; preds = %if.then24, %cond.end20
  %32 = load ptr, ptr %si.addr, align 8, !dbg !865
  %pages = getelementptr inbounds %struct.screen_info, ptr %32, i32 0, i32 31, !dbg !866
  store i16 1, ptr %pages, align 1, !dbg !867
  %33 = load ptr, ptr %si.addr, align 8, !dbg !868
  %34 = load ptr, ptr %info, align 8, !dbg !869
  %pixels_per_scan_line = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %34, i32 0, i32 5, !dbg !870
  %35 = load i32, ptr %pixels_per_scan_line, align 4, !dbg !870
  %36 = load ptr, ptr %info, align 8, !dbg !871
  %pixel_information = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %36, i32 0, i32 4, !dbg !872
  %37 = load ptr, ptr %info, align 8, !dbg !873
  %pixel_format = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %37, i32 0, i32 3, !dbg !874
  %38 = load i32, ptr %pixel_format, align 4, !dbg !874
  %39 = getelementptr inbounds { i64, i64 }, ptr %pixel_information, i32 0, i32 0, !dbg !875
  %40 = load i64, ptr %39, align 4, !dbg !875
  %41 = getelementptr inbounds { i64, i64 }, ptr %pixel_information, i32 0, i32 1, !dbg !875
  %42 = load i64, ptr %41, align 4, !dbg !875
  call void @setup_pixel_info(ptr noundef %33, i32 noundef %35, i64 %40, i64 %42, i32 noundef %38) #8, !dbg !875
  %43 = load ptr, ptr %si.addr, align 8, !dbg !876
  %lfb_linelength = getelementptr inbounds %struct.screen_info, ptr %43, i32 0, i32 20, !dbg !877
  %44 = load i16, ptr %lfb_linelength, align 1, !dbg !877
  %conv26 = zext i16 %44 to i32, !dbg !876
  %45 = load ptr, ptr %si.addr, align 8, !dbg !878
  %lfb_height27 = getelementptr inbounds %struct.screen_info, ptr %45, i32 0, i32 14, !dbg !879
  %46 = load i16, ptr %lfb_height27, align 1, !dbg !879
  %conv28 = zext i16 %46 to i32, !dbg !878
  %mul = mul nsw i32 %conv26, %conv28, !dbg !880
  %47 = load ptr, ptr %si.addr, align 8, !dbg !881
  %lfb_size = getelementptr inbounds %struct.screen_info, ptr %47, i32 0, i32 17, !dbg !882
  store i32 %mul, ptr %lfb_size, align 1, !dbg !883
  %48 = load ptr, ptr %si.addr, align 8, !dbg !884
  %capabilities29 = getelementptr inbounds %struct.screen_info, ptr %48, i32 0, i32 33, !dbg !885
  %49 = load i32, ptr %capabilities29, align 1, !dbg !886
  %or30 = or i32 %49, 1, !dbg !886
  store i32 %or30, ptr %capabilities29, align 1, !dbg !886
  store i64 0, ptr %retval, align 8, !dbg !887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !887

cleanup:                                          ; preds = %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #9, !dbg !888
  call void @llvm.lifetime.end.p0(i64 8, ptr %mode) #9, !dbg !888
  call void @llvm.lifetime.end.p0(i64 8, ptr %gop) #9, !dbg !888
  %50 = load i64, ptr %retval, align 8, !dbg !888
  ret i64 %50, !dbg !888
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @strstarts(ptr noundef %str, ptr noundef %prefix) #3 !dbg !889 {
entry:
  %str.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !896, metadata !DIExpression()), !dbg !898
  store ptr %prefix, ptr %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !897, metadata !DIExpression()), !dbg !899
  %0 = load ptr, ptr %str.addr, align 8, !dbg !900
  %1 = load ptr, ptr %prefix.addr, align 8, !dbg !901
  %2 = load ptr, ptr %prefix.addr, align 8, !dbg !902
  %call = call i64 @strlen(ptr noundef %2) #8, !dbg !903
  %call1 = call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %call) #8, !dbg !904
  %cmp = icmp eq i32 %call1, 0, !dbg !905
  ret i1 %cmp, !dbg !906
}

; Function Attrs: noredzone
declare !dbg !907 hidden i64 @strlen(ptr noundef) #4

; Function Attrs: noredzone
declare !dbg !914 hidden i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone
declare !dbg !918 hidden i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @isdigit(i32 noundef %c) #3 !dbg !921 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !926, metadata !DIExpression()), !dbg !927
  %0 = load i32, ptr %c.addr, align 4, !dbg !928
  %cmp = icmp sle i32 48, %0, !dbg !929
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !930

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4, !dbg !931
  %cmp1 = icmp sle i32 %1, 57, !dbg !932
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !933
  %land.ext = zext i1 %2 to i32, !dbg !930
  ret i32 %land.ext, !dbg !934
}

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #3 !dbg !935 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !936, !range !937, !noundef !938
  %tobool = trunc i8 %0 to i1, !dbg !936
  ret i1 %tobool, !dbg !939
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #3 !dbg !940 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !945, metadata !DIExpression()), !dbg !947
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !946, metadata !DIExpression()), !dbg !948
  %0 = load i64, ptr %word.addr, align 8, !dbg !949
  %1 = load i32, ptr %shift.addr, align 4, !dbg !950
  %and = and i32 %1, 63, !dbg !951
  %sh_prom = zext i32 %and to i64, !dbg !952
  %shr = lshr i64 %0, %sh_prom, !dbg !952
  %2 = load i64, ptr %word.addr, align 8, !dbg !953
  %3 = load i32, ptr %shift.addr, align 4, !dbg !954
  %sub = sub i32 0, %3, !dbg !955
  %and1 = and i32 %sub, 63, !dbg !956
  %sh_prom2 = zext i32 %and1 to i64, !dbg !957
  %shl = shl i64 %2, %sh_prom2, !dbg !957
  %or = or i64 %shr, %shl, !dbg !958
  ret i64 %or, !dbg !959
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #3 !dbg !960 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !964, metadata !DIExpression()), !dbg !966
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !965, metadata !DIExpression()), !dbg !967
  %0 = load i32, ptr %word.addr, align 4, !dbg !968
  %1 = load i32, ptr %shift.addr, align 4, !dbg !969
  %and = and i32 %1, 31, !dbg !970
  %shl = shl i32 %0, %and, !dbg !971
  %2 = load i32, ptr %word.addr, align 4, !dbg !972
  %3 = load i32, ptr %shift.addr, align 4, !dbg !973
  %sub = sub i32 0, %3, !dbg !974
  %and1 = and i32 %sub, 31, !dbg !975
  %shr = lshr i32 %2, %and1, !dbg !976
  %or = or i32 %shl, %shr, !dbg !977
  ret i32 %or, !dbg !978
}

; Function Attrs: noredzone nounwind
define internal ptr @find_gop(ptr noundef %proto, i64 noundef %size, ptr noundef %handles) #0 !dbg !979 {
entry:
  %retval = alloca ptr, align 8
  %proto.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %handles.addr = alloca ptr, align 8
  %first_gop = alloca ptr, align 8
  %h = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i64, align 8
  %gop = alloca ptr, align 8
  %mode = alloca ptr, align 8
  %info = alloca ptr, align 8
  %conout_proto = alloca %struct.guid_t, align 4
  %dummy = alloca ptr, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad79 = alloca [3 x i64], align 16
  %tmp83 = alloca i64, align 8
  store ptr %proto, ptr %proto.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %proto.addr, metadata !983, metadata !DIExpression()), !dbg !1002
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !984, metadata !DIExpression()), !dbg !1003
  store ptr %handles, ptr %handles.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handles.addr, metadata !985, metadata !DIExpression()), !dbg !1004
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_gop) #9, !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %first_gop, metadata !986, metadata !DIExpression()), !dbg !1006
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #9, !dbg !1007
  call void @llvm.dbg.declare(metadata ptr %h, metadata !987, metadata !DIExpression()), !dbg !1008
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1009
  call void @llvm.dbg.declare(metadata ptr %i, metadata !988, metadata !DIExpression()), !dbg !1010
  store ptr null, ptr %first_gop, align 8, !dbg !1011
  store i32 0, ptr %i, align 4, !dbg !1012
  br label %for.cond, !dbg !1012

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1013
  %conv = sext i32 %0 to i64, !dbg !1013
  %1 = load i64, ptr %size.addr, align 8, !dbg !1013
  %call = call zeroext i1 @efi_is_native() #8, !dbg !1013
  %2 = zext i1 %call to i64, !dbg !1013
  %cond = select i1 %call, i64 8, i64 4, !dbg !1013
  %div = udiv i64 %1, %cond, !dbg !1013
  %cmp = icmp ult i64 %conv, %div, !dbg !1013
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1013

land.rhs:                                         ; preds = %for.cond
  %call3 = call zeroext i1 @efi_is_native() #8, !dbg !1013
  br i1 %call3, label %cond.true, label %cond.false, !dbg !1013

cond.true:                                        ; preds = %land.rhs
  %3 = load ptr, ptr %handles.addr, align 8, !dbg !1013
  %4 = load i32, ptr %i, align 4, !dbg !1013
  %idxprom = sext i32 %4 to i64, !dbg !1013
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1013
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1013
  br label %cond.end, !dbg !1013

cond.false:                                       ; preds = %land.rhs
  %6 = load ptr, ptr %handles.addr, align 8, !dbg !1013
  %7 = load i32, ptr %i, align 4, !dbg !1013
  %idxprom5 = sext i32 %7 to i64, !dbg !1013
  %arrayidx6 = getelementptr inbounds i32, ptr %6, i64 %idxprom5, !dbg !1013
  %8 = load i32, ptr %arrayidx6, align 4, !dbg !1013
  %conv7 = zext i32 %8 to i64, !dbg !1013
  %9 = inttoptr i64 %conv7 to ptr, !dbg !1013
  br label %cond.end, !dbg !1013

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi ptr [ %5, %cond.true ], [ %9, %cond.false ], !dbg !1013
  store ptr %cond8, ptr %h, align 8, !dbg !1013
  %tobool = icmp ne ptr %cond8, null, !dbg !1013
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1013

lor.rhs:                                          ; preds = %cond.end
  br label %lor.end, !dbg !1013

lor.end:                                          ; preds = %lor.rhs, %cond.end
  %10 = phi i1 [ true, %cond.end ], [ true, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %10, %lor.end ], !dbg !1014
  br i1 %11, label %for.body, label %for.end, !dbg !1012

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !1015
  call void @llvm.dbg.declare(metadata ptr %status, metadata !989, metadata !DIExpression()), !dbg !1016
  call void @llvm.lifetime.start.p0(i64 8, ptr %gop) #9, !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %gop, metadata !993, metadata !DIExpression()), !dbg !1018
  call void @llvm.lifetime.start.p0(i64 8, ptr %mode) #9, !dbg !1019
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !994, metadata !DIExpression()), !dbg !1020
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #9, !dbg !1021
  call void @llvm.dbg.declare(metadata ptr %info, metadata !995, metadata !DIExpression()), !dbg !1022
  call void @llvm.lifetime.start.p0(i64 16, ptr %conout_proto) #9, !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %conout_proto, metadata !996, metadata !DIExpression()), !dbg !1024
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %conout_proto, ptr align 4 @__const.find_gop.conout_proto, i64 16, i1 false), !dbg !1024
  call void @llvm.lifetime.start.p0(i64 8, ptr %dummy) #9, !dbg !1025
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !997, metadata !DIExpression()), !dbg !1026
  store ptr null, ptr %dummy, align 8, !dbg !1026
  %call9 = call zeroext i1 @efi_is_native() #8, !dbg !1027
  br i1 %call9, label %cond.true11, label %cond.false21, !dbg !1027

cond.true11:                                      ; preds = %for.body
  %call12 = call zeroext i1 @efi_is_native() #8, !dbg !1027
  br i1 %call12, label %cond.true14, label %cond.false15, !dbg !1027

cond.true14:                                      ; preds = %cond.true11
  %12 = load ptr, ptr @efi_system_table, align 8, !dbg !1027
  %boottime = getelementptr inbounds %struct.anon.1, ptr %12, i32 0, i32 10, !dbg !1027
  %13 = load ptr, ptr %boottime, align 8, !dbg !1027
  br label %cond.end18, !dbg !1027

cond.false15:                                     ; preds = %cond.true11
  %14 = load ptr, ptr @efi_system_table, align 8, !dbg !1027
  %boottime16 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %14, i32 0, i32 10, !dbg !1027
  %15 = load i32, ptr %boottime16, align 4, !dbg !1027
  %conv17 = zext i32 %15 to i64, !dbg !1027
  %16 = inttoptr i64 %conv17 to ptr, !dbg !1027
  br label %cond.end18, !dbg !1027

cond.end18:                                       ; preds = %cond.false15, %cond.true14
  %cond19 = phi ptr [ %13, %cond.true14 ], [ %16, %cond.false15 ], !dbg !1027
  %handle_protocol = getelementptr inbounds %struct.anon, ptr %cond19, i32 0, i32 17, !dbg !1027
  %17 = load ptr, ptr %handle_protocol, align 8, !dbg !1027
  %18 = load ptr, ptr %h, align 8, !dbg !1027
  %19 = load ptr, ptr %proto.addr, align 8, !dbg !1027
  %call20 = call win64cc i64 %17(ptr noundef %18, ptr noundef %19, ptr noundef %gop) #8, !dbg !1027
  br label %cond.end35, !dbg !1027

cond.false21:                                     ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !1028
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !998, metadata !DIExpression()), !dbg !1028
  br label %do.body, !dbg !1029

do.body:                                          ; preds = %cond.false21
  br label %do.cond, !dbg !1031

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1031

do.end:                                           ; preds = %do.cond
  %call22 = call zeroext i1 @efi_is_native() #8, !dbg !1028
  br i1 %call22, label %cond.true24, label %cond.false26, !dbg !1028

cond.true24:                                      ; preds = %do.end
  %20 = load ptr, ptr @efi_system_table, align 8, !dbg !1028
  %boottime25 = getelementptr inbounds %struct.anon.1, ptr %20, i32 0, i32 10, !dbg !1028
  %21 = load ptr, ptr %boottime25, align 8, !dbg !1028
  br label %cond.end29, !dbg !1028

cond.false26:                                     ; preds = %do.end
  %22 = load ptr, ptr @efi_system_table, align 8, !dbg !1028
  %boottime27 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %22, i32 0, i32 10, !dbg !1028
  %23 = load i32, ptr %boottime27, align 4, !dbg !1028
  %conv28 = zext i32 %23 to i64, !dbg !1028
  %24 = inttoptr i64 %conv28 to ptr, !dbg !1028
  br label %cond.end29, !dbg !1028

cond.end29:                                       ; preds = %cond.false26, %cond.true24
  %cond30 = phi ptr [ %21, %cond.true24 ], [ %24, %cond.false26 ], !dbg !1028
  %handle_protocol31 = getelementptr inbounds %struct.anon.0, ptr %cond30, i32 0, i32 17, !dbg !1028
  %25 = load i32, ptr %handle_protocol31, align 8, !dbg !1028
  %26 = load ptr, ptr %h, align 8, !dbg !1028
  %27 = load ptr, ptr %proto.addr, align 8, !dbg !1028
  %call32 = call ptr @efi64_zero_upper(ptr noundef %gop) #8, !dbg !1028
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1028
  %call33 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %call32, ptr noundef %arraydecay) #8, !dbg !1028
  store i64 %call33, ptr %tmp, align 8, !dbg !1028
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !1027
  %28 = load i64, ptr %tmp, align 8, !dbg !1028
  %call34 = call i64 @__efi64_widen_efi_status(i64 noundef %28) #8, !dbg !1027
  br label %cond.end35, !dbg !1027

cond.end35:                                       ; preds = %cond.end29, %cond.end18
  %cond36 = phi i64 [ %call20, %cond.end18 ], [ %call34, %cond.end29 ], !dbg !1027
  store i64 %cond36, ptr %status, align 8, !dbg !1033
  %29 = load i64, ptr %status, align 8, !dbg !1034
  %cmp37 = icmp ne i64 %29, 0, !dbg !1036
  br i1 %cmp37, label %if.then, label %if.end, !dbg !1037

if.then:                                          ; preds = %cond.end35
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1038

if.end:                                           ; preds = %cond.end35
  %call39 = call zeroext i1 @efi_is_native() #8, !dbg !1039
  br i1 %call39, label %cond.true41, label %cond.false43, !dbg !1039

cond.true41:                                      ; preds = %if.end
  %30 = load ptr, ptr %gop, align 8, !dbg !1039
  %mode42 = getelementptr inbounds %struct.anon.4, ptr %30, i32 0, i32 3, !dbg !1039
  %31 = load ptr, ptr %mode42, align 8, !dbg !1039
  br label %cond.end46, !dbg !1039

cond.false43:                                     ; preds = %if.end
  %32 = load ptr, ptr %gop, align 8, !dbg !1039
  %mode44 = getelementptr inbounds %struct.anon.5, ptr %32, i32 0, i32 3, !dbg !1039
  %33 = load i32, ptr %mode44, align 4, !dbg !1039
  %conv45 = zext i32 %33 to i64, !dbg !1039
  %34 = inttoptr i64 %conv45 to ptr, !dbg !1039
  br label %cond.end46, !dbg !1039

cond.end46:                                       ; preds = %cond.false43, %cond.true41
  %cond47 = phi ptr [ %31, %cond.true41 ], [ %34, %cond.false43 ], !dbg !1039
  store ptr %cond47, ptr %mode, align 8, !dbg !1040
  %call48 = call zeroext i1 @efi_is_native() #8, !dbg !1041
  br i1 %call48, label %cond.true50, label %cond.false52, !dbg !1041

cond.true50:                                      ; preds = %cond.end46
  %35 = load ptr, ptr %mode, align 8, !dbg !1041
  %info51 = getelementptr inbounds %struct.anon.6, ptr %35, i32 0, i32 2, !dbg !1041
  %36 = load ptr, ptr %info51, align 8, !dbg !1041
  br label %cond.end55, !dbg !1041

cond.false52:                                     ; preds = %cond.end46
  %37 = load ptr, ptr %mode, align 8, !dbg !1041
  %info53 = getelementptr inbounds %struct.anon.7, ptr %37, i32 0, i32 2, !dbg !1041
  %38 = load i32, ptr %info53, align 8, !dbg !1041
  %conv54 = zext i32 %38 to i64, !dbg !1041
  %39 = inttoptr i64 %conv54 to ptr, !dbg !1041
  br label %cond.end55, !dbg !1041

cond.end55:                                       ; preds = %cond.false52, %cond.true50
  %cond56 = phi ptr [ %36, %cond.true50 ], [ %39, %cond.false52 ], !dbg !1041
  store ptr %cond56, ptr %info, align 8, !dbg !1042
  %40 = load ptr, ptr %info, align 8, !dbg !1043
  %pixel_format = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %40, i32 0, i32 3, !dbg !1045
  %41 = load i32, ptr %pixel_format, align 4, !dbg !1045
  %cmp57 = icmp eq i32 %41, 3, !dbg !1046
  br i1 %cmp57, label %if.then62, label %lor.lhs.false, !dbg !1047

lor.lhs.false:                                    ; preds = %cond.end55
  %42 = load ptr, ptr %info, align 8, !dbg !1048
  %pixel_format59 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %42, i32 0, i32 3, !dbg !1049
  %43 = load i32, ptr %pixel_format59, align 4, !dbg !1049
  %cmp60 = icmp sge i32 %43, 4, !dbg !1050
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !1051

if.then62:                                        ; preds = %lor.lhs.false, %cond.end55
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1052

if.end63:                                         ; preds = %lor.lhs.false
  %call64 = call zeroext i1 @efi_is_native() #8, !dbg !1053
  br i1 %call64, label %cond.true66, label %cond.false78, !dbg !1053

cond.true66:                                      ; preds = %if.end63
  %call67 = call zeroext i1 @efi_is_native() #8, !dbg !1053
  br i1 %call67, label %cond.true69, label %cond.false71, !dbg !1053

cond.true69:                                      ; preds = %cond.true66
  %44 = load ptr, ptr @efi_system_table, align 8, !dbg !1053
  %boottime70 = getelementptr inbounds %struct.anon.1, ptr %44, i32 0, i32 10, !dbg !1053
  %45 = load ptr, ptr %boottime70, align 8, !dbg !1053
  br label %cond.end74, !dbg !1053

cond.false71:                                     ; preds = %cond.true66
  %46 = load ptr, ptr @efi_system_table, align 8, !dbg !1053
  %boottime72 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %46, i32 0, i32 10, !dbg !1053
  %47 = load i32, ptr %boottime72, align 4, !dbg !1053
  %conv73 = zext i32 %47 to i64, !dbg !1053
  %48 = inttoptr i64 %conv73 to ptr, !dbg !1053
  br label %cond.end74, !dbg !1053

cond.end74:                                       ; preds = %cond.false71, %cond.true69
  %cond75 = phi ptr [ %45, %cond.true69 ], [ %48, %cond.false71 ], !dbg !1053
  %handle_protocol76 = getelementptr inbounds %struct.anon, ptr %cond75, i32 0, i32 17, !dbg !1053
  %49 = load ptr, ptr %handle_protocol76, align 8, !dbg !1053
  %50 = load ptr, ptr %h, align 8, !dbg !1053
  %call77 = call win64cc i64 %49(ptr noundef %50, ptr noundef %conout_proto, ptr noundef %dummy) #8, !dbg !1053
  br label %cond.end98, !dbg !1053

cond.false78:                                     ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad79) #9, !dbg !1054
  call void @llvm.dbg.declare(metadata ptr %__pad79, metadata !1000, metadata !DIExpression()), !dbg !1054
  br label %do.body80, !dbg !1055

do.body80:                                        ; preds = %cond.false78
  br label %do.cond81, !dbg !1057

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !1057

do.end82:                                         ; preds = %do.cond81
  %call84 = call zeroext i1 @efi_is_native() #8, !dbg !1054
  br i1 %call84, label %cond.true86, label %cond.false88, !dbg !1054

cond.true86:                                      ; preds = %do.end82
  %51 = load ptr, ptr @efi_system_table, align 8, !dbg !1054
  %boottime87 = getelementptr inbounds %struct.anon.1, ptr %51, i32 0, i32 10, !dbg !1054
  %52 = load ptr, ptr %boottime87, align 8, !dbg !1054
  br label %cond.end91, !dbg !1054

cond.false88:                                     ; preds = %do.end82
  %53 = load ptr, ptr @efi_system_table, align 8, !dbg !1054
  %boottime89 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %53, i32 0, i32 10, !dbg !1054
  %54 = load i32, ptr %boottime89, align 4, !dbg !1054
  %conv90 = zext i32 %54 to i64, !dbg !1054
  %55 = inttoptr i64 %conv90 to ptr, !dbg !1054
  br label %cond.end91, !dbg !1054

cond.end91:                                       ; preds = %cond.false88, %cond.true86
  %cond92 = phi ptr [ %52, %cond.true86 ], [ %55, %cond.false88 ], !dbg !1054
  %handle_protocol93 = getelementptr inbounds %struct.anon.0, ptr %cond92, i32 0, i32 17, !dbg !1054
  %56 = load i32, ptr %handle_protocol93, align 8, !dbg !1054
  %57 = load ptr, ptr %h, align 8, !dbg !1054
  %call94 = call ptr @efi64_zero_upper(ptr noundef %dummy) #8, !dbg !1054
  %arraydecay95 = getelementptr inbounds [3 x i64], ptr %__pad79, i64 0, i64 0, !dbg !1054
  %call96 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %56, ptr noundef %57, ptr noundef %conout_proto, ptr noundef %call94, ptr noundef %arraydecay95) #8, !dbg !1054
  store i64 %call96, ptr %tmp83, align 8, !dbg !1054
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad79) #9, !dbg !1053
  %58 = load i64, ptr %tmp83, align 8, !dbg !1054
  %call97 = call i64 @__efi64_widen_efi_status(i64 noundef %58) #8, !dbg !1053
  br label %cond.end98, !dbg !1053

cond.end98:                                       ; preds = %cond.end91, %cond.end74
  %cond99 = phi i64 [ %call77, %cond.end74 ], [ %call97, %cond.end91 ], !dbg !1053
  store i64 %cond99, ptr %status, align 8, !dbg !1059
  %59 = load i64, ptr %status, align 8, !dbg !1060
  %cmp100 = icmp eq i64 %59, 0, !dbg !1062
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !1063

if.then102:                                       ; preds = %cond.end98
  %60 = load ptr, ptr %gop, align 8, !dbg !1064
  store ptr %60, ptr %retval, align 8, !dbg !1065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1065

if.end103:                                        ; preds = %cond.end98
  %61 = load ptr, ptr %first_gop, align 8, !dbg !1066
  %tobool104 = icmp ne ptr %61, null, !dbg !1066
  br i1 %tobool104, label %if.end106, label %if.then105, !dbg !1068

if.then105:                                       ; preds = %if.end103
  %62 = load ptr, ptr %gop, align 8, !dbg !1069
  store ptr %62, ptr %first_gop, align 8, !dbg !1070
  br label %if.end106, !dbg !1071

if.end106:                                        ; preds = %if.then105, %if.end103
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1072
  br label %cleanup, !dbg !1072

cleanup:                                          ; preds = %if.end106, %if.then102, %if.then62, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dummy) #9, !dbg !1072
  call void @llvm.lifetime.end.p0(i64 16, ptr %conout_proto) #9, !dbg !1072
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #9, !dbg !1072
  call void @llvm.lifetime.end.p0(i64 8, ptr %mode) #9, !dbg !1072
  call void @llvm.lifetime.end.p0(i64 8, ptr %gop) #9, !dbg !1072
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !1072
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup112 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1073

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %63 = load i32, ptr %i, align 4, !dbg !1013
  %inc = add nsw i32 %63, 1, !dbg !1013
  store i32 %inc, ptr %i, align 4, !dbg !1013
  br label %for.cond, !dbg !1013, !llvm.loop !1074

for.end:                                          ; preds = %land.end
  %64 = load ptr, ptr %first_gop, align 8, !dbg !1076
  store ptr %64, ptr %retval, align 8, !dbg !1077
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !1077

cleanup112:                                       ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1078
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #9, !dbg !1078
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_gop) #9, !dbg !1078
  %65 = load ptr, ptr %retval, align 8, !dbg !1078
  ret ptr %65, !dbg !1078
}

; Function Attrs: noredzone nounwind
define internal void @set_mode(ptr noundef %gop) #0 !dbg !1079 {
entry:
  %gop.addr = alloca ptr, align 8
  %mode = alloca ptr, align 8
  %cur_mode = alloca i32, align 4
  %new_mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__inst = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp26 = alloca i64, align 8
  store ptr %gop, ptr %gop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gop.addr, metadata !1083, metadata !DIExpression()), !dbg !1092
  call void @llvm.lifetime.start.p0(i64 8, ptr %mode) #9, !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !1084, metadata !DIExpression()), !dbg !1094
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_mode) #9, !dbg !1095
  call void @llvm.dbg.declare(metadata ptr %cur_mode, metadata !1085, metadata !DIExpression()), !dbg !1096
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_mode) #9, !dbg !1095
  call void @llvm.dbg.declare(metadata ptr %new_mode, metadata !1086, metadata !DIExpression()), !dbg !1097
  %0 = load i32, ptr @cmdline, align 4, !dbg !1098
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
  ], !dbg !1099

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %gop.addr, align 8, !dbg !1100
  %call = call i32 @choose_mode_modenum(ptr noundef %1) #8, !dbg !1102
  store i32 %call, ptr %new_mode, align 4, !dbg !1103
  br label %sw.epilog, !dbg !1104

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %gop.addr, align 8, !dbg !1105
  %call2 = call i32 @choose_mode_res(ptr noundef %2) #8, !dbg !1106
  store i32 %call2, ptr %new_mode, align 4, !dbg !1107
  br label %sw.epilog, !dbg !1108

sw.bb3:                                           ; preds = %entry
  %3 = load ptr, ptr %gop.addr, align 8, !dbg !1109
  %call4 = call i32 @choose_mode_auto(ptr noundef %3) #8, !dbg !1110
  store i32 %call4, ptr %new_mode, align 4, !dbg !1111
  br label %sw.epilog, !dbg !1112

sw.bb5:                                           ; preds = %entry
  %4 = load ptr, ptr %gop.addr, align 8, !dbg !1113
  %call6 = call i32 @choose_mode_list(ptr noundef %4) #8, !dbg !1114
  store i32 %call6, ptr %new_mode, align 4, !dbg !1115
  br label %sw.epilog, !dbg !1116

sw.default:                                       ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1117

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %call7 = call zeroext i1 @efi_is_native() #8, !dbg !1118
  br i1 %call7, label %cond.true, label %cond.false, !dbg !1118

cond.true:                                        ; preds = %sw.epilog
  %5 = load ptr, ptr %gop.addr, align 8, !dbg !1118
  %mode8 = getelementptr inbounds %struct.anon.4, ptr %5, i32 0, i32 3, !dbg !1118
  %6 = load ptr, ptr %mode8, align 8, !dbg !1118
  br label %cond.end, !dbg !1118

cond.false:                                       ; preds = %sw.epilog
  %7 = load ptr, ptr %gop.addr, align 8, !dbg !1118
  %mode9 = getelementptr inbounds %struct.anon.5, ptr %7, i32 0, i32 3, !dbg !1118
  %8 = load i32, ptr %mode9, align 4, !dbg !1118
  %conv = zext i32 %8 to i64, !dbg !1118
  %9 = inttoptr i64 %conv to ptr, !dbg !1118
  br label %cond.end, !dbg !1118

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %9, %cond.false ], !dbg !1118
  store ptr %cond, ptr %mode, align 8, !dbg !1119
  %call10 = call zeroext i1 @efi_is_native() #8, !dbg !1120
  br i1 %call10, label %cond.true12, label %cond.false14, !dbg !1120

cond.true12:                                      ; preds = %cond.end
  %10 = load ptr, ptr %mode, align 8, !dbg !1120
  %mode13 = getelementptr inbounds %struct.anon.6, ptr %10, i32 0, i32 1, !dbg !1120
  %11 = load i32, ptr %mode13, align 4, !dbg !1120
  br label %cond.end18, !dbg !1120

cond.false14:                                     ; preds = %cond.end
  %12 = load ptr, ptr %mode, align 8, !dbg !1120
  %mode15 = getelementptr inbounds %struct.anon.7, ptr %12, i32 0, i32 1, !dbg !1120
  %13 = load i32, ptr %mode15, align 4, !dbg !1120
  %conv16 = zext i32 %13 to i64, !dbg !1120
  %conv17 = trunc i64 %conv16 to i32, !dbg !1120
  br label %cond.end18, !dbg !1120

cond.end18:                                       ; preds = %cond.false14, %cond.true12
  %cond19 = phi i32 [ %11, %cond.true12 ], [ %conv17, %cond.false14 ], !dbg !1120
  store i32 %cond19, ptr %cur_mode, align 4, !dbg !1121
  %14 = load i32, ptr %new_mode, align 4, !dbg !1122
  %15 = load i32, ptr %cur_mode, align 4, !dbg !1124
  %cmp = icmp eq i32 %14, %15, !dbg !1125
  br i1 %cmp, label %if.then, label %if.end, !dbg !1126

if.then:                                          ; preds = %cond.end18
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1127

if.end:                                           ; preds = %cond.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #9, !dbg !1128
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !1087, metadata !DIExpression()), !dbg !1128
  %16 = load ptr, ptr %gop.addr, align 8, !dbg !1128
  store ptr %16, ptr %__inst, align 8, !dbg !1128
  %call21 = call zeroext i1 @efi_is_native() #8, !dbg !1128
  br i1 %call21, label %cond.true23, label %cond.false25, !dbg !1128

cond.true23:                                      ; preds = %if.end
  %17 = load ptr, ptr %__inst, align 8, !dbg !1128
  %set_mode = getelementptr inbounds %struct.anon.4, ptr %17, i32 0, i32 1, !dbg !1128
  %18 = load ptr, ptr %set_mode, align 8, !dbg !1128
  %19 = load ptr, ptr %__inst, align 8, !dbg !1128
  %20 = load i32, ptr %new_mode, align 4, !dbg !1128
  %call24 = call win64cc i64 %18(ptr noundef %19, i32 noundef %20) #8, !dbg !1128
  br label %cond.end30, !dbg !1128

cond.false25:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1090, metadata !DIExpression()), !dbg !1129
  br label %do.body, !dbg !1130

do.body:                                          ; preds = %cond.false25
  br label %do.cond, !dbg !1132

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1132

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %__inst, align 8, !dbg !1129
  %set_mode27 = getelementptr inbounds %struct.anon.5, ptr %21, i32 0, i32 1, !dbg !1129
  %22 = load i32, ptr %set_mode27, align 4, !dbg !1129
  %23 = load ptr, ptr %__inst, align 8, !dbg !1129
  %24 = load i32, ptr %new_mode, align 4, !dbg !1129
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1129
  %call28 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %22, ptr noundef %23, i32 noundef %24, ptr noundef %arraydecay) #8, !dbg !1129
  store i64 %call28, ptr %tmp26, align 8, !dbg !1129
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !1128
  %25 = load i64, ptr %tmp26, align 8, !dbg !1129
  %call29 = call i64 @__efi64_widen_efi_status(i64 noundef %25) #8, !dbg !1128
  br label %cond.end30, !dbg !1128

cond.end30:                                       ; preds = %do.end, %cond.true23
  %cond31 = phi i64 [ %call24, %cond.true23 ], [ %call29, %do.end ], !dbg !1128
  store i64 %cond31, ptr %tmp, align 8, !dbg !1128
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #9, !dbg !1134
  %26 = load i64, ptr %tmp, align 8, !dbg !1128
  %cmp32 = icmp ne i64 %26, 0, !dbg !1135
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !1136

if.then34:                                        ; preds = %cond.end30
  %call35 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.5) #8, !dbg !1137
  br label %if.end36, !dbg !1137

if.end36:                                         ; preds = %if.then34, %cond.end30
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1138
  br label %cleanup, !dbg !1138

cleanup:                                          ; preds = %if.end36, %if.then, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_mode) #9, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_mode) #9, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 8, ptr %mode) #9, !dbg !1138
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1138

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @efi_set_u64_split(i64 noundef %data, ptr noundef %lo, ptr noundef %hi) #3 !dbg !1139 {
entry:
  %data.addr = alloca i64, align 8
  %lo.addr = alloca ptr, align 8
  %hi.addr = alloca ptr, align 8
  store i64 %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1143, metadata !DIExpression()), !dbg !1146
  store ptr %lo, ptr %lo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lo.addr, metadata !1144, metadata !DIExpression()), !dbg !1147
  store ptr %hi, ptr %hi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hi.addr, metadata !1145, metadata !DIExpression()), !dbg !1148
  %0 = load i64, ptr %data.addr, align 8, !dbg !1149
  %and = and i64 %0, 4294967295, !dbg !1149
  %conv = trunc i64 %and to i32, !dbg !1149
  %1 = load ptr, ptr %lo.addr, align 8, !dbg !1150
  store i32 %conv, ptr %1, align 4, !dbg !1151
  %2 = load i64, ptr %data.addr, align 8, !dbg !1152
  %shr = lshr i64 %2, 16, !dbg !1152
  %shr1 = lshr i64 %shr, 16, !dbg !1152
  %conv2 = trunc i64 %shr1 to i32, !dbg !1152
  %3 = load ptr, ptr %hi.addr, align 8, !dbg !1153
  store i32 %conv2, ptr %3, align 4, !dbg !1154
  ret void, !dbg !1155
}

; Function Attrs: noredzone nounwind
define internal void @setup_pixel_info(ptr noundef %si, i32 noundef %pixels_per_scan_line, i64 %pixel_info.coerce0, i64 %pixel_info.coerce1, i32 noundef %pixel_format) #0 !dbg !1156 {
entry:
  %pixel_info = alloca %struct.efi_pixel_bitmask_t, align 4
  %si.addr = alloca ptr, align 8
  %pixels_per_scan_line.addr = alloca i32, align 4
  %pixel_format.addr = alloca i32, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %pixel_info, i32 0, i32 0
  store i64 %pixel_info.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i64 }, ptr %pixel_info, i32 0, i32 1
  store i64 %pixel_info.coerce1, ptr %1, align 4
  store ptr %si, ptr %si.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %si.addr, metadata !1160, metadata !DIExpression()), !dbg !1164
  store i32 %pixels_per_scan_line, ptr %pixels_per_scan_line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixels_per_scan_line.addr, metadata !1161, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.declare(metadata ptr %pixel_info, metadata !1162, metadata !DIExpression()), !dbg !1166
  store i32 %pixel_format, ptr %pixel_format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixel_format.addr, metadata !1163, metadata !DIExpression()), !dbg !1167
  %2 = load i32, ptr %pixel_format.addr, align 4, !dbg !1168
  %cmp = icmp eq i32 %2, 2, !dbg !1170
  br i1 %cmp, label %if.then, label %if.else, !dbg !1171

if.then:                                          ; preds = %entry
  %red_mask = getelementptr inbounds %struct.efi_pixel_bitmask_t, ptr %pixel_info, i32 0, i32 0, !dbg !1172
  %3 = load i32, ptr %red_mask, align 4, !dbg !1172
  %4 = load ptr, ptr %si.addr, align 8, !dbg !1174
  %red_pos = getelementptr inbounds %struct.screen_info, ptr %4, i32 0, i32 22, !dbg !1175
  %5 = load ptr, ptr %si.addr, align 8, !dbg !1176
  %red_size = getelementptr inbounds %struct.screen_info, ptr %5, i32 0, i32 21, !dbg !1177
  call void @find_bits(i32 noundef %3, ptr noundef %red_pos, ptr noundef %red_size) #8, !dbg !1178
  %green_mask = getelementptr inbounds %struct.efi_pixel_bitmask_t, ptr %pixel_info, i32 0, i32 1, !dbg !1179
  %6 = load i32, ptr %green_mask, align 4, !dbg !1179
  %7 = load ptr, ptr %si.addr, align 8, !dbg !1180
  %green_pos = getelementptr inbounds %struct.screen_info, ptr %7, i32 0, i32 24, !dbg !1181
  %8 = load ptr, ptr %si.addr, align 8, !dbg !1182
  %green_size = getelementptr inbounds %struct.screen_info, ptr %8, i32 0, i32 23, !dbg !1183
  call void @find_bits(i32 noundef %6, ptr noundef %green_pos, ptr noundef %green_size) #8, !dbg !1184
  %blue_mask = getelementptr inbounds %struct.efi_pixel_bitmask_t, ptr %pixel_info, i32 0, i32 2, !dbg !1185
  %9 = load i32, ptr %blue_mask, align 4, !dbg !1185
  %10 = load ptr, ptr %si.addr, align 8, !dbg !1186
  %blue_pos = getelementptr inbounds %struct.screen_info, ptr %10, i32 0, i32 26, !dbg !1187
  %11 = load ptr, ptr %si.addr, align 8, !dbg !1188
  %blue_size = getelementptr inbounds %struct.screen_info, ptr %11, i32 0, i32 25, !dbg !1189
  call void @find_bits(i32 noundef %9, ptr noundef %blue_pos, ptr noundef %blue_size) #8, !dbg !1190
  %reserved_mask = getelementptr inbounds %struct.efi_pixel_bitmask_t, ptr %pixel_info, i32 0, i32 3, !dbg !1191
  %12 = load i32, ptr %reserved_mask, align 4, !dbg !1191
  %13 = load ptr, ptr %si.addr, align 8, !dbg !1192
  %rsvd_pos = getelementptr inbounds %struct.screen_info, ptr %13, i32 0, i32 28, !dbg !1193
  %14 = load ptr, ptr %si.addr, align 8, !dbg !1194
  %rsvd_size = getelementptr inbounds %struct.screen_info, ptr %14, i32 0, i32 27, !dbg !1195
  call void @find_bits(i32 noundef %12, ptr noundef %rsvd_pos, ptr noundef %rsvd_size) #8, !dbg !1196
  %15 = load ptr, ptr %si.addr, align 8, !dbg !1197
  %red_size1 = getelementptr inbounds %struct.screen_info, ptr %15, i32 0, i32 21, !dbg !1198
  %16 = load i8, ptr %red_size1, align 1, !dbg !1198
  %conv = zext i8 %16 to i32, !dbg !1197
  %17 = load ptr, ptr %si.addr, align 8, !dbg !1199
  %green_size2 = getelementptr inbounds %struct.screen_info, ptr %17, i32 0, i32 23, !dbg !1200
  %18 = load i8, ptr %green_size2, align 1, !dbg !1200
  %conv3 = zext i8 %18 to i32, !dbg !1199
  %add = add nsw i32 %conv, %conv3, !dbg !1201
  %19 = load ptr, ptr %si.addr, align 8, !dbg !1202
  %blue_size4 = getelementptr inbounds %struct.screen_info, ptr %19, i32 0, i32 25, !dbg !1203
  %20 = load i8, ptr %blue_size4, align 1, !dbg !1203
  %conv5 = zext i8 %20 to i32, !dbg !1202
  %add6 = add nsw i32 %add, %conv5, !dbg !1204
  %21 = load ptr, ptr %si.addr, align 8, !dbg !1205
  %rsvd_size7 = getelementptr inbounds %struct.screen_info, ptr %21, i32 0, i32 27, !dbg !1206
  %22 = load i8, ptr %rsvd_size7, align 1, !dbg !1206
  %conv8 = zext i8 %22 to i32, !dbg !1205
  %add9 = add nsw i32 %add6, %conv8, !dbg !1207
  %conv10 = trunc i32 %add9 to i16, !dbg !1197
  %23 = load ptr, ptr %si.addr, align 8, !dbg !1208
  %lfb_depth = getelementptr inbounds %struct.screen_info, ptr %23, i32 0, i32 15, !dbg !1209
  store i16 %conv10, ptr %lfb_depth, align 1, !dbg !1210
  %24 = load i32, ptr %pixels_per_scan_line.addr, align 4, !dbg !1211
  %25 = load ptr, ptr %si.addr, align 8, !dbg !1212
  %lfb_depth11 = getelementptr inbounds %struct.screen_info, ptr %25, i32 0, i32 15, !dbg !1213
  %26 = load i16, ptr %lfb_depth11, align 1, !dbg !1213
  %conv12 = zext i16 %26 to i32, !dbg !1212
  %mul = mul i32 %24, %conv12, !dbg !1214
  %div = udiv i32 %mul, 8, !dbg !1215
  %conv13 = trunc i32 %div to i16, !dbg !1216
  %27 = load ptr, ptr %si.addr, align 8, !dbg !1217
  %lfb_linelength = getelementptr inbounds %struct.screen_info, ptr %27, i32 0, i32 20, !dbg !1218
  store i16 %conv13, ptr %lfb_linelength, align 1, !dbg !1219
  br label %if.end32, !dbg !1220

if.else:                                          ; preds = %entry
  %28 = load i32, ptr %pixel_format.addr, align 4, !dbg !1221
  %cmp14 = icmp eq i32 %28, 0, !dbg !1224
  br i1 %cmp14, label %if.then16, label %if.else19, !dbg !1225

if.then16:                                        ; preds = %if.else
  %29 = load ptr, ptr %si.addr, align 8, !dbg !1226
  %red_pos17 = getelementptr inbounds %struct.screen_info, ptr %29, i32 0, i32 22, !dbg !1228
  store i8 0, ptr %red_pos17, align 1, !dbg !1229
  %30 = load ptr, ptr %si.addr, align 8, !dbg !1230
  %blue_pos18 = getelementptr inbounds %struct.screen_info, ptr %30, i32 0, i32 26, !dbg !1231
  store i8 16, ptr %blue_pos18, align 1, !dbg !1232
  br label %if.end, !dbg !1233

if.else19:                                        ; preds = %if.else
  %31 = load ptr, ptr %si.addr, align 8, !dbg !1234
  %blue_pos20 = getelementptr inbounds %struct.screen_info, ptr %31, i32 0, i32 26, !dbg !1236
  store i8 0, ptr %blue_pos20, align 1, !dbg !1237
  %32 = load ptr, ptr %si.addr, align 8, !dbg !1238
  %red_pos21 = getelementptr inbounds %struct.screen_info, ptr %32, i32 0, i32 22, !dbg !1239
  store i8 16, ptr %red_pos21, align 1, !dbg !1240
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then16
  %33 = load ptr, ptr %si.addr, align 8, !dbg !1241
  %green_pos22 = getelementptr inbounds %struct.screen_info, ptr %33, i32 0, i32 24, !dbg !1242
  store i8 8, ptr %green_pos22, align 1, !dbg !1243
  %34 = load ptr, ptr %si.addr, align 8, !dbg !1244
  %rsvd_pos23 = getelementptr inbounds %struct.screen_info, ptr %34, i32 0, i32 28, !dbg !1245
  store i8 24, ptr %rsvd_pos23, align 1, !dbg !1246
  %35 = load ptr, ptr %si.addr, align 8, !dbg !1247
  %rsvd_size24 = getelementptr inbounds %struct.screen_info, ptr %35, i32 0, i32 27, !dbg !1248
  store i8 8, ptr %rsvd_size24, align 1, !dbg !1249
  %36 = load ptr, ptr %si.addr, align 8, !dbg !1250
  %blue_size25 = getelementptr inbounds %struct.screen_info, ptr %36, i32 0, i32 25, !dbg !1251
  store i8 8, ptr %blue_size25, align 1, !dbg !1252
  %37 = load ptr, ptr %si.addr, align 8, !dbg !1253
  %green_size26 = getelementptr inbounds %struct.screen_info, ptr %37, i32 0, i32 23, !dbg !1254
  store i8 8, ptr %green_size26, align 1, !dbg !1255
  %38 = load ptr, ptr %si.addr, align 8, !dbg !1256
  %red_size27 = getelementptr inbounds %struct.screen_info, ptr %38, i32 0, i32 21, !dbg !1257
  store i8 8, ptr %red_size27, align 1, !dbg !1258
  %39 = load ptr, ptr %si.addr, align 8, !dbg !1259
  %lfb_depth28 = getelementptr inbounds %struct.screen_info, ptr %39, i32 0, i32 15, !dbg !1260
  store i16 32, ptr %lfb_depth28, align 1, !dbg !1261
  %40 = load i32, ptr %pixels_per_scan_line.addr, align 4, !dbg !1262
  %mul29 = mul i32 %40, 4, !dbg !1263
  %conv30 = trunc i32 %mul29 to i16, !dbg !1262
  %41 = load ptr, ptr %si.addr, align 8, !dbg !1264
  %lfb_linelength31 = getelementptr inbounds %struct.screen_info, ptr %41, i32 0, i32 20, !dbg !1265
  store i16 %conv30, ptr %lfb_linelength31, align 1, !dbg !1266
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then
  ret void, !dbg !1267
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone nounwind
define internal i32 @choose_mode_modenum(ptr noundef %gop) #0 !dbg !1268 {
entry:
  %retval = alloca i32, align 4
  %gop.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %mode = alloca ptr, align 8
  %info = alloca ptr, align 8
  %info_size = alloca i64, align 8
  %max_mode = alloca i32, align 4
  %cur_mode = alloca i32, align 4
  %pf = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__inst = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp34 = alloca i64, align 8
  %__pad60 = alloca [3 x i64], align 16
  %tmp64 = alloca i64, align 8
  store ptr %gop, ptr %gop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gop.addr, metadata !1272, metadata !DIExpression()), !dbg !1286
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !1287
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1273, metadata !DIExpression()), !dbg !1288
  call void @llvm.lifetime.start.p0(i64 8, ptr %mode) #9, !dbg !1289
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !1274, metadata !DIExpression()), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #9, !dbg !1291
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1275, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.start.p0(i64 8, ptr %info_size) #9, !dbg !1293
  call void @llvm.dbg.declare(metadata ptr %info_size, metadata !1276, metadata !DIExpression()), !dbg !1294
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_mode) #9, !dbg !1295
  call void @llvm.dbg.declare(metadata ptr %max_mode, metadata !1277, metadata !DIExpression()), !dbg !1296
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_mode) #9, !dbg !1295
  call void @llvm.dbg.declare(metadata ptr %cur_mode, metadata !1278, metadata !DIExpression()), !dbg !1297
  call void @llvm.lifetime.start.p0(i64 4, ptr %pf) #9, !dbg !1298
  call void @llvm.dbg.declare(metadata ptr %pf, metadata !1279, metadata !DIExpression()), !dbg !1299
  %call = call zeroext i1 @efi_is_native() #8, !dbg !1300
  br i1 %call, label %cond.true, label %cond.false, !dbg !1300

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %gop.addr, align 8, !dbg !1300
  %mode1 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 3, !dbg !1300
  %1 = load ptr, ptr %mode1, align 8, !dbg !1300
  br label %cond.end, !dbg !1300

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %gop.addr, align 8, !dbg !1300
  %mode2 = getelementptr inbounds %struct.anon.5, ptr %2, i32 0, i32 3, !dbg !1300
  %3 = load i32, ptr %mode2, align 4, !dbg !1300
  %conv = zext i32 %3 to i64, !dbg !1300
  %4 = inttoptr i64 %conv to ptr, !dbg !1300
  br label %cond.end, !dbg !1300

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %4, %cond.false ], !dbg !1300
  store ptr %cond, ptr %mode, align 8, !dbg !1301
  %call3 = call zeroext i1 @efi_is_native() #8, !dbg !1302
  br i1 %call3, label %cond.true5, label %cond.false7, !dbg !1302

cond.true5:                                       ; preds = %cond.end
  %5 = load ptr, ptr %mode, align 8, !dbg !1302
  %mode6 = getelementptr inbounds %struct.anon.6, ptr %5, i32 0, i32 1, !dbg !1302
  %6 = load i32, ptr %mode6, align 4, !dbg !1302
  br label %cond.end11, !dbg !1302

cond.false7:                                      ; preds = %cond.end
  %7 = load ptr, ptr %mode, align 8, !dbg !1302
  %mode8 = getelementptr inbounds %struct.anon.7, ptr %7, i32 0, i32 1, !dbg !1302
  %8 = load i32, ptr %mode8, align 4, !dbg !1302
  %conv9 = zext i32 %8 to i64, !dbg !1302
  %conv10 = trunc i64 %conv9 to i32, !dbg !1302
  br label %cond.end11, !dbg !1302

cond.end11:                                       ; preds = %cond.false7, %cond.true5
  %cond12 = phi i32 [ %6, %cond.true5 ], [ %conv10, %cond.false7 ], !dbg !1302
  store i32 %cond12, ptr %cur_mode, align 4, !dbg !1303
  %9 = load i32, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), align 4, !dbg !1304
  %10 = load i32, ptr %cur_mode, align 4, !dbg !1306
  %cmp = icmp eq i32 %9, %10, !dbg !1307
  br i1 %cmp, label %if.then, label %if.end, !dbg !1308

if.then:                                          ; preds = %cond.end11
  %11 = load i32, ptr %cur_mode, align 4, !dbg !1309
  store i32 %11, ptr %retval, align 4, !dbg !1310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1310

if.end:                                           ; preds = %cond.end11
  %call14 = call zeroext i1 @efi_is_native() #8, !dbg !1311
  br i1 %call14, label %cond.true16, label %cond.false18, !dbg !1311

cond.true16:                                      ; preds = %if.end
  %12 = load ptr, ptr %mode, align 8, !dbg !1311
  %max_mode17 = getelementptr inbounds %struct.anon.6, ptr %12, i32 0, i32 0, !dbg !1311
  %13 = load i32, ptr %max_mode17, align 8, !dbg !1311
  br label %cond.end22, !dbg !1311

cond.false18:                                     ; preds = %if.end
  %14 = load ptr, ptr %mode, align 8, !dbg !1311
  %max_mode19 = getelementptr inbounds %struct.anon.7, ptr %14, i32 0, i32 0, !dbg !1311
  %15 = load i32, ptr %max_mode19, align 8, !dbg !1311
  %conv20 = zext i32 %15 to i64, !dbg !1311
  %conv21 = trunc i64 %conv20 to i32, !dbg !1311
  br label %cond.end22, !dbg !1311

cond.end22:                                       ; preds = %cond.false18, %cond.true16
  %cond23 = phi i32 [ %13, %cond.true16 ], [ %conv21, %cond.false18 ], !dbg !1311
  store i32 %cond23, ptr %max_mode, align 4, !dbg !1312
  %16 = load i32, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), align 4, !dbg !1313
  %17 = load i32, ptr %max_mode, align 4, !dbg !1315
  %cmp24 = icmp uge i32 %16, %17, !dbg !1316
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !1317

if.then26:                                        ; preds = %cond.end22
  %call27 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.6) #8, !dbg !1318
  %18 = load i32, ptr %cur_mode, align 4, !dbg !1320
  store i32 %18, ptr %retval, align 4, !dbg !1321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1321

if.end28:                                         ; preds = %cond.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #9, !dbg !1322
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !1280, metadata !DIExpression()), !dbg !1322
  %19 = load ptr, ptr %gop.addr, align 8, !dbg !1322
  store ptr %19, ptr %__inst, align 8, !dbg !1322
  %call29 = call zeroext i1 @efi_is_native() #8, !dbg !1322
  br i1 %call29, label %cond.true31, label %cond.false33, !dbg !1322

cond.true31:                                      ; preds = %if.end28
  %20 = load ptr, ptr %__inst, align 8, !dbg !1322
  %query_mode = getelementptr inbounds %struct.anon.4, ptr %20, i32 0, i32 0, !dbg !1322
  %21 = load ptr, ptr %query_mode, align 8, !dbg !1322
  %22 = load ptr, ptr %__inst, align 8, !dbg !1322
  %23 = load i32, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), align 4, !dbg !1322
  %call32 = call win64cc i64 %21(ptr noundef %22, i32 noundef %23, ptr noundef %info_size, ptr noundef %info) #8, !dbg !1322
  br label %cond.end40, !dbg !1322

cond.false33:                                     ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !1323
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1282, metadata !DIExpression()), !dbg !1323
  br label %do.body, !dbg !1324

do.body:                                          ; preds = %cond.false33
  br label %do.cond, !dbg !1326

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1326

do.end:                                           ; preds = %do.cond
  %24 = load ptr, ptr %__inst, align 8, !dbg !1323
  %query_mode35 = getelementptr inbounds %struct.anon.5, ptr %24, i32 0, i32 0, !dbg !1323
  %25 = load i32, ptr %query_mode35, align 8, !dbg !1323
  %26 = load ptr, ptr %__inst, align 8, !dbg !1323
  %27 = load i32, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), align 4, !dbg !1323
  %call36 = call ptr @efi64_zero_upper(ptr noundef %info_size) #8, !dbg !1323
  %call37 = call ptr @efi64_zero_upper(ptr noundef %info) #8, !dbg !1323
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1323
  %call38 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %25, ptr noundef %26, i32 noundef %27, ptr noundef %call36, ptr noundef %call37, ptr noundef %arraydecay) #8, !dbg !1323
  store i64 %call38, ptr %tmp34, align 8, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !1322
  %28 = load i64, ptr %tmp34, align 8, !dbg !1323
  %call39 = call i64 @__efi64_widen_efi_status(i64 noundef %28) #8, !dbg !1322
  br label %cond.end40, !dbg !1322

cond.end40:                                       ; preds = %do.end, %cond.true31
  %cond41 = phi i64 [ %call32, %cond.true31 ], [ %call39, %do.end ], !dbg !1322
  store i64 %cond41, ptr %tmp, align 8, !dbg !1322
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #9, !dbg !1328
  %29 = load i64, ptr %tmp, align 8, !dbg !1322
  store i64 %29, ptr %status, align 8, !dbg !1329
  %30 = load i64, ptr %status, align 8, !dbg !1330
  %cmp42 = icmp ne i64 %30, 0, !dbg !1332
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !1333

if.then44:                                        ; preds = %cond.end40
  %call45 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.7) #8, !dbg !1334
  %31 = load i32, ptr %cur_mode, align 4, !dbg !1336
  store i32 %31, ptr %retval, align 4, !dbg !1337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1337

if.end46:                                         ; preds = %cond.end40
  %32 = load ptr, ptr %info, align 8, !dbg !1338
  %pixel_format = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %32, i32 0, i32 3, !dbg !1339
  %33 = load i32, ptr %pixel_format, align 4, !dbg !1339
  store i32 %33, ptr %pf, align 4, !dbg !1340
  %call47 = call zeroext i1 @efi_is_native() #8, !dbg !1341
  br i1 %call47, label %cond.true49, label %cond.false59, !dbg !1341

cond.true49:                                      ; preds = %if.end46
  %call50 = call zeroext i1 @efi_is_native() #8, !dbg !1341
  br i1 %call50, label %cond.true52, label %cond.false53, !dbg !1341

cond.true52:                                      ; preds = %cond.true49
  %34 = load ptr, ptr @efi_system_table, align 8, !dbg !1341
  %boottime = getelementptr inbounds %struct.anon.1, ptr %34, i32 0, i32 10, !dbg !1341
  %35 = load ptr, ptr %boottime, align 8, !dbg !1341
  br label %cond.end56, !dbg !1341

cond.false53:                                     ; preds = %cond.true49
  %36 = load ptr, ptr @efi_system_table, align 8, !dbg !1341
  %boottime54 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %36, i32 0, i32 10, !dbg !1341
  %37 = load i32, ptr %boottime54, align 4, !dbg !1341
  %conv55 = zext i32 %37 to i64, !dbg !1341
  %38 = inttoptr i64 %conv55 to ptr, !dbg !1341
  br label %cond.end56, !dbg !1341

cond.end56:                                       ; preds = %cond.false53, %cond.true52
  %cond57 = phi ptr [ %35, %cond.true52 ], [ %38, %cond.false53 ], !dbg !1341
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond57, i32 0, i32 7, !dbg !1341
  %39 = load ptr, ptr %free_pool, align 8, !dbg !1341
  %40 = load ptr, ptr %info, align 8, !dbg !1341
  %call58 = call win64cc i64 %39(ptr noundef %40) #8, !dbg !1341
  br label %cond.end78, !dbg !1341

cond.false59:                                     ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad60) #9, !dbg !1342
  call void @llvm.dbg.declare(metadata ptr %__pad60, metadata !1284, metadata !DIExpression()), !dbg !1342
  br label %do.body61, !dbg !1343

do.body61:                                        ; preds = %cond.false59
  br label %do.cond62, !dbg !1345

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !1345

do.end63:                                         ; preds = %do.cond62
  %call65 = call zeroext i1 @efi_is_native() #8, !dbg !1342
  br i1 %call65, label %cond.true67, label %cond.false69, !dbg !1342

cond.true67:                                      ; preds = %do.end63
  %41 = load ptr, ptr @efi_system_table, align 8, !dbg !1342
  %boottime68 = getelementptr inbounds %struct.anon.1, ptr %41, i32 0, i32 10, !dbg !1342
  %42 = load ptr, ptr %boottime68, align 8, !dbg !1342
  br label %cond.end72, !dbg !1342

cond.false69:                                     ; preds = %do.end63
  %43 = load ptr, ptr @efi_system_table, align 8, !dbg !1342
  %boottime70 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %43, i32 0, i32 10, !dbg !1342
  %44 = load i32, ptr %boottime70, align 4, !dbg !1342
  %conv71 = zext i32 %44 to i64, !dbg !1342
  %45 = inttoptr i64 %conv71 to ptr, !dbg !1342
  br label %cond.end72, !dbg !1342

cond.end72:                                       ; preds = %cond.false69, %cond.true67
  %cond73 = phi ptr [ %42, %cond.true67 ], [ %45, %cond.false69 ], !dbg !1342
  %free_pool74 = getelementptr inbounds %struct.anon.0, ptr %cond73, i32 0, i32 7, !dbg !1342
  %46 = load i32, ptr %free_pool74, align 8, !dbg !1342
  %47 = load ptr, ptr %info, align 8, !dbg !1342
  %arraydecay75 = getelementptr inbounds [3 x i64], ptr %__pad60, i64 0, i64 0, !dbg !1342
  %call76 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %46, ptr noundef %47, ptr noundef %arraydecay75) #8, !dbg !1342
  store i64 %call76, ptr %tmp64, align 8, !dbg !1342
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad60) #9, !dbg !1341
  %48 = load i64, ptr %tmp64, align 8, !dbg !1342
  %call77 = call i64 @__efi64_widen_efi_status(i64 noundef %48) #8, !dbg !1341
  br label %cond.end78, !dbg !1341

cond.end78:                                       ; preds = %cond.end72, %cond.end56
  %cond79 = phi i64 [ %call58, %cond.end56 ], [ %call77, %cond.end72 ], !dbg !1341
  %49 = load i32, ptr %pf, align 4, !dbg !1347
  %cmp80 = icmp eq i32 %49, 3, !dbg !1349
  br i1 %cmp80, label %if.then84, label %lor.lhs.false, !dbg !1350

lor.lhs.false:                                    ; preds = %cond.end78
  %50 = load i32, ptr %pf, align 4, !dbg !1351
  %cmp82 = icmp sge i32 %50, 4, !dbg !1352
  br i1 %cmp82, label %if.then84, label %if.end86, !dbg !1353

if.then84:                                        ; preds = %lor.lhs.false, %cond.end78
  %call85 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.8) #8, !dbg !1354
  %51 = load i32, ptr %cur_mode, align 4, !dbg !1356
  store i32 %51, ptr %retval, align 4, !dbg !1357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1357

if.end86:                                         ; preds = %lor.lhs.false
  %52 = load i32, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), align 4, !dbg !1358
  store i32 %52, ptr %retval, align 4, !dbg !1359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1359

cleanup:                                          ; preds = %if.end86, %if.then84, %if.then44, %if.then26, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pf) #9, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_mode) #9, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_mode) #9, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 8, ptr %info_size) #9, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #9, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 8, ptr %mode) #9, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !1360
  %53 = load i32, ptr %retval, align 4, !dbg !1360
  ret i32 %53, !dbg !1360
}

; Function Attrs: noredzone nounwind
define internal i32 @choose_mode_res(ptr noundef %gop) #0 !dbg !1361 {
entry:
  %retval = alloca i32, align 4
  %gop.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %mode = alloca ptr, align 8
  %info = alloca ptr, align 8
  %info_size = alloca i64, align 8
  %max_mode = alloca i32, align 4
  %cur_mode = alloca i32, align 4
  %pf = alloca i32, align 4
  %pi = alloca %struct.efi_pixel_bitmask_t, align 4
  %m = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__inst = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp58 = alloca i64, align 8
  %__pad87 = alloca [3 x i64], align 16
  %tmp91 = alloca i64, align 8
  store ptr %gop, ptr %gop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gop.addr, metadata !1363, metadata !DIExpression()), !dbg !1384
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !1385
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1364, metadata !DIExpression()), !dbg !1386
  call void @llvm.lifetime.start.p0(i64 8, ptr %mode) #9, !dbg !1387
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !1365, metadata !DIExpression()), !dbg !1388
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #9, !dbg !1389
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1366, metadata !DIExpression()), !dbg !1390
  call void @llvm.lifetime.start.p0(i64 8, ptr %info_size) #9, !dbg !1391
  call void @llvm.dbg.declare(metadata ptr %info_size, metadata !1367, metadata !DIExpression()), !dbg !1392
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_mode) #9, !dbg !1393
  call void @llvm.dbg.declare(metadata ptr %max_mode, metadata !1368, metadata !DIExpression()), !dbg !1394
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_mode) #9, !dbg !1393
  call void @llvm.dbg.declare(metadata ptr %cur_mode, metadata !1369, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.start.p0(i64 4, ptr %pf) #9, !dbg !1396
  call void @llvm.dbg.declare(metadata ptr %pf, metadata !1370, metadata !DIExpression()), !dbg !1397
  call void @llvm.lifetime.start.p0(i64 16, ptr %pi) #9, !dbg !1398
  call void @llvm.dbg.declare(metadata ptr %pi, metadata !1371, metadata !DIExpression()), !dbg !1399
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #9, !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %m, metadata !1372, metadata !DIExpression()), !dbg !1401
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #9, !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %w, metadata !1373, metadata !DIExpression()), !dbg !1402
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #9, !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %h, metadata !1374, metadata !DIExpression()), !dbg !1403
  %call = call zeroext i1 @efi_is_native() #8, !dbg !1404
  br i1 %call, label %cond.true, label %cond.false, !dbg !1404

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %gop.addr, align 8, !dbg !1404
  %mode1 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 3, !dbg !1404
  %1 = load ptr, ptr %mode1, align 8, !dbg !1404
  br label %cond.end, !dbg !1404

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %gop.addr, align 8, !dbg !1404
  %mode2 = getelementptr inbounds %struct.anon.5, ptr %2, i32 0, i32 3, !dbg !1404
  %3 = load i32, ptr %mode2, align 4, !dbg !1404
  %conv = zext i32 %3 to i64, !dbg !1404
  %4 = inttoptr i64 %conv to ptr, !dbg !1404
  br label %cond.end, !dbg !1404

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %4, %cond.false ], !dbg !1404
  store ptr %cond, ptr %mode, align 8, !dbg !1405
  %call3 = call zeroext i1 @efi_is_native() #8, !dbg !1406
  br i1 %call3, label %cond.true5, label %cond.false7, !dbg !1406

cond.true5:                                       ; preds = %cond.end
  %5 = load ptr, ptr %mode, align 8, !dbg !1406
  %mode6 = getelementptr inbounds %struct.anon.6, ptr %5, i32 0, i32 1, !dbg !1406
  %6 = load i32, ptr %mode6, align 4, !dbg !1406
  br label %cond.end11, !dbg !1406

cond.false7:                                      ; preds = %cond.end
  %7 = load ptr, ptr %mode, align 8, !dbg !1406
  %mode8 = getelementptr inbounds %struct.anon.7, ptr %7, i32 0, i32 1, !dbg !1406
  %8 = load i32, ptr %mode8, align 4, !dbg !1406
  %conv9 = zext i32 %8 to i64, !dbg !1406
  %conv10 = trunc i64 %conv9 to i32, !dbg !1406
  br label %cond.end11, !dbg !1406

cond.end11:                                       ; preds = %cond.false7, %cond.true5
  %cond12 = phi i32 [ %6, %cond.true5 ], [ %conv10, %cond.false7 ], !dbg !1406
  store i32 %cond12, ptr %cur_mode, align 4, !dbg !1407
  %call13 = call zeroext i1 @efi_is_native() #8, !dbg !1408
  br i1 %call13, label %cond.true15, label %cond.false17, !dbg !1408

cond.true15:                                      ; preds = %cond.end11
  %9 = load ptr, ptr %mode, align 8, !dbg !1408
  %info16 = getelementptr inbounds %struct.anon.6, ptr %9, i32 0, i32 2, !dbg !1408
  %10 = load ptr, ptr %info16, align 8, !dbg !1408
  br label %cond.end20, !dbg !1408

cond.false17:                                     ; preds = %cond.end11
  %11 = load ptr, ptr %mode, align 8, !dbg !1408
  %info18 = getelementptr inbounds %struct.anon.7, ptr %11, i32 0, i32 2, !dbg !1408
  %12 = load i32, ptr %info18, align 8, !dbg !1408
  %conv19 = zext i32 %12 to i64, !dbg !1408
  %13 = inttoptr i64 %conv19 to ptr, !dbg !1408
  br label %cond.end20, !dbg !1408

cond.end20:                                       ; preds = %cond.false17, %cond.true15
  %cond21 = phi ptr [ %10, %cond.true15 ], [ %13, %cond.false17 ], !dbg !1408
  store ptr %cond21, ptr %info, align 8, !dbg !1409
  %14 = load ptr, ptr %info, align 8, !dbg !1410
  %pixel_format = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %14, i32 0, i32 3, !dbg !1411
  %15 = load i32, ptr %pixel_format, align 4, !dbg !1411
  store i32 %15, ptr %pf, align 4, !dbg !1412
  %16 = load ptr, ptr %info, align 8, !dbg !1413
  %pixel_information = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %16, i32 0, i32 4, !dbg !1414
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %pi, ptr align 4 %pixel_information, i64 16, i1 false), !dbg !1414
  %17 = load ptr, ptr %info, align 8, !dbg !1415
  %horizontal_resolution = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %17, i32 0, i32 1, !dbg !1416
  %18 = load i32, ptr %horizontal_resolution, align 4, !dbg !1416
  store i32 %18, ptr %w, align 4, !dbg !1417
  %19 = load ptr, ptr %info, align 8, !dbg !1418
  %vertical_resolution = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %19, i32 0, i32 2, !dbg !1419
  %20 = load i32, ptr %vertical_resolution, align 4, !dbg !1419
  store i32 %20, ptr %h, align 4, !dbg !1420
  %21 = load i32, ptr %w, align 4, !dbg !1421
  %22 = load i32, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), align 4, !dbg !1423
  %cmp = icmp eq i32 %21, %22, !dbg !1424
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1425

land.lhs.true:                                    ; preds = %cond.end20
  %23 = load i32, ptr %h, align 4, !dbg !1426
  %24 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), i32 0, i32 1), align 4, !dbg !1427
  %cmp23 = icmp eq i32 %23, %24, !dbg !1428
  br i1 %cmp23, label %land.lhs.true25, label %if.end, !dbg !1429

land.lhs.true25:                                  ; preds = %land.lhs.true
  %25 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), i32 0, i32 2), align 4, !dbg !1430
  %cmp26 = icmp slt i32 %25, 0, !dbg !1431
  br i1 %cmp26, label %land.lhs.true30, label %lor.lhs.false, !dbg !1432

lor.lhs.false:                                    ; preds = %land.lhs.true25
  %26 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), i32 0, i32 2), align 4, !dbg !1433
  %27 = load i32, ptr %pf, align 4, !dbg !1434
  %cmp28 = icmp eq i32 %26, %27, !dbg !1435
  br i1 %cmp28, label %land.lhs.true30, label %if.end, !dbg !1436

land.lhs.true30:                                  ; preds = %lor.lhs.false, %land.lhs.true25
  %28 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), i32 0, i32 3), align 4, !dbg !1437
  %tobool = icmp ne i8 %28, 0, !dbg !1438
  br i1 %tobool, label %lor.lhs.false31, label %if.then, !dbg !1439

lor.lhs.false31:                                  ; preds = %land.lhs.true30
  %29 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), i32 0, i32 3), align 4, !dbg !1440
  %conv32 = zext i8 %29 to i32, !dbg !1441
  %30 = load i32, ptr %pf, align 4, !dbg !1442
  %31 = getelementptr inbounds { i64, i64 }, ptr %pi, i32 0, i32 0, !dbg !1443
  %32 = load i64, ptr %31, align 4, !dbg !1443
  %33 = getelementptr inbounds { i64, i64 }, ptr %pi, i32 0, i32 1, !dbg !1443
  %34 = load i64, ptr %33, align 4, !dbg !1443
  %call33 = call zeroext i8 @pixel_bpp(i32 noundef %30, i64 %32, i64 %34) #8, !dbg !1443
  %conv34 = zext i8 %call33 to i32, !dbg !1443
  %cmp35 = icmp eq i32 %conv32, %conv34, !dbg !1444
  br i1 %cmp35, label %if.then, label %if.end, !dbg !1445

if.then:                                          ; preds = %lor.lhs.false31, %land.lhs.true30
  %35 = load i32, ptr %cur_mode, align 4, !dbg !1446
  store i32 %35, ptr %retval, align 4, !dbg !1447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1447

if.end:                                           ; preds = %lor.lhs.false31, %lor.lhs.false, %land.lhs.true, %cond.end20
  %call37 = call zeroext i1 @efi_is_native() #8, !dbg !1448
  br i1 %call37, label %cond.true39, label %cond.false41, !dbg !1448

cond.true39:                                      ; preds = %if.end
  %36 = load ptr, ptr %mode, align 8, !dbg !1448
  %max_mode40 = getelementptr inbounds %struct.anon.6, ptr %36, i32 0, i32 0, !dbg !1448
  %37 = load i32, ptr %max_mode40, align 8, !dbg !1448
  br label %cond.end45, !dbg !1448

cond.false41:                                     ; preds = %if.end
  %38 = load ptr, ptr %mode, align 8, !dbg !1448
  %max_mode42 = getelementptr inbounds %struct.anon.7, ptr %38, i32 0, i32 0, !dbg !1448
  %39 = load i32, ptr %max_mode42, align 8, !dbg !1448
  %conv43 = zext i32 %39 to i64, !dbg !1448
  %conv44 = trunc i64 %conv43 to i32, !dbg !1448
  br label %cond.end45, !dbg !1448

cond.end45:                                       ; preds = %cond.false41, %cond.true39
  %cond46 = phi i32 [ %37, %cond.true39 ], [ %conv44, %cond.false41 ], !dbg !1448
  store i32 %cond46, ptr %max_mode, align 4, !dbg !1449
  store i32 0, ptr %m, align 4, !dbg !1450
  br label %for.cond, !dbg !1451

for.cond:                                         ; preds = %for.inc, %cond.end45
  %40 = load i32, ptr %m, align 4, !dbg !1452
  %41 = load i32, ptr %max_mode, align 4, !dbg !1453
  %cmp47 = icmp ult i32 %40, %41, !dbg !1454
  br i1 %cmp47, label %for.body, label %for.end, !dbg !1455

for.body:                                         ; preds = %for.cond
  %42 = load i32, ptr %m, align 4, !dbg !1456
  %43 = load i32, ptr %cur_mode, align 4, !dbg !1458
  %cmp49 = icmp eq i32 %42, %43, !dbg !1459
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !1460

if.then51:                                        ; preds = %for.body
  br label %for.inc, !dbg !1461

if.end52:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #9, !dbg !1462
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !1375, metadata !DIExpression()), !dbg !1462
  %44 = load ptr, ptr %gop.addr, align 8, !dbg !1462
  store ptr %44, ptr %__inst, align 8, !dbg !1462
  %call53 = call zeroext i1 @efi_is_native() #8, !dbg !1462
  br i1 %call53, label %cond.true55, label %cond.false57, !dbg !1462

cond.true55:                                      ; preds = %if.end52
  %45 = load ptr, ptr %__inst, align 8, !dbg !1462
  %query_mode = getelementptr inbounds %struct.anon.4, ptr %45, i32 0, i32 0, !dbg !1462
  %46 = load ptr, ptr %query_mode, align 8, !dbg !1462
  %47 = load ptr, ptr %__inst, align 8, !dbg !1462
  %48 = load i32, ptr %m, align 4, !dbg !1462
  %call56 = call win64cc i64 %46(ptr noundef %47, i32 noundef %48, ptr noundef %info_size, ptr noundef %info) #8, !dbg !1462
  br label %cond.end64, !dbg !1462

cond.false57:                                     ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !1463
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1380, metadata !DIExpression()), !dbg !1463
  br label %do.body, !dbg !1464

do.body:                                          ; preds = %cond.false57
  br label %do.cond, !dbg !1466

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1466

do.end:                                           ; preds = %do.cond
  %49 = load ptr, ptr %__inst, align 8, !dbg !1463
  %query_mode59 = getelementptr inbounds %struct.anon.5, ptr %49, i32 0, i32 0, !dbg !1463
  %50 = load i32, ptr %query_mode59, align 8, !dbg !1463
  %51 = load ptr, ptr %__inst, align 8, !dbg !1463
  %52 = load i32, ptr %m, align 4, !dbg !1463
  %call60 = call ptr @efi64_zero_upper(ptr noundef %info_size) #8, !dbg !1463
  %call61 = call ptr @efi64_zero_upper(ptr noundef %info) #8, !dbg !1463
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1463
  %call62 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %50, ptr noundef %51, i32 noundef %52, ptr noundef %call60, ptr noundef %call61, ptr noundef %arraydecay) #8, !dbg !1463
  store i64 %call62, ptr %tmp58, align 8, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !1462
  %53 = load i64, ptr %tmp58, align 8, !dbg !1463
  %call63 = call i64 @__efi64_widen_efi_status(i64 noundef %53) #8, !dbg !1462
  br label %cond.end64, !dbg !1462

cond.end64:                                       ; preds = %do.end, %cond.true55
  %cond65 = phi i64 [ %call56, %cond.true55 ], [ %call63, %do.end ], !dbg !1462
  store i64 %cond65, ptr %tmp, align 8, !dbg !1462
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #9, !dbg !1468
  %54 = load i64, ptr %tmp, align 8, !dbg !1462
  store i64 %54, ptr %status, align 8, !dbg !1469
  %55 = load i64, ptr %status, align 8, !dbg !1470
  %cmp66 = icmp ne i64 %55, 0, !dbg !1472
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !1473

if.then68:                                        ; preds = %cond.end64
  br label %for.inc, !dbg !1474

if.end69:                                         ; preds = %cond.end64
  %56 = load ptr, ptr %info, align 8, !dbg !1475
  %pixel_format70 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %56, i32 0, i32 3, !dbg !1476
  %57 = load i32, ptr %pixel_format70, align 4, !dbg !1476
  store i32 %57, ptr %pf, align 4, !dbg !1477
  %58 = load ptr, ptr %info, align 8, !dbg !1478
  %pixel_information71 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %58, i32 0, i32 4, !dbg !1479
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %pi, ptr align 4 %pixel_information71, i64 16, i1 false), !dbg !1479
  %59 = load ptr, ptr %info, align 8, !dbg !1480
  %horizontal_resolution72 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %59, i32 0, i32 1, !dbg !1481
  %60 = load i32, ptr %horizontal_resolution72, align 4, !dbg !1481
  store i32 %60, ptr %w, align 4, !dbg !1482
  %61 = load ptr, ptr %info, align 8, !dbg !1483
  %vertical_resolution73 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %61, i32 0, i32 2, !dbg !1484
  %62 = load i32, ptr %vertical_resolution73, align 4, !dbg !1484
  store i32 %62, ptr %h, align 4, !dbg !1485
  %call74 = call zeroext i1 @efi_is_native() #8, !dbg !1486
  br i1 %call74, label %cond.true76, label %cond.false86, !dbg !1486

cond.true76:                                      ; preds = %if.end69
  %call77 = call zeroext i1 @efi_is_native() #8, !dbg !1486
  br i1 %call77, label %cond.true79, label %cond.false80, !dbg !1486

cond.true79:                                      ; preds = %cond.true76
  %63 = load ptr, ptr @efi_system_table, align 8, !dbg !1486
  %boottime = getelementptr inbounds %struct.anon.1, ptr %63, i32 0, i32 10, !dbg !1486
  %64 = load ptr, ptr %boottime, align 8, !dbg !1486
  br label %cond.end83, !dbg !1486

cond.false80:                                     ; preds = %cond.true76
  %65 = load ptr, ptr @efi_system_table, align 8, !dbg !1486
  %boottime81 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %65, i32 0, i32 10, !dbg !1486
  %66 = load i32, ptr %boottime81, align 4, !dbg !1486
  %conv82 = zext i32 %66 to i64, !dbg !1486
  %67 = inttoptr i64 %conv82 to ptr, !dbg !1486
  br label %cond.end83, !dbg !1486

cond.end83:                                       ; preds = %cond.false80, %cond.true79
  %cond84 = phi ptr [ %64, %cond.true79 ], [ %67, %cond.false80 ], !dbg !1486
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond84, i32 0, i32 7, !dbg !1486
  %68 = load ptr, ptr %free_pool, align 8, !dbg !1486
  %69 = load ptr, ptr %info, align 8, !dbg !1486
  %call85 = call win64cc i64 %68(ptr noundef %69) #8, !dbg !1486
  br label %cond.end105, !dbg !1486

cond.false86:                                     ; preds = %if.end69
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad87) #9, !dbg !1487
  call void @llvm.dbg.declare(metadata ptr %__pad87, metadata !1382, metadata !DIExpression()), !dbg !1487
  br label %do.body88, !dbg !1488

do.body88:                                        ; preds = %cond.false86
  br label %do.cond89, !dbg !1490

do.cond89:                                        ; preds = %do.body88
  br label %do.end90, !dbg !1490

do.end90:                                         ; preds = %do.cond89
  %call92 = call zeroext i1 @efi_is_native() #8, !dbg !1487
  br i1 %call92, label %cond.true94, label %cond.false96, !dbg !1487

cond.true94:                                      ; preds = %do.end90
  %70 = load ptr, ptr @efi_system_table, align 8, !dbg !1487
  %boottime95 = getelementptr inbounds %struct.anon.1, ptr %70, i32 0, i32 10, !dbg !1487
  %71 = load ptr, ptr %boottime95, align 8, !dbg !1487
  br label %cond.end99, !dbg !1487

cond.false96:                                     ; preds = %do.end90
  %72 = load ptr, ptr @efi_system_table, align 8, !dbg !1487
  %boottime97 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %72, i32 0, i32 10, !dbg !1487
  %73 = load i32, ptr %boottime97, align 4, !dbg !1487
  %conv98 = zext i32 %73 to i64, !dbg !1487
  %74 = inttoptr i64 %conv98 to ptr, !dbg !1487
  br label %cond.end99, !dbg !1487

cond.end99:                                       ; preds = %cond.false96, %cond.true94
  %cond100 = phi ptr [ %71, %cond.true94 ], [ %74, %cond.false96 ], !dbg !1487
  %free_pool101 = getelementptr inbounds %struct.anon.0, ptr %cond100, i32 0, i32 7, !dbg !1487
  %75 = load i32, ptr %free_pool101, align 8, !dbg !1487
  %76 = load ptr, ptr %info, align 8, !dbg !1487
  %arraydecay102 = getelementptr inbounds [3 x i64], ptr %__pad87, i64 0, i64 0, !dbg !1487
  %call103 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %75, ptr noundef %76, ptr noundef %arraydecay102) #8, !dbg !1487
  store i64 %call103, ptr %tmp91, align 8, !dbg !1487
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad87) #9, !dbg !1486
  %77 = load i64, ptr %tmp91, align 8, !dbg !1487
  %call104 = call i64 @__efi64_widen_efi_status(i64 noundef %77) #8, !dbg !1486
  br label %cond.end105, !dbg !1486

cond.end105:                                      ; preds = %cond.end99, %cond.end83
  %cond106 = phi i64 [ %call85, %cond.end83 ], [ %call104, %cond.end99 ], !dbg !1486
  %78 = load i32, ptr %pf, align 4, !dbg !1492
  %cmp107 = icmp eq i32 %78, 3, !dbg !1494
  br i1 %cmp107, label %if.then112, label %lor.lhs.false109, !dbg !1495

lor.lhs.false109:                                 ; preds = %cond.end105
  %79 = load i32, ptr %pf, align 4, !dbg !1496
  %cmp110 = icmp sge i32 %79, 4, !dbg !1497
  br i1 %cmp110, label %if.then112, label %if.end113, !dbg !1498

if.then112:                                       ; preds = %lor.lhs.false109, %cond.end105
  br label %for.inc, !dbg !1499

if.end113:                                        ; preds = %lor.lhs.false109
  %80 = load i32, ptr %w, align 4, !dbg !1500
  %81 = load i32, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), align 4, !dbg !1502
  %cmp114 = icmp eq i32 %80, %81, !dbg !1503
  br i1 %cmp114, label %land.lhs.true116, label %if.end134, !dbg !1504

land.lhs.true116:                                 ; preds = %if.end113
  %82 = load i32, ptr %h, align 4, !dbg !1505
  %83 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), i32 0, i32 1), align 4, !dbg !1506
  %cmp117 = icmp eq i32 %82, %83, !dbg !1507
  br i1 %cmp117, label %land.lhs.true119, label %if.end134, !dbg !1508

land.lhs.true119:                                 ; preds = %land.lhs.true116
  %84 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), i32 0, i32 2), align 4, !dbg !1509
  %cmp120 = icmp slt i32 %84, 0, !dbg !1510
  br i1 %cmp120, label %land.lhs.true125, label %lor.lhs.false122, !dbg !1511

lor.lhs.false122:                                 ; preds = %land.lhs.true119
  %85 = load i32, ptr getelementptr inbounds (%struct.anon.3, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), i32 0, i32 2), align 4, !dbg !1512
  %86 = load i32, ptr %pf, align 4, !dbg !1513
  %cmp123 = icmp eq i32 %85, %86, !dbg !1514
  br i1 %cmp123, label %land.lhs.true125, label %if.end134, !dbg !1515

land.lhs.true125:                                 ; preds = %lor.lhs.false122, %land.lhs.true119
  %87 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), i32 0, i32 3), align 4, !dbg !1516
  %tobool126 = icmp ne i8 %87, 0, !dbg !1517
  br i1 %tobool126, label %lor.lhs.false127, label %if.then133, !dbg !1518

lor.lhs.false127:                                 ; preds = %land.lhs.true125
  %88 = load i8, ptr getelementptr inbounds (%struct.anon.3, ptr getelementptr inbounds (%struct.anon.2, ptr @cmdline, i32 0, i32 1), i32 0, i32 3), align 4, !dbg !1519
  %conv128 = zext i8 %88 to i32, !dbg !1520
  %89 = load i32, ptr %pf, align 4, !dbg !1521
  %90 = getelementptr inbounds { i64, i64 }, ptr %pi, i32 0, i32 0, !dbg !1522
  %91 = load i64, ptr %90, align 4, !dbg !1522
  %92 = getelementptr inbounds { i64, i64 }, ptr %pi, i32 0, i32 1, !dbg !1522
  %93 = load i64, ptr %92, align 4, !dbg !1522
  %call129 = call zeroext i8 @pixel_bpp(i32 noundef %89, i64 %91, i64 %93) #8, !dbg !1522
  %conv130 = zext i8 %call129 to i32, !dbg !1522
  %cmp131 = icmp eq i32 %conv128, %conv130, !dbg !1523
  br i1 %cmp131, label %if.then133, label %if.end134, !dbg !1524

if.then133:                                       ; preds = %lor.lhs.false127, %land.lhs.true125
  %94 = load i32, ptr %m, align 4, !dbg !1525
  store i32 %94, ptr %retval, align 4, !dbg !1526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1526

if.end134:                                        ; preds = %lor.lhs.false127, %lor.lhs.false122, %land.lhs.true116, %if.end113
  br label %for.inc, !dbg !1527

for.inc:                                          ; preds = %if.end134, %if.then112, %if.then68, %if.then51
  %95 = load i32, ptr %m, align 4, !dbg !1528
  %inc = add i32 %95, 1, !dbg !1528
  store i32 %inc, ptr %m, align 4, !dbg !1528
  br label %for.cond, !dbg !1529, !llvm.loop !1530

for.end:                                          ; preds = %for.cond
  %call135 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.9) #8, !dbg !1532
  %96 = load i32, ptr %cur_mode, align 4, !dbg !1533
  store i32 %96, ptr %retval, align 4, !dbg !1534
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1534

cleanup:                                          ; preds = %for.end, %if.then133, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #9, !dbg !1535
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #9, !dbg !1535
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #9, !dbg !1535
  call void @llvm.lifetime.end.p0(i64 16, ptr %pi) #9, !dbg !1535
  call void @llvm.lifetime.end.p0(i64 4, ptr %pf) #9, !dbg !1535
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_mode) #9, !dbg !1535
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_mode) #9, !dbg !1535
  call void @llvm.lifetime.end.p0(i64 8, ptr %info_size) #9, !dbg !1535
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #9, !dbg !1535
  call void @llvm.lifetime.end.p0(i64 8, ptr %mode) #9, !dbg !1535
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !1535
  %97 = load i32, ptr %retval, align 4, !dbg !1535
  ret i32 %97, !dbg !1535
}

; Function Attrs: noredzone nounwind
define internal i32 @choose_mode_auto(ptr noundef %gop) #0 !dbg !1536 {
entry:
  %gop.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %mode = alloca ptr, align 8
  %info = alloca ptr, align 8
  %info_size = alloca i64, align 8
  %max_mode = alloca i32, align 4
  %cur_mode = alloca i32, align 4
  %best_mode = alloca i32, align 4
  %area = alloca i32, align 4
  %depth = alloca i8, align 1
  %pf = alloca i32, align 4
  %pi = alloca %struct.efi_pixel_bitmask_t, align 4
  %m = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %a = alloca i32, align 4
  %d = alloca i8, align 1
  %__inst = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp41 = alloca i64, align 8
  %__pad70 = alloca [3 x i64], align 16
  %tmp74 = alloca i64, align 8
  store ptr %gop, ptr %gop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gop.addr, metadata !1538, metadata !DIExpression()), !dbg !1564
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !1565
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1539, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.start.p0(i64 8, ptr %mode) #9, !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !1540, metadata !DIExpression()), !dbg !1568
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #9, !dbg !1569
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1541, metadata !DIExpression()), !dbg !1570
  call void @llvm.lifetime.start.p0(i64 8, ptr %info_size) #9, !dbg !1571
  call void @llvm.dbg.declare(metadata ptr %info_size, metadata !1542, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_mode) #9, !dbg !1573
  call void @llvm.dbg.declare(metadata ptr %max_mode, metadata !1543, metadata !DIExpression()), !dbg !1574
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_mode) #9, !dbg !1573
  call void @llvm.dbg.declare(metadata ptr %cur_mode, metadata !1544, metadata !DIExpression()), !dbg !1575
  call void @llvm.lifetime.start.p0(i64 4, ptr %best_mode) #9, !dbg !1573
  call void @llvm.dbg.declare(metadata ptr %best_mode, metadata !1545, metadata !DIExpression()), !dbg !1576
  call void @llvm.lifetime.start.p0(i64 4, ptr %area) #9, !dbg !1573
  call void @llvm.dbg.declare(metadata ptr %area, metadata !1546, metadata !DIExpression()), !dbg !1577
  call void @llvm.lifetime.start.p0(i64 1, ptr %depth) #9, !dbg !1578
  call void @llvm.dbg.declare(metadata ptr %depth, metadata !1547, metadata !DIExpression()), !dbg !1579
  call void @llvm.lifetime.start.p0(i64 4, ptr %pf) #9, !dbg !1580
  call void @llvm.dbg.declare(metadata ptr %pf, metadata !1548, metadata !DIExpression()), !dbg !1581
  call void @llvm.lifetime.start.p0(i64 16, ptr %pi) #9, !dbg !1582
  call void @llvm.dbg.declare(metadata ptr %pi, metadata !1549, metadata !DIExpression()), !dbg !1583
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #9, !dbg !1584
  call void @llvm.dbg.declare(metadata ptr %m, metadata !1550, metadata !DIExpression()), !dbg !1585
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #9, !dbg !1584
  call void @llvm.dbg.declare(metadata ptr %w, metadata !1551, metadata !DIExpression()), !dbg !1586
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #9, !dbg !1584
  call void @llvm.dbg.declare(metadata ptr %h, metadata !1552, metadata !DIExpression()), !dbg !1587
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #9, !dbg !1584
  call void @llvm.dbg.declare(metadata ptr %a, metadata !1553, metadata !DIExpression()), !dbg !1588
  call void @llvm.lifetime.start.p0(i64 1, ptr %d) #9, !dbg !1589
  call void @llvm.dbg.declare(metadata ptr %d, metadata !1554, metadata !DIExpression()), !dbg !1590
  %call = call zeroext i1 @efi_is_native() #8, !dbg !1591
  br i1 %call, label %cond.true, label %cond.false, !dbg !1591

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %gop.addr, align 8, !dbg !1591
  %mode1 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 3, !dbg !1591
  %1 = load ptr, ptr %mode1, align 8, !dbg !1591
  br label %cond.end, !dbg !1591

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %gop.addr, align 8, !dbg !1591
  %mode2 = getelementptr inbounds %struct.anon.5, ptr %2, i32 0, i32 3, !dbg !1591
  %3 = load i32, ptr %mode2, align 4, !dbg !1591
  %conv = zext i32 %3 to i64, !dbg !1591
  %4 = inttoptr i64 %conv to ptr, !dbg !1591
  br label %cond.end, !dbg !1591

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %4, %cond.false ], !dbg !1591
  store ptr %cond, ptr %mode, align 8, !dbg !1592
  %call3 = call zeroext i1 @efi_is_native() #8, !dbg !1593
  br i1 %call3, label %cond.true5, label %cond.false7, !dbg !1593

cond.true5:                                       ; preds = %cond.end
  %5 = load ptr, ptr %mode, align 8, !dbg !1593
  %mode6 = getelementptr inbounds %struct.anon.6, ptr %5, i32 0, i32 1, !dbg !1593
  %6 = load i32, ptr %mode6, align 4, !dbg !1593
  br label %cond.end11, !dbg !1593

cond.false7:                                      ; preds = %cond.end
  %7 = load ptr, ptr %mode, align 8, !dbg !1593
  %mode8 = getelementptr inbounds %struct.anon.7, ptr %7, i32 0, i32 1, !dbg !1593
  %8 = load i32, ptr %mode8, align 4, !dbg !1593
  %conv9 = zext i32 %8 to i64, !dbg !1593
  %conv10 = trunc i64 %conv9 to i32, !dbg !1593
  br label %cond.end11, !dbg !1593

cond.end11:                                       ; preds = %cond.false7, %cond.true5
  %cond12 = phi i32 [ %6, %cond.true5 ], [ %conv10, %cond.false7 ], !dbg !1593
  store i32 %cond12, ptr %cur_mode, align 4, !dbg !1594
  %call13 = call zeroext i1 @efi_is_native() #8, !dbg !1595
  br i1 %call13, label %cond.true15, label %cond.false17, !dbg !1595

cond.true15:                                      ; preds = %cond.end11
  %9 = load ptr, ptr %mode, align 8, !dbg !1595
  %max_mode16 = getelementptr inbounds %struct.anon.6, ptr %9, i32 0, i32 0, !dbg !1595
  %10 = load i32, ptr %max_mode16, align 8, !dbg !1595
  br label %cond.end21, !dbg !1595

cond.false17:                                     ; preds = %cond.end11
  %11 = load ptr, ptr %mode, align 8, !dbg !1595
  %max_mode18 = getelementptr inbounds %struct.anon.7, ptr %11, i32 0, i32 0, !dbg !1595
  %12 = load i32, ptr %max_mode18, align 8, !dbg !1595
  %conv19 = zext i32 %12 to i64, !dbg !1595
  %conv20 = trunc i64 %conv19 to i32, !dbg !1595
  br label %cond.end21, !dbg !1595

cond.end21:                                       ; preds = %cond.false17, %cond.true15
  %cond22 = phi i32 [ %10, %cond.true15 ], [ %conv20, %cond.false17 ], !dbg !1595
  store i32 %cond22, ptr %max_mode, align 4, !dbg !1596
  %call23 = call zeroext i1 @efi_is_native() #8, !dbg !1597
  br i1 %call23, label %cond.true25, label %cond.false27, !dbg !1597

cond.true25:                                      ; preds = %cond.end21
  %13 = load ptr, ptr %mode, align 8, !dbg !1597
  %info26 = getelementptr inbounds %struct.anon.6, ptr %13, i32 0, i32 2, !dbg !1597
  %14 = load ptr, ptr %info26, align 8, !dbg !1597
  br label %cond.end30, !dbg !1597

cond.false27:                                     ; preds = %cond.end21
  %15 = load ptr, ptr %mode, align 8, !dbg !1597
  %info28 = getelementptr inbounds %struct.anon.7, ptr %15, i32 0, i32 2, !dbg !1597
  %16 = load i32, ptr %info28, align 8, !dbg !1597
  %conv29 = zext i32 %16 to i64, !dbg !1597
  %17 = inttoptr i64 %conv29 to ptr, !dbg !1597
  br label %cond.end30, !dbg !1597

cond.end30:                                       ; preds = %cond.false27, %cond.true25
  %cond31 = phi ptr [ %14, %cond.true25 ], [ %17, %cond.false27 ], !dbg !1597
  store ptr %cond31, ptr %info, align 8, !dbg !1598
  %18 = load ptr, ptr %info, align 8, !dbg !1599
  %pixel_format = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %18, i32 0, i32 3, !dbg !1600
  %19 = load i32, ptr %pixel_format, align 4, !dbg !1600
  store i32 %19, ptr %pf, align 4, !dbg !1601
  %20 = load ptr, ptr %info, align 8, !dbg !1602
  %pixel_information = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %20, i32 0, i32 4, !dbg !1603
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %pi, ptr align 4 %pixel_information, i64 16, i1 false), !dbg !1603
  %21 = load ptr, ptr %info, align 8, !dbg !1604
  %horizontal_resolution = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %21, i32 0, i32 1, !dbg !1605
  %22 = load i32, ptr %horizontal_resolution, align 4, !dbg !1605
  store i32 %22, ptr %w, align 4, !dbg !1606
  %23 = load ptr, ptr %info, align 8, !dbg !1607
  %vertical_resolution = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %23, i32 0, i32 2, !dbg !1608
  %24 = load i32, ptr %vertical_resolution, align 4, !dbg !1608
  store i32 %24, ptr %h, align 4, !dbg !1609
  %25 = load i32, ptr %cur_mode, align 4, !dbg !1610
  store i32 %25, ptr %best_mode, align 4, !dbg !1611
  %26 = load i32, ptr %w, align 4, !dbg !1612
  %27 = load i32, ptr %h, align 4, !dbg !1613
  %mul = mul i32 %26, %27, !dbg !1614
  store i32 %mul, ptr %area, align 4, !dbg !1615
  %28 = load i32, ptr %pf, align 4, !dbg !1616
  %29 = getelementptr inbounds { i64, i64 }, ptr %pi, i32 0, i32 0, !dbg !1617
  %30 = load i64, ptr %29, align 4, !dbg !1617
  %31 = getelementptr inbounds { i64, i64 }, ptr %pi, i32 0, i32 1, !dbg !1617
  %32 = load i64, ptr %31, align 4, !dbg !1617
  %call32 = call zeroext i8 @pixel_bpp(i32 noundef %28, i64 %30, i64 %32) #8, !dbg !1617
  store i8 %call32, ptr %depth, align 1, !dbg !1618
  store i32 0, ptr %m, align 4, !dbg !1619
  br label %for.cond, !dbg !1620

for.cond:                                         ; preds = %for.inc, %cond.end30
  %33 = load i32, ptr %m, align 4, !dbg !1621
  %34 = load i32, ptr %max_mode, align 4, !dbg !1622
  %cmp = icmp ult i32 %33, %34, !dbg !1623
  br i1 %cmp, label %for.body, label %for.end, !dbg !1624

for.body:                                         ; preds = %for.cond
  %35 = load i32, ptr %m, align 4, !dbg !1625
  %36 = load i32, ptr %cur_mode, align 4, !dbg !1627
  %cmp34 = icmp eq i32 %35, %36, !dbg !1628
  br i1 %cmp34, label %if.then, label %if.end, !dbg !1629

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1630

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #9, !dbg !1631
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !1555, metadata !DIExpression()), !dbg !1631
  %37 = load ptr, ptr %gop.addr, align 8, !dbg !1631
  store ptr %37, ptr %__inst, align 8, !dbg !1631
  %call36 = call zeroext i1 @efi_is_native() #8, !dbg !1631
  br i1 %call36, label %cond.true38, label %cond.false40, !dbg !1631

cond.true38:                                      ; preds = %if.end
  %38 = load ptr, ptr %__inst, align 8, !dbg !1631
  %query_mode = getelementptr inbounds %struct.anon.4, ptr %38, i32 0, i32 0, !dbg !1631
  %39 = load ptr, ptr %query_mode, align 8, !dbg !1631
  %40 = load ptr, ptr %__inst, align 8, !dbg !1631
  %41 = load i32, ptr %m, align 4, !dbg !1631
  %call39 = call win64cc i64 %39(ptr noundef %40, i32 noundef %41, ptr noundef %info_size, ptr noundef %info) #8, !dbg !1631
  br label %cond.end47, !dbg !1631

cond.false40:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !1632
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1560, metadata !DIExpression()), !dbg !1632
  br label %do.body, !dbg !1633

do.body:                                          ; preds = %cond.false40
  br label %do.cond, !dbg !1635

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1635

do.end:                                           ; preds = %do.cond
  %42 = load ptr, ptr %__inst, align 8, !dbg !1632
  %query_mode42 = getelementptr inbounds %struct.anon.5, ptr %42, i32 0, i32 0, !dbg !1632
  %43 = load i32, ptr %query_mode42, align 8, !dbg !1632
  %44 = load ptr, ptr %__inst, align 8, !dbg !1632
  %45 = load i32, ptr %m, align 4, !dbg !1632
  %call43 = call ptr @efi64_zero_upper(ptr noundef %info_size) #8, !dbg !1632
  %call44 = call ptr @efi64_zero_upper(ptr noundef %info) #8, !dbg !1632
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1632
  %call45 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %43, ptr noundef %44, i32 noundef %45, ptr noundef %call43, ptr noundef %call44, ptr noundef %arraydecay) #8, !dbg !1632
  store i64 %call45, ptr %tmp41, align 8, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !1631
  %46 = load i64, ptr %tmp41, align 8, !dbg !1632
  %call46 = call i64 @__efi64_widen_efi_status(i64 noundef %46) #8, !dbg !1631
  br label %cond.end47, !dbg !1631

cond.end47:                                       ; preds = %do.end, %cond.true38
  %cond48 = phi i64 [ %call39, %cond.true38 ], [ %call46, %do.end ], !dbg !1631
  store i64 %cond48, ptr %tmp, align 8, !dbg !1631
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #9, !dbg !1637
  %47 = load i64, ptr %tmp, align 8, !dbg !1631
  store i64 %47, ptr %status, align 8, !dbg !1638
  %48 = load i64, ptr %status, align 8, !dbg !1639
  %cmp49 = icmp ne i64 %48, 0, !dbg !1641
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !1642

if.then51:                                        ; preds = %cond.end47
  br label %for.inc, !dbg !1643

if.end52:                                         ; preds = %cond.end47
  %49 = load ptr, ptr %info, align 8, !dbg !1644
  %pixel_format53 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %49, i32 0, i32 3, !dbg !1645
  %50 = load i32, ptr %pixel_format53, align 4, !dbg !1645
  store i32 %50, ptr %pf, align 4, !dbg !1646
  %51 = load ptr, ptr %info, align 8, !dbg !1647
  %pixel_information54 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %51, i32 0, i32 4, !dbg !1648
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %pi, ptr align 4 %pixel_information54, i64 16, i1 false), !dbg !1648
  %52 = load ptr, ptr %info, align 8, !dbg !1649
  %horizontal_resolution55 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %52, i32 0, i32 1, !dbg !1650
  %53 = load i32, ptr %horizontal_resolution55, align 4, !dbg !1650
  store i32 %53, ptr %w, align 4, !dbg !1651
  %54 = load ptr, ptr %info, align 8, !dbg !1652
  %vertical_resolution56 = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %54, i32 0, i32 2, !dbg !1653
  %55 = load i32, ptr %vertical_resolution56, align 4, !dbg !1653
  store i32 %55, ptr %h, align 4, !dbg !1654
  %call57 = call zeroext i1 @efi_is_native() #8, !dbg !1655
  br i1 %call57, label %cond.true59, label %cond.false69, !dbg !1655

cond.true59:                                      ; preds = %if.end52
  %call60 = call zeroext i1 @efi_is_native() #8, !dbg !1655
  br i1 %call60, label %cond.true62, label %cond.false63, !dbg !1655

cond.true62:                                      ; preds = %cond.true59
  %56 = load ptr, ptr @efi_system_table, align 8, !dbg !1655
  %boottime = getelementptr inbounds %struct.anon.1, ptr %56, i32 0, i32 10, !dbg !1655
  %57 = load ptr, ptr %boottime, align 8, !dbg !1655
  br label %cond.end66, !dbg !1655

cond.false63:                                     ; preds = %cond.true59
  %58 = load ptr, ptr @efi_system_table, align 8, !dbg !1655
  %boottime64 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %58, i32 0, i32 10, !dbg !1655
  %59 = load i32, ptr %boottime64, align 4, !dbg !1655
  %conv65 = zext i32 %59 to i64, !dbg !1655
  %60 = inttoptr i64 %conv65 to ptr, !dbg !1655
  br label %cond.end66, !dbg !1655

cond.end66:                                       ; preds = %cond.false63, %cond.true62
  %cond67 = phi ptr [ %57, %cond.true62 ], [ %60, %cond.false63 ], !dbg !1655
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond67, i32 0, i32 7, !dbg !1655
  %61 = load ptr, ptr %free_pool, align 8, !dbg !1655
  %62 = load ptr, ptr %info, align 8, !dbg !1655
  %call68 = call win64cc i64 %61(ptr noundef %62) #8, !dbg !1655
  br label %cond.end88, !dbg !1655

cond.false69:                                     ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad70) #9, !dbg !1656
  call void @llvm.dbg.declare(metadata ptr %__pad70, metadata !1562, metadata !DIExpression()), !dbg !1656
  br label %do.body71, !dbg !1657

do.body71:                                        ; preds = %cond.false69
  br label %do.cond72, !dbg !1659

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1659

do.end73:                                         ; preds = %do.cond72
  %call75 = call zeroext i1 @efi_is_native() #8, !dbg !1656
  br i1 %call75, label %cond.true77, label %cond.false79, !dbg !1656

cond.true77:                                      ; preds = %do.end73
  %63 = load ptr, ptr @efi_system_table, align 8, !dbg !1656
  %boottime78 = getelementptr inbounds %struct.anon.1, ptr %63, i32 0, i32 10, !dbg !1656
  %64 = load ptr, ptr %boottime78, align 8, !dbg !1656
  br label %cond.end82, !dbg !1656

cond.false79:                                     ; preds = %do.end73
  %65 = load ptr, ptr @efi_system_table, align 8, !dbg !1656
  %boottime80 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %65, i32 0, i32 10, !dbg !1656
  %66 = load i32, ptr %boottime80, align 4, !dbg !1656
  %conv81 = zext i32 %66 to i64, !dbg !1656
  %67 = inttoptr i64 %conv81 to ptr, !dbg !1656
  br label %cond.end82, !dbg !1656

cond.end82:                                       ; preds = %cond.false79, %cond.true77
  %cond83 = phi ptr [ %64, %cond.true77 ], [ %67, %cond.false79 ], !dbg !1656
  %free_pool84 = getelementptr inbounds %struct.anon.0, ptr %cond83, i32 0, i32 7, !dbg !1656
  %68 = load i32, ptr %free_pool84, align 8, !dbg !1656
  %69 = load ptr, ptr %info, align 8, !dbg !1656
  %arraydecay85 = getelementptr inbounds [3 x i64], ptr %__pad70, i64 0, i64 0, !dbg !1656
  %call86 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %68, ptr noundef %69, ptr noundef %arraydecay85) #8, !dbg !1656
  store i64 %call86, ptr %tmp74, align 8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad70) #9, !dbg !1655
  %70 = load i64, ptr %tmp74, align 8, !dbg !1656
  %call87 = call i64 @__efi64_widen_efi_status(i64 noundef %70) #8, !dbg !1655
  br label %cond.end88, !dbg !1655

cond.end88:                                       ; preds = %cond.end82, %cond.end66
  %cond89 = phi i64 [ %call68, %cond.end66 ], [ %call87, %cond.end82 ], !dbg !1655
  %71 = load i32, ptr %pf, align 4, !dbg !1661
  %cmp90 = icmp eq i32 %71, 3, !dbg !1663
  br i1 %cmp90, label %if.then94, label %lor.lhs.false, !dbg !1664

lor.lhs.false:                                    ; preds = %cond.end88
  %72 = load i32, ptr %pf, align 4, !dbg !1665
  %cmp92 = icmp sge i32 %72, 4, !dbg !1666
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !1667

if.then94:                                        ; preds = %lor.lhs.false, %cond.end88
  br label %for.inc, !dbg !1668

if.end95:                                         ; preds = %lor.lhs.false
  %73 = load i32, ptr %w, align 4, !dbg !1669
  %74 = load i32, ptr %h, align 4, !dbg !1670
  %mul96 = mul i32 %73, %74, !dbg !1671
  store i32 %mul96, ptr %a, align 4, !dbg !1672
  %75 = load i32, ptr %a, align 4, !dbg !1673
  %76 = load i32, ptr %area, align 4, !dbg !1675
  %cmp97 = icmp ult i32 %75, %76, !dbg !1676
  br i1 %cmp97, label %if.then99, label %if.end100, !dbg !1677

if.then99:                                        ; preds = %if.end95
  br label %for.inc, !dbg !1678

if.end100:                                        ; preds = %if.end95
  %77 = load i32, ptr %pf, align 4, !dbg !1679
  %78 = getelementptr inbounds { i64, i64 }, ptr %pi, i32 0, i32 0, !dbg !1680
  %79 = load i64, ptr %78, align 4, !dbg !1680
  %80 = getelementptr inbounds { i64, i64 }, ptr %pi, i32 0, i32 1, !dbg !1680
  %81 = load i64, ptr %80, align 4, !dbg !1680
  %call101 = call zeroext i8 @pixel_bpp(i32 noundef %77, i64 %79, i64 %81) #8, !dbg !1680
  store i8 %call101, ptr %d, align 1, !dbg !1681
  %82 = load i32, ptr %a, align 4, !dbg !1682
  %83 = load i32, ptr %area, align 4, !dbg !1684
  %cmp102 = icmp ugt i32 %82, %83, !dbg !1685
  br i1 %cmp102, label %if.then109, label %lor.lhs.false104, !dbg !1686

lor.lhs.false104:                                 ; preds = %if.end100
  %84 = load i8, ptr %d, align 1, !dbg !1687
  %conv105 = zext i8 %84 to i32, !dbg !1687
  %85 = load i8, ptr %depth, align 1, !dbg !1688
  %conv106 = zext i8 %85 to i32, !dbg !1688
  %cmp107 = icmp sgt i32 %conv105, %conv106, !dbg !1689
  br i1 %cmp107, label %if.then109, label %if.end110, !dbg !1690

if.then109:                                       ; preds = %lor.lhs.false104, %if.end100
  %86 = load i32, ptr %m, align 4, !dbg !1691
  store i32 %86, ptr %best_mode, align 4, !dbg !1693
  %87 = load i32, ptr %a, align 4, !dbg !1694
  store i32 %87, ptr %area, align 4, !dbg !1695
  %88 = load i8, ptr %d, align 1, !dbg !1696
  store i8 %88, ptr %depth, align 1, !dbg !1697
  br label %if.end110, !dbg !1698

if.end110:                                        ; preds = %if.then109, %lor.lhs.false104
  br label %for.inc, !dbg !1699

for.inc:                                          ; preds = %if.end110, %if.then99, %if.then94, %if.then51, %if.then
  %89 = load i32, ptr %m, align 4, !dbg !1700
  %inc = add i32 %89, 1, !dbg !1700
  store i32 %inc, ptr %m, align 4, !dbg !1700
  br label %for.cond, !dbg !1701, !llvm.loop !1702

for.end:                                          ; preds = %for.cond
  %90 = load i32, ptr %best_mode, align 4, !dbg !1704
  call void @llvm.lifetime.end.p0(i64 1, ptr %d) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 16, ptr %pi) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr %pf) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 1, ptr %depth) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr %area) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr %best_mode) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_mode) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_mode) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 8, ptr %info_size) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 8, ptr %mode) #9, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !1705
  ret i32 %90, !dbg !1706
}

; Function Attrs: noredzone nounwind
define internal i32 @choose_mode_list(ptr noundef %gop) #0 !dbg !1707 {
entry:
  %gop.addr = alloca ptr, align 8
  %status = alloca i64, align 8
  %mode = alloca ptr, align 8
  %info = alloca ptr, align 8
  %info_size = alloca i64, align 8
  %max_mode = alloca i32, align 4
  %cur_mode = alloca i32, align 4
  %pf = alloca i32, align 4
  %pi = alloca %struct.efi_pixel_bitmask_t, align 4
  %m = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %d = alloca i8, align 1
  %dstr = alloca ptr, align 8
  %valid = alloca i8, align 1
  %key = alloca %struct.efi_input_key_t, align 2
  %__inst = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp30 = alloca i64, align 8
  %__pad53 = alloca [3 x i64], align 16
  %tmp57 = alloca i64, align 8
  %__pad109 = alloca [3 x i64], align 16
  %tmp113 = alloca i64, align 8
  store ptr %gop, ptr %gop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gop.addr, metadata !1709, metadata !DIExpression()), !dbg !1743
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #9, !dbg !1744
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1710, metadata !DIExpression()), !dbg !1745
  call void @llvm.lifetime.start.p0(i64 8, ptr %mode) #9, !dbg !1746
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !1711, metadata !DIExpression()), !dbg !1747
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #9, !dbg !1748
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1712, metadata !DIExpression()), !dbg !1749
  call void @llvm.lifetime.start.p0(i64 8, ptr %info_size) #9, !dbg !1750
  call void @llvm.dbg.declare(metadata ptr %info_size, metadata !1713, metadata !DIExpression()), !dbg !1751
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_mode) #9, !dbg !1752
  call void @llvm.dbg.declare(metadata ptr %max_mode, metadata !1714, metadata !DIExpression()), !dbg !1753
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_mode) #9, !dbg !1752
  call void @llvm.dbg.declare(metadata ptr %cur_mode, metadata !1715, metadata !DIExpression()), !dbg !1754
  call void @llvm.lifetime.start.p0(i64 4, ptr %pf) #9, !dbg !1755
  call void @llvm.dbg.declare(metadata ptr %pf, metadata !1716, metadata !DIExpression()), !dbg !1756
  call void @llvm.lifetime.start.p0(i64 16, ptr %pi) #9, !dbg !1757
  call void @llvm.dbg.declare(metadata ptr %pi, metadata !1717, metadata !DIExpression()), !dbg !1758
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #9, !dbg !1759
  call void @llvm.dbg.declare(metadata ptr %m, metadata !1718, metadata !DIExpression()), !dbg !1760
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #9, !dbg !1759
  call void @llvm.dbg.declare(metadata ptr %w, metadata !1719, metadata !DIExpression()), !dbg !1761
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #9, !dbg !1759
  call void @llvm.dbg.declare(metadata ptr %h, metadata !1720, metadata !DIExpression()), !dbg !1762
  call void @llvm.lifetime.start.p0(i64 1, ptr %d) #9, !dbg !1763
  call void @llvm.dbg.declare(metadata ptr %d, metadata !1721, metadata !DIExpression()), !dbg !1764
  call void @llvm.lifetime.start.p0(i64 8, ptr %dstr) #9, !dbg !1765
  call void @llvm.dbg.declare(metadata ptr %dstr, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.lifetime.start.p0(i64 1, ptr %valid) #9, !dbg !1767
  call void @llvm.dbg.declare(metadata ptr %valid, metadata !1723, metadata !DIExpression()), !dbg !1768
  call void @llvm.lifetime.start.p0(i64 4, ptr %key) #9, !dbg !1769
  call void @llvm.dbg.declare(metadata ptr %key, metadata !1724, metadata !DIExpression()), !dbg !1770
  %call = call zeroext i1 @efi_is_native() #8, !dbg !1771
  br i1 %call, label %cond.true, label %cond.false, !dbg !1771

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr %gop.addr, align 8, !dbg !1771
  %mode1 = getelementptr inbounds %struct.anon.4, ptr %0, i32 0, i32 3, !dbg !1771
  %1 = load ptr, ptr %mode1, align 8, !dbg !1771
  br label %cond.end, !dbg !1771

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %gop.addr, align 8, !dbg !1771
  %mode2 = getelementptr inbounds %struct.anon.5, ptr %2, i32 0, i32 3, !dbg !1771
  %3 = load i32, ptr %mode2, align 4, !dbg !1771
  %conv = zext i32 %3 to i64, !dbg !1771
  %4 = inttoptr i64 %conv to ptr, !dbg !1771
  br label %cond.end, !dbg !1771

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %4, %cond.false ], !dbg !1771
  store ptr %cond, ptr %mode, align 8, !dbg !1772
  %call3 = call zeroext i1 @efi_is_native() #8, !dbg !1773
  br i1 %call3, label %cond.true5, label %cond.false7, !dbg !1773

cond.true5:                                       ; preds = %cond.end
  %5 = load ptr, ptr %mode, align 8, !dbg !1773
  %mode6 = getelementptr inbounds %struct.anon.6, ptr %5, i32 0, i32 1, !dbg !1773
  %6 = load i32, ptr %mode6, align 4, !dbg !1773
  br label %cond.end11, !dbg !1773

cond.false7:                                      ; preds = %cond.end
  %7 = load ptr, ptr %mode, align 8, !dbg !1773
  %mode8 = getelementptr inbounds %struct.anon.7, ptr %7, i32 0, i32 1, !dbg !1773
  %8 = load i32, ptr %mode8, align 4, !dbg !1773
  %conv9 = zext i32 %8 to i64, !dbg !1773
  %conv10 = trunc i64 %conv9 to i32, !dbg !1773
  br label %cond.end11, !dbg !1773

cond.end11:                                       ; preds = %cond.false7, %cond.true5
  %cond12 = phi i32 [ %6, %cond.true5 ], [ %conv10, %cond.false7 ], !dbg !1773
  store i32 %cond12, ptr %cur_mode, align 4, !dbg !1774
  %call13 = call zeroext i1 @efi_is_native() #8, !dbg !1775
  br i1 %call13, label %cond.true15, label %cond.false17, !dbg !1775

cond.true15:                                      ; preds = %cond.end11
  %9 = load ptr, ptr %mode, align 8, !dbg !1775
  %max_mode16 = getelementptr inbounds %struct.anon.6, ptr %9, i32 0, i32 0, !dbg !1775
  %10 = load i32, ptr %max_mode16, align 8, !dbg !1775
  br label %cond.end21, !dbg !1775

cond.false17:                                     ; preds = %cond.end11
  %11 = load ptr, ptr %mode, align 8, !dbg !1775
  %max_mode18 = getelementptr inbounds %struct.anon.7, ptr %11, i32 0, i32 0, !dbg !1775
  %12 = load i32, ptr %max_mode18, align 8, !dbg !1775
  %conv19 = zext i32 %12 to i64, !dbg !1775
  %conv20 = trunc i64 %conv19 to i32, !dbg !1775
  br label %cond.end21, !dbg !1775

cond.end21:                                       ; preds = %cond.false17, %cond.true15
  %cond22 = phi i32 [ %10, %cond.true15 ], [ %conv20, %cond.false17 ], !dbg !1775
  store i32 %cond22, ptr %max_mode, align 4, !dbg !1776
  %13 = load i32, ptr %max_mode, align 4, !dbg !1777
  %sub = sub i32 %13, 1, !dbg !1778
  %call23 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.10, i32 noundef %sub) #8, !dbg !1779
  call void @efi_puts(ptr noundef @.str.11) #8, !dbg !1780
  store i32 0, ptr %m, align 4, !dbg !1781
  br label %for.cond, !dbg !1782

for.cond:                                         ; preds = %for.inc, %cond.end21
  %14 = load i32, ptr %m, align 4, !dbg !1783
  %15 = load i32, ptr %max_mode, align 4, !dbg !1784
  %cmp = icmp ult i32 %14, %15, !dbg !1785
  br i1 %cmp, label %for.body, label %for.end, !dbg !1786

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #9, !dbg !1787
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !1730, metadata !DIExpression()), !dbg !1787
  %16 = load ptr, ptr %gop.addr, align 8, !dbg !1787
  store ptr %16, ptr %__inst, align 8, !dbg !1787
  %call25 = call zeroext i1 @efi_is_native() #8, !dbg !1787
  br i1 %call25, label %cond.true27, label %cond.false29, !dbg !1787

cond.true27:                                      ; preds = %for.body
  %17 = load ptr, ptr %__inst, align 8, !dbg !1787
  %query_mode = getelementptr inbounds %struct.anon.4, ptr %17, i32 0, i32 0, !dbg !1787
  %18 = load ptr, ptr %query_mode, align 8, !dbg !1787
  %19 = load ptr, ptr %__inst, align 8, !dbg !1787
  %20 = load i32, ptr %m, align 4, !dbg !1787
  %call28 = call win64cc i64 %18(ptr noundef %19, i32 noundef %20, ptr noundef %info_size, ptr noundef %info) #8, !dbg !1787
  br label %cond.end36, !dbg !1787

cond.false29:                                     ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #9, !dbg !1788
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !1735, metadata !DIExpression()), !dbg !1788
  br label %do.body, !dbg !1789

do.body:                                          ; preds = %cond.false29
  br label %do.cond, !dbg !1791

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1791

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %__inst, align 8, !dbg !1788
  %query_mode31 = getelementptr inbounds %struct.anon.5, ptr %21, i32 0, i32 0, !dbg !1788
  %22 = load i32, ptr %query_mode31, align 8, !dbg !1788
  %23 = load ptr, ptr %__inst, align 8, !dbg !1788
  %24 = load i32, ptr %m, align 4, !dbg !1788
  %call32 = call ptr @efi64_zero_upper(ptr noundef %info_size) #8, !dbg !1788
  %call33 = call ptr @efi64_zero_upper(ptr noundef %info) #8, !dbg !1788
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !1788
  %call34 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %22, ptr noundef %23, i32 noundef %24, ptr noundef %call32, ptr noundef %call33, ptr noundef %arraydecay) #8, !dbg !1788
  store i64 %call34, ptr %tmp30, align 8, !dbg !1788
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #9, !dbg !1787
  %25 = load i64, ptr %tmp30, align 8, !dbg !1788
  %call35 = call i64 @__efi64_widen_efi_status(i64 noundef %25) #8, !dbg !1787
  br label %cond.end36, !dbg !1787

cond.end36:                                       ; preds = %do.end, %cond.true27
  %cond37 = phi i64 [ %call28, %cond.true27 ], [ %call35, %do.end ], !dbg !1787
  store i64 %cond37, ptr %tmp, align 8, !dbg !1787
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #9, !dbg !1793
  %26 = load i64, ptr %tmp, align 8, !dbg !1787
  store i64 %26, ptr %status, align 8, !dbg !1794
  %27 = load i64, ptr %status, align 8, !dbg !1795
  %cmp38 = icmp ne i64 %27, 0, !dbg !1797
  br i1 %cmp38, label %if.then, label %if.end, !dbg !1798

if.then:                                          ; preds = %cond.end36
  br label %for.inc, !dbg !1799

if.end:                                           ; preds = %cond.end36
  %28 = load ptr, ptr %info, align 8, !dbg !1800
  %pixel_format = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %28, i32 0, i32 3, !dbg !1801
  %29 = load i32, ptr %pixel_format, align 4, !dbg !1801
  store i32 %29, ptr %pf, align 4, !dbg !1802
  %30 = load ptr, ptr %info, align 8, !dbg !1803
  %pixel_information = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %30, i32 0, i32 4, !dbg !1804
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %pi, ptr align 4 %pixel_information, i64 16, i1 false), !dbg !1804
  %31 = load ptr, ptr %info, align 8, !dbg !1805
  %horizontal_resolution = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %31, i32 0, i32 1, !dbg !1806
  %32 = load i32, ptr %horizontal_resolution, align 4, !dbg !1806
  store i32 %32, ptr %w, align 4, !dbg !1807
  %33 = load ptr, ptr %info, align 8, !dbg !1808
  %vertical_resolution = getelementptr inbounds %struct.efi_graphics_output_mode_info_t, ptr %33, i32 0, i32 2, !dbg !1809
  %34 = load i32, ptr %vertical_resolution, align 4, !dbg !1809
  store i32 %34, ptr %h, align 4, !dbg !1810
  %call40 = call zeroext i1 @efi_is_native() #8, !dbg !1811
  br i1 %call40, label %cond.true42, label %cond.false52, !dbg !1811

cond.true42:                                      ; preds = %if.end
  %call43 = call zeroext i1 @efi_is_native() #8, !dbg !1811
  br i1 %call43, label %cond.true45, label %cond.false46, !dbg !1811

cond.true45:                                      ; preds = %cond.true42
  %35 = load ptr, ptr @efi_system_table, align 8, !dbg !1811
  %boottime = getelementptr inbounds %struct.anon.1, ptr %35, i32 0, i32 10, !dbg !1811
  %36 = load ptr, ptr %boottime, align 8, !dbg !1811
  br label %cond.end49, !dbg !1811

cond.false46:                                     ; preds = %cond.true42
  %37 = load ptr, ptr @efi_system_table, align 8, !dbg !1811
  %boottime47 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %37, i32 0, i32 10, !dbg !1811
  %38 = load i32, ptr %boottime47, align 4, !dbg !1811
  %conv48 = zext i32 %38 to i64, !dbg !1811
  %39 = inttoptr i64 %conv48 to ptr, !dbg !1811
  br label %cond.end49, !dbg !1811

cond.end49:                                       ; preds = %cond.false46, %cond.true45
  %cond50 = phi ptr [ %36, %cond.true45 ], [ %39, %cond.false46 ], !dbg !1811
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond50, i32 0, i32 7, !dbg !1811
  %40 = load ptr, ptr %free_pool, align 8, !dbg !1811
  %41 = load ptr, ptr %info, align 8, !dbg !1811
  %call51 = call win64cc i64 %40(ptr noundef %41) #8, !dbg !1811
  br label %cond.end71, !dbg !1811

cond.false52:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad53) #9, !dbg !1812
  call void @llvm.dbg.declare(metadata ptr %__pad53, metadata !1737, metadata !DIExpression()), !dbg !1812
  br label %do.body54, !dbg !1813

do.body54:                                        ; preds = %cond.false52
  br label %do.cond55, !dbg !1815

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !1815

do.end56:                                         ; preds = %do.cond55
  %call58 = call zeroext i1 @efi_is_native() #8, !dbg !1812
  br i1 %call58, label %cond.true60, label %cond.false62, !dbg !1812

cond.true60:                                      ; preds = %do.end56
  %42 = load ptr, ptr @efi_system_table, align 8, !dbg !1812
  %boottime61 = getelementptr inbounds %struct.anon.1, ptr %42, i32 0, i32 10, !dbg !1812
  %43 = load ptr, ptr %boottime61, align 8, !dbg !1812
  br label %cond.end65, !dbg !1812

cond.false62:                                     ; preds = %do.end56
  %44 = load ptr, ptr @efi_system_table, align 8, !dbg !1812
  %boottime63 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %44, i32 0, i32 10, !dbg !1812
  %45 = load i32, ptr %boottime63, align 4, !dbg !1812
  %conv64 = zext i32 %45 to i64, !dbg !1812
  %46 = inttoptr i64 %conv64 to ptr, !dbg !1812
  br label %cond.end65, !dbg !1812

cond.end65:                                       ; preds = %cond.false62, %cond.true60
  %cond66 = phi ptr [ %43, %cond.true60 ], [ %46, %cond.false62 ], !dbg !1812
  %free_pool67 = getelementptr inbounds %struct.anon.0, ptr %cond66, i32 0, i32 7, !dbg !1812
  %47 = load i32, ptr %free_pool67, align 8, !dbg !1812
  %48 = load ptr, ptr %info, align 8, !dbg !1812
  %arraydecay68 = getelementptr inbounds [3 x i64], ptr %__pad53, i64 0, i64 0, !dbg !1812
  %call69 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %47, ptr noundef %48, ptr noundef %arraydecay68) #8, !dbg !1812
  store i64 %call69, ptr %tmp57, align 8, !dbg !1812
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad53) #9, !dbg !1811
  %49 = load i64, ptr %tmp57, align 8, !dbg !1812
  %call70 = call i64 @__efi64_widen_efi_status(i64 noundef %49) #8, !dbg !1811
  br label %cond.end71, !dbg !1811

cond.end71:                                       ; preds = %cond.end65, %cond.end49
  %cond72 = phi i64 [ %call51, %cond.end49 ], [ %call70, %cond.end65 ], !dbg !1811
  %50 = load i32, ptr %pf, align 4, !dbg !1817
  %cmp73 = icmp eq i32 %50, 3, !dbg !1818
  br i1 %cmp73, label %lor.end, label %lor.rhs, !dbg !1819

lor.rhs:                                          ; preds = %cond.end71
  %51 = load i32, ptr %pf, align 4, !dbg !1820
  %cmp75 = icmp sge i32 %51, 4, !dbg !1821
  br label %lor.end, !dbg !1819

lor.end:                                          ; preds = %lor.rhs, %cond.end71
  %52 = phi i1 [ true, %cond.end71 ], [ %cmp75, %lor.rhs ]
  %lnot = xor i1 %52, true, !dbg !1822
  %frombool = zext i1 %lnot to i8, !dbg !1823
  store i8 %frombool, ptr %valid, align 1, !dbg !1823
  store i8 0, ptr %d, align 1, !dbg !1824
  %53 = load i32, ptr %pf, align 4, !dbg !1825
  switch i32 %53, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb77
    i32 2, label %sw.bb78
    i32 3, label %sw.bb80
  ], !dbg !1826

sw.bb:                                            ; preds = %lor.end
  store ptr @.str.1, ptr %dstr, align 8, !dbg !1827
  br label %sw.epilog, !dbg !1829

sw.bb77:                                          ; preds = %lor.end
  store ptr @.str.2, ptr %dstr, align 8, !dbg !1830
  br label %sw.epilog, !dbg !1831

sw.bb78:                                          ; preds = %lor.end
  store ptr @.str.12, ptr %dstr, align 8, !dbg !1832
  %54 = load i32, ptr %pf, align 4, !dbg !1833
  %55 = getelementptr inbounds { i64, i64 }, ptr %pi, i32 0, i32 0, !dbg !1834
  %56 = load i64, ptr %55, align 4, !dbg !1834
  %57 = getelementptr inbounds { i64, i64 }, ptr %pi, i32 0, i32 1, !dbg !1834
  %58 = load i64, ptr %57, align 4, !dbg !1834
  %call79 = call zeroext i8 @pixel_bpp(i32 noundef %54, i64 %56, i64 %58) #8, !dbg !1834
  store i8 %call79, ptr %d, align 1, !dbg !1835
  br label %sw.epilog, !dbg !1836

sw.bb80:                                          ; preds = %lor.end
  store ptr @.str.13, ptr %dstr, align 8, !dbg !1837
  br label %sw.epilog, !dbg !1838

sw.default:                                       ; preds = %lor.end
  store ptr @.str.14, ptr %dstr, align 8, !dbg !1839
  br label %sw.epilog, !dbg !1840

sw.epilog:                                        ; preds = %sw.default, %sw.bb80, %sw.bb78, %sw.bb77, %sw.bb
  %59 = load i32, ptr %m, align 4, !dbg !1841
  %60 = load i32, ptr %m, align 4, !dbg !1842
  %61 = load i32, ptr %cur_mode, align 4, !dbg !1843
  %cmp81 = icmp eq i32 %60, %61, !dbg !1844
  %62 = zext i1 %cmp81 to i64, !dbg !1842
  %cond83 = select i1 %cmp81, i32 42, i32 32, !dbg !1842
  %63 = load i8, ptr %valid, align 1, !dbg !1845, !range !937, !noundef !938
  %tobool = trunc i8 %63 to i1, !dbg !1845
  %lnot84 = xor i1 %tobool, true, !dbg !1846
  %64 = zext i1 %lnot84 to i64, !dbg !1846
  %cond85 = select i1 %lnot84, i32 45, i32 32, !dbg !1846
  %65 = load i32, ptr %w, align 4, !dbg !1847
  %66 = load i32, ptr %h, align 4, !dbg !1848
  %67 = load ptr, ptr %dstr, align 8, !dbg !1849
  %68 = load i8, ptr %d, align 1, !dbg !1850
  %conv86 = zext i8 %68 to i32, !dbg !1850
  %call87 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.15, i32 noundef %59, i32 noundef %cond83, i32 noundef %cond85, i32 noundef %65, i32 noundef %66, ptr noundef %67, i32 noundef %conv86) #8, !dbg !1851
  br label %for.inc, !dbg !1852

for.inc:                                          ; preds = %sw.epilog, %if.then
  %69 = load i32, ptr %m, align 4, !dbg !1853
  %inc = add i32 %69, 1, !dbg !1853
  store i32 %inc, ptr %m, align 4, !dbg !1853
  br label %for.cond, !dbg !1854, !llvm.loop !1855

for.end:                                          ; preds = %for.cond
  call void @efi_puts(ptr noundef @.str.16) #8, !dbg !1857
  %call88 = call i64 @efi_wait_for_key(i64 noundef 10000000, ptr noundef %key) #8, !dbg !1858
  store i64 %call88, ptr %status, align 8, !dbg !1859
  %70 = load i64, ptr %status, align 8, !dbg !1860
  %cmp89 = icmp ne i64 %70, 0, !dbg !1861
  br i1 %cmp89, label %land.lhs.true, label %if.end129, !dbg !1862

land.lhs.true:                                    ; preds = %for.end
  %71 = load i64, ptr %status, align 8, !dbg !1863
  %cmp91 = icmp ne i64 %71, -9223372036854775790, !dbg !1864
  br i1 %cmp91, label %if.then93, label %if.end129, !dbg !1865

if.then93:                                        ; preds = %land.lhs.true
  %call94 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.17) #8, !dbg !1866
  %call95 = call zeroext i1 @efi_is_native() #8, !dbg !1867
  br i1 %call95, label %cond.true97, label %cond.false108, !dbg !1867

cond.true97:                                      ; preds = %if.then93
  %call98 = call zeroext i1 @efi_is_native() #8, !dbg !1867
  br i1 %call98, label %cond.true100, label %cond.false102, !dbg !1867

cond.true100:                                     ; preds = %cond.true97
  %72 = load ptr, ptr @efi_system_table, align 8, !dbg !1867
  %boottime101 = getelementptr inbounds %struct.anon.1, ptr %72, i32 0, i32 10, !dbg !1867
  %73 = load ptr, ptr %boottime101, align 8, !dbg !1867
  br label %cond.end105, !dbg !1867

cond.false102:                                    ; preds = %cond.true97
  %74 = load ptr, ptr @efi_system_table, align 8, !dbg !1867
  %boottime103 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %74, i32 0, i32 10, !dbg !1867
  %75 = load i32, ptr %boottime103, align 4, !dbg !1867
  %conv104 = zext i32 %75 to i64, !dbg !1867
  %76 = inttoptr i64 %conv104 to ptr, !dbg !1867
  br label %cond.end105, !dbg !1867

cond.end105:                                      ; preds = %cond.false102, %cond.true100
  %cond106 = phi ptr [ %73, %cond.true100 ], [ %76, %cond.false102 ], !dbg !1867
  %stall = getelementptr inbounds %struct.anon, ptr %cond106, i32 0, i32 29, !dbg !1867
  %77 = load ptr, ptr %stall, align 8, !dbg !1867
  %call107 = call win64cc i64 %77(i64 noundef 10000000) #8, !dbg !1867
  br label %cond.end127, !dbg !1867

cond.false108:                                    ; preds = %if.then93
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad109) #9, !dbg !1868
  call void @llvm.dbg.declare(metadata ptr %__pad109, metadata !1739, metadata !DIExpression()), !dbg !1868
  br label %do.body110, !dbg !1869

do.body110:                                       ; preds = %cond.false108
  br label %do.cond111, !dbg !1871

do.cond111:                                       ; preds = %do.body110
  br label %do.end112, !dbg !1871

do.end112:                                        ; preds = %do.cond111
  %call114 = call zeroext i1 @efi_is_native() #8, !dbg !1868
  br i1 %call114, label %cond.true116, label %cond.false118, !dbg !1868

cond.true116:                                     ; preds = %do.end112
  %78 = load ptr, ptr @efi_system_table, align 8, !dbg !1868
  %boottime117 = getelementptr inbounds %struct.anon.1, ptr %78, i32 0, i32 10, !dbg !1868
  %79 = load ptr, ptr %boottime117, align 8, !dbg !1868
  br label %cond.end121, !dbg !1868

cond.false118:                                    ; preds = %do.end112
  %80 = load ptr, ptr @efi_system_table, align 8, !dbg !1868
  %boottime119 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %80, i32 0, i32 10, !dbg !1868
  %81 = load i32, ptr %boottime119, align 4, !dbg !1868
  %conv120 = zext i32 %81 to i64, !dbg !1868
  %82 = inttoptr i64 %conv120 to ptr, !dbg !1868
  br label %cond.end121, !dbg !1868

cond.end121:                                      ; preds = %cond.false118, %cond.true116
  %cond122 = phi ptr [ %79, %cond.true116 ], [ %82, %cond.false118 ], !dbg !1868
  %stall123 = getelementptr inbounds %struct.anon.0, ptr %cond122, i32 0, i32 29, !dbg !1868
  %83 = load i32, ptr %stall123, align 8, !dbg !1868
  %arraydecay124 = getelementptr inbounds [3 x i64], ptr %__pad109, i64 0, i64 0, !dbg !1868
  %call125 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %83, i32 noundef 10000000, ptr noundef %arraydecay124) #8, !dbg !1868
  store i64 %call125, ptr %tmp113, align 8, !dbg !1868
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad109) #9, !dbg !1867
  %84 = load i64, ptr %tmp113, align 8, !dbg !1868
  %call126 = call i64 @__efi64_widen_efi_status(i64 noundef %84) #8, !dbg !1867
  br label %cond.end127, !dbg !1867

cond.end127:                                      ; preds = %cond.end121, %cond.end105
  %cond128 = phi i64 [ %call107, %cond.end105 ], [ %call126, %cond.end121 ], !dbg !1867
  br label %if.end129, !dbg !1873

if.end129:                                        ; preds = %cond.end127, %land.lhs.true, %for.end
  %85 = load i32, ptr %cur_mode, align 4, !dbg !1874
  call void @llvm.lifetime.end.p0(i64 4, ptr %key) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 1, ptr %valid) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 8, ptr %dstr) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 1, ptr %d) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 16, ptr %pi) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 4, ptr %pf) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_mode) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_mode) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 8, ptr %info_size) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 8, ptr %mode) #9, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #9, !dbg !1875
  ret i32 %85, !dbg !1876
}

; Function Attrs: noredzone
declare !dbg !1877 hidden i32 @efi_printk(ptr noundef, ...) #4

; Function Attrs: noredzone nounwind
define internal zeroext i8 @pixel_bpp(i32 noundef %pixel_format, i64 %pixel_info.coerce0, i64 %pixel_info.coerce1) #0 !dbg !1880 {
entry:
  %retval = alloca i8, align 1
  %pixel_info = alloca %struct.efi_pixel_bitmask_t, align 4
  %pixel_format.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %pixel_info, i32 0, i32 0
  store i64 %pixel_info.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds { i64, i64 }, ptr %pixel_info, i32 0, i32 1
  store i64 %pixel_info.coerce1, ptr %1, align 4
  store i32 %pixel_format, ptr %pixel_format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pixel_format.addr, metadata !1884, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.declare(metadata ptr %pixel_info, metadata !1885, metadata !DIExpression()), !dbg !1890
  %2 = load i32, ptr %pixel_format.addr, align 4, !dbg !1891
  %cmp = icmp eq i32 %2, 2, !dbg !1892
  br i1 %cmp, label %if.then, label %if.else, !dbg !1893

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #9, !dbg !1894
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1886, metadata !DIExpression()), !dbg !1895
  %red_mask = getelementptr inbounds %struct.efi_pixel_bitmask_t, ptr %pixel_info, i32 0, i32 0, !dbg !1896
  %3 = load i32, ptr %red_mask, align 4, !dbg !1896
  %green_mask = getelementptr inbounds %struct.efi_pixel_bitmask_t, ptr %pixel_info, i32 0, i32 1, !dbg !1897
  %4 = load i32, ptr %green_mask, align 4, !dbg !1897
  %or = or i32 %3, %4, !dbg !1898
  %blue_mask = getelementptr inbounds %struct.efi_pixel_bitmask_t, ptr %pixel_info, i32 0, i32 2, !dbg !1899
  %5 = load i32, ptr %blue_mask, align 4, !dbg !1899
  %or1 = or i32 %or, %5, !dbg !1900
  %reserved_mask = getelementptr inbounds %struct.efi_pixel_bitmask_t, ptr %pixel_info, i32 0, i32 3, !dbg !1901
  %6 = load i32, ptr %reserved_mask, align 4, !dbg !1901
  %or2 = or i32 %or1, %6, !dbg !1902
  store i32 %or2, ptr %mask, align 4, !dbg !1895
  %7 = load i32, ptr %mask, align 4, !dbg !1903
  %tobool = icmp ne i32 %7, 0, !dbg !1903
  br i1 %tobool, label %if.end, label %if.then3, !dbg !1905

if.then3:                                         ; preds = %if.then
  store i8 0, ptr %retval, align 1, !dbg !1906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1906

if.end:                                           ; preds = %if.then
  %8 = load i32, ptr %mask, align 4, !dbg !1907
  %conv = zext i32 %8 to i64, !dbg !1907
  %call = call i64 @__fls(i64 noundef %conv) #8, !dbg !1908
  %9 = load i32, ptr %mask, align 4, !dbg !1909
  %10 = call i1 @llvm.is.constant.i32(i32 %9), !dbg !1909
  br i1 %10, label %cond.true, label %cond.false, !dbg !1909

cond.true:                                        ; preds = %if.end
  %11 = load i32, ptr %mask, align 4, !dbg !1909
  %conv4 = zext i32 %11 to i64, !dbg !1909
  %12 = call i64 @llvm.cttz.i64(i64 %conv4, i1 true), !dbg !1909
  %cast = trunc i64 %12 to i32, !dbg !1909
  %conv5 = sext i32 %cast to i64, !dbg !1909
  br label %cond.end, !dbg !1909

cond.false:                                       ; preds = %if.end
  %13 = load i32, ptr %mask, align 4, !dbg !1909
  %conv6 = zext i32 %13 to i64, !dbg !1909
  %call7 = call i64 @variable__ffs(i64 noundef %conv6) #8, !dbg !1909
  br label %cond.end, !dbg !1909

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv5, %cond.true ], [ %call7, %cond.false ], !dbg !1909
  %sub = sub i64 %call, %cond, !dbg !1910
  %add = add i64 %sub, 1, !dbg !1911
  %conv8 = trunc i64 %add to i8, !dbg !1908
  store i8 %conv8, ptr %retval, align 1, !dbg !1912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1912

cleanup:                                          ; preds = %cond.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #9, !dbg !1913
  br label %return

if.else:                                          ; preds = %entry
  store i8 32, ptr %retval, align 1, !dbg !1914
  br label %return, !dbg !1914

return:                                           ; preds = %if.else, %cleanup
  %14 = load i8, ptr %retval, align 1, !dbg !1915
  ret i8 %14, !dbg !1915
}

; Function Attrs: alwaysinline noredzone nounwind
define internal i64 @__fls(i64 noundef %word) #6 !dbg !1916 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1921, metadata !DIExpression()), !dbg !1922
  %0 = load i64, ptr %word.addr, align 8, !dbg !1923
  %1 = call i64 asm "bsr $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #10, !dbg !1924, !srcloc !1925
  store i64 %1, ptr %word.addr, align 8, !dbg !1924
  %2 = load i64, ptr %word.addr, align 8, !dbg !1926
  ret i64 %2, !dbg !1927
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline noredzone nounwind
define internal i64 @variable__ffs(i64 noundef %word) #6 !dbg !1928 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1930, metadata !DIExpression()), !dbg !1931
  %0 = load i64, ptr %word.addr, align 8, !dbg !1932
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #10, !dbg !1933, !srcloc !1934
  store i64 %1, ptr %word.addr, align 8, !dbg !1933
  %2 = load i64, ptr %word.addr, align 8, !dbg !1935
  ret i64 %2, !dbg !1936
}

; Function Attrs: noredzone
declare !dbg !1937 hidden void @efi_puts(ptr noundef) #4

; Function Attrs: noredzone
declare !dbg !1940 hidden i64 @efi_wait_for_key(i64 noundef, ptr noundef) #4

; Function Attrs: noredzone nounwind
define internal void @find_bits(i32 noundef %mask, ptr noundef %pos, ptr noundef %size) #0 !dbg !1944 {
entry:
  %mask.addr = alloca i32, align 4
  %pos.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !1949, metadata !DIExpression()), !dbg !1952
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !1950, metadata !DIExpression()), !dbg !1953
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1951, metadata !DIExpression()), !dbg !1954
  %0 = load i32, ptr %mask.addr, align 4, !dbg !1955
  %tobool = icmp ne i32 %0, 0, !dbg !1955
  br i1 %tobool, label %if.end, label %if.then, !dbg !1957

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %size.addr, align 8, !dbg !1958
  store i8 0, ptr %1, align 1, !dbg !1960
  %2 = load ptr, ptr %pos.addr, align 8, !dbg !1961
  store i8 0, ptr %2, align 1, !dbg !1962
  br label %return, !dbg !1963

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %mask.addr, align 4, !dbg !1964
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !1964
  br i1 %4, label %cond.true, label %cond.false, !dbg !1964

cond.true:                                        ; preds = %if.end
  %5 = load i32, ptr %mask.addr, align 4, !dbg !1964
  %conv = zext i32 %5 to i64, !dbg !1964
  %6 = call i64 @llvm.cttz.i64(i64 %conv, i1 true), !dbg !1964
  %cast = trunc i64 %6 to i32, !dbg !1964
  %conv1 = sext i32 %cast to i64, !dbg !1964
  br label %cond.end, !dbg !1964

cond.false:                                       ; preds = %if.end
  %7 = load i32, ptr %mask.addr, align 4, !dbg !1964
  %conv2 = zext i32 %7 to i64, !dbg !1964
  %call = call i64 @variable__ffs(i64 noundef %conv2) #8, !dbg !1964
  br label %cond.end, !dbg !1964

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv1, %cond.true ], [ %call, %cond.false ], !dbg !1964
  %conv3 = trunc i64 %cond to i8, !dbg !1964
  %8 = load ptr, ptr %pos.addr, align 8, !dbg !1965
  store i8 %conv3, ptr %8, align 1, !dbg !1966
  %9 = load i32, ptr %mask.addr, align 4, !dbg !1967
  %conv4 = zext i32 %9 to i64, !dbg !1967
  %call5 = call i64 @__fls(i64 noundef %conv4) #8, !dbg !1968
  %10 = load ptr, ptr %pos.addr, align 8, !dbg !1969
  %11 = load i8, ptr %10, align 1, !dbg !1970
  %conv6 = zext i8 %11 to i64, !dbg !1970
  %sub = sub i64 %call5, %conv6, !dbg !1971
  %add = add i64 %sub, 1, !dbg !1972
  %conv7 = trunc i64 %add to i8, !dbg !1968
  %12 = load ptr, ptr %size.addr, align 8, !dbg !1973
  store i8 %conv7, ptr %12, align 1, !dbg !1974
  br label %return, !dbg !1975

return:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !1975
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nobuiltin noredzone "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nounwind memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!393, !394, !395, !396, !397}
!llvm.ident = !{!398}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/firmware/efi/libstub/gop.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "39e978a89dfa1b301f18e69a8c51d239")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "cmdline", scope: !9, file: !2, line: 36, type: !379, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.gop.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/gop\22 -D KBUILD_BASENAME=\22gop\22 -D KBUILD_MODNAME=\22gop\22 -D __KBUILD_MODNAME=kmod_gop -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/gop.ll drivers/firmware/efi/libstub/gop.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !30, globals: !311, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !18, !23}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 243, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "EfiTimerCancel", value: 0)
!16 = !DIEnumerator(name: "EfiTimerPeriodic", value: 1)
!17 = !DIEnumerator(name: "EfiTimerRelative", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 10, baseType: !13, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "false", value: 0)
!22 = !DIEnumerator(name: "true", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "efi_cmdline_option", file: !2, line: 18, baseType: !13, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "EFI_CMDLINE_NONE", value: 0)
!26 = !DIEnumerator(name: "EFI_CMDLINE_MODE_NUM", value: 1)
!27 = !DIEnumerator(name: "EFI_CMDLINE_RES", value: 2)
!28 = !DIEnumerator(name: "EFI_CMDLINE_AUTO", value: 3)
!29 = !DIEnumerator(name: "EFI_CMDLINE_LIST", value: 4)
!30 = !{!31, !63, !81, !56, !76, !272, !282, !66, !118, !50}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_boot_services_t", file: !33, line: 250, baseType: !34)
!33 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_boot_services", file: !12, line: 252, size: 3008, elements: !35)
!35 = !{!36, !224}
!36 = !DIDerivedType(tag: DW_TAG_member, scope: !34, file: !12, line: 253, baseType: !37, size: 3008)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !12, line: 253, size: 3008, elements: !38)
!38 = !{!39, !55, !57, !58, !67, !71, !77, !82, !86, !96, !101, !105, !106, !110, !111, !112, !113, !114, !131, !132, !133, !138, !154, !158, !165, !172, !176, !180, !184, !185, !189, !190, !191, !195, !196, !197, !198, !199, !200, !204, !208, !212, !213, !219, !223}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !37, file: !12, line: 254, baseType: !40, size: 192)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !33, line: 90, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 84, size: 192, elements: !42)
!42 = !{!43, !49, !52, !53, !54}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !41, file: !33, line: 85, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !45, line: 23, baseType: !46)
!45 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !47, line: 31, baseType: !48)
!47 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!48 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !41, file: !33, line: 86, baseType: !50, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !45, line: 21, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !47, line: 27, baseType: !13)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !41, file: !33, line: 87, baseType: !50, size: 32, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !41, file: !33, line: 88, baseType: !50, size: 32, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !41, file: !33, line: 89, baseType: !50, size: 32, offset: 160)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !37, file: !12, line: 255, baseType: !56, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !37, file: !12, line: 256, baseType: !56, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !37, file: !12, line: 257, baseType: !59, size: 64, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !61)
!61 = !{!62, !64, !64, !63, !65}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !33, line: 47, baseType: !63)
!63 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_physical_addr_t", file: !33, line: 50, baseType: !44)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !37, file: !12, line: 259, baseType: !68, size: 64, offset: 384)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !70)
!70 = !{!62, !66, !63}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !37, file: !12, line: 261, baseType: !72, size: 64, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !74)
!74 = !{!62, !75, !56, !75, !75, !76}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !37, file: !12, line: 264, baseType: !78, size: 64, offset: 512)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !80)
!80 = !{!62, !64, !63, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !37, file: !12, line: 266, baseType: !83, size: 64, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !85)
!85 = !{!62, !56}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !37, file: !12, line: 267, baseType: !87, size: 64, offset: 640)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !89)
!89 = !{!62, !50, !63, !90, !56, !95}
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_notify_t", file: !12, line: 212, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !93)
!93 = !{null, !94, !56}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_t", file: !12, line: 210, baseType: !56)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !37, file: !12, line: 270, baseType: !97, size: 64, offset: 704)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !99)
!99 = !{!62, !94, !100, !44}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !12, line: 247, baseType: !11)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !37, file: !12, line: 272, baseType: !102, size: 64, offset: 768)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !104)
!104 = !{!62, !63, !95, !75}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !37, file: !12, line: 275, baseType: !56, size: 64, offset: 832)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !37, file: !12, line: 276, baseType: !107, size: 64, offset: 896)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !109)
!109 = !{!62, !94}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !37, file: !12, line: 277, baseType: !56, size: 64, offset: 960)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !37, file: !12, line: 278, baseType: !56, size: 64, offset: 1024)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !37, file: !12, line: 279, baseType: !56, size: 64, offset: 1088)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !37, file: !12, line: 280, baseType: !56, size: 64, offset: 1152)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !37, file: !12, line: 281, baseType: !115, size: 64, offset: 1216)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !117)
!117 = !{!62, !118, !119, !81}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_handle_t", file: !33, line: 51, baseType: !56)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !33, line: 74, baseType: !121, align: 32)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !122, line: 17, baseType: !123)
!122 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 15, size: 128, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !123, file: !122, line: 16, baseType: !126, size: 128)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !129)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !47, line: 21, baseType: !128)
!128 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!129 = !{!130}
!130 = !DISubrange(count: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !37, file: !12, line: 283, baseType: !56, size: 64, offset: 1280)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !37, file: !12, line: 284, baseType: !56, size: 64, offset: 1344)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !37, file: !12, line: 285, baseType: !134, size: 64, offset: 1408)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !136)
!136 = !{!62, !64, !119, !56, !75, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !37, file: !12, line: 288, baseType: !139, size: 64, offset: 1472)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !141)
!141 = !{!62, !119, !142, !137}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_device_path_protocol_t", file: !12, line: 176, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_generic_dev_path", file: !33, line: 985, size: 32, elements: !146)
!146 = !{!147, !149, !150}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !33, line: 986, baseType: !148, size: 8)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !45, line: 17, baseType: !127)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "sub_type", scope: !145, file: !33, line: 987, baseType: !148, size: 8, offset: 8)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !145, file: !33, line: 988, baseType: !151, size: 16, offset: 16)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !45, line: 19, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !47, line: 24, baseType: !153)
!153 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !37, file: !12, line: 291, baseType: !155, size: 64, offset: 1536)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !157)
!157 = !{!62, !119, !56}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !37, file: !12, line: 293, baseType: !159, size: 64, offset: 1600)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !161)
!161 = !{!62, !162, !118, !143, !56, !63, !137}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !163, line: 35, baseType: !164)
!163 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!164 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !37, file: !12, line: 297, baseType: !166, size: 64, offset: 1664)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !168)
!168 = !{!62, !118, !75, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !33, line: 49, baseType: !151)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !37, file: !12, line: 299, baseType: !173, size: 64, offset: 1728)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !175)
!175 = !{!62, !118, !62, !63, !170}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !37, file: !12, line: 303, baseType: !177, size: 64, offset: 1792)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !179)
!179 = !{!62, !118}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !37, file: !12, line: 304, baseType: !181, size: 64, offset: 1856)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !183)
!183 = !{!62, !118, !63}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !37, file: !12, line: 306, baseType: !56, size: 64, offset: 1920)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !37, file: !12, line: 307, baseType: !186, size: 64, offset: 1984)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !188)
!188 = !{!62, !63}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !37, file: !12, line: 308, baseType: !56, size: 64, offset: 2048)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !37, file: !12, line: 309, baseType: !56, size: 64, offset: 2112)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !37, file: !12, line: 310, baseType: !192, size: 64, offset: 2176)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !194)
!194 = !{!62, !118, !118, !118}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !37, file: !12, line: 313, baseType: !56, size: 64, offset: 2240)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !37, file: !12, line: 314, baseType: !56, size: 64, offset: 2304)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !37, file: !12, line: 315, baseType: !56, size: 64, offset: 2368)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !37, file: !12, line: 316, baseType: !56, size: 64, offset: 2432)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !37, file: !12, line: 317, baseType: !56, size: 64, offset: 2496)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !37, file: !12, line: 318, baseType: !201, size: 64, offset: 2560)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !203)
!203 = !{!62, !119, !56, !81}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !37, file: !12, line: 320, baseType: !205, size: 64, offset: 2624)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !207)
!207 = !{!62, !137, null}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !37, file: !12, line: 321, baseType: !209, size: 64, offset: 2688)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !211)
!211 = !{!62, !118, null}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !37, file: !12, line: 322, baseType: !56, size: 64, offset: 2752)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !37, file: !12, line: 323, baseType: !214, size: 64, offset: 2816)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !216)
!216 = !{null, !56, !217, !63}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !37, file: !12, line: 324, baseType: !220, size: 64, offset: 2880)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !222)
!222 = !{null, !56, !63, !128}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !37, file: !12, line: 325, baseType: !56, size: 64, offset: 2944)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !34, file: !12, line: 373, baseType: !225, size: 1600)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !12, line: 327, size: 1600, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !225, file: !12, line: 328, baseType: !40, size: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !225, file: !12, line: 329, baseType: !50, size: 32, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !225, file: !12, line: 330, baseType: !50, size: 32, offset: 224)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !225, file: !12, line: 331, baseType: !50, size: 32, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !225, file: !12, line: 332, baseType: !50, size: 32, offset: 288)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !225, file: !12, line: 333, baseType: !50, size: 32, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !225, file: !12, line: 334, baseType: !50, size: 32, offset: 352)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !225, file: !12, line: 335, baseType: !50, size: 32, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !225, file: !12, line: 336, baseType: !50, size: 32, offset: 416)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !225, file: !12, line: 337, baseType: !50, size: 32, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !225, file: !12, line: 338, baseType: !50, size: 32, offset: 480)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !225, file: !12, line: 339, baseType: !50, size: 32, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !225, file: !12, line: 340, baseType: !50, size: 32, offset: 544)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !225, file: !12, line: 341, baseType: !50, size: 32, offset: 576)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !225, file: !12, line: 342, baseType: !50, size: 32, offset: 608)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !225, file: !12, line: 343, baseType: !50, size: 32, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !225, file: !12, line: 344, baseType: !50, size: 32, offset: 672)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !225, file: !12, line: 345, baseType: !50, size: 32, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !225, file: !12, line: 346, baseType: !50, size: 32, offset: 736)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !225, file: !12, line: 347, baseType: !50, size: 32, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !225, file: !12, line: 348, baseType: !50, size: 32, offset: 800)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !225, file: !12, line: 349, baseType: !50, size: 32, offset: 832)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !225, file: !12, line: 350, baseType: !50, size: 32, offset: 864)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !225, file: !12, line: 351, baseType: !50, size: 32, offset: 896)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !225, file: !12, line: 352, baseType: !50, size: 32, offset: 928)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !225, file: !12, line: 353, baseType: !50, size: 32, offset: 960)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !225, file: !12, line: 354, baseType: !50, size: 32, offset: 992)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !225, file: !12, line: 355, baseType: !50, size: 32, offset: 1024)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !225, file: !12, line: 356, baseType: !50, size: 32, offset: 1056)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !225, file: !12, line: 357, baseType: !50, size: 32, offset: 1088)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !225, file: !12, line: 358, baseType: !50, size: 32, offset: 1120)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !225, file: !12, line: 359, baseType: !50, size: 32, offset: 1152)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !225, file: !12, line: 360, baseType: !50, size: 32, offset: 1184)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !225, file: !12, line: 361, baseType: !50, size: 32, offset: 1216)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !225, file: !12, line: 362, baseType: !50, size: 32, offset: 1248)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !225, file: !12, line: 363, baseType: !50, size: 32, offset: 1280)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !225, file: !12, line: 364, baseType: !50, size: 32, offset: 1312)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !225, file: !12, line: 365, baseType: !50, size: 32, offset: 1344)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !225, file: !12, line: 366, baseType: !50, size: 32, offset: 1376)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !225, file: !12, line: 367, baseType: !50, size: 32, offset: 1408)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !225, file: !12, line: 368, baseType: !50, size: 32, offset: 1440)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !225, file: !12, line: 369, baseType: !50, size: 32, offset: 1472)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !225, file: !12, line: 370, baseType: !50, size: 32, offset: 1504)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !225, file: !12, line: 371, baseType: !50, size: 32, offset: 1536)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !225, file: !12, line: 372, baseType: !50, size: 32, offset: 1568)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_graphics_output_protocol_mode_t", file: !12, line: 539, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_graphics_output_protocol_mode", file: !12, line: 541, size: 320, elements: !275)
!275 = !{!276, !302}
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !12, line: 542, baseType: !277, size: 320)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !274, file: !12, line: 542, size: 320, elements: !278)
!278 = !{!279, !280, !281, !299, !300, !301}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "max_mode", scope: !277, file: !12, line: 543, baseType: !50, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !277, file: !12, line: 544, baseType: !50, size: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !277, file: !12, line: 545, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_graphics_output_mode_info_t", file: !12, line: 537, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 530, size: 288, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !298}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !284, file: !12, line: 531, baseType: !50, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_resolution", scope: !284, file: !12, line: 532, baseType: !50, size: 32, offset: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_resolution", scope: !284, file: !12, line: 533, baseType: !50, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !284, file: !12, line: 534, baseType: !64, size: 32, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_information", scope: !284, file: !12, line: 535, baseType: !291, size: 128, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_pixel_bitmask_t", file: !12, line: 528, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 523, size: 128, elements: !293)
!293 = !{!294, !295, !296, !297}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "red_mask", scope: !292, file: !12, line: 524, baseType: !50, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "green_mask", scope: !292, file: !12, line: 525, baseType: !50, size: 32, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "blue_mask", scope: !292, file: !12, line: 526, baseType: !50, size: 32, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_mask", scope: !292, file: !12, line: 527, baseType: !50, size: 32, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pixels_per_scan_line", scope: !284, file: !12, line: 536, baseType: !50, size: 32, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "size_of_info", scope: !277, file: !12, line: 546, baseType: !63, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "frame_buffer_base", scope: !277, file: !12, line: 547, baseType: !66, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "frame_buffer_size", scope: !277, file: !12, line: 548, baseType: !63, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !274, file: !12, line: 557, baseType: !303, size: 256)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !274, file: !12, line: 550, size: 256, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "max_mode", scope: !303, file: !12, line: 551, baseType: !50, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !303, file: !12, line: 552, baseType: !50, size: 32, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !303, file: !12, line: 553, baseType: !50, size: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "size_of_info", scope: !303, file: !12, line: 554, baseType: !50, size: 32, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "frame_buffer_base", scope: !303, file: !12, line: 555, baseType: !44, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "frame_buffer_size", scope: !303, file: !12, line: 556, baseType: !50, size: 32, offset: 192)
!311 = !{!0, !7, !312, !317, !319, !324, !326, !331, !336, !341, !346, !348, !353, !355, !360, !362, !364, !369, !374}
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 4)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !314, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 5)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !321, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !2, line: 414, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 39)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 36)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 40)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 30)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !328, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !2, line: 331, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 35)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 332, type: !338, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 357, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 1)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !2, line: 361, type: !314, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !2, line: 364, type: !314, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 368, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 42)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 375, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 49)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 378, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 55)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 26, size: 160, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "option", scope: !379, file: !2, line: 27, baseType: !23, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !2, line: 28, baseType: !383, size: 128, offset: 32)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !2, line: 28, size: 128, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !383, file: !2, line: 29, baseType: !50, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !383, file: !2, line: 34, baseType: !387, size: 128)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !2, line: 30, size: 128, elements: !388)
!388 = !{!389, !390, !391, !392}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !387, file: !2, line: 31, baseType: !50, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !387, file: !2, line: 31, baseType: !50, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !387, file: !2, line: 32, baseType: !64, size: 32, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !387, file: !2, line: 33, baseType: !148, size: 8, offset: 96)
!393 = !{i32 7, !"Dwarf Version", i32 5}
!394 = !{i32 2, !"Debug Info Version", i32 3}
!395 = !{i32 1, !"wchar_size", i32 2}
!396 = !{i32 8, !"PIC Level", i32 2}
!397 = !{i32 1, !"Code Model", i32 1}
!398 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!399 = distinct !DISubprogram(name: "efi_parse_option_graphics", scope: !2, file: !2, line: 117, type: !400, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !403)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!403 = !{!404}
!404 = !DILocalVariable(name: "option", arg: 1, scope: !399, file: !2, line: 117, type: !402)
!405 = !DILocation(line: 117, column: 38, scope: !399)
!406 = !DILocation(line: 119, column: 2, scope: !399)
!407 = !DILocation(line: 119, column: 10, scope: !399)
!408 = !DILocation(line: 119, column: 9, scope: !399)
!409 = !DILocation(line: 120, column: 21, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !2, line: 120, column: 7)
!411 = distinct !DILexicalBlock(scope: !399, file: !2, line: 119, column: 18)
!412 = !DILocation(line: 120, column: 7, scope: !410)
!413 = !DILocation(line: 120, column: 7, scope: !411)
!414 = !DILocation(line: 121, column: 4, scope: !410)
!415 = distinct !{!415, !406, !416, !417, !418}
!416 = !DILocation(line: 131, column: 2, scope: !399)
!417 = !{!"llvm.loop.mustprogress"}
!418 = !{!"llvm.loop.unroll.disable"}
!419 = !DILocation(line: 122, column: 17, scope: !420)
!420 = distinct !DILexicalBlock(scope: !411, file: !2, line: 122, column: 7)
!421 = !DILocation(line: 122, column: 7, scope: !420)
!422 = !DILocation(line: 122, column: 7, scope: !411)
!423 = !DILocation(line: 123, column: 4, scope: !420)
!424 = !DILocation(line: 124, column: 18, scope: !425)
!425 = distinct !DILexicalBlock(scope: !411, file: !2, line: 124, column: 7)
!426 = !DILocation(line: 124, column: 7, scope: !425)
!427 = !DILocation(line: 124, column: 7, scope: !411)
!428 = !DILocation(line: 125, column: 4, scope: !425)
!429 = !DILocation(line: 126, column: 18, scope: !430)
!430 = distinct !DILexicalBlock(scope: !411, file: !2, line: 126, column: 7)
!431 = !DILocation(line: 126, column: 7, scope: !430)
!432 = !DILocation(line: 126, column: 7, scope: !411)
!433 = !DILocation(line: 127, column: 4, scope: !430)
!434 = !DILocation(line: 129, column: 3, scope: !411)
!435 = !DILocation(line: 129, column: 11, scope: !411)
!436 = !DILocation(line: 129, column: 10, scope: !411)
!437 = !DILocation(line: 129, column: 18, scope: !411)
!438 = !DILocation(line: 129, column: 28, scope: !411)
!439 = !DILocation(line: 129, column: 21, scope: !411)
!440 = !DILocation(line: 129, column: 31, scope: !411)
!441 = !DILocation(line: 0, scope: !411)
!442 = distinct !{!442, !434, !443, !417, !418}
!443 = !DILocation(line: 130, column: 4, scope: !411)
!444 = !DILocation(line: 132, column: 1, scope: !399)
!445 = distinct !DISubprogram(name: "parse_modenum", scope: !2, file: !2, line: 38, type: !446, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !449)
!446 = !DISubroutineType(types: !447)
!447 = !{!162, !402, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!449 = !{!450, !451, !452}
!450 = !DILocalVariable(name: "option", arg: 1, scope: !445, file: !2, line: 38, type: !402)
!451 = !DILocalVariable(name: "next", arg: 2, scope: !445, file: !2, line: 38, type: !448)
!452 = !DILocalVariable(name: "m", scope: !445, file: !2, line: 40, type: !50)
!453 = !DILocation(line: 38, column: 33, scope: !445)
!454 = !DILocation(line: 38, column: 48, scope: !445)
!455 = !DILocation(line: 40, column: 2, scope: !445)
!456 = !DILocation(line: 40, column: 6, scope: !445)
!457 = !DILocation(line: 42, column: 17, scope: !458)
!458 = distinct !DILexicalBlock(scope: !445, file: !2, line: 42, column: 6)
!459 = !DILocation(line: 42, column: 7, scope: !458)
!460 = !DILocation(line: 42, column: 6, scope: !445)
!461 = !DILocation(line: 43, column: 3, scope: !458)
!462 = !DILocation(line: 44, column: 12, scope: !445)
!463 = !DILocation(line: 44, column: 9, scope: !445)
!464 = !DILocation(line: 45, column: 22, scope: !445)
!465 = !DILocation(line: 45, column: 6, scope: !445)
!466 = !DILocation(line: 45, column: 4, scope: !445)
!467 = !DILocation(line: 46, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !445, file: !2, line: 46, column: 6)
!469 = !DILocation(line: 46, column: 6, scope: !468)
!470 = !DILocation(line: 46, column: 14, scope: !468)
!471 = !DILocation(line: 46, column: 24, scope: !468)
!472 = !DILocation(line: 46, column: 17, scope: !468)
!473 = !DILocation(line: 46, column: 27, scope: !468)
!474 = !DILocation(line: 46, column: 6, scope: !445)
!475 = !DILocation(line: 47, column: 3, scope: !468)
!476 = !DILocation(line: 48, column: 17, scope: !445)
!477 = !DILocation(line: 49, column: 19, scope: !445)
!478 = !DILocation(line: 49, column: 17, scope: !445)
!479 = !DILocation(line: 51, column: 10, scope: !445)
!480 = !DILocation(line: 51, column: 3, scope: !445)
!481 = !DILocation(line: 51, column: 8, scope: !445)
!482 = !DILocation(line: 52, column: 2, scope: !445)
!483 = !DILocation(line: 53, column: 1, scope: !445)
!484 = distinct !DISubprogram(name: "parse_res", scope: !2, file: !2, line: 55, type: !446, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !485)
!485 = !{!486, !487, !488, !489, !490, !491}
!486 = !DILocalVariable(name: "option", arg: 1, scope: !484, file: !2, line: 55, type: !402)
!487 = !DILocalVariable(name: "next", arg: 2, scope: !484, file: !2, line: 55, type: !448)
!488 = !DILocalVariable(name: "w", scope: !484, file: !2, line: 57, type: !50)
!489 = !DILocalVariable(name: "h", scope: !484, file: !2, line: 57, type: !50)
!490 = !DILocalVariable(name: "d", scope: !484, file: !2, line: 57, type: !50)
!491 = !DILocalVariable(name: "pf", scope: !484, file: !2, line: 58, type: !64)
!492 = !DILocation(line: 55, column: 29, scope: !484)
!493 = !DILocation(line: 55, column: 44, scope: !484)
!494 = !DILocation(line: 57, column: 2, scope: !484)
!495 = !DILocation(line: 57, column: 6, scope: !484)
!496 = !DILocation(line: 57, column: 9, scope: !484)
!497 = !DILocation(line: 57, column: 12, scope: !484)
!498 = !DILocation(line: 58, column: 2, scope: !484)
!499 = !DILocation(line: 58, column: 6, scope: !484)
!500 = !DILocation(line: 60, column: 16, scope: !501)
!501 = distinct !DILexicalBlock(scope: !484, file: !2, line: 60, column: 6)
!502 = !DILocation(line: 60, column: 15, scope: !501)
!503 = !DILocation(line: 60, column: 7, scope: !501)
!504 = !DILocation(line: 60, column: 6, scope: !484)
!505 = !DILocation(line: 61, column: 3, scope: !501)
!506 = !DILocation(line: 62, column: 22, scope: !484)
!507 = !DILocation(line: 62, column: 6, scope: !484)
!508 = !DILocation(line: 62, column: 4, scope: !484)
!509 = !DILocation(line: 63, column: 13, scope: !510)
!510 = distinct !DILexicalBlock(scope: !484, file: !2, line: 63, column: 6)
!511 = !DILocation(line: 63, column: 6, scope: !510)
!512 = !DILocation(line: 63, column: 16, scope: !510)
!513 = !DILocation(line: 63, column: 23, scope: !510)
!514 = !DILocation(line: 63, column: 36, scope: !510)
!515 = !DILocation(line: 63, column: 35, scope: !510)
!516 = !DILocation(line: 63, column: 27, scope: !510)
!517 = !DILocation(line: 63, column: 6, scope: !484)
!518 = !DILocation(line: 64, column: 3, scope: !510)
!519 = !DILocation(line: 65, column: 22, scope: !484)
!520 = !DILocation(line: 65, column: 6, scope: !484)
!521 = !DILocation(line: 65, column: 4, scope: !484)
!522 = !DILocation(line: 66, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !484, file: !2, line: 66, column: 6)
!524 = !DILocation(line: 66, column: 6, scope: !523)
!525 = !DILocation(line: 66, column: 14, scope: !523)
!526 = !DILocation(line: 66, column: 6, scope: !484)
!527 = !DILocation(line: 67, column: 9, scope: !528)
!528 = distinct !DILexicalBlock(scope: !523, file: !2, line: 66, column: 22)
!529 = !DILocation(line: 68, column: 17, scope: !530)
!530 = distinct !DILexicalBlock(scope: !528, file: !2, line: 68, column: 7)
!531 = !DILocation(line: 68, column: 7, scope: !530)
!532 = !DILocation(line: 68, column: 7, scope: !528)
!533 = !DILocation(line: 69, column: 14, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !2, line: 68, column: 33)
!535 = !DILocation(line: 69, column: 11, scope: !534)
!536 = !DILocation(line: 70, column: 7, scope: !534)
!537 = !DILocation(line: 71, column: 3, scope: !534)
!538 = !DILocation(line: 71, column: 24, scope: !539)
!539 = distinct !DILexicalBlock(scope: !530, file: !2, line: 71, column: 14)
!540 = !DILocation(line: 71, column: 14, scope: !539)
!541 = !DILocation(line: 71, column: 14, scope: !530)
!542 = !DILocation(line: 72, column: 14, scope: !543)
!543 = distinct !DILexicalBlock(scope: !539, file: !2, line: 71, column: 40)
!544 = !DILocation(line: 72, column: 11, scope: !543)
!545 = !DILocation(line: 73, column: 7, scope: !543)
!546 = !DILocation(line: 74, column: 3, scope: !543)
!547 = !DILocation(line: 74, column: 23, scope: !548)
!548 = distinct !DILexicalBlock(scope: !539, file: !2, line: 74, column: 14)
!549 = !DILocation(line: 74, column: 22, scope: !548)
!550 = !DILocation(line: 74, column: 14, scope: !548)
!551 = !DILocation(line: 74, column: 14, scope: !539)
!552 = !DILocation(line: 75, column: 24, scope: !548)
!553 = !DILocation(line: 75, column: 8, scope: !548)
!554 = !DILocation(line: 75, column: 6, scope: !548)
!555 = !DILocation(line: 75, column: 4, scope: !548)
!556 = !DILocation(line: 77, column: 4, scope: !548)
!557 = !DILocation(line: 78, column: 2, scope: !528)
!558 = !DILocation(line: 79, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !484, file: !2, line: 79, column: 6)
!560 = !DILocation(line: 79, column: 6, scope: !559)
!561 = !DILocation(line: 79, column: 14, scope: !559)
!562 = !DILocation(line: 79, column: 24, scope: !559)
!563 = !DILocation(line: 79, column: 17, scope: !559)
!564 = !DILocation(line: 79, column: 27, scope: !559)
!565 = !DILocation(line: 79, column: 6, scope: !484)
!566 = !DILocation(line: 80, column: 3, scope: !559)
!567 = !DILocation(line: 81, column: 21, scope: !484)
!568 = !DILocation(line: 82, column: 23, scope: !484)
!569 = !DILocation(line: 82, column: 21, scope: !484)
!570 = !DILocation(line: 83, column: 23, scope: !484)
!571 = !DILocation(line: 83, column: 21, scope: !484)
!572 = !DILocation(line: 84, column: 23, scope: !484)
!573 = !DILocation(line: 84, column: 21, scope: !484)
!574 = !DILocation(line: 85, column: 23, scope: !484)
!575 = !DILocation(line: 85, column: 21, scope: !484)
!576 = !DILocation(line: 87, column: 10, scope: !484)
!577 = !DILocation(line: 87, column: 3, scope: !484)
!578 = !DILocation(line: 87, column: 8, scope: !484)
!579 = !DILocation(line: 88, column: 2, scope: !484)
!580 = !DILocation(line: 89, column: 1, scope: !484)
!581 = distinct !DISubprogram(name: "parse_auto", scope: !2, file: !2, line: 91, type: !446, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !582)
!582 = !{!583, !584}
!583 = !DILocalVariable(name: "option", arg: 1, scope: !581, file: !2, line: 91, type: !402)
!584 = !DILocalVariable(name: "next", arg: 2, scope: !581, file: !2, line: 91, type: !448)
!585 = !DILocation(line: 91, column: 30, scope: !581)
!586 = !DILocation(line: 91, column: 45, scope: !581)
!587 = !DILocation(line: 93, column: 17, scope: !588)
!588 = distinct !DILexicalBlock(scope: !581, file: !2, line: 93, column: 6)
!589 = !DILocation(line: 93, column: 7, scope: !588)
!590 = !DILocation(line: 93, column: 6, scope: !581)
!591 = !DILocation(line: 94, column: 3, scope: !588)
!592 = !DILocation(line: 95, column: 12, scope: !581)
!593 = !DILocation(line: 95, column: 9, scope: !581)
!594 = !DILocation(line: 96, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !581, file: !2, line: 96, column: 6)
!596 = !DILocation(line: 96, column: 6, scope: !595)
!597 = !DILocation(line: 96, column: 14, scope: !595)
!598 = !DILocation(line: 96, column: 24, scope: !595)
!599 = !DILocation(line: 96, column: 17, scope: !595)
!600 = !DILocation(line: 96, column: 27, scope: !595)
!601 = !DILocation(line: 96, column: 6, scope: !581)
!602 = !DILocation(line: 97, column: 3, scope: !595)
!603 = !DILocation(line: 98, column: 17, scope: !581)
!604 = !DILocation(line: 100, column: 10, scope: !581)
!605 = !DILocation(line: 100, column: 3, scope: !581)
!606 = !DILocation(line: 100, column: 8, scope: !581)
!607 = !DILocation(line: 101, column: 2, scope: !581)
!608 = !DILocation(line: 102, column: 1, scope: !581)
!609 = distinct !DISubprogram(name: "parse_list", scope: !2, file: !2, line: 104, type: !446, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !610)
!610 = !{!611, !612}
!611 = !DILocalVariable(name: "option", arg: 1, scope: !609, file: !2, line: 104, type: !402)
!612 = !DILocalVariable(name: "next", arg: 2, scope: !609, file: !2, line: 104, type: !448)
!613 = !DILocation(line: 104, column: 30, scope: !609)
!614 = !DILocation(line: 104, column: 45, scope: !609)
!615 = !DILocation(line: 106, column: 17, scope: !616)
!616 = distinct !DILexicalBlock(scope: !609, file: !2, line: 106, column: 6)
!617 = !DILocation(line: 106, column: 7, scope: !616)
!618 = !DILocation(line: 106, column: 6, scope: !609)
!619 = !DILocation(line: 107, column: 3, scope: !616)
!620 = !DILocation(line: 108, column: 12, scope: !609)
!621 = !DILocation(line: 108, column: 9, scope: !609)
!622 = !DILocation(line: 109, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !609, file: !2, line: 109, column: 6)
!624 = !DILocation(line: 109, column: 6, scope: !623)
!625 = !DILocation(line: 109, column: 14, scope: !623)
!626 = !DILocation(line: 109, column: 24, scope: !623)
!627 = !DILocation(line: 109, column: 17, scope: !623)
!628 = !DILocation(line: 109, column: 27, scope: !623)
!629 = !DILocation(line: 109, column: 6, scope: !609)
!630 = !DILocation(line: 110, column: 3, scope: !623)
!631 = !DILocation(line: 111, column: 17, scope: !609)
!632 = !DILocation(line: 113, column: 10, scope: !609)
!633 = !DILocation(line: 113, column: 3, scope: !609)
!634 = !DILocation(line: 113, column: 8, scope: !609)
!635 = !DILocation(line: 114, column: 2, scope: !609)
!636 = !DILocation(line: 115, column: 1, scope: !609)
!637 = distinct !DISubprogram(name: "efi_setup_gop", scope: !2, file: !2, line: 559, type: !638, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !683)
!638 = !DISubroutineType(types: !639)
!639 = !{!62, !640, !119, !63}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "screen_info", file: !642, line: 11, size: 512, elements: !643)
!642 = !DIFile(filename: "./include/uapi/linux/screen_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "395c08eb846a258de3277732fcbc2819")
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "orig_x", scope: !641, file: !642, line: 12, baseType: !127, size: 8)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "orig_y", scope: !641, file: !642, line: 13, baseType: !127, size: 8, offset: 8)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ext_mem_k", scope: !641, file: !642, line: 14, baseType: !152, size: 16, offset: 16)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_page", scope: !641, file: !642, line: 15, baseType: !152, size: 16, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_mode", scope: !641, file: !642, line: 16, baseType: !127, size: 8, offset: 48)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_cols", scope: !641, file: !642, line: 17, baseType: !127, size: 8, offset: 56)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !642, line: 18, baseType: !127, size: 8, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !641, file: !642, line: 19, baseType: !127, size: 8, offset: 72)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_ega_bx", scope: !641, file: !642, line: 20, baseType: !152, size: 16, offset: 80)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !641, file: !642, line: 21, baseType: !152, size: 16, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_lines", scope: !641, file: !642, line: 22, baseType: !127, size: 8, offset: 112)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_isVGA", scope: !641, file: !642, line: 23, baseType: !127, size: 8, offset: 120)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_points", scope: !641, file: !642, line: 24, baseType: !152, size: 16, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_width", scope: !641, file: !642, line: 27, baseType: !152, size: 16, offset: 144)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_height", scope: !641, file: !642, line: 28, baseType: !152, size: 16, offset: 160)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_depth", scope: !641, file: !642, line: 29, baseType: !152, size: 16, offset: 176)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_base", scope: !641, file: !642, line: 30, baseType: !51, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_size", scope: !641, file: !642, line: 31, baseType: !51, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "cl_magic", scope: !641, file: !642, line: 32, baseType: !152, size: 16, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "cl_offset", scope: !641, file: !642, line: 32, baseType: !152, size: 16, offset: 272)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_linelength", scope: !641, file: !642, line: 33, baseType: !152, size: 16, offset: 288)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "red_size", scope: !641, file: !642, line: 34, baseType: !127, size: 8, offset: 304)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "red_pos", scope: !641, file: !642, line: 35, baseType: !127, size: 8, offset: 312)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "green_size", scope: !641, file: !642, line: 36, baseType: !127, size: 8, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "green_pos", scope: !641, file: !642, line: 37, baseType: !127, size: 8, offset: 328)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "blue_size", scope: !641, file: !642, line: 38, baseType: !127, size: 8, offset: 336)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "blue_pos", scope: !641, file: !642, line: 39, baseType: !127, size: 8, offset: 344)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_size", scope: !641, file: !642, line: 40, baseType: !127, size: 8, offset: 352)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_pos", scope: !641, file: !642, line: 41, baseType: !127, size: 8, offset: 360)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_seg", scope: !641, file: !642, line: 42, baseType: !152, size: 16, offset: 368)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_off", scope: !641, file: !642, line: 43, baseType: !152, size: 16, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !641, file: !642, line: 44, baseType: !152, size: 16, offset: 400)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vesa_attributes", scope: !641, file: !642, line: 45, baseType: !152, size: 16, offset: 416)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !641, file: !642, line: 46, baseType: !51, size: 32, offset: 432)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ext_lfb_base", scope: !641, file: !642, line: 47, baseType: !51, size: 32, offset: 464)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved", scope: !641, file: !642, line: 48, baseType: !680, size: 16, offset: 496)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 16, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 2)
!683 = !{!684, !685, !686, !687, !688, !689, !694, !696, !697}
!684 = !DILocalVariable(name: "si", arg: 1, scope: !637, file: !2, line: 559, type: !640)
!685 = !DILocalVariable(name: "proto", arg: 2, scope: !637, file: !2, line: 559, type: !119)
!686 = !DILocalVariable(name: "size", arg: 3, scope: !637, file: !2, line: 560, type: !63)
!687 = !DILocalVariable(name: "status", scope: !637, file: !2, line: 562, type: !62)
!688 = !DILocalVariable(name: "gop_handle", scope: !637, file: !2, line: 563, type: !81)
!689 = !DILocalVariable(name: "__pad", scope: !690, file: !2, line: 565, type: !691)
!690 = distinct !DILexicalBlock(scope: !637, file: !2, line: 565, column: 11)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 192, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 3)
!694 = !DILocalVariable(name: "__pad", scope: !695, file: !2, line: 570, type: !691)
!695 = distinct !DILexicalBlock(scope: !637, file: !2, line: 570, column: 11)
!696 = !DILabel(scope: !637, name: "free_handle", file: !2, line: 577)
!697 = !DILocalVariable(name: "__pad", scope: !698, file: !2, line: 578, type: !691)
!698 = distinct !DILexicalBlock(scope: !637, file: !2, line: 578, column: 2)
!699 = !DILocation(line: 559, column: 48, scope: !637)
!700 = !DILocation(line: 559, column: 64, scope: !637)
!701 = !DILocation(line: 560, column: 21, scope: !637)
!702 = !DILocation(line: 562, column: 2, scope: !637)
!703 = !DILocation(line: 562, column: 15, scope: !637)
!704 = !DILocation(line: 563, column: 2, scope: !637)
!705 = !DILocation(line: 563, column: 9, scope: !637)
!706 = !DILocation(line: 565, column: 11, scope: !637)
!707 = !DILocation(line: 565, column: 11, scope: !690)
!708 = !DILocation(line: 565, column: 11, scope: !709)
!709 = distinct !DILexicalBlock(scope: !690, file: !2, line: 565, column: 11)
!710 = !DILocation(line: 565, column: 11, scope: !711)
!711 = distinct !DILexicalBlock(scope: !709, file: !2, line: 565, column: 11)
!712 = !DILocation(line: 565, column: 9, scope: !637)
!713 = !DILocation(line: 567, column: 6, scope: !714)
!714 = distinct !DILexicalBlock(scope: !637, file: !2, line: 567, column: 6)
!715 = !DILocation(line: 567, column: 13, scope: !714)
!716 = !DILocation(line: 567, column: 6, scope: !637)
!717 = !DILocation(line: 568, column: 10, scope: !714)
!718 = !DILocation(line: 568, column: 3, scope: !714)
!719 = !DILocation(line: 570, column: 11, scope: !637)
!720 = !DILocation(line: 570, column: 11, scope: !695)
!721 = !DILocation(line: 570, column: 11, scope: !722)
!722 = distinct !DILexicalBlock(scope: !695, file: !2, line: 570, column: 11)
!723 = !DILocation(line: 570, column: 11, scope: !724)
!724 = distinct !DILexicalBlock(scope: !722, file: !2, line: 570, column: 11)
!725 = !DILocation(line: 570, column: 9, scope: !637)
!726 = !DILocation(line: 572, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !637, file: !2, line: 572, column: 6)
!728 = !DILocation(line: 572, column: 13, scope: !727)
!729 = !DILocation(line: 572, column: 6, scope: !637)
!730 = !DILocation(line: 573, column: 3, scope: !727)
!731 = !DILocation(line: 575, column: 21, scope: !637)
!732 = !DILocation(line: 575, column: 25, scope: !637)
!733 = !DILocation(line: 575, column: 32, scope: !637)
!734 = !DILocation(line: 575, column: 38, scope: !637)
!735 = !DILocation(line: 575, column: 11, scope: !637)
!736 = !DILocation(line: 575, column: 9, scope: !637)
!737 = !DILocation(line: 575, column: 2, scope: !637)
!738 = !DILocation(line: 577, column: 1, scope: !637)
!739 = !DILocation(line: 578, column: 2, scope: !637)
!740 = !DILocation(line: 578, column: 2, scope: !698)
!741 = !DILocation(line: 578, column: 2, scope: !742)
!742 = distinct !DILexicalBlock(scope: !698, file: !2, line: 578, column: 2)
!743 = !DILocation(line: 578, column: 2, scope: !744)
!744 = distinct !DILexicalBlock(scope: !742, file: !2, line: 578, column: 2)
!745 = !DILocation(line: 579, column: 9, scope: !637)
!746 = !DILocation(line: 579, column: 2, scope: !637)
!747 = !DILocation(line: 580, column: 1, scope: !637)
!748 = distinct !DISubprogram(name: "efi_is_native", scope: !749, file: !749, line: 205, type: !750, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!749 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!750 = !DISubroutineType(types: !751)
!751 = !{!162}
!752 = !DILocation(line: 207, column: 9, scope: !748)
!753 = !DILocation(line: 207, column: 2, scope: !748)
!754 = distinct !DISubprogram(name: "__efi64_widen_efi_status", scope: !749, file: !749, line: 346, type: !755, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!62, !44}
!757 = !{!758}
!758 = !DILocalVariable(name: "status", arg: 1, scope: !754, file: !749, line: 346, type: !44)
!759 = !DILocation(line: 346, column: 57, scope: !754)
!760 = !DILocation(line: 349, column: 21, scope: !754)
!761 = !DILocation(line: 349, column: 15, scope: !754)
!762 = !DILocation(line: 349, column: 9, scope: !754)
!763 = !DILocation(line: 349, column: 2, scope: !754)
!764 = !DISubprogram(name: "__efi64_thunk", scope: !749, file: !749, line: 158, type: !765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!765 = !DISubroutineType(types: !766)
!766 = !{!44, !50, null}
!767 = distinct !DISubprogram(name: "efi64_zero_upper", scope: !749, file: !749, line: 239, type: !768, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !770)
!768 = !DISubroutineType(types: !769)
!769 = !{!56, !56}
!770 = !{!771}
!771 = !DILocalVariable(name: "p", arg: 1, scope: !767, file: !749, line: 239, type: !56)
!772 = !DILocation(line: 239, column: 44, scope: !767)
!773 = !DILocation(line: 241, column: 10, scope: !767)
!774 = !DILocation(line: 241, column: 2, scope: !767)
!775 = !DILocation(line: 241, column: 16, scope: !767)
!776 = !DILocation(line: 242, column: 9, scope: !767)
!777 = !DILocation(line: 242, column: 2, scope: !767)
!778 = distinct !DISubprogram(name: "setup_gop", scope: !2, file: !2, line: 514, type: !779, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{!62, !640, !119, !63, !81}
!781 = !{!782, !783, !784, !785, !786, !812, !813}
!782 = !DILocalVariable(name: "si", arg: 1, scope: !778, file: !2, line: 514, type: !640)
!783 = !DILocalVariable(name: "proto", arg: 2, scope: !778, file: !2, line: 514, type: !119)
!784 = !DILocalVariable(name: "size", arg: 3, scope: !778, file: !2, line: 515, type: !63)
!785 = !DILocalVariable(name: "handles", arg: 4, scope: !778, file: !2, line: 515, type: !81)
!786 = !DILocalVariable(name: "gop", scope: !778, file: !2, line: 517, type: !787)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_graphics_output_protocol_t", file: !12, line: 560, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_graphics_output_protocol", file: !12, line: 562, size: 256, elements: !790)
!790 = !{!791, !805}
!791 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !12, line: 563, baseType: !792, size: 256)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !789, file: !12, line: 563, size: 256, elements: !793)
!793 = !{!794, !799, !803, !804}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "query_mode", scope: !792, file: !12, line: 564, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !797)
!797 = !{!62, !787, !50, !75, !798}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !792, file: !12, line: 567, baseType: !800, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !802)
!802 = !{!62, !787, !50}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "blt", scope: !792, file: !12, line: 568, baseType: !56, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !792, file: !12, line: 569, baseType: !272, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !789, file: !12, line: 576, baseType: !806, size: 128)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !789, file: !12, line: 571, size: 128, elements: !807)
!807 = !{!808, !809, !810, !811}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "query_mode", scope: !806, file: !12, line: 572, baseType: !50, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !806, file: !12, line: 573, baseType: !50, size: 32, offset: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "blt", scope: !806, file: !12, line: 574, baseType: !50, size: 32, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !806, file: !12, line: 575, baseType: !50, size: 32, offset: 96)
!812 = !DILocalVariable(name: "mode", scope: !778, file: !2, line: 518, type: !272)
!813 = !DILocalVariable(name: "info", scope: !778, file: !2, line: 519, type: !282)
!814 = !DILocation(line: 514, column: 51, scope: !778)
!815 = !DILocation(line: 514, column: 67, scope: !778)
!816 = !DILocation(line: 515, column: 24, scope: !778)
!817 = !DILocation(line: 515, column: 37, scope: !778)
!818 = !DILocation(line: 517, column: 2, scope: !778)
!819 = !DILocation(line: 517, column: 34, scope: !778)
!820 = !DILocation(line: 518, column: 2, scope: !778)
!821 = !DILocation(line: 518, column: 39, scope: !778)
!822 = !DILocation(line: 519, column: 2, scope: !778)
!823 = !DILocation(line: 519, column: 35, scope: !778)
!824 = !DILocation(line: 521, column: 17, scope: !778)
!825 = !DILocation(line: 521, column: 24, scope: !778)
!826 = !DILocation(line: 521, column: 30, scope: !778)
!827 = !DILocation(line: 521, column: 8, scope: !778)
!828 = !DILocation(line: 521, column: 6, scope: !778)
!829 = !DILocation(line: 524, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !778, file: !2, line: 524, column: 6)
!831 = !DILocation(line: 524, column: 6, scope: !778)
!832 = !DILocation(line: 525, column: 3, scope: !830)
!833 = !DILocation(line: 528, column: 11, scope: !778)
!834 = !DILocation(line: 528, column: 2, scope: !778)
!835 = !DILocation(line: 531, column: 9, scope: !778)
!836 = !DILocation(line: 531, column: 7, scope: !778)
!837 = !DILocation(line: 532, column: 9, scope: !778)
!838 = !DILocation(line: 532, column: 7, scope: !778)
!839 = !DILocation(line: 534, column: 2, scope: !778)
!840 = !DILocation(line: 534, column: 6, scope: !778)
!841 = !DILocation(line: 534, column: 23, scope: !778)
!842 = !DILocation(line: 536, column: 19, scope: !778)
!843 = !DILocation(line: 536, column: 25, scope: !778)
!844 = !DILocation(line: 536, column: 2, scope: !778)
!845 = !DILocation(line: 536, column: 6, scope: !778)
!846 = !DILocation(line: 536, column: 17, scope: !778)
!847 = !DILocation(line: 537, column: 19, scope: !778)
!848 = !DILocation(line: 537, column: 25, scope: !778)
!849 = !DILocation(line: 537, column: 2, scope: !778)
!850 = !DILocation(line: 537, column: 6, scope: !778)
!851 = !DILocation(line: 537, column: 17, scope: !778)
!852 = !DILocation(line: 539, column: 20, scope: !778)
!853 = !DILocation(line: 540, column: 7, scope: !778)
!854 = !DILocation(line: 540, column: 11, scope: !778)
!855 = !DILocation(line: 540, column: 22, scope: !778)
!856 = !DILocation(line: 540, column: 26, scope: !778)
!857 = !DILocation(line: 539, column: 2, scope: !778)
!858 = !DILocation(line: 541, column: 6, scope: !859)
!859 = distinct !DILexicalBlock(scope: !778, file: !2, line: 541, column: 6)
!860 = !DILocation(line: 541, column: 10, scope: !859)
!861 = !DILocation(line: 541, column: 6, scope: !778)
!862 = !DILocation(line: 542, column: 3, scope: !859)
!863 = !DILocation(line: 542, column: 7, scope: !859)
!864 = !DILocation(line: 542, column: 20, scope: !859)
!865 = !DILocation(line: 544, column: 2, scope: !778)
!866 = !DILocation(line: 544, column: 6, scope: !778)
!867 = !DILocation(line: 544, column: 12, scope: !778)
!868 = !DILocation(line: 546, column: 19, scope: !778)
!869 = !DILocation(line: 546, column: 23, scope: !778)
!870 = !DILocation(line: 546, column: 29, scope: !778)
!871 = !DILocation(line: 547, column: 9, scope: !778)
!872 = !DILocation(line: 547, column: 15, scope: !778)
!873 = !DILocation(line: 547, column: 34, scope: !778)
!874 = !DILocation(line: 547, column: 40, scope: !778)
!875 = !DILocation(line: 546, column: 2, scope: !778)
!876 = !DILocation(line: 549, column: 17, scope: !778)
!877 = !DILocation(line: 549, column: 21, scope: !778)
!878 = !DILocation(line: 549, column: 38, scope: !778)
!879 = !DILocation(line: 549, column: 42, scope: !778)
!880 = !DILocation(line: 549, column: 36, scope: !778)
!881 = !DILocation(line: 549, column: 2, scope: !778)
!882 = !DILocation(line: 549, column: 6, scope: !778)
!883 = !DILocation(line: 549, column: 15, scope: !778)
!884 = !DILocation(line: 551, column: 2, scope: !778)
!885 = !DILocation(line: 551, column: 6, scope: !778)
!886 = !DILocation(line: 551, column: 19, scope: !778)
!887 = !DILocation(line: 553, column: 2, scope: !778)
!888 = !DILocation(line: 554, column: 1, scope: !778)
!889 = distinct !DISubprogram(name: "strstarts", scope: !890, file: !890, line: 255, type: !891, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !895)
!890 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!891 = !DISubroutineType(types: !892)
!892 = !{!162, !893, !893}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!895 = !{!896, !897}
!896 = !DILocalVariable(name: "str", arg: 1, scope: !889, file: !890, line: 255, type: !893)
!897 = !DILocalVariable(name: "prefix", arg: 2, scope: !889, file: !890, line: 255, type: !893)
!898 = !DILocation(line: 255, column: 42, scope: !889)
!899 = !DILocation(line: 255, column: 59, scope: !889)
!900 = !DILocation(line: 257, column: 17, scope: !889)
!901 = !DILocation(line: 257, column: 22, scope: !889)
!902 = !DILocation(line: 257, column: 37, scope: !889)
!903 = !DILocation(line: 257, column: 30, scope: !889)
!904 = !DILocation(line: 257, column: 9, scope: !889)
!905 = !DILocation(line: 257, column: 46, scope: !889)
!906 = !DILocation(line: 257, column: 2, scope: !889)
!907 = !DISubprogram(name: "strlen", scope: !890, file: !890, line: 128, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !DISubroutineType(types: !909)
!909 = !{!910, !893}
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !163, line: 61, baseType: !911)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !912, line: 72, baseType: !913)
!912 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !912, line: 16, baseType: !63)
!914 = !DISubprogram(name: "simple_strtoull", scope: !915, file: !915, line: 147, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!915 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!916 = !DISubroutineType(types: !917)
!917 = !{!48, !893, !448, !13}
!918 = !DISubprogram(name: "strncmp", scope: !890, file: !890, line: 91, type: !919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!919 = !DISubroutineType(types: !920)
!920 = !{!64, !893, !893, !911}
!921 = distinct !DISubprogram(name: "isdigit", scope: !922, file: !922, line: 43, type: !923, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !925)
!922 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!923 = !DISubroutineType(types: !924)
!924 = !{!64, !64}
!925 = !{!926}
!926 = !DILocalVariable(name: "c", arg: 1, scope: !921, file: !922, line: 43, type: !64)
!927 = !DILocation(line: 43, column: 31, scope: !921)
!928 = !DILocation(line: 45, column: 16, scope: !921)
!929 = !DILocation(line: 45, column: 13, scope: !921)
!930 = !DILocation(line: 45, column: 18, scope: !921)
!931 = !DILocation(line: 45, column: 21, scope: !921)
!932 = !DILocation(line: 45, column: 23, scope: !921)
!933 = !DILocation(line: 0, scope: !921)
!934 = !DILocation(line: 45, column: 2, scope: !921)
!935 = distinct !DISubprogram(name: "efi_is_64bit", scope: !749, file: !749, line: 198, type: !750, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!936 = !DILocation(line: 202, column: 9, scope: !935)
!937 = !{i8 0, i8 2}
!938 = !{}
!939 = !DILocation(line: 202, column: 2, scope: !935)
!940 = distinct !DISubprogram(name: "ror64", scope: !941, file: !941, line: 115, type: !942, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !944)
!941 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!942 = !DISubroutineType(types: !943)
!943 = !{!46, !46, !13}
!944 = !{!945, !946}
!945 = !DILocalVariable(name: "word", arg: 1, scope: !940, file: !941, line: 115, type: !46)
!946 = !DILocalVariable(name: "shift", arg: 2, scope: !940, file: !941, line: 115, type: !13)
!947 = !DILocation(line: 115, column: 33, scope: !940)
!948 = !DILocation(line: 115, column: 52, scope: !940)
!949 = !DILocation(line: 117, column: 10, scope: !940)
!950 = !DILocation(line: 117, column: 19, scope: !940)
!951 = !DILocation(line: 117, column: 25, scope: !940)
!952 = !DILocation(line: 117, column: 15, scope: !940)
!953 = !DILocation(line: 117, column: 35, scope: !940)
!954 = !DILocation(line: 117, column: 46, scope: !940)
!955 = !DILocation(line: 117, column: 45, scope: !940)
!956 = !DILocation(line: 117, column: 53, scope: !940)
!957 = !DILocation(line: 117, column: 40, scope: !940)
!958 = !DILocation(line: 117, column: 32, scope: !940)
!959 = !DILocation(line: 117, column: 2, scope: !940)
!960 = distinct !DISubprogram(name: "rol32", scope: !941, file: !941, line: 125, type: !961, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !963)
!961 = !DISubroutineType(types: !962)
!962 = !{!51, !51, !13}
!963 = !{!964, !965}
!964 = !DILocalVariable(name: "word", arg: 1, scope: !960, file: !941, line: 125, type: !51)
!965 = !DILocalVariable(name: "shift", arg: 2, scope: !960, file: !941, line: 125, type: !13)
!966 = !DILocation(line: 125, column: 33, scope: !960)
!967 = !DILocation(line: 125, column: 52, scope: !960)
!968 = !DILocation(line: 127, column: 10, scope: !960)
!969 = !DILocation(line: 127, column: 19, scope: !960)
!970 = !DILocation(line: 127, column: 25, scope: !960)
!971 = !DILocation(line: 127, column: 15, scope: !960)
!972 = !DILocation(line: 127, column: 35, scope: !960)
!973 = !DILocation(line: 127, column: 46, scope: !960)
!974 = !DILocation(line: 127, column: 45, scope: !960)
!975 = !DILocation(line: 127, column: 53, scope: !960)
!976 = !DILocation(line: 127, column: 40, scope: !960)
!977 = !DILocation(line: 127, column: 32, scope: !960)
!978 = !DILocation(line: 127, column: 2, scope: !960)
!979 = distinct !DISubprogram(name: "find_gop", scope: !2, file: !2, line: 465, type: !980, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!787, !119, !63, !81}
!982 = !{!983, !984, !985, !986, !987, !988, !989, !993, !994, !995, !996, !997, !998, !1000}
!983 = !DILocalVariable(name: "proto", arg: 1, scope: !979, file: !2, line: 465, type: !119)
!984 = !DILocalVariable(name: "size", arg: 2, scope: !979, file: !2, line: 465, type: !63)
!985 = !DILocalVariable(name: "handles", arg: 3, scope: !979, file: !2, line: 465, type: !81)
!986 = !DILocalVariable(name: "first_gop", scope: !979, file: !2, line: 467, type: !787)
!987 = !DILocalVariable(name: "h", scope: !979, file: !2, line: 468, type: !118)
!988 = !DILocalVariable(name: "i", scope: !979, file: !2, line: 469, type: !64)
!989 = !DILocalVariable(name: "status", scope: !990, file: !2, line: 474, type: !62)
!990 = distinct !DILexicalBlock(scope: !991, file: !2, line: 473, column: 43)
!991 = distinct !DILexicalBlock(scope: !992, file: !2, line: 473, column: 2)
!992 = distinct !DILexicalBlock(scope: !979, file: !2, line: 473, column: 2)
!993 = !DILocalVariable(name: "gop", scope: !990, file: !2, line: 476, type: !787)
!994 = !DILocalVariable(name: "mode", scope: !990, file: !2, line: 477, type: !272)
!995 = !DILocalVariable(name: "info", scope: !990, file: !2, line: 478, type: !282)
!996 = !DILocalVariable(name: "conout_proto", scope: !990, file: !2, line: 480, type: !120)
!997 = !DILocalVariable(name: "dummy", scope: !990, file: !2, line: 481, type: !56)
!998 = !DILocalVariable(name: "__pad", scope: !999, file: !2, line: 483, type: !691)
!999 = distinct !DILexicalBlock(scope: !990, file: !2, line: 483, column: 12)
!1000 = !DILocalVariable(name: "__pad", scope: !1001, file: !2, line: 503, type: !691)
!1001 = distinct !DILexicalBlock(scope: !990, file: !2, line: 503, column: 12)
!1002 = !DILocation(line: 465, column: 22, scope: !979)
!1003 = !DILocation(line: 465, column: 43, scope: !979)
!1004 = !DILocation(line: 465, column: 56, scope: !979)
!1005 = !DILocation(line: 467, column: 2, scope: !979)
!1006 = !DILocation(line: 467, column: 34, scope: !979)
!1007 = !DILocation(line: 468, column: 2, scope: !979)
!1008 = !DILocation(line: 468, column: 15, scope: !979)
!1009 = !DILocation(line: 469, column: 2, scope: !979)
!1010 = !DILocation(line: 469, column: 6, scope: !979)
!1011 = !DILocation(line: 471, column: 12, scope: !979)
!1012 = !DILocation(line: 473, column: 2, scope: !992)
!1013 = !DILocation(line: 473, column: 2, scope: !991)
!1014 = !DILocation(line: 0, scope: !991)
!1015 = !DILocation(line: 474, column: 3, scope: !990)
!1016 = !DILocation(line: 474, column: 16, scope: !990)
!1017 = !DILocation(line: 476, column: 3, scope: !990)
!1018 = !DILocation(line: 476, column: 35, scope: !990)
!1019 = !DILocation(line: 477, column: 3, scope: !990)
!1020 = !DILocation(line: 477, column: 40, scope: !990)
!1021 = !DILocation(line: 478, column: 3, scope: !990)
!1022 = !DILocation(line: 478, column: 36, scope: !990)
!1023 = !DILocation(line: 480, column: 3, scope: !990)
!1024 = !DILocation(line: 480, column: 14, scope: !990)
!1025 = !DILocation(line: 481, column: 3, scope: !990)
!1026 = !DILocation(line: 481, column: 9, scope: !990)
!1027 = !DILocation(line: 483, column: 12, scope: !990)
!1028 = !DILocation(line: 483, column: 12, scope: !999)
!1029 = !DILocation(line: 483, column: 12, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !999, file: !2, line: 483, column: 12)
!1031 = !DILocation(line: 483, column: 12, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 483, column: 12)
!1033 = !DILocation(line: 483, column: 10, scope: !990)
!1034 = !DILocation(line: 484, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !990, file: !2, line: 484, column: 7)
!1036 = !DILocation(line: 484, column: 14, scope: !1035)
!1037 = !DILocation(line: 484, column: 7, scope: !990)
!1038 = !DILocation(line: 485, column: 4, scope: !1035)
!1039 = !DILocation(line: 487, column: 10, scope: !990)
!1040 = !DILocation(line: 487, column: 8, scope: !990)
!1041 = !DILocation(line: 488, column: 10, scope: !990)
!1042 = !DILocation(line: 488, column: 8, scope: !990)
!1043 = !DILocation(line: 489, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !990, file: !2, line: 489, column: 7)
!1045 = !DILocation(line: 489, column: 13, scope: !1044)
!1046 = !DILocation(line: 489, column: 26, scope: !1044)
!1047 = !DILocation(line: 489, column: 44, scope: !1044)
!1048 = !DILocation(line: 490, column: 7, scope: !1044)
!1049 = !DILocation(line: 490, column: 13, scope: !1044)
!1050 = !DILocation(line: 490, column: 26, scope: !1044)
!1051 = !DILocation(line: 489, column: 7, scope: !990)
!1052 = !DILocation(line: 491, column: 4, scope: !1044)
!1053 = !DILocation(line: 503, column: 12, scope: !990)
!1054 = !DILocation(line: 503, column: 12, scope: !1001)
!1055 = !DILocation(line: 503, column: 12, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 503, column: 12)
!1057 = !DILocation(line: 503, column: 12, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 503, column: 12)
!1059 = !DILocation(line: 503, column: 10, scope: !990)
!1060 = !DILocation(line: 504, column: 7, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !990, file: !2, line: 504, column: 7)
!1062 = !DILocation(line: 504, column: 14, scope: !1061)
!1063 = !DILocation(line: 504, column: 7, scope: !990)
!1064 = !DILocation(line: 505, column: 11, scope: !1061)
!1065 = !DILocation(line: 505, column: 4, scope: !1061)
!1066 = !DILocation(line: 507, column: 8, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !990, file: !2, line: 507, column: 7)
!1068 = !DILocation(line: 507, column: 7, scope: !990)
!1069 = !DILocation(line: 508, column: 16, scope: !1067)
!1070 = !DILocation(line: 508, column: 14, scope: !1067)
!1071 = !DILocation(line: 508, column: 4, scope: !1067)
!1072 = !DILocation(line: 509, column: 2, scope: !991)
!1073 = !DILocation(line: 509, column: 2, scope: !990)
!1074 = distinct !{!1074, !1012, !1075, !417, !418}
!1075 = !DILocation(line: 509, column: 2, scope: !992)
!1076 = !DILocation(line: 511, column: 9, scope: !979)
!1077 = !DILocation(line: 511, column: 2, scope: !979)
!1078 = !DILocation(line: 512, column: 1, scope: !979)
!1079 = distinct !DISubprogram(name: "set_mode", scope: !2, file: !2, line: 385, type: !1080, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1082)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !787}
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1090}
!1083 = !DILocalVariable(name: "gop", arg: 1, scope: !1079, file: !2, line: 385, type: !787)
!1084 = !DILocalVariable(name: "mode", scope: !1079, file: !2, line: 387, type: !272)
!1085 = !DILocalVariable(name: "cur_mode", scope: !1079, file: !2, line: 388, type: !50)
!1086 = !DILocalVariable(name: "new_mode", scope: !1079, file: !2, line: 388, type: !50)
!1087 = !DILocalVariable(name: "__inst", scope: !1088, file: !2, line: 413, type: !787)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 413, column: 6)
!1089 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 413, column: 6)
!1090 = !DILocalVariable(name: "__pad", scope: !1091, file: !2, line: 413, type: !691)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 413, column: 6)
!1092 = !DILocation(line: 385, column: 54, scope: !1079)
!1093 = !DILocation(line: 387, column: 2, scope: !1079)
!1094 = !DILocation(line: 387, column: 39, scope: !1079)
!1095 = !DILocation(line: 388, column: 2, scope: !1079)
!1096 = !DILocation(line: 388, column: 6, scope: !1079)
!1097 = !DILocation(line: 388, column: 16, scope: !1079)
!1098 = !DILocation(line: 390, column: 18, scope: !1079)
!1099 = !DILocation(line: 390, column: 2, scope: !1079)
!1100 = !DILocation(line: 392, column: 34, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 390, column: 26)
!1102 = !DILocation(line: 392, column: 14, scope: !1101)
!1103 = !DILocation(line: 392, column: 12, scope: !1101)
!1104 = !DILocation(line: 393, column: 3, scope: !1101)
!1105 = !DILocation(line: 395, column: 30, scope: !1101)
!1106 = !DILocation(line: 395, column: 14, scope: !1101)
!1107 = !DILocation(line: 395, column: 12, scope: !1101)
!1108 = !DILocation(line: 396, column: 3, scope: !1101)
!1109 = !DILocation(line: 398, column: 31, scope: !1101)
!1110 = !DILocation(line: 398, column: 14, scope: !1101)
!1111 = !DILocation(line: 398, column: 12, scope: !1101)
!1112 = !DILocation(line: 399, column: 3, scope: !1101)
!1113 = !DILocation(line: 401, column: 31, scope: !1101)
!1114 = !DILocation(line: 401, column: 14, scope: !1101)
!1115 = !DILocation(line: 401, column: 12, scope: !1101)
!1116 = !DILocation(line: 402, column: 3, scope: !1101)
!1117 = !DILocation(line: 404, column: 3, scope: !1101)
!1118 = !DILocation(line: 407, column: 9, scope: !1079)
!1119 = !DILocation(line: 407, column: 7, scope: !1079)
!1120 = !DILocation(line: 408, column: 13, scope: !1079)
!1121 = !DILocation(line: 408, column: 11, scope: !1079)
!1122 = !DILocation(line: 410, column: 6, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 410, column: 6)
!1124 = !DILocation(line: 410, column: 18, scope: !1123)
!1125 = !DILocation(line: 410, column: 15, scope: !1123)
!1126 = !DILocation(line: 410, column: 6, scope: !1079)
!1127 = !DILocation(line: 411, column: 3, scope: !1123)
!1128 = !DILocation(line: 413, column: 6, scope: !1088)
!1129 = !DILocation(line: 413, column: 6, scope: !1091)
!1130 = !DILocation(line: 413, column: 6, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 413, column: 6)
!1132 = !DILocation(line: 413, column: 6, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 413, column: 6)
!1134 = !DILocation(line: 413, column: 6, scope: !1089)
!1135 = !DILocation(line: 413, column: 46, scope: !1089)
!1136 = !DILocation(line: 413, column: 6, scope: !1079)
!1137 = !DILocation(line: 414, column: 3, scope: !1089)
!1138 = !DILocation(line: 415, column: 1, scope: !1079)
!1139 = distinct !DISubprogram(name: "efi_set_u64_split", scope: !12, file: !12, line: 132, type: !1140, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !44, !76, !76}
!1142 = !{!1143, !1144, !1145}
!1143 = !DILocalVariable(name: "data", arg: 1, scope: !1139, file: !12, line: 132, type: !44)
!1144 = !DILocalVariable(name: "lo", arg: 2, scope: !1139, file: !12, line: 132, type: !76)
!1145 = !DILocalVariable(name: "hi", arg: 3, scope: !1139, file: !12, line: 132, type: !76)
!1146 = !DILocation(line: 132, column: 28, scope: !1139)
!1147 = !DILocation(line: 132, column: 39, scope: !1139)
!1148 = !DILocation(line: 132, column: 48, scope: !1139)
!1149 = !DILocation(line: 134, column: 8, scope: !1139)
!1150 = !DILocation(line: 134, column: 3, scope: !1139)
!1151 = !DILocation(line: 134, column: 6, scope: !1139)
!1152 = !DILocation(line: 135, column: 8, scope: !1139)
!1153 = !DILocation(line: 135, column: 3, scope: !1139)
!1154 = !DILocation(line: 135, column: 6, scope: !1139)
!1155 = !DILocation(line: 136, column: 1, scope: !1139)
!1156 = distinct !DISubprogram(name: "setup_pixel_info", scope: !2, file: !2, line: 430, type: !1157, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1159)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !640, !50, !291, !64}
!1159 = !{!1160, !1161, !1162, !1163}
!1160 = !DILocalVariable(name: "si", arg: 1, scope: !1156, file: !2, line: 430, type: !640)
!1161 = !DILocalVariable(name: "pixels_per_scan_line", arg: 2, scope: !1156, file: !2, line: 430, type: !50)
!1162 = !DILocalVariable(name: "pixel_info", arg: 3, scope: !1156, file: !2, line: 431, type: !291)
!1163 = !DILocalVariable(name: "pixel_format", arg: 4, scope: !1156, file: !2, line: 431, type: !64)
!1164 = !DILocation(line: 430, column: 38, scope: !1156)
!1165 = !DILocation(line: 430, column: 46, scope: !1156)
!1166 = !DILocation(line: 431, column: 24, scope: !1156)
!1167 = !DILocation(line: 431, column: 40, scope: !1156)
!1168 = !DILocation(line: 433, column: 6, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 433, column: 6)
!1170 = !DILocation(line: 433, column: 19, scope: !1169)
!1171 = !DILocation(line: 433, column: 6, scope: !1156)
!1172 = !DILocation(line: 434, column: 24, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 433, column: 38)
!1174 = !DILocation(line: 435, column: 7, scope: !1173)
!1175 = !DILocation(line: 435, column: 11, scope: !1173)
!1176 = !DILocation(line: 435, column: 21, scope: !1173)
!1177 = !DILocation(line: 435, column: 25, scope: !1173)
!1178 = !DILocation(line: 434, column: 3, scope: !1173)
!1179 = !DILocation(line: 436, column: 24, scope: !1173)
!1180 = !DILocation(line: 437, column: 7, scope: !1173)
!1181 = !DILocation(line: 437, column: 11, scope: !1173)
!1182 = !DILocation(line: 437, column: 23, scope: !1173)
!1183 = !DILocation(line: 437, column: 27, scope: !1173)
!1184 = !DILocation(line: 436, column: 3, scope: !1173)
!1185 = !DILocation(line: 438, column: 24, scope: !1173)
!1186 = !DILocation(line: 439, column: 7, scope: !1173)
!1187 = !DILocation(line: 439, column: 11, scope: !1173)
!1188 = !DILocation(line: 439, column: 22, scope: !1173)
!1189 = !DILocation(line: 439, column: 26, scope: !1173)
!1190 = !DILocation(line: 438, column: 3, scope: !1173)
!1191 = !DILocation(line: 440, column: 24, scope: !1173)
!1192 = !DILocation(line: 441, column: 7, scope: !1173)
!1193 = !DILocation(line: 441, column: 11, scope: !1173)
!1194 = !DILocation(line: 441, column: 22, scope: !1173)
!1195 = !DILocation(line: 441, column: 26, scope: !1173)
!1196 = !DILocation(line: 440, column: 3, scope: !1173)
!1197 = !DILocation(line: 442, column: 19, scope: !1173)
!1198 = !DILocation(line: 442, column: 23, scope: !1173)
!1199 = !DILocation(line: 442, column: 34, scope: !1173)
!1200 = !DILocation(line: 442, column: 38, scope: !1173)
!1201 = !DILocation(line: 442, column: 32, scope: !1173)
!1202 = !DILocation(line: 443, column: 4, scope: !1173)
!1203 = !DILocation(line: 443, column: 8, scope: !1173)
!1204 = !DILocation(line: 442, column: 49, scope: !1173)
!1205 = !DILocation(line: 443, column: 20, scope: !1173)
!1206 = !DILocation(line: 443, column: 24, scope: !1173)
!1207 = !DILocation(line: 443, column: 18, scope: !1173)
!1208 = !DILocation(line: 442, column: 3, scope: !1173)
!1209 = !DILocation(line: 442, column: 7, scope: !1173)
!1210 = !DILocation(line: 442, column: 17, scope: !1173)
!1211 = !DILocation(line: 444, column: 25, scope: !1173)
!1212 = !DILocation(line: 444, column: 48, scope: !1173)
!1213 = !DILocation(line: 444, column: 52, scope: !1173)
!1214 = !DILocation(line: 444, column: 46, scope: !1173)
!1215 = !DILocation(line: 444, column: 63, scope: !1173)
!1216 = !DILocation(line: 444, column: 24, scope: !1173)
!1217 = !DILocation(line: 444, column: 3, scope: !1173)
!1218 = !DILocation(line: 444, column: 7, scope: !1173)
!1219 = !DILocation(line: 444, column: 22, scope: !1173)
!1220 = !DILocation(line: 445, column: 2, scope: !1173)
!1221 = !DILocation(line: 446, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 446, column: 7)
!1223 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 445, column: 9)
!1224 = !DILocation(line: 446, column: 20, scope: !1222)
!1225 = !DILocation(line: 446, column: 7, scope: !1223)
!1226 = !DILocation(line: 447, column: 4, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 446, column: 58)
!1228 = !DILocation(line: 447, column: 8, scope: !1227)
!1229 = !DILocation(line: 447, column: 18, scope: !1227)
!1230 = !DILocation(line: 448, column: 4, scope: !1227)
!1231 = !DILocation(line: 448, column: 8, scope: !1227)
!1232 = !DILocation(line: 448, column: 18, scope: !1227)
!1233 = !DILocation(line: 449, column: 3, scope: !1227)
!1234 = !DILocation(line: 450, column: 4, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 449, column: 50)
!1236 = !DILocation(line: 450, column: 8, scope: !1235)
!1237 = !DILocation(line: 450, column: 18, scope: !1235)
!1238 = !DILocation(line: 451, column: 4, scope: !1235)
!1239 = !DILocation(line: 451, column: 8, scope: !1235)
!1240 = !DILocation(line: 451, column: 18, scope: !1235)
!1241 = !DILocation(line: 454, column: 3, scope: !1223)
!1242 = !DILocation(line: 454, column: 7, scope: !1223)
!1243 = !DILocation(line: 454, column: 17, scope: !1223)
!1244 = !DILocation(line: 455, column: 3, scope: !1223)
!1245 = !DILocation(line: 455, column: 7, scope: !1223)
!1246 = !DILocation(line: 455, column: 17, scope: !1223)
!1247 = !DILocation(line: 457, column: 20, scope: !1223)
!1248 = !DILocation(line: 457, column: 24, scope: !1223)
!1249 = !DILocation(line: 457, column: 34, scope: !1223)
!1250 = !DILocation(line: 457, column: 4, scope: !1223)
!1251 = !DILocation(line: 457, column: 8, scope: !1223)
!1252 = !DILocation(line: 457, column: 18, scope: !1223)
!1253 = !DILocation(line: 456, column: 18, scope: !1223)
!1254 = !DILocation(line: 456, column: 22, scope: !1223)
!1255 = !DILocation(line: 456, column: 33, scope: !1223)
!1256 = !DILocation(line: 456, column: 3, scope: !1223)
!1257 = !DILocation(line: 456, column: 7, scope: !1223)
!1258 = !DILocation(line: 456, column: 16, scope: !1223)
!1259 = !DILocation(line: 459, column: 3, scope: !1223)
!1260 = !DILocation(line: 459, column: 7, scope: !1223)
!1261 = !DILocation(line: 459, column: 17, scope: !1223)
!1262 = !DILocation(line: 460, column: 24, scope: !1223)
!1263 = !DILocation(line: 460, column: 45, scope: !1223)
!1264 = !DILocation(line: 460, column: 3, scope: !1223)
!1265 = !DILocation(line: 460, column: 7, scope: !1223)
!1266 = !DILocation(line: 460, column: 22, scope: !1223)
!1267 = !DILocation(line: 462, column: 1, scope: !1156)
!1268 = distinct !DISubprogram(name: "choose_mode_modenum", scope: !2, file: !2, line: 134, type: !1269, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1271)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!50, !787}
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1282, !1284}
!1272 = !DILocalVariable(name: "gop", arg: 1, scope: !1268, file: !2, line: 134, type: !787)
!1273 = !DILocalVariable(name: "status", scope: !1268, file: !2, line: 136, type: !62)
!1274 = !DILocalVariable(name: "mode", scope: !1268, file: !2, line: 138, type: !272)
!1275 = !DILocalVariable(name: "info", scope: !1268, file: !2, line: 139, type: !282)
!1276 = !DILocalVariable(name: "info_size", scope: !1268, file: !2, line: 140, type: !63)
!1277 = !DILocalVariable(name: "max_mode", scope: !1268, file: !2, line: 142, type: !50)
!1278 = !DILocalVariable(name: "cur_mode", scope: !1268, file: !2, line: 142, type: !50)
!1279 = !DILocalVariable(name: "pf", scope: !1268, file: !2, line: 143, type: !64)
!1280 = !DILocalVariable(name: "__inst", scope: !1281, file: !2, line: 157, type: !787)
!1281 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 157, column: 11)
!1282 = !DILocalVariable(name: "__pad", scope: !1283, file: !2, line: 157, type: !691)
!1283 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 157, column: 11)
!1284 = !DILocalVariable(name: "__pad", scope: !1285, file: !2, line: 166, type: !691)
!1285 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 166, column: 2)
!1286 = !DILocation(line: 134, column: 64, scope: !1268)
!1287 = !DILocation(line: 136, column: 2, scope: !1268)
!1288 = !DILocation(line: 136, column: 15, scope: !1268)
!1289 = !DILocation(line: 138, column: 2, scope: !1268)
!1290 = !DILocation(line: 138, column: 39, scope: !1268)
!1291 = !DILocation(line: 139, column: 2, scope: !1268)
!1292 = !DILocation(line: 139, column: 35, scope: !1268)
!1293 = !DILocation(line: 140, column: 2, scope: !1268)
!1294 = !DILocation(line: 140, column: 16, scope: !1268)
!1295 = !DILocation(line: 142, column: 2, scope: !1268)
!1296 = !DILocation(line: 142, column: 6, scope: !1268)
!1297 = !DILocation(line: 142, column: 16, scope: !1268)
!1298 = !DILocation(line: 143, column: 2, scope: !1268)
!1299 = !DILocation(line: 143, column: 6, scope: !1268)
!1300 = !DILocation(line: 145, column: 9, scope: !1268)
!1301 = !DILocation(line: 145, column: 7, scope: !1268)
!1302 = !DILocation(line: 147, column: 13, scope: !1268)
!1303 = !DILocation(line: 147, column: 11, scope: !1268)
!1304 = !DILocation(line: 148, column: 14, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 148, column: 6)
!1306 = !DILocation(line: 148, column: 22, scope: !1305)
!1307 = !DILocation(line: 148, column: 19, scope: !1305)
!1308 = !DILocation(line: 148, column: 6, scope: !1268)
!1309 = !DILocation(line: 149, column: 10, scope: !1305)
!1310 = !DILocation(line: 149, column: 3, scope: !1305)
!1311 = !DILocation(line: 151, column: 13, scope: !1268)
!1312 = !DILocation(line: 151, column: 11, scope: !1268)
!1313 = !DILocation(line: 152, column: 14, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 152, column: 6)
!1315 = !DILocation(line: 152, column: 22, scope: !1314)
!1316 = !DILocation(line: 152, column: 19, scope: !1314)
!1317 = !DILocation(line: 152, column: 6, scope: !1268)
!1318 = !DILocation(line: 153, column: 3, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 152, column: 32)
!1320 = !DILocation(line: 154, column: 10, scope: !1319)
!1321 = !DILocation(line: 154, column: 3, scope: !1319)
!1322 = !DILocation(line: 157, column: 11, scope: !1281)
!1323 = !DILocation(line: 157, column: 11, scope: !1283)
!1324 = !DILocation(line: 157, column: 11, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 157, column: 11)
!1326 = !DILocation(line: 157, column: 11, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 157, column: 11)
!1328 = !DILocation(line: 157, column: 11, scope: !1268)
!1329 = !DILocation(line: 157, column: 9, scope: !1268)
!1330 = !DILocation(line: 159, column: 6, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 159, column: 6)
!1332 = !DILocation(line: 159, column: 13, scope: !1331)
!1333 = !DILocation(line: 159, column: 6, scope: !1268)
!1334 = !DILocation(line: 160, column: 3, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 159, column: 29)
!1336 = !DILocation(line: 161, column: 10, scope: !1335)
!1337 = !DILocation(line: 161, column: 3, scope: !1335)
!1338 = !DILocation(line: 164, column: 7, scope: !1268)
!1339 = !DILocation(line: 164, column: 13, scope: !1268)
!1340 = !DILocation(line: 164, column: 5, scope: !1268)
!1341 = !DILocation(line: 166, column: 2, scope: !1268)
!1342 = !DILocation(line: 166, column: 2, scope: !1285)
!1343 = !DILocation(line: 166, column: 2, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 166, column: 2)
!1345 = !DILocation(line: 166, column: 2, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 166, column: 2)
!1347 = !DILocation(line: 168, column: 6, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 168, column: 6)
!1349 = !DILocation(line: 168, column: 9, scope: !1348)
!1350 = !DILocation(line: 168, column: 27, scope: !1348)
!1351 = !DILocation(line: 168, column: 30, scope: !1348)
!1352 = !DILocation(line: 168, column: 33, scope: !1348)
!1353 = !DILocation(line: 168, column: 6, scope: !1268)
!1354 = !DILocation(line: 169, column: 3, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 168, column: 54)
!1356 = !DILocation(line: 170, column: 10, scope: !1355)
!1357 = !DILocation(line: 170, column: 3, scope: !1355)
!1358 = !DILocation(line: 173, column: 17, scope: !1268)
!1359 = !DILocation(line: 173, column: 2, scope: !1268)
!1360 = !DILocation(line: 174, column: 1, scope: !1268)
!1361 = distinct !DISubprogram(name: "choose_mode_res", scope: !2, file: !2, line: 188, type: !1269, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1380, !1382}
!1363 = !DILocalVariable(name: "gop", arg: 1, scope: !1361, file: !2, line: 188, type: !787)
!1364 = !DILocalVariable(name: "status", scope: !1361, file: !2, line: 190, type: !62)
!1365 = !DILocalVariable(name: "mode", scope: !1361, file: !2, line: 192, type: !272)
!1366 = !DILocalVariable(name: "info", scope: !1361, file: !2, line: 193, type: !282)
!1367 = !DILocalVariable(name: "info_size", scope: !1361, file: !2, line: 194, type: !63)
!1368 = !DILocalVariable(name: "max_mode", scope: !1361, file: !2, line: 196, type: !50)
!1369 = !DILocalVariable(name: "cur_mode", scope: !1361, file: !2, line: 196, type: !50)
!1370 = !DILocalVariable(name: "pf", scope: !1361, file: !2, line: 197, type: !64)
!1371 = !DILocalVariable(name: "pi", scope: !1361, file: !2, line: 198, type: !291)
!1372 = !DILocalVariable(name: "m", scope: !1361, file: !2, line: 199, type: !50)
!1373 = !DILocalVariable(name: "w", scope: !1361, file: !2, line: 199, type: !50)
!1374 = !DILocalVariable(name: "h", scope: !1361, file: !2, line: 199, type: !50)
!1375 = !DILocalVariable(name: "__inst", scope: !1376, file: !2, line: 221, type: !787)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 221, column: 12)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 217, column: 33)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 217, column: 2)
!1379 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 217, column: 2)
!1380 = !DILocalVariable(name: "__pad", scope: !1381, file: !2, line: 221, type: !691)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 221, column: 12)
!1382 = !DILocalVariable(name: "__pad", scope: !1383, file: !2, line: 231, type: !691)
!1383 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 231, column: 3)
!1384 = !DILocation(line: 188, column: 60, scope: !1361)
!1385 = !DILocation(line: 190, column: 2, scope: !1361)
!1386 = !DILocation(line: 190, column: 15, scope: !1361)
!1387 = !DILocation(line: 192, column: 2, scope: !1361)
!1388 = !DILocation(line: 192, column: 39, scope: !1361)
!1389 = !DILocation(line: 193, column: 2, scope: !1361)
!1390 = !DILocation(line: 193, column: 35, scope: !1361)
!1391 = !DILocation(line: 194, column: 2, scope: !1361)
!1392 = !DILocation(line: 194, column: 16, scope: !1361)
!1393 = !DILocation(line: 196, column: 2, scope: !1361)
!1394 = !DILocation(line: 196, column: 6, scope: !1361)
!1395 = !DILocation(line: 196, column: 16, scope: !1361)
!1396 = !DILocation(line: 197, column: 2, scope: !1361)
!1397 = !DILocation(line: 197, column: 6, scope: !1361)
!1398 = !DILocation(line: 198, column: 2, scope: !1361)
!1399 = !DILocation(line: 198, column: 22, scope: !1361)
!1400 = !DILocation(line: 199, column: 2, scope: !1361)
!1401 = !DILocation(line: 199, column: 6, scope: !1361)
!1402 = !DILocation(line: 199, column: 9, scope: !1361)
!1403 = !DILocation(line: 199, column: 12, scope: !1361)
!1404 = !DILocation(line: 201, column: 9, scope: !1361)
!1405 = !DILocation(line: 201, column: 7, scope: !1361)
!1406 = !DILocation(line: 203, column: 13, scope: !1361)
!1407 = !DILocation(line: 203, column: 11, scope: !1361)
!1408 = !DILocation(line: 204, column: 9, scope: !1361)
!1409 = !DILocation(line: 204, column: 7, scope: !1361)
!1410 = !DILocation(line: 205, column: 7, scope: !1361)
!1411 = !DILocation(line: 205, column: 13, scope: !1361)
!1412 = !DILocation(line: 205, column: 5, scope: !1361)
!1413 = !DILocation(line: 206, column: 7, scope: !1361)
!1414 = !DILocation(line: 206, column: 13, scope: !1361)
!1415 = !DILocation(line: 207, column: 7, scope: !1361)
!1416 = !DILocation(line: 207, column: 13, scope: !1361)
!1417 = !DILocation(line: 207, column: 5, scope: !1361)
!1418 = !DILocation(line: 208, column: 7, scope: !1361)
!1419 = !DILocation(line: 208, column: 13, scope: !1361)
!1420 = !DILocation(line: 208, column: 5, scope: !1361)
!1421 = !DILocation(line: 210, column: 6, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 210, column: 6)
!1423 = !DILocation(line: 210, column: 23, scope: !1422)
!1424 = !DILocation(line: 210, column: 8, scope: !1422)
!1425 = !DILocation(line: 210, column: 29, scope: !1422)
!1426 = !DILocation(line: 210, column: 32, scope: !1422)
!1427 = !DILocation(line: 210, column: 49, scope: !1422)
!1428 = !DILocation(line: 210, column: 34, scope: !1422)
!1429 = !DILocation(line: 210, column: 56, scope: !1422)
!1430 = !DILocation(line: 211, column: 19, scope: !1422)
!1431 = !DILocation(line: 211, column: 26, scope: !1422)
!1432 = !DILocation(line: 211, column: 30, scope: !1422)
!1433 = !DILocation(line: 211, column: 45, scope: !1422)
!1434 = !DILocation(line: 211, column: 55, scope: !1422)
!1435 = !DILocation(line: 211, column: 52, scope: !1422)
!1436 = !DILocation(line: 211, column: 59, scope: !1422)
!1437 = !DILocation(line: 212, column: 20, scope: !1422)
!1438 = !DILocation(line: 212, column: 8, scope: !1422)
!1439 = !DILocation(line: 212, column: 26, scope: !1422)
!1440 = !DILocation(line: 212, column: 41, scope: !1422)
!1441 = !DILocation(line: 212, column: 29, scope: !1422)
!1442 = !DILocation(line: 212, column: 60, scope: !1422)
!1443 = !DILocation(line: 212, column: 50, scope: !1422)
!1444 = !DILocation(line: 212, column: 47, scope: !1422)
!1445 = !DILocation(line: 210, column: 6, scope: !1361)
!1446 = !DILocation(line: 213, column: 10, scope: !1422)
!1447 = !DILocation(line: 213, column: 3, scope: !1422)
!1448 = !DILocation(line: 215, column: 13, scope: !1361)
!1449 = !DILocation(line: 215, column: 11, scope: !1361)
!1450 = !DILocation(line: 217, column: 9, scope: !1379)
!1451 = !DILocation(line: 217, column: 7, scope: !1379)
!1452 = !DILocation(line: 217, column: 14, scope: !1378)
!1453 = !DILocation(line: 217, column: 18, scope: !1378)
!1454 = !DILocation(line: 217, column: 16, scope: !1378)
!1455 = !DILocation(line: 217, column: 2, scope: !1379)
!1456 = !DILocation(line: 218, column: 7, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 218, column: 7)
!1458 = !DILocation(line: 218, column: 12, scope: !1457)
!1459 = !DILocation(line: 218, column: 9, scope: !1457)
!1460 = !DILocation(line: 218, column: 7, scope: !1377)
!1461 = !DILocation(line: 219, column: 4, scope: !1457)
!1462 = !DILocation(line: 221, column: 12, scope: !1376)
!1463 = !DILocation(line: 221, column: 12, scope: !1381)
!1464 = !DILocation(line: 221, column: 12, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 221, column: 12)
!1466 = !DILocation(line: 221, column: 12, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 221, column: 12)
!1468 = !DILocation(line: 221, column: 12, scope: !1377)
!1469 = !DILocation(line: 221, column: 10, scope: !1377)
!1470 = !DILocation(line: 223, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 223, column: 7)
!1472 = !DILocation(line: 223, column: 14, scope: !1471)
!1473 = !DILocation(line: 223, column: 7, scope: !1377)
!1474 = !DILocation(line: 224, column: 4, scope: !1471)
!1475 = !DILocation(line: 226, column: 8, scope: !1377)
!1476 = !DILocation(line: 226, column: 14, scope: !1377)
!1477 = !DILocation(line: 226, column: 6, scope: !1377)
!1478 = !DILocation(line: 227, column: 8, scope: !1377)
!1479 = !DILocation(line: 227, column: 14, scope: !1377)
!1480 = !DILocation(line: 228, column: 8, scope: !1377)
!1481 = !DILocation(line: 228, column: 14, scope: !1377)
!1482 = !DILocation(line: 228, column: 6, scope: !1377)
!1483 = !DILocation(line: 229, column: 8, scope: !1377)
!1484 = !DILocation(line: 229, column: 14, scope: !1377)
!1485 = !DILocation(line: 229, column: 6, scope: !1377)
!1486 = !DILocation(line: 231, column: 3, scope: !1377)
!1487 = !DILocation(line: 231, column: 3, scope: !1383)
!1488 = !DILocation(line: 231, column: 3, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 231, column: 3)
!1490 = !DILocation(line: 231, column: 3, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 231, column: 3)
!1492 = !DILocation(line: 233, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 233, column: 7)
!1494 = !DILocation(line: 233, column: 10, scope: !1493)
!1495 = !DILocation(line: 233, column: 28, scope: !1493)
!1496 = !DILocation(line: 233, column: 31, scope: !1493)
!1497 = !DILocation(line: 233, column: 34, scope: !1493)
!1498 = !DILocation(line: 233, column: 7, scope: !1377)
!1499 = !DILocation(line: 234, column: 4, scope: !1493)
!1500 = !DILocation(line: 235, column: 7, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 235, column: 7)
!1502 = !DILocation(line: 235, column: 24, scope: !1501)
!1503 = !DILocation(line: 235, column: 9, scope: !1501)
!1504 = !DILocation(line: 235, column: 30, scope: !1501)
!1505 = !DILocation(line: 235, column: 33, scope: !1501)
!1506 = !DILocation(line: 235, column: 50, scope: !1501)
!1507 = !DILocation(line: 235, column: 35, scope: !1501)
!1508 = !DILocation(line: 235, column: 57, scope: !1501)
!1509 = !DILocation(line: 236, column: 20, scope: !1501)
!1510 = !DILocation(line: 236, column: 27, scope: !1501)
!1511 = !DILocation(line: 236, column: 31, scope: !1501)
!1512 = !DILocation(line: 236, column: 46, scope: !1501)
!1513 = !DILocation(line: 236, column: 56, scope: !1501)
!1514 = !DILocation(line: 236, column: 53, scope: !1501)
!1515 = !DILocation(line: 236, column: 60, scope: !1501)
!1516 = !DILocation(line: 237, column: 21, scope: !1501)
!1517 = !DILocation(line: 237, column: 9, scope: !1501)
!1518 = !DILocation(line: 237, column: 27, scope: !1501)
!1519 = !DILocation(line: 237, column: 42, scope: !1501)
!1520 = !DILocation(line: 237, column: 30, scope: !1501)
!1521 = !DILocation(line: 237, column: 61, scope: !1501)
!1522 = !DILocation(line: 237, column: 51, scope: !1501)
!1523 = !DILocation(line: 237, column: 48, scope: !1501)
!1524 = !DILocation(line: 235, column: 7, scope: !1377)
!1525 = !DILocation(line: 238, column: 11, scope: !1501)
!1526 = !DILocation(line: 238, column: 4, scope: !1501)
!1527 = !DILocation(line: 239, column: 2, scope: !1377)
!1528 = !DILocation(line: 217, column: 29, scope: !1378)
!1529 = !DILocation(line: 217, column: 2, scope: !1378)
!1530 = distinct !{!1530, !1455, !1531, !417, !418}
!1531 = !DILocation(line: 239, column: 2, scope: !1379)
!1532 = !DILocation(line: 241, column: 2, scope: !1361)
!1533 = !DILocation(line: 243, column: 9, scope: !1361)
!1534 = !DILocation(line: 243, column: 2, scope: !1361)
!1535 = !DILocation(line: 244, column: 1, scope: !1361)
!1536 = distinct !DISubprogram(name: "choose_mode_auto", scope: !2, file: !2, line: 246, type: !1269, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1537)
!1537 = !{!1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1560, !1562}
!1538 = !DILocalVariable(name: "gop", arg: 1, scope: !1536, file: !2, line: 246, type: !787)
!1539 = !DILocalVariable(name: "status", scope: !1536, file: !2, line: 248, type: !62)
!1540 = !DILocalVariable(name: "mode", scope: !1536, file: !2, line: 250, type: !272)
!1541 = !DILocalVariable(name: "info", scope: !1536, file: !2, line: 251, type: !282)
!1542 = !DILocalVariable(name: "info_size", scope: !1536, file: !2, line: 252, type: !63)
!1543 = !DILocalVariable(name: "max_mode", scope: !1536, file: !2, line: 254, type: !50)
!1544 = !DILocalVariable(name: "cur_mode", scope: !1536, file: !2, line: 254, type: !50)
!1545 = !DILocalVariable(name: "best_mode", scope: !1536, file: !2, line: 254, type: !50)
!1546 = !DILocalVariable(name: "area", scope: !1536, file: !2, line: 254, type: !50)
!1547 = !DILocalVariable(name: "depth", scope: !1536, file: !2, line: 255, type: !148)
!1548 = !DILocalVariable(name: "pf", scope: !1536, file: !2, line: 256, type: !64)
!1549 = !DILocalVariable(name: "pi", scope: !1536, file: !2, line: 257, type: !291)
!1550 = !DILocalVariable(name: "m", scope: !1536, file: !2, line: 258, type: !50)
!1551 = !DILocalVariable(name: "w", scope: !1536, file: !2, line: 258, type: !50)
!1552 = !DILocalVariable(name: "h", scope: !1536, file: !2, line: 258, type: !50)
!1553 = !DILocalVariable(name: "a", scope: !1536, file: !2, line: 258, type: !50)
!1554 = !DILocalVariable(name: "d", scope: !1536, file: !2, line: 259, type: !148)
!1555 = !DILocalVariable(name: "__inst", scope: !1556, file: !2, line: 281, type: !787)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 281, column: 12)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 277, column: 33)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 277, column: 2)
!1559 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 277, column: 2)
!1560 = !DILocalVariable(name: "__pad", scope: !1561, file: !2, line: 281, type: !691)
!1561 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 281, column: 12)
!1562 = !DILocalVariable(name: "__pad", scope: !1563, file: !2, line: 291, type: !691)
!1563 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 291, column: 3)
!1564 = !DILocation(line: 246, column: 61, scope: !1536)
!1565 = !DILocation(line: 248, column: 2, scope: !1536)
!1566 = !DILocation(line: 248, column: 15, scope: !1536)
!1567 = !DILocation(line: 250, column: 2, scope: !1536)
!1568 = !DILocation(line: 250, column: 39, scope: !1536)
!1569 = !DILocation(line: 251, column: 2, scope: !1536)
!1570 = !DILocation(line: 251, column: 35, scope: !1536)
!1571 = !DILocation(line: 252, column: 2, scope: !1536)
!1572 = !DILocation(line: 252, column: 16, scope: !1536)
!1573 = !DILocation(line: 254, column: 2, scope: !1536)
!1574 = !DILocation(line: 254, column: 6, scope: !1536)
!1575 = !DILocation(line: 254, column: 16, scope: !1536)
!1576 = !DILocation(line: 254, column: 26, scope: !1536)
!1577 = !DILocation(line: 254, column: 37, scope: !1536)
!1578 = !DILocation(line: 255, column: 2, scope: !1536)
!1579 = !DILocation(line: 255, column: 5, scope: !1536)
!1580 = !DILocation(line: 256, column: 2, scope: !1536)
!1581 = !DILocation(line: 256, column: 6, scope: !1536)
!1582 = !DILocation(line: 257, column: 2, scope: !1536)
!1583 = !DILocation(line: 257, column: 22, scope: !1536)
!1584 = !DILocation(line: 258, column: 2, scope: !1536)
!1585 = !DILocation(line: 258, column: 6, scope: !1536)
!1586 = !DILocation(line: 258, column: 9, scope: !1536)
!1587 = !DILocation(line: 258, column: 12, scope: !1536)
!1588 = !DILocation(line: 258, column: 15, scope: !1536)
!1589 = !DILocation(line: 259, column: 2, scope: !1536)
!1590 = !DILocation(line: 259, column: 5, scope: !1536)
!1591 = !DILocation(line: 261, column: 9, scope: !1536)
!1592 = !DILocation(line: 261, column: 7, scope: !1536)
!1593 = !DILocation(line: 263, column: 13, scope: !1536)
!1594 = !DILocation(line: 263, column: 11, scope: !1536)
!1595 = !DILocation(line: 264, column: 13, scope: !1536)
!1596 = !DILocation(line: 264, column: 11, scope: !1536)
!1597 = !DILocation(line: 266, column: 9, scope: !1536)
!1598 = !DILocation(line: 266, column: 7, scope: !1536)
!1599 = !DILocation(line: 268, column: 7, scope: !1536)
!1600 = !DILocation(line: 268, column: 13, scope: !1536)
!1601 = !DILocation(line: 268, column: 5, scope: !1536)
!1602 = !DILocation(line: 269, column: 7, scope: !1536)
!1603 = !DILocation(line: 269, column: 13, scope: !1536)
!1604 = !DILocation(line: 270, column: 7, scope: !1536)
!1605 = !DILocation(line: 270, column: 13, scope: !1536)
!1606 = !DILocation(line: 270, column: 5, scope: !1536)
!1607 = !DILocation(line: 271, column: 7, scope: !1536)
!1608 = !DILocation(line: 271, column: 13, scope: !1536)
!1609 = !DILocation(line: 271, column: 5, scope: !1536)
!1610 = !DILocation(line: 273, column: 14, scope: !1536)
!1611 = !DILocation(line: 273, column: 12, scope: !1536)
!1612 = !DILocation(line: 274, column: 9, scope: !1536)
!1613 = !DILocation(line: 274, column: 13, scope: !1536)
!1614 = !DILocation(line: 274, column: 11, scope: !1536)
!1615 = !DILocation(line: 274, column: 7, scope: !1536)
!1616 = !DILocation(line: 275, column: 20, scope: !1536)
!1617 = !DILocation(line: 275, column: 10, scope: !1536)
!1618 = !DILocation(line: 275, column: 8, scope: !1536)
!1619 = !DILocation(line: 277, column: 9, scope: !1559)
!1620 = !DILocation(line: 277, column: 7, scope: !1559)
!1621 = !DILocation(line: 277, column: 14, scope: !1558)
!1622 = !DILocation(line: 277, column: 18, scope: !1558)
!1623 = !DILocation(line: 277, column: 16, scope: !1558)
!1624 = !DILocation(line: 277, column: 2, scope: !1559)
!1625 = !DILocation(line: 278, column: 7, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 278, column: 7)
!1627 = !DILocation(line: 278, column: 12, scope: !1626)
!1628 = !DILocation(line: 278, column: 9, scope: !1626)
!1629 = !DILocation(line: 278, column: 7, scope: !1557)
!1630 = !DILocation(line: 279, column: 4, scope: !1626)
!1631 = !DILocation(line: 281, column: 12, scope: !1556)
!1632 = !DILocation(line: 281, column: 12, scope: !1561)
!1633 = !DILocation(line: 281, column: 12, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1561, file: !2, line: 281, column: 12)
!1635 = !DILocation(line: 281, column: 12, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1634, file: !2, line: 281, column: 12)
!1637 = !DILocation(line: 281, column: 12, scope: !1557)
!1638 = !DILocation(line: 281, column: 10, scope: !1557)
!1639 = !DILocation(line: 283, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 283, column: 7)
!1641 = !DILocation(line: 283, column: 14, scope: !1640)
!1642 = !DILocation(line: 283, column: 7, scope: !1557)
!1643 = !DILocation(line: 284, column: 4, scope: !1640)
!1644 = !DILocation(line: 286, column: 8, scope: !1557)
!1645 = !DILocation(line: 286, column: 14, scope: !1557)
!1646 = !DILocation(line: 286, column: 6, scope: !1557)
!1647 = !DILocation(line: 287, column: 8, scope: !1557)
!1648 = !DILocation(line: 287, column: 14, scope: !1557)
!1649 = !DILocation(line: 288, column: 8, scope: !1557)
!1650 = !DILocation(line: 288, column: 14, scope: !1557)
!1651 = !DILocation(line: 288, column: 6, scope: !1557)
!1652 = !DILocation(line: 289, column: 8, scope: !1557)
!1653 = !DILocation(line: 289, column: 14, scope: !1557)
!1654 = !DILocation(line: 289, column: 6, scope: !1557)
!1655 = !DILocation(line: 291, column: 3, scope: !1557)
!1656 = !DILocation(line: 291, column: 3, scope: !1563)
!1657 = !DILocation(line: 291, column: 3, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 291, column: 3)
!1659 = !DILocation(line: 291, column: 3, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 291, column: 3)
!1661 = !DILocation(line: 293, column: 7, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 293, column: 7)
!1663 = !DILocation(line: 293, column: 10, scope: !1662)
!1664 = !DILocation(line: 293, column: 28, scope: !1662)
!1665 = !DILocation(line: 293, column: 31, scope: !1662)
!1666 = !DILocation(line: 293, column: 34, scope: !1662)
!1667 = !DILocation(line: 293, column: 7, scope: !1557)
!1668 = !DILocation(line: 294, column: 4, scope: !1662)
!1669 = !DILocation(line: 295, column: 7, scope: !1557)
!1670 = !DILocation(line: 295, column: 11, scope: !1557)
!1671 = !DILocation(line: 295, column: 9, scope: !1557)
!1672 = !DILocation(line: 295, column: 5, scope: !1557)
!1673 = !DILocation(line: 296, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 296, column: 7)
!1675 = !DILocation(line: 296, column: 11, scope: !1674)
!1676 = !DILocation(line: 296, column: 9, scope: !1674)
!1677 = !DILocation(line: 296, column: 7, scope: !1557)
!1678 = !DILocation(line: 297, column: 4, scope: !1674)
!1679 = !DILocation(line: 298, column: 17, scope: !1557)
!1680 = !DILocation(line: 298, column: 7, scope: !1557)
!1681 = !DILocation(line: 298, column: 5, scope: !1557)
!1682 = !DILocation(line: 299, column: 7, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 299, column: 7)
!1684 = !DILocation(line: 299, column: 11, scope: !1683)
!1685 = !DILocation(line: 299, column: 9, scope: !1683)
!1686 = !DILocation(line: 299, column: 16, scope: !1683)
!1687 = !DILocation(line: 299, column: 19, scope: !1683)
!1688 = !DILocation(line: 299, column: 23, scope: !1683)
!1689 = !DILocation(line: 299, column: 21, scope: !1683)
!1690 = !DILocation(line: 299, column: 7, scope: !1557)
!1691 = !DILocation(line: 300, column: 16, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 299, column: 30)
!1693 = !DILocation(line: 300, column: 14, scope: !1692)
!1694 = !DILocation(line: 301, column: 11, scope: !1692)
!1695 = !DILocation(line: 301, column: 9, scope: !1692)
!1696 = !DILocation(line: 302, column: 12, scope: !1692)
!1697 = !DILocation(line: 302, column: 10, scope: !1692)
!1698 = !DILocation(line: 303, column: 3, scope: !1692)
!1699 = !DILocation(line: 304, column: 2, scope: !1557)
!1700 = !DILocation(line: 277, column: 29, scope: !1558)
!1701 = !DILocation(line: 277, column: 2, scope: !1558)
!1702 = distinct !{!1702, !1624, !1703, !417, !418}
!1703 = !DILocation(line: 304, column: 2, scope: !1559)
!1704 = !DILocation(line: 306, column: 9, scope: !1536)
!1705 = !DILocation(line: 307, column: 1, scope: !1536)
!1706 = !DILocation(line: 306, column: 2, scope: !1536)
!1707 = distinct !DISubprogram(name: "choose_mode_list", scope: !2, file: !2, line: 309, type: !1269, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1708)
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1730, !1735, !1737, !1739}
!1709 = !DILocalVariable(name: "gop", arg: 1, scope: !1707, file: !2, line: 309, type: !787)
!1710 = !DILocalVariable(name: "status", scope: !1707, file: !2, line: 311, type: !62)
!1711 = !DILocalVariable(name: "mode", scope: !1707, file: !2, line: 313, type: !272)
!1712 = !DILocalVariable(name: "info", scope: !1707, file: !2, line: 314, type: !282)
!1713 = !DILocalVariable(name: "info_size", scope: !1707, file: !2, line: 315, type: !63)
!1714 = !DILocalVariable(name: "max_mode", scope: !1707, file: !2, line: 317, type: !50)
!1715 = !DILocalVariable(name: "cur_mode", scope: !1707, file: !2, line: 317, type: !50)
!1716 = !DILocalVariable(name: "pf", scope: !1707, file: !2, line: 318, type: !64)
!1717 = !DILocalVariable(name: "pi", scope: !1707, file: !2, line: 319, type: !291)
!1718 = !DILocalVariable(name: "m", scope: !1707, file: !2, line: 320, type: !50)
!1719 = !DILocalVariable(name: "w", scope: !1707, file: !2, line: 320, type: !50)
!1720 = !DILocalVariable(name: "h", scope: !1707, file: !2, line: 320, type: !50)
!1721 = !DILocalVariable(name: "d", scope: !1707, file: !2, line: 321, type: !148)
!1722 = !DILocalVariable(name: "dstr", scope: !1707, file: !2, line: 322, type: !893)
!1723 = !DILocalVariable(name: "valid", scope: !1707, file: !2, line: 323, type: !162)
!1724 = !DILocalVariable(name: "key", scope: !1707, file: !2, line: 324, type: !1725)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_input_key_t", file: !12, line: 485, baseType: !1726)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 482, size: 32, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "scan_code", scope: !1726, file: !12, line: 483, baseType: !151, size: 16)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "unicode_char", scope: !1726, file: !12, line: 484, baseType: !171, size: 16, offset: 16)
!1730 = !DILocalVariable(name: "__inst", scope: !1731, file: !2, line: 335, type: !787)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !2, line: 335, column: 12)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !2, line: 334, column: 33)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 334, column: 2)
!1734 = distinct !DILexicalBlock(scope: !1707, file: !2, line: 334, column: 2)
!1735 = !DILocalVariable(name: "__pad", scope: !1736, file: !2, line: 335, type: !691)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 335, column: 12)
!1737 = !DILocalVariable(name: "__pad", scope: !1738, file: !2, line: 345, type: !691)
!1738 = distinct !DILexicalBlock(scope: !1732, file: !2, line: 345, column: 3)
!1739 = !DILocalVariable(name: "__pad", scope: !1740, file: !2, line: 379, type: !691)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 379, column: 3)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !2, line: 377, column: 54)
!1742 = distinct !DILexicalBlock(scope: !1707, file: !2, line: 377, column: 6)
!1743 = !DILocation(line: 309, column: 61, scope: !1707)
!1744 = !DILocation(line: 311, column: 2, scope: !1707)
!1745 = !DILocation(line: 311, column: 15, scope: !1707)
!1746 = !DILocation(line: 313, column: 2, scope: !1707)
!1747 = !DILocation(line: 313, column: 39, scope: !1707)
!1748 = !DILocation(line: 314, column: 2, scope: !1707)
!1749 = !DILocation(line: 314, column: 35, scope: !1707)
!1750 = !DILocation(line: 315, column: 2, scope: !1707)
!1751 = !DILocation(line: 315, column: 16, scope: !1707)
!1752 = !DILocation(line: 317, column: 2, scope: !1707)
!1753 = !DILocation(line: 317, column: 6, scope: !1707)
!1754 = !DILocation(line: 317, column: 16, scope: !1707)
!1755 = !DILocation(line: 318, column: 2, scope: !1707)
!1756 = !DILocation(line: 318, column: 6, scope: !1707)
!1757 = !DILocation(line: 319, column: 2, scope: !1707)
!1758 = !DILocation(line: 319, column: 22, scope: !1707)
!1759 = !DILocation(line: 320, column: 2, scope: !1707)
!1760 = !DILocation(line: 320, column: 6, scope: !1707)
!1761 = !DILocation(line: 320, column: 9, scope: !1707)
!1762 = !DILocation(line: 320, column: 12, scope: !1707)
!1763 = !DILocation(line: 321, column: 2, scope: !1707)
!1764 = !DILocation(line: 321, column: 5, scope: !1707)
!1765 = !DILocation(line: 322, column: 2, scope: !1707)
!1766 = !DILocation(line: 322, column: 14, scope: !1707)
!1767 = !DILocation(line: 323, column: 2, scope: !1707)
!1768 = !DILocation(line: 323, column: 7, scope: !1707)
!1769 = !DILocation(line: 324, column: 2, scope: !1707)
!1770 = !DILocation(line: 324, column: 18, scope: !1707)
!1771 = !DILocation(line: 326, column: 9, scope: !1707)
!1772 = !DILocation(line: 326, column: 7, scope: !1707)
!1773 = !DILocation(line: 328, column: 13, scope: !1707)
!1774 = !DILocation(line: 328, column: 11, scope: !1707)
!1775 = !DILocation(line: 329, column: 13, scope: !1707)
!1776 = !DILocation(line: 329, column: 11, scope: !1707)
!1777 = !DILocation(line: 331, column: 52, scope: !1707)
!1778 = !DILocation(line: 331, column: 60, scope: !1707)
!1779 = !DILocation(line: 331, column: 2, scope: !1707)
!1780 = !DILocation(line: 332, column: 2, scope: !1707)
!1781 = !DILocation(line: 334, column: 9, scope: !1734)
!1782 = !DILocation(line: 334, column: 7, scope: !1734)
!1783 = !DILocation(line: 334, column: 14, scope: !1733)
!1784 = !DILocation(line: 334, column: 18, scope: !1733)
!1785 = !DILocation(line: 334, column: 16, scope: !1733)
!1786 = !DILocation(line: 334, column: 2, scope: !1734)
!1787 = !DILocation(line: 335, column: 12, scope: !1731)
!1788 = !DILocation(line: 335, column: 12, scope: !1736)
!1789 = !DILocation(line: 335, column: 12, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1736, file: !2, line: 335, column: 12)
!1791 = !DILocation(line: 335, column: 12, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 335, column: 12)
!1793 = !DILocation(line: 335, column: 12, scope: !1732)
!1794 = !DILocation(line: 335, column: 10, scope: !1732)
!1795 = !DILocation(line: 337, column: 7, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1732, file: !2, line: 337, column: 7)
!1797 = !DILocation(line: 337, column: 14, scope: !1796)
!1798 = !DILocation(line: 337, column: 7, scope: !1732)
!1799 = !DILocation(line: 338, column: 4, scope: !1796)
!1800 = !DILocation(line: 340, column: 8, scope: !1732)
!1801 = !DILocation(line: 340, column: 14, scope: !1732)
!1802 = !DILocation(line: 340, column: 6, scope: !1732)
!1803 = !DILocation(line: 341, column: 8, scope: !1732)
!1804 = !DILocation(line: 341, column: 14, scope: !1732)
!1805 = !DILocation(line: 342, column: 8, scope: !1732)
!1806 = !DILocation(line: 342, column: 14, scope: !1732)
!1807 = !DILocation(line: 342, column: 6, scope: !1732)
!1808 = !DILocation(line: 343, column: 8, scope: !1732)
!1809 = !DILocation(line: 343, column: 14, scope: !1732)
!1810 = !DILocation(line: 343, column: 6, scope: !1732)
!1811 = !DILocation(line: 345, column: 3, scope: !1732)
!1812 = !DILocation(line: 345, column: 3, scope: !1738)
!1813 = !DILocation(line: 345, column: 3, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 345, column: 3)
!1815 = !DILocation(line: 345, column: 3, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 345, column: 3)
!1817 = !DILocation(line: 347, column: 13, scope: !1732)
!1818 = !DILocation(line: 347, column: 16, scope: !1732)
!1819 = !DILocation(line: 347, column: 34, scope: !1732)
!1820 = !DILocation(line: 347, column: 37, scope: !1732)
!1821 = !DILocation(line: 347, column: 40, scope: !1732)
!1822 = !DILocation(line: 347, column: 11, scope: !1732)
!1823 = !DILocation(line: 347, column: 9, scope: !1732)
!1824 = !DILocation(line: 348, column: 5, scope: !1732)
!1825 = !DILocation(line: 349, column: 11, scope: !1732)
!1826 = !DILocation(line: 349, column: 3, scope: !1732)
!1827 = !DILocation(line: 351, column: 9, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1732, file: !2, line: 349, column: 15)
!1829 = !DILocation(line: 352, column: 4, scope: !1828)
!1830 = !DILocation(line: 354, column: 9, scope: !1828)
!1831 = !DILocation(line: 355, column: 4, scope: !1828)
!1832 = !DILocation(line: 357, column: 9, scope: !1828)
!1833 = !DILocation(line: 358, column: 18, scope: !1828)
!1834 = !DILocation(line: 358, column: 8, scope: !1828)
!1835 = !DILocation(line: 358, column: 6, scope: !1828)
!1836 = !DILocation(line: 359, column: 4, scope: !1828)
!1837 = !DILocation(line: 361, column: 9, scope: !1828)
!1838 = !DILocation(line: 362, column: 4, scope: !1828)
!1839 = !DILocation(line: 364, column: 9, scope: !1828)
!1840 = !DILocation(line: 365, column: 4, scope: !1828)
!1841 = !DILocation(line: 369, column: 7, scope: !1732)
!1842 = !DILocation(line: 370, column: 7, scope: !1732)
!1843 = !DILocation(line: 370, column: 12, scope: !1732)
!1844 = !DILocation(line: 370, column: 9, scope: !1732)
!1845 = !DILocation(line: 371, column: 8, scope: !1732)
!1846 = !DILocation(line: 371, column: 7, scope: !1732)
!1847 = !DILocation(line: 372, column: 7, scope: !1732)
!1848 = !DILocation(line: 372, column: 10, scope: !1732)
!1849 = !DILocation(line: 372, column: 13, scope: !1732)
!1850 = !DILocation(line: 372, column: 19, scope: !1732)
!1851 = !DILocation(line: 368, column: 3, scope: !1732)
!1852 = !DILocation(line: 373, column: 2, scope: !1732)
!1853 = !DILocation(line: 334, column: 29, scope: !1733)
!1854 = !DILocation(line: 334, column: 2, scope: !1733)
!1855 = distinct !{!1855, !1786, !1856, !417, !418}
!1856 = !DILocation(line: 373, column: 2, scope: !1734)
!1857 = !DILocation(line: 375, column: 2, scope: !1707)
!1858 = !DILocation(line: 376, column: 11, scope: !1707)
!1859 = !DILocation(line: 376, column: 9, scope: !1707)
!1860 = !DILocation(line: 377, column: 6, scope: !1742)
!1861 = !DILocation(line: 377, column: 13, scope: !1742)
!1862 = !DILocation(line: 377, column: 28, scope: !1742)
!1863 = !DILocation(line: 377, column: 31, scope: !1742)
!1864 = !DILocation(line: 377, column: 38, scope: !1742)
!1865 = !DILocation(line: 377, column: 6, scope: !1707)
!1866 = !DILocation(line: 378, column: 3, scope: !1741)
!1867 = !DILocation(line: 379, column: 3, scope: !1741)
!1868 = !DILocation(line: 379, column: 3, scope: !1740)
!1869 = !DILocation(line: 379, column: 3, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 379, column: 3)
!1871 = !DILocation(line: 379, column: 3, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 379, column: 3)
!1873 = !DILocation(line: 380, column: 2, scope: !1741)
!1874 = !DILocation(line: 382, column: 9, scope: !1707)
!1875 = !DILocation(line: 383, column: 1, scope: !1707)
!1876 = !DILocation(line: 382, column: 2, scope: !1707)
!1877 = !DISubprogram(name: "efi_printk", scope: !12, file: !12, line: 972, type: !1878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!64, !893, null}
!1880 = distinct !DISubprogram(name: "pixel_bpp", scope: !2, file: !2, line: 176, type: !1881, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1883)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!148, !64, !291}
!1883 = !{!1884, !1885, !1886}
!1884 = !DILocalVariable(name: "pixel_format", arg: 1, scope: !1880, file: !2, line: 176, type: !64)
!1885 = !DILocalVariable(name: "pixel_info", arg: 2, scope: !1880, file: !2, line: 176, type: !291)
!1886 = !DILocalVariable(name: "mask", scope: !1887, file: !2, line: 179, type: !50)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 178, column: 38)
!1888 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 178, column: 6)
!1889 = !DILocation(line: 176, column: 25, scope: !1880)
!1890 = !DILocation(line: 176, column: 59, scope: !1880)
!1891 = !DILocation(line: 178, column: 6, scope: !1888)
!1892 = !DILocation(line: 178, column: 19, scope: !1888)
!1893 = !DILocation(line: 178, column: 6, scope: !1880)
!1894 = !DILocation(line: 179, column: 3, scope: !1887)
!1895 = !DILocation(line: 179, column: 7, scope: !1887)
!1896 = !DILocation(line: 179, column: 25, scope: !1887)
!1897 = !DILocation(line: 179, column: 47, scope: !1887)
!1898 = !DILocation(line: 179, column: 34, scope: !1887)
!1899 = !DILocation(line: 180, column: 18, scope: !1887)
!1900 = !DILocation(line: 179, column: 58, scope: !1887)
!1901 = !DILocation(line: 180, column: 41, scope: !1887)
!1902 = !DILocation(line: 180, column: 28, scope: !1887)
!1903 = !DILocation(line: 181, column: 8, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1887, file: !2, line: 181, column: 7)
!1905 = !DILocation(line: 181, column: 7, scope: !1887)
!1906 = !DILocation(line: 182, column: 4, scope: !1904)
!1907 = !DILocation(line: 183, column: 16, scope: !1887)
!1908 = !DILocation(line: 183, column: 10, scope: !1887)
!1909 = !DILocation(line: 183, column: 24, scope: !1887)
!1910 = !DILocation(line: 183, column: 22, scope: !1887)
!1911 = !DILocation(line: 183, column: 36, scope: !1887)
!1912 = !DILocation(line: 183, column: 3, scope: !1887)
!1913 = !DILocation(line: 184, column: 2, scope: !1888)
!1914 = !DILocation(line: 185, column: 3, scope: !1888)
!1915 = !DILocation(line: 186, column: 1, scope: !1880)
!1916 = distinct !DISubprogram(name: "__fls", scope: !1917, file: !1917, line: 294, type: !1918, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1920)
!1917 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!63, !63}
!1920 = !{!1921}
!1921 = !DILocalVariable(name: "word", arg: 1, scope: !1916, file: !1917, line: 294, type: !63)
!1922 = !DILocation(line: 294, column: 58, scope: !1916)
!1923 = !DILocation(line: 298, column: 14, scope: !1916)
!1924 = !DILocation(line: 296, column: 2, scope: !1916)
!1925 = !{i64 259824}
!1926 = !DILocation(line: 299, column: 9, scope: !1916)
!1927 = !DILocation(line: 299, column: 2, scope: !1916)
!1928 = distinct !DISubprogram(name: "variable__ffs", scope: !1917, file: !1917, line: 250, type: !1918, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1929)
!1929 = !{!1930}
!1930 = !DILocalVariable(name: "word", arg: 1, scope: !1928, file: !1917, line: 250, type: !63)
!1931 = !DILocation(line: 250, column: 66, scope: !1928)
!1932 = !DILocation(line: 254, column: 11, scope: !1928)
!1933 = !DILocation(line: 252, column: 2, scope: !1928)
!1934 = !{i64 258848}
!1935 = !DILocation(line: 255, column: 9, scope: !1928)
!1936 = !DILocation(line: 255, column: 2, scope: !1928)
!1937 = !DISubprogram(name: "efi_puts", scope: !12, file: !12, line: 970, type: !1938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null, !893}
!1940 = !DISubprogram(name: "efi_wait_for_key", scope: !12, file: !12, line: 501, type: !1941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!62, !63, !1943}
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1944 = distinct !DISubprogram(name: "find_bits", scope: !2, file: !2, line: 417, type: !1945, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1948)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !50, !1947, !1947}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1948 = !{!1949, !1950, !1951}
!1949 = !DILocalVariable(name: "mask", arg: 1, scope: !1944, file: !2, line: 417, type: !50)
!1950 = !DILocalVariable(name: "pos", arg: 2, scope: !1944, file: !2, line: 417, type: !1947)
!1951 = !DILocalVariable(name: "size", arg: 3, scope: !1944, file: !2, line: 417, type: !1947)
!1952 = !DILocation(line: 417, column: 27, scope: !1944)
!1953 = !DILocation(line: 417, column: 37, scope: !1944)
!1954 = !DILocation(line: 417, column: 46, scope: !1944)
!1955 = !DILocation(line: 419, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1944, file: !2, line: 419, column: 6)
!1957 = !DILocation(line: 419, column: 6, scope: !1944)
!1958 = !DILocation(line: 420, column: 11, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1956, file: !2, line: 419, column: 13)
!1960 = !DILocation(line: 420, column: 16, scope: !1959)
!1961 = !DILocation(line: 420, column: 4, scope: !1959)
!1962 = !DILocation(line: 420, column: 8, scope: !1959)
!1963 = !DILocation(line: 421, column: 3, scope: !1959)
!1964 = !DILocation(line: 425, column: 10, scope: !1944)
!1965 = !DILocation(line: 425, column: 3, scope: !1944)
!1966 = !DILocation(line: 425, column: 8, scope: !1944)
!1967 = !DILocation(line: 426, column: 16, scope: !1944)
!1968 = !DILocation(line: 426, column: 10, scope: !1944)
!1969 = !DILocation(line: 426, column: 25, scope: !1944)
!1970 = !DILocation(line: 426, column: 24, scope: !1944)
!1971 = !DILocation(line: 426, column: 22, scope: !1944)
!1972 = !DILocation(line: 426, column: 29, scope: !1944)
!1973 = !DILocation(line: 426, column: 3, scope: !1944)
!1974 = !DILocation(line: 426, column: 8, scope: !1944)
!1975 = !DILocation(line: 427, column: 1, scope: !1944)
