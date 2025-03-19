; ModuleID = 'drivers/acpi/acpica/rscreate.c'
source_filename = "drivers/acpi/acpica/rscreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_buffer_to_resource: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_buffer_to_resource ; .previous"

%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_buffer = type { i64, ptr }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.acpi_pci_routing_table = type { i32, i32, i64, i32, %union.anon.0 }
%union.anon.0 = type { [4 x i8] }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon = type { %struct.anon.1, [0 x i8] }
%struct.anon.1 = type {}
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }

@__UNIQUE_ID___addressable_acpi_buffer_to_resource174 = internal global ptr @acpi_buffer_to_resource, section ".discard.addressable", align 8, !dbg !0
@_acpi_module_name = internal constant [9 x i8] c"rscreate\00", align 1, !dbg !115
@.str = private unnamed_addr constant [52 x i8] c"(PRT[%u]) Need package of length 4, found length %u\00", align 1, !dbg !80
@.str.1 = private unnamed_addr constant [41 x i8] c"(PRT[%u].Address) Need Integer, found %s\00", align 1, !dbg !85
@.str.2 = private unnamed_addr constant [37 x i8] c"(PRT[%u].Pin) Need Integer, found %s\00", align 1, !dbg !90
@.str.3 = private unnamed_addr constant [55 x i8] c"(PRT[%u].Source) Need name, found Reference Class 0x%X\00", align 1, !dbg !95
@.str.4 = private unnamed_addr constant [51 x i8] c"(PRT[%u].Source) Need Ref/String/Integer, found %s\00", align 1, !dbg !100
@.str.5 = private unnamed_addr constant [45 x i8] c"(PRT[%u].SourceIndex) Need Integer, found %s\00", align 1, !dbg !105
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !110
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_buffer_to_resource174], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_buffer_to_resource(ptr noundef %aml_buffer, i16 noundef zeroext %aml_buffer_length, ptr noundef %resource_ptr) #0 align 16 !dbg !130 {
entry:
  %retval = alloca i32, align 4
  %aml_buffer.addr = alloca ptr, align 8
  %aml_buffer_length.addr = alloca i16, align 2
  %resource_ptr.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %list_size_needed = alloca i64, align 8
  %resource = alloca ptr, align 8
  %current_resource_ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %aml_buffer, ptr %aml_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml_buffer.addr, metadata !553, metadata !DIExpression()), !dbg !560
  store i16 %aml_buffer_length, ptr %aml_buffer_length.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %aml_buffer_length.addr, metadata !554, metadata !DIExpression()), !dbg !561
  store ptr %resource_ptr, ptr %resource_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource_ptr.addr, metadata !555, metadata !DIExpression()), !dbg !562
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !563
  call void @llvm.dbg.declare(metadata ptr %status, metadata !556, metadata !DIExpression()), !dbg !564
  call void @llvm.lifetime.start.p0(i64 8, ptr %list_size_needed) #13, !dbg !565
  call void @llvm.dbg.declare(metadata ptr %list_size_needed, metadata !557, metadata !DIExpression()), !dbg !566
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource) #13, !dbg !567
  call void @llvm.dbg.declare(metadata ptr %resource, metadata !558, metadata !DIExpression()), !dbg !568
  call void @llvm.lifetime.start.p0(i64 8, ptr %current_resource_ptr) #13, !dbg !569
  call void @llvm.dbg.declare(metadata ptr %current_resource_ptr, metadata !559, metadata !DIExpression()), !dbg !570
  %0 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !571
  %1 = load i16, ptr %aml_buffer_length.addr, align 2, !dbg !572
  %conv = zext i16 %1 to i32, !dbg !572
  %call = call i32 @acpi_rs_get_list_length(ptr noundef %0, i32 noundef %conv, ptr noundef %list_size_needed) #14, !dbg !573
  store i32 %call, ptr %status, align 4, !dbg !574
  %2 = load i32, ptr %status, align 4, !dbg !575
  %cmp = icmp eq i32 %2, 12316, !dbg !577
  br i1 %cmp, label %if.then, label %if.end, !dbg !578

if.then:                                          ; preds = %entry
  store i32 0, ptr %status, align 4, !dbg !579
  br label %if.end, !dbg !581

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %status, align 4, !dbg !582
  %tobool = icmp ne i32 %3, 0, !dbg !582
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !584

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %status, align 4, !dbg !585
  store i32 %4, ptr %retval, align 4, !dbg !585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !585

if.end3:                                          ; preds = %if.end
  %5 = load i64, ptr %list_size_needed, align 8, !dbg !587
  %call4 = call ptr @acpi_os_allocate_zeroed(i64 noundef %5) #14, !dbg !587
  store ptr %call4, ptr %resource, align 8, !dbg !588
  %6 = load ptr, ptr %resource, align 8, !dbg !589
  store ptr %6, ptr %current_resource_ptr, align 8, !dbg !590
  %7 = load ptr, ptr %resource, align 8, !dbg !591
  %tobool5 = icmp ne ptr %7, null, !dbg !591
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !593

if.then6:                                         ; preds = %if.end3
  store i32 4, ptr %retval, align 4, !dbg !594
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !594

if.end7:                                          ; preds = %if.end3
  %8 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !596
  %9 = load i16, ptr %aml_buffer_length.addr, align 2, !dbg !597
  %conv8 = zext i16 %9 to i64, !dbg !597
  %call9 = call i32 @acpi_ut_walk_aml_resources(ptr noundef null, ptr noundef %8, i64 noundef %conv8, ptr noundef @acpi_rs_convert_aml_to_resources, ptr noundef %current_resource_ptr) #14, !dbg !598
  store i32 %call9, ptr %status, align 4, !dbg !599
  %10 = load i32, ptr %status, align 4, !dbg !600
  %cmp10 = icmp eq i32 %10, 12316, !dbg !602
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !603

if.then12:                                        ; preds = %if.end7
  store i32 0, ptr %status, align 4, !dbg !604
  br label %if.end13, !dbg !606

if.end13:                                         ; preds = %if.then12, %if.end7
  %11 = load i32, ptr %status, align 4, !dbg !607
  %tobool14 = icmp ne i32 %11, 0, !dbg !607
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !609

if.then15:                                        ; preds = %if.end13
  %12 = load ptr, ptr %resource, align 8, !dbg !610
  call void @acpi_os_free(ptr noundef %12) #14, !dbg !610
  br label %if.end16, !dbg !612

if.else:                                          ; preds = %if.end13
  %13 = load ptr, ptr %resource, align 8, !dbg !613
  %14 = load ptr, ptr %resource_ptr.addr, align 8, !dbg !615
  store ptr %13, ptr %14, align 8, !dbg !616
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %15 = load i32, ptr %status, align 4, !dbg !617
  store i32 %15, ptr %retval, align 4, !dbg !617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !617

cleanup:                                          ; preds = %if.end16, %if.then6, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %current_resource_ptr) #13, !dbg !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource) #13, !dbg !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %list_size_needed) #13, !dbg !618
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !618
  %16 = load i32, ptr %retval, align 4, !dbg !618
  ret i32 %16, !dbg !618
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !619 dso_local i32 @acpi_rs_get_list_length(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !624 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !629, metadata !DIExpression()), !dbg !640
  %0 = load i64, ptr %size.addr, align 8, !dbg !641
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !642
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !630, metadata !DIExpression()), !dbg !642
  br label %do.body, !dbg !642

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !632, metadata !DIExpression()), !dbg !643
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !635, metadata !DIExpression()), !dbg !643
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !643
  %conv = zext i1 %cmp to i32, !dbg !643
  store i32 1, ptr %tmp, align 4, !dbg !643
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !644
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !644
  %1 = load i32, ptr %tmp, align 4, !dbg !643
  %call = call i64 @arch_local_save_flags() #14, !dbg !644
  store i64 %call, ptr %_flags, align 8, !dbg !644
  br label %do.cond, !dbg !644

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !644

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !645
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !636, metadata !DIExpression()), !dbg !645
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !645
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !639, metadata !DIExpression()), !dbg !645
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !645
  %conv6 = zext i1 %cmp5 to i32, !dbg !645
  store i32 1, ptr %tmp7, align 4, !dbg !645
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !646
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !646
  %2 = load i32, ptr %tmp7, align 4, !dbg !645
  %3 = load i64, ptr %_flags, align 8, !dbg !646
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !646
  store i32 %call9, ptr %tmp8, align 4, !dbg !646
  %4 = load i32, ptr %tmp8, align 4, !dbg !646
  store i32 %4, ptr %tmp1, align 4, !dbg !644
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !647
  %5 = load i32, ptr %tmp1, align 4, !dbg !642
  %tobool = icmp ne i32 %5, 0, !dbg !647
  %6 = zext i1 %tobool to i64, !dbg !647
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !647
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !648
  ret ptr %call10, !dbg !649
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !650 dso_local i32 @acpi_ut_walk_aml_resources(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_rs_convert_aml_to_resources(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1408 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1412, metadata !DIExpression()), !dbg !1413
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1414
  call void @kfree(ptr noundef %0) #14, !dbg !1415
  ret void, !dbg !1416
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_create_resource_list(ptr noundef %aml_buffer, ptr noundef %output_buffer) #0 align 16 !dbg !1417 {
entry:
  %retval = alloca i32, align 4
  %aml_buffer.addr = alloca ptr, align 8
  %output_buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %aml_start = alloca ptr, align 8
  %list_size_needed = alloca i64, align 8
  %aml_buffer_length = alloca i32, align 4
  %resource = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %aml_buffer, ptr %aml_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml_buffer.addr, metadata !1426, metadata !DIExpression()), !dbg !1433
  store ptr %output_buffer, ptr %output_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output_buffer.addr, metadata !1427, metadata !DIExpression()), !dbg !1434
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1435
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1428, metadata !DIExpression()), !dbg !1436
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_start) #13, !dbg !1437
  call void @llvm.dbg.declare(metadata ptr %aml_start, metadata !1429, metadata !DIExpression()), !dbg !1438
  call void @llvm.lifetime.start.p0(i64 8, ptr %list_size_needed) #13, !dbg !1439
  call void @llvm.dbg.declare(metadata ptr %list_size_needed, metadata !1430, metadata !DIExpression()), !dbg !1440
  store i64 0, ptr %list_size_needed, align 8, !dbg !1440
  call void @llvm.lifetime.start.p0(i64 4, ptr %aml_buffer_length) #13, !dbg !1441
  call void @llvm.dbg.declare(metadata ptr %aml_buffer_length, metadata !1431, metadata !DIExpression()), !dbg !1442
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource) #13, !dbg !1443
  call void @llvm.dbg.declare(metadata ptr %resource, metadata !1432, metadata !DIExpression()), !dbg !1444
  %0 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !1445
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %0, i32 0, i32 6, !dbg !1446
  %1 = load i32, ptr %length, align 8, !dbg !1446
  store i32 %1, ptr %aml_buffer_length, align 4, !dbg !1447
  %2 = load ptr, ptr %aml_buffer.addr, align 8, !dbg !1448
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %2, i32 0, i32 5, !dbg !1449
  %3 = load ptr, ptr %pointer, align 8, !dbg !1449
  store ptr %3, ptr %aml_start, align 8, !dbg !1450
  %4 = load ptr, ptr %aml_start, align 8, !dbg !1451
  %5 = load i32, ptr %aml_buffer_length, align 4, !dbg !1452
  %call = call i32 @acpi_rs_get_list_length(ptr noundef %4, i32 noundef %5, ptr noundef %list_size_needed) #14, !dbg !1453
  store i32 %call, ptr %status, align 4, !dbg !1454
  %6 = load i32, ptr %status, align 4, !dbg !1455
  %tobool = icmp ne i32 %6, 0, !dbg !1455
  br i1 %tobool, label %if.then, label %if.end, !dbg !1457

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %status, align 4, !dbg !1458
  store i32 %7, ptr %retval, align 4, !dbg !1458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1458

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %output_buffer.addr, align 8, !dbg !1460
  %9 = load i64, ptr %list_size_needed, align 8, !dbg !1461
  %call1 = call i32 @acpi_ut_initialize_buffer(ptr noundef %8, i64 noundef %9) #14, !dbg !1462
  store i32 %call1, ptr %status, align 4, !dbg !1463
  %10 = load i32, ptr %status, align 4, !dbg !1464
  %tobool2 = icmp ne i32 %10, 0, !dbg !1464
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1466

if.then3:                                         ; preds = %if.end
  %11 = load i32, ptr %status, align 4, !dbg !1467
  store i32 %11, ptr %retval, align 4, !dbg !1467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1467

if.end4:                                          ; preds = %if.end
  %12 = load ptr, ptr %output_buffer.addr, align 8, !dbg !1469
  %pointer5 = getelementptr inbounds %struct.acpi_buffer, ptr %12, i32 0, i32 1, !dbg !1470
  %13 = load ptr, ptr %pointer5, align 8, !dbg !1470
  store ptr %13, ptr %resource, align 8, !dbg !1471
  %14 = load ptr, ptr %aml_start, align 8, !dbg !1472
  %15 = load i32, ptr %aml_buffer_length, align 4, !dbg !1473
  %conv = zext i32 %15 to i64, !dbg !1473
  %call6 = call i32 @acpi_ut_walk_aml_resources(ptr noundef null, ptr noundef %14, i64 noundef %conv, ptr noundef @acpi_rs_convert_aml_to_resources, ptr noundef %resource) #14, !dbg !1474
  store i32 %call6, ptr %status, align 4, !dbg !1475
  %16 = load i32, ptr %status, align 4, !dbg !1476
  %tobool7 = icmp ne i32 %16, 0, !dbg !1476
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1478

if.then8:                                         ; preds = %if.end4
  %17 = load i32, ptr %status, align 4, !dbg !1479
  store i32 %17, ptr %retval, align 4, !dbg !1479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1479

if.end9:                                          ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !1481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1481

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource) #13, !dbg !1482
  call void @llvm.lifetime.end.p0(i64 4, ptr %aml_buffer_length) #13, !dbg !1482
  call void @llvm.lifetime.end.p0(i64 8, ptr %list_size_needed) #13, !dbg !1482
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_start) #13, !dbg !1482
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1482
  %18 = load i32, ptr %retval, align 4, !dbg !1482
  ret i32 %18, !dbg !1482
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1483 dso_local i32 @acpi_ut_initialize_buffer(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_create_pci_routing_table(ptr noundef %package_object, ptr noundef %output_buffer) #0 align 16 !dbg !1486 {
entry:
  %retval = alloca i32, align 4
  %package_object.addr = alloca ptr, align 8
  %output_buffer.addr = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %top_object_list = alloca ptr, align 8
  %sub_object_list = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %buffer_size_needed = alloca i64, align 8
  %number_of_elements = alloca i32, align 4
  %index = alloca i32, align 4
  %user_prt = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %path_buffer = alloca %struct.acpi_buffer, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %package_object, ptr %package_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %package_object.addr, metadata !1488, metadata !DIExpression()), !dbg !1501
  store ptr %output_buffer, ptr %output_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output_buffer.addr, metadata !1489, metadata !DIExpression()), !dbg !1502
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #13, !dbg !1503
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !1490, metadata !DIExpression()), !dbg !1504
  call void @llvm.lifetime.start.p0(i64 8, ptr %top_object_list) #13, !dbg !1505
  call void @llvm.dbg.declare(metadata ptr %top_object_list, metadata !1491, metadata !DIExpression()), !dbg !1506
  call void @llvm.lifetime.start.p0(i64 8, ptr %sub_object_list) #13, !dbg !1507
  call void @llvm.dbg.declare(metadata ptr %sub_object_list, metadata !1492, metadata !DIExpression()), !dbg !1508
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !1509
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1493, metadata !DIExpression()), !dbg !1510
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer_size_needed) #13, !dbg !1511
  call void @llvm.dbg.declare(metadata ptr %buffer_size_needed, metadata !1494, metadata !DIExpression()), !dbg !1512
  store i64 0, ptr %buffer_size_needed, align 8, !dbg !1512
  call void @llvm.lifetime.start.p0(i64 4, ptr %number_of_elements) #13, !dbg !1513
  call void @llvm.dbg.declare(metadata ptr %number_of_elements, metadata !1495, metadata !DIExpression()), !dbg !1514
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1515
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1496, metadata !DIExpression()), !dbg !1516
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_prt) #13, !dbg !1517
  call void @llvm.dbg.declare(metadata ptr %user_prt, metadata !1497, metadata !DIExpression()), !dbg !1518
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1519
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1498, metadata !DIExpression()), !dbg !1520
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1521
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1499, metadata !DIExpression()), !dbg !1522
  call void @llvm.lifetime.start.p0(i64 16, ptr %path_buffer) #13, !dbg !1523
  call void @llvm.dbg.declare(metadata ptr %path_buffer, metadata !1500, metadata !DIExpression()), !dbg !1524
  %0 = load ptr, ptr %package_object.addr, align 8, !dbg !1525
  %call = call i32 @acpi_rs_get_pci_routing_table_length(ptr noundef %0, ptr noundef %buffer_size_needed) #14, !dbg !1526
  store i32 %call, ptr %status, align 4, !dbg !1527
  %1 = load i32, ptr %status, align 4, !dbg !1528
  %tobool = icmp ne i32 %1, 0, !dbg !1528
  br i1 %tobool, label %if.then, label %if.end, !dbg !1530

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1531
  store i32 %2, ptr %retval, align 4, !dbg !1531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1531

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %output_buffer.addr, align 8, !dbg !1533
  %4 = load i64, ptr %buffer_size_needed, align 8, !dbg !1534
  %call1 = call i32 @acpi_ut_initialize_buffer(ptr noundef %3, i64 noundef %4) #14, !dbg !1535
  store i32 %call1, ptr %status, align 4, !dbg !1536
  %5 = load i32, ptr %status, align 4, !dbg !1537
  %tobool2 = icmp ne i32 %5, 0, !dbg !1537
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1539

if.then3:                                         ; preds = %if.end
  %6 = load i32, ptr %status, align 4, !dbg !1540
  store i32 %6, ptr %retval, align 4, !dbg !1540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1540

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %package_object.addr, align 8, !dbg !1542
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %7, i32 0, i32 6, !dbg !1543
  %8 = load ptr, ptr %elements, align 8, !dbg !1543
  store ptr %8, ptr %top_object_list, align 8, !dbg !1544
  %9 = load ptr, ptr %package_object.addr, align 8, !dbg !1545
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %9, i32 0, i32 9, !dbg !1546
  %10 = load i32, ptr %count, align 4, !dbg !1546
  store i32 %10, ptr %number_of_elements, align 4, !dbg !1547
  %11 = load ptr, ptr %output_buffer.addr, align 8, !dbg !1548
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %11, i32 0, i32 1, !dbg !1549
  %12 = load ptr, ptr %pointer, align 8, !dbg !1549
  store ptr %12, ptr %buffer, align 8, !dbg !1550
  %13 = load ptr, ptr %buffer, align 8, !dbg !1551
  %14 = ptrtoint ptr %13 to i64, !dbg !1551
  %15 = inttoptr i64 %14 to ptr, !dbg !1551
  store ptr %15, ptr %user_prt, align 8, !dbg !1552
  store i32 0, ptr %index, align 4, !dbg !1553
  br label %for.cond, !dbg !1555

for.cond:                                         ; preds = %for.inc, %if.end4
  %16 = load i32, ptr %index, align 4, !dbg !1556
  %17 = load i32, ptr %number_of_elements, align 4, !dbg !1558
  %cmp = icmp ult i32 %16, %17, !dbg !1559
  br i1 %cmp, label %for.body, label %for.end, !dbg !1560

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %user_prt, align 8, !dbg !1561
  %length = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %18, i32 0, i32 0, !dbg !1563
  %19 = load i32, ptr %length, align 8, !dbg !1563
  %20 = load ptr, ptr %buffer, align 8, !dbg !1564
  %idx.ext = zext i32 %19 to i64, !dbg !1564
  %add.ptr = getelementptr i8, ptr %20, i64 %idx.ext, !dbg !1564
  store ptr %add.ptr, ptr %buffer, align 8, !dbg !1564
  %21 = load ptr, ptr %buffer, align 8, !dbg !1565
  %22 = ptrtoint ptr %21 to i64, !dbg !1565
  %23 = inttoptr i64 %22 to ptr, !dbg !1565
  store ptr %23, ptr %user_prt, align 8, !dbg !1566
  %24 = load ptr, ptr %user_prt, align 8, !dbg !1567
  %length5 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %24, i32 0, i32 0, !dbg !1568
  store i32 20, ptr %length5, align 8, !dbg !1569
  %25 = load ptr, ptr %top_object_list, align 8, !dbg !1570
  %26 = load ptr, ptr %25, align 8, !dbg !1572
  %count6 = getelementptr inbounds %struct.acpi_object_package, ptr %26, i32 0, i32 9, !dbg !1573
  %27 = load i32, ptr %count6, align 4, !dbg !1573
  %cmp7 = icmp ne i32 %27, 4, !dbg !1574
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !1575

if.then8:                                         ; preds = %for.body
  %28 = load i32, ptr %index, align 4, !dbg !1576
  %29 = load ptr, ptr %top_object_list, align 8, !dbg !1576
  %30 = load ptr, ptr %29, align 8, !dbg !1576
  %count9 = getelementptr inbounds %struct.acpi_object_package, ptr %30, i32 0, i32 9, !dbg !1576
  %31 = load i32, ptr %count9, align 4, !dbg !1576
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 248, ptr noundef @.str, i32 noundef %28, i32 noundef %31) #14, !dbg !1576
  store i32 12299, ptr %retval, align 4, !dbg !1578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1578

if.end10:                                         ; preds = %for.body
  %32 = load ptr, ptr %top_object_list, align 8, !dbg !1579
  %33 = load ptr, ptr %32, align 8, !dbg !1580
  %elements11 = getelementptr inbounds %struct.acpi_object_package, ptr %33, i32 0, i32 6, !dbg !1581
  %34 = load ptr, ptr %elements11, align 8, !dbg !1581
  store ptr %34, ptr %sub_object_list, align 8, !dbg !1582
  %35 = load ptr, ptr %sub_object_list, align 8, !dbg !1583
  %arrayidx = getelementptr ptr, ptr %35, i64 0, !dbg !1583
  %36 = load ptr, ptr %arrayidx, align 8, !dbg !1583
  store ptr %36, ptr %obj_desc, align 8, !dbg !1584
  %37 = load ptr, ptr %obj_desc, align 8, !dbg !1585
  %tobool12 = icmp ne ptr %37, null, !dbg !1585
  br i1 %tobool12, label %lor.lhs.false, label %if.then15, !dbg !1587

lor.lhs.false:                                    ; preds = %if.end10
  %38 = load ptr, ptr %obj_desc, align 8, !dbg !1588
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %38, i32 0, i32 2, !dbg !1589
  %39 = load i8, ptr %type, align 1, !dbg !1589
  %conv = zext i8 %39 to i32, !dbg !1588
  %cmp13 = icmp ne i32 %conv, 1, !dbg !1590
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !1591

if.then15:                                        ; preds = %lor.lhs.false, %if.end10
  %40 = load i32, ptr %index, align 4, !dbg !1592
  %41 = load ptr, ptr %obj_desc, align 8, !dbg !1592
  %call16 = call ptr @acpi_ut_get_object_type_name(ptr noundef %41) #14, !dbg !1592
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 265, ptr noundef @.str.1, i32 noundef %40, ptr noundef %call16) #14, !dbg !1592
  store i32 4100, ptr %retval, align 4, !dbg !1594
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1594

if.end17:                                         ; preds = %lor.lhs.false
  %42 = load ptr, ptr %obj_desc, align 8, !dbg !1595
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %42, i32 0, i32 6, !dbg !1596
  %43 = load i64, ptr %value, align 8, !dbg !1596
  %44 = load ptr, ptr %user_prt, align 8, !dbg !1597
  %address = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %44, i32 0, i32 2, !dbg !1598
  store i64 %43, ptr %address, align 8, !dbg !1599
  %45 = load ptr, ptr %sub_object_list, align 8, !dbg !1600
  %arrayidx18 = getelementptr ptr, ptr %45, i64 1, !dbg !1600
  %46 = load ptr, ptr %arrayidx18, align 8, !dbg !1600
  store ptr %46, ptr %obj_desc, align 8, !dbg !1601
  %47 = load ptr, ptr %obj_desc, align 8, !dbg !1602
  %tobool19 = icmp ne ptr %47, null, !dbg !1602
  br i1 %tobool19, label %lor.lhs.false20, label %if.then25, !dbg !1604

lor.lhs.false20:                                  ; preds = %if.end17
  %48 = load ptr, ptr %obj_desc, align 8, !dbg !1605
  %type21 = getelementptr inbounds %struct.acpi_object_common, ptr %48, i32 0, i32 2, !dbg !1606
  %49 = load i8, ptr %type21, align 1, !dbg !1606
  %conv22 = zext i8 %49 to i32, !dbg !1605
  %cmp23 = icmp ne i32 %conv22, 1, !dbg !1607
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !1608

if.then25:                                        ; preds = %lor.lhs.false20, %if.end17
  %50 = load i32, ptr %index, align 4, !dbg !1609
  %51 = load ptr, ptr %obj_desc, align 8, !dbg !1609
  %call26 = call ptr @acpi_ut_get_object_type_name(ptr noundef %51) #14, !dbg !1609
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 278, ptr noundef @.str.2, i32 noundef %50, ptr noundef %call26) #14, !dbg !1609
  store i32 4100, ptr %retval, align 4, !dbg !1611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1611

if.end27:                                         ; preds = %lor.lhs.false20
  %52 = load ptr, ptr %obj_desc, align 8, !dbg !1612
  %value28 = getelementptr inbounds %struct.acpi_object_integer, ptr %52, i32 0, i32 6, !dbg !1613
  %53 = load i64, ptr %value28, align 8, !dbg !1613
  %conv29 = trunc i64 %53 to i32, !dbg !1614
  %54 = load ptr, ptr %user_prt, align 8, !dbg !1615
  %pin = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %54, i32 0, i32 1, !dbg !1616
  store i32 %conv29, ptr %pin, align 4, !dbg !1617
  %55 = load ptr, ptr %sub_object_list, align 8, !dbg !1618
  %arrayidx30 = getelementptr ptr, ptr %55, i64 2, !dbg !1618
  %56 = load ptr, ptr %arrayidx30, align 8, !dbg !1618
  store ptr %56, ptr %obj_desc, align 8, !dbg !1619
  %57 = load ptr, ptr %obj_desc, align 8, !dbg !1620
  %tobool31 = icmp ne ptr %57, null, !dbg !1620
  br i1 %tobool31, label %if.then32, label %if.end76, !dbg !1622

if.then32:                                        ; preds = %if.end27
  %58 = load ptr, ptr %obj_desc, align 8, !dbg !1623
  %type33 = getelementptr inbounds %struct.acpi_object_common, ptr %58, i32 0, i32 2, !dbg !1625
  %59 = load i8, ptr %type33, align 1, !dbg !1625
  %conv34 = zext i8 %59 to i32, !dbg !1623
  switch i32 %conv34, label %sw.default [
    i32 20, label %sw.bb
    i32 2, label %sw.bb61
    i32 1, label %sw.bb70
  ], !dbg !1626

sw.bb:                                            ; preds = %if.then32
  %60 = load ptr, ptr %obj_desc, align 8, !dbg !1627
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %60, i32 0, i32 5, !dbg !1630
  %61 = load i8, ptr %class, align 1, !dbg !1630
  %conv35 = zext i8 %61 to i32, !dbg !1627
  %cmp36 = icmp ne i32 %conv35, 5, !dbg !1631
  br i1 %cmp36, label %if.then38, label %if.end41, !dbg !1632

if.then38:                                        ; preds = %sw.bb
  %62 = load i32, ptr %index, align 4, !dbg !1633
  %63 = load ptr, ptr %obj_desc, align 8, !dbg !1633
  %class39 = getelementptr inbounds %struct.acpi_object_reference, ptr %63, i32 0, i32 5, !dbg !1633
  %64 = load i8, ptr %class39, align 1, !dbg !1633
  %conv40 = zext i8 %64 to i32, !dbg !1633
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 298, ptr noundef @.str.3, i32 noundef %62, i32 noundef %conv40) #14, !dbg !1633
  store i32 4100, ptr %retval, align 4, !dbg !1635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1635

if.end41:                                         ; preds = %sw.bb
  %65 = load ptr, ptr %obj_desc, align 8, !dbg !1636
  %node42 = getelementptr inbounds %struct.acpi_object_reference, ptr %65, i32 0, i32 9, !dbg !1637
  %66 = load ptr, ptr %node42, align 8, !dbg !1637
  store ptr %66, ptr %node, align 8, !dbg !1638
  %67 = load ptr, ptr %output_buffer.addr, align 8, !dbg !1639
  %length43 = getelementptr inbounds %struct.acpi_buffer, ptr %67, i32 0, i32 0, !dbg !1640
  %68 = load i64, ptr %length43, align 8, !dbg !1640
  %69 = load ptr, ptr %user_prt, align 8, !dbg !1641
  %70 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %69, i32 0, i32 4, !dbg !1642
  %source = getelementptr inbounds %struct.anon, ptr %70, i32 0, i32 1, !dbg !1642
  %arraydecay = getelementptr inbounds [0 x i8], ptr %source, i64 0, i64 0, !dbg !1641
  %71 = load ptr, ptr %output_buffer.addr, align 8, !dbg !1643
  %pointer44 = getelementptr inbounds %struct.acpi_buffer, ptr %71, i32 0, i32 1, !dbg !1644
  %72 = load ptr, ptr %pointer44, align 8, !dbg !1644
  %sub.ptr.lhs.cast = ptrtoint ptr %arraydecay to i64, !dbg !1645
  %sub.ptr.rhs.cast = ptrtoint ptr %72 to i64, !dbg !1645
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1645
  %conv45 = trunc i64 %sub.ptr.sub to i32, !dbg !1646
  %conv46 = zext i32 %conv45 to i64, !dbg !1646
  %sub = sub i64 %68, %conv46, !dbg !1647
  %length47 = getelementptr inbounds %struct.acpi_buffer, ptr %path_buffer, i32 0, i32 0, !dbg !1648
  store i64 %sub, ptr %length47, align 8, !dbg !1649
  %73 = load ptr, ptr %user_prt, align 8, !dbg !1650
  %74 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %73, i32 0, i32 4, !dbg !1651
  %source48 = getelementptr inbounds %struct.anon, ptr %74, i32 0, i32 1, !dbg !1651
  %arraydecay49 = getelementptr inbounds [0 x i8], ptr %source48, i64 0, i64 0, !dbg !1650
  %pointer50 = getelementptr inbounds %struct.acpi_buffer, ptr %path_buffer, i32 0, i32 1, !dbg !1652
  store ptr %arraydecay49, ptr %pointer50, align 8, !dbg !1653
  %75 = load ptr, ptr %node, align 8, !dbg !1654
  %call51 = call i32 @acpi_ns_handle_to_pathname(ptr noundef %75, ptr noundef %path_buffer, i8 noundef zeroext 0) #14, !dbg !1655
  store i32 %call51, ptr %status, align 4, !dbg !1656
  %76 = load i32, ptr %status, align 4, !dbg !1657
  %tobool52 = icmp ne i32 %76, 0, !dbg !1657
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !1659

if.then53:                                        ; preds = %if.end41
  %77 = load i32, ptr %status, align 4, !dbg !1660
  store i32 %77, ptr %retval, align 4, !dbg !1660
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1660

if.end54:                                         ; preds = %if.end41
  %78 = load ptr, ptr %user_prt, align 8, !dbg !1662
  %79 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %78, i32 0, i32 4, !dbg !1663
  %source55 = getelementptr inbounds %struct.anon, ptr %79, i32 0, i32 1, !dbg !1663
  %arraydecay56 = getelementptr inbounds [0 x i8], ptr %source55, i64 0, i64 0, !dbg !1662
  %call57 = call i64 @strlen(ptr noundef %arraydecay56) #14, !dbg !1664
  %conv58 = trunc i64 %call57 to i32, !dbg !1665
  %add = add i32 %conv58, 1, !dbg !1666
  %80 = load ptr, ptr %user_prt, align 8, !dbg !1667
  %length59 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %80, i32 0, i32 0, !dbg !1668
  %81 = load i32, ptr %length59, align 8, !dbg !1669
  %add60 = add i32 %81, %add, !dbg !1669
  store i32 %add60, ptr %length59, align 8, !dbg !1669
  br label %sw.epilog, !dbg !1670

sw.bb61:                                          ; preds = %if.then32
  %82 = load ptr, ptr %user_prt, align 8, !dbg !1671
  %83 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %82, i32 0, i32 4, !dbg !1672
  %source62 = getelementptr inbounds %struct.anon, ptr %83, i32 0, i32 1, !dbg !1672
  %arraydecay63 = getelementptr inbounds [0 x i8], ptr %source62, i64 0, i64 0, !dbg !1671
  %84 = load ptr, ptr %obj_desc, align 8, !dbg !1673
  %pointer64 = getelementptr inbounds %struct.acpi_object_string, ptr %84, i32 0, i32 5, !dbg !1674
  %85 = load ptr, ptr %pointer64, align 8, !dbg !1674
  %call65 = call ptr @strcpy(ptr noundef %arraydecay63, ptr noundef %85) #14, !dbg !1675
  %86 = load ptr, ptr %obj_desc, align 8, !dbg !1676
  %length66 = getelementptr inbounds %struct.acpi_object_string, ptr %86, i32 0, i32 6, !dbg !1677
  %87 = load i32, ptr %length66, align 8, !dbg !1677
  %add67 = add i32 %87, 1, !dbg !1678
  %88 = load ptr, ptr %user_prt, align 8, !dbg !1679
  %length68 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %88, i32 0, i32 0, !dbg !1680
  %89 = load i32, ptr %length68, align 8, !dbg !1681
  %add69 = add i32 %89, %add67, !dbg !1681
  store i32 %add69, ptr %length68, align 8, !dbg !1681
  br label %sw.epilog, !dbg !1682

sw.bb70:                                          ; preds = %if.then32
  %90 = load ptr, ptr %user_prt, align 8, !dbg !1683
  %length71 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %90, i32 0, i32 0, !dbg !1684
  %91 = load i32, ptr %length71, align 8, !dbg !1685
  %conv72 = zext i32 %91 to i64, !dbg !1685
  %add73 = add i64 %conv72, 4, !dbg !1685
  %conv74 = trunc i64 %add73 to i32, !dbg !1685
  store i32 %conv74, ptr %length71, align 8, !dbg !1685
  br label %sw.epilog, !dbg !1686

sw.default:                                       ; preds = %if.then32
  %92 = load i32, ptr %index, align 4, !dbg !1687
  %93 = load ptr, ptr %obj_desc, align 8, !dbg !1687
  %call75 = call ptr @acpi_ut_get_object_type_name(ptr noundef %93) #14, !dbg !1687
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 349, ptr noundef @.str.4, i32 noundef %92, ptr noundef %call75) #14, !dbg !1687
  store i32 4100, ptr %retval, align 4, !dbg !1688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1688

sw.epilog:                                        ; preds = %sw.bb70, %sw.bb61, %if.end54
  br label %if.end76, !dbg !1689

if.end76:                                         ; preds = %sw.epilog, %if.end27
  %94 = load ptr, ptr %user_prt, align 8, !dbg !1690
  %length77 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %94, i32 0, i32 0, !dbg !1690
  %95 = load i32, ptr %length77, align 8, !dbg !1690
  %conv78 = zext i32 %95 to i64, !dbg !1690
  %add79 = add i64 %conv78, 7, !dbg !1690
  %and = and i64 %add79, -8, !dbg !1690
  %conv80 = trunc i64 %and to i32, !dbg !1691
  %96 = load ptr, ptr %user_prt, align 8, !dbg !1692
  %length81 = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %96, i32 0, i32 0, !dbg !1693
  store i32 %conv80, ptr %length81, align 8, !dbg !1694
  %97 = load ptr, ptr %sub_object_list, align 8, !dbg !1695
  %arrayidx82 = getelementptr ptr, ptr %97, i64 3, !dbg !1695
  %98 = load ptr, ptr %arrayidx82, align 8, !dbg !1695
  store ptr %98, ptr %obj_desc, align 8, !dbg !1696
  %99 = load ptr, ptr %obj_desc, align 8, !dbg !1697
  %tobool83 = icmp ne ptr %99, null, !dbg !1697
  br i1 %tobool83, label %lor.lhs.false84, label %if.then89, !dbg !1699

lor.lhs.false84:                                  ; preds = %if.end76
  %100 = load ptr, ptr %obj_desc, align 8, !dbg !1700
  %type85 = getelementptr inbounds %struct.acpi_object_common, ptr %100, i32 0, i32 2, !dbg !1701
  %101 = load i8, ptr %type85, align 1, !dbg !1701
  %conv86 = zext i8 %101 to i32, !dbg !1700
  %cmp87 = icmp ne i32 %conv86, 1, !dbg !1702
  br i1 %cmp87, label %if.then89, label %if.end91, !dbg !1703

if.then89:                                        ; preds = %lor.lhs.false84, %if.end76
  %102 = load i32, ptr %index, align 4, !dbg !1704
  %103 = load ptr, ptr %obj_desc, align 8, !dbg !1704
  %call90 = call ptr @acpi_ut_get_object_type_name(ptr noundef %103) #14, !dbg !1704
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 367, ptr noundef @.str.5, i32 noundef %102, ptr noundef %call90) #14, !dbg !1704
  store i32 4100, ptr %retval, align 4, !dbg !1706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1706

if.end91:                                         ; preds = %lor.lhs.false84
  %104 = load ptr, ptr %obj_desc, align 8, !dbg !1707
  %value92 = getelementptr inbounds %struct.acpi_object_integer, ptr %104, i32 0, i32 6, !dbg !1708
  %105 = load i64, ptr %value92, align 8, !dbg !1708
  %conv93 = trunc i64 %105 to i32, !dbg !1709
  %106 = load ptr, ptr %user_prt, align 8, !dbg !1710
  %source_index = getelementptr inbounds %struct.acpi_pci_routing_table, ptr %106, i32 0, i32 3, !dbg !1711
  store i32 %conv93, ptr %source_index, align 8, !dbg !1712
  %107 = load ptr, ptr %top_object_list, align 8, !dbg !1713
  %incdec.ptr = getelementptr ptr, ptr %107, i32 1, !dbg !1713
  store ptr %incdec.ptr, ptr %top_object_list, align 8, !dbg !1713
  br label %for.inc, !dbg !1714

for.inc:                                          ; preds = %if.end91
  %108 = load i32, ptr %index, align 4, !dbg !1715
  %inc = add i32 %108, 1, !dbg !1715
  store i32 %inc, ptr %index, align 4, !dbg !1715
  br label %for.cond, !dbg !1716, !llvm.loop !1717

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1721

cleanup:                                          ; preds = %for.end, %if.then89, %sw.default, %if.then53, %if.then38, %if.then25, %if.then15, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %path_buffer) #13, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_prt) #13, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 4, ptr %number_of_elements) #13, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer_size_needed) #13, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 8, ptr %sub_object_list) #13, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 8, ptr %top_object_list) #13, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #13, !dbg !1722
  %109 = load i32, ptr %retval, align 4, !dbg !1722
  ret i32 %109, !dbg !1722
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1723 dso_local i32 @acpi_rs_get_pci_routing_table_length(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1726 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1731 dso_local ptr @acpi_ut_get_object_type_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1734 dso_local i32 @acpi_ns_handle_to_pathname(ptr noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1738 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1742 dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_rs_create_aml_resources(ptr noundef %resource_list, ptr noundef %output_buffer) #0 align 16 !dbg !1745 {
entry:
  %retval = alloca i32, align 4
  %resource_list.addr = alloca ptr, align 8
  %output_buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %aml_size_needed = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %resource_list, ptr %resource_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource_list.addr, metadata !1749, metadata !DIExpression()), !dbg !1753
  store ptr %output_buffer, ptr %output_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %output_buffer.addr, metadata !1750, metadata !DIExpression()), !dbg !1754
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1755
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1751, metadata !DIExpression()), !dbg !1756
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_size_needed) #13, !dbg !1757
  call void @llvm.dbg.declare(metadata ptr %aml_size_needed, metadata !1752, metadata !DIExpression()), !dbg !1758
  store i64 0, ptr %aml_size_needed, align 8, !dbg !1758
  %0 = load ptr, ptr %resource_list.addr, align 8, !dbg !1759
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %0, i32 0, i32 1, !dbg !1760
  %1 = load ptr, ptr %pointer, align 8, !dbg !1760
  %2 = load ptr, ptr %resource_list.addr, align 8, !dbg !1761
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %2, i32 0, i32 0, !dbg !1762
  %3 = load i64, ptr %length, align 8, !dbg !1762
  %call = call i32 @acpi_rs_get_aml_length(ptr noundef %1, i64 noundef %3, ptr noundef %aml_size_needed) #14, !dbg !1763
  store i32 %call, ptr %status, align 4, !dbg !1764
  %4 = load i32, ptr %status, align 4, !dbg !1765
  %tobool = icmp ne i32 %4, 0, !dbg !1765
  br i1 %tobool, label %if.then, label %if.end, !dbg !1767

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %status, align 4, !dbg !1768
  store i32 %5, ptr %retval, align 4, !dbg !1768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1768

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %output_buffer.addr, align 8, !dbg !1770
  %7 = load i64, ptr %aml_size_needed, align 8, !dbg !1771
  %call1 = call i32 @acpi_ut_initialize_buffer(ptr noundef %6, i64 noundef %7) #14, !dbg !1772
  store i32 %call1, ptr %status, align 4, !dbg !1773
  %8 = load i32, ptr %status, align 4, !dbg !1774
  %tobool2 = icmp ne i32 %8, 0, !dbg !1774
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1776

if.then3:                                         ; preds = %if.end
  %9 = load i32, ptr %status, align 4, !dbg !1777
  store i32 %9, ptr %retval, align 4, !dbg !1777
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1777

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %resource_list.addr, align 8, !dbg !1779
  %pointer5 = getelementptr inbounds %struct.acpi_buffer, ptr %10, i32 0, i32 1, !dbg !1780
  %11 = load ptr, ptr %pointer5, align 8, !dbg !1780
  %12 = load i64, ptr %aml_size_needed, align 8, !dbg !1781
  %13 = load ptr, ptr %output_buffer.addr, align 8, !dbg !1782
  %pointer6 = getelementptr inbounds %struct.acpi_buffer, ptr %13, i32 0, i32 1, !dbg !1783
  %14 = load ptr, ptr %pointer6, align 8, !dbg !1783
  %call7 = call i32 @acpi_rs_convert_resources_to_aml(ptr noundef %11, i64 noundef %12, ptr noundef %14) #14, !dbg !1784
  store i32 %call7, ptr %status, align 4, !dbg !1785
  %15 = load i32, ptr %status, align 4, !dbg !1786
  %tobool8 = icmp ne i32 %15, 0, !dbg !1786
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1788

if.then9:                                         ; preds = %if.end4
  %16 = load i32, ptr %status, align 4, !dbg !1789
  store i32 %16, ptr %retval, align 4, !dbg !1789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1789

if.end10:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !1791
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1791

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_size_needed) #13, !dbg !1792
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1792
  %17 = load i32, ptr %retval, align 4, !dbg !1792
  ret i32 %17, !dbg !1792
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1793 dso_local i32 @acpi_rs_get_aml_length(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1796 dso_local i32 @acpi_rs_convert_resources_to_aml(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1799 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1807, metadata !DIExpression()), !dbg !1809
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1808, metadata !DIExpression()), !dbg !1810
  %0 = load i64, ptr %size.addr, align 8, !dbg !1811
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1812
  %or = or i32 %1, 256, !dbg !1813
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1814
  ret ptr %call, !dbg !1815
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1816 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1820
  ret i64 %call, !dbg !1821
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1822 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1827, metadata !DIExpression()), !dbg !1828
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1829
  %and = and i64 %0, 512, !dbg !1830
  %tobool = icmp ne i64 %and, 0, !dbg !1831
  %lnot = xor i1 %tobool, true, !dbg !1831
  %lnot.ext = zext i1 %lnot to i32, !dbg !1831
  ret i32 %lnot.ext, !dbg !1832
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1833 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1835, metadata !DIExpression()), !dbg !1840
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1836, metadata !DIExpression()), !dbg !1841
  %0 = load i64, ptr %size.addr, align 8, !dbg !1842
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1843
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1844

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1845
  %tobool = icmp ne i64 %2, 0, !dbg !1845
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1846

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1847
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1837, metadata !DIExpression()), !dbg !1848
  %3 = load i64, ptr %size.addr, align 8, !dbg !1849
  %cmp = icmp ugt i64 %3, 8192, !dbg !1851
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1852

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1853
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1854
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1855
  store ptr %call, ptr %retval, align 8, !dbg !1856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1856

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1857
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1857
  store i32 %call2, ptr %index, align 4, !dbg !1858
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1859
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1860
  %9 = ptrtoint ptr %8 to i64, !dbg !1860
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1861
  %idxprom = zext i32 %call3 to i64, !dbg !1862
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1862
  %10 = load i32, ptr %index, align 4, !dbg !1863
  %idxprom4 = zext i32 %10 to i64, !dbg !1862
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1862
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1862
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1864
  %13 = load i64, ptr %size.addr, align 8, !dbg !1865
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1866
  store ptr %call6, ptr %retval, align 8, !dbg !1867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1867

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1868
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1869
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1870
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1871
  store ptr %call8, ptr %retval, align 8, !dbg !1872
  br label %return, !dbg !1872

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1873
  ret ptr %16, !dbg !1873
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1874 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1875 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1881, metadata !DIExpression()), !dbg !1883
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1882, metadata !DIExpression()), !dbg !1884
  %0 = load i64, ptr %size.addr, align 8, !dbg !1885
  %tobool = icmp ne i64 %0, 0, !dbg !1885
  br i1 %tobool, label %if.end, label %if.then, !dbg !1887

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1888
  br label %return, !dbg !1888

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1889
  %cmp = icmp ule i64 %1, 8, !dbg !1891
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1892

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1893
  br label %return, !dbg !1893

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1894
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1896
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1897

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1898
  %cmp4 = icmp ule i64 %3, 96, !dbg !1899
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1900

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1901
  br label %return, !dbg !1901

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1902
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1904
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1905

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1906
  %cmp9 = icmp ule i64 %5, 192, !dbg !1907
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1908

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1909
  br label %return, !dbg !1909

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1910
  %cmp12 = icmp ule i64 %6, 8, !dbg !1912
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1913

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1914
  br label %return, !dbg !1914

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1915
  %cmp15 = icmp ule i64 %7, 16, !dbg !1917
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1918

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1919
  br label %return, !dbg !1919

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1920
  %cmp18 = icmp ule i64 %8, 32, !dbg !1922
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1923

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1924
  br label %return, !dbg !1924

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1925
  %cmp21 = icmp ule i64 %9, 64, !dbg !1927
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1928

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1929
  br label %return, !dbg !1929

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1930
  %cmp24 = icmp ule i64 %10, 128, !dbg !1932
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1933

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1934
  br label %return, !dbg !1934

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1935
  %cmp27 = icmp ule i64 %11, 256, !dbg !1937
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1938

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1939
  br label %return, !dbg !1939

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1940
  %cmp30 = icmp ule i64 %12, 512, !dbg !1942
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1943

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1944
  br label %return, !dbg !1944

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1945
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1947
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1948

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1949
  br label %return, !dbg !1949

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1950
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1952
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1953

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1954
  br label %return, !dbg !1954

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1955
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1957
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1958

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1959
  br label %return, !dbg !1959

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1960
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1962
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1963

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1964
  br label %return, !dbg !1964

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1965
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1967
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1968

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1969
  br label %return, !dbg !1969

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1970
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1972
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1973

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1974
  br label %return, !dbg !1974

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1975
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1977
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1978

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1979
  br label %return, !dbg !1979

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1980
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1982
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1983

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1984
  br label %return, !dbg !1984

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1985
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1987
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1988

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1989
  br label %return, !dbg !1989

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1990
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1992
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1993

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1994
  br label %return, !dbg !1994

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1995
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1997
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1998

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1999
  br label %return, !dbg !1999

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2000
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2002
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2003

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2004
  br label %return, !dbg !2004

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2005, !range !2007, !noundef !65
  %tobool69 = trunc i8 %25 to i1, !dbg !2005
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2008

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2009

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !2010, !srcloc !2013
  unreachable, !dbg !2010

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2014

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2015

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2016

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2018

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2016

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #13, !dbg !2020, !srcloc !2022
  br label %do.end75, !dbg !2020

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2016

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2023
  br label %return, !dbg !2023

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2024
  ret i32 %26, !dbg !2024
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2025 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !2031 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2035, metadata !DIExpression()), !dbg !2037
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2036, metadata !DIExpression()), !dbg !2038
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2039
  %and = and i32 %0, 17, !dbg !2039
  %cmp = icmp eq i32 %and, 0, !dbg !2039
  %lnot = xor i1 %cmp, true, !dbg !2039
  %lnot1 = xor i1 %lnot, true, !dbg !2039
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2039
  %conv = sext i32 %lnot.ext to i64, !dbg !2039
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2039
  %tobool = icmp ne i64 %expval, 0, !dbg !2039
  br i1 %tobool, label %if.then, label %if.end, !dbg !2041

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2042
  br label %return, !dbg !2042

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2043
  %and2 = and i32 %1, 1, !dbg !2045
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2045
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2046

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2047
  br label %return, !dbg !2047

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2048
  br label %return, !dbg !2048

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2050
  ret i32 %2, !dbg !2050
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2051 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2052 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !2055 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2057, metadata !DIExpression()), !dbg !2059
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !2060, !srcloc !2061
  %0 = load i64, ptr %flags, align 8, !dbg !2062
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !2063
  ret i64 %0, !dbg !2064
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2065 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_buffer_to_resource174", scope: !2, file: !3, line: 83, type: !43, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.rscreate.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22rscreate\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/rscreate.ll drivers/acpi/acpica/rscreate.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !32, globals: !79, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/rscreate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6d3766d9ab49c5b855f3fea7949b8cf9")
!4 = !{!5, !17, !22}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 323, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!10 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!11 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!12 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!13 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!14 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!15 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 10, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !23, line: 364, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!24 = !{!25, !26, !27, !28, !29, !30, !31}
!25 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!26 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!27 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!28 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!29 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!30 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!31 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!32 = !{!33, !39, !43, !44, !70, !35, !73, !77, !78, !72}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !34, line: 421, baseType: !35)
!34 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !36, line: 21, baseType: !37)
!36 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !38, line: 27, baseType: !7)
!38 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !34, line: 127, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !36, line: 23, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !38, line: 31, baseType: !42)
!42 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_routing_table", file: !46, line: 697, size: 192, elements: !47)
!46 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !45, file: !46, line: 698, baseType: !35, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !45, file: !46, line: 699, baseType: !35, size: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !45, file: !46, line: 700, baseType: !40, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "source_index", scope: !45, file: !46, line: 701, baseType: !35, size: 32, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, scope: !45, file: !46, line: 702, baseType: !53, size: 32, offset: 160)
!53 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !45, file: !46, line: 702, size: 32, elements: !54)
!54 = !{!55, !60}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !53, file: !46, line: 703, baseType: !56, size: 32)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 32, elements: !58)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!58 = !{!59}
!59 = !DISubrange(count: 4)
!60 = !DIDerivedType(tag: DW_TAG_member, scope: !53, file: !46, line: 704, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !53, file: !46, line: 704, elements: !62)
!62 = !{!63, !66}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_source", scope: !61, file: !46, line: 704, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !61, file: !46, line: 704, elements: !65)
!65 = !{}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !61, file: !46, line: 704, baseType: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: -1)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !71, line: 42, baseType: !72)
!71 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!72 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !36, line: 17, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !38, line: 21, baseType: !76)
!76 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !34, line: 424, baseType: !43)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !71, line: 154, baseType: !7)
!79 = !{!0, !80, !85, !90, !95, !100, !105, !110, !115}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !3, line: 248, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 416, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 52)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !3, line: 265, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 328, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 41)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !3, line: 278, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 296, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 37)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !3, line: 298, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 440, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 55)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 349, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 408, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 51)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !3, line: 367, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 360, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 45)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !23, line: 480, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 168, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 21)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 72, elements: !119)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!119 = !{!120}
!120 = !DISubrange(count: 9)
!121 = !{i32 7, !"Dwarf Version", i32 5}
!122 = !{i32 2, !"Debug Info Version", i32 3}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 8, !"cf-protection-branch", i32 1}
!125 = !{i32 4, !"function_return_thunk_extern", i32 1}
!126 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!127 = !{i32 1, !"Code Model", i32 2}
!128 = !{i32 1, !"override-stack-alignment", i32 8}
!129 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!130 = distinct !DISubprogram(name: "acpi_buffer_to_resource", scope: !3, file: !3, line: 30, type: !131, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !552)
!131 = !DISubroutineType(types: !132)
!132 = !{!33, !73, !133, !136}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !36, line: 19, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !38, line: 24, baseType: !135)
!135 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !46, line: 678, size: 544, elements: !139)
!139 = !{!140, !141, !142}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !46, line: 679, baseType: !35, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !138, file: !46, line: 680, baseType: !35, size: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !138, file: !46, line: 681, baseType: !143, size: 480, offset: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !46, line: 639, size: 480, elements: !144)
!144 = !{!145, !165, !182, !188, !196, !201, !207, !212, !222, !226, !234, !242, !248, !289, !307, !325, !337, !358, !366, !386, !402, !422, !444, !459, !472, !484, !497, !511, !522, !534, !543}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !143, file: !46, line: 640, baseType: !146, size: 56)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !46, line: 138, size: 56, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !146, file: !46, line: 139, baseType: !74, size: 8)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !146, file: !46, line: 140, baseType: !74, size: 8, offset: 8)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !146, file: !46, line: 141, baseType: !74, size: 8, offset: 16)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !146, file: !46, line: 142, baseType: !74, size: 8, offset: 24)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !146, file: !46, line: 143, baseType: !74, size: 8, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !146, file: !46, line: 144, baseType: !74, size: 8, offset: 40)
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !146, file: !46, line: 145, baseType: !155, size: 8, offset: 48)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !46, line: 145, size: 8, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !155, file: !46, line: 146, baseType: !74, size: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !155, file: !46, line: 147, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !46, line: 147, elements: !160)
!160 = !{!161, !163}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !159, file: !46, line: 147, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !159, file: !46, line: 147, elements: !65)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !159, file: !46, line: 147, baseType: !164)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, elements: !68)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !143, file: !46, line: 641, baseType: !166, size: 40)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !46, line: 151, size: 40, elements: !167)
!167 = !{!168, !169, !170, !171, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !166, file: !46, line: 152, baseType: !74, size: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !166, file: !46, line: 153, baseType: !74, size: 8, offset: 8)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !166, file: !46, line: 154, baseType: !74, size: 8, offset: 16)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !166, file: !46, line: 155, baseType: !74, size: 8, offset: 24)
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !46, line: 156, baseType: !173, size: 8, offset: 32)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !46, line: 156, size: 8, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !173, file: !46, line: 157, baseType: !74, size: 8)
!176 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !46, line: 158, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !173, file: !46, line: 158, elements: !178)
!178 = !{!179, !181}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_channels", scope: !177, file: !46, line: 158, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !177, file: !46, line: 158, elements: !65)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !177, file: !46, line: 158, baseType: !164)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !143, file: !46, line: 642, baseType: !183, size: 24)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !46, line: 162, size: 24, elements: !184)
!184 = !{!185, !186, !187}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !183, file: !46, line: 163, baseType: !74, size: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !183, file: !46, line: 164, baseType: !74, size: 8, offset: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !183, file: !46, line: 165, baseType: !74, size: 8, offset: 16)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !143, file: !46, line: 643, baseType: !189, size: 56)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !46, line: 173, size: 56, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !189, file: !46, line: 174, baseType: !74, size: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !189, file: !46, line: 175, baseType: !74, size: 8, offset: 8)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !189, file: !46, line: 176, baseType: !74, size: 8, offset: 16)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !189, file: !46, line: 177, baseType: !133, size: 16, offset: 24)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !189, file: !46, line: 178, baseType: !133, size: 16, offset: 40)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !143, file: !46, line: 644, baseType: !197, size: 24)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !46, line: 181, size: 24, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !197, file: !46, line: 182, baseType: !133, size: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !197, file: !46, line: 183, baseType: !74, size: 8, offset: 16)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !143, file: !46, line: 645, baseType: !202, size: 40)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !46, line: 186, size: 40, elements: !203)
!203 = !{!204, !205, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !202, file: !46, line: 187, baseType: !133, size: 16)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !202, file: !46, line: 188, baseType: !133, size: 16, offset: 16)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !202, file: !46, line: 189, baseType: !74, size: 8, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !143, file: !46, line: 646, baseType: !208, size: 16)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !46, line: 201, size: 16, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !208, file: !46, line: 202, baseType: !133, size: 16)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !208, file: !46, line: 203, baseType: !164, offset: 16)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !143, file: !46, line: 647, baseType: !213, size: 152)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !46, line: 208, size: 152, elements: !214)
!214 = !{!215, !216, !217, !221}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !213, file: !46, line: 209, baseType: !133, size: 16)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !213, file: !46, line: 210, baseType: !74, size: 8, offset: 16)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !213, file: !46, line: 211, baseType: !218, size: 128, offset: 24)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !213, file: !46, line: 212, baseType: !164, offset: 152)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !143, file: !46, line: 648, baseType: !223, size: 8)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !46, line: 215, size: 8, elements: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !223, file: !46, line: 216, baseType: !74, size: 8)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !143, file: !46, line: 649, baseType: !227, size: 72)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !46, line: 219, size: 72, elements: !228)
!228 = !{!229, !230, !231, !232, !233}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !227, file: !46, line: 220, baseType: !74, size: 8)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !227, file: !46, line: 221, baseType: !133, size: 16, offset: 8)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !227, file: !46, line: 222, baseType: !133, size: 16, offset: 24)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !227, file: !46, line: 223, baseType: !133, size: 16, offset: 40)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !227, file: !46, line: 224, baseType: !133, size: 16, offset: 56)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !143, file: !46, line: 650, baseType: !235, size: 136)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !46, line: 227, size: 136, elements: !236)
!236 = !{!237, !238, !239, !240, !241}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !235, file: !46, line: 228, baseType: !74, size: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !235, file: !46, line: 229, baseType: !35, size: 32, offset: 8)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !235, file: !46, line: 230, baseType: !35, size: 32, offset: 40)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !235, file: !46, line: 231, baseType: !35, size: 32, offset: 72)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !235, file: !46, line: 232, baseType: !35, size: 32, offset: 104)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !143, file: !46, line: 651, baseType: !243, size: 72)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !46, line: 235, size: 72, elements: !244)
!244 = !{!245, !246, !247}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !243, file: !46, line: 236, baseType: !74, size: 8)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !243, file: !46, line: 237, baseType: !35, size: 32, offset: 8)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !243, file: !46, line: 238, baseType: !35, size: 32, offset: 40)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !143, file: !46, line: 652, baseType: !249, size: 240)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !46, line: 312, size: 240, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !274, !282}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !249, file: !46, line: 313, baseType: !74, size: 8)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !249, file: !46, line: 313, baseType: !74, size: 8, offset: 8)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !249, file: !46, line: 313, baseType: !74, size: 8, offset: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !249, file: !46, line: 313, baseType: !74, size: 8, offset: 24)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !249, file: !46, line: 313, baseType: !74, size: 8, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !249, file: !46, line: 313, baseType: !257, size: 32, offset: 40)
!257 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !46, line: 255, size: 32, elements: !258)
!258 = !{!259, !266, !273}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !257, file: !46, line: 256, baseType: !260, size: 32)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !46, line: 241, size: 32, elements: !261)
!261 = !{!262, !263, !264, !265}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !260, file: !46, line: 242, baseType: !74, size: 8)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !260, file: !46, line: 243, baseType: !74, size: 8, offset: 8)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !260, file: !46, line: 244, baseType: !74, size: 8, offset: 16)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !260, file: !46, line: 245, baseType: !74, size: 8, offset: 24)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !257, file: !46, line: 257, baseType: !267, size: 32)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !46, line: 248, size: 32, elements: !268)
!268 = !{!269, !270, !271, !272}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !267, file: !46, line: 249, baseType: !74, size: 8)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !267, file: !46, line: 250, baseType: !74, size: 8, offset: 8)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !267, file: !46, line: 251, baseType: !74, size: 8, offset: 16)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !267, file: !46, line: 252, baseType: !74, size: 8, offset: 24)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !257, file: !46, line: 261, baseType: !74, size: 8)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !249, file: !46, line: 313, baseType: !275, size: 80, offset: 72)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !46, line: 285, size: 80, elements: !276)
!276 = !{!277, !278, !279, !280, !281}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !275, file: !46, line: 286, baseType: !133, size: 16)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !275, file: !46, line: 287, baseType: !133, size: 16, offset: 16)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !275, file: !46, line: 288, baseType: !133, size: 16, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !275, file: !46, line: 289, baseType: !133, size: 16, offset: 48)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !275, file: !46, line: 290, baseType: !133, size: 16, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !249, file: !46, line: 314, baseType: !283, size: 88, offset: 152)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !46, line: 269, size: 88, elements: !284)
!284 = !{!285, !286, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !283, file: !46, line: 270, baseType: !74, size: 8)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !283, file: !46, line: 271, baseType: !133, size: 16, offset: 8)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !283, file: !46, line: 272, baseType: !288, size: 64, offset: 24)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !143, file: !46, line: 653, baseType: !290, size: 320)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !46, line: 317, size: 320, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !306}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !290, file: !46, line: 318, baseType: !74, size: 8)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !290, file: !46, line: 318, baseType: !74, size: 8, offset: 8)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !290, file: !46, line: 318, baseType: !74, size: 8, offset: 16)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !290, file: !46, line: 318, baseType: !74, size: 8, offset: 24)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !290, file: !46, line: 318, baseType: !74, size: 8, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !290, file: !46, line: 318, baseType: !257, size: 32, offset: 40)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !290, file: !46, line: 318, baseType: !299, size: 160, offset: 72)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !46, line: 293, size: 160, elements: !300)
!300 = !{!301, !302, !303, !304, !305}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !299, file: !46, line: 294, baseType: !35, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !299, file: !46, line: 295, baseType: !35, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !299, file: !46, line: 296, baseType: !35, size: 32, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !299, file: !46, line: 297, baseType: !35, size: 32, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !299, file: !46, line: 298, baseType: !35, size: 32, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !290, file: !46, line: 319, baseType: !283, size: 88, offset: 232)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !143, file: !46, line: 654, baseType: !308, size: 480)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !46, line: 322, size: 480, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315, !316, !324}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !308, file: !46, line: 323, baseType: !74, size: 8)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !308, file: !46, line: 323, baseType: !74, size: 8, offset: 8)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !308, file: !46, line: 323, baseType: !74, size: 8, offset: 16)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !308, file: !46, line: 323, baseType: !74, size: 8, offset: 24)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !308, file: !46, line: 323, baseType: !74, size: 8, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !308, file: !46, line: 323, baseType: !257, size: 32, offset: 40)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !308, file: !46, line: 323, baseType: !317, size: 320, offset: 72)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !46, line: 301, size: 320, elements: !318)
!318 = !{!319, !320, !321, !322, !323}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !317, file: !46, line: 302, baseType: !40, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !317, file: !46, line: 303, baseType: !40, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !317, file: !46, line: 304, baseType: !40, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !317, file: !46, line: 305, baseType: !40, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !317, file: !46, line: 306, baseType: !40, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !308, file: !46, line: 324, baseType: !283, size: 88, offset: 392)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !143, file: !46, line: 655, baseType: !326, size: 464)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !46, line: 327, size: 464, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !326, file: !46, line: 328, baseType: !74, size: 8)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !326, file: !46, line: 328, baseType: !74, size: 8, offset: 8)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !326, file: !46, line: 328, baseType: !74, size: 8, offset: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !326, file: !46, line: 328, baseType: !74, size: 8, offset: 24)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !326, file: !46, line: 328, baseType: !74, size: 8, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !326, file: !46, line: 328, baseType: !257, size: 32, offset: 40)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !326, file: !46, line: 328, baseType: !74, size: 8, offset: 72)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !326, file: !46, line: 329, baseType: !317, size: 320, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !326, file: !46, line: 330, baseType: !40, size: 64, offset: 400)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !143, file: !46, line: 656, baseType: !338, size: 168)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !46, line: 333, size: 168, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !338, file: !46, line: 334, baseType: !74, size: 8)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !338, file: !46, line: 335, baseType: !74, size: 8, offset: 8)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !338, file: !46, line: 336, baseType: !74, size: 8, offset: 16)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !338, file: !46, line: 337, baseType: !74, size: 8, offset: 24)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !338, file: !46, line: 338, baseType: !74, size: 8, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !338, file: !46, line: 339, baseType: !74, size: 8, offset: 40)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !338, file: !46, line: 340, baseType: !283, size: 88, offset: 48)
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !46, line: 341, baseType: !348, size: 32, offset: 136)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !46, line: 341, size: 32, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !348, file: !46, line: 342, baseType: !35, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !348, file: !46, line: 343, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !348, file: !46, line: 343, elements: !353)
!353 = !{!354, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !352, file: !46, line: 343, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !46, line: 343, elements: !65)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !352, file: !46, line: 343, baseType: !357)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, elements: !68)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !143, file: !46, line: 657, baseType: !359, size: 96)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !46, line: 347, size: 96, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !359, file: !46, line: 348, baseType: !74, size: 8)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !359, file: !46, line: 349, baseType: !74, size: 8, offset: 8)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !359, file: !46, line: 350, baseType: !74, size: 8, offset: 16)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !359, file: !46, line: 351, baseType: !74, size: 8, offset: 24)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !359, file: !46, line: 352, baseType: !40, size: 64, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !143, file: !46, line: 658, baseType: !367, size: 352)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !46, line: 355, size: 352, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !385}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !367, file: !46, line: 356, baseType: !74, size: 8)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !367, file: !46, line: 357, baseType: !74, size: 8, offset: 8)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !367, file: !46, line: 358, baseType: !74, size: 8, offset: 16)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !367, file: !46, line: 359, baseType: !74, size: 8, offset: 24)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !367, file: !46, line: 360, baseType: !74, size: 8, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !367, file: !46, line: 361, baseType: !74, size: 8, offset: 40)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !367, file: !46, line: 362, baseType: !74, size: 8, offset: 48)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !367, file: !46, line: 363, baseType: !74, size: 8, offset: 56)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !367, file: !46, line: 364, baseType: !74, size: 8, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !367, file: !46, line: 365, baseType: !133, size: 16, offset: 72)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !367, file: !46, line: 366, baseType: !133, size: 16, offset: 88)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !367, file: !46, line: 367, baseType: !133, size: 16, offset: 104)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !367, file: !46, line: 368, baseType: !133, size: 16, offset: 120)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !367, file: !46, line: 369, baseType: !283, size: 88, offset: 136)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !367, file: !46, line: 370, baseType: !384, size: 64, offset: 224)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !367, file: !46, line: 371, baseType: !73, size: 64, offset: 288)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !143, file: !46, line: 659, baseType: !387, size: 288)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !46, line: 422, size: 288, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !387, file: !46, line: 423, baseType: !74, size: 8)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !387, file: !46, line: 423, baseType: !74, size: 8, offset: 8)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !387, file: !46, line: 423, baseType: !74, size: 8, offset: 16)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !387, file: !46, line: 423, baseType: !74, size: 8, offset: 24)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !387, file: !46, line: 423, baseType: !74, size: 8, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !387, file: !46, line: 423, baseType: !74, size: 8, offset: 40)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !387, file: !46, line: 423, baseType: !133, size: 16, offset: 48)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !387, file: !46, line: 423, baseType: !133, size: 16, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !387, file: !46, line: 423, baseType: !283, size: 88, offset: 80)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !387, file: !46, line: 423, baseType: !73, size: 64, offset: 168)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !387, file: !46, line: 423, baseType: !74, size: 8, offset: 232)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !387, file: !46, line: 424, baseType: !133, size: 16, offset: 240)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !387, file: !46, line: 425, baseType: !35, size: 32, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !143, file: !46, line: 660, baseType: !403, size: 320)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !46, line: 433, size: 320, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !403, file: !46, line: 434, baseType: !74, size: 8)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !403, file: !46, line: 434, baseType: !74, size: 8, offset: 8)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !403, file: !46, line: 434, baseType: !74, size: 8, offset: 16)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !403, file: !46, line: 434, baseType: !74, size: 8, offset: 24)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !403, file: !46, line: 434, baseType: !74, size: 8, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !403, file: !46, line: 434, baseType: !74, size: 8, offset: 40)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !403, file: !46, line: 434, baseType: !133, size: 16, offset: 48)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !403, file: !46, line: 434, baseType: !133, size: 16, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !403, file: !46, line: 434, baseType: !283, size: 88, offset: 80)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !403, file: !46, line: 434, baseType: !73, size: 64, offset: 168)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !403, file: !46, line: 434, baseType: !74, size: 8, offset: 232)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !403, file: !46, line: 435, baseType: !74, size: 8, offset: 240)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !403, file: !46, line: 436, baseType: !74, size: 8, offset: 248)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !403, file: !46, line: 437, baseType: !74, size: 8, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !403, file: !46, line: 438, baseType: !74, size: 8, offset: 264)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !403, file: !46, line: 439, baseType: !133, size: 16, offset: 272)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !403, file: !46, line: 440, baseType: !35, size: 32, offset: 288)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !143, file: !46, line: 661, baseType: !423, size: 344)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !46, line: 463, size: 344, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !423, file: !46, line: 464, baseType: !74, size: 8)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !423, file: !46, line: 464, baseType: !74, size: 8, offset: 8)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !423, file: !46, line: 464, baseType: !74, size: 8, offset: 16)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !423, file: !46, line: 464, baseType: !74, size: 8, offset: 24)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !423, file: !46, line: 464, baseType: !74, size: 8, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !423, file: !46, line: 464, baseType: !74, size: 8, offset: 40)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !423, file: !46, line: 464, baseType: !133, size: 16, offset: 48)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !423, file: !46, line: 464, baseType: !133, size: 16, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !423, file: !46, line: 464, baseType: !283, size: 88, offset: 80)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !423, file: !46, line: 464, baseType: !73, size: 64, offset: 168)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !423, file: !46, line: 464, baseType: !74, size: 8, offset: 232)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !423, file: !46, line: 465, baseType: !74, size: 8, offset: 240)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !423, file: !46, line: 466, baseType: !74, size: 8, offset: 248)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !423, file: !46, line: 467, baseType: !74, size: 8, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !423, file: !46, line: 468, baseType: !74, size: 8, offset: 264)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !423, file: !46, line: 469, baseType: !74, size: 8, offset: 272)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !423, file: !46, line: 470, baseType: !133, size: 16, offset: 280)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !423, file: !46, line: 471, baseType: !133, size: 16, offset: 296)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !423, file: !46, line: 472, baseType: !35, size: 32, offset: 312)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !143, file: !46, line: 662, baseType: !445, size: 248)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_csi2_serialbus", file: !46, line: 518, size: 248, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !445, file: !46, line: 519, baseType: !74, size: 8)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !445, file: !46, line: 519, baseType: !74, size: 8, offset: 8)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !445, file: !46, line: 519, baseType: !74, size: 8, offset: 16)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !445, file: !46, line: 519, baseType: !74, size: 8, offset: 24)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !445, file: !46, line: 519, baseType: !74, size: 8, offset: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !445, file: !46, line: 519, baseType: !74, size: 8, offset: 40)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !445, file: !46, line: 519, baseType: !133, size: 16, offset: 48)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !445, file: !46, line: 519, baseType: !133, size: 16, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !445, file: !46, line: 519, baseType: !283, size: 88, offset: 80)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !445, file: !46, line: 519, baseType: !73, size: 64, offset: 168)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "local_port_instance", scope: !445, file: !46, line: 519, baseType: !74, size: 8, offset: 232)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "phy_type", scope: !445, file: !46, line: 520, baseType: !74, size: 8, offset: 240)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !143, file: !46, line: 663, baseType: !460, size: 232)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !46, line: 407, size: 232, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !460, file: !46, line: 408, baseType: !74, size: 8)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !46, line: 408, baseType: !74, size: 8, offset: 8)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !460, file: !46, line: 408, baseType: !74, size: 8, offset: 16)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !460, file: !46, line: 408, baseType: !74, size: 8, offset: 24)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !460, file: !46, line: 408, baseType: !74, size: 8, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !460, file: !46, line: 408, baseType: !74, size: 8, offset: 40)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !460, file: !46, line: 408, baseType: !133, size: 16, offset: 48)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !460, file: !46, line: 408, baseType: !133, size: 16, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !460, file: !46, line: 408, baseType: !283, size: 88, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !460, file: !46, line: 408, baseType: !73, size: 64, offset: 168)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !143, file: !46, line: 664, baseType: !473, size: 288)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !46, line: 523, size: 288, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !473, file: !46, line: 524, baseType: !74, size: 8)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !473, file: !46, line: 525, baseType: !74, size: 8, offset: 8)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !473, file: !46, line: 526, baseType: !74, size: 8, offset: 16)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !473, file: !46, line: 527, baseType: !133, size: 16, offset: 24)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !473, file: !46, line: 528, baseType: !133, size: 16, offset: 40)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !473, file: !46, line: 529, baseType: !133, size: 16, offset: 56)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !473, file: !46, line: 530, baseType: !283, size: 88, offset: 72)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !473, file: !46, line: 531, baseType: !384, size: 64, offset: 160)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !473, file: !46, line: 532, baseType: !73, size: 64, offset: 224)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !143, file: !46, line: 665, baseType: !485, size: 312)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !46, line: 535, size: 312, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494, !495, !496}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !485, file: !46, line: 536, baseType: !74, size: 8)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !485, file: !46, line: 537, baseType: !74, size: 8, offset: 8)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !485, file: !46, line: 538, baseType: !74, size: 8, offset: 16)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !485, file: !46, line: 539, baseType: !74, size: 8, offset: 24)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !485, file: !46, line: 540, baseType: !35, size: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !485, file: !46, line: 541, baseType: !133, size: 16, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !485, file: !46, line: 542, baseType: !133, size: 16, offset: 80)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !485, file: !46, line: 543, baseType: !283, size: 88, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !485, file: !46, line: 544, baseType: !384, size: 64, offset: 184)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !485, file: !46, line: 545, baseType: !73, size: 64, offset: 248)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !143, file: !46, line: 666, baseType: !498, size: 256)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !46, line: 574, size: 256, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !510}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !498, file: !46, line: 575, baseType: !74, size: 8)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !498, file: !46, line: 576, baseType: !74, size: 8, offset: 8)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !498, file: !46, line: 577, baseType: !133, size: 16, offset: 16)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !498, file: !46, line: 578, baseType: !133, size: 16, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !498, file: !46, line: 579, baseType: !384, size: 64, offset: 48)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !498, file: !46, line: 580, baseType: !506, size: 80, offset: 112)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !46, line: 264, size: 80, elements: !507)
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !506, file: !46, line: 265, baseType: !133, size: 16)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !506, file: !46, line: 266, baseType: !288, size: 64, offset: 16)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !498, file: !46, line: 581, baseType: !73, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !143, file: !46, line: 667, baseType: !512, size: 288)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !46, line: 584, size: 288, elements: !513)
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !512, file: !46, line: 585, baseType: !74, size: 8)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !512, file: !46, line: 586, baseType: !74, size: 8, offset: 8)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !512, file: !46, line: 587, baseType: !74, size: 8, offset: 16)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !512, file: !46, line: 588, baseType: !133, size: 16, offset: 24)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !512, file: !46, line: 589, baseType: !133, size: 16, offset: 40)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !512, file: !46, line: 590, baseType: !283, size: 88, offset: 56)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !512, file: !46, line: 591, baseType: !506, size: 80, offset: 144)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !512, file: !46, line: 592, baseType: !73, size: 64, offset: 224)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !143, file: !46, line: 668, baseType: !523, size: 312)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !46, line: 595, size: 312, elements: !524)
!524 = !{!525, !526, !527, !528, !529, !530, !531, !532, !533}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !523, file: !46, line: 596, baseType: !74, size: 8)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !523, file: !46, line: 597, baseType: !74, size: 8, offset: 8)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !523, file: !46, line: 598, baseType: !74, size: 8, offset: 16)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !523, file: !46, line: 599, baseType: !74, size: 8, offset: 24)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !523, file: !46, line: 600, baseType: !35, size: 32, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !523, file: !46, line: 601, baseType: !133, size: 16, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !523, file: !46, line: 602, baseType: !283, size: 88, offset: 80)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !523, file: !46, line: 603, baseType: !506, size: 80, offset: 168)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !523, file: !46, line: 604, baseType: !73, size: 64, offset: 248)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !143, file: !46, line: 669, baseType: !535, size: 160)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_clock_input", file: !46, line: 548, size: 160, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !542}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !535, file: !46, line: 549, baseType: !74, size: 8)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !535, file: !46, line: 550, baseType: !74, size: 8, offset: 8)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !535, file: !46, line: 551, baseType: !74, size: 8, offset: 16)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !535, file: !46, line: 552, baseType: !133, size: 16, offset: 24)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !535, file: !46, line: 553, baseType: !35, size: 32, offset: 40)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !535, file: !46, line: 554, baseType: !283, size: 88, offset: 72)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !143, file: !46, line: 673, baseType: !544, size: 72)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !46, line: 309, size: 72, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !551}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !544, file: !46, line: 310, baseType: !74, size: 8)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !544, file: !46, line: 310, baseType: !74, size: 8, offset: 8)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !544, file: !46, line: 310, baseType: !74, size: 8, offset: 16)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !544, file: !46, line: 310, baseType: !74, size: 8, offset: 24)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !544, file: !46, line: 310, baseType: !74, size: 8, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !544, file: !46, line: 310, baseType: !257, size: 32, offset: 40)
!552 = !{!553, !554, !555, !556, !557, !558, !559}
!553 = !DILocalVariable(name: "aml_buffer", arg: 1, scope: !130, file: !3, line: 30, type: !73)
!554 = !DILocalVariable(name: "aml_buffer_length", arg: 2, scope: !130, file: !3, line: 31, type: !133)
!555 = !DILocalVariable(name: "resource_ptr", arg: 3, scope: !130, file: !3, line: 32, type: !136)
!556 = !DILocalVariable(name: "status", scope: !130, file: !3, line: 34, type: !33)
!557 = !DILocalVariable(name: "list_size_needed", scope: !130, file: !3, line: 35, type: !39)
!558 = !DILocalVariable(name: "resource", scope: !130, file: !3, line: 36, type: !43)
!559 = !DILocalVariable(name: "current_resource_ptr", scope: !130, file: !3, line: 37, type: !43)
!560 = !DILocation(line: 30, column: 29, scope: !130)
!561 = !DILocation(line: 31, column: 8, scope: !130)
!562 = !DILocation(line: 32, column: 27, scope: !130)
!563 = !DILocation(line: 34, column: 2, scope: !130)
!564 = !DILocation(line: 34, column: 14, scope: !130)
!565 = !DILocation(line: 35, column: 2, scope: !130)
!566 = !DILocation(line: 35, column: 12, scope: !130)
!567 = !DILocation(line: 36, column: 2, scope: !130)
!568 = !DILocation(line: 36, column: 8, scope: !130)
!569 = !DILocation(line: 37, column: 2, scope: !130)
!570 = !DILocation(line: 37, column: 8, scope: !130)
!571 = !DILocation(line: 49, column: 30, scope: !130)
!572 = !DILocation(line: 49, column: 42, scope: !130)
!573 = !DILocation(line: 49, column: 6, scope: !130)
!574 = !DILocation(line: 48, column: 9, scope: !130)
!575 = !DILocation(line: 51, column: 6, scope: !576)
!576 = distinct !DILexicalBlock(scope: !130, file: !3, line: 51, column: 6)
!577 = !DILocation(line: 51, column: 13, scope: !576)
!578 = !DILocation(line: 51, column: 6, scope: !130)
!579 = !DILocation(line: 52, column: 10, scope: !580)
!580 = distinct !DILexicalBlock(scope: !576, file: !3, line: 51, column: 44)
!581 = !DILocation(line: 53, column: 2, scope: !580)
!582 = !DILocation(line: 54, column: 6, scope: !583)
!583 = distinct !DILexicalBlock(scope: !130, file: !3, line: 54, column: 6)
!584 = !DILocation(line: 54, column: 6, scope: !130)
!585 = !DILocation(line: 55, column: 3, scope: !586)
!586 = distinct !DILexicalBlock(scope: !583, file: !3, line: 54, column: 28)
!587 = !DILocation(line: 60, column: 13, scope: !130)
!588 = !DILocation(line: 60, column: 11, scope: !130)
!589 = !DILocation(line: 61, column: 25, scope: !130)
!590 = !DILocation(line: 61, column: 23, scope: !130)
!591 = !DILocation(line: 62, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !130, file: !3, line: 62, column: 6)
!593 = !DILocation(line: 62, column: 6, scope: !130)
!594 = !DILocation(line: 63, column: 3, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !3, line: 62, column: 17)
!596 = !DILocation(line: 68, column: 44, scope: !130)
!597 = !DILocation(line: 68, column: 56, scope: !130)
!598 = !DILocation(line: 68, column: 11, scope: !130)
!599 = !DILocation(line: 68, column: 9, scope: !130)
!600 = !DILocation(line: 71, column: 6, scope: !601)
!601 = distinct !DILexicalBlock(scope: !130, file: !3, line: 71, column: 6)
!602 = !DILocation(line: 71, column: 13, scope: !601)
!603 = !DILocation(line: 71, column: 6, scope: !130)
!604 = !DILocation(line: 72, column: 10, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 71, column: 44)
!606 = !DILocation(line: 73, column: 2, scope: !605)
!607 = !DILocation(line: 74, column: 6, scope: !608)
!608 = distinct !DILexicalBlock(scope: !130, file: !3, line: 74, column: 6)
!609 = !DILocation(line: 74, column: 6, scope: !130)
!610 = !DILocation(line: 75, column: 3, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !3, line: 74, column: 28)
!612 = !DILocation(line: 76, column: 2, scope: !611)
!613 = !DILocation(line: 77, column: 19, scope: !614)
!614 = distinct !DILexicalBlock(scope: !608, file: !3, line: 76, column: 9)
!615 = !DILocation(line: 77, column: 4, scope: !614)
!616 = !DILocation(line: 77, column: 17, scope: !614)
!617 = !DILocation(line: 80, column: 2, scope: !130)
!618 = !DILocation(line: 81, column: 1, scope: !130)
!619 = !DISubprogram(name: "acpi_rs_get_list_length", scope: !620, file: !620, line: 197, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!620 = !DIFile(filename: "drivers/acpi/acpica/acresrc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2965293fe7c26b9b589feaadd667de1d")
!621 = !DISubroutineType(types: !622)
!622 = !{!33, !73, !35, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!624 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !625, file: !625, line: 55, type: !626, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !628)
!625 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!626 = !DISubroutineType(types: !627)
!627 = !{!43, !39}
!628 = !{!629, !630, !632, !635, !636, !639}
!629 = !DILocalVariable(name: "size", arg: 1, scope: !624, file: !625, line: 55, type: !39)
!630 = !DILocalVariable(name: "_flags", scope: !631, file: !625, line: 57, type: !72)
!631 = distinct !DILexicalBlock(scope: !624, file: !625, line: 57, column: 23)
!632 = !DILocalVariable(name: "__dummy", scope: !633, file: !625, line: 57, type: !72)
!633 = distinct !DILexicalBlock(scope: !634, file: !625, line: 57, column: 23)
!634 = distinct !DILexicalBlock(scope: !631, file: !625, line: 57, column: 23)
!635 = !DILocalVariable(name: "__dummy2", scope: !633, file: !625, line: 57, type: !72)
!636 = !DILocalVariable(name: "__dummy", scope: !637, file: !625, line: 57, type: !72)
!637 = distinct !DILexicalBlock(scope: !638, file: !625, line: 57, column: 23)
!638 = distinct !DILexicalBlock(scope: !631, file: !625, line: 57, column: 23)
!639 = !DILocalVariable(name: "__dummy2", scope: !637, file: !625, line: 57, type: !72)
!640 = !DILocation(line: 55, column: 55, scope: !624)
!641 = !DILocation(line: 57, column: 17, scope: !624)
!642 = !DILocation(line: 57, column: 23, scope: !631)
!643 = !DILocation(line: 57, column: 23, scope: !633)
!644 = !DILocation(line: 57, column: 23, scope: !634)
!645 = !DILocation(line: 57, column: 23, scope: !637)
!646 = !DILocation(line: 57, column: 23, scope: !638)
!647 = !DILocation(line: 57, column: 23, scope: !624)
!648 = !DILocation(line: 57, column: 9, scope: !624)
!649 = !DILocation(line: 57, column: 2, scope: !624)
!650 = !DISubprogram(name: "acpi_ut_walk_aml_resources", scope: !651, file: !651, line: 594, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!651 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!652 = !DISubroutineType(types: !653)
!653 = !{!33, !654, !73, !39, !1404, !1113}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !656, line: 37, size: 9024, elements: !657)
!656 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !1353, !1354, !1355, !1356, !1357, !1361, !1363, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1402}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !655, file: !656, line: 38, baseType: !654, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !655, file: !656, line: 39, baseType: !74, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !655, file: !656, line: 40, baseType: !74, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !655, file: !656, line: 41, baseType: !133, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !655, file: !656, line: 42, baseType: !74, size: 8, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !655, file: !656, line: 43, baseType: !74, size: 8, offset: 104)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !655, file: !656, line: 44, baseType: !74, size: 8, offset: 112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !655, file: !656, line: 45, baseType: !666, size: 16, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !34, line: 445, baseType: !133)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !655, file: !656, line: 46, baseType: !74, size: 8, offset: 144)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !655, file: !656, line: 47, baseType: !74, size: 8, offset: 152)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !655, file: !656, line: 48, baseType: !74, size: 8, offset: 160)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !655, file: !656, line: 49, baseType: !74, size: 8, offset: 168)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !655, file: !656, line: 50, baseType: !74, size: 8, offset: 176)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !655, file: !656, line: 51, baseType: !74, size: 8, offset: 184)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !655, file: !656, line: 52, baseType: !74, size: 8, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !655, file: !656, line: 53, baseType: !74, size: 8, offset: 200)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !655, file: !656, line: 54, baseType: !73, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !655, file: !656, line: 55, baseType: !35, size: 32, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !655, file: !656, line: 56, baseType: !35, size: 32, offset: 352)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !655, file: !656, line: 57, baseType: !35, size: 32, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !655, file: !656, line: 58, baseType: !35, size: 32, offset: 416)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !655, file: !656, line: 60, baseType: !681, size: 640, offset: 448)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !682, line: 909, size: 640, elements: !683)
!682 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!683 = !{!684, !685, !686, !687, !688, !689, !1250, !1251, !1351, !1352}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !681, file: !682, line: 910, baseType: !73, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !681, file: !682, line: 911, baseType: !73, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !681, file: !682, line: 912, baseType: !73, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !681, file: !682, line: 913, baseType: !73, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !681, file: !682, line: 914, baseType: !73, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !681, file: !682, line: 915, baseType: !690, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !682, line: 891, size: 1600, elements: !692)
!692 = !{!693, !1193, !1209}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !691, file: !682, line: 892, baseType: !694, size: 448)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !682, line: 844, size: 448, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !1183, !1192}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !694, file: !682, line: 845, baseType: !690, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !682, line: 845, baseType: !74, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !682, line: 845, baseType: !74, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !694, file: !682, line: 845, baseType: !133, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !694, file: !682, line: 845, baseType: !73, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !682, line: 845, baseType: !690, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !694, file: !682, line: 845, baseType: !703, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !682, line: 133, size: 384, elements: !705)
!705 = !{!706, !1170, !1171, !1172, !1173, !1179, !1180, !1181, !1182}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !704, file: !682, line: 134, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 369, size: 576, elements: !709)
!709 = !{!710, !718, !731, !741, !754, !768, !777, !803, !832, !848, !861, !939, !951, !965, !975, !993, !1015, !1034, !1053, !1072, !1089, !1116, !1133, !1146, !1160, !1169}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !708, file: !6, line: 370, baseType: !711, size: 128)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !712)
!712 = !{!713, !714, !715, !716, !717}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !711, file: !6, line: 74, baseType: !707, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !6, line: 74, baseType: !74, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !6, line: 74, baseType: !74, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !711, file: !6, line: 74, baseType: !133, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !6, line: 74, baseType: !74, size: 8, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !708, file: !6, line: 371, baseType: !719, size: 192)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !730}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !719, file: !6, line: 77, baseType: !707, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !719, file: !6, line: 77, baseType: !74, size: 8, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !719, file: !6, line: 77, baseType: !74, size: 8, offset: 72)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !719, file: !6, line: 77, baseType: !133, size: 16, offset: 80)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !6, line: 77, baseType: !74, size: 8, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !719, file: !6, line: 77, baseType: !727, size: 24, offset: 104)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 24, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 3)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !719, file: !6, line: 78, baseType: !40, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !708, file: !6, line: 372, baseType: !732, size: 256)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !732, file: !6, line: 94, baseType: !707, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !6, line: 94, baseType: !74, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !6, line: 94, baseType: !74, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !6, line: 94, baseType: !133, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !6, line: 94, baseType: !74, size: 8, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !732, file: !6, line: 94, baseType: !288, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !732, file: !6, line: 94, baseType: !35, size: 32, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !708, file: !6, line: 373, baseType: !742, size: 384)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !743)
!743 = !{!744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !742, file: !6, line: 98, baseType: !707, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !742, file: !6, line: 98, baseType: !74, size: 8, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !742, file: !6, line: 98, baseType: !74, size: 8, offset: 72)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !742, file: !6, line: 98, baseType: !133, size: 16, offset: 80)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !742, file: !6, line: 98, baseType: !74, size: 8, offset: 96)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !742, file: !6, line: 98, baseType: !73, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !742, file: !6, line: 98, baseType: !35, size: 32, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !742, file: !6, line: 99, baseType: !35, size: 32, offset: 224)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !742, file: !6, line: 100, baseType: !73, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !742, file: !6, line: 101, baseType: !703, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !708, file: !6, line: 374, baseType: !755, size: 384)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !763, !765, !766, !767}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !755, file: !6, line: 105, baseType: !707, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !755, file: !6, line: 105, baseType: !74, size: 8, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !755, file: !6, line: 105, baseType: !74, size: 8, offset: 72)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !755, file: !6, line: 105, baseType: !133, size: 16, offset: 80)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !6, line: 105, baseType: !74, size: 8, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !755, file: !6, line: 105, baseType: !703, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !755, file: !6, line: 106, baseType: !764, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !755, file: !6, line: 107, baseType: !73, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !755, file: !6, line: 108, baseType: !35, size: 32, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !755, file: !6, line: 109, baseType: !35, size: 32, offset: 352)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !708, file: !6, line: 375, baseType: !769, size: 192)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !769, file: !6, line: 119, baseType: !707, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !769, file: !6, line: 119, baseType: !74, size: 8, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !769, file: !6, line: 119, baseType: !74, size: 8, offset: 72)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !769, file: !6, line: 119, baseType: !133, size: 16, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !6, line: 119, baseType: !74, size: 8, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !769, file: !6, line: 119, baseType: !43, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !708, file: !6, line: 376, baseType: !778, size: 448)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 144, size: 448, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !800, !801, !802}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !778, file: !6, line: 145, baseType: !707, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !778, file: !6, line: 145, baseType: !74, size: 8, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !6, line: 145, baseType: !74, size: 8, offset: 72)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !778, file: !6, line: 145, baseType: !133, size: 16, offset: 80)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !6, line: 145, baseType: !74, size: 8, offset: 96)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !778, file: !6, line: 145, baseType: !74, size: 8, offset: 104)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !778, file: !6, line: 146, baseType: !74, size: 8, offset: 112)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !778, file: !6, line: 147, baseType: !74, size: 8, offset: 120)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !778, file: !6, line: 148, baseType: !707, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !778, file: !6, line: 149, baseType: !707, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !778, file: !6, line: 150, baseType: !73, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !778, file: !6, line: 154, baseType: !792, size: 64, offset: 320)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !778, file: !6, line: 151, size: 64, elements: !793)
!793 = !{!794, !799}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !792, file: !6, line: 152, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !682, line: 248, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!33, !654}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !792, file: !6, line: 153, baseType: !707, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !778, file: !6, line: 156, baseType: !35, size: 32, offset: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !778, file: !6, line: 157, baseType: !666, size: 16, offset: 416)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !778, file: !6, line: 158, baseType: !74, size: 8, offset: 432)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !708, file: !6, line: 377, baseType: !804, size: 576)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !828, !829, !830, !831}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !804, file: !6, line: 123, baseType: !707, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !804, file: !6, line: 123, baseType: !74, size: 8, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !804, file: !6, line: 123, baseType: !74, size: 8, offset: 72)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !804, file: !6, line: 123, baseType: !133, size: 16, offset: 80)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !6, line: 123, baseType: !74, size: 8, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !804, file: !6, line: 123, baseType: !74, size: 8, offset: 104)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !804, file: !6, line: 124, baseType: !133, size: 16, offset: 112)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !804, file: !6, line: 125, baseType: !43, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !804, file: !6, line: 126, baseType: !40, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !804, file: !6, line: 127, baseType: !816, size: 64, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !682, line: 634, size: 320, elements: !818)
!818 = !{!819, !820, !821, !822, !823, !824, !825, !826, !827}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !817, file: !682, line: 635, baseType: !43, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !817, file: !682, line: 635, baseType: !74, size: 8, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !817, file: !682, line: 635, baseType: !74, size: 8, offset: 72)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !817, file: !682, line: 635, baseType: !133, size: 16, offset: 80)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !817, file: !682, line: 635, baseType: !133, size: 16, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !817, file: !682, line: 636, baseType: !74, size: 8, offset: 112)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !817, file: !682, line: 637, baseType: !654, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !817, file: !682, line: 638, baseType: !707, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !817, file: !682, line: 639, baseType: !40, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !804, file: !6, line: 128, baseType: !707, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !804, file: !6, line: 129, baseType: !707, size: 64, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !804, file: !6, line: 130, baseType: !703, size: 64, offset: 448)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !804, file: !6, line: 131, baseType: !74, size: 8, offset: 512)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !708, file: !6, line: 378, baseType: !833, size: 512)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 512, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !846, !847}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !833, file: !6, line: 135, baseType: !707, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !833, file: !6, line: 135, baseType: !74, size: 8, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !833, file: !6, line: 135, baseType: !74, size: 8, offset: 72)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !833, file: !6, line: 135, baseType: !133, size: 16, offset: 80)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !833, file: !6, line: 135, baseType: !74, size: 8, offset: 96)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !833, file: !6, line: 135, baseType: !74, size: 8, offset: 104)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !833, file: !6, line: 136, baseType: !703, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !833, file: !6, line: 137, baseType: !707, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !833, file: !6, line: 138, baseType: !707, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !833, file: !6, line: 139, baseType: !845, size: 64, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !34, line: 129, baseType: !40)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !833, file: !6, line: 140, baseType: !35, size: 32, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !833, file: !6, line: 141, baseType: !43, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !708, file: !6, line: 379, baseType: !849, size: 320)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 185, size: 320, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856, !860}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !849, file: !6, line: 186, baseType: !707, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !849, file: !6, line: 186, baseType: !74, size: 8, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !849, file: !6, line: 186, baseType: !74, size: 8, offset: 72)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !849, file: !6, line: 186, baseType: !133, size: 16, offset: 80)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !849, file: !6, line: 186, baseType: !74, size: 8, offset: 96)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !849, file: !6, line: 186, baseType: !857, size: 128, offset: 128)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 128, elements: !858)
!858 = !{!859}
!859 = !DISubrange(count: 2)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !849, file: !6, line: 186, baseType: !707, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !708, file: !6, line: 380, baseType: !862, size: 384)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 188, size: 384, elements: !863)
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !862, file: !6, line: 189, baseType: !707, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !862, file: !6, line: 189, baseType: !74, size: 8, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !862, file: !6, line: 189, baseType: !74, size: 8, offset: 72)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !862, file: !6, line: 189, baseType: !133, size: 16, offset: 80)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !862, file: !6, line: 189, baseType: !74, size: 8, offset: 96)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !862, file: !6, line: 190, baseType: !857, size: 128, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !862, file: !6, line: 190, baseType: !707, size: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !862, file: !6, line: 190, baseType: !872, size: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !682, line: 480, size: 576, elements: !874)
!874 = !{!875, !876, !877, !878, !886, !901, !933, !934, !935, !936, !937, !938}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !873, file: !682, line: 481, baseType: !703, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !873, file: !682, line: 482, baseType: !872, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !873, file: !682, line: 483, baseType: !872, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !873, file: !682, line: 484, baseType: !879, size: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !682, line: 497, size: 256, elements: !881)
!881 = !{!882, !883, !884, !885}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !880, file: !682, line: 498, baseType: !879, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !880, file: !682, line: 499, baseType: !879, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !880, file: !682, line: 500, baseType: !872, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !880, file: !682, line: 501, baseType: !35, size: 32, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !873, file: !682, line: 485, baseType: !887, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !682, line: 466, size: 320, elements: !889)
!889 = !{!890, !895, !896, !897, !898, !899, !900}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !888, file: !682, line: 467, baseType: !891, size: 128)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !682, line: 459, size: 128, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !891, file: !682, line: 460, baseType: !74, size: 8)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !891, file: !682, line: 461, baseType: !40, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !888, file: !682, line: 468, baseType: !891, size: 128, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !888, file: !682, line: 469, baseType: !133, size: 16, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !888, file: !682, line: 470, baseType: !74, size: 8, offset: 272)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !888, file: !682, line: 471, baseType: !74, size: 8, offset: 280)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !888, file: !682, line: 472, baseType: !74, size: 8, offset: 288)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !888, file: !682, line: 473, baseType: !74, size: 8, offset: 296)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !873, file: !682, line: 486, baseType: !902, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !682, line: 448, size: 192, elements: !904)
!904 = !{!905, !928, !929, !930, !931, !932}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !903, file: !682, line: 449, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !682, line: 438, size: 64, elements: !907)
!907 = !{!908, !909, !922}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !906, file: !682, line: 439, baseType: !703, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !906, file: !682, line: 440, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !682, line: 419, size: 256, elements: !912)
!912 = !{!913, !918, !919, !920, !921}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !911, file: !682, line: 420, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !34, line: 1058, baseType: !915)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!35, !77, !35, !43}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !911, file: !682, line: 421, baseType: !43, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !911, file: !682, line: 422, baseType: !703, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !911, file: !682, line: 423, baseType: !74, size: 8, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !911, file: !682, line: 424, baseType: !74, size: 8, offset: 200)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !906, file: !682, line: 441, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !682, line: 429, size: 128, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !924, file: !682, line: 430, baseType: !703, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !924, file: !682, line: 431, baseType: !923, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !903, file: !682, line: 450, baseType: !887, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !903, file: !682, line: 451, baseType: !74, size: 8, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !903, file: !682, line: 452, baseType: !74, size: 8, offset: 136)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !903, file: !682, line: 453, baseType: !74, size: 8, offset: 144)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !903, file: !682, line: 454, baseType: !74, size: 8, offset: 152)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !873, file: !682, line: 487, baseType: !40, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !873, file: !682, line: 488, baseType: !35, size: 32, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !873, file: !682, line: 489, baseType: !133, size: 16, offset: 480)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !873, file: !682, line: 490, baseType: !133, size: 16, offset: 496)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !873, file: !682, line: 491, baseType: !74, size: 8, offset: 512)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !873, file: !682, line: 492, baseType: !74, size: 8, offset: 520)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !708, file: !6, line: 381, baseType: !940, size: 384)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 193, size: 384, elements: !941)
!941 = !{!942, !943, !944, !945, !946, !947, !948, !949, !950}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !940, file: !6, line: 194, baseType: !707, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !940, file: !6, line: 194, baseType: !74, size: 8, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !940, file: !6, line: 194, baseType: !74, size: 8, offset: 72)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !940, file: !6, line: 194, baseType: !133, size: 16, offset: 80)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !940, file: !6, line: 194, baseType: !74, size: 8, offset: 96)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !940, file: !6, line: 194, baseType: !857, size: 128, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !940, file: !6, line: 194, baseType: !707, size: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !940, file: !6, line: 194, baseType: !35, size: 32, offset: 320)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !940, file: !6, line: 195, baseType: !35, size: 32, offset: 352)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !708, file: !6, line: 382, baseType: !952, size: 384)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 198, size: 384, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !962, !963}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !952, file: !6, line: 199, baseType: !707, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !952, file: !6, line: 199, baseType: !74, size: 8, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !952, file: !6, line: 199, baseType: !74, size: 8, offset: 72)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !952, file: !6, line: 199, baseType: !133, size: 16, offset: 80)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !952, file: !6, line: 199, baseType: !74, size: 8, offset: 96)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !952, file: !6, line: 201, baseType: !74, size: 8, offset: 104)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !952, file: !6, line: 202, baseType: !74, size: 8, offset: 112)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !952, file: !6, line: 203, baseType: !857, size: 128, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !952, file: !6, line: 203, baseType: !707, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !952, file: !6, line: 203, baseType: !964, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !34, line: 128, baseType: !40)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !708, file: !6, line: 383, baseType: !966, size: 320)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 206, size: 320, elements: !967)
!967 = !{!968, !969, !970, !971, !972, !973, !974}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !966, file: !6, line: 207, baseType: !707, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !966, file: !6, line: 207, baseType: !74, size: 8, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !966, file: !6, line: 207, baseType: !74, size: 8, offset: 72)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !966, file: !6, line: 207, baseType: !133, size: 16, offset: 80)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !6, line: 207, baseType: !74, size: 8, offset: 96)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !966, file: !6, line: 207, baseType: !857, size: 128, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !966, file: !6, line: 207, baseType: !707, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !708, file: !6, line: 384, baseType: !976, size: 384)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 234, size: 384, elements: !977)
!977 = !{!978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !976, file: !6, line: 235, baseType: !707, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !976, file: !6, line: 235, baseType: !74, size: 8, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !976, file: !6, line: 235, baseType: !74, size: 8, offset: 72)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !976, file: !6, line: 235, baseType: !133, size: 16, offset: 80)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !976, file: !6, line: 235, baseType: !74, size: 8, offset: 96)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !976, file: !6, line: 235, baseType: !74, size: 8, offset: 104)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !976, file: !6, line: 235, baseType: !74, size: 8, offset: 112)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !976, file: !6, line: 235, baseType: !74, size: 8, offset: 120)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !976, file: !6, line: 235, baseType: !703, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !976, file: !6, line: 235, baseType: !35, size: 32, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !976, file: !6, line: 235, baseType: !35, size: 32, offset: 224)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !976, file: !6, line: 235, baseType: !35, size: 32, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !976, file: !6, line: 235, baseType: !74, size: 8, offset: 288)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !976, file: !6, line: 235, baseType: !74, size: 8, offset: 296)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !976, file: !6, line: 235, baseType: !707, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !708, file: !6, line: 385, baseType: !994, size: 576)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 238, size: 576, elements: !995)
!995 = !{!996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !994, file: !6, line: 239, baseType: !707, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !994, file: !6, line: 239, baseType: !74, size: 8, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !994, file: !6, line: 239, baseType: !74, size: 8, offset: 72)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !994, file: !6, line: 239, baseType: !133, size: 16, offset: 80)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !994, file: !6, line: 239, baseType: !74, size: 8, offset: 96)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !994, file: !6, line: 239, baseType: !74, size: 8, offset: 104)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !994, file: !6, line: 239, baseType: !74, size: 8, offset: 112)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !994, file: !6, line: 239, baseType: !74, size: 8, offset: 120)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !994, file: !6, line: 239, baseType: !703, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !994, file: !6, line: 239, baseType: !35, size: 32, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !994, file: !6, line: 239, baseType: !35, size: 32, offset: 224)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !994, file: !6, line: 239, baseType: !35, size: 32, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !994, file: !6, line: 239, baseType: !74, size: 8, offset: 288)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !994, file: !6, line: 239, baseType: !74, size: 8, offset: 296)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !994, file: !6, line: 239, baseType: !133, size: 16, offset: 304)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !994, file: !6, line: 240, baseType: !707, size: 64, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !994, file: !6, line: 241, baseType: !73, size: 64, offset: 384)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !994, file: !6, line: 242, baseType: !133, size: 16, offset: 448)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !994, file: !6, line: 243, baseType: !73, size: 64, offset: 512)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !708, file: !6, line: 386, baseType: !1016, size: 384)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 263, size: 384, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1016, file: !6, line: 264, baseType: !707, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1016, file: !6, line: 264, baseType: !74, size: 8, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1016, file: !6, line: 264, baseType: !74, size: 8, offset: 72)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1016, file: !6, line: 264, baseType: !133, size: 16, offset: 80)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1016, file: !6, line: 264, baseType: !74, size: 8, offset: 96)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1016, file: !6, line: 264, baseType: !74, size: 8, offset: 104)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1016, file: !6, line: 264, baseType: !74, size: 8, offset: 112)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1016, file: !6, line: 264, baseType: !74, size: 8, offset: 120)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1016, file: !6, line: 264, baseType: !703, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1016, file: !6, line: 264, baseType: !35, size: 32, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1016, file: !6, line: 264, baseType: !35, size: 32, offset: 224)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1016, file: !6, line: 264, baseType: !35, size: 32, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1016, file: !6, line: 264, baseType: !74, size: 8, offset: 288)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1016, file: !6, line: 264, baseType: !74, size: 8, offset: 296)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !1016, file: !6, line: 264, baseType: !74, size: 8, offset: 304)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !1016, file: !6, line: 265, baseType: !707, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !708, file: !6, line: 387, baseType: !1035, size: 448)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 246, size: 448, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1035, file: !6, line: 247, baseType: !707, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1035, file: !6, line: 247, baseType: !74, size: 8, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1035, file: !6, line: 247, baseType: !74, size: 8, offset: 72)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1035, file: !6, line: 247, baseType: !133, size: 16, offset: 80)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1035, file: !6, line: 247, baseType: !74, size: 8, offset: 96)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1035, file: !6, line: 247, baseType: !74, size: 8, offset: 104)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1035, file: !6, line: 247, baseType: !74, size: 8, offset: 112)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1035, file: !6, line: 247, baseType: !74, size: 8, offset: 120)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1035, file: !6, line: 247, baseType: !703, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1035, file: !6, line: 247, baseType: !35, size: 32, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1035, file: !6, line: 247, baseType: !35, size: 32, offset: 224)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1035, file: !6, line: 247, baseType: !35, size: 32, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1035, file: !6, line: 247, baseType: !74, size: 8, offset: 288)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1035, file: !6, line: 247, baseType: !74, size: 8, offset: 296)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1035, file: !6, line: 247, baseType: !707, size: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !1035, file: !6, line: 248, baseType: !707, size: 64, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !708, file: !6, line: 388, baseType: !1054, size: 448)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 251, size: 448, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1054, file: !6, line: 252, baseType: !707, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1054, file: !6, line: 252, baseType: !74, size: 8, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1054, file: !6, line: 252, baseType: !74, size: 8, offset: 72)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1054, file: !6, line: 252, baseType: !133, size: 16, offset: 80)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !6, line: 252, baseType: !74, size: 8, offset: 96)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1054, file: !6, line: 252, baseType: !74, size: 8, offset: 104)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1054, file: !6, line: 252, baseType: !74, size: 8, offset: 112)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1054, file: !6, line: 252, baseType: !74, size: 8, offset: 120)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1054, file: !6, line: 252, baseType: !703, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1054, file: !6, line: 252, baseType: !35, size: 32, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1054, file: !6, line: 252, baseType: !35, size: 32, offset: 224)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1054, file: !6, line: 252, baseType: !35, size: 32, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1054, file: !6, line: 252, baseType: !74, size: 8, offset: 288)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1054, file: !6, line: 252, baseType: !74, size: 8, offset: 296)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !1054, file: !6, line: 257, baseType: !707, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !1054, file: !6, line: 258, baseType: !707, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !708, file: !6, line: 389, baseType: !1073, size: 512)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 274, size: 512, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1087, !1088}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1073, file: !6, line: 275, baseType: !707, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1073, file: !6, line: 275, baseType: !74, size: 8, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1073, file: !6, line: 275, baseType: !74, size: 8, offset: 72)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1073, file: !6, line: 275, baseType: !133, size: 16, offset: 80)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1073, file: !6, line: 275, baseType: !74, size: 8, offset: 96)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1073, file: !6, line: 275, baseType: !703, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !1073, file: !6, line: 276, baseType: !35, size: 32, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1073, file: !6, line: 277, baseType: !1083, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !34, line: 1061, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !77, !35, !43}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1073, file: !6, line: 278, baseType: !43, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1073, file: !6, line: 279, baseType: !857, size: 128, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !708, file: !6, line: 390, baseType: !1090, size: 576)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 282, size: 576, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1105, !1106, !1107, !1108, !1114, !1115}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1090, file: !6, line: 283, baseType: !707, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1090, file: !6, line: 283, baseType: !74, size: 8, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1090, file: !6, line: 283, baseType: !74, size: 8, offset: 72)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1090, file: !6, line: 283, baseType: !133, size: 16, offset: 80)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1090, file: !6, line: 283, baseType: !74, size: 8, offset: 96)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1090, file: !6, line: 283, baseType: !74, size: 8, offset: 104)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !1090, file: !6, line: 284, baseType: !74, size: 8, offset: 112)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1090, file: !6, line: 285, baseType: !1100, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !34, line: 1093, baseType: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!33, !35, !845, !35, !1104, !43, !43}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1090, file: !6, line: 286, baseType: !703, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1090, file: !6, line: 287, baseType: !43, size: 64, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !1090, file: !6, line: 288, baseType: !43, size: 64, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1090, file: !6, line: 289, baseType: !1109, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !34, line: 1126, baseType: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!33, !77, !35, !43, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !1090, file: !6, line: 290, baseType: !707, size: 64, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1090, file: !6, line: 291, baseType: !707, size: 64, offset: 512)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !708, file: !6, line: 391, baseType: !1117, size: 512)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 309, size: 512, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1117, file: !6, line: 310, baseType: !707, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1117, file: !6, line: 310, baseType: !74, size: 8, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1117, file: !6, line: 310, baseType: !74, size: 8, offset: 72)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1117, file: !6, line: 310, baseType: !133, size: 16, offset: 80)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1117, file: !6, line: 310, baseType: !74, size: 8, offset: 96)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1117, file: !6, line: 310, baseType: !74, size: 8, offset: 104)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !1117, file: !6, line: 311, baseType: !74, size: 8, offset: 112)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !1117, file: !6, line: 312, baseType: !74, size: 8, offset: 120)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1117, file: !6, line: 313, baseType: !43, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1117, file: !6, line: 314, baseType: !703, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !1117, file: !6, line: 315, baseType: !764, size: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !1117, file: !6, line: 316, baseType: !73, size: 64, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1117, file: !6, line: 317, baseType: !73, size: 64, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1117, file: !6, line: 318, baseType: !35, size: 32, offset: 448)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !708, file: !6, line: 392, baseType: !1134, size: 448)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 342, size: 448, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1134, file: !6, line: 343, baseType: !707, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1134, file: !6, line: 343, baseType: !74, size: 8, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1134, file: !6, line: 343, baseType: !74, size: 8, offset: 72)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1134, file: !6, line: 343, baseType: !133, size: 16, offset: 80)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1134, file: !6, line: 343, baseType: !74, size: 8, offset: 96)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !1134, file: !6, line: 343, baseType: !703, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !1134, file: !6, line: 344, baseType: !703, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !1134, file: !6, line: 345, baseType: !43, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1134, file: !6, line: 346, baseType: !73, size: 64, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1134, file: !6, line: 347, baseType: !35, size: 32, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !708, file: !6, line: 393, baseType: !1147, size: 256)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 352, size: 256, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1159}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1147, file: !6, line: 353, baseType: !707, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1147, file: !6, line: 353, baseType: !74, size: 8, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1147, file: !6, line: 353, baseType: !74, size: 8, offset: 72)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1147, file: !6, line: 353, baseType: !133, size: 16, offset: 80)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1147, file: !6, line: 353, baseType: !74, size: 8, offset: 96)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1147, file: !6, line: 353, baseType: !1155, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !34, line: 1064, baseType: !1156)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !77, !43}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1147, file: !6, line: 354, baseType: !43, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !708, file: !6, line: 394, baseType: !1161, size: 192)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 359, size: 192, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1161, file: !6, line: 360, baseType: !707, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1161, file: !6, line: 360, baseType: !74, size: 8, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1161, file: !6, line: 360, baseType: !74, size: 8, offset: 72)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1161, file: !6, line: 360, baseType: !133, size: 16, offset: 80)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1161, file: !6, line: 360, baseType: !74, size: 8, offset: 96)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1161, file: !6, line: 360, baseType: !707, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !708, file: !6, line: 401, baseType: !704, size: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !704, file: !682, line: 135, baseType: !74, size: 8, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !682, line: 136, baseType: !74, size: 8, offset: 72)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !682, line: 137, baseType: !133, size: 16, offset: 80)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !704, file: !682, line: 138, baseType: !1174, size: 32, offset: 96)
!1174 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !1175, line: 328, size: 32, elements: !1176)
!1175 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1174, file: !1175, line: 329, baseType: !35, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !1174, file: !1175, line: 330, baseType: !56, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !704, file: !682, line: 139, baseType: !703, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !704, file: !682, line: 140, baseType: !703, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !704, file: !682, line: 141, baseType: !703, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !704, file: !682, line: 142, baseType: !666, size: 16, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !694, file: !682, line: 845, baseType: !1184, size: 64, offset: 320)
!1184 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !682, line: 732, size: 64, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1184, file: !682, line: 733, baseType: !40, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1184, file: !682, line: 734, baseType: !35, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1184, file: !682, line: 735, baseType: !288, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1184, file: !682, line: 736, baseType: !73, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1184, file: !682, line: 737, baseType: !288, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1184, file: !682, line: 738, baseType: !690, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !694, file: !682, line: 845, baseType: !74, size: 8, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !691, file: !682, line: 893, baseType: !1194, size: 640)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !682, line: 851, size: 640, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1194, file: !682, line: 852, baseType: !690, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1194, file: !682, line: 852, baseType: !74, size: 8, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1194, file: !682, line: 852, baseType: !74, size: 8, offset: 72)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1194, file: !682, line: 852, baseType: !133, size: 16, offset: 80)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1194, file: !682, line: 852, baseType: !73, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1194, file: !682, line: 852, baseType: !690, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1194, file: !682, line: 852, baseType: !703, size: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1194, file: !682, line: 852, baseType: !1184, size: 64, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1194, file: !682, line: 852, baseType: !74, size: 8, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1194, file: !682, line: 852, baseType: !288, size: 64, offset: 448)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1194, file: !682, line: 853, baseType: !73, size: 64, offset: 512)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1194, file: !682, line: 854, baseType: !35, size: 32, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1194, file: !682, line: 855, baseType: !35, size: 32, offset: 608)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !691, file: !682, line: 894, baseType: !1210, size: 1600)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !682, line: 862, size: 1600, elements: !1211)
!1211 = !{!1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1210, file: !682, line: 863, baseType: !690, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1210, file: !682, line: 863, baseType: !74, size: 8, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1210, file: !682, line: 863, baseType: !74, size: 8, offset: 72)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1210, file: !682, line: 863, baseType: !133, size: 16, offset: 80)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1210, file: !682, line: 863, baseType: !73, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1210, file: !682, line: 863, baseType: !690, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1210, file: !682, line: 863, baseType: !703, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1210, file: !682, line: 863, baseType: !1184, size: 64, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1210, file: !682, line: 863, baseType: !74, size: 8, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1210, file: !682, line: 863, baseType: !690, size: 64, offset: 448)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !1210, file: !682, line: 864, baseType: !690, size: 64, offset: 512)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1210, file: !682, line: 865, baseType: !288, size: 64, offset: 576)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !1210, file: !682, line: 866, baseType: !74, size: 8, offset: 640)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !1210, file: !682, line: 867, baseType: !288, size: 64, offset: 704)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !1210, file: !682, line: 868, baseType: !288, size: 64, offset: 768)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !1210, file: !682, line: 869, baseType: !288, size: 64, offset: 832)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !1210, file: !682, line: 870, baseType: !56, size: 32, offset: 896)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !1210, file: !682, line: 871, baseType: !35, size: 32, offset: 928)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !1210, file: !682, line: 872, baseType: !35, size: 32, offset: 960)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !1210, file: !682, line: 873, baseType: !35, size: 32, offset: 992)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !1210, file: !682, line: 874, baseType: !35, size: 32, offset: 1024)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !1210, file: !682, line: 875, baseType: !35, size: 32, offset: 1056)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !1210, file: !682, line: 876, baseType: !35, size: 32, offset: 1088)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !1210, file: !682, line: 877, baseType: !35, size: 32, offset: 1120)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !1210, file: !682, line: 878, baseType: !35, size: 32, offset: 1152)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1210, file: !682, line: 879, baseType: !35, size: 32, offset: 1184)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !1210, file: !682, line: 880, baseType: !35, size: 32, offset: 1216)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !1210, file: !682, line: 881, baseType: !35, size: 32, offset: 1248)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !1210, file: !682, line: 882, baseType: !35, size: 32, offset: 1280)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !1210, file: !682, line: 883, baseType: !35, size: 32, offset: 1312)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !1210, file: !682, line: 884, baseType: !133, size: 16, offset: 1344)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !1210, file: !682, line: 885, baseType: !74, size: 8, offset: 1360)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !1210, file: !682, line: 886, baseType: !74, size: 8, offset: 1368)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !1210, file: !682, line: 887, baseType: !74, size: 8, offset: 1376)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !1210, file: !682, line: 888, baseType: !1247, size: 160, offset: 1384)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 160, elements: !1248)
!1248 = !{!1249}
!1249 = !DISubrange(count: 20)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !681, file: !682, line: 916, baseType: !703, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !681, file: !682, line: 917, baseType: !1252, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !682, line: 679, size: 640, elements: !1254)
!1254 = !{!1255, !1263, !1276, !1285, !1294, !1307, !1321, !1322, !1334}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1253, file: !682, line: 680, baseType: !1256, size: 128)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !682, line: 575, size: 128, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1256, file: !682, line: 576, baseType: !43, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1256, file: !682, line: 576, baseType: !74, size: 8, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1256, file: !682, line: 576, baseType: !74, size: 8, offset: 72)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1256, file: !682, line: 576, baseType: !133, size: 16, offset: 80)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1256, file: !682, line: 576, baseType: !133, size: 16, offset: 96)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1253, file: !682, line: 681, baseType: !1264, size: 384)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !682, line: 604, size: 384, elements: !1265)
!1265 = !{!1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1264, file: !682, line: 605, baseType: !43, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1264, file: !682, line: 605, baseType: !74, size: 8, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1264, file: !682, line: 605, baseType: !74, size: 8, offset: 72)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1264, file: !682, line: 605, baseType: !133, size: 16, offset: 80)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1264, file: !682, line: 605, baseType: !133, size: 16, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1264, file: !682, line: 606, baseType: !133, size: 16, offset: 112)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !1264, file: !682, line: 607, baseType: !690, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !1264, file: !682, line: 608, baseType: !73, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !1264, file: !682, line: 609, baseType: !73, size: 64, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !1264, file: !682, line: 610, baseType: !40, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1253, file: !682, line: 682, baseType: !1277, size: 192)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !682, line: 582, size: 192, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1277, file: !682, line: 583, baseType: !43, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1277, file: !682, line: 583, baseType: !74, size: 8, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !682, line: 583, baseType: !74, size: 8, offset: 72)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1277, file: !682, line: 583, baseType: !133, size: 16, offset: 80)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1277, file: !682, line: 583, baseType: !133, size: 16, offset: 96)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1277, file: !682, line: 584, baseType: !707, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !1253, file: !682, line: 683, baseType: !1286, size: 192)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !682, line: 616, size: 192, elements: !1287)
!1287 = !{!1288, !1289, !1290, !1291, !1292, !1293}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1286, file: !682, line: 617, baseType: !43, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1286, file: !682, line: 617, baseType: !74, size: 8, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1286, file: !682, line: 617, baseType: !74, size: 8, offset: 72)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1286, file: !682, line: 617, baseType: !133, size: 16, offset: 80)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1286, file: !682, line: 617, baseType: !133, size: 16, offset: 96)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1286, file: !682, line: 618, baseType: !703, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !1253, file: !682, line: 684, baseType: !1295, size: 448)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !682, line: 621, size: 448, elements: !1296)
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1295, file: !682, line: 622, baseType: !43, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1295, file: !682, line: 622, baseType: !74, size: 8, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1295, file: !682, line: 622, baseType: !74, size: 8, offset: 72)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1295, file: !682, line: 622, baseType: !133, size: 16, offset: 80)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1295, file: !682, line: 622, baseType: !133, size: 16, offset: 96)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !1295, file: !682, line: 623, baseType: !35, size: 32, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1295, file: !682, line: 624, baseType: !690, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1295, file: !682, line: 625, baseType: !73, size: 64, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !1295, file: !682, line: 626, baseType: !73, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !1295, file: !682, line: 627, baseType: !35, size: 32, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !1253, file: !682, line: 685, baseType: !1308, size: 512)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !682, line: 590, size: 512, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1308, file: !682, line: 591, baseType: !43, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1308, file: !682, line: 591, baseType: !74, size: 8, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1308, file: !682, line: 591, baseType: !74, size: 8, offset: 72)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1308, file: !682, line: 591, baseType: !133, size: 16, offset: 80)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1308, file: !682, line: 591, baseType: !133, size: 16, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1308, file: !682, line: 592, baseType: !35, size: 32, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !1308, file: !682, line: 593, baseType: !707, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !1308, file: !682, line: 594, baseType: !707, size: 64, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !1308, file: !682, line: 595, baseType: !654, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !1308, file: !682, line: 596, baseType: !43, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !1308, file: !682, line: 597, baseType: !35, size: 32, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1253, file: !682, line: 686, baseType: !817, size: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !1253, file: !682, line: 687, baseType: !1323, size: 640)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !682, line: 646, size: 640, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1323, file: !682, line: 647, baseType: !43, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1323, file: !682, line: 647, baseType: !74, size: 8, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1323, file: !682, line: 647, baseType: !74, size: 8, offset: 72)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1323, file: !682, line: 647, baseType: !133, size: 16, offset: 80)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1323, file: !682, line: 647, baseType: !133, size: 16, offset: 96)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1323, file: !682, line: 648, baseType: !1331, size: 512, offset: 128)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 512, elements: !1332)
!1332 = !{!1333}
!1333 = !DISubrange(count: 8)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1253, file: !682, line: 688, baseType: !1335, size: 320)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !682, line: 669, size: 320, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1335, file: !682, line: 670, baseType: !43, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1335, file: !682, line: 670, baseType: !74, size: 8, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1335, file: !682, line: 670, baseType: !74, size: 8, offset: 72)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1335, file: !682, line: 670, baseType: !133, size: 16, offset: 80)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1335, file: !682, line: 670, baseType: !133, size: 16, offset: 96)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !1335, file: !682, line: 671, baseType: !74, size: 8, offset: 112)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1335, file: !682, line: 672, baseType: !703, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !1335, file: !682, line: 673, baseType: !707, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1335, file: !682, line: 674, baseType: !1346, size: 64, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !682, line: 660, size: 128, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1347, file: !682, line: 661, baseType: !1083, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1347, file: !682, line: 662, baseType: !43, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !681, file: !682, line: 918, baseType: !690, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !681, file: !682, line: 919, baseType: !35, size: 32, offset: 576)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !655, file: !656, line: 61, baseType: !35, size: 32, offset: 1088)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !655, file: !656, line: 62, baseType: !35, size: 32, offset: 1120)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !655, file: !656, line: 63, baseType: !133, size: 16, offset: 1152)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !655, file: !656, line: 64, baseType: !74, size: 8, offset: 1168)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !655, file: !656, line: 66, baseType: !1358, size: 2688, offset: 1216)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 2688, elements: !1359)
!1359 = !{!1360}
!1360 = !DISubrange(count: 7)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !655, file: !656, line: 67, baseType: !1362, size: 3072, offset: 3904)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 3072, elements: !1332)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !655, file: !656, line: 68, baseType: !1364, size: 576, offset: 6976)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 576, elements: !119)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !655, file: !656, line: 69, baseType: !764, size: 64, offset: 7552)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !655, file: !656, line: 71, baseType: !73, size: 64, offset: 7616)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !655, file: !656, line: 72, baseType: !764, size: 64, offset: 7680)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !655, file: !656, line: 73, baseType: !1252, size: 64, offset: 7744)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !655, file: !656, line: 74, baseType: !703, size: 64, offset: 7808)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !655, file: !656, line: 75, baseType: !707, size: 64, offset: 7872)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !655, file: !656, line: 76, baseType: !703, size: 64, offset: 7936)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !655, file: !656, line: 77, baseType: !690, size: 64, offset: 8000)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !655, file: !656, line: 78, baseType: !707, size: 64, offset: 8064)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !655, file: !656, line: 79, baseType: !703, size: 64, offset: 8128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !655, file: !656, line: 80, baseType: !288, size: 64, offset: 8192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !655, file: !656, line: 81, baseType: !690, size: 64, offset: 8256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !655, file: !656, line: 82, baseType: !1378, size: 64, offset: 8320)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !682, line: 718, size: 128, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !1380, file: !682, line: 722, baseType: !35, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !1380, file: !682, line: 723, baseType: !35, size: 32, offset: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1380, file: !682, line: 724, baseType: !133, size: 16, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1380, file: !682, line: 725, baseType: !74, size: 8, offset: 80)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1380, file: !682, line: 726, baseType: !74, size: 8, offset: 88)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1380, file: !682, line: 727, baseType: !74, size: 8, offset: 96)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !655, file: !656, line: 83, baseType: !690, size: 64, offset: 8384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !655, file: !656, line: 84, baseType: !707, size: 64, offset: 8448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !655, file: !656, line: 85, baseType: !1252, size: 64, offset: 8512)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !655, file: !656, line: 86, baseType: !707, size: 64, offset: 8576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !655, file: !656, line: 87, baseType: !1252, size: 64, offset: 8640)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !655, file: !656, line: 88, baseType: !690, size: 64, offset: 8704)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !655, file: !656, line: 89, baseType: !690, size: 64, offset: 8768)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !655, file: !656, line: 90, baseType: !816, size: 64, offset: 8832)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !655, file: !656, line: 91, baseType: !1397, size: 64, offset: 8896)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !682, line: 652, baseType: !1398)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!33, !654, !1401}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !655, file: !656, line: 92, baseType: !1403, size: 64, offset: 8960)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !682, line: 656, baseType: !796)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_aml_callback", file: !651, line: 123, baseType: !1405)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!33, !73, !35, !35, !74, !1113}
!1408 = distinct !DISubprogram(name: "acpi_os_free", scope: !625, file: !625, line: 60, type: !1409, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1411)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{null, !43}
!1411 = !{!1412}
!1412 = !DILocalVariable(name: "memory", arg: 1, scope: !1408, file: !625, line: 60, type: !43)
!1413 = !DILocation(line: 60, column: 39, scope: !1408)
!1414 = !DILocation(line: 62, column: 8, scope: !1408)
!1415 = !DILocation(line: 62, column: 2, scope: !1408)
!1416 = !DILocation(line: 63, column: 1, scope: !1408)
!1417 = distinct !DISubprogram(name: "acpi_rs_create_resource_list", scope: !3, file: !3, line: 103, type: !1418, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1425)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!33, !707, !1420}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !34, line: 978, size: 128, elements: !1422)
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1421, file: !34, line: 979, baseType: !39, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1421, file: !34, line: 980, baseType: !43, size: 64, offset: 64)
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432}
!1426 = !DILocalVariable(name: "aml_buffer", arg: 1, scope: !1417, file: !3, line: 103, type: !707)
!1427 = !DILocalVariable(name: "output_buffer", arg: 2, scope: !1417, file: !3, line: 104, type: !1420)
!1428 = !DILocalVariable(name: "status", scope: !1417, file: !3, line: 107, type: !33)
!1429 = !DILocalVariable(name: "aml_start", scope: !1417, file: !3, line: 108, type: !73)
!1430 = !DILocalVariable(name: "list_size_needed", scope: !1417, file: !3, line: 109, type: !39)
!1431 = !DILocalVariable(name: "aml_buffer_length", scope: !1417, file: !3, line: 110, type: !35)
!1432 = !DILocalVariable(name: "resource", scope: !1417, file: !3, line: 111, type: !43)
!1433 = !DILocation(line: 103, column: 57, scope: !1417)
!1434 = !DILocation(line: 104, column: 29, scope: !1417)
!1435 = !DILocation(line: 107, column: 2, scope: !1417)
!1436 = !DILocation(line: 107, column: 14, scope: !1417)
!1437 = !DILocation(line: 108, column: 2, scope: !1417)
!1438 = !DILocation(line: 108, column: 6, scope: !1417)
!1439 = !DILocation(line: 109, column: 2, scope: !1417)
!1440 = !DILocation(line: 109, column: 12, scope: !1417)
!1441 = !DILocation(line: 110, column: 2, scope: !1417)
!1442 = !DILocation(line: 110, column: 6, scope: !1417)
!1443 = !DILocation(line: 111, column: 2, scope: !1417)
!1444 = !DILocation(line: 111, column: 8, scope: !1417)
!1445 = !DILocation(line: 119, column: 22, scope: !1417)
!1446 = !DILocation(line: 119, column: 41, scope: !1417)
!1447 = !DILocation(line: 119, column: 20, scope: !1417)
!1448 = !DILocation(line: 120, column: 14, scope: !1417)
!1449 = !DILocation(line: 120, column: 33, scope: !1417)
!1450 = !DILocation(line: 120, column: 12, scope: !1417)
!1451 = !DILocation(line: 126, column: 35, scope: !1417)
!1452 = !DILocation(line: 126, column: 46, scope: !1417)
!1453 = !DILocation(line: 126, column: 11, scope: !1417)
!1454 = !DILocation(line: 126, column: 9, scope: !1417)
!1455 = !DILocation(line: 131, column: 6, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 131, column: 6)
!1457 = !DILocation(line: 131, column: 6, scope: !1417)
!1458 = !DILocation(line: 132, column: 3, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 131, column: 28)
!1460 = !DILocation(line: 137, column: 37, scope: !1417)
!1461 = !DILocation(line: 137, column: 52, scope: !1417)
!1462 = !DILocation(line: 137, column: 11, scope: !1417)
!1463 = !DILocation(line: 137, column: 9, scope: !1417)
!1464 = !DILocation(line: 138, column: 6, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 138, column: 6)
!1466 = !DILocation(line: 138, column: 6, scope: !1417)
!1467 = !DILocation(line: 139, column: 3, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 138, column: 28)
!1469 = !DILocation(line: 144, column: 13, scope: !1417)
!1470 = !DILocation(line: 144, column: 28, scope: !1417)
!1471 = !DILocation(line: 144, column: 11, scope: !1417)
!1472 = !DILocation(line: 145, column: 44, scope: !1417)
!1473 = !DILocation(line: 145, column: 55, scope: !1417)
!1474 = !DILocation(line: 145, column: 11, scope: !1417)
!1475 = !DILocation(line: 145, column: 9, scope: !1417)
!1476 = !DILocation(line: 148, column: 6, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 148, column: 6)
!1478 = !DILocation(line: 148, column: 6, scope: !1417)
!1479 = !DILocation(line: 149, column: 3, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 148, column: 28)
!1481 = !DILocation(line: 154, column: 2, scope: !1417)
!1482 = !DILocation(line: 155, column: 1, scope: !1417)
!1483 = !DISubprogram(name: "acpi_ut_initialize_buffer", scope: !651, file: !651, line: 660, type: !1484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!33, !1420, !39}
!1486 = distinct !DISubprogram(name: "acpi_rs_create_pci_routing_table", scope: !3, file: !3, line: 179, type: !1418, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1487)
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500}
!1488 = !DILocalVariable(name: "package_object", arg: 1, scope: !1486, file: !3, line: 179, type: !707)
!1489 = !DILocalVariable(name: "output_buffer", arg: 2, scope: !1486, file: !3, line: 180, type: !1420)
!1490 = !DILocalVariable(name: "buffer", scope: !1486, file: !3, line: 182, type: !73)
!1491 = !DILocalVariable(name: "top_object_list", scope: !1486, file: !3, line: 183, type: !764)
!1492 = !DILocalVariable(name: "sub_object_list", scope: !1486, file: !3, line: 184, type: !764)
!1493 = !DILocalVariable(name: "obj_desc", scope: !1486, file: !3, line: 185, type: !707)
!1494 = !DILocalVariable(name: "buffer_size_needed", scope: !1486, file: !3, line: 186, type: !39)
!1495 = !DILocalVariable(name: "number_of_elements", scope: !1486, file: !3, line: 187, type: !35)
!1496 = !DILocalVariable(name: "index", scope: !1486, file: !3, line: 188, type: !35)
!1497 = !DILocalVariable(name: "user_prt", scope: !1486, file: !3, line: 189, type: !44)
!1498 = !DILocalVariable(name: "node", scope: !1486, file: !3, line: 190, type: !703)
!1499 = !DILocalVariable(name: "status", scope: !1486, file: !3, line: 191, type: !33)
!1500 = !DILocalVariable(name: "path_buffer", scope: !1486, file: !3, line: 192, type: !1421)
!1501 = !DILocation(line: 179, column: 61, scope: !1486)
!1502 = !DILocation(line: 180, column: 26, scope: !1486)
!1503 = !DILocation(line: 182, column: 2, scope: !1486)
!1504 = !DILocation(line: 182, column: 6, scope: !1486)
!1505 = !DILocation(line: 183, column: 2, scope: !1486)
!1506 = !DILocation(line: 183, column: 30, scope: !1486)
!1507 = !DILocation(line: 184, column: 2, scope: !1486)
!1508 = !DILocation(line: 184, column: 30, scope: !1486)
!1509 = !DILocation(line: 185, column: 2, scope: !1486)
!1510 = !DILocation(line: 185, column: 29, scope: !1486)
!1511 = !DILocation(line: 186, column: 2, scope: !1486)
!1512 = !DILocation(line: 186, column: 12, scope: !1486)
!1513 = !DILocation(line: 187, column: 2, scope: !1486)
!1514 = !DILocation(line: 187, column: 6, scope: !1486)
!1515 = !DILocation(line: 188, column: 2, scope: !1486)
!1516 = !DILocation(line: 188, column: 6, scope: !1486)
!1517 = !DILocation(line: 189, column: 2, scope: !1486)
!1518 = !DILocation(line: 189, column: 33, scope: !1486)
!1519 = !DILocation(line: 190, column: 2, scope: !1486)
!1520 = !DILocation(line: 190, column: 30, scope: !1486)
!1521 = !DILocation(line: 191, column: 2, scope: !1486)
!1522 = !DILocation(line: 191, column: 14, scope: !1486)
!1523 = !DILocation(line: 192, column: 2, scope: !1486)
!1524 = !DILocation(line: 192, column: 21, scope: !1486)
!1525 = !DILocation(line: 201, column: 43, scope: !1486)
!1526 = !DILocation(line: 201, column: 6, scope: !1486)
!1527 = !DILocation(line: 200, column: 9, scope: !1486)
!1528 = !DILocation(line: 203, column: 6, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 203, column: 6)
!1530 = !DILocation(line: 203, column: 6, scope: !1486)
!1531 = !DILocation(line: 204, column: 3, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 203, column: 28)
!1533 = !DILocation(line: 212, column: 37, scope: !1486)
!1534 = !DILocation(line: 212, column: 52, scope: !1486)
!1535 = !DILocation(line: 212, column: 11, scope: !1486)
!1536 = !DILocation(line: 212, column: 9, scope: !1486)
!1537 = !DILocation(line: 213, column: 6, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 213, column: 6)
!1539 = !DILocation(line: 213, column: 6, scope: !1486)
!1540 = !DILocation(line: 214, column: 3, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 213, column: 28)
!1542 = !DILocation(line: 222, column: 20, scope: !1486)
!1543 = !DILocation(line: 222, column: 44, scope: !1486)
!1544 = !DILocation(line: 222, column: 18, scope: !1486)
!1545 = !DILocation(line: 223, column: 23, scope: !1486)
!1546 = !DILocation(line: 223, column: 47, scope: !1486)
!1547 = !DILocation(line: 223, column: 21, scope: !1486)
!1548 = !DILocation(line: 224, column: 11, scope: !1486)
!1549 = !DILocation(line: 224, column: 26, scope: !1486)
!1550 = !DILocation(line: 224, column: 9, scope: !1486)
!1551 = !DILocation(line: 225, column: 13, scope: !1486)
!1552 = !DILocation(line: 225, column: 11, scope: !1486)
!1553 = !DILocation(line: 227, column: 13, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 227, column: 2)
!1555 = !DILocation(line: 227, column: 7, scope: !1554)
!1556 = !DILocation(line: 227, column: 18, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 227, column: 2)
!1558 = !DILocation(line: 227, column: 26, scope: !1557)
!1559 = !DILocation(line: 227, column: 24, scope: !1557)
!1560 = !DILocation(line: 227, column: 2, scope: !1554)
!1561 = !DILocation(line: 235, column: 13, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 227, column: 55)
!1563 = !DILocation(line: 235, column: 23, scope: !1562)
!1564 = !DILocation(line: 235, column: 10, scope: !1562)
!1565 = !DILocation(line: 236, column: 14, scope: !1562)
!1566 = !DILocation(line: 236, column: 12, scope: !1562)
!1567 = !DILocation(line: 243, column: 3, scope: !1562)
!1568 = !DILocation(line: 243, column: 13, scope: !1562)
!1569 = !DILocation(line: 243, column: 20, scope: !1562)
!1570 = !DILocation(line: 247, column: 9, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 247, column: 7)
!1572 = !DILocation(line: 247, column: 8, scope: !1571)
!1573 = !DILocation(line: 247, column: 35, scope: !1571)
!1574 = !DILocation(line: 247, column: 41, scope: !1571)
!1575 = !DILocation(line: 247, column: 7, scope: !1562)
!1576 = !DILocation(line: 248, column: 4, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 247, column: 47)
!1578 = !DILocation(line: 251, column: 4, scope: !1577)
!1579 = !DILocation(line: 259, column: 23, scope: !1562)
!1580 = !DILocation(line: 259, column: 22, scope: !1562)
!1581 = !DILocation(line: 259, column: 49, scope: !1562)
!1582 = !DILocation(line: 259, column: 19, scope: !1562)
!1583 = !DILocation(line: 263, column: 14, scope: !1562)
!1584 = !DILocation(line: 263, column: 12, scope: !1562)
!1585 = !DILocation(line: 264, column: 8, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 264, column: 7)
!1587 = !DILocation(line: 264, column: 17, scope: !1586)
!1588 = !DILocation(line: 264, column: 20, scope: !1586)
!1589 = !DILocation(line: 264, column: 37, scope: !1586)
!1590 = !DILocation(line: 264, column: 42, scope: !1586)
!1591 = !DILocation(line: 264, column: 7, scope: !1562)
!1592 = !DILocation(line: 265, column: 4, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 264, column: 64)
!1594 = !DILocation(line: 269, column: 4, scope: !1593)
!1595 = !DILocation(line: 272, column: 23, scope: !1562)
!1596 = !DILocation(line: 272, column: 41, scope: !1562)
!1597 = !DILocation(line: 272, column: 3, scope: !1562)
!1598 = !DILocation(line: 272, column: 13, scope: !1562)
!1599 = !DILocation(line: 272, column: 21, scope: !1562)
!1600 = !DILocation(line: 276, column: 14, scope: !1562)
!1601 = !DILocation(line: 276, column: 12, scope: !1562)
!1602 = !DILocation(line: 277, column: 8, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 277, column: 7)
!1604 = !DILocation(line: 277, column: 17, scope: !1603)
!1605 = !DILocation(line: 277, column: 20, scope: !1603)
!1606 = !DILocation(line: 277, column: 37, scope: !1603)
!1607 = !DILocation(line: 277, column: 42, scope: !1603)
!1608 = !DILocation(line: 277, column: 7, scope: !1562)
!1609 = !DILocation(line: 278, column: 4, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 277, column: 64)
!1611 = !DILocation(line: 282, column: 4, scope: !1610)
!1612 = !DILocation(line: 285, column: 25, scope: !1562)
!1613 = !DILocation(line: 285, column: 43, scope: !1562)
!1614 = !DILocation(line: 285, column: 19, scope: !1562)
!1615 = !DILocation(line: 285, column: 3, scope: !1562)
!1616 = !DILocation(line: 285, column: 13, scope: !1562)
!1617 = !DILocation(line: 285, column: 17, scope: !1562)
!1618 = !DILocation(line: 291, column: 14, scope: !1562)
!1619 = !DILocation(line: 291, column: 12, scope: !1562)
!1620 = !DILocation(line: 292, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 292, column: 7)
!1622 = !DILocation(line: 292, column: 7, scope: !1562)
!1623 = !DILocation(line: 293, column: 12, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 292, column: 17)
!1625 = !DILocation(line: 293, column: 29, scope: !1624)
!1626 = !DILocation(line: 293, column: 4, scope: !1624)
!1627 = !DILocation(line: 296, column: 9, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 296, column: 9)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 293, column: 35)
!1630 = !DILocation(line: 296, column: 29, scope: !1628)
!1631 = !DILocation(line: 296, column: 35, scope: !1628)
!1632 = !DILocation(line: 296, column: 9, scope: !1629)
!1633 = !DILocation(line: 298, column: 6, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 297, column: 29)
!1635 = !DILocation(line: 302, column: 6, scope: !1634)
!1636 = !DILocation(line: 305, column: 12, scope: !1629)
!1637 = !DILocation(line: 305, column: 32, scope: !1629)
!1638 = !DILocation(line: 305, column: 10, scope: !1629)
!1639 = !DILocation(line: 309, column: 26, scope: !1629)
!1640 = !DILocation(line: 309, column: 41, scope: !1629)
!1641 = !DILocation(line: 310, column: 23, scope: !1629)
!1642 = !DILocation(line: 310, column: 33, scope: !1629)
!1643 = !DILocation(line: 311, column: 16, scope: !1629)
!1644 = !DILocation(line: 311, column: 31, scope: !1629)
!1645 = !DILocation(line: 310, column: 40, scope: !1629)
!1646 = !DILocation(line: 310, column: 9, scope: !1629)
!1647 = !DILocation(line: 309, column: 48, scope: !1629)
!1648 = !DILocation(line: 309, column: 17, scope: !1629)
!1649 = !DILocation(line: 309, column: 24, scope: !1629)
!1650 = !DILocation(line: 312, column: 27, scope: !1629)
!1651 = !DILocation(line: 312, column: 37, scope: !1629)
!1652 = !DILocation(line: 312, column: 17, scope: !1629)
!1653 = !DILocation(line: 312, column: 25, scope: !1629)
!1654 = !DILocation(line: 314, column: 54, scope: !1629)
!1655 = !DILocation(line: 314, column: 14, scope: !1629)
!1656 = !DILocation(line: 314, column: 12, scope: !1629)
!1657 = !DILocation(line: 315, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 315, column: 9)
!1659 = !DILocation(line: 315, column: 9, scope: !1629)
!1660 = !DILocation(line: 316, column: 6, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 315, column: 31)
!1662 = !DILocation(line: 322, column: 21, scope: !1629)
!1663 = !DILocation(line: 322, column: 31, scope: !1629)
!1664 = !DILocation(line: 322, column: 14, scope: !1629)
!1665 = !DILocation(line: 322, column: 9, scope: !1629)
!1666 = !DILocation(line: 322, column: 39, scope: !1629)
!1667 = !DILocation(line: 321, column: 5, scope: !1629)
!1668 = !DILocation(line: 321, column: 15, scope: !1629)
!1669 = !DILocation(line: 321, column: 22, scope: !1629)
!1670 = !DILocation(line: 323, column: 5, scope: !1629)
!1671 = !DILocation(line: 327, column: 12, scope: !1629)
!1672 = !DILocation(line: 327, column: 22, scope: !1629)
!1673 = !DILocation(line: 328, column: 12, scope: !1629)
!1674 = !DILocation(line: 328, column: 29, scope: !1629)
!1675 = !DILocation(line: 327, column: 5, scope: !1629)
!1676 = !DILocation(line: 334, column: 25, scope: !1629)
!1677 = !DILocation(line: 334, column: 42, scope: !1629)
!1678 = !DILocation(line: 334, column: 49, scope: !1629)
!1679 = !DILocation(line: 334, column: 5, scope: !1629)
!1680 = !DILocation(line: 334, column: 15, scope: !1629)
!1681 = !DILocation(line: 334, column: 22, scope: !1629)
!1682 = !DILocation(line: 335, column: 5, scope: !1629)
!1683 = !DILocation(line: 344, column: 5, scope: !1629)
!1684 = !DILocation(line: 344, column: 15, scope: !1629)
!1685 = !DILocation(line: 344, column: 22, scope: !1629)
!1686 = !DILocation(line: 345, column: 5, scope: !1629)
!1687 = !DILocation(line: 349, column: 5, scope: !1629)
!1688 = !DILocation(line: 354, column: 5, scope: !1629)
!1689 = !DILocation(line: 356, column: 3, scope: !1624)
!1690 = !DILocation(line: 361, column: 13, scope: !1562)
!1691 = !DILocation(line: 361, column: 7, scope: !1562)
!1692 = !DILocation(line: 360, column: 3, scope: !1562)
!1693 = !DILocation(line: 360, column: 13, scope: !1562)
!1694 = !DILocation(line: 360, column: 20, scope: !1562)
!1695 = !DILocation(line: 365, column: 14, scope: !1562)
!1696 = !DILocation(line: 365, column: 12, scope: !1562)
!1697 = !DILocation(line: 366, column: 8, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 366, column: 7)
!1699 = !DILocation(line: 366, column: 17, scope: !1698)
!1700 = !DILocation(line: 366, column: 20, scope: !1698)
!1701 = !DILocation(line: 366, column: 37, scope: !1698)
!1702 = !DILocation(line: 366, column: 42, scope: !1698)
!1703 = !DILocation(line: 366, column: 7, scope: !1562)
!1704 = !DILocation(line: 367, column: 4, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 366, column: 64)
!1706 = !DILocation(line: 371, column: 4, scope: !1705)
!1707 = !DILocation(line: 374, column: 34, scope: !1562)
!1708 = !DILocation(line: 374, column: 52, scope: !1562)
!1709 = !DILocation(line: 374, column: 28, scope: !1562)
!1710 = !DILocation(line: 374, column: 3, scope: !1562)
!1711 = !DILocation(line: 374, column: 13, scope: !1562)
!1712 = !DILocation(line: 374, column: 26, scope: !1562)
!1713 = !DILocation(line: 378, column: 18, scope: !1562)
!1714 = !DILocation(line: 379, column: 2, scope: !1562)
!1715 = !DILocation(line: 227, column: 51, scope: !1557)
!1716 = !DILocation(line: 227, column: 2, scope: !1557)
!1717 = distinct !{!1717, !1560, !1718, !1719, !1720}
!1718 = !DILocation(line: 379, column: 2, scope: !1554)
!1719 = !{!"llvm.loop.mustprogress"}
!1720 = !{!"llvm.loop.unroll.disable"}
!1721 = !DILocation(line: 383, column: 2, scope: !1486)
!1722 = !DILocation(line: 384, column: 1, scope: !1486)
!1723 = !DISubprogram(name: "acpi_rs_get_pci_routing_table_length", scope: !620, file: !620, line: 205, type: !1724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!33, !707, !623}
!1726 = !DISubprogram(name: "acpi_error", scope: !1727, file: !1727, line: 901, type: !1728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1727 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !1730, !35, !1730, null}
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!1731 = !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !651, file: !651, line: 233, type: !1732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!1730, !707}
!1734 = !DISubprogram(name: "acpi_ns_handle_to_pathname", scope: !1735, file: !1735, line: 273, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1735 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!33, !77, !1420, !74}
!1738 = !DISubprogram(name: "strlen", scope: !1739, file: !1739, line: 128, type: !1740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1739 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!72, !1730}
!1742 = !DISubprogram(name: "strcpy", scope: !1739, file: !1739, line: 63, type: !1743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!288, !288, !1730}
!1745 = distinct !DISubprogram(name: "acpi_rs_create_aml_resources", scope: !3, file: !3, line: 404, type: !1746, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1748)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!33, !1420, !1420}
!1748 = !{!1749, !1750, !1751, !1752}
!1749 = !DILocalVariable(name: "resource_list", arg: 1, scope: !1745, file: !3, line: 404, type: !1420)
!1750 = !DILocalVariable(name: "output_buffer", arg: 2, scope: !1745, file: !3, line: 405, type: !1420)
!1751 = !DILocalVariable(name: "status", scope: !1745, file: !3, line: 407, type: !33)
!1752 = !DILocalVariable(name: "aml_size_needed", scope: !1745, file: !3, line: 408, type: !39)
!1753 = !DILocation(line: 404, column: 50, scope: !1745)
!1754 = !DILocation(line: 405, column: 29, scope: !1745)
!1755 = !DILocation(line: 407, column: 2, scope: !1745)
!1756 = !DILocation(line: 407, column: 14, scope: !1745)
!1757 = !DILocation(line: 408, column: 2, scope: !1745)
!1758 = !DILocation(line: 408, column: 12, scope: !1745)
!1759 = !DILocation(line: 420, column: 29, scope: !1745)
!1760 = !DILocation(line: 420, column: 44, scope: !1745)
!1761 = !DILocation(line: 421, column: 8, scope: !1745)
!1762 = !DILocation(line: 421, column: 23, scope: !1745)
!1763 = !DILocation(line: 420, column: 6, scope: !1745)
!1764 = !DILocation(line: 419, column: 9, scope: !1745)
!1765 = !DILocation(line: 425, column: 6, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 425, column: 6)
!1767 = !DILocation(line: 425, column: 6, scope: !1745)
!1768 = !DILocation(line: 426, column: 3, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 425, column: 28)
!1770 = !DILocation(line: 431, column: 37, scope: !1745)
!1771 = !DILocation(line: 431, column: 52, scope: !1745)
!1772 = !DILocation(line: 431, column: 11, scope: !1745)
!1773 = !DILocation(line: 431, column: 9, scope: !1745)
!1774 = !DILocation(line: 432, column: 6, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 432, column: 6)
!1776 = !DILocation(line: 432, column: 6, scope: !1745)
!1777 = !DILocation(line: 433, column: 3, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 432, column: 28)
!1779 = !DILocation(line: 438, column: 44, scope: !1745)
!1780 = !DILocation(line: 438, column: 59, scope: !1745)
!1781 = !DILocation(line: 439, column: 9, scope: !1745)
!1782 = !DILocation(line: 440, column: 9, scope: !1745)
!1783 = !DILocation(line: 440, column: 24, scope: !1745)
!1784 = !DILocation(line: 438, column: 11, scope: !1745)
!1785 = !DILocation(line: 438, column: 9, scope: !1745)
!1786 = !DILocation(line: 441, column: 6, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 441, column: 6)
!1788 = !DILocation(line: 441, column: 6, scope: !1745)
!1789 = !DILocation(line: 442, column: 3, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 441, column: 28)
!1791 = !DILocation(line: 447, column: 2, scope: !1745)
!1792 = !DILocation(line: 448, column: 1, scope: !1745)
!1793 = !DISubprogram(name: "acpi_rs_get_aml_length", scope: !620, file: !620, line: 201, type: !1794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!33, !137, !39, !623}
!1796 = !DISubprogram(name: "acpi_rs_convert_resources_to_aml", scope: !620, file: !620, line: 214, type: !1797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!33, !137, !39, !73}
!1799 = distinct !DISubprogram(name: "kzalloc", scope: !23, file: !23, line: 719, type: !1800, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1806)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!43, !1802, !78}
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 61, baseType: !1803)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1804, line: 72, baseType: !1805)
!1804 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1804, line: 16, baseType: !72)
!1806 = !{!1807, !1808}
!1807 = !DILocalVariable(name: "size", arg: 1, scope: !1799, file: !23, line: 719, type: !1802)
!1808 = !DILocalVariable(name: "flags", arg: 2, scope: !1799, file: !23, line: 719, type: !78)
!1809 = !DILocation(line: 719, column: 52, scope: !1799)
!1810 = !DILocation(line: 719, column: 64, scope: !1799)
!1811 = !DILocation(line: 721, column: 17, scope: !1799)
!1812 = !DILocation(line: 721, column: 23, scope: !1799)
!1813 = !DILocation(line: 721, column: 29, scope: !1799)
!1814 = !DILocation(line: 721, column: 9, scope: !1799)
!1815 = !DILocation(line: 721, column: 2, scope: !1799)
!1816 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1817, file: !1817, line: 65, type: !1818, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1817 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!72}
!1820 = !DILocation(line: 67, column: 9, scope: !1816)
!1821 = !DILocation(line: 67, column: 2, scope: !1816)
!1822 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1817, file: !1817, line: 120, type: !1823, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1826)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!1825, !72}
!1825 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1826 = !{!1827}
!1827 = !DILocalVariable(name: "flags", arg: 1, scope: !1822, file: !1817, line: 120, type: !72)
!1828 = !DILocation(line: 120, column: 67, scope: !1822)
!1829 = !DILocation(line: 122, column: 11, scope: !1822)
!1830 = !DILocation(line: 122, column: 17, scope: !1822)
!1831 = !DILocation(line: 122, column: 9, scope: !1822)
!1832 = !DILocation(line: 122, column: 2, scope: !1822)
!1833 = distinct !DISubprogram(name: "kmalloc", scope: !23, file: !23, line: 591, type: !1800, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1834)
!1834 = !{!1835, !1836, !1837}
!1835 = !DILocalVariable(name: "size", arg: 1, scope: !1833, file: !23, line: 591, type: !1802)
!1836 = !DILocalVariable(name: "flags", arg: 2, scope: !1833, file: !23, line: 591, type: !78)
!1837 = !DILocalVariable(name: "index", scope: !1838, file: !23, line: 594, type: !7)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !23, line: 593, column: 42)
!1839 = distinct !DILexicalBlock(scope: !1833, file: !23, line: 593, column: 6)
!1840 = !DILocation(line: 591, column: 61, scope: !1833)
!1841 = !DILocation(line: 591, column: 73, scope: !1833)
!1842 = !DILocation(line: 593, column: 27, scope: !1839)
!1843 = !DILocation(line: 593, column: 6, scope: !1839)
!1844 = !DILocation(line: 593, column: 33, scope: !1839)
!1845 = !DILocation(line: 593, column: 36, scope: !1839)
!1846 = !DILocation(line: 593, column: 6, scope: !1833)
!1847 = !DILocation(line: 594, column: 3, scope: !1838)
!1848 = !DILocation(line: 594, column: 16, scope: !1838)
!1849 = !DILocation(line: 596, column: 7, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1838, file: !23, line: 596, column: 7)
!1851 = !DILocation(line: 596, column: 12, scope: !1850)
!1852 = !DILocation(line: 596, column: 7, scope: !1838)
!1853 = !DILocation(line: 597, column: 25, scope: !1850)
!1854 = !DILocation(line: 597, column: 31, scope: !1850)
!1855 = !DILocation(line: 597, column: 11, scope: !1850)
!1856 = !DILocation(line: 597, column: 4, scope: !1850)
!1857 = !DILocation(line: 599, column: 11, scope: !1838)
!1858 = !DILocation(line: 599, column: 9, scope: !1838)
!1859 = !DILocation(line: 601, column: 33, scope: !1838)
!1860 = !DILocation(line: 601, column: 40, scope: !1838)
!1861 = !DILocation(line: 601, column: 20, scope: !1838)
!1862 = !DILocation(line: 601, column: 5, scope: !1838)
!1863 = !DILocation(line: 601, column: 51, scope: !1838)
!1864 = !DILocation(line: 602, column: 5, scope: !1838)
!1865 = !DILocation(line: 602, column: 12, scope: !1838)
!1866 = !DILocation(line: 600, column: 10, scope: !1838)
!1867 = !DILocation(line: 600, column: 3, scope: !1838)
!1868 = !DILocation(line: 603, column: 2, scope: !1839)
!1869 = !DILocation(line: 604, column: 19, scope: !1833)
!1870 = !DILocation(line: 604, column: 25, scope: !1833)
!1871 = !DILocation(line: 604, column: 9, scope: !1833)
!1872 = !DILocation(line: 604, column: 2, scope: !1833)
!1873 = !DILocation(line: 605, column: 1, scope: !1833)
!1874 = !DISubprogram(name: "kmalloc_large", scope: !23, file: !23, line: 531, type: !1800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1875 = distinct !DISubprogram(name: "__kmalloc_index", scope: !23, file: !23, line: 444, type: !1876, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1880)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!7, !1802, !1878}
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !71, line: 35, baseType: !1879)
!1879 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1880 = !{!1881, !1882}
!1881 = !DILocalVariable(name: "size", arg: 1, scope: !1875, file: !23, line: 444, type: !1802)
!1882 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1875, file: !23, line: 445, type: !1878)
!1883 = !DILocation(line: 444, column: 60, scope: !1875)
!1884 = !DILocation(line: 445, column: 16, scope: !1875)
!1885 = !DILocation(line: 447, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 447, column: 6)
!1887 = !DILocation(line: 447, column: 6, scope: !1875)
!1888 = !DILocation(line: 448, column: 3, scope: !1886)
!1889 = !DILocation(line: 450, column: 6, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 450, column: 6)
!1891 = !DILocation(line: 450, column: 11, scope: !1890)
!1892 = !DILocation(line: 450, column: 6, scope: !1875)
!1893 = !DILocation(line: 451, column: 3, scope: !1890)
!1894 = !DILocation(line: 453, column: 32, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 453, column: 6)
!1896 = !DILocation(line: 453, column: 37, scope: !1895)
!1897 = !DILocation(line: 453, column: 42, scope: !1895)
!1898 = !DILocation(line: 453, column: 45, scope: !1895)
!1899 = !DILocation(line: 453, column: 50, scope: !1895)
!1900 = !DILocation(line: 453, column: 6, scope: !1875)
!1901 = !DILocation(line: 454, column: 3, scope: !1895)
!1902 = !DILocation(line: 455, column: 32, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 455, column: 6)
!1904 = !DILocation(line: 455, column: 37, scope: !1903)
!1905 = !DILocation(line: 455, column: 43, scope: !1903)
!1906 = !DILocation(line: 455, column: 46, scope: !1903)
!1907 = !DILocation(line: 455, column: 51, scope: !1903)
!1908 = !DILocation(line: 455, column: 6, scope: !1875)
!1909 = !DILocation(line: 456, column: 3, scope: !1903)
!1910 = !DILocation(line: 457, column: 6, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 457, column: 6)
!1912 = !DILocation(line: 457, column: 11, scope: !1911)
!1913 = !DILocation(line: 457, column: 6, scope: !1875)
!1914 = !DILocation(line: 457, column: 26, scope: !1911)
!1915 = !DILocation(line: 458, column: 6, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 458, column: 6)
!1917 = !DILocation(line: 458, column: 11, scope: !1916)
!1918 = !DILocation(line: 458, column: 6, scope: !1875)
!1919 = !DILocation(line: 458, column: 26, scope: !1916)
!1920 = !DILocation(line: 459, column: 6, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 459, column: 6)
!1922 = !DILocation(line: 459, column: 11, scope: !1921)
!1923 = !DILocation(line: 459, column: 6, scope: !1875)
!1924 = !DILocation(line: 459, column: 26, scope: !1921)
!1925 = !DILocation(line: 460, column: 6, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 460, column: 6)
!1927 = !DILocation(line: 460, column: 11, scope: !1926)
!1928 = !DILocation(line: 460, column: 6, scope: !1875)
!1929 = !DILocation(line: 460, column: 26, scope: !1926)
!1930 = !DILocation(line: 461, column: 6, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 461, column: 6)
!1932 = !DILocation(line: 461, column: 11, scope: !1931)
!1933 = !DILocation(line: 461, column: 6, scope: !1875)
!1934 = !DILocation(line: 461, column: 26, scope: !1931)
!1935 = !DILocation(line: 462, column: 6, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 462, column: 6)
!1937 = !DILocation(line: 462, column: 11, scope: !1936)
!1938 = !DILocation(line: 462, column: 6, scope: !1875)
!1939 = !DILocation(line: 462, column: 26, scope: !1936)
!1940 = !DILocation(line: 463, column: 6, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 463, column: 6)
!1942 = !DILocation(line: 463, column: 11, scope: !1941)
!1943 = !DILocation(line: 463, column: 6, scope: !1875)
!1944 = !DILocation(line: 463, column: 26, scope: !1941)
!1945 = !DILocation(line: 464, column: 6, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 464, column: 6)
!1947 = !DILocation(line: 464, column: 11, scope: !1946)
!1948 = !DILocation(line: 464, column: 6, scope: !1875)
!1949 = !DILocation(line: 464, column: 26, scope: !1946)
!1950 = !DILocation(line: 465, column: 6, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 465, column: 6)
!1952 = !DILocation(line: 465, column: 11, scope: !1951)
!1953 = !DILocation(line: 465, column: 6, scope: !1875)
!1954 = !DILocation(line: 465, column: 26, scope: !1951)
!1955 = !DILocation(line: 466, column: 6, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 466, column: 6)
!1957 = !DILocation(line: 466, column: 11, scope: !1956)
!1958 = !DILocation(line: 466, column: 6, scope: !1875)
!1959 = !DILocation(line: 466, column: 26, scope: !1956)
!1960 = !DILocation(line: 467, column: 6, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 467, column: 6)
!1962 = !DILocation(line: 467, column: 11, scope: !1961)
!1963 = !DILocation(line: 467, column: 6, scope: !1875)
!1964 = !DILocation(line: 467, column: 26, scope: !1961)
!1965 = !DILocation(line: 468, column: 6, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 468, column: 6)
!1967 = !DILocation(line: 468, column: 11, scope: !1966)
!1968 = !DILocation(line: 468, column: 6, scope: !1875)
!1969 = !DILocation(line: 468, column: 26, scope: !1966)
!1970 = !DILocation(line: 469, column: 6, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 469, column: 6)
!1972 = !DILocation(line: 469, column: 11, scope: !1971)
!1973 = !DILocation(line: 469, column: 6, scope: !1875)
!1974 = !DILocation(line: 469, column: 26, scope: !1971)
!1975 = !DILocation(line: 470, column: 6, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 470, column: 6)
!1977 = !DILocation(line: 470, column: 11, scope: !1976)
!1978 = !DILocation(line: 470, column: 6, scope: !1875)
!1979 = !DILocation(line: 470, column: 26, scope: !1976)
!1980 = !DILocation(line: 471, column: 6, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 471, column: 6)
!1982 = !DILocation(line: 471, column: 11, scope: !1981)
!1983 = !DILocation(line: 471, column: 6, scope: !1875)
!1984 = !DILocation(line: 471, column: 26, scope: !1981)
!1985 = !DILocation(line: 472, column: 6, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 472, column: 6)
!1987 = !DILocation(line: 472, column: 11, scope: !1986)
!1988 = !DILocation(line: 472, column: 6, scope: !1875)
!1989 = !DILocation(line: 472, column: 26, scope: !1986)
!1990 = !DILocation(line: 473, column: 6, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 473, column: 6)
!1992 = !DILocation(line: 473, column: 11, scope: !1991)
!1993 = !DILocation(line: 473, column: 6, scope: !1875)
!1994 = !DILocation(line: 473, column: 26, scope: !1991)
!1995 = !DILocation(line: 474, column: 6, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 474, column: 6)
!1997 = !DILocation(line: 474, column: 11, scope: !1996)
!1998 = !DILocation(line: 474, column: 6, scope: !1875)
!1999 = !DILocation(line: 474, column: 27, scope: !1996)
!2000 = !DILocation(line: 475, column: 6, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 475, column: 6)
!2002 = !DILocation(line: 475, column: 11, scope: !2001)
!2003 = !DILocation(line: 475, column: 6, scope: !1875)
!2004 = !DILocation(line: 475, column: 32, scope: !2001)
!2005 = !DILocation(line: 477, column: 50, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1875, file: !23, line: 477, column: 6)
!2007 = !{i8 0, i8 2}
!2008 = !DILocation(line: 477, column: 6, scope: !1875)
!2009 = !DILocation(line: 478, column: 3, scope: !2006)
!2010 = !DILocation(line: 478, column: 3, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !23, line: 478, column: 3)
!2012 = distinct !DILexicalBlock(scope: !2006, file: !23, line: 478, column: 3)
!2013 = !{i32 -2143036190}
!2014 = !DILocation(line: 478, column: 3, scope: !2012)
!2015 = !DILocation(line: 480, column: 3, scope: !2006)
!2016 = !DILocation(line: 480, column: 3, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2006, file: !23, line: 480, column: 3)
!2018 = !DILocation(line: 480, column: 3, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2017, file: !23, line: 480, column: 3)
!2020 = !DILocation(line: 480, column: 3, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !23, line: 480, column: 3)
!2022 = !{i64 2151931309, i64 2151931338, i64 2151931384, i64 2151931442, i64 2151931496, i64 2151931550, i64 2151931605, i64 2151931636}
!2023 = !DILocation(line: 483, column: 2, scope: !1875)
!2024 = !DILocation(line: 484, column: 1, scope: !1875)
!2025 = !DISubprogram(name: "kmalloc_trace", scope: !23, file: !23, line: 525, type: !2026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!43, !2028, !78, !1802}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2030, line: 11, flags: DIFlagFwdDecl)
!2030 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2031 = distinct !DISubprogram(name: "kmalloc_type", scope: !23, file: !23, line: 401, type: !2032, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!22, !78, !72}
!2034 = !{!2035, !2036}
!2035 = !DILocalVariable(name: "flags", arg: 1, scope: !2031, file: !23, line: 401, type: !78)
!2036 = !DILocalVariable(name: "caller", arg: 2, scope: !2031, file: !23, line: 401, type: !72)
!2037 = !DILocation(line: 401, column: 67, scope: !2031)
!2038 = !DILocation(line: 401, column: 88, scope: !2031)
!2039 = !DILocation(line: 407, column: 6, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2031, file: !23, line: 407, column: 6)
!2041 = !DILocation(line: 407, column: 6, scope: !2031)
!2042 = !DILocation(line: 413, column: 3, scope: !2040)
!2043 = !DILocation(line: 423, column: 38, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2031, file: !23, line: 423, column: 6)
!2045 = !DILocation(line: 423, column: 44, scope: !2044)
!2046 = !DILocation(line: 423, column: 6, scope: !2031)
!2047 = !DILocation(line: 424, column: 3, scope: !2044)
!2048 = !DILocation(line: 426, column: 3, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2031, file: !23, line: 425, column: 6)
!2050 = !DILocation(line: 429, column: 1, scope: !2031)
!2051 = !DISubprogram(name: "__kmalloc", scope: !23, file: !23, line: 488, type: !1800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2052 = !DISubprogram(name: "__compiletime_assert_173", scope: !23, file: !23, line: 478, type: !2053, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null}
!2055 = distinct !DISubprogram(name: "native_save_fl", scope: !1817, file: !1817, line: 17, type: !1818, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2056)
!2056 = !{!2057}
!2057 = !DILocalVariable(name: "flags", scope: !2055, file: !1817, line: 19, type: !72)
!2058 = !DILocation(line: 19, column: 2, scope: !2055)
!2059 = !DILocation(line: 19, column: 16, scope: !2055)
!2060 = !DILocation(line: 26, column: 2, scope: !2055)
!2061 = !{i64 1521228, i64 1521249}
!2062 = !DILocation(line: 32, column: 9, scope: !2055)
!2063 = !DILocation(line: 33, column: 1, scope: !2055)
!2064 = !DILocation(line: 32, column: 2, scope: !2055)
!2065 = !DISubprogram(name: "kfree", scope: !23, file: !23, line: 227, type: !2066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !2068}
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
