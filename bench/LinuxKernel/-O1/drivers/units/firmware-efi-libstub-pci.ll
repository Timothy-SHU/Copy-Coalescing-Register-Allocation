; ModuleID = 'drivers/firmware/efi/libstub/pci.c'
source_filename = "drivers/firmware/efi/libstub/pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guid_t = type { [16 x i8] }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i64, i32, i64, ptr, i64, ptr, i64, i64, ptr, ptr, i64, i64 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.0 = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.2 = type { ptr, ptr, %struct.efi_pci_io_protocol_access_t, %struct.efi_pci_io_protocol_access_t, %struct.efi_pci_io_protocol_config_access_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.efi_pci_io_protocol_access_t = type { ptr, ptr }
%struct.efi_pci_io_protocol_config_access_t = type { ptr, ptr }
%struct.anon.3 = type { i32, i32, %struct.efi_pci_io_protocol_access_32_t, %struct.efi_pci_io_protocol_access_32_t, %struct.efi_pci_io_protocol_access_32_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.efi_pci_io_protocol_access_32_t = type { i32, i32 }

@__const.efi_pci_disable_bridge_busmaster.pci_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\00\B2\F5L\B8h\A5L\9E\EC\B2>?P\02\9A" }, align 4
@efi_system_table = external hidden global ptr, align 8
@.str = private unnamed_addr constant [44 x i8] c"\013ERROR: Failed to locate PCI I/O handles'\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [53 x i8] c"\013ERROR: Failed to allocate memory for 'pci_handle'\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [45 x i8] c"\013ERROR: Failed to disable PCI busmastering\0A\00", align 1, !dbg !12
@efi_is64 = external hidden constant i8, align 1

; Function Attrs: noredzone nounwind
define hidden void @efi_pci_disable_bridge_busmaster() #0 !dbg !295 {
entry:
  %pci_proto = alloca %struct.guid_t, align 4
  %pci_handle_size = alloca i64, align 8
  %pci_handle = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %status = alloca i64, align 8
  %class = alloca i16, align 2
  %command = alloca i16, align 2
  %i = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad42 = alloca [3 x i64], align 16
  %tmp46 = alloca i64, align 8
  %__pad83 = alloca [3 x i64], align 16
  %tmp87 = alloca i64, align 8
  %pci = alloca ptr, align 8
  %segment_nr = alloca i64, align 8
  %bus_nr = alloca i64, align 8
  %device_nr = alloca i64, align 8
  %func_nr = alloca i64, align 8
  %__pad137 = alloca [3 x i64], align 16
  %tmp141 = alloca i64, align 8
  %__inst = alloca ptr, align 8
  %tmp162 = alloca i64, align 8
  %__pad168 = alloca [3 x i64], align 16
  %tmp172 = alloca i64, align 8
  %__inst189 = alloca ptr, align 8
  %tmp190 = alloca i64, align 8
  %__pad197 = alloca [3 x i64], align 16
  %tmp201 = alloca i64, align 8
  %__pad231 = alloca [3 x i64], align 16
  %tmp235 = alloca i64, align 8
  %pci280 = alloca ptr, align 8
  %__pad296 = alloca [3 x i64], align 16
  %tmp300 = alloca i64, align 8
  %__inst323 = alloca ptr, align 8
  %tmp324 = alloca i64, align 8
  %__pad332 = alloca [3 x i64], align 16
  %tmp336 = alloca i64, align 8
  %__inst352 = alloca ptr, align 8
  %tmp353 = alloca i64, align 8
  %__pad361 = alloca [3 x i64], align 16
  %tmp365 = alloca i64, align 8
  %__inst383 = alloca ptr, align 8
  %tmp384 = alloca i64, align 8
  %__pad391 = alloca [3 x i64], align 16
  %tmp395 = alloca i64, align 8
  %__pad428 = alloca [3 x i64], align 16
  %tmp432 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %pci_proto) #6, !dbg !425
  call void @llvm.dbg.declare(metadata ptr %pci_proto, metadata !299, metadata !DIExpression()), !dbg !426
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %pci_proto, ptr align 4 @__const.efi_pci_disable_bridge_busmaster.pci_proto, i64 16, i1 false), !dbg !426
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_handle_size) #6, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %pci_handle_size, metadata !300, metadata !DIExpression()), !dbg !428
  store i64 0, ptr %pci_handle_size, align 8, !dbg !428
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_handle) #6, !dbg !429
  call void @llvm.dbg.declare(metadata ptr %pci_handle, metadata !301, metadata !DIExpression()), !dbg !430
  store ptr null, ptr %pci_handle, align 8, !dbg !430
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #6, !dbg !431
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !302, metadata !DIExpression()), !dbg !432
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #6, !dbg !433
  call void @llvm.dbg.declare(metadata ptr %status, metadata !303, metadata !DIExpression()), !dbg !434
  call void @llvm.lifetime.start.p0(i64 2, ptr %class) #6, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %class, metadata !304, metadata !DIExpression()), !dbg !436
  call void @llvm.lifetime.start.p0(i64 2, ptr %command) #6, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %command, metadata !305, metadata !DIExpression()), !dbg !437
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !438
  call void @llvm.dbg.declare(metadata ptr %i, metadata !306, metadata !DIExpression()), !dbg !439
  %call = call zeroext i1 @efi_is_native() #7, !dbg !440
  br i1 %call, label %cond.true, label %cond.false5, !dbg !440

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #7, !dbg !440
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !440

cond.true2:                                       ; preds = %cond.true
  %0 = load ptr, ptr @efi_system_table, align 8, !dbg !440
  %boottime = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 10, !dbg !440
  %1 = load ptr, ptr %boottime, align 8, !dbg !440
  br label %cond.end, !dbg !440

cond.false:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !440
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %2, i32 0, i32 10, !dbg !440
  %3 = load i32, ptr %boottime3, align 4, !dbg !440
  %conv = zext i32 %3 to i64, !dbg !440
  %4 = inttoptr i64 %conv to ptr, !dbg !440
  br label %cond.end, !dbg !440

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %1, %cond.true2 ], [ %4, %cond.false ], !dbg !440
  %locate_handle = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 20, !dbg !440
  %5 = load ptr, ptr %locate_handle, align 8, !dbg !440
  %call4 = call win64cc i64 %5(i32 noundef 2, ptr noundef %pci_proto, ptr noundef null, ptr noundef %pci_handle_size, ptr noundef null) #7, !dbg !440
  br label %cond.end18, !dbg !440

cond.false5:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #6, !dbg !441
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !307, metadata !DIExpression()), !dbg !441
  br label %do.body, !dbg !442

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !444

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !444

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #7, !dbg !441
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !441

cond.true8:                                       ; preds = %do.end
  %6 = load ptr, ptr @efi_system_table, align 8, !dbg !441
  %boottime9 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 10, !dbg !441
  %7 = load ptr, ptr %boottime9, align 8, !dbg !441
  br label %cond.end13, !dbg !441

cond.false10:                                     ; preds = %do.end
  %8 = load ptr, ptr @efi_system_table, align 8, !dbg !441
  %boottime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %8, i32 0, i32 10, !dbg !441
  %9 = load i32, ptr %boottime11, align 4, !dbg !441
  %conv12 = zext i32 %9 to i64, !dbg !441
  %10 = inttoptr i64 %conv12 to ptr, !dbg !441
  br label %cond.end13, !dbg !441

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %7, %cond.true8 ], [ %10, %cond.false10 ], !dbg !441
  %locate_handle15 = getelementptr inbounds %struct.anon.0, ptr %cond14, i32 0, i32 20, !dbg !441
  %11 = load i32, ptr %locate_handle15, align 4, !dbg !441
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !441
  %call16 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %11, i32 noundef 2, ptr noundef %pci_proto, ptr noundef null, ptr noundef %pci_handle_size, ptr noundef null, ptr noundef %arraydecay) #7, !dbg !441
  store i64 %call16, ptr %tmp, align 8, !dbg !441
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #6, !dbg !440
  %12 = load i64, ptr %tmp, align 8, !dbg !441
  %call17 = call i64 @__efi64_widen_efi_status(i64 noundef %12) #7, !dbg !440
  br label %cond.end18, !dbg !440

cond.end18:                                       ; preds = %cond.end13, %cond.end
  %cond19 = phi i64 [ %call4, %cond.end ], [ %call17, %cond.end13 ], !dbg !440
  store i64 %cond19, ptr %status, align 8, !dbg !446
  %13 = load i64, ptr %status, align 8, !dbg !447
  %cmp = icmp ne i64 %13, -9223372036854775803, !dbg !449
  br i1 %cmp, label %if.then, label %if.end27, !dbg !450

if.then:                                          ; preds = %cond.end18
  %14 = load i64, ptr %status, align 8, !dbg !451
  %cmp21 = icmp ne i64 %14, 0, !dbg !454
  br i1 %cmp21, label %land.lhs.true, label %if.end, !dbg !455

land.lhs.true:                                    ; preds = %if.then
  %15 = load i64, ptr %status, align 8, !dbg !456
  %cmp23 = icmp ne i64 %15, -9223372036854775794, !dbg !457
  br i1 %cmp23, label %if.then25, label %if.end, !dbg !458

if.then25:                                        ; preds = %land.lhs.true
  %call26 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str) #7, !dbg !459
  br label %if.end, !dbg !459

if.end:                                           ; preds = %if.then25, %land.lhs.true, %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup448, !dbg !460

if.end27:                                         ; preds = %cond.end18
  %call28 = call zeroext i1 @efi_is_native() #7, !dbg !461
  br i1 %call28, label %cond.true30, label %cond.false41, !dbg !461

cond.true30:                                      ; preds = %if.end27
  %call31 = call zeroext i1 @efi_is_native() #7, !dbg !461
  br i1 %call31, label %cond.true33, label %cond.false35, !dbg !461

cond.true33:                                      ; preds = %cond.true30
  %16 = load ptr, ptr @efi_system_table, align 8, !dbg !461
  %boottime34 = getelementptr inbounds %struct.anon.1, ptr %16, i32 0, i32 10, !dbg !461
  %17 = load ptr, ptr %boottime34, align 8, !dbg !461
  br label %cond.end38, !dbg !461

cond.false35:                                     ; preds = %cond.true30
  %18 = load ptr, ptr @efi_system_table, align 8, !dbg !461
  %boottime36 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %18, i32 0, i32 10, !dbg !461
  %19 = load i32, ptr %boottime36, align 4, !dbg !461
  %conv37 = zext i32 %19 to i64, !dbg !461
  %20 = inttoptr i64 %conv37 to ptr, !dbg !461
  br label %cond.end38, !dbg !461

cond.end38:                                       ; preds = %cond.false35, %cond.true33
  %cond39 = phi ptr [ %17, %cond.true33 ], [ %20, %cond.false35 ], !dbg !461
  %allocate_pool = getelementptr inbounds %struct.anon, ptr %cond39, i32 0, i32 6, !dbg !461
  %21 = load ptr, ptr %allocate_pool, align 8, !dbg !461
  %22 = load i64, ptr %pci_handle_size, align 8, !dbg !461
  %call40 = call win64cc i64 %21(i32 noundef 2, i64 noundef %22, ptr noundef %pci_handle) #7, !dbg !461
  br label %cond.end61, !dbg !461

cond.false41:                                     ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad42) #6, !dbg !462
  call void @llvm.dbg.declare(metadata ptr %__pad42, metadata !312, metadata !DIExpression()), !dbg !462
  br label %do.body43, !dbg !463

do.body43:                                        ; preds = %cond.false41
  br label %do.cond44, !dbg !465

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !465

do.end45:                                         ; preds = %do.cond44
  %call47 = call zeroext i1 @efi_is_native() #7, !dbg !462
  br i1 %call47, label %cond.true49, label %cond.false51, !dbg !462

cond.true49:                                      ; preds = %do.end45
  %23 = load ptr, ptr @efi_system_table, align 8, !dbg !462
  %boottime50 = getelementptr inbounds %struct.anon.1, ptr %23, i32 0, i32 10, !dbg !462
  %24 = load ptr, ptr %boottime50, align 8, !dbg !462
  br label %cond.end54, !dbg !462

cond.false51:                                     ; preds = %do.end45
  %25 = load ptr, ptr @efi_system_table, align 8, !dbg !462
  %boottime52 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %25, i32 0, i32 10, !dbg !462
  %26 = load i32, ptr %boottime52, align 4, !dbg !462
  %conv53 = zext i32 %26 to i64, !dbg !462
  %27 = inttoptr i64 %conv53 to ptr, !dbg !462
  br label %cond.end54, !dbg !462

cond.end54:                                       ; preds = %cond.false51, %cond.true49
  %cond55 = phi ptr [ %24, %cond.true49 ], [ %27, %cond.false51 ], !dbg !462
  %allocate_pool56 = getelementptr inbounds %struct.anon.0, ptr %cond55, i32 0, i32 6, !dbg !462
  %28 = load i32, ptr %allocate_pool56, align 4, !dbg !462
  %29 = load i64, ptr %pci_handle_size, align 8, !dbg !462
  %call57 = call ptr @efi64_zero_upper(ptr noundef %pci_handle) #7, !dbg !462
  %arraydecay58 = getelementptr inbounds [3 x i64], ptr %__pad42, i64 0, i64 0, !dbg !462
  %call59 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %28, i32 noundef 2, i64 noundef %29, ptr noundef %call57, ptr noundef %arraydecay58) #7, !dbg !462
  store i64 %call59, ptr %tmp46, align 8, !dbg !462
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad42) #6, !dbg !461
  %30 = load i64, ptr %tmp46, align 8, !dbg !462
  %call60 = call i64 @__efi64_widen_efi_status(i64 noundef %30) #7, !dbg !461
  br label %cond.end61, !dbg !461

cond.end61:                                       ; preds = %cond.end54, %cond.end38
  %cond62 = phi i64 [ %call40, %cond.end38 ], [ %call60, %cond.end54 ], !dbg !461
  store i64 %cond62, ptr %status, align 8, !dbg !467
  %31 = load i64, ptr %status, align 8, !dbg !468
  %cmp63 = icmp ne i64 %31, 0, !dbg !470
  br i1 %cmp63, label %if.then65, label %if.end67, !dbg !471

if.then65:                                        ; preds = %cond.end61
  %call66 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.1) #7, !dbg !472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup448, !dbg !474

if.end67:                                         ; preds = %cond.end61
  %call68 = call zeroext i1 @efi_is_native() #7, !dbg !475
  br i1 %call68, label %cond.true70, label %cond.false82, !dbg !475

cond.true70:                                      ; preds = %if.end67
  %call71 = call zeroext i1 @efi_is_native() #7, !dbg !475
  br i1 %call71, label %cond.true73, label %cond.false75, !dbg !475

cond.true73:                                      ; preds = %cond.true70
  %32 = load ptr, ptr @efi_system_table, align 8, !dbg !475
  %boottime74 = getelementptr inbounds %struct.anon.1, ptr %32, i32 0, i32 10, !dbg !475
  %33 = load ptr, ptr %boottime74, align 8, !dbg !475
  br label %cond.end78, !dbg !475

cond.false75:                                     ; preds = %cond.true70
  %34 = load ptr, ptr @efi_system_table, align 8, !dbg !475
  %boottime76 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %34, i32 0, i32 10, !dbg !475
  %35 = load i32, ptr %boottime76, align 4, !dbg !475
  %conv77 = zext i32 %35 to i64, !dbg !475
  %36 = inttoptr i64 %conv77 to ptr, !dbg !475
  br label %cond.end78, !dbg !475

cond.end78:                                       ; preds = %cond.false75, %cond.true73
  %cond79 = phi ptr [ %33, %cond.true73 ], [ %36, %cond.false75 ], !dbg !475
  %locate_handle80 = getelementptr inbounds %struct.anon, ptr %cond79, i32 0, i32 20, !dbg !475
  %37 = load ptr, ptr %locate_handle80, align 8, !dbg !475
  %38 = load ptr, ptr %pci_handle, align 8, !dbg !475
  %call81 = call win64cc i64 %37(i32 noundef 2, ptr noundef %pci_proto, ptr noundef null, ptr noundef %pci_handle_size, ptr noundef %38) #7, !dbg !475
  br label %cond.end101, !dbg !475

cond.false82:                                     ; preds = %if.end67
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad83) #6, !dbg !476
  call void @llvm.dbg.declare(metadata ptr %__pad83, metadata !314, metadata !DIExpression()), !dbg !476
  br label %do.body84, !dbg !477

do.body84:                                        ; preds = %cond.false82
  br label %do.cond85, !dbg !479

do.cond85:                                        ; preds = %do.body84
  br label %do.end86, !dbg !479

do.end86:                                         ; preds = %do.cond85
  %call88 = call zeroext i1 @efi_is_native() #7, !dbg !476
  br i1 %call88, label %cond.true90, label %cond.false92, !dbg !476

cond.true90:                                      ; preds = %do.end86
  %39 = load ptr, ptr @efi_system_table, align 8, !dbg !476
  %boottime91 = getelementptr inbounds %struct.anon.1, ptr %39, i32 0, i32 10, !dbg !476
  %40 = load ptr, ptr %boottime91, align 8, !dbg !476
  br label %cond.end95, !dbg !476

cond.false92:                                     ; preds = %do.end86
  %41 = load ptr, ptr @efi_system_table, align 8, !dbg !476
  %boottime93 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %41, i32 0, i32 10, !dbg !476
  %42 = load i32, ptr %boottime93, align 4, !dbg !476
  %conv94 = zext i32 %42 to i64, !dbg !476
  %43 = inttoptr i64 %conv94 to ptr, !dbg !476
  br label %cond.end95, !dbg !476

cond.end95:                                       ; preds = %cond.false92, %cond.true90
  %cond96 = phi ptr [ %40, %cond.true90 ], [ %43, %cond.false92 ], !dbg !476
  %locate_handle97 = getelementptr inbounds %struct.anon.0, ptr %cond96, i32 0, i32 20, !dbg !476
  %44 = load i32, ptr %locate_handle97, align 4, !dbg !476
  %45 = load ptr, ptr %pci_handle, align 8, !dbg !476
  %arraydecay98 = getelementptr inbounds [3 x i64], ptr %__pad83, i64 0, i64 0, !dbg !476
  %call99 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %44, i32 noundef 2, ptr noundef %pci_proto, ptr noundef null, ptr noundef %pci_handle_size, ptr noundef %45, ptr noundef %arraydecay98) #7, !dbg !476
  store i64 %call99, ptr %tmp87, align 8, !dbg !476
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad83) #6, !dbg !475
  %46 = load i64, ptr %tmp87, align 8, !dbg !476
  %call100 = call i64 @__efi64_widen_efi_status(i64 noundef %46) #7, !dbg !475
  br label %cond.end101, !dbg !475

cond.end101:                                      ; preds = %cond.end95, %cond.end78
  %cond102 = phi i64 [ %call81, %cond.end78 ], [ %call100, %cond.end95 ], !dbg !475
  store i64 %cond102, ptr %status, align 8, !dbg !481
  %47 = load i64, ptr %status, align 8, !dbg !482
  %cmp103 = icmp ne i64 %47, 0, !dbg !484
  br i1 %cmp103, label %if.then105, label %if.end107, !dbg !485

if.then105:                                       ; preds = %cond.end101
  %call106 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str) #7, !dbg !486
  br label %free_handle, !dbg !488

if.end107:                                        ; preds = %cond.end101
  store i32 0, ptr %i, align 4, !dbg !489
  br label %for.cond, !dbg !489

for.cond:                                         ; preds = %for.inc, %if.end107
  %48 = load i32, ptr %i, align 4, !dbg !490
  %conv108 = sext i32 %48 to i64, !dbg !490
  %49 = load i64, ptr %pci_handle_size, align 8, !dbg !490
  %call109 = call zeroext i1 @efi_is_native() #7, !dbg !490
  %50 = zext i1 %call109 to i64, !dbg !490
  %cond111 = select i1 %call109, i64 8, i64 4, !dbg !490
  %div = udiv i64 %49, %cond111, !dbg !490
  %cmp112 = icmp ult i64 %conv108, %div, !dbg !490
  br i1 %cmp112, label %land.rhs, label %land.end, !dbg !490

land.rhs:                                         ; preds = %for.cond
  %call114 = call zeroext i1 @efi_is_native() #7, !dbg !490
  br i1 %call114, label %cond.true116, label %cond.false117, !dbg !490

cond.true116:                                     ; preds = %land.rhs
  %51 = load ptr, ptr %pci_handle, align 8, !dbg !490
  %52 = load i32, ptr %i, align 4, !dbg !490
  %idxprom = sext i32 %52 to i64, !dbg !490
  %arrayidx = getelementptr inbounds ptr, ptr %51, i64 %idxprom, !dbg !490
  %53 = load ptr, ptr %arrayidx, align 8, !dbg !490
  br label %cond.end121, !dbg !490

cond.false117:                                    ; preds = %land.rhs
  %54 = load ptr, ptr %pci_handle, align 8, !dbg !490
  %55 = load i32, ptr %i, align 4, !dbg !490
  %idxprom118 = sext i32 %55 to i64, !dbg !490
  %arrayidx119 = getelementptr inbounds i32, ptr %54, i64 %idxprom118, !dbg !490
  %56 = load i32, ptr %arrayidx119, align 4, !dbg !490
  %conv120 = zext i32 %56 to i64, !dbg !490
  %57 = inttoptr i64 %conv120 to ptr, !dbg !490
  br label %cond.end121, !dbg !490

cond.end121:                                      ; preds = %cond.false117, %cond.true116
  %cond122 = phi ptr [ %53, %cond.true116 ], [ %57, %cond.false117 ], !dbg !490
  store ptr %cond122, ptr %handle, align 8, !dbg !490
  %tobool = icmp ne ptr %cond122, null, !dbg !490
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !490

lor.rhs:                                          ; preds = %cond.end121
  br label %lor.end, !dbg !490

lor.end:                                          ; preds = %lor.rhs, %cond.end121
  %58 = phi i1 [ true, %cond.end121 ], [ true, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %59 = phi i1 [ false, %for.cond ], [ %58, %lor.end ], !dbg !491
  br i1 %59, label %for.body, label %for.end, !dbg !489

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci) #6, !dbg !492
  call void @llvm.dbg.declare(metadata ptr %pci, metadata !316, metadata !DIExpression()), !dbg !493
  call void @llvm.lifetime.start.p0(i64 8, ptr %segment_nr) #6, !dbg !494
  call void @llvm.dbg.declare(metadata ptr %segment_nr, metadata !388, metadata !DIExpression()), !dbg !495
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus_nr) #6, !dbg !494
  call void @llvm.dbg.declare(metadata ptr %bus_nr, metadata !389, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 8, ptr %device_nr) #6, !dbg !494
  call void @llvm.dbg.declare(metadata ptr %device_nr, metadata !390, metadata !DIExpression()), !dbg !497
  call void @llvm.lifetime.start.p0(i64 8, ptr %func_nr) #6, !dbg !494
  call void @llvm.dbg.declare(metadata ptr %func_nr, metadata !391, metadata !DIExpression()), !dbg !498
  %call123 = call zeroext i1 @efi_is_native() #7, !dbg !499
  br i1 %call123, label %cond.true125, label %cond.false136, !dbg !499

cond.true125:                                     ; preds = %for.body
  %call126 = call zeroext i1 @efi_is_native() #7, !dbg !499
  br i1 %call126, label %cond.true128, label %cond.false130, !dbg !499

cond.true128:                                     ; preds = %cond.true125
  %60 = load ptr, ptr @efi_system_table, align 8, !dbg !499
  %boottime129 = getelementptr inbounds %struct.anon.1, ptr %60, i32 0, i32 10, !dbg !499
  %61 = load ptr, ptr %boottime129, align 8, !dbg !499
  br label %cond.end133, !dbg !499

cond.false130:                                    ; preds = %cond.true125
  %62 = load ptr, ptr @efi_system_table, align 8, !dbg !499
  %boottime131 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %62, i32 0, i32 10, !dbg !499
  %63 = load i32, ptr %boottime131, align 4, !dbg !499
  %conv132 = zext i32 %63 to i64, !dbg !499
  %64 = inttoptr i64 %conv132 to ptr, !dbg !499
  br label %cond.end133, !dbg !499

cond.end133:                                      ; preds = %cond.false130, %cond.true128
  %cond134 = phi ptr [ %61, %cond.true128 ], [ %64, %cond.false130 ], !dbg !499
  %handle_protocol = getelementptr inbounds %struct.anon, ptr %cond134, i32 0, i32 17, !dbg !499
  %65 = load ptr, ptr %handle_protocol, align 8, !dbg !499
  %66 = load ptr, ptr %handle, align 8, !dbg !499
  %call135 = call win64cc i64 %65(ptr noundef %66, ptr noundef %pci_proto, ptr noundef %pci) #7, !dbg !499
  br label %cond.end156, !dbg !499

cond.false136:                                    ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad137) #6, !dbg !500
  call void @llvm.dbg.declare(metadata ptr %__pad137, metadata !392, metadata !DIExpression()), !dbg !500
  br label %do.body138, !dbg !501

do.body138:                                       ; preds = %cond.false136
  br label %do.cond139, !dbg !503

do.cond139:                                       ; preds = %do.body138
  br label %do.end140, !dbg !503

do.end140:                                        ; preds = %do.cond139
  %call142 = call zeroext i1 @efi_is_native() #7, !dbg !500
  br i1 %call142, label %cond.true144, label %cond.false146, !dbg !500

cond.true144:                                     ; preds = %do.end140
  %67 = load ptr, ptr @efi_system_table, align 8, !dbg !500
  %boottime145 = getelementptr inbounds %struct.anon.1, ptr %67, i32 0, i32 10, !dbg !500
  %68 = load ptr, ptr %boottime145, align 8, !dbg !500
  br label %cond.end149, !dbg !500

cond.false146:                                    ; preds = %do.end140
  %69 = load ptr, ptr @efi_system_table, align 8, !dbg !500
  %boottime147 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %69, i32 0, i32 10, !dbg !500
  %70 = load i32, ptr %boottime147, align 4, !dbg !500
  %conv148 = zext i32 %70 to i64, !dbg !500
  %71 = inttoptr i64 %conv148 to ptr, !dbg !500
  br label %cond.end149, !dbg !500

cond.end149:                                      ; preds = %cond.false146, %cond.true144
  %cond150 = phi ptr [ %68, %cond.true144 ], [ %71, %cond.false146 ], !dbg !500
  %handle_protocol151 = getelementptr inbounds %struct.anon.0, ptr %cond150, i32 0, i32 17, !dbg !500
  %72 = load i32, ptr %handle_protocol151, align 8, !dbg !500
  %73 = load ptr, ptr %handle, align 8, !dbg !500
  %call152 = call ptr @efi64_zero_upper(ptr noundef %pci) #7, !dbg !500
  %arraydecay153 = getelementptr inbounds [3 x i64], ptr %__pad137, i64 0, i64 0, !dbg !500
  %call154 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %72, ptr noundef %73, ptr noundef %pci_proto, ptr noundef %call152, ptr noundef %arraydecay153) #7, !dbg !500
  store i64 %call154, ptr %tmp141, align 8, !dbg !500
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad137) #6, !dbg !499
  %74 = load i64, ptr %tmp141, align 8, !dbg !500
  %call155 = call i64 @__efi64_widen_efi_status(i64 noundef %74) #7, !dbg !499
  br label %cond.end156, !dbg !499

cond.end156:                                      ; preds = %cond.end149, %cond.end133
  %cond157 = phi i64 [ %call135, %cond.end133 ], [ %call155, %cond.end149 ], !dbg !499
  store i64 %cond157, ptr %status, align 8, !dbg !505
  %75 = load i64, ptr %status, align 8, !dbg !506
  %cmp158 = icmp ne i64 %75, 0, !dbg !508
  br i1 %cmp158, label %if.then160, label %if.end161, !dbg !509

if.then160:                                       ; preds = %cond.end156
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !510

if.end161:                                        ; preds = %cond.end156
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst) #6, !dbg !511
  call void @llvm.dbg.declare(metadata ptr %__inst, metadata !394, metadata !DIExpression()), !dbg !511
  %76 = load ptr, ptr %pci, align 8, !dbg !511
  store ptr %76, ptr %__inst, align 8, !dbg !511
  %call163 = call zeroext i1 @efi_is_native() #7, !dbg !511
  br i1 %call163, label %cond.true165, label %cond.false167, !dbg !511

cond.true165:                                     ; preds = %if.end161
  %77 = load ptr, ptr %__inst, align 8, !dbg !511
  %get_location = getelementptr inbounds %struct.anon.2, ptr %77, i32 0, i32 11, !dbg !511
  %78 = load ptr, ptr %get_location, align 8, !dbg !511
  %79 = load ptr, ptr %__inst, align 8, !dbg !511
  %call166 = call win64cc i64 %78(ptr noundef %79, ptr noundef %segment_nr, ptr noundef %bus_nr, ptr noundef %device_nr, ptr noundef %func_nr) #7, !dbg !511
  br label %cond.end181, !dbg !511

cond.false167:                                    ; preds = %if.end161
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad168) #6, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %__pad168, metadata !396, metadata !DIExpression()), !dbg !512
  br label %do.body169, !dbg !513

do.body169:                                       ; preds = %cond.false167
  br label %do.cond170, !dbg !515

do.cond170:                                       ; preds = %do.body169
  br label %do.end171, !dbg !515

do.end171:                                        ; preds = %do.cond170
  %80 = load ptr, ptr %__inst, align 8, !dbg !512
  %get_location173 = getelementptr inbounds %struct.anon.3, ptr %80, i32 0, i32 11, !dbg !512
  %81 = load i32, ptr %get_location173, align 8, !dbg !512
  %82 = load ptr, ptr %__inst, align 8, !dbg !512
  %call174 = call ptr @efi64_zero_upper(ptr noundef %segment_nr) #7, !dbg !512
  %call175 = call ptr @efi64_zero_upper(ptr noundef %bus_nr) #7, !dbg !512
  %call176 = call ptr @efi64_zero_upper(ptr noundef %device_nr) #7, !dbg !512
  %call177 = call ptr @efi64_zero_upper(ptr noundef %func_nr) #7, !dbg !512
  %arraydecay178 = getelementptr inbounds [3 x i64], ptr %__pad168, i64 0, i64 0, !dbg !512
  %call179 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %81, ptr noundef %82, ptr noundef %call174, ptr noundef %call175, ptr noundef %call176, ptr noundef %call177, ptr noundef %arraydecay178) #7, !dbg !512
  store i64 %call179, ptr %tmp172, align 8, !dbg !512
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad168) #6, !dbg !511
  %83 = load i64, ptr %tmp172, align 8, !dbg !512
  %call180 = call i64 @__efi64_widen_efi_status(i64 noundef %83) #7, !dbg !511
  br label %cond.end181, !dbg !511

cond.end181:                                      ; preds = %do.end171, %cond.true165
  %cond182 = phi i64 [ %call166, %cond.true165 ], [ %call180, %do.end171 ], !dbg !511
  store i64 %cond182, ptr %tmp162, align 8, !dbg !511
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst) #6, !dbg !517
  %84 = load i64, ptr %tmp162, align 8, !dbg !511
  store i64 %84, ptr %status, align 8, !dbg !518
  %85 = load i64, ptr %status, align 8, !dbg !519
  %cmp183 = icmp ne i64 %85, 0, !dbg !521
  br i1 %cmp183, label %if.then187, label %lor.lhs.false, !dbg !522

lor.lhs.false:                                    ; preds = %cond.end181
  %86 = load i64, ptr %bus_nr, align 8, !dbg !523
  %cmp185 = icmp eq i64 %86, 0, !dbg !524
  br i1 %cmp185, label %if.then187, label %if.end188, !dbg !525

if.then187:                                       ; preds = %lor.lhs.false, %cond.end181
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !526

if.end188:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst189) #6, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %__inst189, metadata !398, metadata !DIExpression()), !dbg !527
  %87 = load ptr, ptr %pci, align 8, !dbg !527
  store ptr %87, ptr %__inst189, align 8, !dbg !527
  %call191 = call zeroext i1 @efi_is_native() #7, !dbg !527
  br i1 %call191, label %cond.true193, label %cond.false196, !dbg !527

cond.true193:                                     ; preds = %if.end188
  %88 = load ptr, ptr %__inst189, align 8, !dbg !527
  %pci194 = getelementptr inbounds %struct.anon.2, ptr %88, i32 0, i32 4, !dbg !527
  %read = getelementptr inbounds %struct.efi_pci_io_protocol_config_access_t, ptr %pci194, i32 0, i32 0, !dbg !527
  %89 = load ptr, ptr %read, align 8, !dbg !527
  %90 = load ptr, ptr %__inst189, align 8, !dbg !527
  %call195 = call win64cc i64 %89(ptr noundef %90, i32 noundef 1, i32 noundef 10, i64 noundef 1, ptr noundef %class) #7, !dbg !527
  br label %cond.end207, !dbg !527

cond.false196:                                    ; preds = %if.end188
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad197) #6, !dbg !528
  call void @llvm.dbg.declare(metadata ptr %__pad197, metadata !400, metadata !DIExpression()), !dbg !528
  br label %do.body198, !dbg !529

do.body198:                                       ; preds = %cond.false196
  br label %do.cond199, !dbg !531

do.cond199:                                       ; preds = %do.body198
  br label %do.end200, !dbg !531

do.end200:                                        ; preds = %do.cond199
  %91 = load ptr, ptr %__inst189, align 8, !dbg !528
  %pci202 = getelementptr inbounds %struct.anon.3, ptr %91, i32 0, i32 4, !dbg !528
  %read203 = getelementptr inbounds %struct.efi_pci_io_protocol_access_32_t, ptr %pci202, i32 0, i32 0, !dbg !528
  %92 = load i32, ptr %read203, align 8, !dbg !528
  %93 = load ptr, ptr %__inst189, align 8, !dbg !528
  %arraydecay204 = getelementptr inbounds [3 x i64], ptr %__pad197, i64 0, i64 0, !dbg !528
  %call205 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %92, ptr noundef %93, i32 noundef 1, i32 noundef 10, i32 noundef 1, ptr noundef %class, ptr noundef %arraydecay204) #7, !dbg !528
  store i64 %call205, ptr %tmp201, align 8, !dbg !528
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad197) #6, !dbg !527
  %94 = load i64, ptr %tmp201, align 8, !dbg !528
  %call206 = call i64 @__efi64_widen_efi_status(i64 noundef %94) #7, !dbg !527
  br label %cond.end207, !dbg !527

cond.end207:                                      ; preds = %do.end200, %cond.true193
  %cond208 = phi i64 [ %call195, %cond.true193 ], [ %call206, %do.end200 ], !dbg !527
  store i64 %cond208, ptr %tmp190, align 8, !dbg !527
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst189) #6, !dbg !533
  %95 = load i64, ptr %tmp190, align 8, !dbg !527
  store i64 %95, ptr %status, align 8, !dbg !534
  %96 = load i64, ptr %status, align 8, !dbg !535
  %cmp209 = icmp ne i64 %96, 0, !dbg !537
  br i1 %cmp209, label %if.then215, label %lor.lhs.false211, !dbg !538

lor.lhs.false211:                                 ; preds = %cond.end207
  %97 = load i16, ptr %class, align 2, !dbg !539
  %conv212 = zext i16 %97 to i32, !dbg !539
  %cmp213 = icmp eq i32 %conv212, 768, !dbg !540
  br i1 %cmp213, label %if.then215, label %if.end216, !dbg !541

if.then215:                                       ; preds = %lor.lhs.false211, %cond.end207
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !542

if.end216:                                        ; preds = %lor.lhs.false211
  %call217 = call zeroext i1 @efi_is_native() #7, !dbg !543
  br i1 %call217, label %cond.true219, label %cond.false230, !dbg !543

cond.true219:                                     ; preds = %if.end216
  %call220 = call zeroext i1 @efi_is_native() #7, !dbg !543
  br i1 %call220, label %cond.true222, label %cond.false224, !dbg !543

cond.true222:                                     ; preds = %cond.true219
  %98 = load ptr, ptr @efi_system_table, align 8, !dbg !543
  %boottime223 = getelementptr inbounds %struct.anon.1, ptr %98, i32 0, i32 10, !dbg !543
  %99 = load ptr, ptr %boottime223, align 8, !dbg !543
  br label %cond.end227, !dbg !543

cond.false224:                                    ; preds = %cond.true219
  %100 = load ptr, ptr @efi_system_table, align 8, !dbg !543
  %boottime225 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %100, i32 0, i32 10, !dbg !543
  %101 = load i32, ptr %boottime225, align 4, !dbg !543
  %conv226 = zext i32 %101 to i64, !dbg !543
  %102 = inttoptr i64 %conv226 to ptr, !dbg !543
  br label %cond.end227, !dbg !543

cond.end227:                                      ; preds = %cond.false224, %cond.true222
  %cond228 = phi ptr [ %99, %cond.true222 ], [ %102, %cond.false224 ], !dbg !543
  %disconnect_controller = getelementptr inbounds %struct.anon, ptr %cond228, i32 0, i32 32, !dbg !543
  %103 = load ptr, ptr %disconnect_controller, align 8, !dbg !543
  %104 = load ptr, ptr %handle, align 8, !dbg !543
  %call229 = call win64cc i64 %103(ptr noundef %104, ptr noundef null, ptr noundef null) #7, !dbg !543
  br label %cond.end249, !dbg !543

cond.false230:                                    ; preds = %if.end216
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad231) #6, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %__pad231, metadata !402, metadata !DIExpression()), !dbg !544
  br label %do.body232, !dbg !545

do.body232:                                       ; preds = %cond.false230
  br label %do.cond233, !dbg !547

do.cond233:                                       ; preds = %do.body232
  br label %do.end234, !dbg !547

do.end234:                                        ; preds = %do.cond233
  %call236 = call zeroext i1 @efi_is_native() #7, !dbg !544
  br i1 %call236, label %cond.true238, label %cond.false240, !dbg !544

cond.true238:                                     ; preds = %do.end234
  %105 = load ptr, ptr @efi_system_table, align 8, !dbg !544
  %boottime239 = getelementptr inbounds %struct.anon.1, ptr %105, i32 0, i32 10, !dbg !544
  %106 = load ptr, ptr %boottime239, align 8, !dbg !544
  br label %cond.end243, !dbg !544

cond.false240:                                    ; preds = %do.end234
  %107 = load ptr, ptr @efi_system_table, align 8, !dbg !544
  %boottime241 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %107, i32 0, i32 10, !dbg !544
  %108 = load i32, ptr %boottime241, align 4, !dbg !544
  %conv242 = zext i32 %108 to i64, !dbg !544
  %109 = inttoptr i64 %conv242 to ptr, !dbg !544
  br label %cond.end243, !dbg !544

cond.end243:                                      ; preds = %cond.false240, %cond.true238
  %cond244 = phi ptr [ %106, %cond.true238 ], [ %109, %cond.false240 ], !dbg !544
  %disconnect_controller245 = getelementptr inbounds %struct.anon.0, ptr %cond244, i32 0, i32 32, !dbg !544
  %110 = load i32, ptr %disconnect_controller245, align 4, !dbg !544
  %111 = load ptr, ptr %handle, align 8, !dbg !544
  %arraydecay246 = getelementptr inbounds [3 x i64], ptr %__pad231, i64 0, i64 0, !dbg !544
  %call247 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %110, ptr noundef %111, ptr noundef null, ptr noundef null, ptr noundef %arraydecay246) #7, !dbg !544
  store i64 %call247, ptr %tmp235, align 8, !dbg !544
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad231) #6, !dbg !543
  %112 = load i64, ptr %tmp235, align 8, !dbg !544
  %call248 = call i64 @__efi64_widen_efi_status(i64 noundef %112) #7, !dbg !543
  br label %cond.end249, !dbg !543

cond.end249:                                      ; preds = %cond.end243, %cond.end227
  %cond250 = phi i64 [ %call229, %cond.end227 ], [ %call248, %cond.end243 ], !dbg !543
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !549
  br label %cleanup, !dbg !549

cleanup:                                          ; preds = %cond.end249, %if.then215, %if.then187, %if.then160
  call void @llvm.lifetime.end.p0(i64 8, ptr %func_nr) #6, !dbg !549
  call void @llvm.lifetime.end.p0(i64 8, ptr %device_nr) #6, !dbg !549
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus_nr) #6, !dbg !549
  call void @llvm.lifetime.end.p0(i64 8, ptr %segment_nr) #6, !dbg !549
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci) #6, !dbg !549
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 11, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !550

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %113 = load i32, ptr %i, align 4, !dbg !490
  %inc = add nsw i32 %113, 1, !dbg !490
  store i32 %inc, ptr %i, align 4, !dbg !490
  br label %for.cond, !dbg !490, !llvm.loop !551

for.end:                                          ; preds = %land.end
  store i32 0, ptr %i, align 4, !dbg !555
  br label %for.cond255, !dbg !555

for.cond255:                                      ; preds = %for.inc411, %for.end
  %114 = load i32, ptr %i, align 4, !dbg !556
  %conv256 = sext i32 %114 to i64, !dbg !556
  %115 = load i64, ptr %pci_handle_size, align 8, !dbg !556
  %call257 = call zeroext i1 @efi_is_native() #7, !dbg !556
  %116 = zext i1 %call257 to i64, !dbg !556
  %cond259 = select i1 %call257, i64 8, i64 4, !dbg !556
  %div260 = udiv i64 %115, %cond259, !dbg !556
  %cmp261 = icmp ult i64 %conv256, %div260, !dbg !556
  br i1 %cmp261, label %land.rhs263, label %land.end278, !dbg !556

land.rhs263:                                      ; preds = %for.cond255
  %call264 = call zeroext i1 @efi_is_native() #7, !dbg !556
  br i1 %call264, label %cond.true266, label %cond.false269, !dbg !556

cond.true266:                                     ; preds = %land.rhs263
  %117 = load ptr, ptr %pci_handle, align 8, !dbg !556
  %118 = load i32, ptr %i, align 4, !dbg !556
  %idxprom267 = sext i32 %118 to i64, !dbg !556
  %arrayidx268 = getelementptr inbounds ptr, ptr %117, i64 %idxprom267, !dbg !556
  %119 = load ptr, ptr %arrayidx268, align 8, !dbg !556
  br label %cond.end273, !dbg !556

cond.false269:                                    ; preds = %land.rhs263
  %120 = load ptr, ptr %pci_handle, align 8, !dbg !556
  %121 = load i32, ptr %i, align 4, !dbg !556
  %idxprom270 = sext i32 %121 to i64, !dbg !556
  %arrayidx271 = getelementptr inbounds i32, ptr %120, i64 %idxprom270, !dbg !556
  %122 = load i32, ptr %arrayidx271, align 4, !dbg !556
  %conv272 = zext i32 %122 to i64, !dbg !556
  %123 = inttoptr i64 %conv272 to ptr, !dbg !556
  br label %cond.end273, !dbg !556

cond.end273:                                      ; preds = %cond.false269, %cond.true266
  %cond274 = phi ptr [ %119, %cond.true266 ], [ %123, %cond.false269 ], !dbg !556
  store ptr %cond274, ptr %handle, align 8, !dbg !556
  %tobool275 = icmp ne ptr %cond274, null, !dbg !556
  br i1 %tobool275, label %lor.end277, label %lor.rhs276, !dbg !556

lor.rhs276:                                       ; preds = %cond.end273
  br label %lor.end277, !dbg !556

lor.end277:                                       ; preds = %lor.rhs276, %cond.end273
  %124 = phi i1 [ true, %cond.end273 ], [ true, %lor.rhs276 ]
  br label %land.end278

land.end278:                                      ; preds = %lor.end277, %for.cond255
  %125 = phi i1 [ false, %for.cond255 ], [ %124, %lor.end277 ], !dbg !557
  br i1 %125, label %for.body279, label %for.end413, !dbg !555

for.body279:                                      ; preds = %land.end278
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci280) #6, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %pci280, metadata !404, metadata !DIExpression()), !dbg !559
  %call281 = call zeroext i1 @efi_is_native() #7, !dbg !560
  br i1 %call281, label %cond.true283, label %cond.false295, !dbg !560

cond.true283:                                     ; preds = %for.body279
  %call284 = call zeroext i1 @efi_is_native() #7, !dbg !560
  br i1 %call284, label %cond.true286, label %cond.false288, !dbg !560

cond.true286:                                     ; preds = %cond.true283
  %126 = load ptr, ptr @efi_system_table, align 8, !dbg !560
  %boottime287 = getelementptr inbounds %struct.anon.1, ptr %126, i32 0, i32 10, !dbg !560
  %127 = load ptr, ptr %boottime287, align 8, !dbg !560
  br label %cond.end291, !dbg !560

cond.false288:                                    ; preds = %cond.true283
  %128 = load ptr, ptr @efi_system_table, align 8, !dbg !560
  %boottime289 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %128, i32 0, i32 10, !dbg !560
  %129 = load i32, ptr %boottime289, align 4, !dbg !560
  %conv290 = zext i32 %129 to i64, !dbg !560
  %130 = inttoptr i64 %conv290 to ptr, !dbg !560
  br label %cond.end291, !dbg !560

cond.end291:                                      ; preds = %cond.false288, %cond.true286
  %cond292 = phi ptr [ %127, %cond.true286 ], [ %130, %cond.false288 ], !dbg !560
  %handle_protocol293 = getelementptr inbounds %struct.anon, ptr %cond292, i32 0, i32 17, !dbg !560
  %131 = load ptr, ptr %handle_protocol293, align 8, !dbg !560
  %132 = load ptr, ptr %handle, align 8, !dbg !560
  %call294 = call win64cc i64 %131(ptr noundef %132, ptr noundef %pci_proto, ptr noundef %pci280) #7, !dbg !560
  br label %cond.end315, !dbg !560

cond.false295:                                    ; preds = %for.body279
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad296) #6, !dbg !561
  call void @llvm.dbg.declare(metadata ptr %__pad296, metadata !408, metadata !DIExpression()), !dbg !561
  br label %do.body297, !dbg !562

do.body297:                                       ; preds = %cond.false295
  br label %do.cond298, !dbg !564

do.cond298:                                       ; preds = %do.body297
  br label %do.end299, !dbg !564

do.end299:                                        ; preds = %do.cond298
  %call301 = call zeroext i1 @efi_is_native() #7, !dbg !561
  br i1 %call301, label %cond.true303, label %cond.false305, !dbg !561

cond.true303:                                     ; preds = %do.end299
  %133 = load ptr, ptr @efi_system_table, align 8, !dbg !561
  %boottime304 = getelementptr inbounds %struct.anon.1, ptr %133, i32 0, i32 10, !dbg !561
  %134 = load ptr, ptr %boottime304, align 8, !dbg !561
  br label %cond.end308, !dbg !561

cond.false305:                                    ; preds = %do.end299
  %135 = load ptr, ptr @efi_system_table, align 8, !dbg !561
  %boottime306 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %135, i32 0, i32 10, !dbg !561
  %136 = load i32, ptr %boottime306, align 4, !dbg !561
  %conv307 = zext i32 %136 to i64, !dbg !561
  %137 = inttoptr i64 %conv307 to ptr, !dbg !561
  br label %cond.end308, !dbg !561

cond.end308:                                      ; preds = %cond.false305, %cond.true303
  %cond309 = phi ptr [ %134, %cond.true303 ], [ %137, %cond.false305 ], !dbg !561
  %handle_protocol310 = getelementptr inbounds %struct.anon.0, ptr %cond309, i32 0, i32 17, !dbg !561
  %138 = load i32, ptr %handle_protocol310, align 8, !dbg !561
  %139 = load ptr, ptr %handle, align 8, !dbg !561
  %call311 = call ptr @efi64_zero_upper(ptr noundef %pci280) #7, !dbg !561
  %arraydecay312 = getelementptr inbounds [3 x i64], ptr %__pad296, i64 0, i64 0, !dbg !561
  %call313 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %138, ptr noundef %139, ptr noundef %pci_proto, ptr noundef %call311, ptr noundef %arraydecay312) #7, !dbg !561
  store i64 %call313, ptr %tmp300, align 8, !dbg !561
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad296) #6, !dbg !560
  %140 = load i64, ptr %tmp300, align 8, !dbg !561
  %call314 = call i64 @__efi64_widen_efi_status(i64 noundef %140) #7, !dbg !560
  br label %cond.end315, !dbg !560

cond.end315:                                      ; preds = %cond.end308, %cond.end291
  %cond316 = phi i64 [ %call294, %cond.end291 ], [ %call314, %cond.end308 ], !dbg !560
  store i64 %cond316, ptr %status, align 8, !dbg !566
  %141 = load i64, ptr %status, align 8, !dbg !567
  %cmp317 = icmp ne i64 %141, 0, !dbg !569
  br i1 %cmp317, label %if.then321, label %lor.lhs.false319, !dbg !570

lor.lhs.false319:                                 ; preds = %cond.end315
  %142 = load ptr, ptr %pci280, align 8, !dbg !571
  %tobool320 = icmp ne ptr %142, null, !dbg !571
  br i1 %tobool320, label %if.end322, label %if.then321, !dbg !572

if.then321:                                       ; preds = %lor.lhs.false319, %cond.end315
  store i32 22, ptr %cleanup.dest.slot, align 4
  br label %cleanup408, !dbg !573

if.end322:                                        ; preds = %lor.lhs.false319
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst323) #6, !dbg !574
  call void @llvm.dbg.declare(metadata ptr %__inst323, metadata !410, metadata !DIExpression()), !dbg !574
  %143 = load ptr, ptr %pci280, align 8, !dbg !574
  store ptr %143, ptr %__inst323, align 8, !dbg !574
  %call325 = call zeroext i1 @efi_is_native() #7, !dbg !574
  br i1 %call325, label %cond.true327, label %cond.false331, !dbg !574

cond.true327:                                     ; preds = %if.end322
  %144 = load ptr, ptr %__inst323, align 8, !dbg !574
  %pci328 = getelementptr inbounds %struct.anon.2, ptr %144, i32 0, i32 4, !dbg !574
  %read329 = getelementptr inbounds %struct.efi_pci_io_protocol_config_access_t, ptr %pci328, i32 0, i32 0, !dbg !574
  %145 = load ptr, ptr %read329, align 8, !dbg !574
  %146 = load ptr, ptr %__inst323, align 8, !dbg !574
  %call330 = call win64cc i64 %145(ptr noundef %146, i32 noundef 1, i32 noundef 10, i64 noundef 1, ptr noundef %class) #7, !dbg !574
  br label %cond.end342, !dbg !574

cond.false331:                                    ; preds = %if.end322
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad332) #6, !dbg !575
  call void @llvm.dbg.declare(metadata ptr %__pad332, metadata !412, metadata !DIExpression()), !dbg !575
  br label %do.body333, !dbg !576

do.body333:                                       ; preds = %cond.false331
  br label %do.cond334, !dbg !578

do.cond334:                                       ; preds = %do.body333
  br label %do.end335, !dbg !578

do.end335:                                        ; preds = %do.cond334
  %147 = load ptr, ptr %__inst323, align 8, !dbg !575
  %pci337 = getelementptr inbounds %struct.anon.3, ptr %147, i32 0, i32 4, !dbg !575
  %read338 = getelementptr inbounds %struct.efi_pci_io_protocol_access_32_t, ptr %pci337, i32 0, i32 0, !dbg !575
  %148 = load i32, ptr %read338, align 8, !dbg !575
  %149 = load ptr, ptr %__inst323, align 8, !dbg !575
  %arraydecay339 = getelementptr inbounds [3 x i64], ptr %__pad332, i64 0, i64 0, !dbg !575
  %call340 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %148, ptr noundef %149, i32 noundef 1, i32 noundef 10, i32 noundef 1, ptr noundef %class, ptr noundef %arraydecay339) #7, !dbg !575
  store i64 %call340, ptr %tmp336, align 8, !dbg !575
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad332) #6, !dbg !574
  %150 = load i64, ptr %tmp336, align 8, !dbg !575
  %call341 = call i64 @__efi64_widen_efi_status(i64 noundef %150) #7, !dbg !574
  br label %cond.end342, !dbg !574

cond.end342:                                      ; preds = %do.end335, %cond.true327
  %cond343 = phi i64 [ %call330, %cond.true327 ], [ %call341, %do.end335 ], !dbg !574
  store i64 %cond343, ptr %tmp324, align 8, !dbg !574
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst323) #6, !dbg !580
  %151 = load i64, ptr %tmp324, align 8, !dbg !574
  store i64 %151, ptr %status, align 8, !dbg !581
  %152 = load i64, ptr %status, align 8, !dbg !582
  %cmp344 = icmp ne i64 %152, 0, !dbg !584
  br i1 %cmp344, label %if.then350, label %lor.lhs.false346, !dbg !585

lor.lhs.false346:                                 ; preds = %cond.end342
  %153 = load i16, ptr %class, align 2, !dbg !586
  %conv347 = zext i16 %153 to i32, !dbg !586
  %cmp348 = icmp ne i32 %conv347, 1540, !dbg !587
  br i1 %cmp348, label %if.then350, label %if.end351, !dbg !588

if.then350:                                       ; preds = %lor.lhs.false346, %cond.end342
  store i32 22, ptr %cleanup.dest.slot, align 4
  br label %cleanup408, !dbg !589

if.end351:                                        ; preds = %lor.lhs.false346
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst352) #6, !dbg !590
  call void @llvm.dbg.declare(metadata ptr %__inst352, metadata !414, metadata !DIExpression()), !dbg !590
  %154 = load ptr, ptr %pci280, align 8, !dbg !590
  store ptr %154, ptr %__inst352, align 8, !dbg !590
  %call354 = call zeroext i1 @efi_is_native() #7, !dbg !590
  br i1 %call354, label %cond.true356, label %cond.false360, !dbg !590

cond.true356:                                     ; preds = %if.end351
  %155 = load ptr, ptr %__inst352, align 8, !dbg !590
  %pci357 = getelementptr inbounds %struct.anon.2, ptr %155, i32 0, i32 4, !dbg !590
  %read358 = getelementptr inbounds %struct.efi_pci_io_protocol_config_access_t, ptr %pci357, i32 0, i32 0, !dbg !590
  %156 = load ptr, ptr %read358, align 8, !dbg !590
  %157 = load ptr, ptr %__inst352, align 8, !dbg !590
  %call359 = call win64cc i64 %156(ptr noundef %157, i32 noundef 1, i32 noundef 4, i64 noundef 1, ptr noundef %command) #7, !dbg !590
  br label %cond.end371, !dbg !590

cond.false360:                                    ; preds = %if.end351
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad361) #6, !dbg !591
  call void @llvm.dbg.declare(metadata ptr %__pad361, metadata !416, metadata !DIExpression()), !dbg !591
  br label %do.body362, !dbg !592

do.body362:                                       ; preds = %cond.false360
  br label %do.cond363, !dbg !594

do.cond363:                                       ; preds = %do.body362
  br label %do.end364, !dbg !594

do.end364:                                        ; preds = %do.cond363
  %158 = load ptr, ptr %__inst352, align 8, !dbg !591
  %pci366 = getelementptr inbounds %struct.anon.3, ptr %158, i32 0, i32 4, !dbg !591
  %read367 = getelementptr inbounds %struct.efi_pci_io_protocol_access_32_t, ptr %pci366, i32 0, i32 0, !dbg !591
  %159 = load i32, ptr %read367, align 8, !dbg !591
  %160 = load ptr, ptr %__inst352, align 8, !dbg !591
  %arraydecay368 = getelementptr inbounds [3 x i64], ptr %__pad361, i64 0, i64 0, !dbg !591
  %call369 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %159, ptr noundef %160, i32 noundef 1, i32 noundef 4, i32 noundef 1, ptr noundef %command, ptr noundef %arraydecay368) #7, !dbg !591
  store i64 %call369, ptr %tmp365, align 8, !dbg !591
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad361) #6, !dbg !590
  %161 = load i64, ptr %tmp365, align 8, !dbg !591
  %call370 = call i64 @__efi64_widen_efi_status(i64 noundef %161) #7, !dbg !590
  br label %cond.end371, !dbg !590

cond.end371:                                      ; preds = %do.end364, %cond.true356
  %cond372 = phi i64 [ %call359, %cond.true356 ], [ %call370, %do.end364 ], !dbg !590
  store i64 %cond372, ptr %tmp353, align 8, !dbg !590
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst352) #6, !dbg !596
  %162 = load i64, ptr %tmp353, align 8, !dbg !590
  store i64 %162, ptr %status, align 8, !dbg !597
  %163 = load i64, ptr %status, align 8, !dbg !598
  %cmp373 = icmp ne i64 %163, 0, !dbg !600
  br i1 %cmp373, label %if.then378, label %lor.lhs.false375, !dbg !601

lor.lhs.false375:                                 ; preds = %cond.end371
  %164 = load i16, ptr %command, align 2, !dbg !602
  %conv376 = zext i16 %164 to i32, !dbg !602
  %and = and i32 %conv376, 4, !dbg !603
  %tobool377 = icmp ne i32 %and, 0, !dbg !603
  br i1 %tobool377, label %if.end379, label %if.then378, !dbg !604

if.then378:                                       ; preds = %lor.lhs.false375, %cond.end371
  store i32 22, ptr %cleanup.dest.slot, align 4
  br label %cleanup408, !dbg !605

if.end379:                                        ; preds = %lor.lhs.false375
  %165 = load i16, ptr %command, align 2, !dbg !606
  %conv380 = zext i16 %165 to i32, !dbg !606
  %and381 = and i32 %conv380, -5, !dbg !606
  %conv382 = trunc i32 %and381 to i16, !dbg !606
  store i16 %conv382, ptr %command, align 2, !dbg !606
  call void @llvm.lifetime.start.p0(i64 8, ptr %__inst383) #6, !dbg !607
  call void @llvm.dbg.declare(metadata ptr %__inst383, metadata !418, metadata !DIExpression()), !dbg !607
  %166 = load ptr, ptr %pci280, align 8, !dbg !607
  store ptr %166, ptr %__inst383, align 8, !dbg !607
  %call385 = call zeroext i1 @efi_is_native() #7, !dbg !607
  br i1 %call385, label %cond.true387, label %cond.false390, !dbg !607

cond.true387:                                     ; preds = %if.end379
  %167 = load ptr, ptr %__inst383, align 8, !dbg !607
  %pci388 = getelementptr inbounds %struct.anon.2, ptr %167, i32 0, i32 4, !dbg !607
  %write = getelementptr inbounds %struct.efi_pci_io_protocol_config_access_t, ptr %pci388, i32 0, i32 1, !dbg !607
  %168 = load ptr, ptr %write, align 8, !dbg !607
  %169 = load ptr, ptr %__inst383, align 8, !dbg !607
  %call389 = call win64cc i64 %168(ptr noundef %169, i32 noundef 1, i32 noundef 4, i64 noundef 1, ptr noundef %command) #7, !dbg !607
  br label %cond.end401, !dbg !607

cond.false390:                                    ; preds = %if.end379
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad391) #6, !dbg !608
  call void @llvm.dbg.declare(metadata ptr %__pad391, metadata !420, metadata !DIExpression()), !dbg !608
  br label %do.body392, !dbg !609

do.body392:                                       ; preds = %cond.false390
  br label %do.cond393, !dbg !611

do.cond393:                                       ; preds = %do.body392
  br label %do.end394, !dbg !611

do.end394:                                        ; preds = %do.cond393
  %170 = load ptr, ptr %__inst383, align 8, !dbg !608
  %pci396 = getelementptr inbounds %struct.anon.3, ptr %170, i32 0, i32 4, !dbg !608
  %write397 = getelementptr inbounds %struct.efi_pci_io_protocol_access_32_t, ptr %pci396, i32 0, i32 1, !dbg !608
  %171 = load i32, ptr %write397, align 4, !dbg !608
  %172 = load ptr, ptr %__inst383, align 8, !dbg !608
  %arraydecay398 = getelementptr inbounds [3 x i64], ptr %__pad391, i64 0, i64 0, !dbg !608
  %call399 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %171, ptr noundef %172, i32 noundef 1, i32 noundef 4, i32 noundef 1, ptr noundef %command, ptr noundef %arraydecay398) #7, !dbg !608
  store i64 %call399, ptr %tmp395, align 8, !dbg !608
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad391) #6, !dbg !607
  %173 = load i64, ptr %tmp395, align 8, !dbg !608
  %call400 = call i64 @__efi64_widen_efi_status(i64 noundef %173) #7, !dbg !607
  br label %cond.end401, !dbg !607

cond.end401:                                      ; preds = %do.end394, %cond.true387
  %cond402 = phi i64 [ %call389, %cond.true387 ], [ %call400, %do.end394 ], !dbg !607
  store i64 %cond402, ptr %tmp384, align 8, !dbg !607
  call void @llvm.lifetime.end.p0(i64 8, ptr %__inst383) #6, !dbg !613
  %174 = load i64, ptr %tmp384, align 8, !dbg !607
  store i64 %174, ptr %status, align 8, !dbg !614
  %175 = load i64, ptr %status, align 8, !dbg !615
  %cmp403 = icmp ne i64 %175, 0, !dbg !617
  br i1 %cmp403, label %if.then405, label %if.end407, !dbg !618

if.then405:                                       ; preds = %cond.end401
  %call406 = call i32 (ptr, ...) @efi_printk(ptr noundef @.str.2) #7, !dbg !619
  br label %if.end407, !dbg !619

if.end407:                                        ; preds = %if.then405, %cond.end401
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !620
  br label %cleanup408, !dbg !620

cleanup408:                                       ; preds = %if.end407, %if.then378, %if.then350, %if.then321
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci280) #6, !dbg !620
  %cleanup.dest409 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest409, label %unreachable [
    i32 0, label %cleanup.cont410
    i32 22, label %for.inc411
  ]

cleanup.cont410:                                  ; preds = %cleanup408
  br label %for.inc411, !dbg !621

for.inc411:                                       ; preds = %cleanup.cont410, %cleanup408
  %176 = load i32, ptr %i, align 4, !dbg !556
  %inc412 = add nsw i32 %176, 1, !dbg !556
  store i32 %inc412, ptr %i, align 4, !dbg !556
  br label %for.cond255, !dbg !556, !llvm.loop !622

for.end413:                                       ; preds = %land.end278
  br label %free_handle, !dbg !623

free_handle:                                      ; preds = %for.end413, %if.then105
  call void @llvm.dbg.label(metadata !422), !dbg !624
  %call414 = call zeroext i1 @efi_is_native() #7, !dbg !625
  br i1 %call414, label %cond.true416, label %cond.false427, !dbg !625

cond.true416:                                     ; preds = %free_handle
  %call417 = call zeroext i1 @efi_is_native() #7, !dbg !625
  br i1 %call417, label %cond.true419, label %cond.false421, !dbg !625

cond.true419:                                     ; preds = %cond.true416
  %177 = load ptr, ptr @efi_system_table, align 8, !dbg !625
  %boottime420 = getelementptr inbounds %struct.anon.1, ptr %177, i32 0, i32 10, !dbg !625
  %178 = load ptr, ptr %boottime420, align 8, !dbg !625
  br label %cond.end424, !dbg !625

cond.false421:                                    ; preds = %cond.true416
  %179 = load ptr, ptr @efi_system_table, align 8, !dbg !625
  %boottime422 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %179, i32 0, i32 10, !dbg !625
  %180 = load i32, ptr %boottime422, align 4, !dbg !625
  %conv423 = zext i32 %180 to i64, !dbg !625
  %181 = inttoptr i64 %conv423 to ptr, !dbg !625
  br label %cond.end424, !dbg !625

cond.end424:                                      ; preds = %cond.false421, %cond.true419
  %cond425 = phi ptr [ %178, %cond.true419 ], [ %181, %cond.false421 ], !dbg !625
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond425, i32 0, i32 7, !dbg !625
  %182 = load ptr, ptr %free_pool, align 8, !dbg !625
  %183 = load ptr, ptr %pci_handle, align 8, !dbg !625
  %call426 = call win64cc i64 %182(ptr noundef %183) #7, !dbg !625
  br label %cond.end446, !dbg !625

cond.false427:                                    ; preds = %free_handle
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad428) #6, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %__pad428, metadata !423, metadata !DIExpression()), !dbg !626
  br label %do.body429, !dbg !627

do.body429:                                       ; preds = %cond.false427
  br label %do.cond430, !dbg !629

do.cond430:                                       ; preds = %do.body429
  br label %do.end431, !dbg !629

do.end431:                                        ; preds = %do.cond430
  %call433 = call zeroext i1 @efi_is_native() #7, !dbg !626
  br i1 %call433, label %cond.true435, label %cond.false437, !dbg !626

cond.true435:                                     ; preds = %do.end431
  %184 = load ptr, ptr @efi_system_table, align 8, !dbg !626
  %boottime436 = getelementptr inbounds %struct.anon.1, ptr %184, i32 0, i32 10, !dbg !626
  %185 = load ptr, ptr %boottime436, align 8, !dbg !626
  br label %cond.end440, !dbg !626

cond.false437:                                    ; preds = %do.end431
  %186 = load ptr, ptr @efi_system_table, align 8, !dbg !626
  %boottime438 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %186, i32 0, i32 10, !dbg !626
  %187 = load i32, ptr %boottime438, align 4, !dbg !626
  %conv439 = zext i32 %187 to i64, !dbg !626
  %188 = inttoptr i64 %conv439 to ptr, !dbg !626
  br label %cond.end440, !dbg !626

cond.end440:                                      ; preds = %cond.false437, %cond.true435
  %cond441 = phi ptr [ %185, %cond.true435 ], [ %188, %cond.false437 ], !dbg !626
  %free_pool442 = getelementptr inbounds %struct.anon.0, ptr %cond441, i32 0, i32 7, !dbg !626
  %189 = load i32, ptr %free_pool442, align 8, !dbg !626
  %190 = load ptr, ptr %pci_handle, align 8, !dbg !626
  %arraydecay443 = getelementptr inbounds [3 x i64], ptr %__pad428, i64 0, i64 0, !dbg !626
  %call444 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %189, ptr noundef %190, ptr noundef %arraydecay443) #7, !dbg !626
  store i64 %call444, ptr %tmp432, align 8, !dbg !626
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad428) #6, !dbg !625
  %191 = load i64, ptr %tmp432, align 8, !dbg !626
  %call445 = call i64 @__efi64_widen_efi_status(i64 noundef %191) #7, !dbg !625
  br label %cond.end446, !dbg !625

cond.end446:                                      ; preds = %cond.end440, %cond.end424
  %cond447 = phi i64 [ %call426, %cond.end424 ], [ %call445, %cond.end440 ], !dbg !625
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !631
  br label %cleanup448, !dbg !631

cleanup448:                                       ; preds = %cond.end446, %if.then65, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !631
  call void @llvm.lifetime.end.p0(i64 2, ptr %command) #6, !dbg !631
  call void @llvm.lifetime.end.p0(i64 2, ptr %class) #6, !dbg !631
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #6, !dbg !631
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #6, !dbg !631
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_handle) #6, !dbg !631
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_handle_size) #6, !dbg !631
  call void @llvm.lifetime.end.p0(i64 16, ptr %pci_proto) #6, !dbg !631
  %cleanup.dest456 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest456, label %unreachable [
    i32 0, label %cleanup.cont457
    i32 1, label %cleanup.cont457
  ]

cleanup.cont457:                                  ; preds = %cleanup448, %cleanup448
  ret void, !dbg !631

unreachable:                                      ; preds = %cleanup448, %cleanup408, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_native() #4 !dbg !632 {
entry:
  %call = call zeroext i1 @efi_is_64bit() #7, !dbg !636
  ret i1 %call, !dbg !637
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__efi64_widen_efi_status(i64 noundef %status) #4 !dbg !638 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !642, metadata !DIExpression()), !dbg !643
  %0 = load i64, ptr %status.addr, align 8, !dbg !644
  %conv = trunc i64 %0 to i32, !dbg !644
  %call = call i32 @rol32(i32 noundef %conv, i32 noundef 1) #7, !dbg !645
  %conv1 = zext i32 %call to i64, !dbg !645
  %call2 = call i64 @ror64(i64 noundef %conv1, i32 noundef 1) #7, !dbg !646
  ret i64 %call2, !dbg !647
}

; Function Attrs: noredzone
declare !dbg !648 hidden i64 @__efi64_thunk(i32 noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noredzone
declare !dbg !651 hidden i32 @efi_printk(ptr noundef, ...) #5

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @efi64_zero_upper(ptr noundef %p) #4 !dbg !656 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !660, metadata !DIExpression()), !dbg !661
  %0 = load ptr, ptr %p.addr, align 8, !dbg !662
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1, !dbg !663
  store i32 0, ptr %arrayidx, align 4, !dbg !664
  %1 = load ptr, ptr %p.addr, align 8, !dbg !665
  ret ptr %1, !dbg !666
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #4 !dbg !667 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !668, !range !669, !noundef !670
  %tobool = trunc i8 %0 to i1, !dbg !668
  ret i1 %tobool, !dbg !671
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #4 !dbg !672 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !677, metadata !DIExpression()), !dbg !679
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !678, metadata !DIExpression()), !dbg !680
  %0 = load i64, ptr %word.addr, align 8, !dbg !681
  %1 = load i32, ptr %shift.addr, align 4, !dbg !682
  %and = and i32 %1, 63, !dbg !683
  %sh_prom = zext i32 %and to i64, !dbg !684
  %shr = lshr i64 %0, %sh_prom, !dbg !684
  %2 = load i64, ptr %word.addr, align 8, !dbg !685
  %3 = load i32, ptr %shift.addr, align 4, !dbg !686
  %sub = sub i32 0, %3, !dbg !687
  %and1 = and i32 %sub, 63, !dbg !688
  %sh_prom2 = zext i32 %and1 to i64, !dbg !689
  %shl = shl i64 %2, %sh_prom2, !dbg !689
  %or = or i64 %shr, %shl, !dbg !690
  ret i64 %or, !dbg !691
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #4 !dbg !692 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !696, metadata !DIExpression()), !dbg !698
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !697, metadata !DIExpression()), !dbg !699
  %0 = load i32, ptr %word.addr, align 4, !dbg !700
  %1 = load i32, ptr %shift.addr, align 4, !dbg !701
  %and = and i32 %1, 31, !dbg !702
  %shl = shl i32 %0, %and, !dbg !703
  %2 = load i32, ptr %word.addr, align 4, !dbg !704
  %3 = load i32, ptr %shift.addr, align 4, !dbg !705
  %sub = sub i32 0, %3, !dbg !706
  %and1 = and i32 %sub, 31, !dbg !707
  %shr = lshr i32 %2, %and1, !dbg !708
  %or = or i32 %shl, %shr, !dbg !709
  ret i32 %or, !dbg !710
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/firmware/efi/libstub/pci.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5cf40ba88c277175c073a07106b5133e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 44)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 53)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 45)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.pci.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/pci\22 -D KBUILD_BASENAME=\22pci\22 -D KBUILD_MODNAME=\22pci\22 -D __KBUILD_MODNAME=kmod_pci -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/pci.ll drivers/firmware/efi/libstub/pci.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !46, globals: !288, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19, !26, !31}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 243, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !{!23, !24, !25}
!23 = !DIEnumerator(name: "EfiTimerCancel", value: 0)
!24 = !DIEnumerator(name: "EfiTimerPeriodic", value: 1)
!25 = !DIEnumerator(name: "EfiTimerRelative", value: 2)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 10, baseType: !21, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "false", value: 0)
!30 = !DIEnumerator(name: "true", value: 1)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 686, baseType: !21, size: 32, elements: !32)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!33 = !DIEnumerator(name: "EfiPciIoWidthUint8", value: 0)
!34 = !DIEnumerator(name: "EfiPciIoWidthUint16", value: 1)
!35 = !DIEnumerator(name: "EfiPciIoWidthUint32", value: 2)
!36 = !DIEnumerator(name: "EfiPciIoWidthUint64", value: 3)
!37 = !DIEnumerator(name: "EfiPciIoWidthFifoUint8", value: 4)
!38 = !DIEnumerator(name: "EfiPciIoWidthFifoUint16", value: 5)
!39 = !DIEnumerator(name: "EfiPciIoWidthFifoUint32", value: 6)
!40 = !DIEnumerator(name: "EfiPciIoWidthFifoUint64", value: 7)
!41 = !DIEnumerator(name: "EfiPciIoWidthFillUint8", value: 8)
!42 = !DIEnumerator(name: "EfiPciIoWidthFillUint16", value: 9)
!43 = !DIEnumerator(name: "EfiPciIoWidthFillUint32", value: 10)
!44 = !DIEnumerator(name: "EfiPciIoWidthFillUint64", value: 11)
!45 = !DIEnumerator(name: "EfiPciIoWidthMaximum", value: 12)
!46 = !{!47, !79, !72, !97, !134, !92}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_boot_services_t", file: !49, line: 250, baseType: !50)
!49 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!50 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_boot_services", file: !20, line: 252, size: 3008, elements: !51)
!51 = !{!52, !240}
!52 = !DIDerivedType(tag: DW_TAG_member, scope: !50, file: !20, line: 253, baseType: !53, size: 3008)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !20, line: 253, size: 3008, elements: !54)
!54 = !{!55, !71, !73, !74, !83, !87, !93, !98, !102, !112, !117, !121, !122, !126, !127, !128, !129, !130, !147, !148, !149, !154, !170, !174, !181, !188, !192, !196, !200, !201, !205, !206, !207, !211, !212, !213, !214, !215, !216, !220, !224, !228, !229, !235, !239}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !53, file: !20, line: 254, baseType: !56, size: 192)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !49, line: 90, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 84, size: 192, elements: !58)
!58 = !{!59, !65, !68, !69, !70}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !57, file: !49, line: 85, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !61, line: 23, baseType: !62)
!61 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !63, line: 31, baseType: !64)
!63 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!64 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !57, file: !49, line: 86, baseType: !66, size: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !61, line: 21, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !63, line: 27, baseType: !21)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !57, file: !49, line: 87, baseType: !66, size: 32, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !57, file: !49, line: 88, baseType: !66, size: 32, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !57, file: !49, line: 89, baseType: !66, size: 32, offset: 160)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !53, file: !20, line: 255, baseType: !72, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !53, file: !20, line: 256, baseType: !72, size: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !53, file: !20, line: 257, baseType: !75, size: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !77)
!77 = !{!78, !80, !80, !79, !81}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !49, line: 47, baseType: !79)
!79 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_physical_addr_t", file: !49, line: 50, baseType: !60)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !53, file: !20, line: 259, baseType: !84, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !86)
!86 = !{!78, !82, !79}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !53, file: !20, line: 261, baseType: !88, size: 64, offset: 448)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !90)
!90 = !{!78, !91, !72, !91, !91, !92}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !53, file: !20, line: 264, baseType: !94, size: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !96)
!96 = !{!78, !80, !79, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !53, file: !20, line: 266, baseType: !99, size: 64, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !101)
!101 = !{!78, !72}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !53, file: !20, line: 267, baseType: !103, size: 64, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !105)
!105 = !{!78, !66, !79, !106, !72, !111}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_notify_t", file: !20, line: 212, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !109)
!109 = !{null, !110, !72}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_t", file: !20, line: 210, baseType: !72)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !53, file: !20, line: 270, baseType: !113, size: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !115)
!115 = !{!78, !110, !116, !60}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !20, line: 247, baseType: !19)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !53, file: !20, line: 272, baseType: !118, size: 64, offset: 768)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !120)
!120 = !{!78, !79, !111, !91}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !53, file: !20, line: 275, baseType: !72, size: 64, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !53, file: !20, line: 276, baseType: !123, size: 64, offset: 896)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !125)
!125 = !{!78, !110}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !53, file: !20, line: 277, baseType: !72, size: 64, offset: 960)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !53, file: !20, line: 278, baseType: !72, size: 64, offset: 1024)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !53, file: !20, line: 279, baseType: !72, size: 64, offset: 1088)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !53, file: !20, line: 280, baseType: !72, size: 64, offset: 1152)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !53, file: !20, line: 281, baseType: !131, size: 64, offset: 1216)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !133)
!133 = !{!78, !134, !135, !97}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_handle_t", file: !49, line: 51, baseType: !72)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !49, line: 74, baseType: !137, align: 32)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !138, line: 17, baseType: !139)
!138 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 15, size: 128, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !139, file: !138, line: 16, baseType: !142, size: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !145)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !63, line: 21, baseType: !144)
!144 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!145 = !{!146}
!146 = !DISubrange(count: 16)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !53, file: !20, line: 283, baseType: !72, size: 64, offset: 1280)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !53, file: !20, line: 284, baseType: !72, size: 64, offset: 1344)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !53, file: !20, line: 285, baseType: !150, size: 64, offset: 1408)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !152)
!152 = !{!78, !80, !135, !72, !91, !153}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !53, file: !20, line: 288, baseType: !155, size: 64, offset: 1472)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !157)
!157 = !{!78, !135, !158, !153}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_device_path_protocol_t", file: !20, line: 176, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_generic_dev_path", file: !49, line: 985, size: 32, elements: !162)
!162 = !{!163, !165, !166}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !161, file: !49, line: 986, baseType: !164, size: 8)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !61, line: 17, baseType: !143)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sub_type", scope: !161, file: !49, line: 987, baseType: !164, size: 8, offset: 8)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !161, file: !49, line: 988, baseType: !167, size: 16, offset: 16)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !61, line: 19, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !63, line: 24, baseType: !169)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !53, file: !20, line: 291, baseType: !171, size: 64, offset: 1536)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !173)
!173 = !{!78, !135, !72}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !53, file: !20, line: 293, baseType: !175, size: 64, offset: 1600)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !177)
!177 = !{!78, !178, !134, !159, !72, !79, !153}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !179, line: 35, baseType: !180)
!179 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!180 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !53, file: !20, line: 297, baseType: !182, size: 64, offset: 1664)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !184)
!184 = !{!78, !134, !91, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !49, line: 49, baseType: !167)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !53, file: !20, line: 299, baseType: !189, size: 64, offset: 1728)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !191)
!191 = !{!78, !134, !78, !79, !186}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !53, file: !20, line: 303, baseType: !193, size: 64, offset: 1792)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !195)
!195 = !{!78, !134}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !53, file: !20, line: 304, baseType: !197, size: 64, offset: 1856)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !199)
!199 = !{!78, !134, !79}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !53, file: !20, line: 306, baseType: !72, size: 64, offset: 1920)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !53, file: !20, line: 307, baseType: !202, size: 64, offset: 1984)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !204)
!204 = !{!78, !79}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !53, file: !20, line: 308, baseType: !72, size: 64, offset: 2048)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !53, file: !20, line: 309, baseType: !72, size: 64, offset: 2112)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !53, file: !20, line: 310, baseType: !208, size: 64, offset: 2176)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !210)
!210 = !{!78, !134, !134, !134}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !53, file: !20, line: 313, baseType: !72, size: 64, offset: 2240)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !53, file: !20, line: 314, baseType: !72, size: 64, offset: 2304)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !53, file: !20, line: 315, baseType: !72, size: 64, offset: 2368)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !53, file: !20, line: 316, baseType: !72, size: 64, offset: 2432)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !53, file: !20, line: 317, baseType: !72, size: 64, offset: 2496)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !53, file: !20, line: 318, baseType: !217, size: 64, offset: 2560)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !219)
!219 = !{!78, !135, !72, !97}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !53, file: !20, line: 320, baseType: !221, size: 64, offset: 2624)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !223)
!223 = !{!78, !153, null}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !53, file: !20, line: 321, baseType: !225, size: 64, offset: 2688)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !227)
!227 = !{!78, !134, null}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !53, file: !20, line: 322, baseType: !72, size: 64, offset: 2752)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !53, file: !20, line: 323, baseType: !230, size: 64, offset: 2816)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !232)
!232 = !{null, !72, !233, !79}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !53, file: !20, line: 324, baseType: !236, size: 64, offset: 2880)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !238)
!238 = !{null, !72, !79, !144}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !53, file: !20, line: 325, baseType: !72, size: 64, offset: 2944)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !50, file: !20, line: 373, baseType: !241, size: 1600)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !20, line: 327, size: 1600, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !241, file: !20, line: 328, baseType: !56, size: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !241, file: !20, line: 329, baseType: !66, size: 32, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !241, file: !20, line: 330, baseType: !66, size: 32, offset: 224)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !241, file: !20, line: 331, baseType: !66, size: 32, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !241, file: !20, line: 332, baseType: !66, size: 32, offset: 288)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !241, file: !20, line: 333, baseType: !66, size: 32, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !241, file: !20, line: 334, baseType: !66, size: 32, offset: 352)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !241, file: !20, line: 335, baseType: !66, size: 32, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !241, file: !20, line: 336, baseType: !66, size: 32, offset: 416)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !241, file: !20, line: 337, baseType: !66, size: 32, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !241, file: !20, line: 338, baseType: !66, size: 32, offset: 480)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !241, file: !20, line: 339, baseType: !66, size: 32, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !241, file: !20, line: 340, baseType: !66, size: 32, offset: 544)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !241, file: !20, line: 341, baseType: !66, size: 32, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !241, file: !20, line: 342, baseType: !66, size: 32, offset: 608)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !241, file: !20, line: 343, baseType: !66, size: 32, offset: 640)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !241, file: !20, line: 344, baseType: !66, size: 32, offset: 672)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !241, file: !20, line: 345, baseType: !66, size: 32, offset: 704)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !241, file: !20, line: 346, baseType: !66, size: 32, offset: 736)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !241, file: !20, line: 347, baseType: !66, size: 32, offset: 768)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !241, file: !20, line: 348, baseType: !66, size: 32, offset: 800)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !241, file: !20, line: 349, baseType: !66, size: 32, offset: 832)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !241, file: !20, line: 350, baseType: !66, size: 32, offset: 864)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !241, file: !20, line: 351, baseType: !66, size: 32, offset: 896)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !241, file: !20, line: 352, baseType: !66, size: 32, offset: 928)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !241, file: !20, line: 353, baseType: !66, size: 32, offset: 960)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !241, file: !20, line: 354, baseType: !66, size: 32, offset: 992)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !241, file: !20, line: 355, baseType: !66, size: 32, offset: 1024)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !241, file: !20, line: 356, baseType: !66, size: 32, offset: 1056)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !241, file: !20, line: 357, baseType: !66, size: 32, offset: 1088)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !241, file: !20, line: 358, baseType: !66, size: 32, offset: 1120)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !241, file: !20, line: 359, baseType: !66, size: 32, offset: 1152)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !241, file: !20, line: 360, baseType: !66, size: 32, offset: 1184)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !241, file: !20, line: 361, baseType: !66, size: 32, offset: 1216)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !241, file: !20, line: 362, baseType: !66, size: 32, offset: 1248)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !241, file: !20, line: 363, baseType: !66, size: 32, offset: 1280)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !241, file: !20, line: 364, baseType: !66, size: 32, offset: 1312)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !241, file: !20, line: 365, baseType: !66, size: 32, offset: 1344)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !241, file: !20, line: 366, baseType: !66, size: 32, offset: 1376)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !241, file: !20, line: 367, baseType: !66, size: 32, offset: 1408)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !241, file: !20, line: 368, baseType: !66, size: 32, offset: 1440)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !241, file: !20, line: 369, baseType: !66, size: 32, offset: 1472)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !241, file: !20, line: 370, baseType: !66, size: 32, offset: 1504)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !241, file: !20, line: 371, baseType: !66, size: 32, offset: 1536)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !241, file: !20, line: 372, baseType: !66, size: 32, offset: 1568)
!288 = !{!0, !7, !12}
!289 = !{i32 7, !"Dwarf Version", i32 5}
!290 = !{i32 2, !"Debug Info Version", i32 3}
!291 = !{i32 1, !"wchar_size", i32 2}
!292 = !{i32 8, !"PIC Level", i32 2}
!293 = !{i32 1, !"Code Model", i32 1}
!294 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!295 = distinct !DISubprogram(name: "efi_pci_disable_bridge_busmaster", scope: !2, file: !2, line: 16, type: !296, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{null}
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307, !312, !314, !316, !388, !389, !390, !391, !392, !394, !396, !398, !400, !402, !404, !408, !410, !412, !414, !416, !418, !420, !422, !423}
!299 = !DILocalVariable(name: "pci_proto", scope: !295, file: !2, line: 18, type: !136)
!300 = !DILocalVariable(name: "pci_handle_size", scope: !295, file: !2, line: 19, type: !79)
!301 = !DILocalVariable(name: "pci_handle", scope: !295, file: !2, line: 20, type: !153)
!302 = !DILocalVariable(name: "handle", scope: !295, file: !2, line: 21, type: !134)
!303 = !DILocalVariable(name: "status", scope: !295, file: !2, line: 22, type: !78)
!304 = !DILocalVariable(name: "class", scope: !295, file: !2, line: 23, type: !167)
!305 = !DILocalVariable(name: "command", scope: !295, file: !2, line: 23, type: !167)
!306 = !DILocalVariable(name: "i", scope: !295, file: !2, line: 24, type: !80)
!307 = !DILocalVariable(name: "__pad", scope: !308, file: !2, line: 26, type: !309)
!308 = distinct !DILexicalBlock(scope: !295, file: !2, line: 26, column: 11)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 192, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 3)
!312 = !DILocalVariable(name: "__pad", scope: !313, file: !2, line: 35, type: !309)
!313 = distinct !DILexicalBlock(scope: !295, file: !2, line: 35, column: 11)
!314 = !DILocalVariable(name: "__pad", scope: !315, file: !2, line: 42, type: !309)
!315 = distinct !DILexicalBlock(scope: !295, file: !2, line: 42, column: 11)
!316 = !DILocalVariable(name: "pci", scope: !317, file: !2, line: 50, type: !320)
!317 = distinct !DILexicalBlock(scope: !318, file: !2, line: 49, column: 62)
!318 = distinct !DILexicalBlock(scope: !319, file: !2, line: 49, column: 2)
!319 = distinct !DILexicalBlock(scope: !295, file: !2, line: 49, column: 2)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_pci_io_protocol_t", file: !20, line: 716, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_pci_io_protocol", file: !20, line: 735, size: 1280, elements: !323)
!323 = !{!324, !363}
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !20, line: 736, baseType: !325, size: 1280)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !20, line: 736, size: 1280, elements: !326)
!326 = !{!327, !328, !329, !335, !336, !347, !348, !349, !350, !351, !352, !353, !357, !358, !359, !360, !362}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "poll_mem", scope: !325, file: !20, line: 737, baseType: !72, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "poll_io", scope: !325, file: !20, line: 738, baseType: !72, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !325, file: !20, line: 739, baseType: !330, size: 128, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_pci_io_protocol_access_t", file: !20, line: 728, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 725, size: 128, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !331, file: !20, line: 726, baseType: !72, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !331, file: !20, line: 727, baseType: !72, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !325, file: !20, line: 740, baseType: !330, size: 128, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !325, file: !20, line: 741, baseType: !337, size: 128, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_pci_io_protocol_config_access_t", file: !20, line: 733, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 730, size: 128, elements: !339)
!339 = !{!340, !346}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !338, file: !20, line: 731, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_pci_io_protocol_cfg_t", file: !20, line: 719, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !344)
!344 = !{!78, !320, !345, !66, !79, !72}
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_PCI_IO_PROTOCOL_WIDTH", file: !20, line: 700, baseType: !31)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !338, file: !20, line: 732, baseType: !341, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !325, file: !20, line: 742, baseType: !72, size: 64, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !325, file: !20, line: 743, baseType: !72, size: 64, offset: 576)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !325, file: !20, line: 744, baseType: !72, size: 64, offset: 640)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_buffer", scope: !325, file: !20, line: 745, baseType: !72, size: 64, offset: 704)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffer", scope: !325, file: !20, line: 746, baseType: !72, size: 64, offset: 768)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !325, file: !20, line: 747, baseType: !72, size: 64, offset: 832)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "get_location", scope: !325, file: !20, line: 748, baseType: !354, size: 64, offset: 896)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !356)
!356 = !{!78, !320, !91, !91, !91, !91}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !325, file: !20, line: 753, baseType: !72, size: 64, offset: 960)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "get_bar_attributes", scope: !325, file: !20, line: 754, baseType: !72, size: 64, offset: 1024)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "set_bar_attributes", scope: !325, file: !20, line: 755, baseType: !72, size: 64, offset: 1088)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "romsize", scope: !325, file: !20, line: 756, baseType: !361, size: 64, offset: 1152)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !179, line: 113, baseType: !60)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "romimage", scope: !325, file: !20, line: 757, baseType: !72, size: 64, offset: 1216)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !322, file: !20, line: 777, baseType: !364, size: 704)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !20, line: 759, size: 704, elements: !365)
!365 = !{!366, !367, !368, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "poll_mem", scope: !364, file: !20, line: 760, baseType: !66, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "poll_io", scope: !364, file: !20, line: 761, baseType: !66, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !364, file: !20, line: 762, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_pci_io_protocol_access_32_t", file: !20, line: 714, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 711, size: 64, elements: !371)
!371 = !{!372, !373}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !370, file: !20, line: 712, baseType: !66, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !370, file: !20, line: 713, baseType: !66, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !364, file: !20, line: 763, baseType: !369, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !364, file: !20, line: 764, baseType: !369, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !364, file: !20, line: 765, baseType: !66, size: 32, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !364, file: !20, line: 766, baseType: !66, size: 32, offset: 288)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !364, file: !20, line: 767, baseType: !66, size: 32, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_buffer", scope: !364, file: !20, line: 768, baseType: !66, size: 32, offset: 352)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffer", scope: !364, file: !20, line: 769, baseType: !66, size: 32, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !364, file: !20, line: 770, baseType: !66, size: 32, offset: 416)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "get_location", scope: !364, file: !20, line: 771, baseType: !66, size: 32, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !364, file: !20, line: 772, baseType: !66, size: 32, offset: 480)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "get_bar_attributes", scope: !364, file: !20, line: 773, baseType: !66, size: 32, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "set_bar_attributes", scope: !364, file: !20, line: 774, baseType: !66, size: 32, offset: 544)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "romsize", scope: !364, file: !20, line: 775, baseType: !60, size: 64, offset: 576)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "romimage", scope: !364, file: !20, line: 776, baseType: !66, size: 32, offset: 640)
!388 = !DILocalVariable(name: "segment_nr", scope: !317, file: !2, line: 51, type: !79)
!389 = !DILocalVariable(name: "bus_nr", scope: !317, file: !2, line: 51, type: !79)
!390 = !DILocalVariable(name: "device_nr", scope: !317, file: !2, line: 51, type: !79)
!391 = !DILocalVariable(name: "func_nr", scope: !317, file: !2, line: 51, type: !79)
!392 = !DILocalVariable(name: "__pad", scope: !393, file: !2, line: 53, type: !309)
!393 = distinct !DILexicalBlock(scope: !317, file: !2, line: 53, column: 12)
!394 = !DILocalVariable(name: "__inst", scope: !395, file: !2, line: 62, type: !320)
!395 = distinct !DILexicalBlock(scope: !317, file: !2, line: 62, column: 12)
!396 = !DILocalVariable(name: "__pad", scope: !397, file: !2, line: 62, type: !309)
!397 = distinct !DILexicalBlock(scope: !395, file: !2, line: 62, column: 12)
!398 = !DILocalVariable(name: "__inst", scope: !399, file: !2, line: 76, type: !320)
!399 = distinct !DILexicalBlock(scope: !317, file: !2, line: 76, column: 12)
!400 = !DILocalVariable(name: "__pad", scope: !401, file: !2, line: 76, type: !309)
!401 = distinct !DILexicalBlock(scope: !399, file: !2, line: 76, column: 12)
!402 = !DILocalVariable(name: "__pad", scope: !403, file: !2, line: 82, type: !309)
!403 = distinct !DILexicalBlock(scope: !317, file: !2, line: 82, column: 3)
!404 = !DILocalVariable(name: "pci", scope: !405, file: !2, line: 86, type: !320)
!405 = distinct !DILexicalBlock(scope: !406, file: !2, line: 85, column: 62)
!406 = distinct !DILexicalBlock(scope: !407, file: !2, line: 85, column: 2)
!407 = distinct !DILexicalBlock(scope: !295, file: !2, line: 85, column: 2)
!408 = !DILocalVariable(name: "__pad", scope: !409, file: !2, line: 88, type: !309)
!409 = distinct !DILexicalBlock(scope: !405, file: !2, line: 88, column: 12)
!410 = !DILocalVariable(name: "__inst", scope: !411, file: !2, line: 93, type: !320)
!411 = distinct !DILexicalBlock(scope: !405, file: !2, line: 93, column: 12)
!412 = !DILocalVariable(name: "__pad", scope: !413, file: !2, line: 93, type: !309)
!413 = distinct !DILexicalBlock(scope: !411, file: !2, line: 93, column: 12)
!414 = !DILocalVariable(name: "__inst", scope: !415, file: !2, line: 100, type: !320)
!415 = distinct !DILexicalBlock(scope: !405, file: !2, line: 100, column: 12)
!416 = !DILocalVariable(name: "__pad", scope: !417, file: !2, line: 100, type: !309)
!417 = distinct !DILexicalBlock(scope: !415, file: !2, line: 100, column: 12)
!418 = !DILocalVariable(name: "__inst", scope: !419, file: !2, line: 106, type: !320)
!419 = distinct !DILexicalBlock(scope: !405, file: !2, line: 106, column: 12)
!420 = !DILocalVariable(name: "__pad", scope: !421, file: !2, line: 106, type: !309)
!421 = distinct !DILexicalBlock(scope: !419, file: !2, line: 106, column: 12)
!422 = !DILabel(scope: !295, name: "free_handle", file: !2, line: 112)
!423 = !DILocalVariable(name: "__pad", scope: !424, file: !2, line: 113, type: !309)
!424 = distinct !DILexicalBlock(scope: !295, file: !2, line: 113, column: 2)
!425 = !DILocation(line: 18, column: 2, scope: !295)
!426 = !DILocation(line: 18, column: 13, scope: !295)
!427 = !DILocation(line: 19, column: 2, scope: !295)
!428 = !DILocation(line: 19, column: 16, scope: !295)
!429 = !DILocation(line: 20, column: 2, scope: !295)
!430 = !DILocation(line: 20, column: 16, scope: !295)
!431 = !DILocation(line: 21, column: 2, scope: !295)
!432 = !DILocation(line: 21, column: 15, scope: !295)
!433 = !DILocation(line: 22, column: 2, scope: !295)
!434 = !DILocation(line: 22, column: 15, scope: !295)
!435 = !DILocation(line: 23, column: 2, scope: !295)
!436 = !DILocation(line: 23, column: 6, scope: !295)
!437 = !DILocation(line: 23, column: 13, scope: !295)
!438 = !DILocation(line: 24, column: 2, scope: !295)
!439 = !DILocation(line: 24, column: 6, scope: !295)
!440 = !DILocation(line: 26, column: 11, scope: !295)
!441 = !DILocation(line: 26, column: 11, scope: !308)
!442 = !DILocation(line: 26, column: 11, scope: !443)
!443 = distinct !DILexicalBlock(scope: !308, file: !2, line: 26, column: 11)
!444 = !DILocation(line: 26, column: 11, scope: !445)
!445 = distinct !DILexicalBlock(scope: !443, file: !2, line: 26, column: 11)
!446 = !DILocation(line: 26, column: 9, scope: !295)
!447 = !DILocation(line: 29, column: 6, scope: !448)
!448 = distinct !DILexicalBlock(scope: !295, file: !2, line: 29, column: 6)
!449 = !DILocation(line: 29, column: 13, scope: !448)
!450 = !DILocation(line: 29, column: 6, scope: !295)
!451 = !DILocation(line: 30, column: 7, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !2, line: 30, column: 7)
!453 = distinct !DILexicalBlock(scope: !448, file: !2, line: 29, column: 38)
!454 = !DILocation(line: 30, column: 14, scope: !452)
!455 = !DILocation(line: 30, column: 29, scope: !452)
!456 = !DILocation(line: 30, column: 32, scope: !452)
!457 = !DILocation(line: 30, column: 39, scope: !452)
!458 = !DILocation(line: 30, column: 7, scope: !453)
!459 = !DILocation(line: 31, column: 4, scope: !452)
!460 = !DILocation(line: 32, column: 3, scope: !453)
!461 = !DILocation(line: 35, column: 11, scope: !295)
!462 = !DILocation(line: 35, column: 11, scope: !313)
!463 = !DILocation(line: 35, column: 11, scope: !464)
!464 = distinct !DILexicalBlock(scope: !313, file: !2, line: 35, column: 11)
!465 = !DILocation(line: 35, column: 11, scope: !466)
!466 = distinct !DILexicalBlock(scope: !464, file: !2, line: 35, column: 11)
!467 = !DILocation(line: 35, column: 9, scope: !295)
!468 = !DILocation(line: 37, column: 6, scope: !469)
!469 = distinct !DILexicalBlock(scope: !295, file: !2, line: 37, column: 6)
!470 = !DILocation(line: 37, column: 13, scope: !469)
!471 = !DILocation(line: 37, column: 6, scope: !295)
!472 = !DILocation(line: 38, column: 3, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !2, line: 37, column: 29)
!474 = !DILocation(line: 39, column: 3, scope: !473)
!475 = !DILocation(line: 42, column: 11, scope: !295)
!476 = !DILocation(line: 42, column: 11, scope: !315)
!477 = !DILocation(line: 42, column: 11, scope: !478)
!478 = distinct !DILexicalBlock(scope: !315, file: !2, line: 42, column: 11)
!479 = !DILocation(line: 42, column: 11, scope: !480)
!480 = distinct !DILexicalBlock(scope: !478, file: !2, line: 42, column: 11)
!481 = !DILocation(line: 42, column: 9, scope: !295)
!482 = !DILocation(line: 44, column: 6, scope: !483)
!483 = distinct !DILexicalBlock(scope: !295, file: !2, line: 44, column: 6)
!484 = !DILocation(line: 44, column: 13, scope: !483)
!485 = !DILocation(line: 44, column: 6, scope: !295)
!486 = !DILocation(line: 45, column: 3, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !2, line: 44, column: 29)
!488 = !DILocation(line: 46, column: 3, scope: !487)
!489 = !DILocation(line: 49, column: 2, scope: !319)
!490 = !DILocation(line: 49, column: 2, scope: !318)
!491 = !DILocation(line: 0, scope: !318)
!492 = !DILocation(line: 50, column: 3, scope: !317)
!493 = !DILocation(line: 50, column: 26, scope: !317)
!494 = !DILocation(line: 51, column: 3, scope: !317)
!495 = !DILocation(line: 51, column: 17, scope: !317)
!496 = !DILocation(line: 51, column: 29, scope: !317)
!497 = !DILocation(line: 51, column: 37, scope: !317)
!498 = !DILocation(line: 51, column: 48, scope: !317)
!499 = !DILocation(line: 53, column: 12, scope: !317)
!500 = !DILocation(line: 53, column: 12, scope: !393)
!501 = !DILocation(line: 53, column: 12, scope: !502)
!502 = distinct !DILexicalBlock(scope: !393, file: !2, line: 53, column: 12)
!503 = !DILocation(line: 53, column: 12, scope: !504)
!504 = distinct !DILexicalBlock(scope: !502, file: !2, line: 53, column: 12)
!505 = !DILocation(line: 53, column: 10, scope: !317)
!506 = !DILocation(line: 55, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !317, file: !2, line: 55, column: 7)
!508 = !DILocation(line: 55, column: 14, scope: !507)
!509 = !DILocation(line: 55, column: 7, scope: !317)
!510 = !DILocation(line: 56, column: 4, scope: !507)
!511 = !DILocation(line: 62, column: 12, scope: !395)
!512 = !DILocation(line: 62, column: 12, scope: !397)
!513 = !DILocation(line: 62, column: 12, scope: !514)
!514 = distinct !DILexicalBlock(scope: !397, file: !2, line: 62, column: 12)
!515 = !DILocation(line: 62, column: 12, scope: !516)
!516 = distinct !DILexicalBlock(scope: !514, file: !2, line: 62, column: 12)
!517 = !DILocation(line: 62, column: 12, scope: !317)
!518 = !DILocation(line: 62, column: 10, scope: !317)
!519 = !DILocation(line: 64, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !317, file: !2, line: 64, column: 7)
!521 = !DILocation(line: 64, column: 14, scope: !520)
!522 = !DILocation(line: 64, column: 29, scope: !520)
!523 = !DILocation(line: 64, column: 32, scope: !520)
!524 = !DILocation(line: 64, column: 39, scope: !520)
!525 = !DILocation(line: 64, column: 7, scope: !317)
!526 = !DILocation(line: 65, column: 4, scope: !520)
!527 = !DILocation(line: 76, column: 12, scope: !399)
!528 = !DILocation(line: 76, column: 12, scope: !401)
!529 = !DILocation(line: 76, column: 12, scope: !530)
!530 = distinct !DILexicalBlock(scope: !401, file: !2, line: 76, column: 12)
!531 = !DILocation(line: 76, column: 12, scope: !532)
!532 = distinct !DILexicalBlock(scope: !530, file: !2, line: 76, column: 12)
!533 = !DILocation(line: 76, column: 12, scope: !317)
!534 = !DILocation(line: 76, column: 10, scope: !317)
!535 = !DILocation(line: 78, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !317, file: !2, line: 78, column: 7)
!537 = !DILocation(line: 78, column: 14, scope: !536)
!538 = !DILocation(line: 78, column: 29, scope: !536)
!539 = !DILocation(line: 78, column: 32, scope: !536)
!540 = !DILocation(line: 78, column: 38, scope: !536)
!541 = !DILocation(line: 78, column: 7, scope: !317)
!542 = !DILocation(line: 79, column: 4, scope: !536)
!543 = !DILocation(line: 82, column: 3, scope: !317)
!544 = !DILocation(line: 82, column: 3, scope: !403)
!545 = !DILocation(line: 82, column: 3, scope: !546)
!546 = distinct !DILexicalBlock(scope: !403, file: !2, line: 82, column: 3)
!547 = !DILocation(line: 82, column: 3, scope: !548)
!548 = distinct !DILexicalBlock(scope: !546, file: !2, line: 82, column: 3)
!549 = !DILocation(line: 83, column: 2, scope: !318)
!550 = !DILocation(line: 83, column: 2, scope: !317)
!551 = distinct !{!551, !489, !552, !553, !554}
!552 = !DILocation(line: 83, column: 2, scope: !319)
!553 = !{!"llvm.loop.mustprogress"}
!554 = !{!"llvm.loop.unroll.disable"}
!555 = !DILocation(line: 85, column: 2, scope: !407)
!556 = !DILocation(line: 85, column: 2, scope: !406)
!557 = !DILocation(line: 0, scope: !406)
!558 = !DILocation(line: 86, column: 3, scope: !405)
!559 = !DILocation(line: 86, column: 26, scope: !405)
!560 = !DILocation(line: 88, column: 12, scope: !405)
!561 = !DILocation(line: 88, column: 12, scope: !409)
!562 = !DILocation(line: 88, column: 12, scope: !563)
!563 = distinct !DILexicalBlock(scope: !409, file: !2, line: 88, column: 12)
!564 = !DILocation(line: 88, column: 12, scope: !565)
!565 = distinct !DILexicalBlock(scope: !563, file: !2, line: 88, column: 12)
!566 = !DILocation(line: 88, column: 10, scope: !405)
!567 = !DILocation(line: 90, column: 7, scope: !568)
!568 = distinct !DILexicalBlock(scope: !405, file: !2, line: 90, column: 7)
!569 = !DILocation(line: 90, column: 14, scope: !568)
!570 = !DILocation(line: 90, column: 29, scope: !568)
!571 = !DILocation(line: 90, column: 33, scope: !568)
!572 = !DILocation(line: 90, column: 7, scope: !405)
!573 = !DILocation(line: 91, column: 4, scope: !568)
!574 = !DILocation(line: 93, column: 12, scope: !411)
!575 = !DILocation(line: 93, column: 12, scope: !413)
!576 = !DILocation(line: 93, column: 12, scope: !577)
!577 = distinct !DILexicalBlock(scope: !413, file: !2, line: 93, column: 12)
!578 = !DILocation(line: 93, column: 12, scope: !579)
!579 = distinct !DILexicalBlock(scope: !577, file: !2, line: 93, column: 12)
!580 = !DILocation(line: 93, column: 12, scope: !405)
!581 = !DILocation(line: 93, column: 10, scope: !405)
!582 = !DILocation(line: 96, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !405, file: !2, line: 96, column: 7)
!584 = !DILocation(line: 96, column: 14, scope: !583)
!585 = !DILocation(line: 96, column: 29, scope: !583)
!586 = !DILocation(line: 96, column: 32, scope: !583)
!587 = !DILocation(line: 96, column: 38, scope: !583)
!588 = !DILocation(line: 96, column: 7, scope: !405)
!589 = !DILocation(line: 97, column: 4, scope: !583)
!590 = !DILocation(line: 100, column: 12, scope: !415)
!591 = !DILocation(line: 100, column: 12, scope: !417)
!592 = !DILocation(line: 100, column: 12, scope: !593)
!593 = distinct !DILexicalBlock(scope: !417, file: !2, line: 100, column: 12)
!594 = !DILocation(line: 100, column: 12, scope: !595)
!595 = distinct !DILexicalBlock(scope: !593, file: !2, line: 100, column: 12)
!596 = !DILocation(line: 100, column: 12, scope: !405)
!597 = !DILocation(line: 100, column: 10, scope: !405)
!598 = !DILocation(line: 102, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !405, file: !2, line: 102, column: 7)
!600 = !DILocation(line: 102, column: 14, scope: !599)
!601 = !DILocation(line: 102, column: 29, scope: !599)
!602 = !DILocation(line: 102, column: 34, scope: !599)
!603 = !DILocation(line: 102, column: 42, scope: !599)
!604 = !DILocation(line: 102, column: 7, scope: !405)
!605 = !DILocation(line: 103, column: 4, scope: !599)
!606 = !DILocation(line: 105, column: 11, scope: !405)
!607 = !DILocation(line: 106, column: 12, scope: !419)
!608 = !DILocation(line: 106, column: 12, scope: !421)
!609 = !DILocation(line: 106, column: 12, scope: !610)
!610 = distinct !DILexicalBlock(scope: !421, file: !2, line: 106, column: 12)
!611 = !DILocation(line: 106, column: 12, scope: !612)
!612 = distinct !DILexicalBlock(scope: !610, file: !2, line: 106, column: 12)
!613 = !DILocation(line: 106, column: 12, scope: !405)
!614 = !DILocation(line: 106, column: 10, scope: !405)
!615 = !DILocation(line: 108, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !405, file: !2, line: 108, column: 7)
!617 = !DILocation(line: 108, column: 14, scope: !616)
!618 = !DILocation(line: 108, column: 7, scope: !405)
!619 = !DILocation(line: 109, column: 4, scope: !616)
!620 = !DILocation(line: 110, column: 2, scope: !406)
!621 = !DILocation(line: 110, column: 2, scope: !405)
!622 = distinct !{!622, !555, !623, !553, !554}
!623 = !DILocation(line: 110, column: 2, scope: !407)
!624 = !DILocation(line: 112, column: 1, scope: !295)
!625 = !DILocation(line: 113, column: 2, scope: !295)
!626 = !DILocation(line: 113, column: 2, scope: !424)
!627 = !DILocation(line: 113, column: 2, scope: !628)
!628 = distinct !DILexicalBlock(scope: !424, file: !2, line: 113, column: 2)
!629 = !DILocation(line: 113, column: 2, scope: !630)
!630 = distinct !DILexicalBlock(scope: !628, file: !2, line: 113, column: 2)
!631 = !DILocation(line: 114, column: 1, scope: !295)
!632 = distinct !DISubprogram(name: "efi_is_native", scope: !633, file: !633, line: 205, type: !634, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17)
!633 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!634 = !DISubroutineType(types: !635)
!635 = !{!178}
!636 = !DILocation(line: 207, column: 9, scope: !632)
!637 = !DILocation(line: 207, column: 2, scope: !632)
!638 = distinct !DISubprogram(name: "__efi64_widen_efi_status", scope: !633, file: !633, line: 346, type: !639, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !641)
!639 = !DISubroutineType(types: !640)
!640 = !{!78, !60}
!641 = !{!642}
!642 = !DILocalVariable(name: "status", arg: 1, scope: !638, file: !633, line: 346, type: !60)
!643 = !DILocation(line: 346, column: 57, scope: !638)
!644 = !DILocation(line: 349, column: 21, scope: !638)
!645 = !DILocation(line: 349, column: 15, scope: !638)
!646 = !DILocation(line: 349, column: 9, scope: !638)
!647 = !DILocation(line: 349, column: 2, scope: !638)
!648 = !DISubprogram(name: "__efi64_thunk", scope: !633, file: !633, line: 158, type: !649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!649 = !DISubroutineType(types: !650)
!650 = !{!60, !66, null}
!651 = !DISubprogram(name: "efi_printk", scope: !20, file: !20, line: 972, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!652 = !DISubroutineType(types: !653)
!653 = !{!80, !654, null}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!656 = distinct !DISubprogram(name: "efi64_zero_upper", scope: !633, file: !633, line: 239, type: !657, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{!72, !72}
!659 = !{!660}
!660 = !DILocalVariable(name: "p", arg: 1, scope: !656, file: !633, line: 239, type: !72)
!661 = !DILocation(line: 239, column: 44, scope: !656)
!662 = !DILocation(line: 241, column: 10, scope: !656)
!663 = !DILocation(line: 241, column: 2, scope: !656)
!664 = !DILocation(line: 241, column: 16, scope: !656)
!665 = !DILocation(line: 242, column: 9, scope: !656)
!666 = !DILocation(line: 242, column: 2, scope: !656)
!667 = distinct !DISubprogram(name: "efi_is_64bit", scope: !633, file: !633, line: 198, type: !634, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17)
!668 = !DILocation(line: 202, column: 9, scope: !667)
!669 = !{i8 0, i8 2}
!670 = !{}
!671 = !DILocation(line: 202, column: 2, scope: !667)
!672 = distinct !DISubprogram(name: "ror64", scope: !673, file: !673, line: 115, type: !674, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !676)
!673 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!674 = !DISubroutineType(types: !675)
!675 = !{!62, !62, !21}
!676 = !{!677, !678}
!677 = !DILocalVariable(name: "word", arg: 1, scope: !672, file: !673, line: 115, type: !62)
!678 = !DILocalVariable(name: "shift", arg: 2, scope: !672, file: !673, line: 115, type: !21)
!679 = !DILocation(line: 115, column: 33, scope: !672)
!680 = !DILocation(line: 115, column: 52, scope: !672)
!681 = !DILocation(line: 117, column: 10, scope: !672)
!682 = !DILocation(line: 117, column: 19, scope: !672)
!683 = !DILocation(line: 117, column: 25, scope: !672)
!684 = !DILocation(line: 117, column: 15, scope: !672)
!685 = !DILocation(line: 117, column: 35, scope: !672)
!686 = !DILocation(line: 117, column: 46, scope: !672)
!687 = !DILocation(line: 117, column: 45, scope: !672)
!688 = !DILocation(line: 117, column: 53, scope: !672)
!689 = !DILocation(line: 117, column: 40, scope: !672)
!690 = !DILocation(line: 117, column: 32, scope: !672)
!691 = !DILocation(line: 117, column: 2, scope: !672)
!692 = distinct !DISubprogram(name: "rol32", scope: !673, file: !673, line: 125, type: !693, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{!67, !67, !21}
!695 = !{!696, !697}
!696 = !DILocalVariable(name: "word", arg: 1, scope: !692, file: !673, line: 125, type: !67)
!697 = !DILocalVariable(name: "shift", arg: 2, scope: !692, file: !673, line: 125, type: !21)
!698 = !DILocation(line: 125, column: 33, scope: !692)
!699 = !DILocation(line: 125, column: 52, scope: !692)
!700 = !DILocation(line: 127, column: 10, scope: !692)
!701 = !DILocation(line: 127, column: 19, scope: !692)
!702 = !DILocation(line: 127, column: 25, scope: !692)
!703 = !DILocation(line: 127, column: 15, scope: !692)
!704 = !DILocation(line: 127, column: 35, scope: !692)
!705 = !DILocation(line: 127, column: 46, scope: !692)
!706 = !DILocation(line: 127, column: 45, scope: !692)
!707 = !DILocation(line: 127, column: 53, scope: !692)
!708 = !DILocation(line: 127, column: 40, scope: !692)
!709 = !DILocation(line: 127, column: 32, scope: !692)
!710 = !DILocation(line: 127, column: 2, scope: !692)
