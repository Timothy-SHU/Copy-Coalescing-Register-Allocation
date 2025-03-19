; ModuleID = 'drivers/acpi/acpica/rscalc.c'
source_filename = "drivers/acpi/acpica/rscalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor, [58 x i8] }
%struct.acpi_resource_vendor = type { i16, [0 x i8] }
%struct.acpi_resource_irq = type { i8, i8, i8, i8, i8, i8, %union.anon }
%union.anon = type { i8 }
%struct.acpi_resource_address16 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address16_attribute, %struct.acpi_resource_source }>
%union.acpi_resource_attribute = type { %struct.acpi_memory_attribute }
%struct.acpi_memory_attribute = type { i8, i8, i8, i8 }
%struct.acpi_address16_attribute = type { i16, i16, i16, i16, i16 }
%struct.acpi_resource_source = type <{ i8, i16, ptr }>
%struct.acpi_resource_address32 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address32_attribute, %struct.acpi_resource_source }>
%struct.acpi_address32_attribute = type { i32, i32, i32, i32, i32 }
%struct.acpi_resource_address64 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address64_attribute, %struct.acpi_resource_source }>
%struct.acpi_address64_attribute = type { i64, i64, i64, i64, i64 }
%struct.acpi_resource_extended_irq = type <{ i8, i8, i8, i8, i8, i8, %struct.acpi_resource_source, %union.anon.4 }>
%union.anon.4 = type { i32 }
%struct.acpi_resource_gpio = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, %struct.acpi_resource_source, ptr, ptr }>
%struct.acpi_resource_pin_function = type <{ i8, i8, i8, i16, i16, i16, %struct.acpi_resource_source, ptr, ptr }>
%struct.acpi_resource_clock_input = type <{ i8, i8, i8, i16, i32, %struct.acpi_resource_source }>
%struct.acpi_resource_common_serialbus = type <{ i8, i8, i8, i8, i8, i8, i16, i16, %struct.acpi_resource_source, ptr }>
%struct.acpi_resource_i2c_serialbus = type <{ i8, i8, i8, i8, i8, i8, i16, i16, %struct.acpi_resource_source, ptr, i8, i16, i32 }>
%struct.acpi_resource_pin_config = type <{ i8, i8, i8, i8, i32, i16, i16, %struct.acpi_resource_source, ptr, ptr }>
%struct.acpi_resource_pin_group = type <{ i8, i8, i16, i16, ptr, %struct.acpi_resource_label, ptr }>
%struct.acpi_resource_label = type <{ i16, ptr }>
%struct.acpi_resource_pin_group_function = type <{ i8, i8, i8, i16, i16, %struct.acpi_resource_source, %struct.acpi_resource_label, ptr }>
%struct.acpi_resource_pin_group_config = type <{ i8, i8, i8, i8, i32, i16, %struct.acpi_resource_source, %struct.acpi_resource_label, ptr }>
%struct.aml_resource_common_serialbus = type <{ i8, i16, i8, i8, i8, i8, i16, i8, i16 }>
%struct.aml_resource_gpio = type <{ i8, i16, i8, i8, i16, i16, i8, i16, i16, i16, i8, i16, i16, i16 }>
%struct.aml_resource_large_header = type <{ i8, i16 }>
%struct.aml_resource_pin_function = type <{ i8, i16, i8, i16, i8, i16, i16, i8, i16, i16, i16 }>
%struct.aml_resource_pin_config = type <{ i8, i16, i8, i16, i8, i32, i16, i8, i16, i16, i16 }>
%struct.aml_resource_pin_group = type <{ i8, i16, i8, i16, i16, i16, i16, i16 }>
%struct.aml_resource_pin_group_function = type <{ i8, i16, i8, i16, i16, i8, i16, i16, i16, i16 }>
%struct.aml_resource_pin_group_config = type <{ i8, i16, i8, i16, i8, i32, i8, i16, i16, i16, i16 }>
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }

@acpi_gbl_aml_resource_sizes = external dso_local constant [0 x i8], align 1
@acpi_gbl_aml_resource_serial_bus_sizes = external dso_local constant [0 x i8], align 1
@acpi_gbl_resource_aml_sizes = external dso_local constant [0 x i8], align 1
@acpi_gbl_resource_aml_serial_bus_sizes = external dso_local constant [0 x i8], align 1
@acpi_gbl_resource_struct_serial_bus_sizes = external dso_local constant [0 x i8], align 1
@acpi_gbl_resource_struct_sizes = external dso_local constant [0 x i8], align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_get_aml_length(ptr noundef %resource, i64 noundef %resource_list_size, ptr noundef %size_needed) #0 align 16 !dbg !467 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca ptr, align 8
  %resource_list_size.addr = alloca i64, align 8
  %size_needed.addr = alloca ptr, align 8
  %aml_size_needed = alloca i64, align 8
  %resource_end = alloca ptr, align 8
  %total_size = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !472, metadata !DIExpression()), !dbg !478
  store i64 %resource_list_size, ptr %resource_list_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource_list_size.addr, metadata !473, metadata !DIExpression()), !dbg !479
  store ptr %size_needed, ptr %size_needed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size_needed.addr, metadata !474, metadata !DIExpression()), !dbg !480
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_size_needed) #5, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %aml_size_needed, metadata !475, metadata !DIExpression()), !dbg !482
  store i64 0, ptr %aml_size_needed, align 8, !dbg !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource_end) #5, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %resource_end, metadata !476, metadata !DIExpression()), !dbg !484
  call void @llvm.lifetime.start.p0(i64 2, ptr %total_size) #5, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %total_size, metadata !477, metadata !DIExpression()), !dbg !486
  %0 = load ptr, ptr %resource.addr, align 8, !dbg !487
  %1 = ptrtoint ptr %0 to i64, !dbg !487
  %2 = inttoptr i64 %1 to ptr, !dbg !487
  %3 = load i64, ptr %resource_list_size.addr, align 8, !dbg !487
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !487
  %4 = ptrtoint ptr %add.ptr to i64, !dbg !487
  %5 = inttoptr i64 %4 to ptr, !dbg !487
  store ptr %5, ptr %resource_end, align 8, !dbg !488
  br label %while.cond, !dbg !489

while.cond:                                       ; preds = %sw.epilog, %entry
  %6 = load ptr, ptr %resource.addr, align 8, !dbg !490
  %7 = load ptr, ptr %resource_end, align 8, !dbg !491
  %cmp = icmp ult ptr %6, %7, !dbg !492
  br i1 %cmp, label %while.body, label %while.end, !dbg !489

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %resource.addr, align 8, !dbg !493
  %type = getelementptr inbounds %struct.acpi_resource, ptr %8, i32 0, i32 0, !dbg !496
  %9 = load i32, ptr %type, align 1, !dbg !496
  %cmp1 = icmp ugt i32 %9, 25, !dbg !497
  br i1 %cmp1, label %if.then, label %if.end, !dbg !498

if.then:                                          ; preds = %while.body
  store i32 12311, ptr %retval, align 4, !dbg !499
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !499

if.end:                                           ; preds = %while.body
  %10 = load ptr, ptr %resource.addr, align 8, !dbg !501
  %length = getelementptr inbounds %struct.acpi_resource, ptr %10, i32 0, i32 1, !dbg !503
  %11 = load i32, ptr %length, align 1, !dbg !503
  %tobool = icmp ne i32 %11, 0, !dbg !501
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !504

if.then2:                                         ; preds = %if.end
  store i32 12319, ptr %retval, align 4, !dbg !505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !505

if.end3:                                          ; preds = %if.end
  %12 = load ptr, ptr %resource.addr, align 8, !dbg !507
  %type4 = getelementptr inbounds %struct.acpi_resource, ptr %12, i32 0, i32 0, !dbg !508
  %13 = load i32, ptr %type4, align 1, !dbg !508
  %idxprom = zext i32 %13 to i64, !dbg !509
  %arrayidx = getelementptr [0 x i8], ptr @acpi_gbl_aml_resource_sizes, i64 0, i64 %idxprom, !dbg !509
  %14 = load i8, ptr %arrayidx, align 1, !dbg !509
  %conv = zext i8 %14 to i16, !dbg !509
  store i16 %conv, ptr %total_size, align 2, !dbg !510
  %15 = load ptr, ptr %resource.addr, align 8, !dbg !511
  %type5 = getelementptr inbounds %struct.acpi_resource, ptr %15, i32 0, i32 0, !dbg !512
  %16 = load i32, ptr %type5, align 1, !dbg !512
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb11
    i32 6, label %sw.bb20
    i32 7, label %sw.bb32
    i32 11, label %sw.bb35
    i32 12, label %sw.bb41
    i32 13, label %sw.bb49
    i32 15, label %sw.bb57
    i32 17, label %sw.bb68
    i32 20, label %sw.bb82
    i32 25, label %sw.bb99
    i32 19, label %sw.bb107
    i32 21, label %sw.bb124
    i32 22, label %sw.bb141
    i32 23, label %sw.bb157
    i32 24, label %sw.bb173
  ], !dbg !513

sw.bb:                                            ; preds = %if.end3
  %17 = load ptr, ptr %resource.addr, align 8, !dbg !514
  %data = getelementptr inbounds %struct.acpi_resource, ptr %17, i32 0, i32 2, !dbg !517
  %descriptor_length = getelementptr inbounds %struct.acpi_resource_irq, ptr %data, i32 0, i32 0, !dbg !518
  %18 = load i8, ptr %descriptor_length, align 1, !dbg !518
  %conv6 = zext i8 %18 to i32, !dbg !514
  %cmp7 = icmp eq i32 %conv6, 2, !dbg !519
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !520

if.then9:                                         ; preds = %sw.bb
  %19 = load i16, ptr %total_size, align 2, !dbg !521
  %dec = add i16 %19, -1, !dbg !521
  store i16 %dec, ptr %total_size, align 2, !dbg !521
  br label %if.end10, !dbg !523

if.end10:                                         ; preds = %if.then9, %sw.bb
  br label %sw.epilog, !dbg !524

sw.bb11:                                          ; preds = %if.end3
  %20 = load ptr, ptr %resource.addr, align 8, !dbg !525
  %data12 = getelementptr inbounds %struct.acpi_resource, ptr %20, i32 0, i32 2, !dbg !527
  %descriptor_length13 = getelementptr inbounds %struct.acpi_resource_irq, ptr %data12, i32 0, i32 0, !dbg !528
  %21 = load i8, ptr %descriptor_length13, align 1, !dbg !528
  %conv14 = zext i8 %21 to i32, !dbg !525
  %cmp15 = icmp eq i32 %conv14, 0, !dbg !529
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !530

if.then17:                                        ; preds = %sw.bb11
  %22 = load i16, ptr %total_size, align 2, !dbg !531
  %dec18 = add i16 %22, -1, !dbg !531
  store i16 %dec18, ptr %total_size, align 2, !dbg !531
  br label %if.end19, !dbg !533

if.end19:                                         ; preds = %if.then17, %sw.bb11
  br label %sw.epilog, !dbg !534

sw.bb20:                                          ; preds = %if.end3
  %23 = load ptr, ptr %resource.addr, align 8, !dbg !535
  %data21 = getelementptr inbounds %struct.acpi_resource, ptr %23, i32 0, i32 2, !dbg !537
  %byte_length = getelementptr inbounds %struct.acpi_resource_vendor, ptr %data21, i32 0, i32 0, !dbg !538
  %24 = load i16, ptr %byte_length, align 1, !dbg !538
  %conv22 = zext i16 %24 to i32, !dbg !535
  %cmp23 = icmp sgt i32 %conv22, 7, !dbg !539
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !540

if.then25:                                        ; preds = %sw.bb20
  store i16 3, ptr %total_size, align 2, !dbg !541
  br label %if.end26, !dbg !543

if.end26:                                         ; preds = %if.then25, %sw.bb20
  %25 = load i16, ptr %total_size, align 2, !dbg !544
  %conv27 = zext i16 %25 to i32, !dbg !544
  %26 = load ptr, ptr %resource.addr, align 8, !dbg !545
  %data28 = getelementptr inbounds %struct.acpi_resource, ptr %26, i32 0, i32 2, !dbg !546
  %byte_length29 = getelementptr inbounds %struct.acpi_resource_vendor, ptr %data28, i32 0, i32 0, !dbg !547
  %27 = load i16, ptr %byte_length29, align 1, !dbg !547
  %conv30 = zext i16 %27 to i32, !dbg !545
  %add = add i32 %conv27, %conv30, !dbg !548
  %conv31 = trunc i32 %add to i16, !dbg !549
  store i16 %conv31, ptr %total_size, align 2, !dbg !550
  br label %sw.epilog, !dbg !551

sw.bb32:                                          ; preds = %if.end3
  %28 = load i64, ptr %aml_size_needed, align 8, !dbg !552
  %29 = load i16, ptr %total_size, align 2, !dbg !553
  %conv33 = zext i16 %29 to i64, !dbg !553
  %add34 = add i64 %28, %conv33, !dbg !554
  %30 = load ptr, ptr %size_needed.addr, align 8, !dbg !555
  store i64 %add34, ptr %30, align 8, !dbg !556
  store i32 0, ptr %retval, align 4, !dbg !557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !557

sw.bb35:                                          ; preds = %if.end3
  %31 = load i16, ptr %total_size, align 2, !dbg !558
  %conv36 = zext i16 %31 to i32, !dbg !558
  %32 = load ptr, ptr %resource.addr, align 8, !dbg !559
  %data37 = getelementptr inbounds %struct.acpi_resource, ptr %32, i32 0, i32 2, !dbg !560
  %resource_source = getelementptr inbounds %struct.acpi_resource_address16, ptr %data37, i32 0, i32 7, !dbg !561
  %call = call zeroext i16 @acpi_rs_struct_option_length(ptr noundef %resource_source) #6, !dbg !562
  %conv38 = zext i16 %call to i32, !dbg !562
  %add39 = add i32 %conv36, %conv38, !dbg !563
  %conv40 = trunc i32 %add39 to i16, !dbg !564
  store i16 %conv40, ptr %total_size, align 2, !dbg !565
  br label %sw.epilog, !dbg !566

sw.bb41:                                          ; preds = %if.end3
  %33 = load i16, ptr %total_size, align 2, !dbg !567
  %conv42 = zext i16 %33 to i32, !dbg !567
  %34 = load ptr, ptr %resource.addr, align 8, !dbg !568
  %data43 = getelementptr inbounds %struct.acpi_resource, ptr %34, i32 0, i32 2, !dbg !569
  %resource_source44 = getelementptr inbounds %struct.acpi_resource_address32, ptr %data43, i32 0, i32 7, !dbg !570
  %call45 = call zeroext i16 @acpi_rs_struct_option_length(ptr noundef %resource_source44) #6, !dbg !571
  %conv46 = zext i16 %call45 to i32, !dbg !571
  %add47 = add i32 %conv42, %conv46, !dbg !572
  %conv48 = trunc i32 %add47 to i16, !dbg !573
  store i16 %conv48, ptr %total_size, align 2, !dbg !574
  br label %sw.epilog, !dbg !575

sw.bb49:                                          ; preds = %if.end3
  %35 = load i16, ptr %total_size, align 2, !dbg !576
  %conv50 = zext i16 %35 to i32, !dbg !576
  %36 = load ptr, ptr %resource.addr, align 8, !dbg !577
  %data51 = getelementptr inbounds %struct.acpi_resource, ptr %36, i32 0, i32 2, !dbg !578
  %resource_source52 = getelementptr inbounds %struct.acpi_resource_address64, ptr %data51, i32 0, i32 7, !dbg !579
  %call53 = call zeroext i16 @acpi_rs_struct_option_length(ptr noundef %resource_source52) #6, !dbg !580
  %conv54 = zext i16 %call53 to i32, !dbg !580
  %add55 = add i32 %conv50, %conv54, !dbg !581
  %conv56 = trunc i32 %add55 to i16, !dbg !582
  store i16 %conv56, ptr %total_size, align 2, !dbg !583
  br label %sw.epilog, !dbg !584

sw.bb57:                                          ; preds = %if.end3
  %37 = load i16, ptr %total_size, align 2, !dbg !585
  %conv58 = zext i16 %37 to i32, !dbg !585
  %38 = load ptr, ptr %resource.addr, align 8, !dbg !586
  %data59 = getelementptr inbounds %struct.acpi_resource, ptr %38, i32 0, i32 2, !dbg !587
  %interrupt_count = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %data59, i32 0, i32 5, !dbg !588
  %39 = load i8, ptr %interrupt_count, align 1, !dbg !588
  %conv60 = zext i8 %39 to i32, !dbg !586
  %sub = sub i32 %conv60, 1, !dbg !589
  %mul = mul i32 %sub, 4, !dbg !590
  %add61 = add i32 %conv58, %mul, !dbg !591
  %40 = load ptr, ptr %resource.addr, align 8, !dbg !592
  %data62 = getelementptr inbounds %struct.acpi_resource, ptr %40, i32 0, i32 2, !dbg !593
  %resource_source63 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %data62, i32 0, i32 6, !dbg !594
  %call64 = call zeroext i16 @acpi_rs_struct_option_length(ptr noundef %resource_source63) #6, !dbg !595
  %conv65 = zext i16 %call64 to i32, !dbg !595
  %add66 = add i32 %add61, %conv65, !dbg !596
  %conv67 = trunc i32 %add66 to i16, !dbg !597
  store i16 %conv67, ptr %total_size, align 2, !dbg !598
  br label %sw.epilog, !dbg !599

sw.bb68:                                          ; preds = %if.end3
  %41 = load i16, ptr %total_size, align 2, !dbg !600
  %conv69 = zext i16 %41 to i32, !dbg !600
  %42 = load ptr, ptr %resource.addr, align 8, !dbg !601
  %data70 = getelementptr inbounds %struct.acpi_resource, ptr %42, i32 0, i32 2, !dbg !602
  %pin_table_length = getelementptr inbounds %struct.acpi_resource_gpio, ptr %data70, i32 0, i32 11, !dbg !603
  %43 = load i16, ptr %pin_table_length, align 1, !dbg !603
  %conv71 = zext i16 %43 to i32, !dbg !601
  %mul72 = mul i32 %conv71, 2, !dbg !604
  %add73 = add i32 %conv69, %mul72, !dbg !605
  %44 = load ptr, ptr %resource.addr, align 8, !dbg !606
  %data74 = getelementptr inbounds %struct.acpi_resource, ptr %44, i32 0, i32 2, !dbg !607
  %resource_source75 = getelementptr inbounds %struct.acpi_resource_gpio, ptr %data74, i32 0, i32 13, !dbg !608
  %string_length = getelementptr inbounds %struct.acpi_resource_source, ptr %resource_source75, i32 0, i32 1, !dbg !609
  %45 = load i16, ptr %string_length, align 1, !dbg !609
  %conv76 = zext i16 %45 to i32, !dbg !606
  %add77 = add i32 %add73, %conv76, !dbg !610
  %46 = load ptr, ptr %resource.addr, align 8, !dbg !611
  %data78 = getelementptr inbounds %struct.acpi_resource, ptr %46, i32 0, i32 2, !dbg !612
  %vendor_length = getelementptr inbounds %struct.acpi_resource_gpio, ptr %data78, i32 0, i32 12, !dbg !613
  %47 = load i16, ptr %vendor_length, align 1, !dbg !613
  %conv79 = zext i16 %47 to i32, !dbg !611
  %add80 = add i32 %add77, %conv79, !dbg !614
  %conv81 = trunc i32 %add80 to i16, !dbg !615
  store i16 %conv81, ptr %total_size, align 2, !dbg !616
  br label %sw.epilog, !dbg !617

sw.bb82:                                          ; preds = %if.end3
  %48 = load i16, ptr %total_size, align 2, !dbg !618
  %conv83 = zext i16 %48 to i32, !dbg !618
  %49 = load ptr, ptr %resource.addr, align 8, !dbg !619
  %data84 = getelementptr inbounds %struct.acpi_resource, ptr %49, i32 0, i32 2, !dbg !620
  %pin_table_length85 = getelementptr inbounds %struct.acpi_resource_pin_function, ptr %data84, i32 0, i32 4, !dbg !621
  %50 = load i16, ptr %pin_table_length85, align 1, !dbg !621
  %conv86 = zext i16 %50 to i32, !dbg !619
  %mul87 = mul i32 %conv86, 2, !dbg !622
  %add88 = add i32 %conv83, %mul87, !dbg !623
  %51 = load ptr, ptr %resource.addr, align 8, !dbg !624
  %data89 = getelementptr inbounds %struct.acpi_resource, ptr %51, i32 0, i32 2, !dbg !625
  %resource_source90 = getelementptr inbounds %struct.acpi_resource_pin_function, ptr %data89, i32 0, i32 6, !dbg !626
  %string_length91 = getelementptr inbounds %struct.acpi_resource_source, ptr %resource_source90, i32 0, i32 1, !dbg !627
  %52 = load i16, ptr %string_length91, align 1, !dbg !627
  %conv92 = zext i16 %52 to i32, !dbg !624
  %add93 = add i32 %add88, %conv92, !dbg !628
  %53 = load ptr, ptr %resource.addr, align 8, !dbg !629
  %data94 = getelementptr inbounds %struct.acpi_resource, ptr %53, i32 0, i32 2, !dbg !630
  %vendor_length95 = getelementptr inbounds %struct.acpi_resource_pin_function, ptr %data94, i32 0, i32 5, !dbg !631
  %54 = load i16, ptr %vendor_length95, align 1, !dbg !631
  %conv96 = zext i16 %54 to i32, !dbg !629
  %add97 = add i32 %add93, %conv96, !dbg !632
  %conv98 = trunc i32 %add97 to i16, !dbg !633
  store i16 %conv98, ptr %total_size, align 2, !dbg !634
  br label %sw.epilog, !dbg !635

sw.bb99:                                          ; preds = %if.end3
  %55 = load i16, ptr %total_size, align 2, !dbg !636
  %conv100 = zext i16 %55 to i32, !dbg !636
  %56 = load ptr, ptr %resource.addr, align 8, !dbg !637
  %data101 = getelementptr inbounds %struct.acpi_resource, ptr %56, i32 0, i32 2, !dbg !638
  %resource_source102 = getelementptr inbounds %struct.acpi_resource_clock_input, ptr %data101, i32 0, i32 5, !dbg !639
  %string_length103 = getelementptr inbounds %struct.acpi_resource_source, ptr %resource_source102, i32 0, i32 1, !dbg !640
  %57 = load i16, ptr %string_length103, align 1, !dbg !640
  %conv104 = zext i16 %57 to i32, !dbg !637
  %add105 = add i32 %conv100, %conv104, !dbg !641
  %conv106 = trunc i32 %add105 to i16, !dbg !642
  store i16 %conv106, ptr %total_size, align 2, !dbg !643
  br label %sw.epilog, !dbg !644

sw.bb107:                                         ; preds = %if.end3
  %58 = load ptr, ptr %resource.addr, align 8, !dbg !645
  %data108 = getelementptr inbounds %struct.acpi_resource, ptr %58, i32 0, i32 2, !dbg !646
  %type109 = getelementptr inbounds %struct.acpi_resource_common_serialbus, ptr %data108, i32 0, i32 1, !dbg !647
  %59 = load i8, ptr %type109, align 1, !dbg !647
  %idxprom110 = zext i8 %59 to i64, !dbg !648
  %arrayidx111 = getelementptr [0 x i8], ptr @acpi_gbl_aml_resource_serial_bus_sizes, i64 0, i64 %idxprom110, !dbg !648
  %60 = load i8, ptr %arrayidx111, align 1, !dbg !648
  %conv112 = zext i8 %60 to i16, !dbg !648
  store i16 %conv112, ptr %total_size, align 2, !dbg !649
  %61 = load i16, ptr %total_size, align 2, !dbg !650
  %conv113 = zext i16 %61 to i32, !dbg !650
  %62 = load ptr, ptr %resource.addr, align 8, !dbg !651
  %data114 = getelementptr inbounds %struct.acpi_resource, ptr %62, i32 0, i32 2, !dbg !652
  %resource_source115 = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, ptr %data114, i32 0, i32 8, !dbg !653
  %string_length116 = getelementptr inbounds %struct.acpi_resource_source, ptr %resource_source115, i32 0, i32 1, !dbg !654
  %63 = load i16, ptr %string_length116, align 1, !dbg !654
  %conv117 = zext i16 %63 to i32, !dbg !651
  %add118 = add i32 %conv113, %conv117, !dbg !655
  %64 = load ptr, ptr %resource.addr, align 8, !dbg !656
  %data119 = getelementptr inbounds %struct.acpi_resource, ptr %64, i32 0, i32 2, !dbg !657
  %vendor_length120 = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, ptr %data119, i32 0, i32 7, !dbg !658
  %65 = load i16, ptr %vendor_length120, align 1, !dbg !658
  %conv121 = zext i16 %65 to i32, !dbg !656
  %add122 = add i32 %add118, %conv121, !dbg !659
  %conv123 = trunc i32 %add122 to i16, !dbg !660
  store i16 %conv123, ptr %total_size, align 2, !dbg !661
  br label %sw.epilog, !dbg !662

sw.bb124:                                         ; preds = %if.end3
  %66 = load i16, ptr %total_size, align 2, !dbg !663
  %conv125 = zext i16 %66 to i32, !dbg !663
  %67 = load ptr, ptr %resource.addr, align 8, !dbg !664
  %data126 = getelementptr inbounds %struct.acpi_resource, ptr %67, i32 0, i32 2, !dbg !665
  %pin_table_length127 = getelementptr inbounds %struct.acpi_resource_pin_config, ptr %data126, i32 0, i32 5, !dbg !666
  %68 = load i16, ptr %pin_table_length127, align 1, !dbg !666
  %conv128 = zext i16 %68 to i32, !dbg !664
  %mul129 = mul i32 %conv128, 2, !dbg !667
  %add130 = add i32 %conv125, %mul129, !dbg !668
  %69 = load ptr, ptr %resource.addr, align 8, !dbg !669
  %data131 = getelementptr inbounds %struct.acpi_resource, ptr %69, i32 0, i32 2, !dbg !670
  %resource_source132 = getelementptr inbounds %struct.acpi_resource_pin_config, ptr %data131, i32 0, i32 7, !dbg !671
  %string_length133 = getelementptr inbounds %struct.acpi_resource_source, ptr %resource_source132, i32 0, i32 1, !dbg !672
  %70 = load i16, ptr %string_length133, align 1, !dbg !672
  %conv134 = zext i16 %70 to i32, !dbg !669
  %add135 = add i32 %add130, %conv134, !dbg !673
  %71 = load ptr, ptr %resource.addr, align 8, !dbg !674
  %data136 = getelementptr inbounds %struct.acpi_resource, ptr %71, i32 0, i32 2, !dbg !675
  %vendor_length137 = getelementptr inbounds %struct.acpi_resource_pin_config, ptr %data136, i32 0, i32 6, !dbg !676
  %72 = load i16, ptr %vendor_length137, align 1, !dbg !676
  %conv138 = zext i16 %72 to i32, !dbg !674
  %add139 = add i32 %add135, %conv138, !dbg !677
  %conv140 = trunc i32 %add139 to i16, !dbg !678
  store i16 %conv140, ptr %total_size, align 2, !dbg !679
  br label %sw.epilog, !dbg !680

sw.bb141:                                         ; preds = %if.end3
  %73 = load i16, ptr %total_size, align 2, !dbg !681
  %conv142 = zext i16 %73 to i32, !dbg !681
  %74 = load ptr, ptr %resource.addr, align 8, !dbg !682
  %data143 = getelementptr inbounds %struct.acpi_resource, ptr %74, i32 0, i32 2, !dbg !683
  %pin_table_length144 = getelementptr inbounds %struct.acpi_resource_pin_group, ptr %data143, i32 0, i32 2, !dbg !684
  %75 = load i16, ptr %pin_table_length144, align 1, !dbg !684
  %conv145 = zext i16 %75 to i32, !dbg !682
  %mul146 = mul i32 %conv145, 2, !dbg !685
  %add147 = add i32 %conv142, %mul146, !dbg !686
  %76 = load ptr, ptr %resource.addr, align 8, !dbg !687
  %data148 = getelementptr inbounds %struct.acpi_resource, ptr %76, i32 0, i32 2, !dbg !688
  %resource_label = getelementptr inbounds %struct.acpi_resource_pin_group, ptr %data148, i32 0, i32 5, !dbg !689
  %string_length149 = getelementptr inbounds %struct.acpi_resource_label, ptr %resource_label, i32 0, i32 0, !dbg !690
  %77 = load i16, ptr %string_length149, align 1, !dbg !690
  %conv150 = zext i16 %77 to i32, !dbg !687
  %add151 = add i32 %add147, %conv150, !dbg !691
  %78 = load ptr, ptr %resource.addr, align 8, !dbg !692
  %data152 = getelementptr inbounds %struct.acpi_resource, ptr %78, i32 0, i32 2, !dbg !693
  %vendor_length153 = getelementptr inbounds %struct.acpi_resource_pin_group, ptr %data152, i32 0, i32 3, !dbg !694
  %79 = load i16, ptr %vendor_length153, align 1, !dbg !694
  %conv154 = zext i16 %79 to i32, !dbg !692
  %add155 = add i32 %add151, %conv154, !dbg !695
  %conv156 = trunc i32 %add155 to i16, !dbg !696
  store i16 %conv156, ptr %total_size, align 2, !dbg !697
  br label %sw.epilog, !dbg !698

sw.bb157:                                         ; preds = %if.end3
  %80 = load i16, ptr %total_size, align 2, !dbg !699
  %conv158 = zext i16 %80 to i32, !dbg !699
  %81 = load ptr, ptr %resource.addr, align 8, !dbg !700
  %data159 = getelementptr inbounds %struct.acpi_resource, ptr %81, i32 0, i32 2, !dbg !701
  %resource_source160 = getelementptr inbounds %struct.acpi_resource_pin_group_function, ptr %data159, i32 0, i32 5, !dbg !702
  %string_length161 = getelementptr inbounds %struct.acpi_resource_source, ptr %resource_source160, i32 0, i32 1, !dbg !703
  %82 = load i16, ptr %string_length161, align 1, !dbg !703
  %conv162 = zext i16 %82 to i32, !dbg !700
  %add163 = add i32 %conv158, %conv162, !dbg !704
  %83 = load ptr, ptr %resource.addr, align 8, !dbg !705
  %data164 = getelementptr inbounds %struct.acpi_resource, ptr %83, i32 0, i32 2, !dbg !706
  %resource_source_label = getelementptr inbounds %struct.acpi_resource_pin_group_function, ptr %data164, i32 0, i32 6, !dbg !707
  %string_length165 = getelementptr inbounds %struct.acpi_resource_label, ptr %resource_source_label, i32 0, i32 0, !dbg !708
  %84 = load i16, ptr %string_length165, align 1, !dbg !708
  %conv166 = zext i16 %84 to i32, !dbg !705
  %add167 = add i32 %add163, %conv166, !dbg !709
  %85 = load ptr, ptr %resource.addr, align 8, !dbg !710
  %data168 = getelementptr inbounds %struct.acpi_resource, ptr %85, i32 0, i32 2, !dbg !711
  %vendor_length169 = getelementptr inbounds %struct.acpi_resource_pin_group_function, ptr %data168, i32 0, i32 4, !dbg !712
  %86 = load i16, ptr %vendor_length169, align 1, !dbg !712
  %conv170 = zext i16 %86 to i32, !dbg !710
  %add171 = add i32 %add167, %conv170, !dbg !713
  %conv172 = trunc i32 %add171 to i16, !dbg !714
  store i16 %conv172, ptr %total_size, align 2, !dbg !715
  br label %sw.epilog, !dbg !716

sw.bb173:                                         ; preds = %if.end3
  %87 = load i16, ptr %total_size, align 2, !dbg !717
  %conv174 = zext i16 %87 to i32, !dbg !717
  %88 = load ptr, ptr %resource.addr, align 8, !dbg !718
  %data175 = getelementptr inbounds %struct.acpi_resource, ptr %88, i32 0, i32 2, !dbg !719
  %resource_source176 = getelementptr inbounds %struct.acpi_resource_pin_group_config, ptr %data175, i32 0, i32 6, !dbg !720
  %string_length177 = getelementptr inbounds %struct.acpi_resource_source, ptr %resource_source176, i32 0, i32 1, !dbg !721
  %89 = load i16, ptr %string_length177, align 1, !dbg !721
  %conv178 = zext i16 %89 to i32, !dbg !718
  %add179 = add i32 %conv174, %conv178, !dbg !722
  %90 = load ptr, ptr %resource.addr, align 8, !dbg !723
  %data180 = getelementptr inbounds %struct.acpi_resource, ptr %90, i32 0, i32 2, !dbg !724
  %resource_source_label181 = getelementptr inbounds %struct.acpi_resource_pin_group_config, ptr %data180, i32 0, i32 7, !dbg !725
  %string_length182 = getelementptr inbounds %struct.acpi_resource_label, ptr %resource_source_label181, i32 0, i32 0, !dbg !726
  %91 = load i16, ptr %string_length182, align 1, !dbg !726
  %conv183 = zext i16 %91 to i32, !dbg !723
  %add184 = add i32 %add179, %conv183, !dbg !727
  %92 = load ptr, ptr %resource.addr, align 8, !dbg !728
  %data185 = getelementptr inbounds %struct.acpi_resource, ptr %92, i32 0, i32 2, !dbg !729
  %vendor_length186 = getelementptr inbounds %struct.acpi_resource_pin_group_config, ptr %data185, i32 0, i32 5, !dbg !730
  %93 = load i16, ptr %vendor_length186, align 1, !dbg !730
  %conv187 = zext i16 %93 to i32, !dbg !728
  %add188 = add i32 %add184, %conv187, !dbg !731
  %conv189 = trunc i32 %add188 to i16, !dbg !732
  store i16 %conv189, ptr %total_size, align 2, !dbg !733
  br label %sw.epilog, !dbg !734

sw.default:                                       ; preds = %if.end3
  br label %sw.epilog, !dbg !735

sw.epilog:                                        ; preds = %sw.default, %sw.bb173, %sw.bb157, %sw.bb141, %sw.bb124, %sw.bb107, %sw.bb99, %sw.bb82, %sw.bb68, %sw.bb57, %sw.bb49, %sw.bb41, %sw.bb35, %if.end26, %if.end19, %if.end10
  %94 = load i16, ptr %total_size, align 2, !dbg !736
  %conv190 = zext i16 %94 to i64, !dbg !736
  %95 = load i64, ptr %aml_size_needed, align 8, !dbg !737
  %add191 = add i64 %95, %conv190, !dbg !737
  store i64 %add191, ptr %aml_size_needed, align 8, !dbg !737
  %96 = load ptr, ptr %resource.addr, align 8, !dbg !738
  %97 = ptrtoint ptr %96 to i64, !dbg !738
  %98 = inttoptr i64 %97 to ptr, !dbg !738
  %99 = load ptr, ptr %resource.addr, align 8, !dbg !738
  %length192 = getelementptr inbounds %struct.acpi_resource, ptr %99, i32 0, i32 1, !dbg !738
  %100 = load i32, ptr %length192, align 1, !dbg !738
  %conv193 = zext i32 %100 to i64, !dbg !738
  %add.ptr194 = getelementptr i8, ptr %98, i64 %conv193, !dbg !738
  %101 = ptrtoint ptr %add.ptr194 to i64, !dbg !738
  %102 = inttoptr i64 %101 to ptr, !dbg !738
  store ptr %102, ptr %resource.addr, align 8, !dbg !739
  br label %while.cond, !dbg !489, !llvm.loop !740

while.end:                                        ; preds = %while.cond
  store i32 12316, ptr %retval, align 4, !dbg !744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !744

cleanup:                                          ; preds = %while.end, %sw.bb32, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %total_size) #5, !dbg !745
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource_end) #5, !dbg !745
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_size_needed) #5, !dbg !745
  %103 = load i32, ptr %retval, align 4, !dbg !745
  ret i32 %103, !dbg !745
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @acpi_rs_struct_option_length(ptr noundef %resource_source) #0 align 16 !dbg !746 {
entry:
  %retval = alloca i16, align 2
  %resource_source.addr = alloca ptr, align 8
  store ptr %resource_source, ptr %resource_source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource_source.addr, metadata !751, metadata !DIExpression()), !dbg !752
  %0 = load ptr, ptr %resource_source.addr, align 8, !dbg !753
  %string_ptr = getelementptr inbounds %struct.acpi_resource_source, ptr %0, i32 0, i32 2, !dbg !755
  %1 = load ptr, ptr %string_ptr, align 1, !dbg !755
  %tobool = icmp ne ptr %1, null, !dbg !753
  br i1 %tobool, label %if.then, label %if.end, !dbg !756

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %resource_source.addr, align 8, !dbg !757
  %string_length = getelementptr inbounds %struct.acpi_resource_source, ptr %2, i32 0, i32 1, !dbg !759
  %3 = load i16, ptr %string_length, align 1, !dbg !759
  %conv = zext i16 %3 to i32, !dbg !757
  %add = add i32 %conv, 1, !dbg !760
  %conv1 = trunc i32 %add to i16, !dbg !761
  store i16 %conv1, ptr %retval, align 2, !dbg !762
  br label %return, !dbg !762

if.end:                                           ; preds = %entry
  store i16 0, ptr %retval, align 2, !dbg !763
  br label %return, !dbg !763

return:                                           ; preds = %if.end, %if.then
  %4 = load i16, ptr %retval, align 2, !dbg !764
  ret i16 %4, !dbg !764
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_get_list_length(ptr noundef %aml_buffer, i32 noundef %aml_buffer_length, ptr noundef %size_needed) #0 align 16 !dbg !765 {
entry:
  %retval = alloca i32, align 4
  %aml_buffer.addr = alloca ptr, align 8
  %aml_buffer_length.addr = alloca i32, align 4
  %size_needed.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %end_aml = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %buffer_size = alloca i32, align 4
  %temp16 = alloca i16, align 2
  %resource_length = alloca i16, align 2
  %extra_struct_bytes = alloca i32, align 4
  %resource_index = alloca i8, align 1
  %minimum_aml_resource_length = alloca i8, align 1
  %aml_resource = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %common_serial_bus = alloca %struct.aml_resource_common_serialbus, align 1
  %common_serial_bus146 = alloca %struct.aml_resource_common_serialbus, align 1
  store ptr %aml_buffer, ptr %aml_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml_buffer.addr, metadata !769, metadata !DIExpression()), !dbg !1145
  store i32 %aml_buffer_length, ptr %aml_buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %aml_buffer_length.addr, metadata !770, metadata !DIExpression()), !dbg !1146
  store ptr %size_needed, ptr %size_needed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size_needed.addr, metadata !771, metadata !DIExpression()), !dbg !1147
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1148
  call void @llvm.dbg.declare(metadata ptr %status, metadata !772, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_aml) #5, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %end_aml, metadata !773, metadata !DIExpression()), !dbg !1151
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #5, !dbg !1152
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !774, metadata !DIExpression()), !dbg !1153
  call void @llvm.lifetime.start.p0(i64 4, ptr %buffer_size) #5, !dbg !1154
  call void @llvm.dbg.declare(metadata ptr %buffer_size, metadata !775, metadata !DIExpression()), !dbg !1155
  call void @llvm.lifetime.start.p0(i64 2, ptr %temp16) #5, !dbg !1156
  call void @llvm.dbg.declare(metadata ptr %temp16, metadata !776, metadata !DIExpression()), !dbg !1157
  call void @llvm.lifetime.start.p0(i64 2, ptr %resource_length) #5, !dbg !1158
  call void @llvm.dbg.declare(metadata ptr %resource_length, metadata !777, metadata !DIExpression()), !dbg !1159
  call void @llvm.lifetime.start.p0(i64 4, ptr %extra_struct_bytes) #5, !dbg !1160
  call void @llvm.dbg.declare(metadata ptr %extra_struct_bytes, metadata !778, metadata !DIExpression()), !dbg !1161
  call void @llvm.lifetime.start.p0(i64 1, ptr %resource_index) #5, !dbg !1162
  call void @llvm.dbg.declare(metadata ptr %resource_index, metadata !779, metadata !DIExpression()), !dbg !1163
  call void @llvm.lifetime.start.p0(i64 1, ptr %minimum_aml_resource_length) #5, !dbg !1164
  call void @llvm.dbg.declare(metadata ptr %minimum_aml_resource_length, metadata !780, metadata !DIExpression()), !dbg !1165
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_resource) #5, !dbg !1166
  call void @llvm.dbg.declare(metadata ptr %aml_resource, metadata !781, metadata !DIExpression()), !dbg !1167
  %0 = load ptr, ptr %size_needed.addr, align 8, !dbg !1168
  store i64 16, ptr %0, align 8, !dbg !1169
  %1 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !1170
  %2 = load i32, ptr %aml_buffer_length.addr, align 4, !dbg !1171
  %idx.ext = zext i32 %2 to i64, !dbg !1172
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext, !dbg !1172
  store ptr %add.ptr, ptr %end_aml, align 8, !dbg !1173
  br label %while.cond, !dbg !1174

while.cond:                                       ; preds = %if.end157, %entry
  %3 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !1175
  %4 = load ptr, ptr %end_aml, align 8, !dbg !1176
  %cmp = icmp ult ptr %3, %4, !dbg !1177
  br i1 %cmp, label %while.body, label %while.end, !dbg !1174

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !1178
  %call = call i32 @acpi_ut_validate_resource(ptr noundef null, ptr noundef %5, ptr noundef %resource_index) #6, !dbg !1179
  store i32 %call, ptr %status, align 4, !dbg !1180
  %6 = load i32, ptr %status, align 4, !dbg !1181
  %tobool = icmp ne i32 %6, 0, !dbg !1181
  br i1 %tobool, label %if.then, label %if.end, !dbg !1183

if.then:                                          ; preds = %while.body
  %7 = load i32, ptr %status, align 4, !dbg !1184
  store i32 %7, ptr %retval, align 4, !dbg !1184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1184

if.end:                                           ; preds = %while.body
  %8 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !1186
  store ptr %8, ptr %aml_resource, align 8, !dbg !1187
  %9 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !1188
  %call1 = call zeroext i16 @acpi_ut_get_resource_length(ptr noundef %9) #6, !dbg !1189
  store i16 %call1, ptr %resource_length, align 2, !dbg !1190
  %10 = load i8, ptr %resource_index, align 1, !dbg !1191
  %idxprom = zext i8 %10 to i64, !dbg !1192
  %arrayidx = getelementptr [0 x i8], ptr @acpi_gbl_resource_aml_sizes, i64 0, i64 %idxprom, !dbg !1192
  %11 = load i8, ptr %arrayidx, align 1, !dbg !1192
  store i8 %11, ptr %minimum_aml_resource_length, align 1, !dbg !1193
  store i32 0, ptr %extra_struct_bytes, align 4, !dbg !1194
  %12 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !1195
  %13 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !1196
  %call2 = call zeroext i8 @acpi_ut_get_resource_header_length(ptr noundef %13) #6, !dbg !1197
  %conv = zext i8 %call2 to i32, !dbg !1197
  %idx.ext3 = sext i32 %conv to i64, !dbg !1198
  %add.ptr4 = getelementptr i8, ptr %12, i64 %idx.ext3, !dbg !1198
  store ptr %add.ptr4, ptr %buffer, align 8, !dbg !1199
  %14 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !1200
  %call5 = call zeroext i8 @acpi_ut_get_resource_type(ptr noundef %14) #6, !dbg !1201
  %conv6 = zext i8 %call5 to i32, !dbg !1201
  switch i32 %conv6, label %sw.default [
    i32 32, label %sw.bb
    i32 40, label %sw.bb9
    i32 112, label %sw.bb13
    i32 132, label %sw.bb13
    i32 120, label %sw.bb18
    i32 135, label %sw.bb19
    i32 136, label %sw.bb19
    i32 138, label %sw.bb19
    i32 137, label %sw.bb23
    i32 140, label %sw.bb32
    i32 141, label %sw.bb52
    i32 142, label %sw.bb76
    i32 143, label %sw.bb84
    i32 144, label %sw.bb108
    i32 145, label %sw.bb118
    i32 146, label %sw.bb127
    i32 147, label %sw.bb137
  ], !dbg !1202

sw.bb:                                            ; preds = %if.end
  %15 = load ptr, ptr %buffer, align 8, !dbg !1203
  %16 = load i16, ptr %15, align 2, !dbg !1203
  store i16 %16, ptr %temp16, align 2, !dbg !1203
  %17 = load i16, ptr %temp16, align 2, !dbg !1204
  %call7 = call zeroext i8 @acpi_rs_count_set_bits(i16 noundef zeroext %17) #6, !dbg !1205
  %conv8 = zext i8 %call7 to i32, !dbg !1205
  store i32 %conv8, ptr %extra_struct_bytes, align 4, !dbg !1206
  br label %sw.epilog, !dbg !1207

sw.bb9:                                           ; preds = %if.end
  %18 = load ptr, ptr %buffer, align 8, !dbg !1208
  %19 = load i8, ptr %18, align 1, !dbg !1209
  %conv10 = zext i8 %19 to i16, !dbg !1209
  %call11 = call zeroext i8 @acpi_rs_count_set_bits(i16 noundef zeroext %conv10) #6, !dbg !1210
  %conv12 = zext i8 %call11 to i32, !dbg !1210
  store i32 %conv12, ptr %extra_struct_bytes, align 4, !dbg !1211
  br label %sw.epilog, !dbg !1212

sw.bb13:                                          ; preds = %if.end, %if.end
  %20 = load i16, ptr %resource_length, align 2, !dbg !1213
  %conv14 = zext i16 %20 to i32, !dbg !1213
  store i32 %conv14, ptr %extra_struct_bytes, align 4, !dbg !1214
  %21 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1215
  %tobool15 = icmp ne i32 %21, 0, !dbg !1215
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1217

if.then16:                                        ; preds = %sw.bb13
  %22 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1218
  %dec = add i32 %22, -1, !dbg !1218
  store i32 %dec, ptr %extra_struct_bytes, align 4, !dbg !1218
  br label %if.end17, !dbg !1220

if.end17:                                         ; preds = %if.then16, %sw.bb13
  br label %sw.epilog, !dbg !1221

sw.bb18:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1222

sw.bb19:                                          ; preds = %if.end, %if.end, %if.end
  %23 = load i16, ptr %resource_length, align 2, !dbg !1223
  %conv20 = zext i16 %23 to i32, !dbg !1223
  %24 = load i8, ptr %minimum_aml_resource_length, align 1, !dbg !1224
  %conv21 = zext i8 %24 to i32, !dbg !1224
  %call22 = call i32 @acpi_rs_stream_option_length(i32 noundef %conv20, i32 noundef %conv21) #6, !dbg !1225
  store i32 %call22, ptr %extra_struct_bytes, align 4, !dbg !1226
  br label %sw.epilog, !dbg !1227

sw.bb23:                                          ; preds = %if.end
  %25 = load ptr, ptr %buffer, align 8, !dbg !1228
  %arrayidx24 = getelementptr i8, ptr %25, i64 1, !dbg !1228
  %26 = load i8, ptr %arrayidx24, align 1, !dbg !1228
  %conv25 = zext i8 %26 to i32, !dbg !1228
  %sub = sub i32 %conv25, 1, !dbg !1229
  %conv26 = sext i32 %sub to i64, !dbg !1230
  %mul = mul i64 %conv26, 4, !dbg !1231
  %conv27 = trunc i64 %mul to i32, !dbg !1230
  store i32 %conv27, ptr %extra_struct_bytes, align 4, !dbg !1232
  %27 = load i16, ptr %resource_length, align 2, !dbg !1233
  %conv28 = zext i16 %27 to i32, !dbg !1233
  %28 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1234
  %sub29 = sub i32 %conv28, %28, !dbg !1235
  %29 = load i8, ptr %minimum_aml_resource_length, align 1, !dbg !1236
  %conv30 = zext i8 %29 to i32, !dbg !1236
  %call31 = call i32 @acpi_rs_stream_option_length(i32 noundef %sub29, i32 noundef %conv30) #6, !dbg !1237
  %30 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1238
  %add = add i32 %30, %call31, !dbg !1238
  store i32 %add, ptr %extra_struct_bytes, align 4, !dbg !1238
  br label %sw.epilog, !dbg !1239

sw.bb32:                                          ; preds = %if.end
  %31 = load ptr, ptr %aml_resource, align 8, !dbg !1240
  %vendor_length = getelementptr inbounds %struct.aml_resource_gpio, ptr %31, i32 0, i32 13, !dbg !1242
  %32 = load i16, ptr %vendor_length, align 1, !dbg !1242
  %tobool33 = icmp ne i16 %32, 0, !dbg !1240
  br i1 %tobool33, label %if.then34, label %if.else, !dbg !1243

if.then34:                                        ; preds = %sw.bb32
  %33 = load ptr, ptr %aml_resource, align 8, !dbg !1244
  %vendor_offset = getelementptr inbounds %struct.aml_resource_gpio, ptr %33, i32 0, i32 12, !dbg !1246
  %34 = load i16, ptr %vendor_offset, align 1, !dbg !1246
  %conv35 = zext i16 %34 to i32, !dbg !1244
  %35 = load ptr, ptr %aml_resource, align 8, !dbg !1247
  %pin_table_offset = getelementptr inbounds %struct.aml_resource_gpio, ptr %35, i32 0, i32 9, !dbg !1248
  %36 = load i16, ptr %pin_table_offset, align 2, !dbg !1248
  %conv36 = zext i16 %36 to i32, !dbg !1247
  %sub37 = sub i32 %conv35, %conv36, !dbg !1249
  %37 = load ptr, ptr %aml_resource, align 8, !dbg !1250
  %vendor_length38 = getelementptr inbounds %struct.aml_resource_gpio, ptr %37, i32 0, i32 13, !dbg !1251
  %38 = load i16, ptr %vendor_length38, align 1, !dbg !1251
  %conv39 = zext i16 %38 to i32, !dbg !1250
  %add40 = add i32 %sub37, %conv39, !dbg !1252
  %39 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1253
  %add41 = add i32 %39, %add40, !dbg !1253
  store i32 %add41, ptr %extra_struct_bytes, align 4, !dbg !1253
  br label %if.end51, !dbg !1254

if.else:                                          ; preds = %sw.bb32
  %40 = load ptr, ptr %aml_resource, align 8, !dbg !1255
  %resource_length42 = getelementptr inbounds %struct.aml_resource_large_header, ptr %40, i32 0, i32 1, !dbg !1257
  %41 = load i16, ptr %resource_length42, align 1, !dbg !1257
  %conv43 = zext i16 %41 to i64, !dbg !1255
  %add44 = add i64 %conv43, 3, !dbg !1258
  %42 = load ptr, ptr %aml_resource, align 8, !dbg !1259
  %pin_table_offset45 = getelementptr inbounds %struct.aml_resource_gpio, ptr %42, i32 0, i32 9, !dbg !1260
  %43 = load i16, ptr %pin_table_offset45, align 2, !dbg !1260
  %conv46 = zext i16 %43 to i64, !dbg !1259
  %sub47 = sub i64 %add44, %conv46, !dbg !1261
  %44 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1262
  %conv48 = zext i32 %44 to i64, !dbg !1262
  %add49 = add i64 %conv48, %sub47, !dbg !1262
  %conv50 = trunc i64 %add49 to i32, !dbg !1262
  store i32 %conv50, ptr %extra_struct_bytes, align 4, !dbg !1262
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then34
  br label %sw.epilog, !dbg !1263

sw.bb52:                                          ; preds = %if.end
  %45 = load ptr, ptr %aml_resource, align 8, !dbg !1264
  %vendor_length53 = getelementptr inbounds %struct.aml_resource_pin_function, ptr %45, i32 0, i32 10, !dbg !1266
  %46 = load i16, ptr %vendor_length53, align 4, !dbg !1266
  %tobool54 = icmp ne i16 %46, 0, !dbg !1264
  br i1 %tobool54, label %if.then55, label %if.else65, !dbg !1267

if.then55:                                        ; preds = %sw.bb52
  %47 = load ptr, ptr %aml_resource, align 8, !dbg !1268
  %vendor_offset56 = getelementptr inbounds %struct.aml_resource_pin_function, ptr %47, i32 0, i32 9, !dbg !1270
  %48 = load i16, ptr %vendor_offset56, align 2, !dbg !1270
  %conv57 = zext i16 %48 to i32, !dbg !1268
  %49 = load ptr, ptr %aml_resource, align 8, !dbg !1271
  %pin_table_offset58 = getelementptr inbounds %struct.aml_resource_pin_function, ptr %49, i32 0, i32 6, !dbg !1272
  %50 = load i16, ptr %pin_table_offset58, align 1, !dbg !1272
  %conv59 = zext i16 %50 to i32, !dbg !1271
  %sub60 = sub i32 %conv57, %conv59, !dbg !1273
  %51 = load ptr, ptr %aml_resource, align 8, !dbg !1274
  %vendor_length61 = getelementptr inbounds %struct.aml_resource_pin_function, ptr %51, i32 0, i32 10, !dbg !1275
  %52 = load i16, ptr %vendor_length61, align 4, !dbg !1275
  %conv62 = zext i16 %52 to i32, !dbg !1274
  %add63 = add i32 %sub60, %conv62, !dbg !1276
  %53 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1277
  %add64 = add i32 %53, %add63, !dbg !1277
  store i32 %add64, ptr %extra_struct_bytes, align 4, !dbg !1277
  br label %if.end75, !dbg !1278

if.else65:                                        ; preds = %sw.bb52
  %54 = load ptr, ptr %aml_resource, align 8, !dbg !1279
  %resource_length66 = getelementptr inbounds %struct.aml_resource_large_header, ptr %54, i32 0, i32 1, !dbg !1281
  %55 = load i16, ptr %resource_length66, align 1, !dbg !1281
  %conv67 = zext i16 %55 to i64, !dbg !1279
  %add68 = add i64 %conv67, 3, !dbg !1282
  %56 = load ptr, ptr %aml_resource, align 8, !dbg !1283
  %pin_table_offset69 = getelementptr inbounds %struct.aml_resource_pin_function, ptr %56, i32 0, i32 6, !dbg !1284
  %57 = load i16, ptr %pin_table_offset69, align 1, !dbg !1284
  %conv70 = zext i16 %57 to i64, !dbg !1283
  %sub71 = sub i64 %add68, %conv70, !dbg !1285
  %58 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1286
  %conv72 = zext i32 %58 to i64, !dbg !1286
  %add73 = add i64 %conv72, %sub71, !dbg !1286
  %conv74 = trunc i64 %add73 to i32, !dbg !1286
  store i32 %conv74, ptr %extra_struct_bytes, align 4, !dbg !1286
  br label %if.end75

if.end75:                                         ; preds = %if.else65, %if.then55
  br label %sw.epilog, !dbg !1287

sw.bb76:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr %common_serial_bus) #5, !dbg !1288
  call void @llvm.dbg.declare(metadata ptr %common_serial_bus, metadata !1138, metadata !DIExpression()), !dbg !1289
  %59 = load ptr, ptr %aml_resource, align 8, !dbg !1290
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %common_serial_bus, ptr align 4 %59, i64 12, i1 false), !dbg !1291
  %type = getelementptr inbounds %struct.aml_resource_common_serialbus, ptr %common_serial_bus, i32 0, i32 4, !dbg !1292
  %60 = load i8, ptr %type, align 1, !dbg !1292
  %idxprom77 = zext i8 %60 to i64, !dbg !1293
  %arrayidx78 = getelementptr [0 x i8], ptr @acpi_gbl_resource_aml_serial_bus_sizes, i64 0, i64 %idxprom77, !dbg !1293
  %61 = load i8, ptr %arrayidx78, align 1, !dbg !1293
  store i8 %61, ptr %minimum_aml_resource_length, align 1, !dbg !1294
  %resource_length79 = getelementptr inbounds %struct.aml_resource_common_serialbus, ptr %common_serial_bus, i32 0, i32 1, !dbg !1295
  %62 = load i16, ptr %resource_length79, align 1, !dbg !1295
  %conv80 = zext i16 %62 to i32, !dbg !1296
  %63 = load i8, ptr %minimum_aml_resource_length, align 1, !dbg !1297
  %conv81 = zext i8 %63 to i32, !dbg !1297
  %sub82 = sub i32 %conv80, %conv81, !dbg !1298
  %64 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1299
  %add83 = add i32 %64, %sub82, !dbg !1299
  store i32 %add83, ptr %extra_struct_bytes, align 4, !dbg !1299
  store i32 4, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr %common_serial_bus) #5, !dbg !1300
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end
  %65 = load ptr, ptr %aml_resource, align 8, !dbg !1301
  %vendor_length85 = getelementptr inbounds %struct.aml_resource_pin_config, ptr %65, i32 0, i32 10, !dbg !1303
  %66 = load i16, ptr %vendor_length85, align 2, !dbg !1303
  %tobool86 = icmp ne i16 %66, 0, !dbg !1301
  br i1 %tobool86, label %if.then87, label %if.else97, !dbg !1304

if.then87:                                        ; preds = %sw.bb84
  %67 = load ptr, ptr %aml_resource, align 8, !dbg !1305
  %vendor_offset88 = getelementptr inbounds %struct.aml_resource_pin_config, ptr %67, i32 0, i32 9, !dbg !1307
  %68 = load i16, ptr %vendor_offset88, align 4, !dbg !1307
  %conv89 = zext i16 %68 to i32, !dbg !1305
  %69 = load ptr, ptr %aml_resource, align 8, !dbg !1308
  %pin_table_offset90 = getelementptr inbounds %struct.aml_resource_pin_config, ptr %69, i32 0, i32 6, !dbg !1309
  %70 = load i16, ptr %pin_table_offset90, align 1, !dbg !1309
  %conv91 = zext i16 %70 to i32, !dbg !1308
  %sub92 = sub i32 %conv89, %conv91, !dbg !1310
  %71 = load ptr, ptr %aml_resource, align 8, !dbg !1311
  %vendor_length93 = getelementptr inbounds %struct.aml_resource_pin_config, ptr %71, i32 0, i32 10, !dbg !1312
  %72 = load i16, ptr %vendor_length93, align 2, !dbg !1312
  %conv94 = zext i16 %72 to i32, !dbg !1311
  %add95 = add i32 %sub92, %conv94, !dbg !1313
  %73 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1314
  %add96 = add i32 %73, %add95, !dbg !1314
  store i32 %add96, ptr %extra_struct_bytes, align 4, !dbg !1314
  br label %if.end107, !dbg !1315

if.else97:                                        ; preds = %sw.bb84
  %74 = load ptr, ptr %aml_resource, align 8, !dbg !1316
  %resource_length98 = getelementptr inbounds %struct.aml_resource_large_header, ptr %74, i32 0, i32 1, !dbg !1318
  %75 = load i16, ptr %resource_length98, align 1, !dbg !1318
  %conv99 = zext i16 %75 to i64, !dbg !1316
  %add100 = add i64 %conv99, 3, !dbg !1319
  %76 = load ptr, ptr %aml_resource, align 8, !dbg !1320
  %pin_table_offset101 = getelementptr inbounds %struct.aml_resource_pin_config, ptr %76, i32 0, i32 6, !dbg !1321
  %77 = load i16, ptr %pin_table_offset101, align 1, !dbg !1321
  %conv102 = zext i16 %77 to i64, !dbg !1320
  %sub103 = sub i64 %add100, %conv102, !dbg !1322
  %78 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1323
  %conv104 = zext i32 %78 to i64, !dbg !1323
  %add105 = add i64 %conv104, %sub103, !dbg !1323
  %conv106 = trunc i64 %add105 to i32, !dbg !1323
  store i32 %conv106, ptr %extra_struct_bytes, align 4, !dbg !1323
  br label %if.end107

if.end107:                                        ; preds = %if.else97, %if.then87
  br label %sw.epilog, !dbg !1324

sw.bb108:                                         ; preds = %if.end
  %79 = load ptr, ptr %aml_resource, align 8, !dbg !1325
  %vendor_offset109 = getelementptr inbounds %struct.aml_resource_pin_group, ptr %79, i32 0, i32 6, !dbg !1326
  %80 = load i16, ptr %vendor_offset109, align 2, !dbg !1326
  %conv110 = zext i16 %80 to i32, !dbg !1325
  %81 = load ptr, ptr %aml_resource, align 8, !dbg !1327
  %pin_table_offset111 = getelementptr inbounds %struct.aml_resource_pin_group, ptr %81, i32 0, i32 4, !dbg !1328
  %82 = load i16, ptr %pin_table_offset111, align 2, !dbg !1328
  %conv112 = zext i16 %82 to i32, !dbg !1327
  %sub113 = sub i32 %conv110, %conv112, !dbg !1329
  %83 = load ptr, ptr %aml_resource, align 8, !dbg !1330
  %vendor_length114 = getelementptr inbounds %struct.aml_resource_pin_group, ptr %83, i32 0, i32 7, !dbg !1331
  %84 = load i16, ptr %vendor_length114, align 4, !dbg !1331
  %conv115 = zext i16 %84 to i32, !dbg !1330
  %add116 = add i32 %sub113, %conv115, !dbg !1332
  %85 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1333
  %add117 = add i32 %85, %add116, !dbg !1333
  store i32 %add117, ptr %extra_struct_bytes, align 4, !dbg !1333
  br label %sw.epilog, !dbg !1334

sw.bb118:                                         ; preds = %if.end
  %86 = load ptr, ptr %aml_resource, align 8, !dbg !1335
  %vendor_offset119 = getelementptr inbounds %struct.aml_resource_pin_group_function, ptr %86, i32 0, i32 8, !dbg !1336
  %87 = load i16, ptr %vendor_offset119, align 1, !dbg !1336
  %conv120 = zext i16 %87 to i32, !dbg !1335
  %88 = load ptr, ptr %aml_resource, align 8, !dbg !1337
  %res_source_offset = getelementptr inbounds %struct.aml_resource_pin_group_function, ptr %88, i32 0, i32 6, !dbg !1338
  %89 = load i16, ptr %res_source_offset, align 1, !dbg !1338
  %conv121 = zext i16 %89 to i32, !dbg !1337
  %sub122 = sub i32 %conv120, %conv121, !dbg !1339
  %90 = load ptr, ptr %aml_resource, align 8, !dbg !1340
  %vendor_length123 = getelementptr inbounds %struct.aml_resource_pin_group_function, ptr %90, i32 0, i32 9, !dbg !1341
  %91 = load i16, ptr %vendor_length123, align 1, !dbg !1341
  %conv124 = zext i16 %91 to i32, !dbg !1340
  %add125 = add i32 %sub122, %conv124, !dbg !1342
  %92 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1343
  %add126 = add i32 %92, %add125, !dbg !1343
  store i32 %add126, ptr %extra_struct_bytes, align 4, !dbg !1343
  br label %sw.epilog, !dbg !1344

sw.bb127:                                         ; preds = %if.end
  %93 = load ptr, ptr %aml_resource, align 8, !dbg !1345
  %vendor_offset128 = getelementptr inbounds %struct.aml_resource_pin_group_config, ptr %93, i32 0, i32 9, !dbg !1346
  %94 = load i16, ptr %vendor_offset128, align 4, !dbg !1346
  %conv129 = zext i16 %94 to i32, !dbg !1345
  %95 = load ptr, ptr %aml_resource, align 8, !dbg !1347
  %res_source_offset130 = getelementptr inbounds %struct.aml_resource_pin_group_config, ptr %95, i32 0, i32 7, !dbg !1348
  %96 = load i16, ptr %res_source_offset130, align 4, !dbg !1348
  %conv131 = zext i16 %96 to i32, !dbg !1347
  %sub132 = sub i32 %conv129, %conv131, !dbg !1349
  %97 = load ptr, ptr %aml_resource, align 8, !dbg !1350
  %vendor_length133 = getelementptr inbounds %struct.aml_resource_pin_group_config, ptr %97, i32 0, i32 10, !dbg !1351
  %98 = load i16, ptr %vendor_length133, align 2, !dbg !1351
  %conv134 = zext i16 %98 to i32, !dbg !1350
  %add135 = add i32 %sub132, %conv134, !dbg !1352
  %99 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1353
  %add136 = add i32 %99, %add135, !dbg !1353
  store i32 %add136, ptr %extra_struct_bytes, align 4, !dbg !1353
  br label %sw.epilog, !dbg !1354

sw.bb137:                                         ; preds = %if.end
  %100 = load i16, ptr %resource_length, align 2, !dbg !1355
  %conv138 = zext i16 %100 to i32, !dbg !1355
  %101 = load i8, ptr %minimum_aml_resource_length, align 1, !dbg !1356
  %conv139 = zext i8 %101 to i32, !dbg !1356
  %call140 = call i32 @acpi_rs_stream_option_length(i32 noundef %conv138, i32 noundef %conv139) #6, !dbg !1357
  store i32 %call140, ptr %extra_struct_bytes, align 4, !dbg !1358
  br label %sw.epilog, !dbg !1359

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1360

sw.epilog:                                        ; preds = %sw.default, %sw.bb137, %sw.bb127, %sw.bb118, %sw.bb108, %if.end107, %sw.bb76, %if.end75, %if.end51, %sw.bb23, %sw.bb19, %if.end17, %sw.bb9, %sw.bb
  %102 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !1361
  %call141 = call zeroext i8 @acpi_ut_get_resource_type(ptr noundef %102) #6, !dbg !1362
  %conv142 = zext i8 %call141 to i32, !dbg !1362
  %cmp143 = icmp eq i32 %conv142, 142, !dbg !1363
  br i1 %cmp143, label %if.then145, label %if.else152, !dbg !1364

if.then145:                                       ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 12, ptr %common_serial_bus146) #5, !dbg !1365
  call void @llvm.dbg.declare(metadata ptr %common_serial_bus146, metadata !1142, metadata !DIExpression()), !dbg !1366
  %103 = load ptr, ptr %aml_resource, align 8, !dbg !1367
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %common_serial_bus146, ptr align 4 %103, i64 12, i1 false), !dbg !1368
  %type147 = getelementptr inbounds %struct.aml_resource_common_serialbus, ptr %common_serial_bus146, i32 0, i32 4, !dbg !1369
  %104 = load i8, ptr %type147, align 1, !dbg !1369
  %idxprom148 = zext i8 %104 to i64, !dbg !1370
  %arrayidx149 = getelementptr [0 x i8], ptr @acpi_gbl_resource_struct_serial_bus_sizes, i64 0, i64 %idxprom148, !dbg !1370
  %105 = load i8, ptr %arrayidx149, align 1, !dbg !1370
  %conv150 = zext i8 %105 to i32, !dbg !1370
  %106 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1371
  %add151 = add i32 %conv150, %106, !dbg !1372
  store i32 %add151, ptr %buffer_size, align 4, !dbg !1373
  call void @llvm.lifetime.end.p0(i64 12, ptr %common_serial_bus146) #5, !dbg !1374
  br label %if.end157, !dbg !1375

if.else152:                                       ; preds = %sw.epilog
  %107 = load i8, ptr %resource_index, align 1, !dbg !1376
  %idxprom153 = zext i8 %107 to i64, !dbg !1378
  %arrayidx154 = getelementptr [0 x i8], ptr @acpi_gbl_resource_struct_sizes, i64 0, i64 %idxprom153, !dbg !1378
  %108 = load i8, ptr %arrayidx154, align 1, !dbg !1378
  %conv155 = zext i8 %108 to i32, !dbg !1378
  %109 = load i32, ptr %extra_struct_bytes, align 4, !dbg !1379
  %add156 = add i32 %conv155, %109, !dbg !1380
  store i32 %add156, ptr %buffer_size, align 4, !dbg !1381
  br label %if.end157

if.end157:                                        ; preds = %if.else152, %if.then145
  %110 = load i32, ptr %buffer_size, align 4, !dbg !1382
  %conv158 = zext i32 %110 to i64, !dbg !1382
  %add159 = add i64 %conv158, 7, !dbg !1382
  %and = and i64 %add159, -8, !dbg !1382
  %conv160 = trunc i64 %and to i32, !dbg !1383
  store i32 %conv160, ptr %buffer_size, align 4, !dbg !1384
  %111 = load i32, ptr %buffer_size, align 4, !dbg !1385
  %conv161 = zext i32 %111 to i64, !dbg !1385
  %112 = load ptr, ptr %size_needed.addr, align 8, !dbg !1386
  %113 = load i64, ptr %112, align 8, !dbg !1387
  %add162 = add i64 %113, %conv161, !dbg !1387
  store i64 %add162, ptr %112, align 8, !dbg !1387
  %114 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !1388
  %call163 = call i32 @acpi_ut_get_descriptor_length(ptr noundef %114) #6, !dbg !1389
  %115 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !1390
  %idx.ext164 = zext i32 %call163 to i64, !dbg !1390
  %add.ptr165 = getelementptr i8, ptr %115, i64 %idx.ext164, !dbg !1390
  store ptr %add.ptr165, ptr %aml_buffer.addr, align 8, !dbg !1390
  br label %while.cond, !dbg !1174, !llvm.loop !1391

while.end:                                        ; preds = %while.cond
  store i32 12316, ptr %retval, align 4, !dbg !1393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1393

cleanup:                                          ; preds = %while.end, %sw.bb18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_resource) #5, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 1, ptr %minimum_aml_resource_length) #5, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 1, ptr %resource_index) #5, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 4, ptr %extra_struct_bytes) #5, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 2, ptr %resource_length) #5, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 2, ptr %temp16) #5, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 4, ptr %buffer_size) #5, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #5, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_aml) #5, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1394
  %116 = load i32, ptr %retval, align 4, !dbg !1394
  ret i32 %116, !dbg !1394
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1395 dso_local i32 @acpi_ut_validate_resource(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2155 dso_local zeroext i16 @acpi_ut_get_resource_length(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2158 dso_local zeroext i8 @acpi_ut_get_resource_header_length(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2161 dso_local zeroext i8 @acpi_ut_get_resource_type(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @acpi_rs_count_set_bits(i16 noundef zeroext %bit_field) #0 align 16 !dbg !2162 {
entry:
  %bit_field.addr = alloca i16, align 2
  %bits_set = alloca i8, align 1
  store i16 %bit_field, ptr %bit_field.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit_field.addr, metadata !2166, metadata !DIExpression()), !dbg !2168
  call void @llvm.lifetime.start.p0(i64 1, ptr %bits_set) #5, !dbg !2169
  call void @llvm.dbg.declare(metadata ptr %bits_set, metadata !2167, metadata !DIExpression()), !dbg !2170
  store i8 0, ptr %bits_set, align 1, !dbg !2171
  br label %for.cond, !dbg !2173

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, ptr %bit_field.addr, align 2, !dbg !2174
  %tobool = icmp ne i16 %0, 0, !dbg !2176
  br i1 %tobool, label %for.body, label %for.end, !dbg !2176

for.body:                                         ; preds = %for.cond
  %1 = load i16, ptr %bit_field.addr, align 2, !dbg !2177
  %conv = zext i16 %1 to i32, !dbg !2177
  %sub = sub i32 %conv, 1, !dbg !2179
  %conv1 = trunc i32 %sub to i16, !dbg !2180
  %conv2 = zext i16 %conv1 to i32, !dbg !2180
  %2 = load i16, ptr %bit_field.addr, align 2, !dbg !2181
  %conv3 = zext i16 %2 to i32, !dbg !2181
  %and = and i32 %conv3, %conv2, !dbg !2181
  %conv4 = trunc i32 %and to i16, !dbg !2181
  store i16 %conv4, ptr %bit_field.addr, align 2, !dbg !2181
  br label %for.inc, !dbg !2182

for.inc:                                          ; preds = %for.body
  %3 = load i8, ptr %bits_set, align 1, !dbg !2183
  %inc = add i8 %3, 1, !dbg !2183
  store i8 %inc, ptr %bits_set, align 1, !dbg !2183
  br label %for.cond, !dbg !2184, !llvm.loop !2185

for.end:                                          ; preds = %for.cond
  %4 = load i8, ptr %bits_set, align 1, !dbg !2187
  call void @llvm.lifetime.end.p0(i64 1, ptr %bits_set) #5, !dbg !2188
  ret i8 %4, !dbg !2189
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_rs_stream_option_length(i32 noundef %resource_length, i32 noundef %minimum_aml_resource_length) #0 align 16 !dbg !2190 {
entry:
  %resource_length.addr = alloca i32, align 4
  %minimum_aml_resource_length.addr = alloca i32, align 4
  %string_length = alloca i32, align 4
  store i32 %resource_length, ptr %resource_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %resource_length.addr, metadata !2194, metadata !DIExpression()), !dbg !2197
  store i32 %minimum_aml_resource_length, ptr %minimum_aml_resource_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %minimum_aml_resource_length.addr, metadata !2195, metadata !DIExpression()), !dbg !2198
  call void @llvm.lifetime.start.p0(i64 4, ptr %string_length) #5, !dbg !2199
  call void @llvm.dbg.declare(metadata ptr %string_length, metadata !2196, metadata !DIExpression()), !dbg !2200
  store i32 0, ptr %string_length, align 4, !dbg !2200
  %0 = load i32, ptr %resource_length.addr, align 4, !dbg !2201
  %1 = load i32, ptr %minimum_aml_resource_length.addr, align 4, !dbg !2203
  %cmp = icmp ugt i32 %0, %1, !dbg !2204
  br i1 %cmp, label %if.then, label %if.end, !dbg !2205

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %resource_length.addr, align 4, !dbg !2206
  %3 = load i32, ptr %minimum_aml_resource_length.addr, align 4, !dbg !2208
  %sub = sub i32 %2, %3, !dbg !2209
  %sub1 = sub i32 %sub, 1, !dbg !2210
  store i32 %sub1, ptr %string_length, align 4, !dbg !2211
  br label %if.end, !dbg !2212

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %string_length, align 4, !dbg !2213
  %conv = zext i32 %4 to i64, !dbg !2213
  %add = add i64 %conv, 7, !dbg !2213
  %and = and i64 %add, -8, !dbg !2213
  %conv2 = trunc i64 %and to i32, !dbg !2214
  call void @llvm.lifetime.end.p0(i64 4, ptr %string_length) #5, !dbg !2215
  ret i32 %conv2, !dbg !2216
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2217 dso_local i32 @acpi_ut_get_descriptor_length(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_get_pci_routing_table_length(ptr noundef %package_object, ptr noundef %buffer_size_needed) #0 align 16 !dbg !2220 {
entry:
  %retval = alloca i32, align 4
  %package_object.addr = alloca ptr, align 8
  %buffer_size_needed.addr = alloca ptr, align 8
  %number_of_elements = alloca i32, align 4
  %temp_size_needed = alloca i64, align 8
  %top_object_list = alloca ptr, align 8
  %index = alloca i32, align 4
  %package_element = alloca ptr, align 8
  %sub_object_list = alloca ptr, align 8
  %name_found = alloca i8, align 1
  %table_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %package_object, ptr %package_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %package_object.addr, metadata !2224, metadata !DIExpression()), !dbg !2234
  store ptr %buffer_size_needed, ptr %buffer_size_needed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer_size_needed.addr, metadata !2225, metadata !DIExpression()), !dbg !2235
  call void @llvm.lifetime.start.p0(i64 4, ptr %number_of_elements) #5, !dbg !2236
  call void @llvm.dbg.declare(metadata ptr %number_of_elements, metadata !2226, metadata !DIExpression()), !dbg !2237
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_size_needed) #5, !dbg !2238
  call void @llvm.dbg.declare(metadata ptr %temp_size_needed, metadata !2227, metadata !DIExpression()), !dbg !2239
  store i64 0, ptr %temp_size_needed, align 8, !dbg !2239
  call void @llvm.lifetime.start.p0(i64 8, ptr %top_object_list) #5, !dbg !2240
  call void @llvm.dbg.declare(metadata ptr %top_object_list, metadata !2228, metadata !DIExpression()), !dbg !2241
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #5, !dbg !2242
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2229, metadata !DIExpression()), !dbg !2243
  call void @llvm.lifetime.start.p0(i64 8, ptr %package_element) #5, !dbg !2244
  call void @llvm.dbg.declare(metadata ptr %package_element, metadata !2230, metadata !DIExpression()), !dbg !2245
  call void @llvm.lifetime.start.p0(i64 8, ptr %sub_object_list) #5, !dbg !2246
  call void @llvm.dbg.declare(metadata ptr %sub_object_list, metadata !2231, metadata !DIExpression()), !dbg !2247
  call void @llvm.lifetime.start.p0(i64 1, ptr %name_found) #5, !dbg !2248
  call void @llvm.dbg.declare(metadata ptr %name_found, metadata !2232, metadata !DIExpression()), !dbg !2249
  call void @llvm.lifetime.start.p0(i64 4, ptr %table_index) #5, !dbg !2250
  call void @llvm.dbg.declare(metadata ptr %table_index, metadata !2233, metadata !DIExpression()), !dbg !2251
  %0 = load ptr, ptr %package_object.addr, align 8, !dbg !2252
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %0, i32 0, i32 9, !dbg !2253
  %1 = load i32, ptr %count, align 4, !dbg !2253
  store i32 %1, ptr %number_of_elements, align 4, !dbg !2254
  %2 = load ptr, ptr %package_object.addr, align 8, !dbg !2255
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %2, i32 0, i32 6, !dbg !2256
  %3 = load ptr, ptr %elements, align 8, !dbg !2256
  store ptr %3, ptr %top_object_list, align 8, !dbg !2257
  store i32 0, ptr %index, align 4, !dbg !2258
  br label %for.cond, !dbg !2260

for.cond:                                         ; preds = %for.inc44, %entry
  %4 = load i32, ptr %index, align 4, !dbg !2261
  %5 = load i32, ptr %number_of_elements, align 4, !dbg !2263
  %cmp = icmp ult i32 %4, %5, !dbg !2264
  br i1 %cmp, label %for.body, label %for.end46, !dbg !2265

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %top_object_list, align 8, !dbg !2266
  %7 = load ptr, ptr %6, align 8, !dbg !2268
  store ptr %7, ptr %package_element, align 8, !dbg !2269
  %8 = load ptr, ptr %package_element, align 8, !dbg !2270
  %tobool = icmp ne ptr %8, null, !dbg !2270
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2272

lor.lhs.false:                                    ; preds = %for.body
  %9 = load ptr, ptr %package_element, align 8, !dbg !2273
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %9, i32 0, i32 2, !dbg !2274
  %10 = load i8, ptr %type, align 1, !dbg !2274
  %conv = zext i8 %10 to i32, !dbg !2273
  %cmp1 = icmp ne i32 %conv, 4, !dbg !2275
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2276

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 12291, ptr %retval, align 4, !dbg !2277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2277

if.end:                                           ; preds = %lor.lhs.false
  %11 = load ptr, ptr %package_element, align 8, !dbg !2279
  %elements3 = getelementptr inbounds %struct.acpi_object_package, ptr %11, i32 0, i32 6, !dbg !2280
  %12 = load ptr, ptr %elements3, align 8, !dbg !2280
  store ptr %12, ptr %sub_object_list, align 8, !dbg !2281
  store i8 0, ptr %name_found, align 1, !dbg !2282
  store i32 0, ptr %table_index, align 4, !dbg !2283
  br label %for.cond4, !dbg !2285

for.cond4:                                        ; preds = %for.inc, %if.end
  %13 = load i32, ptr %table_index, align 4, !dbg !2286
  %14 = load ptr, ptr %package_element, align 8, !dbg !2288
  %count5 = getelementptr inbounds %struct.acpi_object_package, ptr %14, i32 0, i32 9, !dbg !2289
  %15 = load i32, ptr %count5, align 4, !dbg !2289
  %cmp6 = icmp ult i32 %13, %15, !dbg !2290
  br i1 %cmp6, label %land.rhs, label %land.end, !dbg !2291

land.rhs:                                         ; preds = %for.cond4
  %16 = load i8, ptr %name_found, align 1, !dbg !2292
  %tobool8 = icmp ne i8 %16, 0, !dbg !2293
  %lnot = xor i1 %tobool8, true, !dbg !2293
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond4
  %17 = phi i1 [ false, %for.cond4 ], [ %lnot, %land.rhs ], !dbg !2294
  br i1 %17, label %for.body9, label %for.end, !dbg !2295

for.body9:                                        ; preds = %land.end
  %18 = load ptr, ptr %sub_object_list, align 8, !dbg !2296
  %19 = load ptr, ptr %18, align 8, !dbg !2299
  %tobool10 = icmp ne ptr %19, null, !dbg !2299
  br i1 %tobool10, label %land.lhs.true, label %if.else, !dbg !2300

land.lhs.true:                                    ; preds = %for.body9
  %20 = load ptr, ptr %sub_object_list, align 8, !dbg !2301
  %21 = load ptr, ptr %20, align 8, !dbg !2302
  %type11 = getelementptr inbounds %struct.acpi_object_common, ptr %21, i32 0, i32 2, !dbg !2303
  %22 = load i8, ptr %type11, align 1, !dbg !2303
  %conv12 = zext i8 %22 to i32, !dbg !2304
  %cmp13 = icmp eq i32 2, %conv12, !dbg !2305
  br i1 %cmp13, label %if.then24, label %lor.lhs.false15, !dbg !2306

lor.lhs.false15:                                  ; preds = %land.lhs.true
  %23 = load ptr, ptr %sub_object_list, align 8, !dbg !2307
  %24 = load ptr, ptr %23, align 8, !dbg !2308
  %type16 = getelementptr inbounds %struct.acpi_object_common, ptr %24, i32 0, i32 2, !dbg !2309
  %25 = load i8, ptr %type16, align 1, !dbg !2309
  %conv17 = zext i8 %25 to i32, !dbg !2310
  %cmp18 = icmp eq i32 20, %conv17, !dbg !2311
  br i1 %cmp18, label %land.lhs.true20, label %if.else, !dbg !2312

land.lhs.true20:                                  ; preds = %lor.lhs.false15
  %26 = load ptr, ptr %sub_object_list, align 8, !dbg !2313
  %27 = load ptr, ptr %26, align 8, !dbg !2314
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %27, i32 0, i32 5, !dbg !2315
  %28 = load i8, ptr %class, align 1, !dbg !2315
  %conv21 = zext i8 %28 to i32, !dbg !2316
  %cmp22 = icmp eq i32 %conv21, 5, !dbg !2317
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !2318

if.then24:                                        ; preds = %land.lhs.true20, %land.lhs.true
  store i8 1, ptr %name_found, align 1, !dbg !2319
  br label %if.end25, !dbg !2321

if.else:                                          ; preds = %land.lhs.true20, %lor.lhs.false15, %for.body9
  %29 = load ptr, ptr %sub_object_list, align 8, !dbg !2322
  %incdec.ptr = getelementptr ptr, ptr %29, i32 1, !dbg !2322
  store ptr %incdec.ptr, ptr %sub_object_list, align 8, !dbg !2322
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  br label %for.inc, !dbg !2324

for.inc:                                          ; preds = %if.end25
  %30 = load i32, ptr %table_index, align 4, !dbg !2325
  %inc = add i32 %30, 1, !dbg !2325
  store i32 %inc, ptr %table_index, align 4, !dbg !2325
  br label %for.cond4, !dbg !2326, !llvm.loop !2327

for.end:                                          ; preds = %land.end
  %31 = load i64, ptr %temp_size_needed, align 8, !dbg !2329
  %add = add i64 %31, 20, !dbg !2329
  store i64 %add, ptr %temp_size_needed, align 8, !dbg !2329
  %32 = load i8, ptr %name_found, align 1, !dbg !2330
  %tobool26 = icmp ne i8 %32, 0, !dbg !2330
  br i1 %tobool26, label %if.then27, label %if.else39, !dbg !2332

if.then27:                                        ; preds = %for.end
  %33 = load ptr, ptr %sub_object_list, align 8, !dbg !2333
  %34 = load ptr, ptr %33, align 8, !dbg !2336
  %type28 = getelementptr inbounds %struct.acpi_object_common, ptr %34, i32 0, i32 2, !dbg !2337
  %35 = load i8, ptr %type28, align 1, !dbg !2337
  %conv29 = zext i8 %35 to i32, !dbg !2338
  %cmp30 = icmp eq i32 %conv29, 2, !dbg !2339
  br i1 %cmp30, label %if.then32, label %if.else36, !dbg !2340

if.then32:                                        ; preds = %if.then27
  %36 = load ptr, ptr %sub_object_list, align 8, !dbg !2341
  %37 = load ptr, ptr %36, align 8, !dbg !2343
  %length = getelementptr inbounds %struct.acpi_object_string, ptr %37, i32 0, i32 6, !dbg !2344
  %38 = load i32, ptr %length, align 8, !dbg !2344
  %conv33 = zext i32 %38 to i64, !dbg !2345
  %add34 = add i64 %conv33, 1, !dbg !2346
  %39 = load i64, ptr %temp_size_needed, align 8, !dbg !2347
  %add35 = add i64 %39, %add34, !dbg !2347
  store i64 %add35, ptr %temp_size_needed, align 8, !dbg !2347
  br label %if.end38, !dbg !2348

if.else36:                                        ; preds = %if.then27
  %40 = load ptr, ptr %sub_object_list, align 8, !dbg !2349
  %41 = load ptr, ptr %40, align 8, !dbg !2351
  %node = getelementptr inbounds %struct.acpi_object_reference, ptr %41, i32 0, i32 9, !dbg !2352
  %42 = load ptr, ptr %node, align 8, !dbg !2352
  %call = call i64 @acpi_ns_get_pathname_length(ptr noundef %42) #6, !dbg !2353
  %43 = load i64, ptr %temp_size_needed, align 8, !dbg !2354
  %add37 = add i64 %43, %call, !dbg !2354
  store i64 %add37, ptr %temp_size_needed, align 8, !dbg !2354
  br label %if.end38

if.end38:                                         ; preds = %if.else36, %if.then32
  br label %if.end41, !dbg !2355

if.else39:                                        ; preds = %for.end
  %44 = load i64, ptr %temp_size_needed, align 8, !dbg !2356
  %add40 = add i64 %44, 4, !dbg !2356
  store i64 %add40, ptr %temp_size_needed, align 8, !dbg !2356
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.end38
  %45 = load i64, ptr %temp_size_needed, align 8, !dbg !2358
  %add42 = add i64 %45, 7, !dbg !2358
  %and = and i64 %add42, -8, !dbg !2358
  store i64 %and, ptr %temp_size_needed, align 8, !dbg !2359
  %46 = load ptr, ptr %top_object_list, align 8, !dbg !2360
  %incdec.ptr43 = getelementptr ptr, ptr %46, i32 1, !dbg !2360
  store ptr %incdec.ptr43, ptr %top_object_list, align 8, !dbg !2360
  br label %for.inc44, !dbg !2361

for.inc44:                                        ; preds = %if.end41
  %47 = load i32, ptr %index, align 4, !dbg !2362
  %inc45 = add i32 %47, 1, !dbg !2362
  store i32 %inc45, ptr %index, align 4, !dbg !2362
  br label %for.cond, !dbg !2363, !llvm.loop !2364

for.end46:                                        ; preds = %for.cond
  %48 = load i64, ptr %temp_size_needed, align 8, !dbg !2366
  %add47 = add i64 %48, 24, !dbg !2367
  %49 = load ptr, ptr %buffer_size_needed.addr, align 8, !dbg !2368
  store i64 %add47, ptr %49, align 8, !dbg !2369
  store i32 0, ptr %retval, align 4, !dbg !2370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2370

cleanup:                                          ; preds = %for.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %table_index) #5, !dbg !2371
  call void @llvm.lifetime.end.p0(i64 1, ptr %name_found) #5, !dbg !2371
  call void @llvm.lifetime.end.p0(i64 8, ptr %sub_object_list) #5, !dbg !2371
  call void @llvm.lifetime.end.p0(i64 8, ptr %package_element) #5, !dbg !2371
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #5, !dbg !2371
  call void @llvm.lifetime.end.p0(i64 8, ptr %top_object_list) #5, !dbg !2371
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_size_needed) #5, !dbg !2371
  call void @llvm.lifetime.end.p0(i64 4, ptr %number_of_elements) #5, !dbg !2371
  %50 = load i32, ptr %retval, align 4, !dbg !2371
  ret i32 %50, !dbg !2371
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2372 dso_local i64 @acpi_ns_get_pathname_length(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!458, !459, !460, !461, !462, !463, !464, !465}
!llvm.ident = !{!466}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.rscalc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22rscalc\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/rscalc.ll drivers/acpi/acpica/rscalc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/rscalc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bbb25cbff3d9ae535b399c6ff875f2af")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 323, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14}
!7 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!8 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!9 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!10 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!11 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!12 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!13 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!14 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!15 = !{!16, !450, !283, !453, !455, !456, !21, !457, !281, !85}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !18, line: 678, size: 544, elements: !19)
!18 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!19 = !{!20, !25, !26}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !17, file: !18, line: 679, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !22, line: 21, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !24, line: 27, baseType: !5)
!24 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!25 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !17, file: !18, line: 680, baseType: !21, size: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !17, file: !18, line: 681, baseType: !27, size: 480, offset: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !18, line: 639, size: 480, elements: !28)
!28 = !{!29, !55, !72, !78, !89, !94, !100, !105, !115, !119, !127, !135, !141, !183, !201, !222, !234, !255, !263, !284, !300, !320, !342, !357, !370, !382, !395, !409, !420, !432, !441}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !27, file: !18, line: 640, baseType: !30, size: 56)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !18, line: 138, size: 56, elements: !31)
!31 = !{!32, !36, !37, !38, !39, !40, !41}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !30, file: !18, line: 139, baseType: !33, size: 8)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !22, line: 17, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !24, line: 21, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !30, file: !18, line: 140, baseType: !33, size: 8, offset: 8)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !30, file: !18, line: 141, baseType: !33, size: 8, offset: 16)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !30, file: !18, line: 142, baseType: !33, size: 8, offset: 24)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !30, file: !18, line: 143, baseType: !33, size: 8, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !30, file: !18, line: 144, baseType: !33, size: 8, offset: 40)
!41 = !DIDerivedType(tag: DW_TAG_member, scope: !30, file: !18, line: 145, baseType: !42, size: 8, offset: 48)
!42 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !30, file: !18, line: 145, size: 8, elements: !43)
!43 = !{!44, !45}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !42, file: !18, line: 146, baseType: !33, size: 8)
!45 = !DIDerivedType(tag: DW_TAG_member, scope: !42, file: !18, line: 147, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !42, file: !18, line: 147, elements: !47)
!47 = !{!48, !51}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !46, file: !18, line: 147, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !46, file: !18, line: 147, elements: !50)
!50 = !{}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !46, file: !18, line: 147, baseType: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: -1)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !27, file: !18, line: 641, baseType: !56, size: 40)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !18, line: 151, size: 40, elements: !57)
!57 = !{!58, !59, !60, !61, !62}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !18, line: 152, baseType: !33, size: 8)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !56, file: !18, line: 153, baseType: !33, size: 8, offset: 8)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !56, file: !18, line: 154, baseType: !33, size: 8, offset: 16)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !56, file: !18, line: 155, baseType: !33, size: 8, offset: 24)
!62 = !DIDerivedType(tag: DW_TAG_member, scope: !56, file: !18, line: 156, baseType: !63, size: 8, offset: 32)
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !56, file: !18, line: 156, size: 8, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !63, file: !18, line: 157, baseType: !33, size: 8)
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !63, file: !18, line: 158, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !63, file: !18, line: 158, elements: !68)
!68 = !{!69, !71}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_channels", scope: !67, file: !18, line: 158, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !18, line: 158, elements: !50)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !67, file: !18, line: 158, baseType: !52)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !27, file: !18, line: 642, baseType: !73, size: 24)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !18, line: 162, size: 24, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !73, file: !18, line: 163, baseType: !33, size: 8)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !73, file: !18, line: 164, baseType: !33, size: 8, offset: 8)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !73, file: !18, line: 165, baseType: !33, size: 8, offset: 16)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !27, file: !18, line: 643, baseType: !79, size: 56)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !18, line: 173, size: 56, elements: !80)
!80 = !{!81, !82, !83, !84, !88}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !79, file: !18, line: 174, baseType: !33, size: 8)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !79, file: !18, line: 175, baseType: !33, size: 8, offset: 8)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !79, file: !18, line: 176, baseType: !33, size: 8, offset: 16)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !79, file: !18, line: 177, baseType: !85, size: 16, offset: 24)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !22, line: 19, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !24, line: 24, baseType: !87)
!87 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !79, file: !18, line: 178, baseType: !85, size: 16, offset: 40)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !27, file: !18, line: 644, baseType: !90, size: 24)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !18, line: 181, size: 24, elements: !91)
!91 = !{!92, !93}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !90, file: !18, line: 182, baseType: !85, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !90, file: !18, line: 183, baseType: !33, size: 8, offset: 16)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !27, file: !18, line: 645, baseType: !95, size: 40)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !18, line: 186, size: 40, elements: !96)
!96 = !{!97, !98, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !95, file: !18, line: 187, baseType: !85, size: 16)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !95, file: !18, line: 188, baseType: !85, size: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !95, file: !18, line: 189, baseType: !33, size: 8, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !27, file: !18, line: 646, baseType: !101, size: 16)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !18, line: 201, size: 16, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !101, file: !18, line: 202, baseType: !85, size: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !101, file: !18, line: 203, baseType: !52, offset: 16)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !27, file: !18, line: 647, baseType: !106, size: 152)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !18, line: 208, size: 152, elements: !107)
!107 = !{!108, !109, !110, !114}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !106, file: !18, line: 209, baseType: !85, size: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !106, file: !18, line: 210, baseType: !33, size: 8, offset: 16)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !106, file: !18, line: 211, baseType: !111, size: 128, offset: 24)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !106, file: !18, line: 212, baseType: !52, offset: 152)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !27, file: !18, line: 648, baseType: !116, size: 8)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !18, line: 215, size: 8, elements: !117)
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !116, file: !18, line: 216, baseType: !33, size: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !27, file: !18, line: 649, baseType: !120, size: 72)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !18, line: 219, size: 72, elements: !121)
!121 = !{!122, !123, !124, !125, !126}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !120, file: !18, line: 220, baseType: !33, size: 8)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !120, file: !18, line: 221, baseType: !85, size: 16, offset: 8)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !120, file: !18, line: 222, baseType: !85, size: 16, offset: 24)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !120, file: !18, line: 223, baseType: !85, size: 16, offset: 40)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !120, file: !18, line: 224, baseType: !85, size: 16, offset: 56)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !27, file: !18, line: 650, baseType: !128, size: 136)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !18, line: 227, size: 136, elements: !129)
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !128, file: !18, line: 228, baseType: !33, size: 8)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !128, file: !18, line: 229, baseType: !21, size: 32, offset: 8)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !128, file: !18, line: 230, baseType: !21, size: 32, offset: 40)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !128, file: !18, line: 231, baseType: !21, size: 32, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !128, file: !18, line: 232, baseType: !21, size: 32, offset: 104)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !27, file: !18, line: 651, baseType: !136, size: 72)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !18, line: 235, size: 72, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !136, file: !18, line: 236, baseType: !33, size: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !136, file: !18, line: 237, baseType: !21, size: 32, offset: 8)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !136, file: !18, line: 238, baseType: !21, size: 32, offset: 40)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !27, file: !18, line: 652, baseType: !142, size: 240)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !18, line: 312, size: 240, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !167, !175}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !142, file: !18, line: 313, baseType: !33, size: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !142, file: !18, line: 313, baseType: !33, size: 8, offset: 8)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !142, file: !18, line: 313, baseType: !33, size: 8, offset: 16)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !142, file: !18, line: 313, baseType: !33, size: 8, offset: 24)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !142, file: !18, line: 313, baseType: !33, size: 8, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !142, file: !18, line: 313, baseType: !150, size: 32, offset: 40)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !18, line: 255, size: 32, elements: !151)
!151 = !{!152, !159, !166}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !150, file: !18, line: 256, baseType: !153, size: 32)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !18, line: 241, size: 32, elements: !154)
!154 = !{!155, !156, !157, !158}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !153, file: !18, line: 242, baseType: !33, size: 8)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !153, file: !18, line: 243, baseType: !33, size: 8, offset: 8)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !153, file: !18, line: 244, baseType: !33, size: 8, offset: 16)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !153, file: !18, line: 245, baseType: !33, size: 8, offset: 24)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !150, file: !18, line: 257, baseType: !160, size: 32)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !18, line: 248, size: 32, elements: !161)
!161 = !{!162, !163, !164, !165}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !160, file: !18, line: 249, baseType: !33, size: 8)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !160, file: !18, line: 250, baseType: !33, size: 8, offset: 8)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !160, file: !18, line: 251, baseType: !33, size: 8, offset: 16)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !160, file: !18, line: 252, baseType: !33, size: 8, offset: 24)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !150, file: !18, line: 261, baseType: !33, size: 8)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !142, file: !18, line: 313, baseType: !168, size: 80, offset: 72)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !18, line: 285, size: 80, elements: !169)
!169 = !{!170, !171, !172, !173, !174}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !168, file: !18, line: 286, baseType: !85, size: 16)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !168, file: !18, line: 287, baseType: !85, size: 16, offset: 16)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !168, file: !18, line: 288, baseType: !85, size: 16, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !168, file: !18, line: 289, baseType: !85, size: 16, offset: 48)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !168, file: !18, line: 290, baseType: !85, size: 16, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !142, file: !18, line: 314, baseType: !176, size: 88, offset: 152)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !18, line: 269, size: 88, elements: !177)
!177 = !{!178, !179, !180}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !176, file: !18, line: 270, baseType: !33, size: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !176, file: !18, line: 271, baseType: !85, size: 16, offset: 8)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !176, file: !18, line: 272, baseType: !181, size: 64, offset: 24)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !27, file: !18, line: 653, baseType: !184, size: 320)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !18, line: 317, size: 320, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !200}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !184, file: !18, line: 318, baseType: !33, size: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !184, file: !18, line: 318, baseType: !33, size: 8, offset: 8)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !184, file: !18, line: 318, baseType: !33, size: 8, offset: 16)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !184, file: !18, line: 318, baseType: !33, size: 8, offset: 24)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !184, file: !18, line: 318, baseType: !33, size: 8, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !184, file: !18, line: 318, baseType: !150, size: 32, offset: 40)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !184, file: !18, line: 318, baseType: !193, size: 160, offset: 72)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !18, line: 293, size: 160, elements: !194)
!194 = !{!195, !196, !197, !198, !199}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !193, file: !18, line: 294, baseType: !21, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !193, file: !18, line: 295, baseType: !21, size: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !193, file: !18, line: 296, baseType: !21, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !193, file: !18, line: 297, baseType: !21, size: 32, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !193, file: !18, line: 298, baseType: !21, size: 32, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !184, file: !18, line: 319, baseType: !176, size: 88, offset: 232)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !27, file: !18, line: 654, baseType: !202, size: 480)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !18, line: 322, size: 480, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !221}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !202, file: !18, line: 323, baseType: !33, size: 8)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !202, file: !18, line: 323, baseType: !33, size: 8, offset: 8)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !202, file: !18, line: 323, baseType: !33, size: 8, offset: 16)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !202, file: !18, line: 323, baseType: !33, size: 8, offset: 24)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !202, file: !18, line: 323, baseType: !33, size: 8, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !202, file: !18, line: 323, baseType: !150, size: 32, offset: 40)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !202, file: !18, line: 323, baseType: !211, size: 320, offset: 72)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !18, line: 301, size: 320, elements: !212)
!212 = !{!213, !217, !218, !219, !220}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !211, file: !18, line: 302, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !22, line: 23, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !24, line: 31, baseType: !216)
!216 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !211, file: !18, line: 303, baseType: !214, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !211, file: !18, line: 304, baseType: !214, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !211, file: !18, line: 305, baseType: !214, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !211, file: !18, line: 306, baseType: !214, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !202, file: !18, line: 324, baseType: !176, size: 88, offset: 392)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !27, file: !18, line: 655, baseType: !223, size: 464)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !18, line: 327, size: 464, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !223, file: !18, line: 328, baseType: !33, size: 8)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !223, file: !18, line: 328, baseType: !33, size: 8, offset: 8)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !223, file: !18, line: 328, baseType: !33, size: 8, offset: 16)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !223, file: !18, line: 328, baseType: !33, size: 8, offset: 24)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !223, file: !18, line: 328, baseType: !33, size: 8, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !223, file: !18, line: 328, baseType: !150, size: 32, offset: 40)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !223, file: !18, line: 328, baseType: !33, size: 8, offset: 72)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !223, file: !18, line: 329, baseType: !211, size: 320, offset: 80)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !223, file: !18, line: 330, baseType: !214, size: 64, offset: 400)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !27, file: !18, line: 656, baseType: !235, size: 168)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !18, line: 333, size: 168, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !235, file: !18, line: 334, baseType: !33, size: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !235, file: !18, line: 335, baseType: !33, size: 8, offset: 8)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !235, file: !18, line: 336, baseType: !33, size: 8, offset: 16)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !235, file: !18, line: 337, baseType: !33, size: 8, offset: 24)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !235, file: !18, line: 338, baseType: !33, size: 8, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !235, file: !18, line: 339, baseType: !33, size: 8, offset: 40)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !235, file: !18, line: 340, baseType: !176, size: 88, offset: 48)
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !18, line: 341, baseType: !245, size: 32, offset: 136)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !18, line: 341, size: 32, elements: !246)
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !245, file: !18, line: 342, baseType: !21, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !18, line: 343, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !245, file: !18, line: 343, elements: !250)
!250 = !{!251, !253}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !249, file: !18, line: 343, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !249, file: !18, line: 343, elements: !50)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !249, file: !18, line: 343, baseType: !254)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, elements: !53)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !27, file: !18, line: 657, baseType: !256, size: 96)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !18, line: 347, size: 96, elements: !257)
!257 = !{!258, !259, !260, !261, !262}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !256, file: !18, line: 348, baseType: !33, size: 8)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !256, file: !18, line: 349, baseType: !33, size: 8, offset: 8)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !256, file: !18, line: 350, baseType: !33, size: 8, offset: 16)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !256, file: !18, line: 351, baseType: !33, size: 8, offset: 24)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !256, file: !18, line: 352, baseType: !214, size: 64, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !27, file: !18, line: 658, baseType: !264, size: 352)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !18, line: 355, size: 352, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !282}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !264, file: !18, line: 356, baseType: !33, size: 8)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !264, file: !18, line: 357, baseType: !33, size: 8, offset: 8)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !264, file: !18, line: 358, baseType: !33, size: 8, offset: 16)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !264, file: !18, line: 359, baseType: !33, size: 8, offset: 24)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !264, file: !18, line: 360, baseType: !33, size: 8, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !264, file: !18, line: 361, baseType: !33, size: 8, offset: 40)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !264, file: !18, line: 362, baseType: !33, size: 8, offset: 48)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !264, file: !18, line: 363, baseType: !33, size: 8, offset: 56)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !264, file: !18, line: 364, baseType: !33, size: 8, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !264, file: !18, line: 365, baseType: !85, size: 16, offset: 72)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !264, file: !18, line: 366, baseType: !85, size: 16, offset: 88)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !264, file: !18, line: 367, baseType: !85, size: 16, offset: 104)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !264, file: !18, line: 368, baseType: !85, size: 16, offset: 120)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !264, file: !18, line: 369, baseType: !176, size: 88, offset: 136)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !264, file: !18, line: 370, baseType: !281, size: 64, offset: 224)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !264, file: !18, line: 371, baseType: !283, size: 64, offset: 288)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !27, file: !18, line: 659, baseType: !285, size: 288)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !18, line: 422, size: 288, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !285, file: !18, line: 423, baseType: !33, size: 8)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !285, file: !18, line: 423, baseType: !33, size: 8, offset: 8)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !285, file: !18, line: 423, baseType: !33, size: 8, offset: 16)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !285, file: !18, line: 423, baseType: !33, size: 8, offset: 24)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !285, file: !18, line: 423, baseType: !33, size: 8, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !285, file: !18, line: 423, baseType: !33, size: 8, offset: 40)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !285, file: !18, line: 423, baseType: !85, size: 16, offset: 48)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !285, file: !18, line: 423, baseType: !85, size: 16, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !285, file: !18, line: 423, baseType: !176, size: 88, offset: 80)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !285, file: !18, line: 423, baseType: !283, size: 64, offset: 168)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !285, file: !18, line: 423, baseType: !33, size: 8, offset: 232)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !285, file: !18, line: 424, baseType: !85, size: 16, offset: 240)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !285, file: !18, line: 425, baseType: !21, size: 32, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !27, file: !18, line: 660, baseType: !301, size: 320)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !18, line: 433, size: 320, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !301, file: !18, line: 434, baseType: !33, size: 8)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !301, file: !18, line: 434, baseType: !33, size: 8, offset: 8)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !301, file: !18, line: 434, baseType: !33, size: 8, offset: 16)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !301, file: !18, line: 434, baseType: !33, size: 8, offset: 24)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !301, file: !18, line: 434, baseType: !33, size: 8, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !301, file: !18, line: 434, baseType: !33, size: 8, offset: 40)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !301, file: !18, line: 434, baseType: !85, size: 16, offset: 48)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !301, file: !18, line: 434, baseType: !85, size: 16, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !301, file: !18, line: 434, baseType: !176, size: 88, offset: 80)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !301, file: !18, line: 434, baseType: !283, size: 64, offset: 168)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !301, file: !18, line: 434, baseType: !33, size: 8, offset: 232)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !301, file: !18, line: 435, baseType: !33, size: 8, offset: 240)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !301, file: !18, line: 436, baseType: !33, size: 8, offset: 248)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !301, file: !18, line: 437, baseType: !33, size: 8, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !301, file: !18, line: 438, baseType: !33, size: 8, offset: 264)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !301, file: !18, line: 439, baseType: !85, size: 16, offset: 272)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !301, file: !18, line: 440, baseType: !21, size: 32, offset: 288)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !27, file: !18, line: 661, baseType: !321, size: 344)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !18, line: 463, size: 344, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !321, file: !18, line: 464, baseType: !33, size: 8)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !321, file: !18, line: 464, baseType: !33, size: 8, offset: 8)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !321, file: !18, line: 464, baseType: !33, size: 8, offset: 16)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !321, file: !18, line: 464, baseType: !33, size: 8, offset: 24)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !321, file: !18, line: 464, baseType: !33, size: 8, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !321, file: !18, line: 464, baseType: !33, size: 8, offset: 40)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !321, file: !18, line: 464, baseType: !85, size: 16, offset: 48)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !321, file: !18, line: 464, baseType: !85, size: 16, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !321, file: !18, line: 464, baseType: !176, size: 88, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !321, file: !18, line: 464, baseType: !283, size: 64, offset: 168)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !321, file: !18, line: 464, baseType: !33, size: 8, offset: 232)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !321, file: !18, line: 465, baseType: !33, size: 8, offset: 240)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !321, file: !18, line: 466, baseType: !33, size: 8, offset: 248)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !321, file: !18, line: 467, baseType: !33, size: 8, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !321, file: !18, line: 468, baseType: !33, size: 8, offset: 264)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !321, file: !18, line: 469, baseType: !33, size: 8, offset: 272)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !321, file: !18, line: 470, baseType: !85, size: 16, offset: 280)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !321, file: !18, line: 471, baseType: !85, size: 16, offset: 296)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !321, file: !18, line: 472, baseType: !21, size: 32, offset: 312)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !27, file: !18, line: 662, baseType: !343, size: 248)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_csi2_serialbus", file: !18, line: 518, size: 248, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !343, file: !18, line: 519, baseType: !33, size: 8)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !343, file: !18, line: 519, baseType: !33, size: 8, offset: 8)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !343, file: !18, line: 519, baseType: !33, size: 8, offset: 16)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !343, file: !18, line: 519, baseType: !33, size: 8, offset: 24)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !343, file: !18, line: 519, baseType: !33, size: 8, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !343, file: !18, line: 519, baseType: !33, size: 8, offset: 40)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !343, file: !18, line: 519, baseType: !85, size: 16, offset: 48)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !343, file: !18, line: 519, baseType: !85, size: 16, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !343, file: !18, line: 519, baseType: !176, size: 88, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !343, file: !18, line: 519, baseType: !283, size: 64, offset: 168)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "local_port_instance", scope: !343, file: !18, line: 519, baseType: !33, size: 8, offset: 232)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "phy_type", scope: !343, file: !18, line: 520, baseType: !33, size: 8, offset: 240)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !27, file: !18, line: 663, baseType: !358, size: 232)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !18, line: 407, size: 232, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !358, file: !18, line: 408, baseType: !33, size: 8)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !358, file: !18, line: 408, baseType: !33, size: 8, offset: 8)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !358, file: !18, line: 408, baseType: !33, size: 8, offset: 16)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !358, file: !18, line: 408, baseType: !33, size: 8, offset: 24)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !358, file: !18, line: 408, baseType: !33, size: 8, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !358, file: !18, line: 408, baseType: !33, size: 8, offset: 40)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !358, file: !18, line: 408, baseType: !85, size: 16, offset: 48)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !358, file: !18, line: 408, baseType: !85, size: 16, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !358, file: !18, line: 408, baseType: !176, size: 88, offset: 80)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !358, file: !18, line: 408, baseType: !283, size: 64, offset: 168)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !27, file: !18, line: 664, baseType: !371, size: 288)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !18, line: 523, size: 288, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !371, file: !18, line: 524, baseType: !33, size: 8)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !371, file: !18, line: 525, baseType: !33, size: 8, offset: 8)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !371, file: !18, line: 526, baseType: !33, size: 8, offset: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !371, file: !18, line: 527, baseType: !85, size: 16, offset: 24)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !371, file: !18, line: 528, baseType: !85, size: 16, offset: 40)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !371, file: !18, line: 529, baseType: !85, size: 16, offset: 56)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !371, file: !18, line: 530, baseType: !176, size: 88, offset: 72)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !371, file: !18, line: 531, baseType: !281, size: 64, offset: 160)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !371, file: !18, line: 532, baseType: !283, size: 64, offset: 224)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !27, file: !18, line: 665, baseType: !383, size: 312)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !18, line: 535, size: 312, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !383, file: !18, line: 536, baseType: !33, size: 8)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !383, file: !18, line: 537, baseType: !33, size: 8, offset: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !383, file: !18, line: 538, baseType: !33, size: 8, offset: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !383, file: !18, line: 539, baseType: !33, size: 8, offset: 24)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !383, file: !18, line: 540, baseType: !21, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !383, file: !18, line: 541, baseType: !85, size: 16, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !383, file: !18, line: 542, baseType: !85, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !383, file: !18, line: 543, baseType: !176, size: 88, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !383, file: !18, line: 544, baseType: !281, size: 64, offset: 184)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !383, file: !18, line: 545, baseType: !283, size: 64, offset: 248)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !27, file: !18, line: 666, baseType: !396, size: 256)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !18, line: 574, size: 256, elements: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !408}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !396, file: !18, line: 575, baseType: !33, size: 8)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !396, file: !18, line: 576, baseType: !33, size: 8, offset: 8)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !396, file: !18, line: 577, baseType: !85, size: 16, offset: 16)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !396, file: !18, line: 578, baseType: !85, size: 16, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !396, file: !18, line: 579, baseType: !281, size: 64, offset: 48)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !396, file: !18, line: 580, baseType: !404, size: 80, offset: 112)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !18, line: 264, size: 80, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !404, file: !18, line: 265, baseType: !85, size: 16)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !404, file: !18, line: 266, baseType: !181, size: 64, offset: 16)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !396, file: !18, line: 581, baseType: !283, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !27, file: !18, line: 667, baseType: !410, size: 288)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !18, line: 584, size: 288, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !410, file: !18, line: 585, baseType: !33, size: 8)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !410, file: !18, line: 586, baseType: !33, size: 8, offset: 8)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !410, file: !18, line: 587, baseType: !33, size: 8, offset: 16)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !410, file: !18, line: 588, baseType: !85, size: 16, offset: 24)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !410, file: !18, line: 589, baseType: !85, size: 16, offset: 40)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !410, file: !18, line: 590, baseType: !176, size: 88, offset: 56)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !410, file: !18, line: 591, baseType: !404, size: 80, offset: 144)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !410, file: !18, line: 592, baseType: !283, size: 64, offset: 224)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !27, file: !18, line: 668, baseType: !421, size: 312)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !18, line: 595, size: 312, elements: !422)
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !421, file: !18, line: 596, baseType: !33, size: 8)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !421, file: !18, line: 597, baseType: !33, size: 8, offset: 8)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !421, file: !18, line: 598, baseType: !33, size: 8, offset: 16)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !421, file: !18, line: 599, baseType: !33, size: 8, offset: 24)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !421, file: !18, line: 600, baseType: !21, size: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !421, file: !18, line: 601, baseType: !85, size: 16, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !421, file: !18, line: 602, baseType: !176, size: 88, offset: 80)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !421, file: !18, line: 603, baseType: !404, size: 80, offset: 168)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !421, file: !18, line: 604, baseType: !283, size: 64, offset: 248)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !27, file: !18, line: 669, baseType: !433, size: 160)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_clock_input", file: !18, line: 548, size: 160, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !433, file: !18, line: 549, baseType: !33, size: 8)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !433, file: !18, line: 550, baseType: !33, size: 8, offset: 8)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !433, file: !18, line: 551, baseType: !33, size: 8, offset: 16)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !433, file: !18, line: 552, baseType: !85, size: 16, offset: 24)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !433, file: !18, line: 553, baseType: !21, size: 32, offset: 40)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !433, file: !18, line: 554, baseType: !176, size: 88, offset: 72)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !27, file: !18, line: 673, baseType: !442, size: 72)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !18, line: 309, size: 72, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !442, file: !18, line: 310, baseType: !33, size: 8)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !442, file: !18, line: 310, baseType: !33, size: 8, offset: 8)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !442, file: !18, line: 310, baseType: !33, size: 8, offset: 16)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !442, file: !18, line: 310, baseType: !33, size: 8, offset: 24)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !442, file: !18, line: 310, baseType: !33, size: 8, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !442, file: !18, line: 310, baseType: !150, size: 32, offset: 40)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !451, line: 42, baseType: !452)
!451 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!452 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !454, line: 127, baseType: !214)
!454 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !454, line: 421, baseType: !21)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_rs_length", file: !18, line: 16, baseType: !85)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!458 = !{i32 7, !"Dwarf Version", i32 5}
!459 = !{i32 2, !"Debug Info Version", i32 3}
!460 = !{i32 1, !"wchar_size", i32 2}
!461 = !{i32 8, !"cf-protection-branch", i32 1}
!462 = !{i32 4, !"function_return_thunk_extern", i32 1}
!463 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!464 = !{i32 1, !"Code Model", i32 2}
!465 = !{i32 1, !"override-stack-alignment", i32 8}
!466 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!467 = distinct !DISubprogram(name: "acpi_rs_get_aml_length", scope: !1, file: !1, line: 154, type: !468, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !471)
!468 = !DISubroutineType(types: !469)
!469 = !{!455, !16, !453, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!471 = !{!472, !473, !474, !475, !476, !477}
!472 = !DILocalVariable(name: "resource", arg: 1, scope: !467, file: !1, line: 154, type: !16)
!473 = !DILocalVariable(name: "resource_list_size", arg: 2, scope: !467, file: !1, line: 155, type: !453)
!474 = !DILocalVariable(name: "size_needed", arg: 3, scope: !467, file: !1, line: 155, type: !470)
!475 = !DILocalVariable(name: "aml_size_needed", scope: !467, file: !1, line: 157, type: !453)
!476 = !DILocalVariable(name: "resource_end", scope: !467, file: !1, line: 158, type: !16)
!477 = !DILocalVariable(name: "total_size", scope: !467, file: !1, line: 159, type: !456)
!478 = !DILocation(line: 154, column: 46, scope: !467)
!479 = !DILocation(line: 155, column: 20, scope: !467)
!480 = !DILocation(line: 155, column: 51, scope: !467)
!481 = !DILocation(line: 157, column: 2, scope: !467)
!482 = !DILocation(line: 157, column: 12, scope: !467)
!483 = !DILocation(line: 158, column: 2, scope: !467)
!484 = !DILocation(line: 158, column: 24, scope: !467)
!485 = !DILocation(line: 159, column: 2, scope: !467)
!486 = !DILocation(line: 159, column: 17, scope: !467)
!487 = !DILocation(line: 166, column: 6, scope: !467)
!488 = !DILocation(line: 165, column: 15, scope: !467)
!489 = !DILocation(line: 167, column: 2, scope: !467)
!490 = !DILocation(line: 167, column: 9, scope: !467)
!491 = !DILocation(line: 167, column: 20, scope: !467)
!492 = !DILocation(line: 167, column: 18, scope: !467)
!493 = !DILocation(line: 171, column: 7, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 171, column: 7)
!495 = distinct !DILexicalBlock(scope: !467, file: !1, line: 167, column: 34)
!496 = !DILocation(line: 171, column: 17, scope: !494)
!497 = !DILocation(line: 171, column: 22, scope: !494)
!498 = !DILocation(line: 171, column: 7, scope: !495)
!499 = !DILocation(line: 172, column: 4, scope: !500)
!500 = distinct !DILexicalBlock(scope: !494, file: !1, line: 171, column: 48)
!501 = !DILocation(line: 177, column: 8, scope: !502)
!502 = distinct !DILexicalBlock(scope: !495, file: !1, line: 177, column: 7)
!503 = !DILocation(line: 177, column: 18, scope: !502)
!504 = !DILocation(line: 177, column: 7, scope: !495)
!505 = !DILocation(line: 178, column: 4, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !1, line: 177, column: 26)
!507 = !DILocation(line: 183, column: 44, scope: !495)
!508 = !DILocation(line: 183, column: 54, scope: !495)
!509 = !DILocation(line: 183, column: 16, scope: !495)
!510 = !DILocation(line: 183, column: 14, scope: !495)
!511 = !DILocation(line: 189, column: 11, scope: !495)
!512 = !DILocation(line: 189, column: 21, scope: !495)
!513 = !DILocation(line: 189, column: 3, scope: !495)
!514 = !DILocation(line: 194, column: 8, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !1, line: 194, column: 8)
!516 = distinct !DILexicalBlock(scope: !495, file: !1, line: 189, column: 27)
!517 = !DILocation(line: 194, column: 18, scope: !515)
!518 = !DILocation(line: 194, column: 27, scope: !515)
!519 = !DILocation(line: 194, column: 45, scope: !515)
!520 = !DILocation(line: 194, column: 8, scope: !516)
!521 = !DILocation(line: 195, column: 15, scope: !522)
!522 = distinct !DILexicalBlock(scope: !515, file: !1, line: 194, column: 51)
!523 = !DILocation(line: 196, column: 4, scope: !522)
!524 = !DILocation(line: 197, column: 4, scope: !516)
!525 = !DILocation(line: 203, column: 8, scope: !526)
!526 = distinct !DILexicalBlock(scope: !516, file: !1, line: 203, column: 8)
!527 = !DILocation(line: 203, column: 18, scope: !526)
!528 = !DILocation(line: 203, column: 27, scope: !526)
!529 = !DILocation(line: 203, column: 45, scope: !526)
!530 = !DILocation(line: 203, column: 8, scope: !516)
!531 = !DILocation(line: 204, column: 15, scope: !532)
!532 = distinct !DILexicalBlock(scope: !526, file: !1, line: 203, column: 51)
!533 = !DILocation(line: 205, column: 4, scope: !532)
!534 = !DILocation(line: 206, column: 4, scope: !516)
!535 = !DILocation(line: 215, column: 8, scope: !536)
!536 = distinct !DILexicalBlock(scope: !516, file: !1, line: 215, column: 8)
!537 = !DILocation(line: 215, column: 18, scope: !536)
!538 = !DILocation(line: 215, column: 30, scope: !536)
!539 = !DILocation(line: 215, column: 42, scope: !536)
!540 = !DILocation(line: 215, column: 8, scope: !516)
!541 = !DILocation(line: 219, column: 16, scope: !542)
!542 = distinct !DILexicalBlock(scope: !536, file: !1, line: 215, column: 47)
!543 = !DILocation(line: 221, column: 4, scope: !542)
!544 = !DILocation(line: 226, column: 9, scope: !516)
!545 = !DILocation(line: 226, column: 22, scope: !516)
!546 = !DILocation(line: 226, column: 32, scope: !516)
!547 = !DILocation(line: 226, column: 44, scope: !516)
!548 = !DILocation(line: 226, column: 20, scope: !516)
!549 = !DILocation(line: 225, column: 17, scope: !516)
!550 = !DILocation(line: 225, column: 15, scope: !516)
!551 = !DILocation(line: 227, column: 4, scope: !516)
!552 = !DILocation(line: 234, column: 19, scope: !516)
!553 = !DILocation(line: 234, column: 37, scope: !516)
!554 = !DILocation(line: 234, column: 35, scope: !516)
!555 = !DILocation(line: 234, column: 5, scope: !516)
!556 = !DILocation(line: 234, column: 17, scope: !516)
!557 = !DILocation(line: 238, column: 4, scope: !516)
!558 = !DILocation(line: 245, column: 34, scope: !516)
!559 = !DILocation(line: 247, column: 15, scope: !516)
!560 = !DILocation(line: 247, column: 25, scope: !516)
!561 = !DILocation(line: 249, column: 14, scope: !516)
!562 = !DILocation(line: 246, column: 13, scope: !516)
!563 = !DILocation(line: 245, column: 45, scope: !516)
!564 = !DILocation(line: 245, column: 17, scope: !516)
!565 = !DILocation(line: 245, column: 15, scope: !516)
!566 = !DILocation(line: 250, column: 4, scope: !516)
!567 = !DILocation(line: 257, column: 34, scope: !516)
!568 = !DILocation(line: 259, column: 15, scope: !516)
!569 = !DILocation(line: 259, column: 25, scope: !516)
!570 = !DILocation(line: 261, column: 14, scope: !516)
!571 = !DILocation(line: 258, column: 13, scope: !516)
!572 = !DILocation(line: 257, column: 45, scope: !516)
!573 = !DILocation(line: 257, column: 17, scope: !516)
!574 = !DILocation(line: 257, column: 15, scope: !516)
!575 = !DILocation(line: 262, column: 4, scope: !516)
!576 = !DILocation(line: 269, column: 34, scope: !516)
!577 = !DILocation(line: 271, column: 15, scope: !516)
!578 = !DILocation(line: 271, column: 25, scope: !516)
!579 = !DILocation(line: 273, column: 14, scope: !516)
!580 = !DILocation(line: 270, column: 13, scope: !516)
!581 = !DILocation(line: 269, column: 45, scope: !516)
!582 = !DILocation(line: 269, column: 17, scope: !516)
!583 = !DILocation(line: 269, column: 15, scope: !516)
!584 = !DILocation(line: 274, column: 4, scope: !516)
!585 = !DILocation(line: 282, column: 34, scope: !516)
!586 = !DILocation(line: 283, column: 15, scope: !516)
!587 = !DILocation(line: 283, column: 25, scope: !516)
!588 = !DILocation(line: 285, column: 8, scope: !516)
!589 = !DILocation(line: 285, column: 24, scope: !516)
!590 = !DILocation(line: 286, column: 11, scope: !516)
!591 = !DILocation(line: 282, column: 45, scope: !516)
!592 = !DILocation(line: 289, column: 15, scope: !516)
!593 = !DILocation(line: 289, column: 25, scope: !516)
!594 = !DILocation(line: 291, column: 14, scope: !516)
!595 = !DILocation(line: 288, column: 13, scope: !516)
!596 = !DILocation(line: 286, column: 16, scope: !516)
!597 = !DILocation(line: 282, column: 17, scope: !516)
!598 = !DILocation(line: 282, column: 15, scope: !516)
!599 = !DILocation(line: 292, column: 4, scope: !516)
!600 = !DILocation(line: 296, column: 34, scope: !516)
!601 = !DILocation(line: 297, column: 14, scope: !516)
!602 = !DILocation(line: 297, column: 24, scope: !516)
!603 = !DILocation(line: 298, column: 14, scope: !516)
!604 = !DILocation(line: 298, column: 31, scope: !516)
!605 = !DILocation(line: 296, column: 45, scope: !516)
!606 = !DILocation(line: 299, column: 13, scope: !516)
!607 = !DILocation(line: 299, column: 23, scope: !516)
!608 = !DILocation(line: 300, column: 13, scope: !516)
!609 = !DILocation(line: 301, column: 13, scope: !516)
!610 = !DILocation(line: 298, column: 36, scope: !516)
!611 = !DILocation(line: 302, column: 13, scope: !516)
!612 = !DILocation(line: 302, column: 23, scope: !516)
!613 = !DILocation(line: 303, column: 13, scope: !516)
!614 = !DILocation(line: 301, column: 27, scope: !516)
!615 = !DILocation(line: 296, column: 17, scope: !516)
!616 = !DILocation(line: 296, column: 15, scope: !516)
!617 = !DILocation(line: 305, column: 4, scope: !516)
!618 = !DILocation(line: 309, column: 34, scope: !516)
!619 = !DILocation(line: 310, column: 14, scope: !516)
!620 = !DILocation(line: 310, column: 24, scope: !516)
!621 = !DILocation(line: 312, column: 14, scope: !516)
!622 = !DILocation(line: 312, column: 31, scope: !516)
!623 = !DILocation(line: 309, column: 45, scope: !516)
!624 = !DILocation(line: 313, column: 13, scope: !516)
!625 = !DILocation(line: 313, column: 23, scope: !516)
!626 = !DILocation(line: 315, column: 13, scope: !516)
!627 = !DILocation(line: 316, column: 13, scope: !516)
!628 = !DILocation(line: 312, column: 36, scope: !516)
!629 = !DILocation(line: 317, column: 13, scope: !516)
!630 = !DILocation(line: 317, column: 23, scope: !516)
!631 = !DILocation(line: 319, column: 13, scope: !516)
!632 = !DILocation(line: 316, column: 27, scope: !516)
!633 = !DILocation(line: 309, column: 17, scope: !516)
!634 = !DILocation(line: 309, column: 15, scope: !516)
!635 = !DILocation(line: 321, column: 4, scope: !516)
!636 = !DILocation(line: 325, column: 34, scope: !516)
!637 = !DILocation(line: 326, column: 13, scope: !516)
!638 = !DILocation(line: 326, column: 23, scope: !516)
!639 = !DILocation(line: 328, column: 13, scope: !516)
!640 = !DILocation(line: 329, column: 13, scope: !516)
!641 = !DILocation(line: 325, column: 45, scope: !516)
!642 = !DILocation(line: 325, column: 17, scope: !516)
!643 = !DILocation(line: 325, column: 15, scope: !516)
!644 = !DILocation(line: 331, column: 4, scope: !516)
!645 = !DILocation(line: 336, column: 47, scope: !516)
!646 = !DILocation(line: 337, column: 12, scope: !516)
!647 = !DILocation(line: 339, column: 12, scope: !516)
!648 = !DILocation(line: 336, column: 8, scope: !516)
!649 = !DILocation(line: 335, column: 15, scope: !516)
!650 = !DILocation(line: 341, column: 34, scope: !516)
!651 = !DILocation(line: 342, column: 13, scope: !516)
!652 = !DILocation(line: 342, column: 23, scope: !516)
!653 = !DILocation(line: 344, column: 13, scope: !516)
!654 = !DILocation(line: 345, column: 13, scope: !516)
!655 = !DILocation(line: 341, column: 45, scope: !516)
!656 = !DILocation(line: 346, column: 13, scope: !516)
!657 = !DILocation(line: 346, column: 23, scope: !516)
!658 = !DILocation(line: 348, column: 13, scope: !516)
!659 = !DILocation(line: 345, column: 27, scope: !516)
!660 = !DILocation(line: 341, column: 17, scope: !516)
!661 = !DILocation(line: 341, column: 15, scope: !516)
!662 = !DILocation(line: 350, column: 4, scope: !516)
!663 = !DILocation(line: 354, column: 34, scope: !516)
!664 = !DILocation(line: 355, column: 14, scope: !516)
!665 = !DILocation(line: 355, column: 24, scope: !516)
!666 = !DILocation(line: 357, column: 14, scope: !516)
!667 = !DILocation(line: 357, column: 31, scope: !516)
!668 = !DILocation(line: 354, column: 45, scope: !516)
!669 = !DILocation(line: 358, column: 13, scope: !516)
!670 = !DILocation(line: 358, column: 23, scope: !516)
!671 = !DILocation(line: 359, column: 13, scope: !516)
!672 = !DILocation(line: 360, column: 13, scope: !516)
!673 = !DILocation(line: 357, column: 36, scope: !516)
!674 = !DILocation(line: 361, column: 13, scope: !516)
!675 = !DILocation(line: 361, column: 23, scope: !516)
!676 = !DILocation(line: 362, column: 13, scope: !516)
!677 = !DILocation(line: 360, column: 27, scope: !516)
!678 = !DILocation(line: 354, column: 17, scope: !516)
!679 = !DILocation(line: 354, column: 15, scope: !516)
!680 = !DILocation(line: 364, column: 4, scope: !516)
!681 = !DILocation(line: 368, column: 34, scope: !516)
!682 = !DILocation(line: 369, column: 14, scope: !516)
!683 = !DILocation(line: 369, column: 24, scope: !516)
!684 = !DILocation(line: 370, column: 14, scope: !516)
!685 = !DILocation(line: 370, column: 31, scope: !516)
!686 = !DILocation(line: 368, column: 45, scope: !516)
!687 = !DILocation(line: 371, column: 13, scope: !516)
!688 = !DILocation(line: 371, column: 23, scope: !516)
!689 = !DILocation(line: 372, column: 13, scope: !516)
!690 = !DILocation(line: 373, column: 13, scope: !516)
!691 = !DILocation(line: 370, column: 36, scope: !516)
!692 = !DILocation(line: 374, column: 13, scope: !516)
!693 = !DILocation(line: 374, column: 23, scope: !516)
!694 = !DILocation(line: 375, column: 13, scope: !516)
!695 = !DILocation(line: 373, column: 27, scope: !516)
!696 = !DILocation(line: 368, column: 17, scope: !516)
!697 = !DILocation(line: 368, column: 15, scope: !516)
!698 = !DILocation(line: 377, column: 4, scope: !516)
!699 = !DILocation(line: 381, column: 34, scope: !516)
!700 = !DILocation(line: 382, column: 13, scope: !516)
!701 = !DILocation(line: 382, column: 23, scope: !516)
!702 = !DILocation(line: 384, column: 13, scope: !516)
!703 = !DILocation(line: 385, column: 13, scope: !516)
!704 = !DILocation(line: 381, column: 45, scope: !516)
!705 = !DILocation(line: 386, column: 13, scope: !516)
!706 = !DILocation(line: 386, column: 23, scope: !516)
!707 = !DILocation(line: 388, column: 13, scope: !516)
!708 = !DILocation(line: 389, column: 13, scope: !516)
!709 = !DILocation(line: 385, column: 27, scope: !516)
!710 = !DILocation(line: 390, column: 13, scope: !516)
!711 = !DILocation(line: 390, column: 23, scope: !516)
!712 = !DILocation(line: 392, column: 13, scope: !516)
!713 = !DILocation(line: 389, column: 27, scope: !516)
!714 = !DILocation(line: 381, column: 17, scope: !516)
!715 = !DILocation(line: 381, column: 15, scope: !516)
!716 = !DILocation(line: 394, column: 4, scope: !516)
!717 = !DILocation(line: 398, column: 34, scope: !516)
!718 = !DILocation(line: 399, column: 13, scope: !516)
!719 = !DILocation(line: 399, column: 23, scope: !516)
!720 = !DILocation(line: 401, column: 13, scope: !516)
!721 = !DILocation(line: 402, column: 13, scope: !516)
!722 = !DILocation(line: 398, column: 45, scope: !516)
!723 = !DILocation(line: 403, column: 13, scope: !516)
!724 = !DILocation(line: 403, column: 23, scope: !516)
!725 = !DILocation(line: 405, column: 13, scope: !516)
!726 = !DILocation(line: 406, column: 13, scope: !516)
!727 = !DILocation(line: 402, column: 27, scope: !516)
!728 = !DILocation(line: 407, column: 13, scope: !516)
!729 = !DILocation(line: 407, column: 23, scope: !516)
!730 = !DILocation(line: 409, column: 13, scope: !516)
!731 = !DILocation(line: 406, column: 27, scope: !516)
!732 = !DILocation(line: 398, column: 17, scope: !516)
!733 = !DILocation(line: 398, column: 15, scope: !516)
!734 = !DILocation(line: 411, column: 4, scope: !516)
!735 = !DILocation(line: 415, column: 4, scope: !516)
!736 = !DILocation(line: 420, column: 22, scope: !495)
!737 = !DILocation(line: 420, column: 19, scope: !495)
!738 = !DILocation(line: 425, column: 7, scope: !495)
!739 = !DILocation(line: 424, column: 12, scope: !495)
!740 = distinct !{!740, !489, !741, !742, !743}
!741 = !DILocation(line: 427, column: 2, scope: !467)
!742 = !{!"llvm.loop.mustprogress"}
!743 = !{!"llvm.loop.unroll.disable"}
!744 = !DILocation(line: 431, column: 2, scope: !467)
!745 = !DILocation(line: 432, column: 1, scope: !467)
!746 = distinct !DISubprogram(name: "acpi_rs_struct_option_length", scope: !1, file: !1, line: 69, type: !747, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !750)
!747 = !DISubroutineType(types: !748)
!748 = !{!456, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!750 = !{!751}
!751 = !DILocalVariable(name: "resource_source", arg: 1, scope: !746, file: !1, line: 69, type: !749)
!752 = !DILocation(line: 69, column: 59, scope: !746)
!753 = !DILocation(line: 78, column: 6, scope: !754)
!754 = distinct !DILexicalBlock(scope: !746, file: !1, line: 78, column: 6)
!755 = !DILocation(line: 78, column: 23, scope: !754)
!756 = !DILocation(line: 78, column: 6, scope: !746)
!757 = !DILocation(line: 79, column: 28, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !1, line: 78, column: 35)
!759 = !DILocation(line: 79, column: 45, scope: !758)
!760 = !DILocation(line: 79, column: 59, scope: !758)
!761 = !DILocation(line: 79, column: 11, scope: !758)
!762 = !DILocation(line: 79, column: 3, scope: !758)
!763 = !DILocation(line: 82, column: 2, scope: !746)
!764 = !DILocation(line: 83, column: 1, scope: !746)
!765 = distinct !DISubprogram(name: "acpi_rs_get_list_length", scope: !1, file: !1, line: 451, type: !766, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !768)
!766 = !DISubroutineType(types: !767)
!767 = !{!455, !283, !21, !470}
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !1138, !1142}
!769 = !DILocalVariable(name: "aml_buffer", arg: 1, scope: !765, file: !1, line: 451, type: !283)
!770 = !DILocalVariable(name: "aml_buffer_length", arg: 2, scope: !765, file: !1, line: 452, type: !21)
!771 = !DILocalVariable(name: "size_needed", arg: 3, scope: !765, file: !1, line: 452, type: !470)
!772 = !DILocalVariable(name: "status", scope: !765, file: !1, line: 454, type: !455)
!773 = !DILocalVariable(name: "end_aml", scope: !765, file: !1, line: 455, type: !283)
!774 = !DILocalVariable(name: "buffer", scope: !765, file: !1, line: 456, type: !283)
!775 = !DILocalVariable(name: "buffer_size", scope: !765, file: !1, line: 457, type: !21)
!776 = !DILocalVariable(name: "temp16", scope: !765, file: !1, line: 458, type: !85)
!777 = !DILocalVariable(name: "resource_length", scope: !765, file: !1, line: 459, type: !85)
!778 = !DILocalVariable(name: "extra_struct_bytes", scope: !765, file: !1, line: 460, type: !21)
!779 = !DILocalVariable(name: "resource_index", scope: !765, file: !1, line: 461, type: !33)
!780 = !DILocalVariable(name: "minimum_aml_resource_length", scope: !765, file: !1, line: 462, type: !33)
!781 = !DILocalVariable(name: "aml_resource", scope: !765, file: !1, line: 463, type: !782)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "aml_resource", file: !784, line: 513, size: 448, elements: !785)
!784 = !DIFile(filename: "drivers/acpi/acpica/amlresrc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "39fadf1e91338a4bdfc4b9e2f15bad0f")
!785 = !{!786, !787, !791, !796, !802, !808, !813, !817, !826, !832, !839, !843, !848, !858, !868, !873, !883, !891, !904, !917, !930, !946, !963, !980, !994, !1011, !1028, !1040, !1052, !1066, !1080, !1091, !1104, !1118, !1127, !1135, !1136, !1137}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !783, file: !784, line: 516, baseType: !33, size: 8)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "small_header", scope: !783, file: !784, line: 517, baseType: !788, size: 8)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_small_header", file: !784, line: 118, size: 8, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !788, file: !784, line: 119, baseType: !33, size: 8)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "large_header", scope: !783, file: !784, line: 518, baseType: !792, size: 24)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_large_header", file: !784, line: 178, size: 24, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !792, file: !784, line: 179, baseType: !33, size: 8)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !792, file: !784, line: 179, baseType: !85, size: 16, offset: 8)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !783, file: !784, line: 522, baseType: !797, size: 32)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_irq", file: !784, line: 121, size: 32, elements: !798)
!798 = !{!799, !800, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !797, file: !784, line: 122, baseType: !33, size: 8)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !797, file: !784, line: 122, baseType: !85, size: 16, offset: 8)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !797, file: !784, line: 123, baseType: !33, size: 8, offset: 24)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !783, file: !784, line: 523, baseType: !803, size: 24)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_dma", file: !784, line: 130, size: 24, elements: !804)
!804 = !{!805, !806, !807}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !803, file: !784, line: 131, baseType: !33, size: 8)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "dma_channel_mask", scope: !803, file: !784, line: 131, baseType: !33, size: 8, offset: 8)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !784, line: 132, baseType: !33, size: 8, offset: 16)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !783, file: !784, line: 524, baseType: !809, size: 16)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_start_dependent", file: !784, line: 135, size: 16, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !809, file: !784, line: 136, baseType: !33, size: 8)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !809, file: !784, line: 136, baseType: !33, size: 8, offset: 8)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "end_dpf", scope: !783, file: !784, line: 525, baseType: !814, size: 8)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_dependent", file: !784, line: 142, size: 8, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !814, file: !784, line: 143, baseType: !33, size: 8)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !783, file: !784, line: 526, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_io", file: !784, line: 145, size: 64, elements: !819)
!819 = !{!820, !821, !822, !823, !824, !825}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !818, file: !784, line: 146, baseType: !33, size: 8)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !818, file: !784, line: 146, baseType: !33, size: 8, offset: 8)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !818, file: !784, line: 147, baseType: !85, size: 16, offset: 16)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !818, file: !784, line: 148, baseType: !85, size: 16, offset: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !818, file: !784, line: 149, baseType: !33, size: 8, offset: 48)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !818, file: !784, line: 150, baseType: !33, size: 8, offset: 56)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !783, file: !784, line: 527, baseType: !827, size: 32)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_io", file: !784, line: 153, size: 32, elements: !828)
!828 = !{!829, !830, !831}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !827, file: !784, line: 154, baseType: !33, size: 8)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !827, file: !784, line: 154, baseType: !85, size: 16, offset: 8)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !827, file: !784, line: 155, baseType: !33, size: 8, offset: 24)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !783, file: !784, line: 528, baseType: !833, size: 48)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_dma", file: !784, line: 165, size: 48, elements: !834)
!834 = !{!835, !836, !837, !838}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !833, file: !784, line: 166, baseType: !33, size: 8)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !833, file: !784, line: 166, baseType: !85, size: 16, offset: 8)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !833, file: !784, line: 167, baseType: !85, size: 16, offset: 24)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !833, file: !784, line: 168, baseType: !33, size: 8, offset: 40)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_small", scope: !783, file: !784, line: 529, baseType: !840, size: 8)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_small", file: !784, line: 158, size: 8, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !840, file: !784, line: 159, baseType: !33, size: 8)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !783, file: !784, line: 530, baseType: !844, size: 16)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_tag", file: !784, line: 161, size: 16, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !844, file: !784, line: 162, baseType: !33, size: 8)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !844, file: !784, line: 162, baseType: !33, size: 8, offset: 8)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !783, file: !784, line: 534, baseType: !849, size: 96)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory24", file: !784, line: 187, size: 96, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856, !857}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !849, file: !784, line: 188, baseType: !33, size: 8)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !849, file: !784, line: 188, baseType: !85, size: 16, offset: 8)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !849, file: !784, line: 188, baseType: !33, size: 8, offset: 24)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !849, file: !784, line: 189, baseType: !85, size: 16, offset: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !849, file: !784, line: 190, baseType: !85, size: 16, offset: 48)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !849, file: !784, line: 191, baseType: !85, size: 16, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !849, file: !784, line: 192, baseType: !85, size: 16, offset: 80)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !783, file: !784, line: 535, baseType: !859, size: 120)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_generic_register", file: !784, line: 271, size: 120, elements: !860)
!860 = !{!861, !862, !863, !864, !865, !866, !867}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !859, file: !784, line: 272, baseType: !33, size: 8)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !859, file: !784, line: 272, baseType: !85, size: 16, offset: 8)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "address_space_id", scope: !859, file: !784, line: 272, baseType: !33, size: 8, offset: 24)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !859, file: !784, line: 273, baseType: !33, size: 8, offset: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !859, file: !784, line: 274, baseType: !33, size: 8, offset: 40)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !859, file: !784, line: 275, baseType: !33, size: 8, offset: 48)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !859, file: !784, line: 276, baseType: !214, size: 64, offset: 56)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_large", scope: !783, file: !784, line: 536, baseType: !869, size: 24)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_large", file: !784, line: 195, size: 24, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !869, file: !784, line: 196, baseType: !33, size: 8)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !869, file: !784, line: 196, baseType: !85, size: 16, offset: 8)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !783, file: !784, line: 537, baseType: !874, size: 160)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory32", file: !784, line: 198, size: 160, elements: !875)
!875 = !{!876, !877, !878, !879, !880, !881, !882}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !874, file: !784, line: 199, baseType: !33, size: 8)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !874, file: !784, line: 199, baseType: !85, size: 16, offset: 8)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !874, file: !784, line: 199, baseType: !33, size: 8, offset: 24)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !874, file: !784, line: 200, baseType: !21, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !874, file: !784, line: 201, baseType: !21, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !874, file: !784, line: 202, baseType: !21, size: 32, offset: 96)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !874, file: !784, line: 203, baseType: !21, size: 32, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !783, file: !784, line: 538, baseType: !884, size: 96)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_memory32", file: !784, line: 206, size: 96, elements: !885)
!885 = !{!886, !887, !888, !889, !890}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !884, file: !784, line: 207, baseType: !33, size: 8)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !884, file: !784, line: 207, baseType: !85, size: 16, offset: 8)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !884, file: !784, line: 207, baseType: !33, size: 8, offset: 24)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !884, file: !784, line: 208, baseType: !21, size: 32, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !884, file: !784, line: 209, baseType: !21, size: 32, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !783, file: !784, line: 539, baseType: !892, size: 128)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address16", file: !784, line: 252, size: 128, elements: !893)
!893 = !{!894, !895, !896, !897, !898, !899, !900, !901, !902, !903}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !892, file: !784, line: 253, baseType: !33, size: 8)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !892, file: !784, line: 253, baseType: !85, size: 16, offset: 8)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !892, file: !784, line: 254, baseType: !33, size: 8, offset: 24)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !892, file: !784, line: 254, baseType: !33, size: 8, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !892, file: !784, line: 254, baseType: !33, size: 8, offset: 40)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !892, file: !784, line: 254, baseType: !85, size: 16, offset: 48)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !892, file: !784, line: 255, baseType: !85, size: 16, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !892, file: !784, line: 256, baseType: !85, size: 16, offset: 80)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !892, file: !784, line: 257, baseType: !85, size: 16, offset: 96)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !892, file: !784, line: 258, baseType: !85, size: 16, offset: 112)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !783, file: !784, line: 540, baseType: !905, size: 208)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address32", file: !784, line: 243, size: 208, elements: !906)
!906 = !{!907, !908, !909, !910, !911, !912, !913, !914, !915, !916}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !905, file: !784, line: 244, baseType: !33, size: 8)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !905, file: !784, line: 244, baseType: !85, size: 16, offset: 8)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !905, file: !784, line: 245, baseType: !33, size: 8, offset: 24)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !905, file: !784, line: 245, baseType: !33, size: 8, offset: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !905, file: !784, line: 245, baseType: !33, size: 8, offset: 40)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !905, file: !784, line: 245, baseType: !21, size: 32, offset: 48)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !905, file: !784, line: 246, baseType: !21, size: 32, offset: 80)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !905, file: !784, line: 247, baseType: !21, size: 32, offset: 112)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !905, file: !784, line: 248, baseType: !21, size: 32, offset: 144)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !905, file: !784, line: 249, baseType: !21, size: 32, offset: 176)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !783, file: !784, line: 541, baseType: !918, size: 368)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address64", file: !784, line: 234, size: 368, elements: !919)
!919 = !{!920, !921, !922, !923, !924, !925, !926, !927, !928, !929}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !918, file: !784, line: 235, baseType: !33, size: 8)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !918, file: !784, line: 235, baseType: !85, size: 16, offset: 8)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !918, file: !784, line: 236, baseType: !33, size: 8, offset: 24)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !918, file: !784, line: 236, baseType: !33, size: 8, offset: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !918, file: !784, line: 236, baseType: !33, size: 8, offset: 40)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !918, file: !784, line: 236, baseType: !214, size: 64, offset: 48)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !918, file: !784, line: 237, baseType: !214, size: 64, offset: 112)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !918, file: !784, line: 238, baseType: !214, size: 64, offset: 176)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !918, file: !784, line: 239, baseType: !214, size: 64, offset: 240)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !918, file: !784, line: 240, baseType: !214, size: 64, offset: 304)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !783, file: !784, line: 542, baseType: !931, size: 448)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_address64", file: !784, line: 220, size: 448, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !931, file: !784, line: 221, baseType: !33, size: 8)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !931, file: !784, line: 221, baseType: !85, size: 16, offset: 8)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !931, file: !784, line: 222, baseType: !33, size: 8, offset: 24)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !931, file: !784, line: 222, baseType: !33, size: 8, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !931, file: !784, line: 222, baseType: !33, size: 8, offset: 40)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !931, file: !784, line: 222, baseType: !33, size: 8, offset: 48)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !931, file: !784, line: 223, baseType: !33, size: 8, offset: 56)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !931, file: !784, line: 224, baseType: !214, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !931, file: !784, line: 225, baseType: !214, size: 64, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !931, file: !784, line: 226, baseType: !214, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !931, file: !784, line: 227, baseType: !214, size: 64, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !931, file: !784, line: 228, baseType: !214, size: 64, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !931, file: !784, line: 229, baseType: !214, size: 64, offset: 384)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !783, file: !784, line: 543, baseType: !947, size: 72)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_irq", file: !784, line: 261, size: 72, elements: !948)
!948 = !{!949, !950, !951, !952, !953}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !947, file: !784, line: 262, baseType: !33, size: 8)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !947, file: !784, line: 262, baseType: !85, size: 16, offset: 8)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !947, file: !784, line: 262, baseType: !33, size: 8, offset: 24)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !947, file: !784, line: 263, baseType: !33, size: 8, offset: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !947, file: !784, line: 264, baseType: !954, size: 32, offset: 40)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !947, file: !784, line: 264, size: 32, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !954, file: !784, line: 265, baseType: !21, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !784, line: 266, baseType: !958)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !784, line: 266, elements: !959)
!959 = !{!960, !962}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !958, file: !784, line: 266, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !784, line: 266, elements: !50)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !958, file: !784, line: 266, baseType: !254)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !783, file: !784, line: 544, baseType: !964, size: 184)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_gpio", file: !784, line: 281, size: 184, elements: !965)
!965 = !{!966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !964, file: !784, line: 282, baseType: !33, size: 8)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !964, file: !784, line: 282, baseType: !85, size: 16, offset: 8)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !964, file: !784, line: 282, baseType: !33, size: 8, offset: 24)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !964, file: !784, line: 283, baseType: !33, size: 8, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !964, file: !784, line: 284, baseType: !85, size: 16, offset: 40)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "int_flags", scope: !964, file: !784, line: 285, baseType: !85, size: 16, offset: 56)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !964, file: !784, line: 286, baseType: !33, size: 8, offset: 72)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !964, file: !784, line: 287, baseType: !85, size: 16, offset: 80)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !964, file: !784, line: 288, baseType: !85, size: 16, offset: 96)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !964, file: !784, line: 289, baseType: !85, size: 16, offset: 112)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !964, file: !784, line: 290, baseType: !33, size: 8, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !964, file: !784, line: 291, baseType: !85, size: 16, offset: 136)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !964, file: !784, line: 292, baseType: !85, size: 16, offset: 152)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !964, file: !784, line: 293, baseType: !85, size: 16, offset: 168)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !783, file: !784, line: 545, baseType: !981, size: 144)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_i2c_serialbus", file: !784, line: 346, size: 144, elements: !982)
!982 = !{!983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !981, file: !784, line: 347, baseType: !33, size: 8)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !981, file: !784, line: 347, baseType: !85, size: 16, offset: 8)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !981, file: !784, line: 348, baseType: !33, size: 8, offset: 24)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !981, file: !784, line: 348, baseType: !33, size: 8, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !981, file: !784, line: 348, baseType: !33, size: 8, offset: 40)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !784, line: 348, baseType: !33, size: 8, offset: 48)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !981, file: !784, line: 348, baseType: !85, size: 16, offset: 56)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !981, file: !784, line: 348, baseType: !33, size: 8, offset: 72)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !981, file: !784, line: 348, baseType: !85, size: 16, offset: 80)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !981, file: !784, line: 348, baseType: !21, size: 32, offset: 96)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !981, file: !784, line: 349, baseType: !85, size: 16, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !783, file: !784, line: 546, baseType: !995, size: 168)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_spi_serialbus", file: !784, line: 361, size: 168, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !995, file: !784, line: 362, baseType: !33, size: 8)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !995, file: !784, line: 362, baseType: !85, size: 16, offset: 8)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !995, file: !784, line: 363, baseType: !33, size: 8, offset: 24)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !995, file: !784, line: 363, baseType: !33, size: 8, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !995, file: !784, line: 363, baseType: !33, size: 8, offset: 40)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !995, file: !784, line: 363, baseType: !33, size: 8, offset: 48)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !995, file: !784, line: 363, baseType: !85, size: 16, offset: 56)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !995, file: !784, line: 363, baseType: !33, size: 8, offset: 72)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !995, file: !784, line: 363, baseType: !85, size: 16, offset: 80)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !995, file: !784, line: 363, baseType: !21, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !995, file: !784, line: 364, baseType: !33, size: 8, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !995, file: !784, line: 365, baseType: !33, size: 8, offset: 136)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !995, file: !784, line: 366, baseType: !33, size: 8, offset: 144)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !995, file: !784, line: 367, baseType: !85, size: 16, offset: 152)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !783, file: !784, line: 547, baseType: !1012, size: 176)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_uart_serialbus", file: !784, line: 379, size: 176, elements: !1013)
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1012, file: !784, line: 380, baseType: !33, size: 8)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1012, file: !784, line: 380, baseType: !85, size: 16, offset: 8)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1012, file: !784, line: 381, baseType: !33, size: 8, offset: 24)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1012, file: !784, line: 381, baseType: !33, size: 8, offset: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1012, file: !784, line: 381, baseType: !33, size: 8, offset: 40)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1012, file: !784, line: 381, baseType: !33, size: 8, offset: 48)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !1012, file: !784, line: 381, baseType: !85, size: 16, offset: 56)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !1012, file: !784, line: 381, baseType: !33, size: 8, offset: 72)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !1012, file: !784, line: 381, baseType: !85, size: 16, offset: 80)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !1012, file: !784, line: 381, baseType: !21, size: 32, offset: 96)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !1012, file: !784, line: 382, baseType: !85, size: 16, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !1012, file: !784, line: 383, baseType: !85, size: 16, offset: 144)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !1012, file: !784, line: 384, baseType: !33, size: 8, offset: 160)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !1012, file: !784, line: 385, baseType: !33, size: 8, offset: 168)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !783, file: !784, line: 548, baseType: !1029, size: 96)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_csi2_serialbus", file: !784, line: 333, size: 96, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1029, file: !784, line: 334, baseType: !33, size: 8)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1029, file: !784, line: 334, baseType: !85, size: 16, offset: 8)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1029, file: !784, line: 334, baseType: !33, size: 8, offset: 24)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1029, file: !784, line: 334, baseType: !33, size: 8, offset: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1029, file: !784, line: 334, baseType: !33, size: 8, offset: 40)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1029, file: !784, line: 334, baseType: !33, size: 8, offset: 48)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !1029, file: !784, line: 334, baseType: !85, size: 16, offset: 56)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !1029, file: !784, line: 334, baseType: !33, size: 8, offset: 72)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !1029, file: !784, line: 334, baseType: !85, size: 16, offset: 80)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !783, file: !784, line: 549, baseType: !1041, size: 96)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_common_serialbus", file: !784, line: 330, size: 96, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1041, file: !784, line: 331, baseType: !33, size: 8)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1041, file: !784, line: 331, baseType: !85, size: 16, offset: 8)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1041, file: !784, line: 331, baseType: !33, size: 8, offset: 24)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1041, file: !784, line: 331, baseType: !33, size: 8, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1041, file: !784, line: 331, baseType: !33, size: 8, offset: 40)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1041, file: !784, line: 331, baseType: !33, size: 8, offset: 48)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !1041, file: !784, line: 331, baseType: !85, size: 16, offset: 56)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !1041, file: !784, line: 331, baseType: !33, size: 8, offset: 72)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !1041, file: !784, line: 331, baseType: !85, size: 16, offset: 80)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !783, file: !784, line: 550, baseType: !1053, size: 144)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_function", file: !784, line: 397, size: 144, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1053, file: !784, line: 398, baseType: !33, size: 8)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1053, file: !784, line: 398, baseType: !85, size: 16, offset: 8)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1053, file: !784, line: 398, baseType: !33, size: 8, offset: 24)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !784, line: 399, baseType: !85, size: 16, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !1053, file: !784, line: 400, baseType: !33, size: 8, offset: 48)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !1053, file: !784, line: 401, baseType: !85, size: 16, offset: 56)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !1053, file: !784, line: 402, baseType: !85, size: 16, offset: 72)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1053, file: !784, line: 403, baseType: !33, size: 8, offset: 88)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1053, file: !784, line: 404, baseType: !85, size: 16, offset: 96)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1053, file: !784, line: 405, baseType: !85, size: 16, offset: 112)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1053, file: !784, line: 406, baseType: !85, size: 16, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !783, file: !784, line: 551, baseType: !1067, size: 160)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_config", file: !784, line: 417, size: 160, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1067, file: !784, line: 418, baseType: !33, size: 8)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1067, file: !784, line: 418, baseType: !85, size: 16, offset: 8)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1067, file: !784, line: 418, baseType: !33, size: 8, offset: 24)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1067, file: !784, line: 419, baseType: !85, size: 16, offset: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !1067, file: !784, line: 420, baseType: !33, size: 8, offset: 48)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !1067, file: !784, line: 421, baseType: !21, size: 32, offset: 56)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !1067, file: !784, line: 422, baseType: !85, size: 16, offset: 88)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1067, file: !784, line: 423, baseType: !33, size: 8, offset: 104)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1067, file: !784, line: 424, baseType: !85, size: 16, offset: 112)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1067, file: !784, line: 425, baseType: !85, size: 16, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1067, file: !784, line: 426, baseType: !85, size: 16, offset: 144)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !783, file: !784, line: 552, baseType: !1081, size: 112)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group", file: !784, line: 451, size: 112, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1081, file: !784, line: 452, baseType: !33, size: 8)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1081, file: !784, line: 452, baseType: !85, size: 16, offset: 8)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1081, file: !784, line: 452, baseType: !33, size: 8, offset: 24)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1081, file: !784, line: 453, baseType: !85, size: 16, offset: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !1081, file: !784, line: 454, baseType: !85, size: 16, offset: 48)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "label_offset", scope: !1081, file: !784, line: 455, baseType: !85, size: 16, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1081, file: !784, line: 456, baseType: !85, size: 16, offset: 80)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1081, file: !784, line: 457, baseType: !85, size: 16, offset: 96)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !783, file: !784, line: 553, baseType: !1092, size: 136)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_function", file: !784, line: 468, size: 136, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1092, file: !784, line: 469, baseType: !33, size: 8)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1092, file: !784, line: 469, baseType: !85, size: 16, offset: 8)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1092, file: !784, line: 469, baseType: !33, size: 8, offset: 24)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1092, file: !784, line: 470, baseType: !85, size: 16, offset: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !1092, file: !784, line: 471, baseType: !85, size: 16, offset: 48)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1092, file: !784, line: 472, baseType: !33, size: 8, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1092, file: !784, line: 473, baseType: !85, size: 16, offset: 72)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !1092, file: !784, line: 474, baseType: !85, size: 16, offset: 88)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1092, file: !784, line: 475, baseType: !85, size: 16, offset: 104)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1092, file: !784, line: 476, baseType: !85, size: 16, offset: 120)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !783, file: !784, line: 554, baseType: !1105, size: 160)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_config", file: !784, line: 487, size: 160, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1105, file: !784, line: 488, baseType: !33, size: 8)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1105, file: !784, line: 488, baseType: !85, size: 16, offset: 8)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1105, file: !784, line: 488, baseType: !33, size: 8, offset: 24)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1105, file: !784, line: 489, baseType: !85, size: 16, offset: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !1105, file: !784, line: 490, baseType: !33, size: 8, offset: 48)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !1105, file: !784, line: 491, baseType: !21, size: 32, offset: 56)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1105, file: !784, line: 492, baseType: !33, size: 8, offset: 88)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1105, file: !784, line: 493, baseType: !85, size: 16, offset: 96)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !1105, file: !784, line: 494, baseType: !85, size: 16, offset: 112)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1105, file: !784, line: 495, baseType: !85, size: 16, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1105, file: !784, line: 496, baseType: !85, size: 16, offset: 144)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !783, file: !784, line: 555, baseType: !1119, size: 96)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_clock_input", file: !784, line: 437, size: 96, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1119, file: !784, line: 438, baseType: !33, size: 8)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1119, file: !784, line: 438, baseType: !85, size: 16, offset: 8)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1119, file: !784, line: 438, baseType: !33, size: 8, offset: 24)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1119, file: !784, line: 439, baseType: !85, size: 16, offset: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !1119, file: !784, line: 440, baseType: !85, size: 16, offset: 48)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !1119, file: !784, line: 441, baseType: !21, size: 32, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !783, file: !784, line: 559, baseType: !1128, size: 48)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address", file: !784, line: 217, size: 48, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133, !1134}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1128, file: !784, line: 218, baseType: !33, size: 8)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1128, file: !784, line: 218, baseType: !85, size: 16, offset: 8)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !1128, file: !784, line: 218, baseType: !33, size: 8, offset: 24)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1128, file: !784, line: 218, baseType: !33, size: 8, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !1128, file: !784, line: 218, baseType: !33, size: 8, offset: 40)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dword_item", scope: !783, file: !784, line: 560, baseType: !21, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "word_item", scope: !783, file: !784, line: 561, baseType: !85, size: 16)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "byte_item", scope: !783, file: !784, line: 562, baseType: !33, size: 8)
!1138 = !DILocalVariable(name: "common_serial_bus", scope: !1139, file: !1, line: 614, type: !1041)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 609, column: 38)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 503, column: 50)
!1141 = distinct !DILexicalBlock(scope: !765, file: !1, line: 472, column: 31)
!1142 = !DILocalVariable(name: "common_serial_bus", scope: !1143, file: !1, line: 694, type: !1041)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 690, column: 38)
!1144 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 689, column: 7)
!1145 = !DILocation(line: 451, column: 29, scope: !765)
!1146 = !DILocation(line: 452, column: 8, scope: !765)
!1147 = !DILocation(line: 452, column: 38, scope: !765)
!1148 = !DILocation(line: 454, column: 2, scope: !765)
!1149 = !DILocation(line: 454, column: 14, scope: !765)
!1150 = !DILocation(line: 455, column: 2, scope: !765)
!1151 = !DILocation(line: 455, column: 6, scope: !765)
!1152 = !DILocation(line: 456, column: 2, scope: !765)
!1153 = !DILocation(line: 456, column: 6, scope: !765)
!1154 = !DILocation(line: 457, column: 2, scope: !765)
!1155 = !DILocation(line: 457, column: 6, scope: !765)
!1156 = !DILocation(line: 458, column: 2, scope: !765)
!1157 = !DILocation(line: 458, column: 6, scope: !765)
!1158 = !DILocation(line: 459, column: 2, scope: !765)
!1159 = !DILocation(line: 459, column: 6, scope: !765)
!1160 = !DILocation(line: 460, column: 2, scope: !765)
!1161 = !DILocation(line: 460, column: 6, scope: !765)
!1162 = !DILocation(line: 461, column: 2, scope: !765)
!1163 = !DILocation(line: 461, column: 5, scope: !765)
!1164 = !DILocation(line: 462, column: 2, scope: !765)
!1165 = !DILocation(line: 462, column: 5, scope: !765)
!1166 = !DILocation(line: 463, column: 2, scope: !765)
!1167 = !DILocation(line: 463, column: 22, scope: !765)
!1168 = !DILocation(line: 467, column: 3, scope: !765)
!1169 = !DILocation(line: 467, column: 15, scope: !765)
!1170 = !DILocation(line: 468, column: 12, scope: !765)
!1171 = !DILocation(line: 468, column: 25, scope: !765)
!1172 = !DILocation(line: 468, column: 23, scope: !765)
!1173 = !DILocation(line: 468, column: 10, scope: !765)
!1174 = !DILocation(line: 472, column: 2, scope: !765)
!1175 = !DILocation(line: 472, column: 9, scope: !765)
!1176 = !DILocation(line: 472, column: 22, scope: !765)
!1177 = !DILocation(line: 472, column: 20, scope: !765)
!1178 = !DILocation(line: 477, column: 39, scope: !1141)
!1179 = !DILocation(line: 477, column: 7, scope: !1141)
!1180 = !DILocation(line: 476, column: 10, scope: !1141)
!1181 = !DILocation(line: 479, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 479, column: 7)
!1183 = !DILocation(line: 479, column: 7, scope: !1141)
!1184 = !DILocation(line: 484, column: 4, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 479, column: 29)
!1186 = !DILocation(line: 487, column: 26, scope: !1141)
!1187 = !DILocation(line: 487, column: 16, scope: !1141)
!1188 = !DILocation(line: 491, column: 49, scope: !1141)
!1189 = !DILocation(line: 491, column: 21, scope: !1141)
!1190 = !DILocation(line: 491, column: 19, scope: !1141)
!1191 = !DILocation(line: 493, column: 35, scope: !1141)
!1192 = !DILocation(line: 493, column: 7, scope: !1141)
!1193 = !DILocation(line: 492, column: 31, scope: !1141)
!1194 = !DILocation(line: 499, column: 22, scope: !1141)
!1195 = !DILocation(line: 501, column: 7, scope: !1141)
!1196 = !DILocation(line: 501, column: 55, scope: !1141)
!1197 = !DILocation(line: 501, column: 20, scope: !1141)
!1198 = !DILocation(line: 501, column: 18, scope: !1141)
!1199 = !DILocation(line: 500, column: 10, scope: !1141)
!1200 = !DILocation(line: 503, column: 37, scope: !1141)
!1201 = !DILocation(line: 503, column: 11, scope: !1141)
!1202 = !DILocation(line: 503, column: 3, scope: !1141)
!1203 = !DILocation(line: 509, column: 4, scope: !1140)
!1204 = !DILocation(line: 510, column: 48, scope: !1140)
!1205 = !DILocation(line: 510, column: 25, scope: !1140)
!1206 = !DILocation(line: 510, column: 23, scope: !1140)
!1207 = !DILocation(line: 511, column: 4, scope: !1140)
!1208 = !DILocation(line: 518, column: 49, scope: !1140)
!1209 = !DILocation(line: 518, column: 48, scope: !1140)
!1210 = !DILocation(line: 518, column: 25, scope: !1140)
!1211 = !DILocation(line: 518, column: 23, scope: !1140)
!1212 = !DILocation(line: 519, column: 4, scope: !1140)
!1213 = !DILocation(line: 527, column: 25, scope: !1140)
!1214 = !DILocation(line: 527, column: 23, scope: !1140)
!1215 = !DILocation(line: 534, column: 8, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 534, column: 8)
!1217 = !DILocation(line: 534, column: 8, scope: !1140)
!1218 = !DILocation(line: 535, column: 23, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 534, column: 28)
!1220 = !DILocation(line: 536, column: 4, scope: !1219)
!1221 = !DILocation(line: 537, column: 4, scope: !1140)
!1222 = !DILocation(line: 543, column: 4, scope: !1140)
!1223 = !DILocation(line: 553, column: 37, scope: !1140)
!1224 = !DILocation(line: 554, column: 9, scope: !1140)
!1225 = !DILocation(line: 553, column: 8, scope: !1140)
!1226 = !DILocation(line: 552, column: 23, scope: !1140)
!1227 = !DILocation(line: 555, column: 4, scope: !1140)
!1228 = !DILocation(line: 564, column: 26, scope: !1140)
!1229 = !DILocation(line: 564, column: 36, scope: !1140)
!1230 = !DILocation(line: 564, column: 25, scope: !1140)
!1231 = !DILocation(line: 564, column: 41, scope: !1140)
!1232 = !DILocation(line: 564, column: 23, scope: !1140)
!1233 = !DILocation(line: 569, column: 37, scope: !1140)
!1234 = !DILocation(line: 570, column: 9, scope: !1140)
!1235 = !DILocation(line: 569, column: 53, scope: !1140)
!1236 = !DILocation(line: 571, column: 9, scope: !1140)
!1237 = !DILocation(line: 569, column: 8, scope: !1140)
!1238 = !DILocation(line: 568, column: 23, scope: !1140)
!1239 = !DILocation(line: 572, column: 4, scope: !1140)
!1240 = !DILocation(line: 578, column: 8, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 578, column: 8)
!1242 = !DILocation(line: 578, column: 27, scope: !1241)
!1243 = !DILocation(line: 578, column: 8, scope: !1140)
!1244 = !DILocation(line: 580, column: 9, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 578, column: 42)
!1246 = !DILocation(line: 580, column: 28, scope: !1245)
!1247 = !DILocation(line: 581, column: 9, scope: !1245)
!1248 = !DILocation(line: 581, column: 28, scope: !1245)
!1249 = !DILocation(line: 580, column: 42, scope: !1245)
!1250 = !DILocation(line: 582, column: 9, scope: !1245)
!1251 = !DILocation(line: 582, column: 28, scope: !1245)
!1252 = !DILocation(line: 581, column: 45, scope: !1245)
!1253 = !DILocation(line: 579, column: 24, scope: !1245)
!1254 = !DILocation(line: 583, column: 4, scope: !1245)
!1255 = !DILocation(line: 585, column: 9, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 583, column: 11)
!1257 = !DILocation(line: 585, column: 36, scope: !1256)
!1258 = !DILocation(line: 585, column: 52, scope: !1256)
!1259 = !DILocation(line: 587, column: 9, scope: !1256)
!1260 = !DILocation(line: 587, column: 28, scope: !1256)
!1261 = !DILocation(line: 586, column: 50, scope: !1256)
!1262 = !DILocation(line: 584, column: 24, scope: !1256)
!1263 = !DILocation(line: 589, column: 4, scope: !1140)
!1264 = !DILocation(line: 595, column: 8, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 595, column: 8)
!1266 = !DILocation(line: 595, column: 35, scope: !1265)
!1267 = !DILocation(line: 595, column: 8, scope: !1140)
!1268 = !DILocation(line: 597, column: 9, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 595, column: 50)
!1270 = !DILocation(line: 597, column: 36, scope: !1269)
!1271 = !DILocation(line: 598, column: 9, scope: !1269)
!1272 = !DILocation(line: 599, column: 9, scope: !1269)
!1273 = !DILocation(line: 597, column: 50, scope: !1269)
!1274 = !DILocation(line: 600, column: 9, scope: !1269)
!1275 = !DILocation(line: 600, column: 36, scope: !1269)
!1276 = !DILocation(line: 599, column: 26, scope: !1269)
!1277 = !DILocation(line: 596, column: 24, scope: !1269)
!1278 = !DILocation(line: 601, column: 4, scope: !1269)
!1279 = !DILocation(line: 603, column: 9, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 601, column: 11)
!1281 = !DILocation(line: 603, column: 36, scope: !1280)
!1282 = !DILocation(line: 603, column: 52, scope: !1280)
!1283 = !DILocation(line: 605, column: 9, scope: !1280)
!1284 = !DILocation(line: 605, column: 36, scope: !1280)
!1285 = !DILocation(line: 604, column: 50, scope: !1280)
!1286 = !DILocation(line: 602, column: 24, scope: !1280)
!1287 = !DILocation(line: 607, column: 4, scope: !1140)
!1288 = !DILocation(line: 613, column: 5, scope: !1139)
!1289 = !DILocation(line: 614, column: 9, scope: !1139)
!1290 = !DILocation(line: 615, column: 32, scope: !1139)
!1291 = !DILocation(line: 615, column: 5, scope: !1139)
!1292 = !DILocation(line: 620, column: 28, scope: !1139)
!1293 = !DILocation(line: 619, column: 9, scope: !1139)
!1294 = !DILocation(line: 618, column: 33, scope: !1139)
!1295 = !DILocation(line: 622, column: 27, scope: !1139)
!1296 = !DILocation(line: 622, column: 9, scope: !1139)
!1297 = !DILocation(line: 623, column: 9, scope: !1139)
!1298 = !DILocation(line: 622, column: 43, scope: !1139)
!1299 = !DILocation(line: 621, column: 24, scope: !1139)
!1300 = !DILocation(line: 625, column: 4, scope: !1140)
!1301 = !DILocation(line: 631, column: 8, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 631, column: 8)
!1303 = !DILocation(line: 631, column: 33, scope: !1302)
!1304 = !DILocation(line: 631, column: 8, scope: !1140)
!1305 = !DILocation(line: 633, column: 9, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 631, column: 48)
!1307 = !DILocation(line: 633, column: 34, scope: !1306)
!1308 = !DILocation(line: 634, column: 9, scope: !1306)
!1309 = !DILocation(line: 634, column: 34, scope: !1306)
!1310 = !DILocation(line: 633, column: 48, scope: !1306)
!1311 = !DILocation(line: 635, column: 9, scope: !1306)
!1312 = !DILocation(line: 635, column: 34, scope: !1306)
!1313 = !DILocation(line: 634, column: 51, scope: !1306)
!1314 = !DILocation(line: 632, column: 24, scope: !1306)
!1315 = !DILocation(line: 636, column: 4, scope: !1306)
!1316 = !DILocation(line: 638, column: 9, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 636, column: 11)
!1318 = !DILocation(line: 638, column: 36, scope: !1317)
!1319 = !DILocation(line: 638, column: 52, scope: !1317)
!1320 = !DILocation(line: 640, column: 9, scope: !1317)
!1321 = !DILocation(line: 640, column: 34, scope: !1317)
!1322 = !DILocation(line: 639, column: 50, scope: !1317)
!1323 = !DILocation(line: 637, column: 24, scope: !1317)
!1324 = !DILocation(line: 642, column: 4, scope: !1140)
!1325 = !DILocation(line: 647, column: 8, scope: !1140)
!1326 = !DILocation(line: 647, column: 32, scope: !1140)
!1327 = !DILocation(line: 648, column: 8, scope: !1140)
!1328 = !DILocation(line: 648, column: 32, scope: !1140)
!1329 = !DILocation(line: 647, column: 46, scope: !1140)
!1330 = !DILocation(line: 649, column: 8, scope: !1140)
!1331 = !DILocation(line: 649, column: 32, scope: !1140)
!1332 = !DILocation(line: 648, column: 49, scope: !1140)
!1333 = !DILocation(line: 646, column: 23, scope: !1140)
!1334 = !DILocation(line: 651, column: 4, scope: !1140)
!1335 = !DILocation(line: 656, column: 8, scope: !1140)
!1336 = !DILocation(line: 656, column: 41, scope: !1140)
!1337 = !DILocation(line: 657, column: 8, scope: !1140)
!1338 = !DILocation(line: 657, column: 41, scope: !1140)
!1339 = !DILocation(line: 656, column: 55, scope: !1140)
!1340 = !DILocation(line: 658, column: 8, scope: !1140)
!1341 = !DILocation(line: 658, column: 41, scope: !1140)
!1342 = !DILocation(line: 657, column: 59, scope: !1140)
!1343 = !DILocation(line: 655, column: 23, scope: !1140)
!1344 = !DILocation(line: 660, column: 4, scope: !1140)
!1345 = !DILocation(line: 665, column: 8, scope: !1140)
!1346 = !DILocation(line: 665, column: 39, scope: !1140)
!1347 = !DILocation(line: 666, column: 8, scope: !1140)
!1348 = !DILocation(line: 666, column: 39, scope: !1140)
!1349 = !DILocation(line: 665, column: 53, scope: !1140)
!1350 = !DILocation(line: 667, column: 8, scope: !1140)
!1351 = !DILocation(line: 667, column: 39, scope: !1140)
!1352 = !DILocation(line: 666, column: 57, scope: !1140)
!1353 = !DILocation(line: 664, column: 23, scope: !1140)
!1354 = !DILocation(line: 669, column: 4, scope: !1140)
!1355 = !DILocation(line: 673, column: 37, scope: !1140)
!1356 = !DILocation(line: 674, column: 9, scope: !1140)
!1357 = !DILocation(line: 673, column: 8, scope: !1140)
!1358 = !DILocation(line: 672, column: 23, scope: !1140)
!1359 = !DILocation(line: 676, column: 4, scope: !1140)
!1360 = !DILocation(line: 680, column: 4, scope: !1140)
!1361 = !DILocation(line: 689, column: 33, scope: !1144)
!1362 = !DILocation(line: 689, column: 7, scope: !1144)
!1363 = !DILocation(line: 689, column: 45, scope: !1144)
!1364 = !DILocation(line: 689, column: 7, scope: !1141)
!1365 = !DILocation(line: 694, column: 4, scope: !1143)
!1366 = !DILocation(line: 694, column: 41, scope: !1143)
!1367 = !DILocation(line: 695, column: 31, scope: !1143)
!1368 = !DILocation(line: 695, column: 4, scope: !1143)
!1369 = !DILocation(line: 700, column: 27, scope: !1143)
!1370 = !DILocation(line: 699, column: 8, scope: !1143)
!1371 = !DILocation(line: 700, column: 35, scope: !1143)
!1372 = !DILocation(line: 700, column: 33, scope: !1143)
!1373 = !DILocation(line: 698, column: 16, scope: !1143)
!1374 = !DILocation(line: 701, column: 3, scope: !1144)
!1375 = !DILocation(line: 701, column: 3, scope: !1143)
!1376 = !DILocation(line: 703, column: 39, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 701, column: 10)
!1378 = !DILocation(line: 703, column: 8, scope: !1377)
!1379 = !DILocation(line: 704, column: 8, scope: !1377)
!1380 = !DILocation(line: 703, column: 55, scope: !1377)
!1381 = !DILocation(line: 702, column: 16, scope: !1377)
!1382 = !DILocation(line: 707, column: 22, scope: !1141)
!1383 = !DILocation(line: 707, column: 17, scope: !1141)
!1384 = !DILocation(line: 707, column: 15, scope: !1141)
!1385 = !DILocation(line: 708, column: 19, scope: !1141)
!1386 = !DILocation(line: 708, column: 4, scope: !1141)
!1387 = !DILocation(line: 708, column: 16, scope: !1141)
!1388 = !DILocation(line: 720, column: 47, scope: !1141)
!1389 = !DILocation(line: 720, column: 17, scope: !1141)
!1390 = !DILocation(line: 720, column: 14, scope: !1141)
!1391 = distinct !{!1391, !1174, !1392, !742, !743}
!1392 = !DILocation(line: 721, column: 2, scope: !765)
!1393 = !DILocation(line: 725, column: 2, scope: !765)
!1394 = !DILocation(line: 726, column: 1, scope: !765)
!1395 = !DISubprogram(name: "acpi_ut_validate_resource", scope: !1396, file: !1396, line: 601, type: !1397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1396 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!455, !1399, !457, !283}
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !1401, line: 37, size: 9024, elements: !1402)
!1401 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !2102, !2103, !2104, !2105, !2106, !2110, !2112, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2153}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1400, file: !1401, line: 38, baseType: !1399, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1400, file: !1401, line: 39, baseType: !33, size: 8, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !1400, file: !1401, line: 40, baseType: !33, size: 8, offset: 72)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1400, file: !1401, line: 41, baseType: !85, size: 16, offset: 80)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !1400, file: !1401, line: 42, baseType: !33, size: 8, offset: 96)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !1400, file: !1401, line: 43, baseType: !33, size: 8, offset: 104)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !1400, file: !1401, line: 44, baseType: !33, size: 8, offset: 112)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !1400, file: !1401, line: 45, baseType: !1411, size: 16, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !454, line: 445, baseType: !85)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !1400, file: !1401, line: 46, baseType: !33, size: 8, offset: 144)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !1400, file: !1401, line: 47, baseType: !33, size: 8, offset: 152)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !1400, file: !1401, line: 48, baseType: !33, size: 8, offset: 160)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !1400, file: !1401, line: 49, baseType: !33, size: 8, offset: 168)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1400, file: !1401, line: 50, baseType: !33, size: 8, offset: 176)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !1400, file: !1401, line: 51, baseType: !33, size: 8, offset: 184)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !1400, file: !1401, line: 52, baseType: !33, size: 8, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !1400, file: !1401, line: 53, baseType: !33, size: 8, offset: 200)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1400, file: !1401, line: 54, baseType: !283, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !1400, file: !1401, line: 55, baseType: !21, size: 32, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !1400, file: !1401, line: 56, baseType: !21, size: 32, offset: 352)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !1400, file: !1401, line: 57, baseType: !21, size: 32, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !1400, file: !1401, line: 58, baseType: !21, size: 32, offset: 416)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !1400, file: !1401, line: 60, baseType: !1426, size: 640, offset: 448)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !1427, line: 909, size: 640, elements: !1428)
!1427 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1434, !1999, !2000, !2100, !2101}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1426, file: !1427, line: 910, baseType: !283, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1426, file: !1427, line: 911, baseType: !283, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !1426, file: !1427, line: 912, baseType: !283, size: 64, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !1426, file: !1427, line: 913, baseType: !283, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !1426, file: !1427, line: 914, baseType: !283, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !1426, file: !1427, line: 915, baseType: !1435, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !1427, line: 891, size: 1600, elements: !1437)
!1437 = !{!1438, !1942, !1958}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1436, file: !1427, line: 892, baseType: !1439, size: 448)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !1427, line: 844, size: 448, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447, !1932, !1941}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1439, file: !1427, line: 845, baseType: !1435, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1439, file: !1427, line: 845, baseType: !33, size: 8, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1439, file: !1427, line: 845, baseType: !33, size: 8, offset: 72)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1439, file: !1427, line: 845, baseType: !85, size: 16, offset: 80)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1439, file: !1427, line: 845, baseType: !283, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1439, file: !1427, line: 845, baseType: !1435, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1439, file: !1427, line: 845, baseType: !1448, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !1427, line: 133, size: 384, elements: !1450)
!1450 = !{!1451, !1916, !1917, !1918, !1919, !1928, !1929, !1930, !1931}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1449, file: !1427, line: 134, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !4, line: 369, size: 576, elements: !1454)
!1454 = !{!1455, !1463, !1476, !1486, !1499, !1513, !1522, !1548, !1577, !1593, !1606, !1685, !1697, !1711, !1721, !1739, !1761, !1780, !1799, !1818, !1835, !1862, !1879, !1892, !1906, !1915}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1453, file: !4, line: 370, baseType: !1456, size: 128)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !4, line: 73, size: 128, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461, !1462}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1456, file: !4, line: 74, baseType: !1452, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1456, file: !4, line: 74, baseType: !33, size: 8, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1456, file: !4, line: 74, baseType: !33, size: 8, offset: 72)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1456, file: !4, line: 74, baseType: !85, size: 16, offset: 80)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1456, file: !4, line: 74, baseType: !33, size: 8, offset: 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1453, file: !4, line: 371, baseType: !1464, size: 192)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !4, line: 76, size: 192, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !1475}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1464, file: !4, line: 77, baseType: !1452, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1464, file: !4, line: 77, baseType: !33, size: 8, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1464, file: !4, line: 77, baseType: !33, size: 8, offset: 72)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1464, file: !4, line: 77, baseType: !85, size: 16, offset: 80)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1464, file: !4, line: 77, baseType: !33, size: 8, offset: 96)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !1464, file: !4, line: 77, baseType: !1472, size: 24, offset: 104)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !1473)
!1473 = !{!1474}
!1474 = !DISubrange(count: 3)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1464, file: !4, line: 78, baseType: !214, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1453, file: !4, line: 372, baseType: !1477, size: 256)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !4, line: 93, size: 256, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484, !1485}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1477, file: !4, line: 94, baseType: !1452, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1477, file: !4, line: 94, baseType: !33, size: 8, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1477, file: !4, line: 94, baseType: !33, size: 8, offset: 72)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1477, file: !4, line: 94, baseType: !85, size: 16, offset: 80)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1477, file: !4, line: 94, baseType: !33, size: 8, offset: 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1477, file: !4, line: 94, baseType: !181, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1477, file: !4, line: 94, baseType: !21, size: 32, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1453, file: !4, line: 373, baseType: !1487, size: 384)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !4, line: 97, size: 384, elements: !1488)
!1488 = !{!1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1487, file: !4, line: 98, baseType: !1452, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1487, file: !4, line: 98, baseType: !33, size: 8, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1487, file: !4, line: 98, baseType: !33, size: 8, offset: 72)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1487, file: !4, line: 98, baseType: !85, size: 16, offset: 80)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1487, file: !4, line: 98, baseType: !33, size: 8, offset: 96)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1487, file: !4, line: 98, baseType: !283, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1487, file: !4, line: 98, baseType: !21, size: 32, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1487, file: !4, line: 99, baseType: !21, size: 32, offset: 224)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1487, file: !4, line: 100, baseType: !283, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1487, file: !4, line: 101, baseType: !1448, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1453, file: !4, line: 374, baseType: !1500, size: 384)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !4, line: 104, size: 384, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508, !1510, !1511, !1512}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1500, file: !4, line: 105, baseType: !1452, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1500, file: !4, line: 105, baseType: !33, size: 8, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1500, file: !4, line: 105, baseType: !33, size: 8, offset: 72)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1500, file: !4, line: 105, baseType: !85, size: 16, offset: 80)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1500, file: !4, line: 105, baseType: !33, size: 8, offset: 96)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1500, file: !4, line: 105, baseType: !1448, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1500, file: !4, line: 106, baseType: !1509, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1500, file: !4, line: 107, baseType: !283, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1500, file: !4, line: 108, baseType: !21, size: 32, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1500, file: !4, line: 109, baseType: !21, size: 32, offset: 352)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1453, file: !4, line: 375, baseType: !1514, size: 192)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !4, line: 118, size: 192, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1514, file: !4, line: 119, baseType: !1452, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1514, file: !4, line: 119, baseType: !33, size: 8, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1514, file: !4, line: 119, baseType: !33, size: 8, offset: 72)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1514, file: !4, line: 119, baseType: !85, size: 16, offset: 80)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1514, file: !4, line: 119, baseType: !33, size: 8, offset: 96)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !1514, file: !4, line: 119, baseType: !457, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1453, file: !4, line: 376, baseType: !1523, size: 448)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !4, line: 144, size: 448, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1545, !1546, !1547}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1523, file: !4, line: 145, baseType: !1452, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1523, file: !4, line: 145, baseType: !33, size: 8, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1523, file: !4, line: 145, baseType: !33, size: 8, offset: 72)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1523, file: !4, line: 145, baseType: !85, size: 16, offset: 80)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1523, file: !4, line: 145, baseType: !33, size: 8, offset: 96)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !1523, file: !4, line: 145, baseType: !33, size: 8, offset: 104)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1523, file: !4, line: 146, baseType: !33, size: 8, offset: 112)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !1523, file: !4, line: 147, baseType: !33, size: 8, offset: 120)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1523, file: !4, line: 148, baseType: !1452, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1523, file: !4, line: 149, baseType: !1452, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1523, file: !4, line: 150, baseType: !283, size: 64, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1523, file: !4, line: 154, baseType: !1537, size: 64, offset: 320)
!1537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1523, file: !4, line: 151, size: 64, elements: !1538)
!1538 = !{!1539, !1544}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !1537, file: !4, line: 152, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !1427, line: 248, baseType: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!455, !1399}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1537, file: !4, line: 153, baseType: !1452, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1523, file: !4, line: 156, baseType: !21, size: 32, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !1523, file: !4, line: 157, baseType: !1411, size: 16, offset: 416)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !1523, file: !4, line: 158, baseType: !33, size: 8, offset: 432)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1453, file: !4, line: 377, baseType: !1549, size: 576)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !4, line: 122, size: 576, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1573, !1574, !1575, !1576}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1549, file: !4, line: 123, baseType: !1452, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1549, file: !4, line: 123, baseType: !33, size: 8, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1549, file: !4, line: 123, baseType: !33, size: 8, offset: 72)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1549, file: !4, line: 123, baseType: !85, size: 16, offset: 80)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1549, file: !4, line: 123, baseType: !33, size: 8, offset: 96)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !1549, file: !4, line: 123, baseType: !33, size: 8, offset: 104)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !1549, file: !4, line: 124, baseType: !85, size: 16, offset: 112)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !1549, file: !4, line: 125, baseType: !457, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !1549, file: !4, line: 126, baseType: !214, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !1549, file: !4, line: 127, baseType: !1561, size: 64, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !1427, line: 634, size: 320, elements: !1563)
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1562, file: !1427, line: 635, baseType: !457, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1562, file: !1427, line: 635, baseType: !33, size: 8, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1562, file: !1427, line: 635, baseType: !33, size: 8, offset: 72)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1562, file: !1427, line: 635, baseType: !85, size: 16, offset: 80)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1562, file: !1427, line: 635, baseType: !85, size: 16, offset: 96)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !1562, file: !1427, line: 636, baseType: !33, size: 8, offset: 112)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !1562, file: !1427, line: 637, baseType: !1399, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !1562, file: !1427, line: 638, baseType: !1452, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !1562, file: !1427, line: 639, baseType: !214, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1549, file: !4, line: 128, baseType: !1452, size: 64, offset: 320)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1549, file: !4, line: 129, baseType: !1452, size: 64, offset: 384)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1549, file: !4, line: 130, baseType: !1448, size: 64, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !1549, file: !4, line: 131, baseType: !33, size: 8, offset: 512)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1453, file: !4, line: 378, baseType: !1578, size: 512)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !4, line: 134, size: 512, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1591, !1592}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1578, file: !4, line: 135, baseType: !1452, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1578, file: !4, line: 135, baseType: !33, size: 8, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1578, file: !4, line: 135, baseType: !33, size: 8, offset: 72)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1578, file: !4, line: 135, baseType: !85, size: 16, offset: 80)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1578, file: !4, line: 135, baseType: !33, size: 8, offset: 96)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1578, file: !4, line: 135, baseType: !33, size: 8, offset: 104)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1578, file: !4, line: 136, baseType: !1448, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1578, file: !4, line: 137, baseType: !1452, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1578, file: !4, line: 138, baseType: !1452, size: 64, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1578, file: !4, line: 139, baseType: !1590, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !454, line: 129, baseType: !214)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1578, file: !4, line: 140, baseType: !21, size: 32, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1578, file: !4, line: 141, baseType: !457, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !1453, file: !4, line: 379, baseType: !1594, size: 320)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !4, line: 185, size: 320, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1605}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1594, file: !4, line: 186, baseType: !1452, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1594, file: !4, line: 186, baseType: !33, size: 8, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1594, file: !4, line: 186, baseType: !33, size: 8, offset: 72)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1594, file: !4, line: 186, baseType: !85, size: 16, offset: 80)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1594, file: !4, line: 186, baseType: !33, size: 8, offset: 96)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1594, file: !4, line: 186, baseType: !1602, size: 128, offset: 128)
!1602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1452, size: 128, elements: !1603)
!1603 = !{!1604}
!1604 = !DISubrange(count: 2)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1594, file: !4, line: 186, baseType: !1452, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1453, file: !4, line: 380, baseType: !1607, size: 384)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !4, line: 188, size: 384, elements: !1608)
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1607, file: !4, line: 189, baseType: !1452, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1607, file: !4, line: 189, baseType: !33, size: 8, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1607, file: !4, line: 189, baseType: !33, size: 8, offset: 72)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1607, file: !4, line: 189, baseType: !85, size: 16, offset: 80)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1607, file: !4, line: 189, baseType: !33, size: 8, offset: 96)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1607, file: !4, line: 190, baseType: !1602, size: 128, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1607, file: !4, line: 190, baseType: !1452, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !1607, file: !4, line: 190, baseType: !1617, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !1427, line: 480, size: 576, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1623, !1631, !1646, !1679, !1680, !1681, !1682, !1683, !1684}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1618, file: !1427, line: 481, baseType: !1448, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1618, file: !1427, line: 482, baseType: !1617, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1618, file: !1427, line: 483, baseType: !1617, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !1618, file: !1427, line: 484, baseType: !1624, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !1427, line: 497, size: 256, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1630}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1625, file: !1427, line: 498, baseType: !1624, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1625, file: !1427, line: 499, baseType: !1624, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !1625, file: !1427, line: 500, baseType: !1617, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !1625, file: !1427, line: 501, baseType: !21, size: 32, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !1618, file: !1427, line: 485, baseType: !1632, size: 64, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !1427, line: 466, size: 320, elements: !1634)
!1634 = !{!1635, !1640, !1641, !1642, !1643, !1644, !1645}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !1633, file: !1427, line: 467, baseType: !1636, size: 128)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !1427, line: 459, size: 128, elements: !1637)
!1637 = !{!1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1636, file: !1427, line: 460, baseType: !33, size: 8)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1636, file: !1427, line: 461, baseType: !214, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !1633, file: !1427, line: 468, baseType: !1636, size: 128, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !1633, file: !1427, line: 469, baseType: !85, size: 16, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !1633, file: !1427, line: 470, baseType: !33, size: 8, offset: 272)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !1633, file: !1427, line: 471, baseType: !33, size: 8, offset: 280)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !1633, file: !1427, line: 472, baseType: !33, size: 8, offset: 288)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !1633, file: !1427, line: 473, baseType: !33, size: 8, offset: 296)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !1618, file: !1427, line: 486, baseType: !1647, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !1427, line: 448, size: 192, elements: !1649)
!1649 = !{!1650, !1674, !1675, !1676, !1677, !1678}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1648, file: !1427, line: 449, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !1427, line: 438, size: 64, elements: !1652)
!1652 = !{!1653, !1654, !1668}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1651, file: !1427, line: 439, baseType: !1448, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1651, file: !1427, line: 440, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !1427, line: 419, size: 256, elements: !1657)
!1657 = !{!1658, !1664, !1665, !1666, !1667}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1656, file: !1427, line: 420, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !454, line: 1058, baseType: !1660)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!21, !1663, !21, !457}
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !454, line: 424, baseType: !457)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1656, file: !1427, line: 421, baseType: !457, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1656, file: !1427, line: 422, baseType: !1448, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !1656, file: !1427, line: 423, baseType: !33, size: 8, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !1656, file: !1427, line: 424, baseType: !33, size: 8, offset: 200)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1651, file: !1427, line: 441, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !1427, line: 429, size: 128, elements: !1671)
!1671 = !{!1672, !1673}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !1670, file: !1427, line: 430, baseType: !1448, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1670, file: !1427, line: 431, baseType: !1669, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !1648, file: !1427, line: 450, baseType: !1632, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1648, file: !1427, line: 451, baseType: !33, size: 8, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1648, file: !1427, line: 452, baseType: !33, size: 8, offset: 136)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !1648, file: !1427, line: 453, baseType: !33, size: 8, offset: 144)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !1648, file: !1427, line: 454, baseType: !33, size: 8, offset: 152)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1618, file: !1427, line: 487, baseType: !214, size: 64, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !1618, file: !1427, line: 488, baseType: !21, size: 32, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !1618, file: !1427, line: 489, baseType: !85, size: 16, offset: 480)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !1618, file: !1427, line: 490, baseType: !85, size: 16, offset: 496)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1618, file: !1427, line: 491, baseType: !33, size: 8, offset: 512)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1618, file: !1427, line: 492, baseType: !33, size: 8, offset: 520)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1453, file: !4, line: 381, baseType: !1686, size: 384)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !4, line: 193, size: 384, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1686, file: !4, line: 194, baseType: !1452, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1686, file: !4, line: 194, baseType: !33, size: 8, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1686, file: !4, line: 194, baseType: !33, size: 8, offset: 72)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1686, file: !4, line: 194, baseType: !85, size: 16, offset: 80)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1686, file: !4, line: 194, baseType: !33, size: 8, offset: 96)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1686, file: !4, line: 194, baseType: !1602, size: 128, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1686, file: !4, line: 194, baseType: !1452, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1686, file: !4, line: 194, baseType: !21, size: 32, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1686, file: !4, line: 195, baseType: !21, size: 32, offset: 352)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1453, file: !4, line: 382, baseType: !1698, size: 384)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !4, line: 198, size: 384, elements: !1699)
!1699 = !{!1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1698, file: !4, line: 199, baseType: !1452, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1698, file: !4, line: 199, baseType: !33, size: 8, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1698, file: !4, line: 199, baseType: !33, size: 8, offset: 72)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1698, file: !4, line: 199, baseType: !85, size: 16, offset: 80)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1698, file: !4, line: 199, baseType: !33, size: 8, offset: 96)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1698, file: !4, line: 201, baseType: !33, size: 8, offset: 104)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1698, file: !4, line: 202, baseType: !33, size: 8, offset: 112)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1698, file: !4, line: 203, baseType: !1602, size: 128, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1698, file: !4, line: 203, baseType: !1452, size: 64, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1698, file: !4, line: 203, baseType: !1710, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !454, line: 128, baseType: !214)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !1453, file: !4, line: 383, baseType: !1712, size: 320)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !4, line: 206, size: 320, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1717, !1718, !1719, !1720}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1712, file: !4, line: 207, baseType: !1452, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1712, file: !4, line: 207, baseType: !33, size: 8, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1712, file: !4, line: 207, baseType: !33, size: 8, offset: 72)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1712, file: !4, line: 207, baseType: !85, size: 16, offset: 80)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1712, file: !4, line: 207, baseType: !33, size: 8, offset: 96)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1712, file: !4, line: 207, baseType: !1602, size: 128, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1712, file: !4, line: 207, baseType: !1452, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !1453, file: !4, line: 384, baseType: !1722, size: 384)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !4, line: 234, size: 384, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1722, file: !4, line: 235, baseType: !1452, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1722, file: !4, line: 235, baseType: !33, size: 8, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1722, file: !4, line: 235, baseType: !33, size: 8, offset: 72)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1722, file: !4, line: 235, baseType: !85, size: 16, offset: 80)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1722, file: !4, line: 235, baseType: !33, size: 8, offset: 96)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1722, file: !4, line: 235, baseType: !33, size: 8, offset: 104)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1722, file: !4, line: 235, baseType: !33, size: 8, offset: 112)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1722, file: !4, line: 235, baseType: !33, size: 8, offset: 120)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1722, file: !4, line: 235, baseType: !1448, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1722, file: !4, line: 235, baseType: !21, size: 32, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1722, file: !4, line: 235, baseType: !21, size: 32, offset: 224)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1722, file: !4, line: 235, baseType: !21, size: 32, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1722, file: !4, line: 235, baseType: !33, size: 8, offset: 288)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1722, file: !4, line: 235, baseType: !33, size: 8, offset: 296)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1722, file: !4, line: 235, baseType: !1452, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !1453, file: !4, line: 385, baseType: !1740, size: 576)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !4, line: 238, size: 576, elements: !1741)
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1740, file: !4, line: 239, baseType: !1452, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1740, file: !4, line: 239, baseType: !33, size: 8, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1740, file: !4, line: 239, baseType: !33, size: 8, offset: 72)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1740, file: !4, line: 239, baseType: !85, size: 16, offset: 80)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1740, file: !4, line: 239, baseType: !33, size: 8, offset: 96)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1740, file: !4, line: 239, baseType: !33, size: 8, offset: 104)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1740, file: !4, line: 239, baseType: !33, size: 8, offset: 112)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1740, file: !4, line: 239, baseType: !33, size: 8, offset: 120)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1740, file: !4, line: 239, baseType: !1448, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1740, file: !4, line: 239, baseType: !21, size: 32, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1740, file: !4, line: 239, baseType: !21, size: 32, offset: 224)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1740, file: !4, line: 239, baseType: !21, size: 32, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1740, file: !4, line: 239, baseType: !33, size: 8, offset: 288)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1740, file: !4, line: 239, baseType: !33, size: 8, offset: 296)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1740, file: !4, line: 239, baseType: !85, size: 16, offset: 304)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1740, file: !4, line: 240, baseType: !1452, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !1740, file: !4, line: 241, baseType: !283, size: 64, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !1740, file: !4, line: 242, baseType: !85, size: 16, offset: 448)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !1740, file: !4, line: 243, baseType: !283, size: 64, offset: 512)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !1453, file: !4, line: 386, baseType: !1762, size: 384)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !4, line: 263, size: 384, elements: !1763)
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1762, file: !4, line: 264, baseType: !1452, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1762, file: !4, line: 264, baseType: !33, size: 8, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1762, file: !4, line: 264, baseType: !33, size: 8, offset: 72)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1762, file: !4, line: 264, baseType: !85, size: 16, offset: 80)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1762, file: !4, line: 264, baseType: !33, size: 8, offset: 96)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1762, file: !4, line: 264, baseType: !33, size: 8, offset: 104)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1762, file: !4, line: 264, baseType: !33, size: 8, offset: 112)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1762, file: !4, line: 264, baseType: !33, size: 8, offset: 120)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1762, file: !4, line: 264, baseType: !1448, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1762, file: !4, line: 264, baseType: !21, size: 32, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1762, file: !4, line: 264, baseType: !21, size: 32, offset: 224)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1762, file: !4, line: 264, baseType: !21, size: 32, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1762, file: !4, line: 264, baseType: !33, size: 8, offset: 288)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1762, file: !4, line: 264, baseType: !33, size: 8, offset: 296)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !1762, file: !4, line: 264, baseType: !33, size: 8, offset: 304)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !1762, file: !4, line: 265, baseType: !1452, size: 64, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !1453, file: !4, line: 387, baseType: !1781, size: 448)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !4, line: 246, size: 448, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1781, file: !4, line: 247, baseType: !1452, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1781, file: !4, line: 247, baseType: !33, size: 8, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1781, file: !4, line: 247, baseType: !33, size: 8, offset: 72)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1781, file: !4, line: 247, baseType: !85, size: 16, offset: 80)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1781, file: !4, line: 247, baseType: !33, size: 8, offset: 96)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1781, file: !4, line: 247, baseType: !33, size: 8, offset: 104)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1781, file: !4, line: 247, baseType: !33, size: 8, offset: 112)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1781, file: !4, line: 247, baseType: !33, size: 8, offset: 120)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1781, file: !4, line: 247, baseType: !1448, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1781, file: !4, line: 247, baseType: !21, size: 32, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1781, file: !4, line: 247, baseType: !21, size: 32, offset: 224)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1781, file: !4, line: 247, baseType: !21, size: 32, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1781, file: !4, line: 247, baseType: !33, size: 8, offset: 288)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1781, file: !4, line: 247, baseType: !33, size: 8, offset: 296)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1781, file: !4, line: 247, baseType: !1452, size: 64, offset: 320)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !1781, file: !4, line: 248, baseType: !1452, size: 64, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !1453, file: !4, line: 388, baseType: !1800, size: 448)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !4, line: 251, size: 448, elements: !1801)
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1800, file: !4, line: 252, baseType: !1452, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1800, file: !4, line: 252, baseType: !33, size: 8, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1800, file: !4, line: 252, baseType: !33, size: 8, offset: 72)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1800, file: !4, line: 252, baseType: !85, size: 16, offset: 80)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1800, file: !4, line: 252, baseType: !33, size: 8, offset: 96)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1800, file: !4, line: 252, baseType: !33, size: 8, offset: 104)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1800, file: !4, line: 252, baseType: !33, size: 8, offset: 112)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1800, file: !4, line: 252, baseType: !33, size: 8, offset: 120)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1800, file: !4, line: 252, baseType: !1448, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1800, file: !4, line: 252, baseType: !21, size: 32, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1800, file: !4, line: 252, baseType: !21, size: 32, offset: 224)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1800, file: !4, line: 252, baseType: !21, size: 32, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1800, file: !4, line: 252, baseType: !33, size: 8, offset: 288)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1800, file: !4, line: 252, baseType: !33, size: 8, offset: 296)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !1800, file: !4, line: 257, baseType: !1452, size: 64, offset: 320)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !1800, file: !4, line: 258, baseType: !1452, size: 64, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1453, file: !4, line: 389, baseType: !1819, size: 512)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !4, line: 274, size: 512, elements: !1820)
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1833, !1834}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1819, file: !4, line: 275, baseType: !1452, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1819, file: !4, line: 275, baseType: !33, size: 8, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1819, file: !4, line: 275, baseType: !33, size: 8, offset: 72)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1819, file: !4, line: 275, baseType: !85, size: 16, offset: 80)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1819, file: !4, line: 275, baseType: !33, size: 8, offset: 96)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1819, file: !4, line: 275, baseType: !1448, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !1819, file: !4, line: 276, baseType: !21, size: 32, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1819, file: !4, line: 277, baseType: !1829, size: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !454, line: 1061, baseType: !1830)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1663, !21, !457}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1819, file: !4, line: 278, baseType: !457, size: 64, offset: 320)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1819, file: !4, line: 279, baseType: !1602, size: 128, offset: 384)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1453, file: !4, line: 390, baseType: !1836, size: 576)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !4, line: 282, size: 576, elements: !1837)
!1837 = !{!1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1851, !1852, !1853, !1854, !1860, !1861}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1836, file: !4, line: 283, baseType: !1452, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1836, file: !4, line: 283, baseType: !33, size: 8, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1836, file: !4, line: 283, baseType: !33, size: 8, offset: 72)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1836, file: !4, line: 283, baseType: !85, size: 16, offset: 80)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1836, file: !4, line: 283, baseType: !33, size: 8, offset: 96)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1836, file: !4, line: 283, baseType: !33, size: 8, offset: 104)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !1836, file: !4, line: 284, baseType: !33, size: 8, offset: 112)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1836, file: !4, line: 285, baseType: !1846, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !454, line: 1093, baseType: !1847)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!455, !21, !1590, !21, !1850, !457, !457}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1836, file: !4, line: 286, baseType: !1448, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1836, file: !4, line: 287, baseType: !457, size: 64, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !1836, file: !4, line: 288, baseType: !457, size: 64, offset: 320)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1836, file: !4, line: 289, baseType: !1855, size: 64, offset: 384)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !454, line: 1126, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!455, !1663, !21, !457, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !1836, file: !4, line: 290, baseType: !1452, size: 64, offset: 448)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1836, file: !4, line: 291, baseType: !1452, size: 64, offset: 512)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1453, file: !4, line: 391, baseType: !1863, size: 512)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !4, line: 309, size: 512, elements: !1864)
!1864 = !{!1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1863, file: !4, line: 310, baseType: !1452, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1863, file: !4, line: 310, baseType: !33, size: 8, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1863, file: !4, line: 310, baseType: !33, size: 8, offset: 72)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1863, file: !4, line: 310, baseType: !85, size: 16, offset: 80)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1863, file: !4, line: 310, baseType: !33, size: 8, offset: 96)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1863, file: !4, line: 310, baseType: !33, size: 8, offset: 104)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !1863, file: !4, line: 311, baseType: !33, size: 8, offset: 112)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !1863, file: !4, line: 312, baseType: !33, size: 8, offset: 120)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1863, file: !4, line: 313, baseType: !457, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1863, file: !4, line: 314, baseType: !1448, size: 64, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !1863, file: !4, line: 315, baseType: !1509, size: 64, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !1863, file: !4, line: 316, baseType: !283, size: 64, offset: 320)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1863, file: !4, line: 317, baseType: !283, size: 64, offset: 384)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1863, file: !4, line: 318, baseType: !21, size: 32, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !1453, file: !4, line: 392, baseType: !1880, size: 448)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !4, line: 342, size: 448, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1880, file: !4, line: 343, baseType: !1452, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1880, file: !4, line: 343, baseType: !33, size: 8, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1880, file: !4, line: 343, baseType: !33, size: 8, offset: 72)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1880, file: !4, line: 343, baseType: !85, size: 16, offset: 80)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1880, file: !4, line: 343, baseType: !33, size: 8, offset: 96)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !1880, file: !4, line: 343, baseType: !1448, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !1880, file: !4, line: 344, baseType: !1448, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !1880, file: !4, line: 345, baseType: !457, size: 64, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1880, file: !4, line: 346, baseType: !283, size: 64, offset: 320)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1880, file: !4, line: 347, baseType: !21, size: 32, offset: 384)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1453, file: !4, line: 393, baseType: !1893, size: 256)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !4, line: 352, size: 256, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900, !1905}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1893, file: !4, line: 353, baseType: !1452, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1893, file: !4, line: 353, baseType: !33, size: 8, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1893, file: !4, line: 353, baseType: !33, size: 8, offset: 72)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1893, file: !4, line: 353, baseType: !85, size: 16, offset: 80)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1893, file: !4, line: 353, baseType: !33, size: 8, offset: 96)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1893, file: !4, line: 353, baseType: !1901, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !454, line: 1064, baseType: !1902)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{null, !1663, !457}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1893, file: !4, line: 354, baseType: !457, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1453, file: !4, line: 394, baseType: !1907, size: 192)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !4, line: 359, size: 192, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1907, file: !4, line: 360, baseType: !1452, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1907, file: !4, line: 360, baseType: !33, size: 8, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1907, file: !4, line: 360, baseType: !33, size: 8, offset: 72)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1907, file: !4, line: 360, baseType: !85, size: 16, offset: 80)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !4, line: 360, baseType: !33, size: 8, offset: 96)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1907, file: !4, line: 360, baseType: !1452, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1453, file: !4, line: 401, baseType: !1449, size: 384)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1449, file: !1427, line: 135, baseType: !33, size: 8, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1449, file: !1427, line: 136, baseType: !33, size: 8, offset: 72)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1449, file: !1427, line: 137, baseType: !85, size: 16, offset: 80)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1449, file: !1427, line: 138, baseType: !1920, size: 32, offset: 96)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !1921, line: 328, size: 32, elements: !1922)
!1921 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1920, file: !1921, line: 329, baseType: !21, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !1920, file: !1921, line: 330, baseType: !1925, size: 32)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 32, elements: !1926)
!1926 = !{!1927}
!1927 = !DISubrange(count: 4)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1449, file: !1427, line: 139, baseType: !1448, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1449, file: !1427, line: 140, baseType: !1448, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1449, file: !1427, line: 141, baseType: !1448, size: 64, offset: 256)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !1449, file: !1427, line: 142, baseType: !1411, size: 16, offset: 320)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1439, file: !1427, line: 845, baseType: !1933, size: 64, offset: 320)
!1933 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !1427, line: 732, size: 64, elements: !1934)
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1933, file: !1427, line: 733, baseType: !214, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1933, file: !1427, line: 734, baseType: !21, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1933, file: !1427, line: 735, baseType: !181, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1933, file: !1427, line: 736, baseType: !283, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1933, file: !1427, line: 737, baseType: !181, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1933, file: !1427, line: 738, baseType: !1435, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1439, file: !1427, line: 845, baseType: !33, size: 8, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1436, file: !1427, line: 893, baseType: !1943, size: 640)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !1427, line: 851, size: 640, elements: !1944)
!1944 = !{!1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1943, file: !1427, line: 852, baseType: !1435, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1943, file: !1427, line: 852, baseType: !33, size: 8, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1943, file: !1427, line: 852, baseType: !33, size: 8, offset: 72)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1943, file: !1427, line: 852, baseType: !85, size: 16, offset: 80)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1943, file: !1427, line: 852, baseType: !283, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1943, file: !1427, line: 852, baseType: !1435, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1943, file: !1427, line: 852, baseType: !1448, size: 64, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1943, file: !1427, line: 852, baseType: !1933, size: 64, offset: 320)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1943, file: !1427, line: 852, baseType: !33, size: 8, offset: 384)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1943, file: !1427, line: 852, baseType: !181, size: 64, offset: 448)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1943, file: !1427, line: 853, baseType: !283, size: 64, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1943, file: !1427, line: 854, baseType: !21, size: 32, offset: 576)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1943, file: !1427, line: 855, baseType: !21, size: 32, offset: 608)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !1436, file: !1427, line: 894, baseType: !1959, size: 1600)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !1427, line: 862, size: 1600, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1959, file: !1427, line: 863, baseType: !1435, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1959, file: !1427, line: 863, baseType: !33, size: 8, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1959, file: !1427, line: 863, baseType: !33, size: 8, offset: 72)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1959, file: !1427, line: 863, baseType: !85, size: 16, offset: 80)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1959, file: !1427, line: 863, baseType: !283, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1959, file: !1427, line: 863, baseType: !1435, size: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1959, file: !1427, line: 863, baseType: !1448, size: 64, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1959, file: !1427, line: 863, baseType: !1933, size: 64, offset: 320)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1959, file: !1427, line: 863, baseType: !33, size: 8, offset: 384)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1959, file: !1427, line: 863, baseType: !1435, size: 64, offset: 448)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !1959, file: !1427, line: 864, baseType: !1435, size: 64, offset: 512)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1959, file: !1427, line: 865, baseType: !181, size: 64, offset: 576)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !1959, file: !1427, line: 866, baseType: !33, size: 8, offset: 640)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !1959, file: !1427, line: 867, baseType: !181, size: 64, offset: 704)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !1959, file: !1427, line: 868, baseType: !181, size: 64, offset: 768)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !1959, file: !1427, line: 869, baseType: !181, size: 64, offset: 832)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !1959, file: !1427, line: 870, baseType: !1925, size: 32, offset: 896)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !1959, file: !1427, line: 871, baseType: !21, size: 32, offset: 928)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !1959, file: !1427, line: 872, baseType: !21, size: 32, offset: 960)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !1959, file: !1427, line: 873, baseType: !21, size: 32, offset: 992)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !1959, file: !1427, line: 874, baseType: !21, size: 32, offset: 1024)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !1959, file: !1427, line: 875, baseType: !21, size: 32, offset: 1056)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !1959, file: !1427, line: 876, baseType: !21, size: 32, offset: 1088)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !1959, file: !1427, line: 877, baseType: !21, size: 32, offset: 1120)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !1959, file: !1427, line: 878, baseType: !21, size: 32, offset: 1152)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1959, file: !1427, line: 879, baseType: !21, size: 32, offset: 1184)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !1959, file: !1427, line: 880, baseType: !21, size: 32, offset: 1216)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !1959, file: !1427, line: 881, baseType: !21, size: 32, offset: 1248)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !1959, file: !1427, line: 882, baseType: !21, size: 32, offset: 1280)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !1959, file: !1427, line: 883, baseType: !21, size: 32, offset: 1312)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !1959, file: !1427, line: 884, baseType: !85, size: 16, offset: 1344)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !1959, file: !1427, line: 885, baseType: !33, size: 8, offset: 1360)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !1959, file: !1427, line: 886, baseType: !33, size: 8, offset: 1368)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !1959, file: !1427, line: 887, baseType: !33, size: 8, offset: 1376)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !1959, file: !1427, line: 888, baseType: !1996, size: 160, offset: 1384)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 160, elements: !1997)
!1997 = !{!1998}
!1998 = !DISubrange(count: 20)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !1426, file: !1427, line: 916, baseType: !1448, size: 64, offset: 384)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !1426, file: !1427, line: 917, baseType: !2001, size: 64, offset: 448)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !1427, line: 679, size: 640, elements: !2003)
!2003 = !{!2004, !2012, !2025, !2034, !2043, !2056, !2070, !2071, !2083}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2002, file: !1427, line: 680, baseType: !2005, size: 128)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !1427, line: 575, size: 128, elements: !2006)
!2006 = !{!2007, !2008, !2009, !2010, !2011}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2005, file: !1427, line: 576, baseType: !457, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2005, file: !1427, line: 576, baseType: !33, size: 8, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2005, file: !1427, line: 576, baseType: !33, size: 8, offset: 72)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2005, file: !1427, line: 576, baseType: !85, size: 16, offset: 80)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2005, file: !1427, line: 576, baseType: !85, size: 16, offset: 96)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2002, file: !1427, line: 681, baseType: !2013, size: 384)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !1427, line: 604, size: 384, elements: !2014)
!2014 = !{!2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2013, file: !1427, line: 605, baseType: !457, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2013, file: !1427, line: 605, baseType: !33, size: 8, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2013, file: !1427, line: 605, baseType: !33, size: 8, offset: 72)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2013, file: !1427, line: 605, baseType: !85, size: 16, offset: 80)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2013, file: !1427, line: 605, baseType: !85, size: 16, offset: 96)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2013, file: !1427, line: 606, baseType: !85, size: 16, offset: 112)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !2013, file: !1427, line: 607, baseType: !1435, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !2013, file: !1427, line: 608, baseType: !283, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !2013, file: !1427, line: 609, baseType: !283, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !2013, file: !1427, line: 610, baseType: !214, size: 64, offset: 320)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !2002, file: !1427, line: 682, baseType: !2026, size: 192)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !1427, line: 582, size: 192, elements: !2027)
!2027 = !{!2028, !2029, !2030, !2031, !2032, !2033}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2026, file: !1427, line: 583, baseType: !457, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2026, file: !1427, line: 583, baseType: !33, size: 8, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2026, file: !1427, line: 583, baseType: !33, size: 8, offset: 72)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2026, file: !1427, line: 583, baseType: !85, size: 16, offset: 80)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2026, file: !1427, line: 583, baseType: !85, size: 16, offset: 96)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !2026, file: !1427, line: 584, baseType: !1452, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !2002, file: !1427, line: 683, baseType: !2035, size: 192)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !1427, line: 616, size: 192, elements: !2036)
!2036 = !{!2037, !2038, !2039, !2040, !2041, !2042}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2035, file: !1427, line: 617, baseType: !457, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2035, file: !1427, line: 617, baseType: !33, size: 8, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2035, file: !1427, line: 617, baseType: !33, size: 8, offset: 72)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2035, file: !1427, line: 617, baseType: !85, size: 16, offset: 80)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2035, file: !1427, line: 617, baseType: !85, size: 16, offset: 96)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2035, file: !1427, line: 618, baseType: !1448, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !2002, file: !1427, line: 684, baseType: !2044, size: 448)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !1427, line: 621, size: 448, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2044, file: !1427, line: 622, baseType: !457, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2044, file: !1427, line: 622, baseType: !33, size: 8, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2044, file: !1427, line: 622, baseType: !33, size: 8, offset: 72)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2044, file: !1427, line: 622, baseType: !85, size: 16, offset: 80)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2044, file: !1427, line: 622, baseType: !85, size: 16, offset: 96)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !2044, file: !1427, line: 623, baseType: !21, size: 32, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2044, file: !1427, line: 624, baseType: !1435, size: 64, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2044, file: !1427, line: 625, baseType: !283, size: 64, offset: 256)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !2044, file: !1427, line: 626, baseType: !283, size: 64, offset: 320)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !2044, file: !1427, line: 627, baseType: !21, size: 32, offset: 384)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !2002, file: !1427, line: 685, baseType: !2057, size: 512)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !1427, line: 590, size: 512, elements: !2058)
!2058 = !{!2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2057, file: !1427, line: 591, baseType: !457, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2057, file: !1427, line: 591, baseType: !33, size: 8, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2057, file: !1427, line: 591, baseType: !33, size: 8, offset: 72)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2057, file: !1427, line: 591, baseType: !85, size: 16, offset: 80)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2057, file: !1427, line: 591, baseType: !85, size: 16, offset: 96)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2057, file: !1427, line: 592, baseType: !21, size: 32, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !2057, file: !1427, line: 593, baseType: !1452, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !2057, file: !1427, line: 594, baseType: !1452, size: 64, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !2057, file: !1427, line: 595, baseType: !1399, size: 64, offset: 320)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !2057, file: !1427, line: 596, baseType: !457, size: 64, offset: 384)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !2057, file: !1427, line: 597, baseType: !21, size: 32, offset: 448)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2002, file: !1427, line: 686, baseType: !1562, size: 320)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !2002, file: !1427, line: 687, baseType: !2072, size: 640)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !1427, line: 646, size: 640, elements: !2073)
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2072, file: !1427, line: 647, baseType: !457, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2072, file: !1427, line: 647, baseType: !33, size: 8, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2072, file: !1427, line: 647, baseType: !33, size: 8, offset: 72)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2072, file: !1427, line: 647, baseType: !85, size: 16, offset: 80)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2072, file: !1427, line: 647, baseType: !85, size: 16, offset: 96)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !2072, file: !1427, line: 648, baseType: !2080, size: 512, offset: 128)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1452, size: 512, elements: !2081)
!2081 = !{!2082}
!2082 = !DISubrange(count: 8)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2002, file: !1427, line: 688, baseType: !2084, size: 320)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !1427, line: 669, size: 320, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2084, file: !1427, line: 670, baseType: !457, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2084, file: !1427, line: 670, baseType: !33, size: 8, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2084, file: !1427, line: 670, baseType: !33, size: 8, offset: 72)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2084, file: !1427, line: 670, baseType: !85, size: 16, offset: 80)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2084, file: !1427, line: 670, baseType: !85, size: 16, offset: 96)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !2084, file: !1427, line: 671, baseType: !33, size: 8, offset: 112)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2084, file: !1427, line: 672, baseType: !1448, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !2084, file: !1427, line: 673, baseType: !1452, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !2084, file: !1427, line: 674, baseType: !2095, size: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !1427, line: 660, size: 128, elements: !2097)
!2097 = !{!2098, !2099}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2096, file: !1427, line: 661, baseType: !1829, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2096, file: !1427, line: 662, baseType: !457, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !1426, file: !1427, line: 918, baseType: !1435, size: 64, offset: 512)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !1426, file: !1427, line: 919, baseType: !21, size: 32, offset: 576)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !1400, file: !1401, line: 61, baseType: !21, size: 32, offset: 1088)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !1400, file: !1401, line: 62, baseType: !21, size: 32, offset: 1120)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !1400, file: !1401, line: 63, baseType: !85, size: 16, offset: 1152)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !1400, file: !1401, line: 64, baseType: !33, size: 8, offset: 1168)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1400, file: !1401, line: 66, baseType: !2107, size: 2688, offset: 1216)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1449, size: 2688, elements: !2108)
!2108 = !{!2109}
!2109 = !DISubrange(count: 7)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !1400, file: !1401, line: 67, baseType: !2111, size: 3072, offset: 3904)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1449, size: 3072, elements: !2081)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1400, file: !1401, line: 68, baseType: !2113, size: 576, offset: 6976)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1452, size: 576, elements: !2114)
!2114 = !{!2115}
!2115 = !DISubrange(count: 9)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !1400, file: !1401, line: 69, baseType: !1509, size: 64, offset: 7552)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !1400, file: !1401, line: 71, baseType: !283, size: 64, offset: 7616)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !1400, file: !1401, line: 72, baseType: !1509, size: 64, offset: 7680)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !1400, file: !1401, line: 73, baseType: !2001, size: 64, offset: 7744)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !1400, file: !1401, line: 74, baseType: !1448, size: 64, offset: 7808)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !1400, file: !1401, line: 75, baseType: !1452, size: 64, offset: 7872)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !1400, file: !1401, line: 76, baseType: !1448, size: 64, offset: 7936)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !1400, file: !1401, line: 77, baseType: !1435, size: 64, offset: 8000)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !1400, file: !1401, line: 78, baseType: !1452, size: 64, offset: 8064)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1400, file: !1401, line: 79, baseType: !1448, size: 64, offset: 8128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !1400, file: !1401, line: 80, baseType: !181, size: 64, offset: 8192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1400, file: !1401, line: 81, baseType: !1435, size: 64, offset: 8256)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !1400, file: !1401, line: 82, baseType: !2129, size: 64, offset: 8320)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2131)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !1427, line: 718, size: 128, elements: !2132)
!2132 = !{!2133, !2134, !2135, !2136, !2137, !2138}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !2131, file: !1427, line: 722, baseType: !21, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !2131, file: !1427, line: 723, baseType: !21, size: 32, offset: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2131, file: !1427, line: 724, baseType: !85, size: 16, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !2131, file: !1427, line: 725, baseType: !33, size: 8, offset: 80)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2131, file: !1427, line: 726, baseType: !33, size: 8, offset: 88)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2131, file: !1427, line: 727, baseType: !33, size: 8, offset: 96)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1400, file: !1401, line: 83, baseType: !1435, size: 64, offset: 8384)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !1400, file: !1401, line: 84, baseType: !1452, size: 64, offset: 8448)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !1400, file: !1401, line: 85, baseType: !2001, size: 64, offset: 8512)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !1400, file: !1401, line: 86, baseType: !1452, size: 64, offset: 8576)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !1400, file: !1401, line: 87, baseType: !2001, size: 64, offset: 8640)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !1400, file: !1401, line: 88, baseType: !1435, size: 64, offset: 8704)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !1400, file: !1401, line: 89, baseType: !1435, size: 64, offset: 8768)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1400, file: !1401, line: 90, baseType: !1561, size: 64, offset: 8832)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !1400, file: !1401, line: 91, baseType: !2148, size: 64, offset: 8896)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !1427, line: 652, baseType: !2149)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!455, !1399, !2152}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !1400, file: !1401, line: 92, baseType: !2154, size: 64, offset: 8960)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !1427, line: 656, baseType: !1541)
!2155 = !DISubprogram(name: "acpi_ut_get_resource_length", scope: !1396, file: !1396, line: 606, type: !2156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!85, !457}
!2158 = !DISubprogram(name: "acpi_ut_get_resource_header_length", scope: !1396, file: !1396, line: 608, type: !2159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!33, !457}
!2161 = !DISubprogram(name: "acpi_ut_get_resource_type", scope: !1396, file: !1396, line: 610, type: !2159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2162 = distinct !DISubprogram(name: "acpi_rs_count_set_bits", scope: !1, file: !1, line: 38, type: !2163, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!33, !85}
!2165 = !{!2166, !2167}
!2166 = !DILocalVariable(name: "bit_field", arg: 1, scope: !2162, file: !1, line: 38, type: !85)
!2167 = !DILocalVariable(name: "bits_set", scope: !2162, file: !1, line: 40, type: !33)
!2168 = !DILocation(line: 38, column: 38, scope: !2162)
!2169 = !DILocation(line: 40, column: 2, scope: !2162)
!2170 = !DILocation(line: 40, column: 5, scope: !2162)
!2171 = !DILocation(line: 44, column: 16, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2162, file: !1, line: 44, column: 2)
!2173 = !DILocation(line: 44, column: 7, scope: !2172)
!2174 = !DILocation(line: 44, column: 21, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2172, file: !1, line: 44, column: 2)
!2176 = !DILocation(line: 44, column: 2, scope: !2172)
!2177 = !DILocation(line: 48, column: 23, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2175, file: !1, line: 44, column: 44)
!2179 = !DILocation(line: 48, column: 33, scope: !2178)
!2180 = !DILocation(line: 48, column: 16, scope: !2178)
!2181 = !DILocation(line: 48, column: 13, scope: !2178)
!2182 = !DILocation(line: 49, column: 2, scope: !2178)
!2183 = !DILocation(line: 44, column: 40, scope: !2175)
!2184 = !DILocation(line: 44, column: 2, scope: !2175)
!2185 = distinct !{!2185, !2176, !2186, !742, !743}
!2186 = !DILocation(line: 49, column: 2, scope: !2172)
!2187 = !DILocation(line: 51, column: 10, scope: !2162)
!2188 = !DILocation(line: 52, column: 1, scope: !2162)
!2189 = !DILocation(line: 51, column: 2, scope: !2162)
!2190 = distinct !DISubprogram(name: "acpi_rs_stream_option_length", scope: !1, file: !1, line: 102, type: !2191, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!21, !21, !21}
!2193 = !{!2194, !2195, !2196}
!2194 = !DILocalVariable(name: "resource_length", arg: 1, scope: !2190, file: !1, line: 102, type: !21)
!2195 = !DILocalVariable(name: "minimum_aml_resource_length", arg: 2, scope: !2190, file: !1, line: 103, type: !21)
!2196 = !DILocalVariable(name: "string_length", scope: !2190, file: !1, line: 105, type: !21)
!2197 = !DILocation(line: 102, column: 34, scope: !2190)
!2198 = !DILocation(line: 103, column: 13, scope: !2190)
!2199 = !DILocation(line: 105, column: 2, scope: !2190)
!2200 = !DILocation(line: 105, column: 6, scope: !2190)
!2201 = !DILocation(line: 122, column: 6, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2190, file: !1, line: 122, column: 6)
!2203 = !DILocation(line: 122, column: 24, scope: !2202)
!2204 = !DILocation(line: 122, column: 22, scope: !2202)
!2205 = !DILocation(line: 122, column: 6, scope: !2190)
!2206 = !DILocation(line: 127, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2202, file: !1, line: 122, column: 53)
!2208 = !DILocation(line: 127, column: 25, scope: !2207)
!2209 = !DILocation(line: 127, column: 23, scope: !2207)
!2210 = !DILocation(line: 127, column: 53, scope: !2207)
!2211 = !DILocation(line: 126, column: 17, scope: !2207)
!2212 = !DILocation(line: 128, column: 2, scope: !2207)
!2213 = !DILocation(line: 134, column: 16, scope: !2190)
!2214 = !DILocation(line: 134, column: 10, scope: !2190)
!2215 = !DILocation(line: 135, column: 1, scope: !2190)
!2216 = !DILocation(line: 134, column: 2, scope: !2190)
!2217 = !DISubprogram(name: "acpi_ut_get_descriptor_length", scope: !1396, file: !1396, line: 604, type: !2218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!21, !457}
!2220 = distinct !DISubprogram(name: "acpi_rs_get_pci_routing_table_length", scope: !1, file: !1, line: 746, type: !2221, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!455, !1452, !470}
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233}
!2224 = !DILocalVariable(name: "package_object", arg: 1, scope: !2220, file: !1, line: 746, type: !1452)
!2225 = !DILocalVariable(name: "buffer_size_needed", arg: 2, scope: !2220, file: !1, line: 747, type: !470)
!2226 = !DILocalVariable(name: "number_of_elements", scope: !2220, file: !1, line: 749, type: !21)
!2227 = !DILocalVariable(name: "temp_size_needed", scope: !2220, file: !1, line: 750, type: !453)
!2228 = !DILocalVariable(name: "top_object_list", scope: !2220, file: !1, line: 751, type: !1509)
!2229 = !DILocalVariable(name: "index", scope: !2220, file: !1, line: 752, type: !21)
!2230 = !DILocalVariable(name: "package_element", scope: !2220, file: !1, line: 753, type: !1452)
!2231 = !DILocalVariable(name: "sub_object_list", scope: !2220, file: !1, line: 754, type: !1509)
!2232 = !DILocalVariable(name: "name_found", scope: !2220, file: !1, line: 755, type: !33)
!2233 = !DILocalVariable(name: "table_index", scope: !2220, file: !1, line: 756, type: !21)
!2234 = !DILocation(line: 746, column: 65, scope: !2220)
!2235 = !DILocation(line: 747, column: 21, scope: !2220)
!2236 = !DILocation(line: 749, column: 2, scope: !2220)
!2237 = !DILocation(line: 749, column: 6, scope: !2220)
!2238 = !DILocation(line: 750, column: 2, scope: !2220)
!2239 = !DILocation(line: 750, column: 12, scope: !2220)
!2240 = !DILocation(line: 751, column: 2, scope: !2220)
!2241 = !DILocation(line: 751, column: 30, scope: !2220)
!2242 = !DILocation(line: 752, column: 2, scope: !2220)
!2243 = !DILocation(line: 752, column: 6, scope: !2220)
!2244 = !DILocation(line: 753, column: 2, scope: !2220)
!2245 = !DILocation(line: 753, column: 29, scope: !2220)
!2246 = !DILocation(line: 754, column: 2, scope: !2220)
!2247 = !DILocation(line: 754, column: 30, scope: !2220)
!2248 = !DILocation(line: 755, column: 2, scope: !2220)
!2249 = !DILocation(line: 755, column: 5, scope: !2220)
!2250 = !DILocation(line: 756, column: 2, scope: !2220)
!2251 = !DILocation(line: 756, column: 6, scope: !2220)
!2252 = !DILocation(line: 760, column: 23, scope: !2220)
!2253 = !DILocation(line: 760, column: 47, scope: !2220)
!2254 = !DILocation(line: 760, column: 21, scope: !2220)
!2255 = !DILocation(line: 772, column: 20, scope: !2220)
!2256 = !DILocation(line: 772, column: 44, scope: !2220)
!2257 = !DILocation(line: 772, column: 18, scope: !2220)
!2258 = !DILocation(line: 774, column: 13, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2220, file: !1, line: 774, column: 2)
!2260 = !DILocation(line: 774, column: 7, scope: !2259)
!2261 = !DILocation(line: 774, column: 18, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 774, column: 2)
!2263 = !DILocation(line: 774, column: 26, scope: !2262)
!2264 = !DILocation(line: 774, column: 24, scope: !2262)
!2265 = !DILocation(line: 774, column: 2, scope: !2259)
!2266 = !DILocation(line: 778, column: 22, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2262, file: !1, line: 774, column: 55)
!2268 = !DILocation(line: 778, column: 21, scope: !2267)
!2269 = !DILocation(line: 778, column: 19, scope: !2267)
!2270 = !DILocation(line: 782, column: 8, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !1, line: 782, column: 7)
!2272 = !DILocation(line: 782, column: 24, scope: !2271)
!2273 = !DILocation(line: 783, column: 8, scope: !2271)
!2274 = !DILocation(line: 783, column: 32, scope: !2271)
!2275 = !DILocation(line: 783, column: 37, scope: !2271)
!2276 = !DILocation(line: 782, column: 7, scope: !2267)
!2277 = !DILocation(line: 784, column: 4, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2271, file: !1, line: 783, column: 60)
!2279 = !DILocation(line: 791, column: 21, scope: !2267)
!2280 = !DILocation(line: 791, column: 46, scope: !2267)
!2281 = !DILocation(line: 791, column: 19, scope: !2267)
!2282 = !DILocation(line: 795, column: 14, scope: !2267)
!2283 = !DILocation(line: 797, column: 20, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2267, file: !1, line: 797, column: 3)
!2285 = !DILocation(line: 797, column: 8, scope: !2284)
!2286 = !DILocation(line: 798, column: 8, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2284, file: !1, line: 797, column: 3)
!2288 = !DILocation(line: 798, column: 22, scope: !2287)
!2289 = !DILocation(line: 798, column: 47, scope: !2287)
!2290 = !DILocation(line: 798, column: 20, scope: !2287)
!2291 = !DILocation(line: 799, column: 8, scope: !2287)
!2292 = !DILocation(line: 799, column: 12, scope: !2287)
!2293 = !DILocation(line: 799, column: 11, scope: !2287)
!2294 = !DILocation(line: 0, scope: !2287)
!2295 = !DILocation(line: 797, column: 3, scope: !2284)
!2296 = !DILocation(line: 800, column: 9, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !1, line: 800, column: 8)
!2298 = distinct !DILexicalBlock(scope: !2287, file: !1, line: 799, column: 39)
!2299 = !DILocation(line: 800, column: 8, scope: !2297)
!2300 = !DILocation(line: 800, column: 25, scope: !2297)
!2301 = !DILocation(line: 802, column: 12, scope: !2297)
!2302 = !DILocation(line: 802, column: 11, scope: !2297)
!2303 = !DILocation(line: 802, column: 37, scope: !2297)
!2304 = !DILocation(line: 802, column: 10, scope: !2297)
!2305 = !DILocation(line: 801, column: 27, scope: !2297)
!2306 = !DILocation(line: 802, column: 43, scope: !2297)
!2307 = !DILocation(line: 804, column: 13, scope: !2297)
!2308 = !DILocation(line: 804, column: 12, scope: !2297)
!2309 = !DILocation(line: 804, column: 38, scope: !2297)
!2310 = !DILocation(line: 804, column: 11, scope: !2297)
!2311 = !DILocation(line: 803, column: 37, scope: !2297)
!2312 = !DILocation(line: 804, column: 44, scope: !2297)
!2313 = !DILocation(line: 805, column: 13, scope: !2297)
!2314 = !DILocation(line: 805, column: 12, scope: !2297)
!2315 = !DILocation(line: 805, column: 41, scope: !2297)
!2316 = !DILocation(line: 805, column: 11, scope: !2297)
!2317 = !DILocation(line: 805, column: 47, scope: !2297)
!2318 = !DILocation(line: 800, column: 8, scope: !2298)
!2319 = !DILocation(line: 807, column: 16, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2297, file: !1, line: 806, column: 34)
!2321 = !DILocation(line: 808, column: 4, scope: !2320)
!2322 = !DILocation(line: 811, column: 20, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2297, file: !1, line: 808, column: 11)
!2324 = !DILocation(line: 813, column: 3, scope: !2298)
!2325 = !DILocation(line: 799, column: 35, scope: !2287)
!2326 = !DILocation(line: 797, column: 3, scope: !2287)
!2327 = distinct !{!2327, !2295, !2328, !742, !743}
!2328 = !DILocation(line: 813, column: 3, scope: !2284)
!2329 = !DILocation(line: 815, column: 20, scope: !2267)
!2330 = !DILocation(line: 819, column: 7, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2267, file: !1, line: 819, column: 7)
!2332 = !DILocation(line: 819, column: 7, scope: !2267)
!2333 = !DILocation(line: 820, column: 10, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !1, line: 820, column: 8)
!2335 = distinct !DILexicalBlock(scope: !2331, file: !1, line: 819, column: 19)
!2336 = !DILocation(line: 820, column: 9, scope: !2334)
!2337 = !DILocation(line: 820, column: 35, scope: !2334)
!2338 = !DILocation(line: 820, column: 8, scope: !2334)
!2339 = !DILocation(line: 820, column: 40, scope: !2334)
!2340 = !DILocation(line: 820, column: 8, scope: !2335)
!2341 = !DILocation(line: 826, column: 14, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2334, file: !1, line: 820, column: 61)
!2343 = !DILocation(line: 826, column: 13, scope: !2342)
!2344 = !DILocation(line: 827, column: 12, scope: !2342)
!2345 = !DILocation(line: 825, column: 26, scope: !2342)
!2346 = !DILocation(line: 827, column: 19, scope: !2342)
!2347 = !DILocation(line: 825, column: 22, scope: !2342)
!2348 = !DILocation(line: 828, column: 4, scope: !2342)
!2349 = !DILocation(line: 829, column: 55, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2334, file: !1, line: 828, column: 11)
!2351 = !DILocation(line: 829, column: 54, scope: !2350)
!2352 = !DILocation(line: 829, column: 83, scope: !2350)
!2353 = !DILocation(line: 829, column: 25, scope: !2350)
!2354 = !DILocation(line: 829, column: 22, scope: !2350)
!2355 = !DILocation(line: 831, column: 3, scope: !2335)
!2356 = !DILocation(line: 836, column: 21, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2331, file: !1, line: 831, column: 10)
!2358 = !DILocation(line: 841, column: 22, scope: !2267)
!2359 = !DILocation(line: 841, column: 20, scope: !2267)
!2360 = !DILocation(line: 845, column: 18, scope: !2267)
!2361 = !DILocation(line: 846, column: 2, scope: !2267)
!2362 = !DILocation(line: 774, column: 51, scope: !2262)
!2363 = !DILocation(line: 774, column: 2, scope: !2262)
!2364 = distinct !{!2364, !2265, !2365, !742, !743}
!2365 = !DILocation(line: 846, column: 2, scope: !2259)
!2366 = !DILocation(line: 853, column: 6, scope: !2220)
!2367 = !DILocation(line: 853, column: 23, scope: !2220)
!2368 = !DILocation(line: 852, column: 3, scope: !2220)
!2369 = !DILocation(line: 852, column: 22, scope: !2220)
!2370 = !DILocation(line: 854, column: 2, scope: !2220)
!2371 = !DILocation(line: 855, column: 1, scope: !2220)
!2372 = !DISubprogram(name: "acpi_ns_get_pathname_length", scope: !2373, file: !2373, line: 289, type: !2374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2373 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!453, !1448}
