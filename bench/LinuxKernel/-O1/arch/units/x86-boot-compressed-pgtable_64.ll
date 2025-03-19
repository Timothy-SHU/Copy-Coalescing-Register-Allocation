; ModuleID = 'arch/x86/boot/compressed/pgtable_64.c'
source_filename = "arch/x86/boot/compressed/pgtable_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon, %union.anon.5, i8, i8 }>
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i16, i32, i64 }
%struct.boot_params_to_save = type { i32, i32 }

@pgdir_shift = hidden global i32 39, section ".data", align 4, !dbg !0
@ptrs_per_p4d = hidden global i32 1, section ".data", align 4, !dbg !45
@boot_params_ptr = external hidden global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"no5lvl\00", align 1, !dbg !47
@__pgtable_l5_enabled = hidden global i32 0, section ".data", align 4, !dbg !52
@trampoline_32bit = hidden global ptr null, section ".data", align 8, !dbg !59
@trampoline_save = internal global [8192 x i8] zeroinitializer, align 16, !dbg !54
@trampoline_ljmp_imm_offset = external hidden constant i16, align 2
@sanitize_boot_params.scratch = internal global %struct.boot_params zeroinitializer, align 1, !dbg !61
@__const.sanitize_boot_params.to_save = private unnamed_addr constant [20 x %struct.boot_params_to_save] [%struct.boot_params_to_save { i32 0, i32 64 }, %struct.boot_params_to_save { i32 64, i32 20 }, %struct.boot_params_to_save { i32 88, i32 8 }, %struct.boot_params_to_save { i32 96, i32 16 }, %struct.boot_params_to_save { i32 128, i32 16 }, %struct.boot_params_to_save { i32 144, i32 16 }, %struct.boot_params_to_save { i32 160, i32 16 }, %struct.boot_params_to_save { i32 176, i32 16 }, %struct.boot_params_to_save { i32 448, i32 32 }, %struct.boot_params_to_save { i32 480, i32 4 }, %struct.boot_params_to_save { i32 484, i32 4 }, %struct.boot_params_to_save { i32 488, i32 1 }, %struct.boot_params_to_save { i32 489, i32 1 }, %struct.boot_params_to_save { i32 490, i32 1 }, %struct.boot_params_to_save { i32 656, i32 64 }, %struct.boot_params_to_save { i32 492, i32 1 }, %struct.boot_params_to_save { i32 497, i32 123 }, %struct.boot_params_to_save { i32 720, i32 2560 }, %struct.boot_params_to_save { i32 3328, i32 492 }, %struct.boot_params_to_save { i32 316, i32 4 }], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"EL32\00", align 1, !dbg !418
@.str.2 = private unnamed_addr constant [5 x i8] c"EL64\00", align 1, !dbg !423

; Function Attrs: noredzone nounwind
define hidden void @configure_5level_paging(ptr noundef %bp, ptr noundef %pgtable) #0 !dbg !432 {
entry:
  %bp.addr = alloca ptr, align 8
  %pgtable.addr = alloca ptr, align 8
  %toggle_la57 = alloca ptr, align 8
  %l5_required = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %src = alloca i64, align 8
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !436, metadata !DIExpression()), !dbg !449
  store ptr %pgtable, ptr %pgtable.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !437, metadata !DIExpression()), !dbg !450
  call void @llvm.lifetime.start.p0(i64 8, ptr %toggle_la57) #7, !dbg !451
  call void @llvm.dbg.declare(metadata ptr %toggle_la57, metadata !438, metadata !DIExpression()), !dbg !452
  call void @llvm.lifetime.start.p0(i64 1, ptr %l5_required) #7, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %l5_required, metadata !442, metadata !DIExpression()), !dbg !454
  store i8 0, ptr %l5_required, align 1, !dbg !454
  %0 = load ptr, ptr %bp.addr, align 8, !dbg !455
  call void @sanitize_boot_params(ptr noundef %0) #8, !dbg !456
  %1 = load ptr, ptr %bp.addr, align 8, !dbg !457
  store ptr %1, ptr @boot_params_ptr, align 8, !dbg !458
  %call = call i32 @cmdline_find_option_bool(ptr noundef @.str) #8, !dbg !459
  %tobool = icmp ne i32 %call, 0, !dbg !459
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !461

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @native_cpuid_eax(i32 noundef 0) #8, !dbg !462
  %cmp = icmp uge i32 %call1, 7, !dbg !463
  br i1 %cmp, label %land.lhs.true2, label %if.end, !dbg !464

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = call i32 @native_cpuid_ecx(i32 noundef 7) #8, !dbg !465
  %and = and i32 %call3, 65536, !dbg !466
  %tobool4 = icmp ne i32 %and, 0, !dbg !466
  br i1 %tobool4, label %if.then, label %if.end, !dbg !467

if.then:                                          ; preds = %land.lhs.true2
  store i8 1, ptr %l5_required, align 1, !dbg !468
  store i32 1, ptr @__pgtable_l5_enabled, align 4, !dbg !470
  store i32 48, ptr @pgdir_shift, align 4, !dbg !471
  store i32 512, ptr @ptrs_per_p4d, align 4, !dbg !472
  br label %if.end, !dbg !473

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %2 = load i8, ptr %l5_required, align 1, !dbg !474, !range !476, !noundef !477
  %tobool5 = trunc i8 %2 to i1, !dbg !474
  %conv = zext i1 %tobool5 to i32, !dbg !474
  %call6 = call i64 @native_read_cr4() #8, !dbg !478
  %and7 = and i64 %call6, 4096, !dbg !479
  %tobool8 = icmp ne i64 %and7, 0, !dbg !480
  %lnot = xor i1 %tobool8, true, !dbg !480
  %lnot9 = xor i1 %lnot, true, !dbg !481
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !481
  %cmp10 = icmp eq i32 %conv, %lnot.ext, !dbg !482
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !483

if.then12:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !484

if.end13:                                         ; preds = %if.end
  %call14 = call i64 @find_trampoline_placement() #8, !dbg !485
  %3 = inttoptr i64 %call14 to ptr, !dbg !486
  store ptr %3, ptr @trampoline_32bit, align 8, !dbg !487
  %4 = load ptr, ptr @trampoline_32bit, align 8, !dbg !488
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 @trampoline_save, ptr align 8 %4, i64 8192, i1 false), !dbg !488
  %5 = load ptr, ptr @trampoline_32bit, align 8, !dbg !489
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 8192, i1 false), !dbg !489
  %6 = load ptr, ptr @trampoline_32bit, align 8, !dbg !490
  %add.ptr = getelementptr inbounds i64, ptr %6, i64 512, !dbg !490
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr, ptr align 4 @trampoline_32bit_src, i64 160, i1 false), !dbg !490
  store ptr %add.ptr, ptr %toggle_la57, align 8, !dbg !491
  %7 = load ptr, ptr %toggle_la57, align 8, !dbg !492
  %8 = ptrtoint ptr %7 to i64, !dbg !493
  %9 = load ptr, ptr %toggle_la57, align 8, !dbg !494
  %10 = load i16, ptr @trampoline_ljmp_imm_offset, align 2, !dbg !495
  %conv15 = zext i16 %10 to i32, !dbg !495
  %idx.ext = sext i32 %conv15 to i64, !dbg !496
  %add.ptr16 = getelementptr inbounds i8, ptr %9, i64 %idx.ext, !dbg !496
  %11 = load i32, ptr %add.ptr16, align 4, !dbg !497
  %conv17 = zext i32 %11 to i64, !dbg !497
  %add = add i64 %conv17, %8, !dbg !497
  %conv18 = trunc i64 %add to i32, !dbg !497
  store i32 %conv18, ptr %add.ptr16, align 4, !dbg !497
  %12 = load i8, ptr %l5_required, align 1, !dbg !498, !range !476, !noundef !477
  %tobool19 = trunc i8 %12 to i1, !dbg !498
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !499

if.then20:                                        ; preds = %if.end13
  %call21 = call i64 @__native_read_cr3() #8, !dbg !500
  %or = or i64 %call21, 103, !dbg !502
  %13 = load ptr, ptr @trampoline_32bit, align 8, !dbg !503
  store i64 %or, ptr %13, align 8, !dbg !504
  br label %if.end24, !dbg !505

if.else:                                          ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #7, !dbg !506
  call void @llvm.dbg.declare(metadata ptr %src, metadata !446, metadata !DIExpression()), !dbg !507
  %call22 = call i64 @__native_read_cr3() #8, !dbg !508
  %14 = inttoptr i64 %call22 to ptr, !dbg !509
  %15 = load i64, ptr %14, align 8, !dbg !510
  %and23 = and i64 %15, -4096, !dbg !511
  store i64 %and23, ptr %src, align 8, !dbg !512
  %16 = load ptr, ptr @trampoline_32bit, align 8, !dbg !513
  %17 = load i64, ptr %src, align 8, !dbg !513
  %18 = inttoptr i64 %17 to ptr, !dbg !513
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 1 %18, i64 4096, i1 false), !dbg !513
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #7, !dbg !514
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then20
  %19 = load ptr, ptr %toggle_la57, align 8, !dbg !515
  %20 = load ptr, ptr @trampoline_32bit, align 8, !dbg !516
  call void %19(ptr noundef %20) #8, !dbg !515
  %21 = load ptr, ptr %pgtable.addr, align 8, !dbg !517
  %22 = load ptr, ptr @trampoline_32bit, align 8, !dbg !517
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 8 %22, i64 4096, i1 false), !dbg !517
  %23 = load ptr, ptr %pgtable.addr, align 8, !dbg !518
  %24 = ptrtoint ptr %23 to i64, !dbg !519
  call void @native_write_cr3(i64 noundef %24) #8, !dbg !520
  %25 = load ptr, ptr @trampoline_32bit, align 8, !dbg !521
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %25, ptr align 16 @trampoline_save, i64 8192, i1 false), !dbg !521
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !522
  br label %cleanup, !dbg !522

cleanup:                                          ; preds = %if.end24, %if.then12
  call void @llvm.lifetime.end.p0(i64 1, ptr %l5_required) #7, !dbg !522
  call void @llvm.lifetime.end.p0(i64 8, ptr %toggle_la57) #7, !dbg !522
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !522

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind
define internal void @sanitize_boot_params(ptr noundef %boot_params) #0 !dbg !63 {
entry:
  %boot_params.addr = alloca ptr, align 8
  %bp_base = alloca ptr, align 8
  %save_base = alloca ptr, align 8
  %i = alloca i32, align 4
  %to_save = alloca [20 x %struct.boot_params_to_save], align 16
  store ptr %boot_params, ptr %boot_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %boot_params.addr, metadata !403, metadata !DIExpression()), !dbg !523
  %0 = load ptr, ptr %boot_params.addr, align 8, !dbg !524
  %sentinel = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 26, !dbg !525
  %1 = load i8, ptr %sentinel, align 1, !dbg !525
  %tobool = icmp ne i8 %1, 0, !dbg !524
  br i1 %tobool, label %if.then, label %if.end, !dbg !526

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %bp_base) #7, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %bp_base, metadata !404, metadata !DIExpression()), !dbg !528
  %2 = load ptr, ptr %boot_params.addr, align 8, !dbg !529
  store ptr %2, ptr %bp_base, align 8, !dbg !528
  call void @llvm.lifetime.start.p0(i64 8, ptr %save_base) #7, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %save_base, metadata !407, metadata !DIExpression()), !dbg !531
  store ptr @sanitize_boot_params.scratch, ptr %save_base, align 8, !dbg !531
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %i, metadata !408, metadata !DIExpression()), !dbg !533
  call void @llvm.lifetime.start.p0(i64 160, ptr %to_save) #7, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %to_save, metadata !409, metadata !DIExpression()), !dbg !535
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %to_save, ptr align 16 @__const.sanitize_boot_params.to_save, i64 160, i1 false), !dbg !535
  %call = call ptr @memset(ptr noundef @sanitize_boot_params.scratch, i32 noundef 0, i64 noundef 4096) #8, !dbg !536
  store i32 0, ptr %i, align 4, !dbg !537
  br label %for.cond, !dbg !539

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4, !dbg !540
  %conv = sext i32 %3 to i64, !dbg !540
  %cmp = icmp ult i64 %conv, 20, !dbg !542
  br i1 %cmp, label %for.body, label %for.end, !dbg !543

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %save_base, align 8, !dbg !544
  %5 = load i32, ptr %i, align 4, !dbg !546
  %idxprom = sext i32 %5 to i64, !dbg !547
  %arrayidx = getelementptr inbounds [20 x %struct.boot_params_to_save], ptr %to_save, i64 0, i64 %idxprom, !dbg !547
  %start = getelementptr inbounds %struct.boot_params_to_save, ptr %arrayidx, i32 0, i32 0, !dbg !548
  %6 = load i32, ptr %start, align 8, !dbg !548
  %idx.ext = zext i32 %6 to i64, !dbg !549
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext, !dbg !549
  %7 = load ptr, ptr %bp_base, align 8, !dbg !550
  %8 = load i32, ptr %i, align 4, !dbg !551
  %idxprom2 = sext i32 %8 to i64, !dbg !552
  %arrayidx3 = getelementptr inbounds [20 x %struct.boot_params_to_save], ptr %to_save, i64 0, i64 %idxprom2, !dbg !552
  %start4 = getelementptr inbounds %struct.boot_params_to_save, ptr %arrayidx3, i32 0, i32 0, !dbg !553
  %9 = load i32, ptr %start4, align 8, !dbg !553
  %idx.ext5 = zext i32 %9 to i64, !dbg !554
  %add.ptr6 = getelementptr inbounds i8, ptr %7, i64 %idx.ext5, !dbg !554
  %10 = load i32, ptr %i, align 4, !dbg !555
  %idxprom7 = sext i32 %10 to i64, !dbg !556
  %arrayidx8 = getelementptr inbounds [20 x %struct.boot_params_to_save], ptr %to_save, i64 0, i64 %idxprom7, !dbg !556
  %len = getelementptr inbounds %struct.boot_params_to_save, ptr %arrayidx8, i32 0, i32 1, !dbg !557
  %11 = load i32, ptr %len, align 4, !dbg !557
  %conv9 = zext i32 %11 to i64, !dbg !556
  %call10 = call ptr @memcpy(ptr noundef %add.ptr, ptr noundef %add.ptr6, i64 noundef %conv9) #8, !dbg !558
  br label %for.inc, !dbg !559

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !560
  %inc = add nsw i32 %12, 1, !dbg !560
  store i32 %inc, ptr %i, align 4, !dbg !560
  br label %for.cond, !dbg !561, !llvm.loop !562

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %boot_params.addr, align 8, !dbg !566
  %14 = load ptr, ptr %save_base, align 8, !dbg !567
  %call11 = call ptr @memcpy(ptr noundef %13, ptr noundef %14, i64 noundef 4096) #8, !dbg !568
  call void @llvm.lifetime.end.p0(i64 160, ptr %to_save) #7, !dbg !569
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !569
  call void @llvm.lifetime.end.p0(i64 8, ptr %save_base) #7, !dbg !569
  call void @llvm.lifetime.end.p0(i64 8, ptr %bp_base) #7, !dbg !569
  br label %if.end, !dbg !570

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !571
}

; Function Attrs: noredzone
declare !dbg !572 hidden i32 @cmdline_find_option_bool(ptr noundef) #3

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @native_cpuid_eax(i32 noundef %op) #4 !dbg !577 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !582, metadata !DIExpression()), !dbg !587
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #7, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !583, metadata !DIExpression()), !dbg !587
  %0 = load i32, ptr %op.addr, align 4, !dbg !587
  store i32 %0, ptr %eax, align 4, !dbg !587
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #7, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !584, metadata !DIExpression()), !dbg !587
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #7, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !585, metadata !DIExpression()), !dbg !587
  store i32 0, ptr %ecx, align 4, !dbg !587
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #7, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !586, metadata !DIExpression()), !dbg !587
  call void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #8, !dbg !587
  %1 = load i32, ptr %eax, align 4, !dbg !587
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #7, !dbg !587
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #7, !dbg !587
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #7, !dbg !587
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #7, !dbg !587
  ret i32 %1, !dbg !587
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @native_cpuid_ecx(i32 noundef %op) #4 !dbg !588 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !590, metadata !DIExpression()), !dbg !595
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #7, !dbg !595
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !591, metadata !DIExpression()), !dbg !595
  %0 = load i32, ptr %op.addr, align 4, !dbg !595
  store i32 %0, ptr %eax, align 4, !dbg !595
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #7, !dbg !595
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !592, metadata !DIExpression()), !dbg !595
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #7, !dbg !595
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !593, metadata !DIExpression()), !dbg !595
  store i32 0, ptr %ecx, align 4, !dbg !595
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #7, !dbg !595
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !594, metadata !DIExpression()), !dbg !595
  call void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #8, !dbg !595
  %1 = load i32, ptr %ecx, align 4, !dbg !595
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #7, !dbg !595
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #7, !dbg !595
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #7, !dbg !595
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #7, !dbg !595
  ret i32 %1, !dbg !595
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @native_read_cr4() #4 !dbg !596 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !602
  call void @llvm.dbg.declare(metadata ptr %val, metadata !601, metadata !DIExpression()), !dbg !603
  %0 = call i64 asm sideeffect "mov %cr4,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #7, !dbg !604, !srcloc !605
  store i64 %0, ptr %val, align 8, !dbg !604
  %1 = load i64, ptr %val, align 8, !dbg !606
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !607
  ret i64 %1, !dbg !608
}

; Function Attrs: noredzone nounwind
define internal i64 @find_trampoline_placement() #0 !dbg !609 {
entry:
  %bios_start = alloca i64, align 8
  %ebda_start = alloca i64, align 8
  %entry1 = alloca ptr, align 8
  %signature = alloca ptr, align 8
  %i = alloca i32, align 4
  %new = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bios_start) #7, !dbg !621
  call void @llvm.dbg.declare(metadata ptr %bios_start, metadata !611, metadata !DIExpression()), !dbg !622
  store i64 0, ptr %bios_start, align 8, !dbg !622
  call void @llvm.lifetime.start.p0(i64 8, ptr %ebda_start) #7, !dbg !621
  call void @llvm.dbg.declare(metadata ptr %ebda_start, metadata !612, metadata !DIExpression()), !dbg !623
  store i64 0, ptr %ebda_start, align 8, !dbg !623
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #7, !dbg !624
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !613, metadata !DIExpression()), !dbg !625
  call void @llvm.lifetime.start.p0(i64 8, ptr %signature) #7, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %signature, metadata !615, metadata !DIExpression()), !dbg !627
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %i, metadata !616, metadata !DIExpression()), !dbg !629
  %0 = load ptr, ptr @boot_params_ptr, align 8, !dbg !630
  %efi_info = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 17, !dbg !631
  %efi_loader_signature = getelementptr inbounds %struct.efi_info, ptr %efi_info, i32 0, i32 0, !dbg !632
  store ptr %efi_loader_signature, ptr %signature, align 8, !dbg !633
  %1 = load ptr, ptr %signature, align 8, !dbg !634
  %call = call i32 @strncmp(ptr noundef %1, ptr noundef @.str.1, i64 noundef 4) #8, !dbg !636
  %tobool = icmp ne i32 %call, 0, !dbg !636
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !637

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %signature, align 8, !dbg !638
  %call2 = call i32 @strncmp(ptr noundef %2, ptr noundef @.str.2, i64 noundef 4) #8, !dbg !639
  %tobool3 = icmp ne i32 %call2, 0, !dbg !639
  br i1 %tobool3, label %if.then, label %if.end, !dbg !640

if.then:                                          ; preds = %land.lhs.true
  %3 = load i16, ptr inttoptr (i64 1038 to ptr), align 2, !dbg !641
  %conv = zext i16 %3 to i32, !dbg !641
  %shl = shl i32 %conv, 4, !dbg !643
  %conv4 = sext i32 %shl to i64, !dbg !641
  store i64 %conv4, ptr %ebda_start, align 8, !dbg !644
  %4 = load i16, ptr inttoptr (i64 1043 to ptr), align 2, !dbg !645
  %conv5 = zext i16 %4 to i32, !dbg !645
  %shl6 = shl i32 %conv5, 10, !dbg !646
  %conv7 = sext i32 %shl6 to i64, !dbg !645
  store i64 %conv7, ptr %bios_start, align 8, !dbg !647
  br label %if.end, !dbg !648

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i64, ptr %bios_start, align 8, !dbg !649
  %cmp = icmp ult i64 %5, 131072, !dbg !651
  br i1 %cmp, label %if.then11, label %lor.lhs.false, !dbg !652

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, ptr %bios_start, align 8, !dbg !653
  %cmp9 = icmp ugt i64 %6, 651264, !dbg !654
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !655

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  store i64 651264, ptr %bios_start, align 8, !dbg !656
  br label %if.end12, !dbg !657

if.end12:                                         ; preds = %if.then11, %lor.lhs.false
  %7 = load i64, ptr %ebda_start, align 8, !dbg !658
  %cmp13 = icmp ugt i64 %7, 131072, !dbg !660
  br i1 %cmp13, label %land.lhs.true15, label %if.end19, !dbg !661

land.lhs.true15:                                  ; preds = %if.end12
  %8 = load i64, ptr %ebda_start, align 8, !dbg !662
  %9 = load i64, ptr %bios_start, align 8, !dbg !663
  %cmp16 = icmp ult i64 %8, %9, !dbg !664
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !665

if.then18:                                        ; preds = %land.lhs.true15
  %10 = load i64, ptr %ebda_start, align 8, !dbg !666
  store i64 %10, ptr %bios_start, align 8, !dbg !667
  br label %if.end19, !dbg !668

if.end19:                                         ; preds = %if.then18, %land.lhs.true15, %if.end12
  %11 = load i64, ptr %bios_start, align 8, !dbg !669
  %and = and i64 %11, -4096, !dbg !669
  store i64 %and, ptr %bios_start, align 8, !dbg !670
  %12 = load ptr, ptr @boot_params_ptr, align 8, !dbg !671
  %e820_entries = getelementptr inbounds %struct.boot_params, ptr %12, i32 0, i32 20, !dbg !672
  %13 = load i8, ptr %e820_entries, align 1, !dbg !672
  %conv20 = zext i8 %13 to i32, !dbg !671
  %sub = sub nsw i32 %conv20, 1, !dbg !673
  store i32 %sub, ptr %i, align 4, !dbg !674
  br label %for.cond, !dbg !675

for.cond:                                         ; preds = %for.inc, %if.end19
  %14 = load i32, ptr %i, align 4, !dbg !676
  %cmp21 = icmp sge i32 %14, 0, !dbg !677
  br i1 %cmp21, label %for.body, label %for.end, !dbg !678

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #7, !dbg !679
  call void @llvm.dbg.declare(metadata ptr %new, metadata !617, metadata !DIExpression()), !dbg !680
  %15 = load i64, ptr %bios_start, align 8, !dbg !681
  store i64 %15, ptr %new, align 8, !dbg !680
  %16 = load ptr, ptr @boot_params_ptr, align 8, !dbg !682
  %e820_table = getelementptr inbounds %struct.boot_params, ptr %16, i32 0, i32 31, !dbg !683
  %17 = load i32, ptr %i, align 4, !dbg !684
  %idxprom = sext i32 %17 to i64, !dbg !682
  %arrayidx = getelementptr inbounds [128 x %struct.boot_e820_entry], ptr %e820_table, i64 0, i64 %idxprom, !dbg !682
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !685
  %18 = load i64, ptr %bios_start, align 8, !dbg !686
  %19 = load ptr, ptr %entry1, align 8, !dbg !688
  %addr = getelementptr inbounds %struct.boot_e820_entry, ptr %19, i32 0, i32 0, !dbg !689
  %20 = load i64, ptr %addr, align 1, !dbg !689
  %cmp23 = icmp ule i64 %18, %20, !dbg !690
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !691

if.then25:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !692

if.end26:                                         ; preds = %for.body
  %21 = load ptr, ptr %entry1, align 8, !dbg !693
  %type = getelementptr inbounds %struct.boot_e820_entry, ptr %21, i32 0, i32 2, !dbg !695
  %22 = load i32, ptr %type, align 1, !dbg !695
  %cmp27 = icmp ne i32 %22, 1, !dbg !696
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !697

if.then29:                                        ; preds = %if.end26
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !698

if.end30:                                         ; preds = %if.end26
  %23 = load i64, ptr %bios_start, align 8, !dbg !699
  %24 = load ptr, ptr %entry1, align 8, !dbg !701
  %addr31 = getelementptr inbounds %struct.boot_e820_entry, ptr %24, i32 0, i32 0, !dbg !702
  %25 = load i64, ptr %addr31, align 1, !dbg !702
  %26 = load ptr, ptr %entry1, align 8, !dbg !703
  %size = getelementptr inbounds %struct.boot_e820_entry, ptr %26, i32 0, i32 1, !dbg !704
  %27 = load i64, ptr %size, align 1, !dbg !704
  %add = add i64 %25, %27, !dbg !705
  %cmp32 = icmp ugt i64 %23, %add, !dbg !706
  br i1 %cmp32, label %if.then34, label %if.end38, !dbg !707

if.then34:                                        ; preds = %if.end30
  %28 = load ptr, ptr %entry1, align 8, !dbg !708
  %addr35 = getelementptr inbounds %struct.boot_e820_entry, ptr %28, i32 0, i32 0, !dbg !709
  %29 = load i64, ptr %addr35, align 1, !dbg !709
  %30 = load ptr, ptr %entry1, align 8, !dbg !710
  %size36 = getelementptr inbounds %struct.boot_e820_entry, ptr %30, i32 0, i32 1, !dbg !711
  %31 = load i64, ptr %size36, align 1, !dbg !711
  %add37 = add i64 %29, %31, !dbg !712
  store i64 %add37, ptr %new, align 8, !dbg !713
  br label %if.end38, !dbg !714

if.end38:                                         ; preds = %if.then34, %if.end30
  %32 = load i64, ptr %new, align 8, !dbg !715
  %and39 = and i64 %32, -4096, !dbg !715
  store i64 %and39, ptr %new, align 8, !dbg !716
  %33 = load i64, ptr %new, align 8, !dbg !717
  %sub40 = sub i64 %33, 8192, !dbg !719
  %34 = load ptr, ptr %entry1, align 8, !dbg !720
  %addr41 = getelementptr inbounds %struct.boot_e820_entry, ptr %34, i32 0, i32 0, !dbg !721
  %35 = load i64, ptr %addr41, align 1, !dbg !721
  %cmp42 = icmp ult i64 %sub40, %35, !dbg !722
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !723

if.then44:                                        ; preds = %if.end38
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !724

if.end45:                                         ; preds = %if.end38
  %36 = load i64, ptr %new, align 8, !dbg !725
  %sub46 = sub i64 %36, 8192, !dbg !727
  %37 = load i64, ptr %bios_start, align 8, !dbg !728
  %cmp47 = icmp ugt i64 %sub46, %37, !dbg !729
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !730

if.then49:                                        ; preds = %if.end45
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !731

if.end50:                                         ; preds = %if.end45
  %38 = load i64, ptr %new, align 8, !dbg !732
  store i64 %38, ptr %bios_start, align 8, !dbg !733
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !734

cleanup:                                          ; preds = %if.end50, %if.then49, %if.then44, %if.then29, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #7, !dbg !735
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

for.inc:                                          ; preds = %cleanup
  %39 = load i32, ptr %i, align 4, !dbg !736
  %dec = add nsw i32 %39, -1, !dbg !736
  store i32 %dec, ptr %i, align 4, !dbg !736
  br label %for.cond, !dbg !737, !llvm.loop !738

for.end:                                          ; preds = %cleanup, %for.cond
  %40 = load i64, ptr %bios_start, align 8, !dbg !740
  %sub51 = sub i64 %40, 8192, !dbg !741
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !742
  call void @llvm.lifetime.end.p0(i64 8, ptr %signature) #7, !dbg !742
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #7, !dbg !742
  call void @llvm.lifetime.end.p0(i64 8, ptr %ebda_start) #7, !dbg !742
  call void @llvm.lifetime.end.p0(i64 8, ptr %bios_start) #7, !dbg !742
  ret i64 %sub51, !dbg !743

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noredzone
declare hidden void @trampoline_32bit_src(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__native_read_cr3() #4 !dbg !744 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %val, metadata !746, metadata !DIExpression()), !dbg !748
  %0 = call i64 asm sideeffect "mov %cr3,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #7, !dbg !749, !srcloc !750
  store i64 %0, ptr %val, align 8, !dbg !749
  %1 = load i64, ptr %val, align 8, !dbg !751
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !752
  ret i64 %1, !dbg !753
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @native_write_cr3(i64 noundef %val) #4 !dbg !754 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !758, metadata !DIExpression()), !dbg !759
  %0 = load i64, ptr %val.addr, align 8, !dbg !760
  call void asm sideeffect "mov $0,%cr3", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %0) #7, !dbg !761, !srcloc !762
  ret void, !dbg !763
}

; Function Attrs: noredzone
declare !dbg !764 hidden ptr @memset(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noredzone
declare !dbg !772 hidden ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 !dbg !777 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !781, metadata !DIExpression()), !dbg !785
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !782, metadata !DIExpression()), !dbg !786
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !783, metadata !DIExpression()), !dbg !787
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !784, metadata !DIExpression()), !dbg !788
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !789
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !790
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !791
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !792
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !793
  %5 = load i32, ptr %4, align 4, !dbg !794
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !795
  %7 = load i32, ptr %6, align 4, !dbg !796
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #7, !dbg !797, !srcloc !798
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !797
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !797
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !797
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !797
  store i32 %asmresult, ptr %0, align 4, !dbg !797
  store i32 %asmresult1, ptr %1, align 4, !dbg !797
  store i32 %asmresult2, ptr %2, align 4, !dbg !797
  store i32 %asmresult3, ptr %3, align 4, !dbg !797
  ret void, !dbg !799
}

; Function Attrs: noredzone
declare !dbg !800 hidden i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!425, !426, !427, !428, !429, !430}
!llvm.ident = !{!431}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pgdir_shift", scope: !2, file: !3, line: 16, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/compressed/.pgtable_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m64 -O1 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -std=gnu11 -fno-strict-aliasing -fPIE -Wundef -D DISABLE_BRANCH_PROFILING -mcmodel=small -mno-red-zone -mno-mmx -mno-sse -ffreestanding -fshort-wchar -fno-stack-protector -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D __DISABLE_EXPORTS -Wa,-mrelax-relocations=no -include ./include/linux/hidden.h -D KBUILD_MODFILE=\22arch/x86/boot/compressed/pgtable_64\22 -D KBUILD_BASENAME=\22pgtable_64\22 -D KBUILD_MODNAME=\22pgtable_64\22 -D __KBUILD_MODNAME=kmod_pgtable_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/compressed/pgtable_64.ll arch/x86/boot/compressed/pgtable_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !44, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/boot/compressed/pgtable_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1aa11e0af69d2560523a6ed7c7177844")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e820_type", file: !12, line: 10, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./arch/x86/include/asm/e820/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3d4b2499539a4fc8ec760e67f9268a5")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22}
!14 = !DIEnumerator(name: "E820_TYPE_RAM", value: 1)
!15 = !DIEnumerator(name: "E820_TYPE_RESERVED", value: 2)
!16 = !DIEnumerator(name: "E820_TYPE_ACPI", value: 3)
!17 = !DIEnumerator(name: "E820_TYPE_NVS", value: 4)
!18 = !DIEnumerator(name: "E820_TYPE_UNUSABLE", value: 5)
!19 = !DIEnumerator(name: "E820_TYPE_PMEM", value: 7)
!20 = !DIEnumerator(name: "E820_TYPE_PRAM", value: 12)
!21 = !DIEnumerator(name: "E820_TYPE_SOFT_RESERVED", value: 4026531839, isUnsigned: true)
!22 = !DIEnumerator(name: "E820_TYPE_RESERVED_KERN", value: 128)
!23 = !{!24, !25, !26, !31, !35, !37, !38, !40, !41, !42}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !28, line: 21, baseType: !29)
!28 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !30, line: 27, baseType: !7)
!30 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !28, line: 17, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !30, line: 21, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !36, line: 14, baseType: !25)
!36 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !{!0, !45, !47, !52, !54, !59, !61, !418, !423}
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "ptrs_per_p4d", scope: !2, file: !3, line: 17, type: !7, isLocal: false, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 56, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 7)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "__pgtable_l5_enabled", scope: !2, file: !3, line: 15, type: !7, isLocal: false, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "trampoline_save", scope: !2, file: !3, line: 21, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 65536, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 8192)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "trampoline_32bit", scope: !2, file: !3, line: 30, type: !24, isLocal: false, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "scratch", scope: !63, file: !64, line: 52, type: !68, isLocal: true, isDefinition: true)
!63 = distinct !DISubprogram(name: "sanitize_boot_params", scope: !64, file: !64, line: 35, type: !65, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !402)
!64 = !DIFile(filename: "./arch/x86/include/asm/bootparam_utils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e9aa2b9a98721d89505e57893f0cd6")
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_params", file: !69, line: 186, size: 32768, elements: !70)
!69 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!70 = !{!71, !115, !128, !132, !135, !143, !144, !148, !152, !153, !161, !168, !169, !170, !171, !175, !176, !184, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !208, !250, !254, !256, !263, !267, !398}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "screen_info", scope: !68, file: !69, line: 187, baseType: !72, size: 512)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "screen_info", file: !73, line: 11, size: 512, elements: !74)
!73 = !DIFile(filename: "./include/uapi/linux/screen_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "395c08eb846a258de3277732fcbc2819")
!74 = !{!75, !76, !77, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "orig_x", scope: !72, file: !73, line: 12, baseType: !33, size: 8)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "orig_y", scope: !72, file: !73, line: 13, baseType: !33, size: 8, offset: 8)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ext_mem_k", scope: !72, file: !73, line: 14, baseType: !78, size: 16, offset: 16)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !30, line: 24, baseType: !43)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_page", scope: !72, file: !73, line: 15, baseType: !78, size: 16, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_mode", scope: !72, file: !73, line: 16, baseType: !33, size: 8, offset: 48)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_cols", scope: !72, file: !73, line: 17, baseType: !33, size: 8, offset: 56)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !73, line: 18, baseType: !33, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !72, file: !73, line: 19, baseType: !33, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_ega_bx", scope: !72, file: !73, line: 20, baseType: !78, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !72, file: !73, line: 21, baseType: !78, size: 16, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_lines", scope: !72, file: !73, line: 22, baseType: !33, size: 8, offset: 112)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_isVGA", scope: !72, file: !73, line: 23, baseType: !33, size: 8, offset: 120)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_points", scope: !72, file: !73, line: 24, baseType: !78, size: 16, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_width", scope: !72, file: !73, line: 27, baseType: !78, size: 16, offset: 144)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_height", scope: !72, file: !73, line: 28, baseType: !78, size: 16, offset: 160)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_depth", scope: !72, file: !73, line: 29, baseType: !78, size: 16, offset: 176)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_base", scope: !72, file: !73, line: 30, baseType: !29, size: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_size", scope: !72, file: !73, line: 31, baseType: !29, size: 32, offset: 224)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "cl_magic", scope: !72, file: !73, line: 32, baseType: !78, size: 16, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "cl_offset", scope: !72, file: !73, line: 32, baseType: !78, size: 16, offset: 272)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_linelength", scope: !72, file: !73, line: 33, baseType: !78, size: 16, offset: 288)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "red_size", scope: !72, file: !73, line: 34, baseType: !33, size: 8, offset: 304)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "red_pos", scope: !72, file: !73, line: 35, baseType: !33, size: 8, offset: 312)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "green_size", scope: !72, file: !73, line: 36, baseType: !33, size: 8, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "green_pos", scope: !72, file: !73, line: 37, baseType: !33, size: 8, offset: 328)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "blue_size", scope: !72, file: !73, line: 38, baseType: !33, size: 8, offset: 336)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "blue_pos", scope: !72, file: !73, line: 39, baseType: !33, size: 8, offset: 344)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_size", scope: !72, file: !73, line: 40, baseType: !33, size: 8, offset: 352)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_pos", scope: !72, file: !73, line: 41, baseType: !33, size: 8, offset: 360)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_seg", scope: !72, file: !73, line: 42, baseType: !78, size: 16, offset: 368)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_off", scope: !72, file: !73, line: 43, baseType: !78, size: 16, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !72, file: !73, line: 44, baseType: !78, size: 16, offset: 400)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "vesa_attributes", scope: !72, file: !73, line: 45, baseType: !78, size: 16, offset: 416)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !72, file: !73, line: 46, baseType: !29, size: 32, offset: 432)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ext_lfb_base", scope: !72, file: !73, line: 47, baseType: !29, size: 32, offset: 464)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved", scope: !72, file: !73, line: 48, baseType: !112, size: 16, offset: 496)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 16, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 2)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "apm_bios_info", scope: !68, file: !69, line: 188, baseType: !116, size: 160, offset: 512)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apm_bios_info", file: !117, line: 25, size: 160, elements: !118)
!117 = !DIFile(filename: "./include/uapi/linux/apm_bios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a2faf7b1bd7c92e79370dc4887ba91d3")
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !116, file: !117, line: 26, baseType: !78, size: 16)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "cseg", scope: !116, file: !117, line: 27, baseType: !78, size: 16, offset: 16)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !116, file: !117, line: 28, baseType: !29, size: 32, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16", scope: !116, file: !117, line: 29, baseType: !78, size: 16, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "dseg", scope: !116, file: !117, line: 30, baseType: !78, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !117, line: 31, baseType: !78, size: 16, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_len", scope: !116, file: !117, line: 32, baseType: !78, size: 16, offset: 112)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16_len", scope: !116, file: !117, line: 33, baseType: !78, size: 16, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "dseg_len", scope: !116, file: !117, line: 34, baseType: !78, size: 16, offset: 144)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2", scope: !68, file: !69, line: 189, baseType: !129, size: 32, offset: 672)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 4)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tboot_addr", scope: !68, file: !69, line: 190, baseType: !133, size: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !30, line: 31, baseType: !134)
!134 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ist_info", scope: !68, file: !69, line: 191, baseType: !136, size: 128, offset: 768)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ist_info", file: !137, line: 23, size: 128, elements: !138)
!137 = !DIFile(filename: "./arch/x86/include/uapi/asm/ist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3966eee4102636d4a6a170719935cbb6")
!138 = !{!139, !140, !141, !142}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !136, file: !137, line: 24, baseType: !29, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !136, file: !137, line: 25, baseType: !29, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !136, file: !137, line: 26, baseType: !29, size: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "perf_level", scope: !136, file: !137, line: 27, baseType: !29, size: 32, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_rsdp_addr", scope: !68, file: !69, line: 192, baseType: !133, size: 64, offset: 896)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3", scope: !68, file: !69, line: 193, baseType: !145, size: 64, offset: 960)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "hd0_info", scope: !68, file: !69, line: 194, baseType: !149, size: 128, offset: 1024)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 16)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "hd1_info", scope: !68, file: !69, line: 195, baseType: !149, size: 128, offset: 1152)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "sys_desc_table", scope: !68, file: !69, line: 196, baseType: !154, size: 128, offset: 1280)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_desc_table", file: !69, line: 110, size: 128, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !154, file: !69, line: 111, baseType: !78, size: 16)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !154, file: !69, line: 112, baseType: !158, size: 112, offset: 16)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 112, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 14)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "olpc_ofw_header", scope: !68, file: !69, line: 197, baseType: !162, size: 128, offset: 1408)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "olpc_ofw_header", file: !69, line: 116, size: 128, elements: !163)
!163 = !{!164, !165, !166, !167}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_magic", scope: !162, file: !69, line: 117, baseType: !29, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_version", scope: !162, file: !69, line: 118, baseType: !29, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "cif_handler", scope: !162, file: !69, line: 119, baseType: !29, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "irq_desc_table", scope: !162, file: !69, line: 120, baseType: !29, size: 32, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_image", scope: !68, file: !69, line: 198, baseType: !29, size: 32, offset: 1536)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_size", scope: !68, file: !69, line: 199, baseType: !29, size: 32, offset: 1568)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cmd_line_ptr", scope: !68, file: !69, line: 200, baseType: !29, size: 32, offset: 1600)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_pad4", scope: !68, file: !69, line: 201, baseType: !172, size: 896, offset: 1632)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 896, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 112)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "cc_blob_address", scope: !68, file: !69, line: 202, baseType: !29, size: 32, offset: 2528)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "edid_info", scope: !68, file: !69, line: 203, baseType: !177, size: 1024, offset: 2560)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edid_info", file: !178, line: 5, size: 1024, elements: !179)
!178 = !DIFile(filename: "./include/uapi/video/edid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a36c5e7269b764712ba1a5dc2e5eb27d")
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !177, file: !178, line: 6, baseType: !181, size: 1024)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1024, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "efi_info", scope: !68, file: !69, line: 204, baseType: !185, size: 256, offset: 3584)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_info", file: !69, line: 123, size: 256, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "efi_loader_signature", scope: !185, file: !69, line: 124, baseType: !29, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab", scope: !185, file: !69, line: 125, baseType: !29, size: 32, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_size", scope: !185, file: !69, line: 126, baseType: !29, size: 32, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_version", scope: !185, file: !69, line: 127, baseType: !29, size: 32, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap", scope: !185, file: !69, line: 128, baseType: !29, size: 32, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_size", scope: !185, file: !69, line: 129, baseType: !29, size: 32, offset: 160)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab_hi", scope: !185, file: !69, line: 130, baseType: !29, size: 32, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_hi", scope: !185, file: !69, line: 131, baseType: !29, size: 32, offset: 224)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "alt_mem_k", scope: !68, file: !69, line: 205, baseType: !29, size: 32, offset: 3840)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !68, file: !69, line: 206, baseType: !29, size: 32, offset: 3872)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "e820_entries", scope: !68, file: !69, line: 207, baseType: !33, size: 8, offset: 3904)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf_entries", scope: !68, file: !69, line: 208, baseType: !33, size: 8, offset: 3912)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buf_entries", scope: !68, file: !69, line: 209, baseType: !33, size: 8, offset: 3920)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "kbd_status", scope: !68, file: !69, line: 210, baseType: !33, size: 8, offset: 3928)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "secure_boot", scope: !68, file: !69, line: 211, baseType: !33, size: 8, offset: 3936)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_pad5", scope: !68, file: !69, line: 212, baseType: !112, size: 16, offset: 3944)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !68, file: !69, line: 224, baseType: !33, size: 8, offset: 3960)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_pad6", scope: !68, file: !69, line: 225, baseType: !205, size: 8, offset: 3968)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 1)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !68, file: !69, line: 226, baseType: !209, size: 984, offset: 3976)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_header", file: !69, line: 68, size: 984, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "setup_sects", scope: !209, file: !69, line: 69, baseType: !33, size: 8)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "root_flags", scope: !209, file: !69, line: 70, baseType: !78, size: 16, offset: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "syssize", scope: !209, file: !69, line: 71, baseType: !29, size: 32, offset: 24)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ram_size", scope: !209, file: !69, line: 72, baseType: !78, size: 16, offset: 56)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "vid_mode", scope: !209, file: !69, line: 73, baseType: !78, size: 16, offset: 72)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "root_dev", scope: !209, file: !69, line: 74, baseType: !78, size: 16, offset: 88)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "boot_flag", scope: !209, file: !69, line: 75, baseType: !78, size: 16, offset: 104)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !209, file: !69, line: 76, baseType: !78, size: 16, offset: 120)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !209, file: !69, line: 77, baseType: !29, size: 32, offset: 136)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !209, file: !69, line: 78, baseType: !78, size: 16, offset: 168)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "realmode_swtch", scope: !209, file: !69, line: 79, baseType: !29, size: 32, offset: 184)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "start_sys_seg", scope: !209, file: !69, line: 80, baseType: !78, size: 16, offset: 216)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_version", scope: !209, file: !69, line: 81, baseType: !78, size: 16, offset: 232)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "type_of_loader", scope: !209, file: !69, line: 82, baseType: !33, size: 8, offset: 248)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "loadflags", scope: !209, file: !69, line: 83, baseType: !33, size: 8, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "setup_move_size", scope: !209, file: !69, line: 84, baseType: !78, size: 16, offset: 264)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "code32_start", scope: !209, file: !69, line: 85, baseType: !29, size: 32, offset: 280)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_image", scope: !209, file: !69, line: 86, baseType: !29, size: 32, offset: 312)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_size", scope: !209, file: !69, line: 87, baseType: !29, size: 32, offset: 344)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bootsect_kludge", scope: !209, file: !69, line: 88, baseType: !29, size: 32, offset: 376)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "heap_end_ptr", scope: !209, file: !69, line: 89, baseType: !78, size: 16, offset: 408)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_ver", scope: !209, file: !69, line: 90, baseType: !33, size: 8, offset: 424)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_type", scope: !209, file: !69, line: 91, baseType: !33, size: 8, offset: 432)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_line_ptr", scope: !209, file: !69, line: 92, baseType: !29, size: 32, offset: 440)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "initrd_addr_max", scope: !209, file: !69, line: 93, baseType: !29, size: 32, offset: 472)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_alignment", scope: !209, file: !69, line: 94, baseType: !29, size: 32, offset: 504)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "relocatable_kernel", scope: !209, file: !69, line: 95, baseType: !33, size: 8, offset: 536)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "min_alignment", scope: !209, file: !69, line: 96, baseType: !33, size: 8, offset: 544)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "xloadflags", scope: !209, file: !69, line: 97, baseType: !78, size: 16, offset: 552)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_size", scope: !209, file: !69, line: 98, baseType: !29, size: 32, offset: 568)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch", scope: !209, file: !69, line: 99, baseType: !29, size: 32, offset: 600)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch_data", scope: !209, file: !69, line: 100, baseType: !133, size: 64, offset: 632)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "payload_offset", scope: !209, file: !69, line: 101, baseType: !29, size: 32, offset: 696)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !209, file: !69, line: 102, baseType: !29, size: 32, offset: 728)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "setup_data", scope: !209, file: !69, line: 103, baseType: !133, size: 64, offset: 760)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pref_address", scope: !209, file: !69, line: 104, baseType: !133, size: 64, offset: 824)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "init_size", scope: !209, file: !69, line: 105, baseType: !29, size: 32, offset: 888)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "handover_offset", scope: !209, file: !69, line: 106, baseType: !29, size: 32, offset: 920)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_info_offset", scope: !209, file: !69, line: 107, baseType: !29, size: 32, offset: 952)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_pad7", scope: !68, file: !69, line: 227, baseType: !251, size: 288, offset: 4960)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 288, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 36)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buffer", scope: !68, file: !69, line: 228, baseType: !255, size: 512, offset: 5248)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 512, elements: !150)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "e820_table", scope: !68, file: !69, line: 229, baseType: !257, size: 20480, offset: 5760)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 20480, elements: !182)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_e820_entry", file: !69, line: 143, size: 160, elements: !259)
!259 = !{!260, !261, !262}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !258, file: !69, line: 144, baseType: !133, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !258, file: !69, line: 145, baseType: !133, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !258, file: !69, line: 146, baseType: !29, size: 32, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_pad8", scope: !68, file: !69, line: 230, baseType: !264, size: 384, offset: 26240)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 384, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 48)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf", scope: !68, file: !69, line: 231, baseType: !268, size: 3936, offset: 26624)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 3936, elements: !396)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_info", file: !270, line: 173, size: 656, elements: !271)
!270 = !DIFile(filename: "./include/uapi/linux/edd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6546916b3caeeabef2983c5e06678df")
!271 = !{!272, !273, !274, !275, !276, !277, !278}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !269, file: !270, line: 174, baseType: !33, size: 8)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !269, file: !270, line: 175, baseType: !33, size: 8, offset: 8)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "interface_support", scope: !269, file: !270, line: 176, baseType: !78, size: 16, offset: 16)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_cylinder", scope: !269, file: !270, line: 177, baseType: !78, size: 16, offset: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_head", scope: !269, file: !270, line: 178, baseType: !33, size: 8, offset: 48)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_sectors_per_track", scope: !269, file: !270, line: 179, baseType: !33, size: 8, offset: 56)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !269, file: !270, line: 180, baseType: !279, size: 592, offset: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_device_params", file: !270, line: 72, size: 592, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !328, !394, !395}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !279, file: !270, line: 73, baseType: !78, size: 16)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !279, file: !270, line: 74, baseType: !78, size: 16, offset: 16)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_cylinders", scope: !279, file: !270, line: 75, baseType: !29, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_heads", scope: !279, file: !270, line: 76, baseType: !29, size: 32, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sectors_per_track", scope: !279, file: !270, line: 77, baseType: !29, size: 32, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_sectors", scope: !279, file: !270, line: 78, baseType: !133, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_sector", scope: !279, file: !270, line: 79, baseType: !78, size: 16, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "dpte_ptr", scope: !279, file: !270, line: 80, baseType: !29, size: 32, offset: 208)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !279, file: !270, line: 81, baseType: !78, size: 16, offset: 240)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "device_path_info_length", scope: !279, file: !270, line: 82, baseType: !33, size: 8, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !279, file: !270, line: 83, baseType: !33, size: 8, offset: 264)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !279, file: !270, line: 84, baseType: !78, size: 16, offset: 272)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "host_bus_type", scope: !279, file: !270, line: 85, baseType: !129, size: 32, offset: 288)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "interface_type", scope: !279, file: !270, line: 86, baseType: !145, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "interface_path", scope: !279, file: !270, line: 113, baseType: !296, size: 64, offset: 384)
!296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !279, file: !270, line: 87, size: 64, elements: !297)
!297 = !{!298, !304, !312, !316, !320, !324}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !296, file: !270, line: 92, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !270, line: 88, size: 64, elements: !300)
!300 = !{!301, !302, !303}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !299, file: !270, line: 89, baseType: !78, size: 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !299, file: !270, line: 90, baseType: !78, size: 16, offset: 16)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !299, file: !270, line: 91, baseType: !29, size: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !296, file: !270, line: 99, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !270, line: 93, size: 64, elements: !306)
!306 = !{!307, !308, !309, !310, !311}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !305, file: !270, line: 94, baseType: !33, size: 8)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !305, file: !270, line: 95, baseType: !33, size: 8, offset: 8)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !305, file: !270, line: 96, baseType: !33, size: 8, offset: 16)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !305, file: !270, line: 97, baseType: !33, size: 8, offset: 24)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !305, file: !270, line: 98, baseType: !29, size: 32, offset: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ibnd", scope: !296, file: !270, line: 103, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !270, line: 101, size: 64, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !313, file: !270, line: 102, baseType: !133, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "xprs", scope: !296, file: !270, line: 106, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !270, line: 104, size: 64, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !317, file: !270, line: 105, baseType: !133, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "htpt", scope: !296, file: !270, line: 109, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !270, line: 107, size: 64, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !321, file: !270, line: 108, baseType: !133, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !296, file: !270, line: 112, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !270, line: 110, size: 64, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !325, file: !270, line: 111, baseType: !133, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "device_path", scope: !279, file: !270, line: 168, baseType: !329, size: 128, offset: 448)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !279, file: !270, line: 114, size: 128, elements: !330)
!330 = !{!331, !339, !348, !355, !360, !365, !370, !375, !381, !389}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ata", scope: !329, file: !270, line: 121, baseType: !332, size: 128)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !270, line: 115, size: 128, elements: !333)
!333 = !{!334, !335, !336, !337, !338}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !332, file: !270, line: 116, baseType: !33, size: 8)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !332, file: !270, line: 117, baseType: !33, size: 8, offset: 8)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !332, file: !270, line: 118, baseType: !78, size: 16, offset: 16)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !332, file: !270, line: 119, baseType: !29, size: 32, offset: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !332, file: !270, line: 120, baseType: !133, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "atapi", scope: !329, file: !270, line: 129, baseType: !340, size: 128)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !270, line: 122, size: 128, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !340, file: !270, line: 123, baseType: !33, size: 8)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !340, file: !270, line: 124, baseType: !33, size: 8, offset: 8)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !340, file: !270, line: 125, baseType: !33, size: 8, offset: 16)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !340, file: !270, line: 126, baseType: !33, size: 8, offset: 24)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !340, file: !270, line: 127, baseType: !29, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !340, file: !270, line: 128, baseType: !133, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "scsi", scope: !329, file: !270, line: 135, baseType: !349, size: 128)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !270, line: 130, size: 128, elements: !350)
!350 = !{!351, !352, !353, !354}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !349, file: !270, line: 131, baseType: !78, size: 16)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !349, file: !270, line: 132, baseType: !133, size: 64, offset: 16)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !349, file: !270, line: 133, baseType: !78, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !349, file: !270, line: 134, baseType: !29, size: 32, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "usb", scope: !329, file: !270, line: 139, baseType: !356, size: 128)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !270, line: 136, size: 128, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !356, file: !270, line: 137, baseType: !133, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !356, file: !270, line: 138, baseType: !133, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i1394", scope: !329, file: !270, line: 143, baseType: !361, size: 128)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !270, line: 140, size: 128, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "eui", scope: !361, file: !270, line: 141, baseType: !133, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !361, file: !270, line: 142, baseType: !133, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "fibre", scope: !329, file: !270, line: 147, baseType: !366, size: 128)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !270, line: 144, size: 128, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "wwid", scope: !366, file: !270, line: 145, baseType: !133, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !366, file: !270, line: 146, baseType: !133, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i2o", scope: !329, file: !270, line: 151, baseType: !371, size: 128)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !270, line: 148, size: 128, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "identity_tag", scope: !371, file: !270, line: 149, baseType: !133, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !371, file: !270, line: 150, baseType: !133, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "raid", scope: !329, file: !270, line: 156, baseType: !376, size: 128)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !270, line: 152, size: 128, elements: !377)
!377 = !{!378, !379, !380}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "array_number", scope: !376, file: !270, line: 153, baseType: !29, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !376, file: !270, line: 154, baseType: !29, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !376, file: !270, line: 155, baseType: !133, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sata", scope: !329, file: !270, line: 163, baseType: !382, size: 128)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !270, line: 157, size: 128, elements: !383)
!383 = !{!384, !385, !386, !387, !388}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !382, file: !270, line: 158, baseType: !33, size: 8)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !382, file: !270, line: 159, baseType: !33, size: 8, offset: 8)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !382, file: !270, line: 160, baseType: !78, size: 16, offset: 16)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !382, file: !270, line: 161, baseType: !29, size: 32, offset: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !382, file: !270, line: 162, baseType: !133, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !329, file: !270, line: 167, baseType: !390, size: 128)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !270, line: 164, size: 128, elements: !391)
!391 = !{!392, !393}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !390, file: !270, line: 165, baseType: !133, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !390, file: !270, line: 166, baseType: !133, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !279, file: !270, line: 169, baseType: !33, size: 8, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !279, file: !270, line: 170, baseType: !33, size: 8, offset: 584)
!396 = !{!397}
!397 = !DISubrange(count: 6)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_pad9", scope: !68, file: !69, line: 232, baseType: !399, size: 2208, offset: 30560)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2208, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 276)
!402 = !{!403, !404, !407, !408, !409}
!403 = !DILocalVariable(name: "boot_params", arg: 1, scope: !63, file: !64, line: 35, type: !67)
!404 = !DILocalVariable(name: "bp_base", scope: !405, file: !64, line: 53, type: !38)
!405 = distinct !DILexicalBlock(scope: !406, file: !64, line: 51, column: 29)
!406 = distinct !DILexicalBlock(scope: !63, file: !64, line: 51, column: 6)
!407 = !DILocalVariable(name: "save_base", scope: !405, file: !64, line: 54, type: !38)
!408 = !DILocalVariable(name: "i", scope: !405, file: !64, line: 55, type: !40)
!409 = !DILocalVariable(name: "to_save", scope: !405, file: !64, line: 57, type: !410)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 1280, elements: !416)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_params_to_save", file: !64, line: 30, size: 64, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !412, file: !64, line: 31, baseType: !7, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !412, file: !64, line: 32, baseType: !7, size: 32, offset: 32)
!416 = !{!417}
!417 = !DISubrange(count: 20)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !420, isLocal: true, isDefinition: true)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 40, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 5)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !420, isLocal: true, isDefinition: true)
!425 = !{i32 7, !"Dwarf Version", i32 5}
!426 = !{i32 2, !"Debug Info Version", i32 3}
!427 = !{i32 1, !"wchar_size", i32 2}
!428 = !{i32 8, !"PIC Level", i32 2}
!429 = !{i32 7, !"PIE Level", i32 2}
!430 = !{i32 1, !"Code Model", i32 1}
!431 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!432 = distinct !DISubprogram(name: "configure_5level_paging", scope: !3, file: !3, line: 104, type: !433, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !67, !37}
!435 = !{!436, !437, !438, !442, !446}
!436 = !DILocalVariable(name: "bp", arg: 1, scope: !432, file: !3, line: 104, type: !67)
!437 = !DILocalVariable(name: "pgtable", arg: 2, scope: !432, file: !3, line: 104, type: !37)
!438 = !DILocalVariable(name: "toggle_la57", scope: !432, file: !3, line: 106, type: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !37}
!442 = !DILocalVariable(name: "l5_required", scope: !432, file: !3, line: 107, type: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !444, line: 35, baseType: !445)
!444 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!445 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!446 = !DILocalVariable(name: "src", scope: !447, file: !3, line: 180, type: !25)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 179, column: 9)
!448 = distinct !DILexicalBlock(scope: !432, file: !3, line: 173, column: 6)
!449 = !DILocation(line: 104, column: 61, scope: !432)
!450 = !DILocation(line: 104, column: 71, scope: !432)
!451 = !DILocation(line: 106, column: 2, scope: !432)
!452 = !DILocation(line: 106, column: 9, scope: !432)
!453 = !DILocation(line: 107, column: 2, scope: !432)
!454 = !DILocation(line: 107, column: 7, scope: !432)
!455 = !DILocation(line: 110, column: 23, scope: !432)
!456 = !DILocation(line: 110, column: 2, scope: !432)
!457 = !DILocation(line: 111, column: 20, scope: !432)
!458 = !DILocation(line: 111, column: 18, scope: !432)
!459 = !DILocation(line: 126, column: 5, scope: !460)
!460 = distinct !DILexicalBlock(scope: !432, file: !3, line: 125, column: 6)
!461 = !DILocation(line: 126, column: 40, scope: !460)
!462 = !DILocation(line: 127, column: 4, scope: !460)
!463 = !DILocation(line: 127, column: 24, scope: !460)
!464 = !DILocation(line: 127, column: 29, scope: !460)
!465 = !DILocation(line: 128, column: 5, scope: !460)
!466 = !DILocation(line: 128, column: 25, scope: !460)
!467 = !DILocation(line: 125, column: 6, scope: !432)
!468 = !DILocation(line: 129, column: 15, scope: !469)
!469 = distinct !DILexicalBlock(scope: !460, file: !3, line: 128, column: 60)
!470 = !DILocation(line: 132, column: 24, scope: !469)
!471 = !DILocation(line: 133, column: 15, scope: !469)
!472 = !DILocation(line: 134, column: 16, scope: !469)
!473 = !DILocation(line: 135, column: 2, scope: !469)
!474 = !DILocation(line: 141, column: 6, scope: !475)
!475 = distinct !DILexicalBlock(scope: !432, file: !3, line: 141, column: 6)
!476 = !{i8 0, i8 2}
!477 = !{}
!478 = !DILocation(line: 141, column: 24, scope: !475)
!479 = !DILocation(line: 141, column: 42, scope: !475)
!480 = !DILocation(line: 141, column: 22, scope: !475)
!481 = !DILocation(line: 141, column: 21, scope: !475)
!482 = !DILocation(line: 141, column: 18, scope: !475)
!483 = !DILocation(line: 141, column: 6, scope: !432)
!484 = !DILocation(line: 142, column: 3, scope: !475)
!485 = !DILocation(line: 144, column: 38, scope: !432)
!486 = !DILocation(line: 144, column: 21, scope: !432)
!487 = !DILocation(line: 144, column: 19, scope: !432)
!488 = !DILocation(line: 147, column: 2, scope: !432)
!489 = !DILocation(line: 150, column: 2, scope: !432)
!490 = !DILocation(line: 153, column: 16, scope: !432)
!491 = !DILocation(line: 153, column: 14, scope: !432)
!492 = !DILocation(line: 164, column: 22, scope: !432)
!493 = !DILocation(line: 164, column: 7, scope: !432)
!494 = !DILocation(line: 163, column: 17, scope: !432)
!495 = !DILocation(line: 163, column: 31, scope: !432)
!496 = !DILocation(line: 163, column: 29, scope: !432)
!497 = !DILocation(line: 163, column: 59, scope: !432)
!498 = !DILocation(line: 173, column: 6, scope: !448)
!499 = !DILocation(line: 173, column: 6, scope: !432)
!500 = !DILocation(line: 178, column: 23, scope: !501)
!501 = distinct !DILexicalBlock(scope: !448, file: !3, line: 173, column: 19)
!502 = !DILocation(line: 178, column: 43, scope: !501)
!503 = !DILocation(line: 178, column: 4, scope: !501)
!504 = !DILocation(line: 178, column: 21, scope: !501)
!505 = !DILocation(line: 179, column: 2, scope: !501)
!506 = !DILocation(line: 180, column: 3, scope: !447)
!507 = !DILocation(line: 180, column: 17, scope: !447)
!508 = !DILocation(line: 190, column: 27, scope: !447)
!509 = !DILocation(line: 190, column: 10, scope: !447)
!510 = !DILocation(line: 190, column: 9, scope: !447)
!511 = !DILocation(line: 190, column: 47, scope: !447)
!512 = !DILocation(line: 190, column: 7, scope: !447)
!513 = !DILocation(line: 191, column: 3, scope: !447)
!514 = !DILocation(line: 192, column: 2, scope: !448)
!515 = !DILocation(line: 194, column: 2, scope: !432)
!516 = !DILocation(line: 194, column: 14, scope: !432)
!517 = !DILocation(line: 199, column: 2, scope: !432)
!518 = !DILocation(line: 200, column: 34, scope: !432)
!519 = !DILocation(line: 200, column: 19, scope: !432)
!520 = !DILocation(line: 200, column: 2, scope: !432)
!521 = !DILocation(line: 203, column: 2, scope: !432)
!522 = !DILocation(line: 204, column: 1, scope: !432)
!523 = !DILocation(line: 35, column: 54, scope: !63)
!524 = !DILocation(line: 51, column: 6, scope: !406)
!525 = !DILocation(line: 51, column: 19, scope: !406)
!526 = !DILocation(line: 51, column: 6, scope: !63)
!527 = !DILocation(line: 53, column: 3, scope: !405)
!528 = !DILocation(line: 53, column: 9, scope: !405)
!529 = !DILocation(line: 53, column: 27, scope: !405)
!530 = !DILocation(line: 54, column: 3, scope: !405)
!531 = !DILocation(line: 54, column: 9, scope: !405)
!532 = !DILocation(line: 55, column: 3, scope: !405)
!533 = !DILocation(line: 55, column: 7, scope: !405)
!534 = !DILocation(line: 57, column: 3, scope: !405)
!535 = !DILocation(line: 57, column: 36, scope: !405)
!536 = !DILocation(line: 80, column: 3, scope: !405)
!537 = !DILocation(line: 82, column: 10, scope: !538)
!538 = distinct !DILexicalBlock(scope: !405, file: !64, line: 82, column: 3)
!539 = !DILocation(line: 82, column: 8, scope: !538)
!540 = !DILocation(line: 82, column: 15, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !64, line: 82, column: 3)
!542 = !DILocation(line: 82, column: 17, scope: !541)
!543 = !DILocation(line: 82, column: 3, scope: !538)
!544 = !DILocation(line: 83, column: 11, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !64, line: 82, column: 45)
!546 = !DILocation(line: 83, column: 31, scope: !545)
!547 = !DILocation(line: 83, column: 23, scope: !545)
!548 = !DILocation(line: 83, column: 34, scope: !545)
!549 = !DILocation(line: 83, column: 21, scope: !545)
!550 = !DILocation(line: 84, column: 11, scope: !545)
!551 = !DILocation(line: 84, column: 29, scope: !545)
!552 = !DILocation(line: 84, column: 21, scope: !545)
!553 = !DILocation(line: 84, column: 32, scope: !545)
!554 = !DILocation(line: 84, column: 19, scope: !545)
!555 = !DILocation(line: 84, column: 47, scope: !545)
!556 = !DILocation(line: 84, column: 39, scope: !545)
!557 = !DILocation(line: 84, column: 50, scope: !545)
!558 = !DILocation(line: 83, column: 4, scope: !545)
!559 = !DILocation(line: 85, column: 3, scope: !545)
!560 = !DILocation(line: 82, column: 41, scope: !541)
!561 = !DILocation(line: 82, column: 3, scope: !541)
!562 = distinct !{!562, !543, !563, !564, !565}
!563 = !DILocation(line: 85, column: 3, scope: !538)
!564 = !{!"llvm.loop.mustprogress"}
!565 = !{!"llvm.loop.unroll.disable"}
!566 = !DILocation(line: 87, column: 10, scope: !405)
!567 = !DILocation(line: 87, column: 23, scope: !405)
!568 = !DILocation(line: 87, column: 3, scope: !405)
!569 = !DILocation(line: 88, column: 2, scope: !406)
!570 = !DILocation(line: 88, column: 2, scope: !405)
!571 = !DILocation(line: 89, column: 1, scope: !63)
!572 = !DISubprogram(name: "cmdline_find_option_bool", scope: !3, file: !3, line: 32, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DISubroutineType(types: !574)
!574 = !{!40, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!577 = distinct !DISubprogram(name: "native_cpuid_eax", scope: !578, file: !578, line: 56, type: !579, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !581)
!578 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!579 = !DISubroutineType(types: !580)
!580 = !{!7, !7}
!581 = !{!582, !583, !584, !585, !586}
!582 = !DILocalVariable(name: "op", arg: 1, scope: !577, file: !578, line: 56, type: !7)
!583 = !DILocalVariable(name: "eax", scope: !577, file: !578, line: 56, type: !7)
!584 = !DILocalVariable(name: "ebx", scope: !577, file: !578, line: 56, type: !7)
!585 = !DILocalVariable(name: "ecx", scope: !577, file: !578, line: 56, type: !7)
!586 = !DILocalVariable(name: "edx", scope: !577, file: !578, line: 56, type: !7)
!587 = !DILocation(line: 56, column: 1, scope: !577)
!588 = distinct !DISubprogram(name: "native_cpuid_ecx", scope: !578, file: !578, line: 58, type: !579, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !589)
!589 = !{!590, !591, !592, !593, !594}
!590 = !DILocalVariable(name: "op", arg: 1, scope: !588, file: !578, line: 58, type: !7)
!591 = !DILocalVariable(name: "eax", scope: !588, file: !578, line: 58, type: !7)
!592 = !DILocalVariable(name: "ebx", scope: !588, file: !578, line: 58, type: !7)
!593 = !DILocalVariable(name: "ecx", scope: !588, file: !578, line: 58, type: !7)
!594 = !DILocalVariable(name: "edx", scope: !588, file: !578, line: 58, type: !7)
!595 = !DILocation(line: 58, column: 1, scope: !588)
!596 = distinct !DISubprogram(name: "native_read_cr4", scope: !597, file: !597, line: 57, type: !598, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !600)
!597 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!598 = !DISubroutineType(types: !599)
!599 = !{!25}
!600 = !{!601}
!601 = !DILocalVariable(name: "val", scope: !596, file: !597, line: 59, type: !25)
!602 = !DILocation(line: 59, column: 2, scope: !596)
!603 = !DILocation(line: 59, column: 16, scope: !596)
!604 = !DILocation(line: 72, column: 2, scope: !596)
!605 = !{i64 1690760, i64 1690775}
!606 = !DILocation(line: 74, column: 9, scope: !596)
!607 = !DILocation(line: 75, column: 1, scope: !596)
!608 = !DILocation(line: 74, column: 2, scope: !596)
!609 = distinct !DISubprogram(name: "find_trampoline_placement", scope: !3, file: !3, line: 34, type: !598, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !610)
!610 = !{!611, !612, !613, !615, !616, !617}
!611 = !DILocalVariable(name: "bios_start", scope: !609, file: !3, line: 36, type: !25)
!612 = !DILocalVariable(name: "ebda_start", scope: !609, file: !3, line: 36, type: !25)
!613 = !DILocalVariable(name: "entry", scope: !609, file: !3, line: 37, type: !614)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!615 = !DILocalVariable(name: "signature", scope: !609, file: !3, line: 38, type: !38)
!616 = !DILocalVariable(name: "i", scope: !609, file: !3, line: 39, type: !40)
!617 = !DILocalVariable(name: "new", scope: !618, file: !3, line: 69, type: !25)
!618 = distinct !DILexicalBlock(scope: !619, file: !3, line: 68, column: 59)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 68, column: 2)
!620 = distinct !DILexicalBlock(scope: !609, file: !3, line: 68, column: 2)
!621 = !DILocation(line: 36, column: 2, scope: !609)
!622 = !DILocation(line: 36, column: 16, scope: !609)
!623 = !DILocation(line: 36, column: 32, scope: !609)
!624 = !DILocation(line: 37, column: 2, scope: !609)
!625 = !DILocation(line: 37, column: 26, scope: !609)
!626 = !DILocation(line: 38, column: 2, scope: !609)
!627 = !DILocation(line: 38, column: 8, scope: !609)
!628 = !DILocation(line: 39, column: 2, scope: !609)
!629 = !DILocation(line: 39, column: 6, scope: !609)
!630 = !DILocation(line: 52, column: 23, scope: !609)
!631 = !DILocation(line: 52, column: 40, scope: !609)
!632 = !DILocation(line: 52, column: 49, scope: !609)
!633 = !DILocation(line: 52, column: 12, scope: !609)
!634 = !DILocation(line: 53, column: 14, scope: !635)
!635 = distinct !DILexicalBlock(scope: !609, file: !3, line: 53, column: 6)
!636 = !DILocation(line: 53, column: 6, scope: !635)
!637 = !DILocation(line: 53, column: 52, scope: !635)
!638 = !DILocation(line: 54, column: 14, scope: !635)
!639 = !DILocation(line: 54, column: 6, scope: !635)
!640 = !DILocation(line: 53, column: 6, scope: !609)
!641 = !DILocation(line: 55, column: 16, scope: !642)
!642 = distinct !DILexicalBlock(scope: !635, file: !3, line: 54, column: 53)
!643 = !DILocation(line: 55, column: 41, scope: !642)
!644 = !DILocation(line: 55, column: 14, scope: !642)
!645 = !DILocation(line: 56, column: 16, scope: !642)
!646 = !DILocation(line: 56, column: 41, scope: !642)
!647 = !DILocation(line: 56, column: 14, scope: !642)
!648 = !DILocation(line: 57, column: 2, scope: !642)
!649 = !DILocation(line: 59, column: 6, scope: !650)
!650 = distinct !DILexicalBlock(scope: !609, file: !3, line: 59, column: 6)
!651 = !DILocation(line: 59, column: 17, scope: !650)
!652 = !DILocation(line: 59, column: 34, scope: !650)
!653 = !DILocation(line: 59, column: 37, scope: !650)
!654 = !DILocation(line: 59, column: 48, scope: !650)
!655 = !DILocation(line: 59, column: 6, scope: !609)
!656 = !DILocation(line: 60, column: 14, scope: !650)
!657 = !DILocation(line: 60, column: 3, scope: !650)
!658 = !DILocation(line: 62, column: 6, scope: !659)
!659 = distinct !DILexicalBlock(scope: !609, file: !3, line: 62, column: 6)
!660 = !DILocation(line: 62, column: 17, scope: !659)
!661 = !DILocation(line: 62, column: 34, scope: !659)
!662 = !DILocation(line: 62, column: 37, scope: !659)
!663 = !DILocation(line: 62, column: 50, scope: !659)
!664 = !DILocation(line: 62, column: 48, scope: !659)
!665 = !DILocation(line: 62, column: 6, scope: !609)
!666 = !DILocation(line: 63, column: 16, scope: !659)
!667 = !DILocation(line: 63, column: 14, scope: !659)
!668 = !DILocation(line: 63, column: 3, scope: !659)
!669 = !DILocation(line: 65, column: 15, scope: !609)
!670 = !DILocation(line: 65, column: 13, scope: !609)
!671 = !DILocation(line: 68, column: 11, scope: !620)
!672 = !DILocation(line: 68, column: 28, scope: !620)
!673 = !DILocation(line: 68, column: 41, scope: !620)
!674 = !DILocation(line: 68, column: 9, scope: !620)
!675 = !DILocation(line: 68, column: 7, scope: !620)
!676 = !DILocation(line: 68, column: 46, scope: !619)
!677 = !DILocation(line: 68, column: 48, scope: !619)
!678 = !DILocation(line: 68, column: 2, scope: !620)
!679 = !DILocation(line: 69, column: 3, scope: !618)
!680 = !DILocation(line: 69, column: 17, scope: !618)
!681 = !DILocation(line: 69, column: 23, scope: !618)
!682 = !DILocation(line: 71, column: 12, scope: !618)
!683 = !DILocation(line: 71, column: 29, scope: !618)
!684 = !DILocation(line: 71, column: 40, scope: !618)
!685 = !DILocation(line: 71, column: 9, scope: !618)
!686 = !DILocation(line: 74, column: 7, scope: !687)
!687 = distinct !DILexicalBlock(scope: !618, file: !3, line: 74, column: 7)
!688 = !DILocation(line: 74, column: 21, scope: !687)
!689 = !DILocation(line: 74, column: 28, scope: !687)
!690 = !DILocation(line: 74, column: 18, scope: !687)
!691 = !DILocation(line: 74, column: 7, scope: !618)
!692 = !DILocation(line: 75, column: 4, scope: !687)
!693 = !DILocation(line: 78, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !618, file: !3, line: 78, column: 7)
!695 = !DILocation(line: 78, column: 14, scope: !694)
!696 = !DILocation(line: 78, column: 19, scope: !694)
!697 = !DILocation(line: 78, column: 7, scope: !618)
!698 = !DILocation(line: 79, column: 4, scope: !694)
!699 = !DILocation(line: 82, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !618, file: !3, line: 82, column: 7)
!701 = !DILocation(line: 82, column: 20, scope: !700)
!702 = !DILocation(line: 82, column: 27, scope: !700)
!703 = !DILocation(line: 82, column: 34, scope: !700)
!704 = !DILocation(line: 82, column: 41, scope: !700)
!705 = !DILocation(line: 82, column: 32, scope: !700)
!706 = !DILocation(line: 82, column: 18, scope: !700)
!707 = !DILocation(line: 82, column: 7, scope: !618)
!708 = !DILocation(line: 83, column: 10, scope: !700)
!709 = !DILocation(line: 83, column: 17, scope: !700)
!710 = !DILocation(line: 83, column: 24, scope: !700)
!711 = !DILocation(line: 83, column: 31, scope: !700)
!712 = !DILocation(line: 83, column: 22, scope: !700)
!713 = !DILocation(line: 83, column: 8, scope: !700)
!714 = !DILocation(line: 83, column: 4, scope: !700)
!715 = !DILocation(line: 86, column: 9, scope: !618)
!716 = !DILocation(line: 86, column: 7, scope: !618)
!717 = !DILocation(line: 89, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !618, file: !3, line: 89, column: 7)
!719 = !DILocation(line: 89, column: 11, scope: !718)
!720 = !DILocation(line: 89, column: 37, scope: !718)
!721 = !DILocation(line: 89, column: 44, scope: !718)
!722 = !DILocation(line: 89, column: 35, scope: !718)
!723 = !DILocation(line: 89, column: 7, scope: !618)
!724 = !DILocation(line: 90, column: 4, scope: !718)
!725 = !DILocation(line: 93, column: 7, scope: !726)
!726 = distinct !DILexicalBlock(scope: !618, file: !3, line: 93, column: 7)
!727 = !DILocation(line: 93, column: 11, scope: !726)
!728 = !DILocation(line: 93, column: 37, scope: !726)
!729 = !DILocation(line: 93, column: 35, scope: !726)
!730 = !DILocation(line: 93, column: 7, scope: !618)
!731 = !DILocation(line: 94, column: 4, scope: !726)
!732 = !DILocation(line: 96, column: 16, scope: !618)
!733 = !DILocation(line: 96, column: 14, scope: !618)
!734 = !DILocation(line: 97, column: 3, scope: !618)
!735 = !DILocation(line: 98, column: 2, scope: !619)
!736 = !DILocation(line: 68, column: 55, scope: !619)
!737 = !DILocation(line: 68, column: 2, scope: !619)
!738 = distinct !{!738, !678, !739, !564, !565}
!739 = !DILocation(line: 98, column: 2, scope: !620)
!740 = !DILocation(line: 101, column: 9, scope: !609)
!741 = !DILocation(line: 101, column: 20, scope: !609)
!742 = !DILocation(line: 102, column: 1, scope: !609)
!743 = !DILocation(line: 101, column: 2, scope: !609)
!744 = distinct !DISubprogram(name: "__native_read_cr3", scope: !597, file: !597, line: 45, type: !598, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !745)
!745 = !{!746}
!746 = !DILocalVariable(name: "val", scope: !744, file: !597, line: 47, type: !25)
!747 = !DILocation(line: 47, column: 2, scope: !744)
!748 = !DILocation(line: 47, column: 16, scope: !744)
!749 = !DILocation(line: 48, column: 2, scope: !744)
!750 = !{i64 1690116, i64 1690131}
!751 = !DILocation(line: 49, column: 9, scope: !744)
!752 = !DILocation(line: 50, column: 1, scope: !744)
!753 = !DILocation(line: 49, column: 2, scope: !744)
!754 = distinct !DISubprogram(name: "native_write_cr3", scope: !597, file: !597, line: 52, type: !755, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !25}
!757 = !{!758}
!758 = !DILocalVariable(name: "val", arg: 1, scope: !754, file: !597, line: 52, type: !25)
!759 = !DILocation(line: 52, column: 51, scope: !754)
!760 = !DILocation(line: 54, column: 38, scope: !754)
!761 = !DILocation(line: 54, column: 2, scope: !754)
!762 = !{i64 1690253}
!763 = !DILocation(line: 55, column: 1, scope: !754)
!764 = !DISubprogram(name: "memset", scope: !765, file: !765, line: 22, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!765 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!766 = !DISubroutineType(types: !767)
!767 = !{!37, !37, !40, !768}
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !444, line: 61, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !770, line: 72, baseType: !771)
!770 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !770, line: 16, baseType: !25)
!772 = !DISubprogram(name: "memcpy", scope: !765, file: !765, line: 18, type: !773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!773 = !DISubroutineType(types: !774)
!774 = !{!37, !37, !775, !768}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!777 = distinct !DISubprogram(name: "native_cpuid", scope: !578, file: !578, line: 30, type: !778, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !780)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !41, !41, !41, !41}
!780 = !{!781, !782, !783, !784}
!781 = !DILocalVariable(name: "eax", arg: 1, scope: !777, file: !578, line: 30, type: !41)
!782 = !DILocalVariable(name: "ebx", arg: 2, scope: !777, file: !578, line: 30, type: !41)
!783 = !DILocalVariable(name: "ecx", arg: 3, scope: !777, file: !578, line: 31, type: !41)
!784 = !DILocalVariable(name: "edx", arg: 4, scope: !777, file: !578, line: 31, type: !41)
!785 = !DILocation(line: 30, column: 47, scope: !777)
!786 = !DILocation(line: 30, column: 66, scope: !777)
!787 = !DILocation(line: 31, column: 19, scope: !777)
!788 = !DILocation(line: 31, column: 38, scope: !777)
!789 = !DILocation(line: 35, column: 15, scope: !777)
!790 = !DILocation(line: 36, column: 15, scope: !777)
!791 = !DILocation(line: 37, column: 15, scope: !777)
!792 = !DILocation(line: 38, column: 15, scope: !777)
!793 = !DILocation(line: 39, column: 14, scope: !777)
!794 = !DILocation(line: 39, column: 13, scope: !777)
!795 = !DILocation(line: 39, column: 26, scope: !777)
!796 = !DILocation(line: 39, column: 25, scope: !777)
!797 = !DILocation(line: 34, column: 2, scope: !777)
!798 = !{i64 855857}
!799 = !DILocation(line: 41, column: 1, scope: !777)
!800 = !DISubprogram(name: "strncmp", scope: !801, file: !801, line: 22, type: !802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!801 = !DIFile(filename: "arch/x86/boot/compressed/../string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "57f8c28d9f334417175b0af782b739d7")
!802 = !DISubroutineType(types: !803)
!803 = !{!40, !575, !575, !768}
