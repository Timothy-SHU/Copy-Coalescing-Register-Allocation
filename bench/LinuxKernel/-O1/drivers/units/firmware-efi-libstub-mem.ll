; ModuleID = 'drivers/firmware/efi/libstub/mem.c'
source_filename = "drivers/firmware/efi/libstub/mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guid_t = type { [16 x i8] }
%struct.efi_boot_memmap = type { i64, i64, i32, i64, i64, [0 x %struct.efi_memory_desc_t] }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i64, i32, i64, ptr, i64, ptr, i64, i64, ptr, ptr, i64, i64 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_system_table_32_t = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.0 = type { %struct.efi_table_hdr_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.efi_get_memory_map.tbl_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"?h\0F\80\8B\D0:B\A2\93\96\\<o\E2\B4" }, align 4
@efi_system_table = external hidden global ptr, align 8
@efi_is64 = external hidden constant i8, align 1

; Function Attrs: noredzone nounwind
define hidden i64 @efi_get_memory_map(ptr noundef %map, i1 noundef zeroext %install_cfg_tbl) #0 !dbg !258 {
entry:
  %retval = alloca i64, align 8
  %map.addr = alloca ptr, align 8
  %install_cfg_tbl.addr = alloca i8, align 1
  %memtype = alloca i32, align 4
  %tbl_guid = alloca %struct.guid_t, align 4
  %m = alloca ptr, align 8
  %tmp = alloca %struct.efi_boot_memmap, align 8
  %status = alloca i64, align 8
  %size = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp8 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad47 = alloca [3 x i64], align 16
  %tmp51 = alloca i64, align 8
  %__pad89 = alloca [3 x i64], align 16
  %tmp93 = alloca i64, align 8
  %__pad136 = alloca [3 x i64], align 16
  %tmp140 = alloca i64, align 8
  %__pad185 = alloca [3 x i64], align 16
  %tmp189 = alloca i64, align 8
  %__pad220 = alloca [3 x i64], align 16
  %tmp224 = alloca i64, align 8
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !284, metadata !DIExpression()), !dbg !312
  %frombool = zext i1 %install_cfg_tbl to i8
  store i8 %frombool, ptr %install_cfg_tbl.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %install_cfg_tbl.addr, metadata !285, metadata !DIExpression()), !dbg !313
  call void @llvm.lifetime.start.p0(i64 4, ptr %memtype) #6, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %memtype, metadata !286, metadata !DIExpression()), !dbg !315
  %0 = load i8, ptr %install_cfg_tbl.addr, align 1, !dbg !316, !range !317, !noundef !318
  %tobool = trunc i8 %0 to i1, !dbg !316
  %1 = zext i1 %tobool to i64, !dbg !316
  %cond = select i1 %tobool, i32 9, i32 2, !dbg !316
  store i32 %cond, ptr %memtype, align 4, !dbg !315
  call void @llvm.lifetime.start.p0(i64 16, ptr %tbl_guid) #6, !dbg !319
  call void @llvm.dbg.declare(metadata ptr %tbl_guid, metadata !287, metadata !DIExpression()), !dbg !320
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tbl_guid, ptr align 4 @__const.efi_get_memory_map.tbl_guid, i64 16, i1 false), !dbg !320
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #6, !dbg !321
  call void @llvm.dbg.declare(metadata ptr %m, metadata !288, metadata !DIExpression()), !dbg !322
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp) #6, !dbg !321
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !289, metadata !DIExpression()), !dbg !323
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #6, !dbg !324
  call void @llvm.dbg.declare(metadata ptr %status, metadata !290, metadata !DIExpression()), !dbg !325
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #6, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %size, metadata !291, metadata !DIExpression()), !dbg !327
  %map_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %tmp, i32 0, i32 0, !dbg !328
  store i64 0, ptr %map_size, align 8, !dbg !329
  %call = call zeroext i1 @efi_is_native() #7, !dbg !330
  br i1 %call, label %cond.true, label %cond.false7, !dbg !330

cond.true:                                        ; preds = %entry
  %call1 = call zeroext i1 @efi_is_native() #7, !dbg !330
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !330

cond.true2:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !330
  %boottime = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 10, !dbg !330
  %3 = load ptr, ptr %boottime, align 8, !dbg !330
  br label %cond.end, !dbg !330

cond.false:                                       ; preds = %cond.true
  %4 = load ptr, ptr @efi_system_table, align 8, !dbg !330
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %4, i32 0, i32 10, !dbg !330
  %5 = load i32, ptr %boottime3, align 4, !dbg !330
  %conv = zext i32 %5 to i64, !dbg !330
  %6 = inttoptr i64 %conv to ptr, !dbg !330
  br label %cond.end, !dbg !330

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond4 = phi ptr [ %3, %cond.true2 ], [ %6, %cond.false ], !dbg !330
  %get_memory_map = getelementptr inbounds %struct.anon, ptr %cond4, i32 0, i32 5, !dbg !330
  %7 = load ptr, ptr %get_memory_map, align 8, !dbg !330
  %map_size5 = getelementptr inbounds %struct.efi_boot_memmap, ptr %tmp, i32 0, i32 0, !dbg !330
  %map_key = getelementptr inbounds %struct.efi_boot_memmap, ptr %tmp, i32 0, i32 3, !dbg !330
  %desc_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %tmp, i32 0, i32 1, !dbg !330
  %desc_ver = getelementptr inbounds %struct.efi_boot_memmap, ptr %tmp, i32 0, i32 2, !dbg !330
  %call6 = call win64cc i64 %7(ptr noundef %map_size5, ptr noundef null, ptr noundef %map_key, ptr noundef %desc_size, ptr noundef %desc_ver) #7, !dbg !330
  br label %cond.end27, !dbg !330

cond.false7:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #6, !dbg !331
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !292, metadata !DIExpression()), !dbg !331
  br label %do.body, !dbg !332

do.body:                                          ; preds = %cond.false7
  br label %do.cond, !dbg !334

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !334

do.end:                                           ; preds = %do.cond
  %call9 = call zeroext i1 @efi_is_native() #7, !dbg !331
  br i1 %call9, label %cond.true11, label %cond.false13, !dbg !331

cond.true11:                                      ; preds = %do.end
  %8 = load ptr, ptr @efi_system_table, align 8, !dbg !331
  %boottime12 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 10, !dbg !331
  %9 = load ptr, ptr %boottime12, align 8, !dbg !331
  br label %cond.end16, !dbg !331

cond.false13:                                     ; preds = %do.end
  %10 = load ptr, ptr @efi_system_table, align 8, !dbg !331
  %boottime14 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %10, i32 0, i32 10, !dbg !331
  %11 = load i32, ptr %boottime14, align 4, !dbg !331
  %conv15 = zext i32 %11 to i64, !dbg !331
  %12 = inttoptr i64 %conv15 to ptr, !dbg !331
  br label %cond.end16, !dbg !331

cond.end16:                                       ; preds = %cond.false13, %cond.true11
  %cond17 = phi ptr [ %9, %cond.true11 ], [ %12, %cond.false13 ], !dbg !331
  %get_memory_map18 = getelementptr inbounds %struct.anon.0, ptr %cond17, i32 0, i32 5, !dbg !331
  %13 = load i32, ptr %get_memory_map18, align 8, !dbg !331
  %map_size19 = getelementptr inbounds %struct.efi_boot_memmap, ptr %tmp, i32 0, i32 0, !dbg !331
  %map_key20 = getelementptr inbounds %struct.efi_boot_memmap, ptr %tmp, i32 0, i32 3, !dbg !331
  %call21 = call ptr @efi64_zero_upper(ptr noundef %map_key20) #7, !dbg !331
  %desc_size22 = getelementptr inbounds %struct.efi_boot_memmap, ptr %tmp, i32 0, i32 1, !dbg !331
  %call23 = call ptr @efi64_zero_upper(ptr noundef %desc_size22) #7, !dbg !331
  %desc_ver24 = getelementptr inbounds %struct.efi_boot_memmap, ptr %tmp, i32 0, i32 2, !dbg !331
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !331
  %call25 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %13, ptr noundef %map_size19, ptr noundef null, ptr noundef %call21, ptr noundef %call23, ptr noundef %desc_ver24, ptr noundef %arraydecay) #7, !dbg !331
  store i64 %call25, ptr %tmp8, align 8, !dbg !331
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #6, !dbg !330
  %14 = load i64, ptr %tmp8, align 8, !dbg !331
  %call26 = call i64 @__efi64_widen_efi_status(i64 noundef %14) #7, !dbg !330
  br label %cond.end27, !dbg !330

cond.end27:                                       ; preds = %cond.end16, %cond.end
  %cond28 = phi i64 [ %call6, %cond.end ], [ %call26, %cond.end16 ], !dbg !330
  store i64 %cond28, ptr %status, align 8, !dbg !336
  %15 = load i64, ptr %status, align 8, !dbg !337
  %cmp = icmp ne i64 %15, -9223372036854775803, !dbg !339
  br i1 %cmp, label %if.then, label %if.end, !dbg !340

if.then:                                          ; preds = %cond.end27
  store i64 -9223372036854775807, ptr %retval, align 8, !dbg !341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !341

if.end:                                           ; preds = %cond.end27
  %map_size30 = getelementptr inbounds %struct.efi_boot_memmap, ptr %tmp, i32 0, i32 0, !dbg !342
  %16 = load i64, ptr %map_size30, align 8, !dbg !342
  %desc_size31 = getelementptr inbounds %struct.efi_boot_memmap, ptr %tmp, i32 0, i32 1, !dbg !343
  %17 = load i64, ptr %desc_size31, align 8, !dbg !343
  %mul = mul i64 %17, 8, !dbg !344
  %add = add i64 %16, %mul, !dbg !345
  store i64 %add, ptr %size, align 8, !dbg !346
  %call32 = call zeroext i1 @efi_is_native() #7, !dbg !347
  br i1 %call32, label %cond.true34, label %cond.false46, !dbg !347

cond.true34:                                      ; preds = %if.end
  %call35 = call zeroext i1 @efi_is_native() #7, !dbg !347
  br i1 %call35, label %cond.true37, label %cond.false39, !dbg !347

cond.true37:                                      ; preds = %cond.true34
  %18 = load ptr, ptr @efi_system_table, align 8, !dbg !347
  %boottime38 = getelementptr inbounds %struct.anon.1, ptr %18, i32 0, i32 10, !dbg !347
  %19 = load ptr, ptr %boottime38, align 8, !dbg !347
  br label %cond.end42, !dbg !347

cond.false39:                                     ; preds = %cond.true34
  %20 = load ptr, ptr @efi_system_table, align 8, !dbg !347
  %boottime40 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %20, i32 0, i32 10, !dbg !347
  %21 = load i32, ptr %boottime40, align 4, !dbg !347
  %conv41 = zext i32 %21 to i64, !dbg !347
  %22 = inttoptr i64 %conv41 to ptr, !dbg !347
  br label %cond.end42, !dbg !347

cond.end42:                                       ; preds = %cond.false39, %cond.true37
  %cond43 = phi ptr [ %19, %cond.true37 ], [ %22, %cond.false39 ], !dbg !347
  %allocate_pool = getelementptr inbounds %struct.anon, ptr %cond43, i32 0, i32 6, !dbg !347
  %23 = load ptr, ptr %allocate_pool, align 8, !dbg !347
  %24 = load i32, ptr %memtype, align 4, !dbg !347
  %25 = load i64, ptr %size, align 8, !dbg !347
  %add44 = add i64 40, %25, !dbg !347
  %call45 = call win64cc i64 %23(i32 noundef %24, i64 noundef %add44, ptr noundef %m) #7, !dbg !347
  br label %cond.end67, !dbg !347

cond.false46:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad47) #6, !dbg !348
  call void @llvm.dbg.declare(metadata ptr %__pad47, metadata !297, metadata !DIExpression()), !dbg !348
  br label %do.body48, !dbg !349

do.body48:                                        ; preds = %cond.false46
  br label %do.cond49, !dbg !351

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !351

do.end50:                                         ; preds = %do.cond49
  %call52 = call zeroext i1 @efi_is_native() #7, !dbg !348
  br i1 %call52, label %cond.true54, label %cond.false56, !dbg !348

cond.true54:                                      ; preds = %do.end50
  %26 = load ptr, ptr @efi_system_table, align 8, !dbg !348
  %boottime55 = getelementptr inbounds %struct.anon.1, ptr %26, i32 0, i32 10, !dbg !348
  %27 = load ptr, ptr %boottime55, align 8, !dbg !348
  br label %cond.end59, !dbg !348

cond.false56:                                     ; preds = %do.end50
  %28 = load ptr, ptr @efi_system_table, align 8, !dbg !348
  %boottime57 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %28, i32 0, i32 10, !dbg !348
  %29 = load i32, ptr %boottime57, align 4, !dbg !348
  %conv58 = zext i32 %29 to i64, !dbg !348
  %30 = inttoptr i64 %conv58 to ptr, !dbg !348
  br label %cond.end59, !dbg !348

cond.end59:                                       ; preds = %cond.false56, %cond.true54
  %cond60 = phi ptr [ %27, %cond.true54 ], [ %30, %cond.false56 ], !dbg !348
  %allocate_pool61 = getelementptr inbounds %struct.anon.0, ptr %cond60, i32 0, i32 6, !dbg !348
  %31 = load i32, ptr %allocate_pool61, align 4, !dbg !348
  %32 = load i32, ptr %memtype, align 4, !dbg !348
  %33 = load i64, ptr %size, align 8, !dbg !348
  %add62 = add i64 40, %33, !dbg !348
  %call63 = call ptr @efi64_zero_upper(ptr noundef %m) #7, !dbg !348
  %arraydecay64 = getelementptr inbounds [3 x i64], ptr %__pad47, i64 0, i64 0, !dbg !348
  %call65 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %31, i32 noundef %32, i64 noundef %add62, ptr noundef %call63, ptr noundef %arraydecay64) #7, !dbg !348
  store i64 %call65, ptr %tmp51, align 8, !dbg !348
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad47) #6, !dbg !347
  %34 = load i64, ptr %tmp51, align 8, !dbg !348
  %call66 = call i64 @__efi64_widen_efi_status(i64 noundef %34) #7, !dbg !347
  br label %cond.end67, !dbg !347

cond.end67:                                       ; preds = %cond.end59, %cond.end42
  %cond68 = phi i64 [ %call45, %cond.end42 ], [ %call66, %cond.end59 ], !dbg !347
  store i64 %cond68, ptr %status, align 8, !dbg !353
  %35 = load i64, ptr %status, align 8, !dbg !354
  %cmp69 = icmp ne i64 %35, 0, !dbg !356
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !357

if.then71:                                        ; preds = %cond.end67
  %36 = load i64, ptr %status, align 8, !dbg !358
  store i64 %36, ptr %retval, align 8, !dbg !359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !359

if.end72:                                         ; preds = %cond.end67
  %37 = load i8, ptr %install_cfg_tbl.addr, align 1, !dbg !360, !range !317, !noundef !318
  %tobool73 = trunc i8 %37 to i1, !dbg !360
  br i1 %tobool73, label %if.then74, label %if.end113, !dbg !361

if.then74:                                        ; preds = %if.end72
  %call75 = call zeroext i1 @efi_is_native() #7, !dbg !362
  br i1 %call75, label %cond.true77, label %cond.false88, !dbg !362

cond.true77:                                      ; preds = %if.then74
  %call78 = call zeroext i1 @efi_is_native() #7, !dbg !362
  br i1 %call78, label %cond.true80, label %cond.false82, !dbg !362

cond.true80:                                      ; preds = %cond.true77
  %38 = load ptr, ptr @efi_system_table, align 8, !dbg !362
  %boottime81 = getelementptr inbounds %struct.anon.1, ptr %38, i32 0, i32 10, !dbg !362
  %39 = load ptr, ptr %boottime81, align 8, !dbg !362
  br label %cond.end85, !dbg !362

cond.false82:                                     ; preds = %cond.true77
  %40 = load ptr, ptr @efi_system_table, align 8, !dbg !362
  %boottime83 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %40, i32 0, i32 10, !dbg !362
  %41 = load i32, ptr %boottime83, align 4, !dbg !362
  %conv84 = zext i32 %41 to i64, !dbg !362
  %42 = inttoptr i64 %conv84 to ptr, !dbg !362
  br label %cond.end85, !dbg !362

cond.end85:                                       ; preds = %cond.false82, %cond.true80
  %cond86 = phi ptr [ %39, %cond.true80 ], [ %42, %cond.false82 ], !dbg !362
  %install_configuration_table = getelementptr inbounds %struct.anon, ptr %cond86, i32 0, i32 22, !dbg !362
  %43 = load ptr, ptr %install_configuration_table, align 8, !dbg !362
  %44 = load ptr, ptr %m, align 8, !dbg !362
  %call87 = call win64cc i64 %43(ptr noundef %tbl_guid, ptr noundef %44) #7, !dbg !362
  br label %cond.end107, !dbg !362

cond.false88:                                     ; preds = %if.then74
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad89) #6, !dbg !363
  call void @llvm.dbg.declare(metadata ptr %__pad89, metadata !299, metadata !DIExpression()), !dbg !363
  br label %do.body90, !dbg !364

do.body90:                                        ; preds = %cond.false88
  br label %do.cond91, !dbg !366

do.cond91:                                        ; preds = %do.body90
  br label %do.end92, !dbg !366

do.end92:                                         ; preds = %do.cond91
  %call94 = call zeroext i1 @efi_is_native() #7, !dbg !363
  br i1 %call94, label %cond.true96, label %cond.false98, !dbg !363

cond.true96:                                      ; preds = %do.end92
  %45 = load ptr, ptr @efi_system_table, align 8, !dbg !363
  %boottime97 = getelementptr inbounds %struct.anon.1, ptr %45, i32 0, i32 10, !dbg !363
  %46 = load ptr, ptr %boottime97, align 8, !dbg !363
  br label %cond.end101, !dbg !363

cond.false98:                                     ; preds = %do.end92
  %47 = load ptr, ptr @efi_system_table, align 8, !dbg !363
  %boottime99 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %47, i32 0, i32 10, !dbg !363
  %48 = load i32, ptr %boottime99, align 4, !dbg !363
  %conv100 = zext i32 %48 to i64, !dbg !363
  %49 = inttoptr i64 %conv100 to ptr, !dbg !363
  br label %cond.end101, !dbg !363

cond.end101:                                      ; preds = %cond.false98, %cond.true96
  %cond102 = phi ptr [ %46, %cond.true96 ], [ %49, %cond.false98 ], !dbg !363
  %install_configuration_table103 = getelementptr inbounds %struct.anon.0, ptr %cond102, i32 0, i32 22, !dbg !363
  %50 = load i32, ptr %install_configuration_table103, align 4, !dbg !363
  %51 = load ptr, ptr %m, align 8, !dbg !363
  %arraydecay104 = getelementptr inbounds [3 x i64], ptr %__pad89, i64 0, i64 0, !dbg !363
  %call105 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %50, ptr noundef %tbl_guid, ptr noundef %51, ptr noundef %arraydecay104) #7, !dbg !363
  store i64 %call105, ptr %tmp93, align 8, !dbg !363
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad89) #6, !dbg !362
  %52 = load i64, ptr %tmp93, align 8, !dbg !363
  %call106 = call i64 @__efi64_widen_efi_status(i64 noundef %52) #7, !dbg !362
  br label %cond.end107, !dbg !362

cond.end107:                                      ; preds = %cond.end101, %cond.end85
  %cond108 = phi i64 [ %call87, %cond.end85 ], [ %call106, %cond.end101 ], !dbg !362
  store i64 %cond108, ptr %status, align 8, !dbg !368
  %53 = load i64, ptr %status, align 8, !dbg !369
  %cmp109 = icmp ne i64 %53, 0, !dbg !371
  br i1 %cmp109, label %if.then111, label %if.end112, !dbg !372

if.then111:                                       ; preds = %cond.end107
  br label %free_map, !dbg !373

if.end112:                                        ; preds = %cond.end107
  br label %if.end113, !dbg !374

if.end113:                                        ; preds = %if.end112, %if.end72
  %54 = load i64, ptr %size, align 8, !dbg !375
  %55 = load ptr, ptr %m, align 8, !dbg !376
  %map_size114 = getelementptr inbounds %struct.efi_boot_memmap, ptr %55, i32 0, i32 0, !dbg !377
  store i64 %54, ptr %map_size114, align 8, !dbg !378
  %56 = load ptr, ptr %m, align 8, !dbg !379
  %buff_size = getelementptr inbounds %struct.efi_boot_memmap, ptr %56, i32 0, i32 4, !dbg !380
  store i64 %54, ptr %buff_size, align 8, !dbg !381
  %call115 = call zeroext i1 @efi_is_native() #7, !dbg !382
  br i1 %call115, label %cond.true117, label %cond.false135, !dbg !382

cond.true117:                                     ; preds = %if.end113
  %call118 = call zeroext i1 @efi_is_native() #7, !dbg !382
  br i1 %call118, label %cond.true120, label %cond.false122, !dbg !382

cond.true120:                                     ; preds = %cond.true117
  %57 = load ptr, ptr @efi_system_table, align 8, !dbg !382
  %boottime121 = getelementptr inbounds %struct.anon.1, ptr %57, i32 0, i32 10, !dbg !382
  %58 = load ptr, ptr %boottime121, align 8, !dbg !382
  br label %cond.end125, !dbg !382

cond.false122:                                    ; preds = %cond.true117
  %59 = load ptr, ptr @efi_system_table, align 8, !dbg !382
  %boottime123 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %59, i32 0, i32 10, !dbg !382
  %60 = load i32, ptr %boottime123, align 4, !dbg !382
  %conv124 = zext i32 %60 to i64, !dbg !382
  %61 = inttoptr i64 %conv124 to ptr, !dbg !382
  br label %cond.end125, !dbg !382

cond.end125:                                      ; preds = %cond.false122, %cond.true120
  %cond126 = phi ptr [ %58, %cond.true120 ], [ %61, %cond.false122 ], !dbg !382
  %get_memory_map127 = getelementptr inbounds %struct.anon, ptr %cond126, i32 0, i32 5, !dbg !382
  %62 = load ptr, ptr %get_memory_map127, align 8, !dbg !382
  %63 = load ptr, ptr %m, align 8, !dbg !382
  %map_size128 = getelementptr inbounds %struct.efi_boot_memmap, ptr %63, i32 0, i32 0, !dbg !382
  %64 = load ptr, ptr %m, align 8, !dbg !382
  %map129 = getelementptr inbounds %struct.efi_boot_memmap, ptr %64, i32 0, i32 5, !dbg !382
  %arraydecay130 = getelementptr inbounds [0 x %struct.efi_memory_desc_t], ptr %map129, i64 0, i64 0, !dbg !382
  %65 = load ptr, ptr %m, align 8, !dbg !382
  %map_key131 = getelementptr inbounds %struct.efi_boot_memmap, ptr %65, i32 0, i32 3, !dbg !382
  %66 = load ptr, ptr %m, align 8, !dbg !382
  %desc_size132 = getelementptr inbounds %struct.efi_boot_memmap, ptr %66, i32 0, i32 1, !dbg !382
  %67 = load ptr, ptr %m, align 8, !dbg !382
  %desc_ver133 = getelementptr inbounds %struct.efi_boot_memmap, ptr %67, i32 0, i32 2, !dbg !382
  %call134 = call win64cc i64 %62(ptr noundef %map_size128, ptr noundef %arraydecay130, ptr noundef %map_key131, ptr noundef %desc_size132, ptr noundef %desc_ver133) #7, !dbg !382
  br label %cond.end162, !dbg !382

cond.false135:                                    ; preds = %if.end113
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad136) #6, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %__pad136, metadata !303, metadata !DIExpression()), !dbg !383
  br label %do.body137, !dbg !384

do.body137:                                       ; preds = %cond.false135
  br label %do.cond138, !dbg !386

do.cond138:                                       ; preds = %do.body137
  br label %do.end139, !dbg !386

do.end139:                                        ; preds = %do.cond138
  %call141 = call zeroext i1 @efi_is_native() #7, !dbg !383
  br i1 %call141, label %cond.true143, label %cond.false145, !dbg !383

cond.true143:                                     ; preds = %do.end139
  %68 = load ptr, ptr @efi_system_table, align 8, !dbg !383
  %boottime144 = getelementptr inbounds %struct.anon.1, ptr %68, i32 0, i32 10, !dbg !383
  %69 = load ptr, ptr %boottime144, align 8, !dbg !383
  br label %cond.end148, !dbg !383

cond.false145:                                    ; preds = %do.end139
  %70 = load ptr, ptr @efi_system_table, align 8, !dbg !383
  %boottime146 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %70, i32 0, i32 10, !dbg !383
  %71 = load i32, ptr %boottime146, align 4, !dbg !383
  %conv147 = zext i32 %71 to i64, !dbg !383
  %72 = inttoptr i64 %conv147 to ptr, !dbg !383
  br label %cond.end148, !dbg !383

cond.end148:                                      ; preds = %cond.false145, %cond.true143
  %cond149 = phi ptr [ %69, %cond.true143 ], [ %72, %cond.false145 ], !dbg !383
  %get_memory_map150 = getelementptr inbounds %struct.anon.0, ptr %cond149, i32 0, i32 5, !dbg !383
  %73 = load i32, ptr %get_memory_map150, align 8, !dbg !383
  %74 = load ptr, ptr %m, align 8, !dbg !383
  %map_size151 = getelementptr inbounds %struct.efi_boot_memmap, ptr %74, i32 0, i32 0, !dbg !383
  %75 = load ptr, ptr %m, align 8, !dbg !383
  %map152 = getelementptr inbounds %struct.efi_boot_memmap, ptr %75, i32 0, i32 5, !dbg !383
  %arraydecay153 = getelementptr inbounds [0 x %struct.efi_memory_desc_t], ptr %map152, i64 0, i64 0, !dbg !383
  %76 = load ptr, ptr %m, align 8, !dbg !383
  %map_key154 = getelementptr inbounds %struct.efi_boot_memmap, ptr %76, i32 0, i32 3, !dbg !383
  %call155 = call ptr @efi64_zero_upper(ptr noundef %map_key154) #7, !dbg !383
  %77 = load ptr, ptr %m, align 8, !dbg !383
  %desc_size156 = getelementptr inbounds %struct.efi_boot_memmap, ptr %77, i32 0, i32 1, !dbg !383
  %call157 = call ptr @efi64_zero_upper(ptr noundef %desc_size156) #7, !dbg !383
  %78 = load ptr, ptr %m, align 8, !dbg !383
  %desc_ver158 = getelementptr inbounds %struct.efi_boot_memmap, ptr %78, i32 0, i32 2, !dbg !383
  %arraydecay159 = getelementptr inbounds [3 x i64], ptr %__pad136, i64 0, i64 0, !dbg !383
  %call160 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %73, ptr noundef %map_size151, ptr noundef %arraydecay153, ptr noundef %call155, ptr noundef %call157, ptr noundef %desc_ver158, ptr noundef %arraydecay159) #7, !dbg !383
  store i64 %call160, ptr %tmp140, align 8, !dbg !383
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad136) #6, !dbg !382
  %79 = load i64, ptr %tmp140, align 8, !dbg !383
  %call161 = call i64 @__efi64_widen_efi_status(i64 noundef %79) #7, !dbg !382
  br label %cond.end162, !dbg !382

cond.end162:                                      ; preds = %cond.end148, %cond.end125
  %cond163 = phi i64 [ %call134, %cond.end125 ], [ %call161, %cond.end148 ], !dbg !382
  store i64 %cond163, ptr %status, align 8, !dbg !388
  %80 = load i64, ptr %status, align 8, !dbg !389
  %cmp164 = icmp ne i64 %80, 0, !dbg !391
  br i1 %cmp164, label %if.then166, label %if.end167, !dbg !392

if.then166:                                       ; preds = %cond.end162
  br label %uninstall_table, !dbg !393

if.end167:                                        ; preds = %cond.end162
  %81 = load ptr, ptr %m, align 8, !dbg !394
  %82 = load ptr, ptr %map.addr, align 8, !dbg !395
  store ptr %81, ptr %82, align 8, !dbg !396
  store i64 0, ptr %retval, align 8, !dbg !397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !397

uninstall_table:                                  ; preds = %if.then166
  call void @llvm.dbg.label(metadata !305), !dbg !398
  %83 = load i8, ptr %install_cfg_tbl.addr, align 1, !dbg !399, !range !317, !noundef !318
  %tobool168 = trunc i8 %83 to i1, !dbg !399
  br i1 %tobool168, label %if.then169, label %if.end205, !dbg !400

if.then169:                                       ; preds = %uninstall_table
  %call170 = call zeroext i1 @efi_is_native() #7, !dbg !401
  br i1 %call170, label %cond.true172, label %cond.false184, !dbg !401

cond.true172:                                     ; preds = %if.then169
  %call173 = call zeroext i1 @efi_is_native() #7, !dbg !401
  br i1 %call173, label %cond.true175, label %cond.false177, !dbg !401

cond.true175:                                     ; preds = %cond.true172
  %84 = load ptr, ptr @efi_system_table, align 8, !dbg !401
  %boottime176 = getelementptr inbounds %struct.anon.1, ptr %84, i32 0, i32 10, !dbg !401
  %85 = load ptr, ptr %boottime176, align 8, !dbg !401
  br label %cond.end180, !dbg !401

cond.false177:                                    ; preds = %cond.true172
  %86 = load ptr, ptr @efi_system_table, align 8, !dbg !401
  %boottime178 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %86, i32 0, i32 10, !dbg !401
  %87 = load i32, ptr %boottime178, align 4, !dbg !401
  %conv179 = zext i32 %87 to i64, !dbg !401
  %88 = inttoptr i64 %conv179 to ptr, !dbg !401
  br label %cond.end180, !dbg !401

cond.end180:                                      ; preds = %cond.false177, %cond.true175
  %cond181 = phi ptr [ %85, %cond.true175 ], [ %88, %cond.false177 ], !dbg !401
  %install_configuration_table182 = getelementptr inbounds %struct.anon, ptr %cond181, i32 0, i32 22, !dbg !401
  %89 = load ptr, ptr %install_configuration_table182, align 8, !dbg !401
  %call183 = call win64cc i64 %89(ptr noundef %tbl_guid, ptr noundef null) #7, !dbg !401
  br label %cond.end203, !dbg !401

cond.false184:                                    ; preds = %if.then169
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad185) #6, !dbg !402
  call void @llvm.dbg.declare(metadata ptr %__pad185, metadata !306, metadata !DIExpression()), !dbg !402
  br label %do.body186, !dbg !403

do.body186:                                       ; preds = %cond.false184
  br label %do.cond187, !dbg !405

do.cond187:                                       ; preds = %do.body186
  br label %do.end188, !dbg !405

do.end188:                                        ; preds = %do.cond187
  %call190 = call zeroext i1 @efi_is_native() #7, !dbg !402
  br i1 %call190, label %cond.true192, label %cond.false194, !dbg !402

cond.true192:                                     ; preds = %do.end188
  %90 = load ptr, ptr @efi_system_table, align 8, !dbg !402
  %boottime193 = getelementptr inbounds %struct.anon.1, ptr %90, i32 0, i32 10, !dbg !402
  %91 = load ptr, ptr %boottime193, align 8, !dbg !402
  br label %cond.end197, !dbg !402

cond.false194:                                    ; preds = %do.end188
  %92 = load ptr, ptr @efi_system_table, align 8, !dbg !402
  %boottime195 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %92, i32 0, i32 10, !dbg !402
  %93 = load i32, ptr %boottime195, align 4, !dbg !402
  %conv196 = zext i32 %93 to i64, !dbg !402
  %94 = inttoptr i64 %conv196 to ptr, !dbg !402
  br label %cond.end197, !dbg !402

cond.end197:                                      ; preds = %cond.false194, %cond.true192
  %cond198 = phi ptr [ %91, %cond.true192 ], [ %94, %cond.false194 ], !dbg !402
  %install_configuration_table199 = getelementptr inbounds %struct.anon.0, ptr %cond198, i32 0, i32 22, !dbg !402
  %95 = load i32, ptr %install_configuration_table199, align 4, !dbg !402
  %arraydecay200 = getelementptr inbounds [3 x i64], ptr %__pad185, i64 0, i64 0, !dbg !402
  %call201 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %95, ptr noundef %tbl_guid, ptr noundef null, ptr noundef %arraydecay200) #7, !dbg !402
  store i64 %call201, ptr %tmp189, align 8, !dbg !402
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad185) #6, !dbg !401
  %96 = load i64, ptr %tmp189, align 8, !dbg !402
  %call202 = call i64 @__efi64_widen_efi_status(i64 noundef %96) #7, !dbg !401
  br label %cond.end203, !dbg !401

cond.end203:                                      ; preds = %cond.end197, %cond.end180
  %cond204 = phi i64 [ %call183, %cond.end180 ], [ %call202, %cond.end197 ], !dbg !401
  br label %if.end205, !dbg !401

if.end205:                                        ; preds = %cond.end203, %uninstall_table
  br label %free_map, !dbg !399

free_map:                                         ; preds = %if.end205, %if.then111
  call void @llvm.dbg.label(metadata !309), !dbg !407
  %call206 = call zeroext i1 @efi_is_native() #7, !dbg !408
  br i1 %call206, label %cond.true208, label %cond.false219, !dbg !408

cond.true208:                                     ; preds = %free_map
  %call209 = call zeroext i1 @efi_is_native() #7, !dbg !408
  br i1 %call209, label %cond.true211, label %cond.false213, !dbg !408

cond.true211:                                     ; preds = %cond.true208
  %97 = load ptr, ptr @efi_system_table, align 8, !dbg !408
  %boottime212 = getelementptr inbounds %struct.anon.1, ptr %97, i32 0, i32 10, !dbg !408
  %98 = load ptr, ptr %boottime212, align 8, !dbg !408
  br label %cond.end216, !dbg !408

cond.false213:                                    ; preds = %cond.true208
  %99 = load ptr, ptr @efi_system_table, align 8, !dbg !408
  %boottime214 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %99, i32 0, i32 10, !dbg !408
  %100 = load i32, ptr %boottime214, align 4, !dbg !408
  %conv215 = zext i32 %100 to i64, !dbg !408
  %101 = inttoptr i64 %conv215 to ptr, !dbg !408
  br label %cond.end216, !dbg !408

cond.end216:                                      ; preds = %cond.false213, %cond.true211
  %cond217 = phi ptr [ %98, %cond.true211 ], [ %101, %cond.false213 ], !dbg !408
  %free_pool = getelementptr inbounds %struct.anon, ptr %cond217, i32 0, i32 7, !dbg !408
  %102 = load ptr, ptr %free_pool, align 8, !dbg !408
  %103 = load ptr, ptr %m, align 8, !dbg !408
  %call218 = call win64cc i64 %102(ptr noundef %103) #7, !dbg !408
  br label %cond.end238, !dbg !408

cond.false219:                                    ; preds = %free_map
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad220) #6, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %__pad220, metadata !310, metadata !DIExpression()), !dbg !409
  br label %do.body221, !dbg !410

do.body221:                                       ; preds = %cond.false219
  br label %do.cond222, !dbg !412

do.cond222:                                       ; preds = %do.body221
  br label %do.end223, !dbg !412

do.end223:                                        ; preds = %do.cond222
  %call225 = call zeroext i1 @efi_is_native() #7, !dbg !409
  br i1 %call225, label %cond.true227, label %cond.false229, !dbg !409

cond.true227:                                     ; preds = %do.end223
  %104 = load ptr, ptr @efi_system_table, align 8, !dbg !409
  %boottime228 = getelementptr inbounds %struct.anon.1, ptr %104, i32 0, i32 10, !dbg !409
  %105 = load ptr, ptr %boottime228, align 8, !dbg !409
  br label %cond.end232, !dbg !409

cond.false229:                                    ; preds = %do.end223
  %106 = load ptr, ptr @efi_system_table, align 8, !dbg !409
  %boottime230 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %106, i32 0, i32 10, !dbg !409
  %107 = load i32, ptr %boottime230, align 4, !dbg !409
  %conv231 = zext i32 %107 to i64, !dbg !409
  %108 = inttoptr i64 %conv231 to ptr, !dbg !409
  br label %cond.end232, !dbg !409

cond.end232:                                      ; preds = %cond.false229, %cond.true227
  %cond233 = phi ptr [ %105, %cond.true227 ], [ %108, %cond.false229 ], !dbg !409
  %free_pool234 = getelementptr inbounds %struct.anon.0, ptr %cond233, i32 0, i32 7, !dbg !409
  %109 = load i32, ptr %free_pool234, align 8, !dbg !409
  %110 = load ptr, ptr %m, align 8, !dbg !409
  %arraydecay235 = getelementptr inbounds [3 x i64], ptr %__pad220, i64 0, i64 0, !dbg !409
  %call236 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %109, ptr noundef %110, ptr noundef %arraydecay235) #7, !dbg !409
  store i64 %call236, ptr %tmp224, align 8, !dbg !409
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad220) #6, !dbg !408
  %111 = load i64, ptr %tmp224, align 8, !dbg !409
  %call237 = call i64 @__efi64_widen_efi_status(i64 noundef %111) #7, !dbg !408
  br label %cond.end238, !dbg !408

cond.end238:                                      ; preds = %cond.end232, %cond.end216
  %cond239 = phi i64 [ %call218, %cond.end216 ], [ %call237, %cond.end232 ], !dbg !408
  %112 = load i64, ptr %status, align 8, !dbg !414
  store i64 %112, ptr %retval, align 8, !dbg !415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !415

cleanup:                                          ; preds = %cond.end238, %if.end167, %if.then71, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 16, ptr %tbl_guid) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %memtype) #6, !dbg !416
  %113 = load i64, ptr %retval, align 8, !dbg !416
  ret i64 %113, !dbg !416
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_native() #4 !dbg !417 {
entry:
  %call = call zeroext i1 @efi_is_64bit() #7, !dbg !421
  ret i1 %call, !dbg !422
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__efi64_widen_efi_status(i64 noundef %status) #4 !dbg !423 {
entry:
  %status.addr = alloca i64, align 8
  store i64 %status, ptr %status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !427, metadata !DIExpression()), !dbg !428
  %0 = load i64, ptr %status.addr, align 8, !dbg !429
  %conv = trunc i64 %0 to i32, !dbg !429
  %call = call i32 @rol32(i32 noundef %conv, i32 noundef 1) #7, !dbg !430
  %conv1 = zext i32 %call to i64, !dbg !430
  %call2 = call i64 @ror64(i64 noundef %conv1, i32 noundef 1) #7, !dbg !431
  ret i64 %call2, !dbg !432
}

; Function Attrs: noredzone
declare !dbg !433 hidden i64 @__efi64_thunk(i32 noundef, ...) #5

; Function Attrs: inlinehint noredzone nounwind
define internal ptr @efi64_zero_upper(ptr noundef %p) #4 !dbg !436 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !440, metadata !DIExpression()), !dbg !441
  %0 = load ptr, ptr %p.addr, align 8, !dbg !442
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1, !dbg !443
  store i32 0, ptr %arrayidx, align 4, !dbg !444
  %1 = load ptr, ptr %p.addr, align 8, !dbg !445
  ret ptr %1, !dbg !446
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone nounwind
define hidden i64 @efi_allocate_pages(i64 noundef %size, ptr noundef %addr, i64 noundef %max) #0 !dbg !447 {
entry:
  %retval = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %max.addr = alloca i64, align 8
  %alloc_addr = alloca i64, align 8
  %status = alloca i64, align 8
  %__UNIQUE_ID___x363 = alloca i64, align 8
  %__UNIQUE_ID___y364 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__pad = alloca [3 x i64], align 16
  %tmp16 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !451, metadata !DIExpression()), !dbg !461
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !452, metadata !DIExpression()), !dbg !462
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !453, metadata !DIExpression()), !dbg !463
  call void @llvm.lifetime.start.p0(i64 8, ptr %alloc_addr) #6, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %alloc_addr, metadata !454, metadata !DIExpression()), !dbg !465
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #6, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %status, metadata !455, metadata !DIExpression()), !dbg !467
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x363) #6, !dbg !468
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x363, metadata !456, metadata !DIExpression()), !dbg !468
  %0 = load i64, ptr %max.addr, align 8, !dbg !468
  store i64 %0, ptr %__UNIQUE_ID___x363, align 8, !dbg !468
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y364) #6, !dbg !468
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y364, metadata !458, metadata !DIExpression()), !dbg !468
  %call = call zeroext i1 @efi_is_64bit() #7, !dbg !468
  %1 = zext i1 %call to i64, !dbg !468
  %cond = select i1 %call, i64 -1, i64 4294967295, !dbg !468
  store i64 %cond, ptr %__UNIQUE_ID___y364, align 8, !dbg !468
  %2 = load i64, ptr %__UNIQUE_ID___x363, align 8, !dbg !468
  %3 = load i64, ptr %__UNIQUE_ID___y364, align 8, !dbg !468
  %cmp = icmp ult i64 %2, %3, !dbg !468
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !468

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___x363, align 8, !dbg !468
  br label %cond.end, !dbg !468

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr %__UNIQUE_ID___y364, align 8, !dbg !468
  br label %cond.end, !dbg !468

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1 = phi i64 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !468
  store i64 %cond1, ptr %tmp, align 8, !dbg !468
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y364) #6, !dbg !469
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x363) #6, !dbg !469
  %6 = load i64, ptr %tmp, align 8, !dbg !468
  store i64 %6, ptr %max.addr, align 8, !dbg !470
  %7 = load i64, ptr %max.addr, align 8, !dbg !471
  %add = add i64 %7, 1, !dbg !471
  %sub = sub i64 %add, 4095, !dbg !471
  %add2 = add i64 %sub, 4095, !dbg !471
  %and = and i64 %add2, -4096, !dbg !471
  %sub3 = sub i64 %and, 1, !dbg !472
  store i64 %sub3, ptr %alloc_addr, align 8, !dbg !473
  %call4 = call zeroext i1 @efi_is_native() #7, !dbg !474
  br i1 %call4, label %cond.true5, label %cond.false15, !dbg !474

cond.true5:                                       ; preds = %cond.end
  %call6 = call zeroext i1 @efi_is_native() #7, !dbg !474
  br i1 %call6, label %cond.true7, label %cond.false8, !dbg !474

cond.true7:                                       ; preds = %cond.true5
  %8 = load ptr, ptr @efi_system_table, align 8, !dbg !474
  %boottime = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 10, !dbg !474
  %9 = load ptr, ptr %boottime, align 8, !dbg !474
  br label %cond.end10, !dbg !474

cond.false8:                                      ; preds = %cond.true5
  %10 = load ptr, ptr @efi_system_table, align 8, !dbg !474
  %boottime9 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %10, i32 0, i32 10, !dbg !474
  %11 = load i32, ptr %boottime9, align 4, !dbg !474
  %conv = zext i32 %11 to i64, !dbg !474
  %12 = inttoptr i64 %conv to ptr, !dbg !474
  br label %cond.end10, !dbg !474

cond.end10:                                       ; preds = %cond.false8, %cond.true7
  %cond11 = phi ptr [ %9, %cond.true7 ], [ %12, %cond.false8 ], !dbg !474
  %allocate_pages = getelementptr inbounds %struct.anon, ptr %cond11, i32 0, i32 3, !dbg !474
  %13 = load ptr, ptr %allocate_pages, align 8, !dbg !474
  %14 = load i64, ptr %size.addr, align 8, !dbg !474
  %add12 = add i64 %14, 4096, !dbg !474
  %sub13 = sub i64 %add12, 1, !dbg !474
  %div = udiv i64 %sub13, 4096, !dbg !474
  %call14 = call win64cc i64 %13(i32 noundef 1, i32 noundef 2, i64 noundef %div, ptr noundef %alloc_addr) #7, !dbg !474
  br label %cond.end32, !dbg !474

cond.false15:                                     ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #6, !dbg !475
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !459, metadata !DIExpression()), !dbg !475
  br label %do.body, !dbg !476

do.body:                                          ; preds = %cond.false15
  br label %do.cond, !dbg !478

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !478

do.end:                                           ; preds = %do.cond
  %call17 = call zeroext i1 @efi_is_native() #7, !dbg !475
  br i1 %call17, label %cond.true19, label %cond.false21, !dbg !475

cond.true19:                                      ; preds = %do.end
  %15 = load ptr, ptr @efi_system_table, align 8, !dbg !475
  %boottime20 = getelementptr inbounds %struct.anon.1, ptr %15, i32 0, i32 10, !dbg !475
  %16 = load ptr, ptr %boottime20, align 8, !dbg !475
  br label %cond.end24, !dbg !475

cond.false21:                                     ; preds = %do.end
  %17 = load ptr, ptr @efi_system_table, align 8, !dbg !475
  %boottime22 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %17, i32 0, i32 10, !dbg !475
  %18 = load i32, ptr %boottime22, align 4, !dbg !475
  %conv23 = zext i32 %18 to i64, !dbg !475
  %19 = inttoptr i64 %conv23 to ptr, !dbg !475
  br label %cond.end24, !dbg !475

cond.end24:                                       ; preds = %cond.false21, %cond.true19
  %cond25 = phi ptr [ %16, %cond.true19 ], [ %19, %cond.false21 ], !dbg !475
  %allocate_pages26 = getelementptr inbounds %struct.anon.0, ptr %cond25, i32 0, i32 3, !dbg !475
  %20 = load i32, ptr %allocate_pages26, align 8, !dbg !475
  %21 = load i64, ptr %size.addr, align 8, !dbg !475
  %add27 = add i64 %21, 4096, !dbg !475
  %sub28 = sub i64 %add27, 1, !dbg !475
  %div29 = udiv i64 %sub28, 4096, !dbg !475
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !475
  %call30 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %20, i32 noundef 1, i32 noundef 2, i64 noundef %div29, ptr noundef %alloc_addr, ptr noundef %arraydecay) #7, !dbg !475
  store i64 %call30, ptr %tmp16, align 8, !dbg !475
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #6, !dbg !474
  %22 = load i64, ptr %tmp16, align 8, !dbg !475
  %call31 = call i64 @__efi64_widen_efi_status(i64 noundef %22) #7, !dbg !474
  br label %cond.end32, !dbg !474

cond.end32:                                       ; preds = %cond.end24, %cond.end10
  %cond33 = phi i64 [ %call14, %cond.end10 ], [ %call31, %cond.end24 ], !dbg !474
  store i64 %cond33, ptr %status, align 8, !dbg !480
  %23 = load i64, ptr %status, align 8, !dbg !481
  %cmp34 = icmp ne i64 %23, 0, !dbg !483
  br i1 %cmp34, label %if.then, label %if.end, !dbg !484

if.then:                                          ; preds = %cond.end32
  %24 = load i64, ptr %status, align 8, !dbg !485
  store i64 %24, ptr %retval, align 8, !dbg !486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !486

if.end:                                           ; preds = %cond.end32
  %25 = load i64, ptr %alloc_addr, align 8, !dbg !487
  %26 = load ptr, ptr %addr.addr, align 8, !dbg !488
  store i64 %25, ptr %26, align 8, !dbg !489
  store i64 0, ptr %retval, align 8, !dbg !490
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !490

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #6, !dbg !491
  call void @llvm.lifetime.end.p0(i64 8, ptr %alloc_addr) #6, !dbg !491
  %27 = load i64, ptr %retval, align 8, !dbg !491
  ret i64 %27, !dbg !491
}

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @efi_is_64bit() #4 !dbg !492 {
entry:
  %0 = load i8, ptr @efi_is64, align 1, !dbg !493, !range !317, !noundef !318
  %tobool = trunc i8 %0 to i1, !dbg !493
  ret i1 %tobool, !dbg !494
}

; Function Attrs: noredzone nounwind
define hidden void @efi_free(i64 noundef %size, i64 noundef %addr) #0 !dbg !495 {
entry:
  %size.addr = alloca i64, align 8
  %addr.addr = alloca i64, align 8
  %nr_pages = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__pad = alloca [3 x i64], align 16
  %tmp = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !499, metadata !DIExpression()), !dbg !504
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !500, metadata !DIExpression()), !dbg !505
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_pages) #6, !dbg !506
  call void @llvm.dbg.declare(metadata ptr %nr_pages, metadata !501, metadata !DIExpression()), !dbg !507
  %0 = load i64, ptr %size.addr, align 8, !dbg !508
  %tobool = icmp ne i64 %0, 0, !dbg !508
  br i1 %tobool, label %if.end, label %if.then, !dbg !510

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !511

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !512
  %sub = sub i64 %1, 1, !dbg !512
  %or = or i64 %sub, 4095, !dbg !512
  %add = add i64 %or, 1, !dbg !512
  %div = udiv i64 %add, 4096, !dbg !513
  store i64 %div, ptr %nr_pages, align 8, !dbg !514
  %call = call zeroext i1 @efi_is_native() #7, !dbg !515
  br i1 %call, label %cond.true, label %cond.false5, !dbg !515

cond.true:                                        ; preds = %if.end
  %call1 = call zeroext i1 @efi_is_native() #7, !dbg !515
  br i1 %call1, label %cond.true2, label %cond.false, !dbg !515

cond.true2:                                       ; preds = %cond.true
  %2 = load ptr, ptr @efi_system_table, align 8, !dbg !515
  %boottime = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 10, !dbg !515
  %3 = load ptr, ptr %boottime, align 8, !dbg !515
  br label %cond.end, !dbg !515

cond.false:                                       ; preds = %cond.true
  %4 = load ptr, ptr @efi_system_table, align 8, !dbg !515
  %boottime3 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %4, i32 0, i32 10, !dbg !515
  %5 = load i32, ptr %boottime3, align 4, !dbg !515
  %conv = zext i32 %5 to i64, !dbg !515
  %6 = inttoptr i64 %conv to ptr, !dbg !515
  br label %cond.end, !dbg !515

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ %3, %cond.true2 ], [ %6, %cond.false ], !dbg !515
  %free_pages = getelementptr inbounds %struct.anon, ptr %cond, i32 0, i32 4, !dbg !515
  %7 = load ptr, ptr %free_pages, align 8, !dbg !515
  %8 = load i64, ptr %addr.addr, align 8, !dbg !515
  %9 = load i64, ptr %nr_pages, align 8, !dbg !515
  %call4 = call win64cc i64 %7(i64 noundef %8, i64 noundef %9) #7, !dbg !515
  br label %cond.end18, !dbg !515

cond.false5:                                      ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %__pad) #6, !dbg !516
  call void @llvm.dbg.declare(metadata ptr %__pad, metadata !502, metadata !DIExpression()), !dbg !516
  br label %do.body, !dbg !517

do.body:                                          ; preds = %cond.false5
  br label %do.cond, !dbg !519

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !519

do.end:                                           ; preds = %do.cond
  %call6 = call zeroext i1 @efi_is_native() #7, !dbg !516
  br i1 %call6, label %cond.true8, label %cond.false10, !dbg !516

cond.true8:                                       ; preds = %do.end
  %10 = load ptr, ptr @efi_system_table, align 8, !dbg !516
  %boottime9 = getelementptr inbounds %struct.anon.1, ptr %10, i32 0, i32 10, !dbg !516
  %11 = load ptr, ptr %boottime9, align 8, !dbg !516
  br label %cond.end13, !dbg !516

cond.false10:                                     ; preds = %do.end
  %12 = load ptr, ptr @efi_system_table, align 8, !dbg !516
  %boottime11 = getelementptr inbounds %struct.efi_system_table_32_t, ptr %12, i32 0, i32 10, !dbg !516
  %13 = load i32, ptr %boottime11, align 4, !dbg !516
  %conv12 = zext i32 %13 to i64, !dbg !516
  %14 = inttoptr i64 %conv12 to ptr, !dbg !516
  br label %cond.end13, !dbg !516

cond.end13:                                       ; preds = %cond.false10, %cond.true8
  %cond14 = phi ptr [ %11, %cond.true8 ], [ %14, %cond.false10 ], !dbg !516
  %free_pages15 = getelementptr inbounds %struct.anon.0, ptr %cond14, i32 0, i32 4, !dbg !516
  %15 = load i32, ptr %free_pages15, align 4, !dbg !516
  %16 = load i64, ptr %addr.addr, align 8, !dbg !516
  %17 = load i64, ptr %nr_pages, align 8, !dbg !516
  %arraydecay = getelementptr inbounds [3 x i64], ptr %__pad, i64 0, i64 0, !dbg !516
  %call16 = call i64 (i32, ...) @__efi64_thunk(i32 noundef %15, i64 noundef %16, i32 noundef 0, i64 noundef %17, ptr noundef %arraydecay) #7, !dbg !516
  store i64 %call16, ptr %tmp, align 8, !dbg !516
  call void @llvm.lifetime.end.p0(i64 24, ptr %__pad) #6, !dbg !515
  %18 = load i64, ptr %tmp, align 8, !dbg !516
  %call17 = call i64 @__efi64_widen_efi_status(i64 noundef %18) #7, !dbg !515
  br label %cond.end18, !dbg !515

cond.end18:                                       ; preds = %cond.end13, %cond.end
  %cond19 = phi i64 [ %call4, %cond.end ], [ %call17, %cond.end13 ], !dbg !515
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !521
  br label %cleanup, !dbg !521

cleanup:                                          ; preds = %cond.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_pages) #6, !dbg !521
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !521

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @ror64(i64 noundef %word, i32 noundef %shift) #4 !dbg !522 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !527, metadata !DIExpression()), !dbg !529
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !528, metadata !DIExpression()), !dbg !530
  %0 = load i64, ptr %word.addr, align 8, !dbg !531
  %1 = load i32, ptr %shift.addr, align 4, !dbg !532
  %and = and i32 %1, 63, !dbg !533
  %sh_prom = zext i32 %and to i64, !dbg !534
  %shr = lshr i64 %0, %sh_prom, !dbg !534
  %2 = load i64, ptr %word.addr, align 8, !dbg !535
  %3 = load i32, ptr %shift.addr, align 4, !dbg !536
  %sub = sub i32 0, %3, !dbg !537
  %and1 = and i32 %sub, 63, !dbg !538
  %sh_prom2 = zext i32 %and1 to i64, !dbg !539
  %shl = shl i64 %2, %sh_prom2, !dbg !539
  %or = or i64 %shr, %shl, !dbg !540
  ret i64 %or, !dbg !541
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @rol32(i32 noundef %word, i32 noundef %shift) #4 !dbg !542 {
entry:
  %word.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  store i32 %word, ptr %word.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !546, metadata !DIExpression()), !dbg !548
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !547, metadata !DIExpression()), !dbg !549
  %0 = load i32, ptr %word.addr, align 4, !dbg !550
  %1 = load i32, ptr %shift.addr, align 4, !dbg !551
  %and = and i32 %1, 31, !dbg !552
  %shl = shl i32 %0, %and, !dbg !553
  %2 = load i32, ptr %word.addr, align 4, !dbg !554
  %3 = load i32, ptr %shift.addr, align 4, !dbg !555
  %sub = sub i32 0, %3, !dbg !556
  %and1 = and i32 %sub, 31, !dbg !557
  %shr = lshr i32 %2, %and1, !dbg !558
  %or = or i32 %shl, %shr, !dbg !559
  ret i32 %or, !dbg !560
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!252, !253, !254, !255, !256}
!llvm.ident = !{!257}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.mem.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/mem\22 -D KBUILD_BASENAME=\22mem\22 -D KBUILD_MODNAME=\22mem\22 -D __KBUILD_MODNAME=kmod_mem -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/mem.ll drivers/firmware/efi/libstub/mem.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/firmware/efi/libstub/mem.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7a2007c6e63745ecb59a797bcbacc82c")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 243, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "drivers/firmware/efi/libstub/efistub.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbf2d830301e583887d4171bbc8b6c3a")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "EfiTimerCancel", value: 0)
!8 = !DIEnumerator(name: "EfiTimerPeriodic", value: 1)
!9 = !DIEnumerator(name: "EfiTimerRelative", value: 2)
!10 = !{!11, !43, !36, !61, !30, !56}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_boot_services_t", file: !13, line: 250, baseType: !14)
!13 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!14 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "efi_boot_services", file: !4, line: 252, size: 3008, elements: !15)
!15 = !{!16, !204}
!16 = !DIDerivedType(tag: DW_TAG_member, scope: !14, file: !4, line: 253, baseType: !17, size: 3008)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !4, line: 253, size: 3008, elements: !18)
!18 = !{!19, !35, !37, !38, !47, !51, !57, !62, !66, !76, !81, !85, !86, !90, !91, !92, !93, !94, !111, !112, !113, !118, !134, !138, !145, !152, !156, !160, !164, !165, !169, !170, !171, !175, !176, !177, !178, !179, !180, !184, !188, !192, !193, !199, !203}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !17, file: !4, line: 254, baseType: !20, size: 192)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_table_hdr_t", file: !13, line: 90, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 84, size: 192, elements: !22)
!22 = !{!23, !29, !32, !33, !34}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !21, file: !13, line: 85, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !28)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !21, file: !13, line: 86, baseType: !30, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !5)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "headersize", scope: !21, file: !13, line: 87, baseType: !30, size: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !21, file: !13, line: 88, baseType: !30, size: 32, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !21, file: !13, line: 89, baseType: !30, size: 32, offset: 160)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !17, file: !4, line: 255, baseType: !36, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !17, file: !4, line: 256, baseType: !36, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !17, file: !4, line: 257, baseType: !39, size: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !41)
!41 = !{!42, !44, !44, !43, !45}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !13, line: 47, baseType: !43)
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_physical_addr_t", file: !13, line: 50, baseType: !24)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !17, file: !4, line: 259, baseType: !48, size: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !50)
!50 = !{!42, !46, !43}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !17, file: !4, line: 261, baseType: !52, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !54)
!54 = !{!42, !55, !36, !55, !55, !56}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !17, file: !4, line: 264, baseType: !58, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !60)
!60 = !{!42, !44, !43, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !17, file: !4, line: 266, baseType: !63, size: 64, offset: 576)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !65)
!65 = !{!42, !36}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !17, file: !4, line: 267, baseType: !67, size: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !69)
!69 = !{!42, !30, !43, !70, !36, !75}
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_notify_t", file: !4, line: 212, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !73)
!73 = !{null, !74, !36}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_event_t", file: !4, line: 210, baseType: !36)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !17, file: !4, line: 270, baseType: !77, size: 64, offset: 704)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !79)
!79 = !{!42, !74, !80, !24}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFI_TIMER_DELAY", file: !4, line: 247, baseType: !3)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !17, file: !4, line: 272, baseType: !82, size: 64, offset: 768)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !84)
!84 = !{!42, !43, !75, !55}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !17, file: !4, line: 275, baseType: !36, size: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !17, file: !4, line: 276, baseType: !87, size: 64, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !89)
!89 = !{!42, !74}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !17, file: !4, line: 277, baseType: !36, size: 64, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !17, file: !4, line: 278, baseType: !36, size: 64, offset: 1024)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !17, file: !4, line: 279, baseType: !36, size: 64, offset: 1088)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !17, file: !4, line: 280, baseType: !36, size: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !17, file: !4, line: 281, baseType: !95, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !97)
!97 = !{!42, !98, !99, !61}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_handle_t", file: !13, line: 51, baseType: !36)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !13, line: 74, baseType: !101, align: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !102, line: 17, baseType: !103)
!102 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 15, size: 128, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !103, file: !102, line: 16, baseType: !106, size: 128)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !109)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !108)
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !{!110}
!110 = !DISubrange(count: 16)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !17, file: !4, line: 283, baseType: !36, size: 64, offset: 1280)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !17, file: !4, line: 284, baseType: !36, size: 64, offset: 1344)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !17, file: !4, line: 285, baseType: !114, size: 64, offset: 1408)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !116)
!116 = !{!42, !44, !99, !36, !55, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !17, file: !4, line: 288, baseType: !119, size: 64, offset: 1472)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !121)
!121 = !{!42, !99, !122, !117}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_device_path_protocol_t", file: !4, line: 176, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_generic_dev_path", file: !13, line: 985, size: 32, elements: !126)
!126 = !{!127, !129, !130}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !13, line: 986, baseType: !128, size: 8)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !107)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sub_type", scope: !125, file: !13, line: 987, baseType: !128, size: 8, offset: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !125, file: !13, line: 988, baseType: !131, size: 16, offset: 16)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !133)
!133 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !17, file: !4, line: 291, baseType: !135, size: 64, offset: 1536)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !137)
!137 = !{!42, !99, !36}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !17, file: !4, line: 293, baseType: !139, size: 64, offset: 1600)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !141)
!141 = !{!42, !142, !98, !123, !36, !43, !117}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !143, line: 35, baseType: !144)
!143 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!144 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !17, file: !4, line: 297, baseType: !146, size: 64, offset: 1664)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !148)
!148 = !{!42, !98, !55, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !13, line: 49, baseType: !131)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !17, file: !4, line: 299, baseType: !153, size: 64, offset: 1728)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !155)
!155 = !{!42, !98, !42, !43, !150}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !17, file: !4, line: 303, baseType: !157, size: 64, offset: 1792)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !159)
!159 = !{!42, !98}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !17, file: !4, line: 304, baseType: !161, size: 64, offset: 1856)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !163)
!163 = !{!42, !98, !43}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !17, file: !4, line: 306, baseType: !36, size: 64, offset: 1920)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !17, file: !4, line: 307, baseType: !166, size: 64, offset: 1984)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !168)
!168 = !{!42, !43}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !17, file: !4, line: 308, baseType: !36, size: 64, offset: 2048)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !17, file: !4, line: 309, baseType: !36, size: 64, offset: 2112)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !17, file: !4, line: 310, baseType: !172, size: 64, offset: 2176)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !174)
!174 = !{!42, !98, !98, !98}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !17, file: !4, line: 313, baseType: !36, size: 64, offset: 2240)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !17, file: !4, line: 314, baseType: !36, size: 64, offset: 2304)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !17, file: !4, line: 315, baseType: !36, size: 64, offset: 2368)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !17, file: !4, line: 316, baseType: !36, size: 64, offset: 2432)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !17, file: !4, line: 317, baseType: !36, size: 64, offset: 2496)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !17, file: !4, line: 318, baseType: !181, size: 64, offset: 2560)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !183)
!183 = !{!42, !99, !36, !61}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !17, file: !4, line: 320, baseType: !185, size: 64, offset: 2624)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !187)
!187 = !{!42, !117, null}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !17, file: !4, line: 321, baseType: !189, size: 64, offset: 2688)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !191)
!191 = !{!42, !98, null}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !17, file: !4, line: 322, baseType: !36, size: 64, offset: 2752)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !17, file: !4, line: 323, baseType: !194, size: 64, offset: 2816)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !196)
!196 = !{null, !36, !197, !43}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !17, file: !4, line: 324, baseType: !200, size: 64, offset: 2880)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(cc: DW_CC_LLVM_Win64, types: !202)
!202 = !{null, !36, !43, !108}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !17, file: !4, line: 325, baseType: !36, size: 64, offset: 2944)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_mode", scope: !14, file: !4, line: 373, baseType: !205, size: 1600)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !4, line: 327, size: 1600, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !205, file: !4, line: 328, baseType: !20, size: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "raise_tpl", scope: !205, file: !4, line: 329, baseType: !30, size: 32, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "restore_tpl", scope: !205, file: !4, line: 330, baseType: !30, size: 32, offset: 224)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pages", scope: !205, file: !4, line: 331, baseType: !30, size: 32, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "free_pages", scope: !205, file: !4, line: 332, baseType: !30, size: 32, offset: 288)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "get_memory_map", scope: !205, file: !4, line: 333, baseType: !30, size: 32, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_pool", scope: !205, file: !4, line: 334, baseType: !30, size: 32, offset: 352)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !205, file: !4, line: 335, baseType: !30, size: 32, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "create_event", scope: !205, file: !4, line: 336, baseType: !30, size: 32, offset: 416)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "set_timer", scope: !205, file: !4, line: 337, baseType: !30, size: 32, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_event", scope: !205, file: !4, line: 338, baseType: !30, size: 32, offset: 480)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "signal_event", scope: !205, file: !4, line: 339, baseType: !30, size: 32, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "close_event", scope: !205, file: !4, line: 340, baseType: !30, size: 32, offset: 544)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "check_event", scope: !205, file: !4, line: 341, baseType: !30, size: 32, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "install_protocol_interface", scope: !205, file: !4, line: 342, baseType: !30, size: 32, offset: 608)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "reinstall_protocol_interface", scope: !205, file: !4, line: 343, baseType: !30, size: 32, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_protocol_interface", scope: !205, file: !4, line: 344, baseType: !30, size: 32, offset: 672)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "handle_protocol", scope: !205, file: !4, line: 345, baseType: !30, size: 32, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved", scope: !205, file: !4, line: 346, baseType: !30, size: 32, offset: 736)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "register_protocol_notify", scope: !205, file: !4, line: 347, baseType: !30, size: 32, offset: 768)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle", scope: !205, file: !4, line: 348, baseType: !30, size: 32, offset: 800)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "locate_device_path", scope: !205, file: !4, line: 349, baseType: !30, size: 32, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "install_configuration_table", scope: !205, file: !4, line: 350, baseType: !30, size: 32, offset: 864)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "load_image", scope: !205, file: !4, line: 351, baseType: !30, size: 32, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "start_image", scope: !205, file: !4, line: 352, baseType: !30, size: 32, offset: 928)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !205, file: !4, line: 353, baseType: !30, size: 32, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "unload_image", scope: !205, file: !4, line: 354, baseType: !30, size: 32, offset: 992)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "exit_boot_services", scope: !205, file: !4, line: 355, baseType: !30, size: 32, offset: 1024)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_monotonic_count", scope: !205, file: !4, line: 356, baseType: !30, size: 32, offset: 1056)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "stall", scope: !205, file: !4, line: 357, baseType: !30, size: 32, offset: 1088)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "set_watchdog_timer", scope: !205, file: !4, line: 358, baseType: !30, size: 32, offset: 1120)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "connect_controller", scope: !205, file: !4, line: 359, baseType: !30, size: 32, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_controller", scope: !205, file: !4, line: 360, baseType: !30, size: 32, offset: 1184)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol", scope: !205, file: !4, line: 361, baseType: !30, size: 32, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "close_protocol", scope: !205, file: !4, line: 362, baseType: !30, size: 32, offset: 1248)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "open_protocol_information", scope: !205, file: !4, line: 363, baseType: !30, size: 32, offset: 1280)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "protocols_per_handle", scope: !205, file: !4, line: 364, baseType: !30, size: 32, offset: 1312)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "locate_handle_buffer", scope: !205, file: !4, line: 365, baseType: !30, size: 32, offset: 1344)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "locate_protocol", scope: !205, file: !4, line: 366, baseType: !30, size: 32, offset: 1376)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "install_multiple_protocol_interfaces", scope: !205, file: !4, line: 367, baseType: !30, size: 32, offset: 1408)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "uninstall_multiple_protocol_interfaces", scope: !205, file: !4, line: 368, baseType: !30, size: 32, offset: 1440)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "calculate_crc32", scope: !205, file: !4, line: 369, baseType: !30, size: 32, offset: 1472)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mem", scope: !205, file: !4, line: 370, baseType: !30, size: 32, offset: 1504)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem", scope: !205, file: !4, line: 371, baseType: !30, size: 32, offset: 1536)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "create_event_ex", scope: !205, file: !4, line: 372, baseType: !30, size: 32, offset: 1568)
!252 = !{i32 7, !"Dwarf Version", i32 5}
!253 = !{i32 2, !"Debug Info Version", i32 3}
!254 = !{i32 1, !"wchar_size", i32 2}
!255 = !{i32 8, !"PIC Level", i32 2}
!256 = !{i32 1, !"Code Model", i32 1}
!257 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!258 = distinct !DISubprogram(name: "efi_get_memory_map", scope: !1, file: !1, line: 20, type: !259, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !283)
!259 = !DISubroutineType(types: !260)
!260 = !{!42, !261, !142}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_boot_memmap", file: !13, line: 535, size: 320, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "map_size", scope: !263, file: !13, line: 536, baseType: !43, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "desc_size", scope: !263, file: !13, line: 537, baseType: !43, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "desc_ver", scope: !263, file: !13, line: 538, baseType: !30, size: 32, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "map_key", scope: !263, file: !13, line: 539, baseType: !43, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "buff_size", scope: !263, file: !13, line: 540, baseType: !43, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !263, file: !13, line: 541, baseType: !271, offset: 320)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, elements: !281)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_memory_desc_t", file: !13, line: 145, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 138, size: 320, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !273, file: !13, line: 139, baseType: !30, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !273, file: !13, line: 140, baseType: !30, size: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !273, file: !13, line: 141, baseType: !24, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "virt_addr", scope: !273, file: !13, line: 142, baseType: !24, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "num_pages", scope: !273, file: !13, line: 143, baseType: !24, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !273, file: !13, line: 144, baseType: !24, size: 64, offset: 256)
!281 = !{!282}
!282 = !DISubrange(count: -1)
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292, !297, !299, !303, !305, !306, !309, !310}
!284 = !DILocalVariable(name: "map", arg: 1, scope: !258, file: !1, line: 20, type: !261)
!285 = !DILocalVariable(name: "install_cfg_tbl", arg: 2, scope: !258, file: !1, line: 21, type: !142)
!286 = !DILocalVariable(name: "memtype", scope: !258, file: !1, line: 23, type: !44)
!287 = !DILocalVariable(name: "tbl_guid", scope: !258, file: !1, line: 25, type: !100)
!288 = !DILocalVariable(name: "m", scope: !258, file: !1, line: 26, type: !262)
!289 = !DILocalVariable(name: "tmp", scope: !258, file: !1, line: 26, type: !263)
!290 = !DILocalVariable(name: "status", scope: !258, file: !1, line: 27, type: !42)
!291 = !DILocalVariable(name: "size", scope: !258, file: !1, line: 28, type: !43)
!292 = !DILocalVariable(name: "__pad", scope: !293, file: !1, line: 31, type: !294)
!293 = distinct !DILexicalBlock(scope: !258, file: !1, line: 31, column: 11)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 3)
!297 = !DILocalVariable(name: "__pad", scope: !298, file: !1, line: 37, type: !294)
!298 = distinct !DILexicalBlock(scope: !258, file: !1, line: 37, column: 11)
!299 = !DILocalVariable(name: "__pad", scope: !300, file: !1, line: 49, type: !294)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 49, column: 12)
!301 = distinct !DILexicalBlock(scope: !302, file: !1, line: 42, column: 23)
!302 = distinct !DILexicalBlock(scope: !258, file: !1, line: 42, column: 6)
!303 = !DILocalVariable(name: "__pad", scope: !304, file: !1, line: 55, type: !294)
!304 = distinct !DILexicalBlock(scope: !258, file: !1, line: 55, column: 11)
!305 = !DILabel(scope: !258, name: "uninstall_table", file: !1, line: 63)
!306 = !DILocalVariable(name: "__pad", scope: !307, file: !1, line: 65, type: !294)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 65, column: 3)
!308 = distinct !DILexicalBlock(scope: !258, file: !1, line: 64, column: 6)
!309 = !DILabel(scope: !258, name: "free_map", file: !1, line: 66)
!310 = !DILocalVariable(name: "__pad", scope: !311, file: !1, line: 67, type: !294)
!311 = distinct !DILexicalBlock(scope: !258, file: !1, line: 67, column: 2)
!312 = !DILocation(line: 20, column: 58, scope: !258)
!313 = !DILocation(line: 21, column: 10, scope: !258)
!314 = !DILocation(line: 23, column: 2, scope: !258)
!315 = !DILocation(line: 23, column: 6, scope: !258)
!316 = !DILocation(line: 23, column: 16, scope: !258)
!317 = !{i8 0, i8 2}
!318 = !{}
!319 = !DILocation(line: 25, column: 2, scope: !258)
!320 = !DILocation(line: 25, column: 13, scope: !258)
!321 = !DILocation(line: 26, column: 2, scope: !258)
!322 = !DILocation(line: 26, column: 26, scope: !258)
!323 = !DILocation(line: 26, column: 29, scope: !258)
!324 = !DILocation(line: 27, column: 2, scope: !258)
!325 = !DILocation(line: 27, column: 15, scope: !258)
!326 = !DILocation(line: 28, column: 2, scope: !258)
!327 = !DILocation(line: 28, column: 16, scope: !258)
!328 = !DILocation(line: 30, column: 6, scope: !258)
!329 = !DILocation(line: 30, column: 15, scope: !258)
!330 = !DILocation(line: 31, column: 11, scope: !258)
!331 = !DILocation(line: 31, column: 11, scope: !293)
!332 = !DILocation(line: 31, column: 11, scope: !333)
!333 = distinct !DILexicalBlock(scope: !293, file: !1, line: 31, column: 11)
!334 = !DILocation(line: 31, column: 11, scope: !335)
!335 = distinct !DILexicalBlock(scope: !333, file: !1, line: 31, column: 11)
!336 = !DILocation(line: 31, column: 9, scope: !258)
!337 = !DILocation(line: 33, column: 6, scope: !338)
!338 = distinct !DILexicalBlock(scope: !258, file: !1, line: 33, column: 6)
!339 = !DILocation(line: 33, column: 13, scope: !338)
!340 = !DILocation(line: 33, column: 6, scope: !258)
!341 = !DILocation(line: 34, column: 3, scope: !338)
!342 = !DILocation(line: 36, column: 13, scope: !258)
!343 = !DILocation(line: 36, column: 28, scope: !258)
!344 = !DILocation(line: 36, column: 38, scope: !258)
!345 = !DILocation(line: 36, column: 22, scope: !258)
!346 = !DILocation(line: 36, column: 7, scope: !258)
!347 = !DILocation(line: 37, column: 11, scope: !258)
!348 = !DILocation(line: 37, column: 11, scope: !298)
!349 = !DILocation(line: 37, column: 11, scope: !350)
!350 = distinct !DILexicalBlock(scope: !298, file: !1, line: 37, column: 11)
!351 = !DILocation(line: 37, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !350, file: !1, line: 37, column: 11)
!353 = !DILocation(line: 37, column: 9, scope: !258)
!354 = !DILocation(line: 39, column: 6, scope: !355)
!355 = distinct !DILexicalBlock(scope: !258, file: !1, line: 39, column: 6)
!356 = !DILocation(line: 39, column: 13, scope: !355)
!357 = !DILocation(line: 39, column: 6, scope: !258)
!358 = !DILocation(line: 40, column: 10, scope: !355)
!359 = !DILocation(line: 40, column: 3, scope: !355)
!360 = !DILocation(line: 42, column: 6, scope: !302)
!361 = !DILocation(line: 42, column: 6, scope: !258)
!362 = !DILocation(line: 49, column: 12, scope: !301)
!363 = !DILocation(line: 49, column: 12, scope: !300)
!364 = !DILocation(line: 49, column: 12, scope: !365)
!365 = distinct !DILexicalBlock(scope: !300, file: !1, line: 49, column: 12)
!366 = !DILocation(line: 49, column: 12, scope: !367)
!367 = distinct !DILexicalBlock(scope: !365, file: !1, line: 49, column: 12)
!368 = !DILocation(line: 49, column: 10, scope: !301)
!369 = !DILocation(line: 50, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !301, file: !1, line: 50, column: 7)
!371 = !DILocation(line: 50, column: 14, scope: !370)
!372 = !DILocation(line: 50, column: 7, scope: !301)
!373 = !DILocation(line: 51, column: 4, scope: !370)
!374 = !DILocation(line: 52, column: 2, scope: !301)
!375 = !DILocation(line: 54, column: 31, scope: !258)
!376 = !DILocation(line: 54, column: 17, scope: !258)
!377 = !DILocation(line: 54, column: 20, scope: !258)
!378 = !DILocation(line: 54, column: 29, scope: !258)
!379 = !DILocation(line: 54, column: 2, scope: !258)
!380 = !DILocation(line: 54, column: 5, scope: !258)
!381 = !DILocation(line: 54, column: 15, scope: !258)
!382 = !DILocation(line: 55, column: 11, scope: !258)
!383 = !DILocation(line: 55, column: 11, scope: !304)
!384 = !DILocation(line: 55, column: 11, scope: !385)
!385 = distinct !DILexicalBlock(scope: !304, file: !1, line: 55, column: 11)
!386 = !DILocation(line: 55, column: 11, scope: !387)
!387 = distinct !DILexicalBlock(scope: !385, file: !1, line: 55, column: 11)
!388 = !DILocation(line: 55, column: 9, scope: !258)
!389 = !DILocation(line: 57, column: 6, scope: !390)
!390 = distinct !DILexicalBlock(scope: !258, file: !1, line: 57, column: 6)
!391 = !DILocation(line: 57, column: 13, scope: !390)
!392 = !DILocation(line: 57, column: 6, scope: !258)
!393 = !DILocation(line: 58, column: 3, scope: !390)
!394 = !DILocation(line: 60, column: 9, scope: !258)
!395 = !DILocation(line: 60, column: 3, scope: !258)
!396 = !DILocation(line: 60, column: 7, scope: !258)
!397 = !DILocation(line: 61, column: 2, scope: !258)
!398 = !DILocation(line: 63, column: 1, scope: !258)
!399 = !DILocation(line: 64, column: 6, scope: !308)
!400 = !DILocation(line: 64, column: 6, scope: !258)
!401 = !DILocation(line: 65, column: 3, scope: !308)
!402 = !DILocation(line: 65, column: 3, scope: !307)
!403 = !DILocation(line: 65, column: 3, scope: !404)
!404 = distinct !DILexicalBlock(scope: !307, file: !1, line: 65, column: 3)
!405 = !DILocation(line: 65, column: 3, scope: !406)
!406 = distinct !DILexicalBlock(scope: !404, file: !1, line: 65, column: 3)
!407 = !DILocation(line: 66, column: 1, scope: !258)
!408 = !DILocation(line: 67, column: 2, scope: !258)
!409 = !DILocation(line: 67, column: 2, scope: !311)
!410 = !DILocation(line: 67, column: 2, scope: !411)
!411 = distinct !DILexicalBlock(scope: !311, file: !1, line: 67, column: 2)
!412 = !DILocation(line: 67, column: 2, scope: !413)
!413 = distinct !DILexicalBlock(scope: !411, file: !1, line: 67, column: 2)
!414 = !DILocation(line: 68, column: 9, scope: !258)
!415 = !DILocation(line: 68, column: 2, scope: !258)
!416 = !DILocation(line: 69, column: 1, scope: !258)
!417 = distinct !DISubprogram(name: "efi_is_native", scope: !418, file: !418, line: 205, type: !419, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!418 = !DIFile(filename: "./arch/x86/include/asm/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a4b467ae7390bce7623c86c5f172fa43")
!419 = !DISubroutineType(types: !420)
!420 = !{!142}
!421 = !DILocation(line: 207, column: 9, scope: !417)
!422 = !DILocation(line: 207, column: 2, scope: !417)
!423 = distinct !DISubprogram(name: "__efi64_widen_efi_status", scope: !418, file: !418, line: 346, type: !424, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{!42, !24}
!426 = !{!427}
!427 = !DILocalVariable(name: "status", arg: 1, scope: !423, file: !418, line: 346, type: !24)
!428 = !DILocation(line: 346, column: 57, scope: !423)
!429 = !DILocation(line: 349, column: 21, scope: !423)
!430 = !DILocation(line: 349, column: 15, scope: !423)
!431 = !DILocation(line: 349, column: 9, scope: !423)
!432 = !DILocation(line: 349, column: 2, scope: !423)
!433 = !DISubprogram(name: "__efi64_thunk", scope: !418, file: !418, line: 158, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DISubroutineType(types: !435)
!435 = !{!24, !30, null}
!436 = distinct !DISubprogram(name: "efi64_zero_upper", scope: !418, file: !418, line: 239, type: !437, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!36, !36}
!439 = !{!440}
!440 = !DILocalVariable(name: "p", arg: 1, scope: !436, file: !418, line: 239, type: !36)
!441 = !DILocation(line: 239, column: 44, scope: !436)
!442 = !DILocation(line: 241, column: 10, scope: !436)
!443 = !DILocation(line: 241, column: 2, scope: !436)
!444 = !DILocation(line: 241, column: 16, scope: !436)
!445 = !DILocation(line: 242, column: 9, scope: !436)
!446 = !DILocation(line: 242, column: 2, scope: !436)
!447 = distinct !DISubprogram(name: "efi_allocate_pages", scope: !1, file: !1, line: 86, type: !448, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !450)
!448 = !DISubroutineType(types: !449)
!449 = !{!42, !43, !55, !43}
!450 = !{!451, !452, !453, !454, !455, !456, !458, !459}
!451 = !DILocalVariable(name: "size", arg: 1, scope: !447, file: !1, line: 86, type: !43)
!452 = !DILocalVariable(name: "addr", arg: 2, scope: !447, file: !1, line: 86, type: !55)
!453 = !DILocalVariable(name: "max", arg: 3, scope: !447, file: !1, line: 87, type: !43)
!454 = !DILocalVariable(name: "alloc_addr", scope: !447, file: !1, line: 89, type: !46)
!455 = !DILocalVariable(name: "status", scope: !447, file: !1, line: 90, type: !42)
!456 = !DILocalVariable(name: "__UNIQUE_ID___x363", scope: !457, file: !1, line: 92, type: !43)
!457 = distinct !DILexicalBlock(scope: !447, file: !1, line: 92, column: 8)
!458 = !DILocalVariable(name: "__UNIQUE_ID___y364", scope: !457, file: !1, line: 92, type: !43)
!459 = !DILocalVariable(name: "__pad", scope: !460, file: !1, line: 100, type: !294)
!460 = distinct !DILexicalBlock(scope: !447, file: !1, line: 100, column: 11)
!461 = !DILocation(line: 86, column: 47, scope: !447)
!462 = !DILocation(line: 86, column: 68, scope: !447)
!463 = !DILocation(line: 87, column: 19, scope: !447)
!464 = !DILocation(line: 89, column: 2, scope: !447)
!465 = !DILocation(line: 89, column: 22, scope: !447)
!466 = !DILocation(line: 90, column: 2, scope: !447)
!467 = !DILocation(line: 90, column: 15, scope: !447)
!468 = !DILocation(line: 92, column: 8, scope: !457)
!469 = !DILocation(line: 92, column: 8, scope: !447)
!470 = !DILocation(line: 92, column: 6, scope: !447)
!471 = !DILocation(line: 99, column: 15, scope: !447)
!472 = !DILocation(line: 99, column: 52, scope: !447)
!473 = !DILocation(line: 99, column: 13, scope: !447)
!474 = !DILocation(line: 100, column: 11, scope: !447)
!475 = !DILocation(line: 100, column: 11, scope: !460)
!476 = !DILocation(line: 100, column: 11, scope: !477)
!477 = distinct !DILexicalBlock(scope: !460, file: !1, line: 100, column: 11)
!478 = !DILocation(line: 100, column: 11, scope: !479)
!479 = distinct !DILexicalBlock(scope: !477, file: !1, line: 100, column: 11)
!480 = !DILocation(line: 100, column: 9, scope: !447)
!481 = !DILocation(line: 103, column: 6, scope: !482)
!482 = distinct !DILexicalBlock(scope: !447, file: !1, line: 103, column: 6)
!483 = !DILocation(line: 103, column: 13, scope: !482)
!484 = !DILocation(line: 103, column: 6, scope: !447)
!485 = !DILocation(line: 104, column: 10, scope: !482)
!486 = !DILocation(line: 104, column: 3, scope: !482)
!487 = !DILocation(line: 106, column: 10, scope: !447)
!488 = !DILocation(line: 106, column: 3, scope: !447)
!489 = !DILocation(line: 106, column: 8, scope: !447)
!490 = !DILocation(line: 107, column: 2, scope: !447)
!491 = !DILocation(line: 108, column: 1, scope: !447)
!492 = distinct !DISubprogram(name: "efi_is_64bit", scope: !418, file: !418, line: 198, type: !419, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!493 = !DILocation(line: 202, column: 9, scope: !492)
!494 = !DILocation(line: 202, column: 2, scope: !492)
!495 = distinct !DISubprogram(name: "efi_free", scope: !1, file: !1, line: 121, type: !496, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !43, !43}
!498 = !{!499, !500, !501, !502}
!499 = !DILocalVariable(name: "size", arg: 1, scope: !495, file: !1, line: 121, type: !43)
!500 = !DILocalVariable(name: "addr", arg: 2, scope: !495, file: !1, line: 121, type: !43)
!501 = !DILocalVariable(name: "nr_pages", scope: !495, file: !1, line: 123, type: !43)
!502 = !DILocalVariable(name: "__pad", scope: !503, file: !1, line: 129, type: !294)
!503 = distinct !DILexicalBlock(scope: !495, file: !1, line: 129, column: 2)
!504 = !DILocation(line: 121, column: 29, scope: !495)
!505 = !DILocation(line: 121, column: 49, scope: !495)
!506 = !DILocation(line: 123, column: 2, scope: !495)
!507 = !DILocation(line: 123, column: 16, scope: !495)
!508 = !DILocation(line: 125, column: 7, scope: !509)
!509 = distinct !DILexicalBlock(scope: !495, file: !1, line: 125, column: 6)
!510 = !DILocation(line: 125, column: 6, scope: !495)
!511 = !DILocation(line: 126, column: 3, scope: !509)
!512 = !DILocation(line: 128, column: 13, scope: !495)
!513 = !DILocation(line: 128, column: 45, scope: !495)
!514 = !DILocation(line: 128, column: 11, scope: !495)
!515 = !DILocation(line: 129, column: 2, scope: !495)
!516 = !DILocation(line: 129, column: 2, scope: !503)
!517 = !DILocation(line: 129, column: 2, scope: !518)
!518 = distinct !DILexicalBlock(scope: !503, file: !1, line: 129, column: 2)
!519 = !DILocation(line: 129, column: 2, scope: !520)
!520 = distinct !DILexicalBlock(scope: !518, file: !1, line: 129, column: 2)
!521 = !DILocation(line: 130, column: 1, scope: !495)
!522 = distinct !DISubprogram(name: "ror64", scope: !523, file: !523, line: 115, type: !524, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !526)
!523 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!524 = !DISubroutineType(types: !525)
!525 = !{!26, !26, !5}
!526 = !{!527, !528}
!527 = !DILocalVariable(name: "word", arg: 1, scope: !522, file: !523, line: 115, type: !26)
!528 = !DILocalVariable(name: "shift", arg: 2, scope: !522, file: !523, line: 115, type: !5)
!529 = !DILocation(line: 115, column: 33, scope: !522)
!530 = !DILocation(line: 115, column: 52, scope: !522)
!531 = !DILocation(line: 117, column: 10, scope: !522)
!532 = !DILocation(line: 117, column: 19, scope: !522)
!533 = !DILocation(line: 117, column: 25, scope: !522)
!534 = !DILocation(line: 117, column: 15, scope: !522)
!535 = !DILocation(line: 117, column: 35, scope: !522)
!536 = !DILocation(line: 117, column: 46, scope: !522)
!537 = !DILocation(line: 117, column: 45, scope: !522)
!538 = !DILocation(line: 117, column: 53, scope: !522)
!539 = !DILocation(line: 117, column: 40, scope: !522)
!540 = !DILocation(line: 117, column: 32, scope: !522)
!541 = !DILocation(line: 117, column: 2, scope: !522)
!542 = distinct !DISubprogram(name: "rol32", scope: !523, file: !523, line: 125, type: !543, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{!31, !31, !5}
!545 = !{!546, !547}
!546 = !DILocalVariable(name: "word", arg: 1, scope: !542, file: !523, line: 125, type: !31)
!547 = !DILocalVariable(name: "shift", arg: 2, scope: !542, file: !523, line: 125, type: !5)
!548 = !DILocation(line: 125, column: 33, scope: !542)
!549 = !DILocation(line: 125, column: 52, scope: !542)
!550 = !DILocation(line: 127, column: 10, scope: !542)
!551 = !DILocation(line: 127, column: 19, scope: !542)
!552 = !DILocation(line: 127, column: 25, scope: !542)
!553 = !DILocation(line: 127, column: 15, scope: !542)
!554 = !DILocation(line: 127, column: 35, scope: !542)
!555 = !DILocation(line: 127, column: 46, scope: !542)
!556 = !DILocation(line: 127, column: 45, scope: !542)
!557 = !DILocation(line: 127, column: 53, scope: !542)
!558 = !DILocation(line: 127, column: 40, scope: !542)
!559 = !DILocation(line: 127, column: 32, scope: !542)
!560 = !DILocation(line: 127, column: 2, scope: !542)
