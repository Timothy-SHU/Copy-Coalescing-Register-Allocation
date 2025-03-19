; ModuleID = 'arch/x86/kernel/head64.c'
source_filename = "arch/x86/kernel/head64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pgdir_shift: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pgdir_shift ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ptrs_per_p4d: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ptrs_per_p4d ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_page_offset_base: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad page_offset_base ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vmalloc_base: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad vmalloc_base ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vmemmap_base: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad vmemmap_base ; .previous"

%struct.pgd_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.tlb_state = type { ptr, %union.anon, i16, i16, i8, i16, i64, [6 x %struct.tlb_context] }
%union.anon = type { ptr }
%struct.tlb_context = type { i64, i64 }
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
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon.0, %union.anon.6, i8, i8 }>
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i64 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i8, i8, i16, i32, i64 }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.boot_params_to_save = type { i32, i32 }
%struct.desc_struct = type { i16, i16, i32 }

@early_pmd_flags = hidden global i64 227, align 8, !dbg !0
@pgdir_shift = hidden global i32 39, section ".data..ro_after_init", align 4, !dbg !49
@__UNIQUE_ID___addressable_pgdir_shift277 = internal global ptr @pgdir_shift, section ".discard.addressable", align 8, !dbg !51
@ptrs_per_p4d = hidden global i32 1, section ".data..ro_after_init", align 4, !dbg !53
@__UNIQUE_ID___addressable_ptrs_per_p4d278 = internal global ptr @ptrs_per_p4d, section ".discard.addressable", align 8, !dbg !55
@page_offset_base = hidden global i64 -131391639519232, section ".data..ro_after_init", align 8, !dbg !57
@__UNIQUE_ID___addressable_page_offset_base279 = internal global ptr @page_offset_base, section ".discard.addressable", align 8, !dbg !59
@vmalloc_base = hidden global i64 -60473139527680, section ".data..ro_after_init", align 8, !dbg !61
@__UNIQUE_ID___addressable_vmalloc_base280 = internal global ptr @vmalloc_base, section ".discard.addressable", align 8, !dbg !63
@vmemmap_base = hidden global i64 -24189255811072, section ".data..ro_after_init", align 8, !dbg !65
@__UNIQUE_ID___addressable_vmemmap_base281 = internal global ptr @vmemmap_base, section ".discard.addressable", align 8, !dbg !67
@_text = external dso_local global [0 x i8], align 1
@early_top_pgt = external dso_local global [512 x %struct.pgd_t], align 16
@level4_kernel_pgt = external dso_local global [512 x %struct.p4d_t], align 16
@level3_kernel_pgt = external dso_local global [512 x %struct.pud_t], align 16
@level2_fixmap_pgt = external dso_local global [512 x %struct.pmd_t], align 16
@next_early_pgt = internal global i32 0, section ".init.data", align 4, !dbg !74
@early_dynamic_pgts = external dso_local global [64 x [512 x %struct.pmd_t]], align 16
@__supported_pte_mask = external dso_local global i64, align 8
@_end = external dso_local global [0 x i8], align 1
@level2_kernel_pgt = external dso_local global [512 x %struct.pmd_t], align 16
@phys_base = external dso_local global i64, align 8
@__bss_start = external dso_local global [0 x i8], align 1
@__bss_stop = external dso_local global [0 x i8], align 1
@__brk_base = external dso_local global [0 x i8], align 1
@__brk_limit = external dso_local global [0 x i8], align 1
@.str = private unnamed_addr constant [25 x i8] c"arch/x86/kernel/head64.c\00", align 1, !dbg !69
@init_top_pgt = external dso_local global [0 x %struct.pgd_t], align 8
@cpu_tlbstate = external dso_local global %struct.tlb_state, section ".data..percpu..shared_aligned", align 64
@boot_params = external dso_local global %struct.boot_params, align 1
@bringup_idt_table = internal global [32 x %struct.gate_struct] zeroinitializer, section ".data..page_aligned", align 4096, !dbg !78
@bringup_idt_descr = internal global %struct.desc_ptr <{ i16 511, i64 0 }>, align 1, !dbg !457
@startup_gdt_descr = internal global %struct.desc_ptr <{ i16 127, i64 0 }>, align 1, !dbg !481
@__pgtable_l5_enabled = hidden global i32 0, section ".data..ro_after_init", align 4, !dbg !76
@__start_bss_decrypted = external dso_local global [0 x i8], align 1
@__end_bss_decrypted = external dso_local global [0 x i8], align 1
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@sanitize_boot_params.scratch = internal global %struct.boot_params zeroinitializer, align 1, !dbg !102
@__const.sanitize_boot_params.to_save = private unnamed_addr constant [20 x %struct.boot_params_to_save] [%struct.boot_params_to_save { i32 0, i32 64 }, %struct.boot_params_to_save { i32 64, i32 20 }, %struct.boot_params_to_save { i32 88, i32 8 }, %struct.boot_params_to_save { i32 96, i32 16 }, %struct.boot_params_to_save { i32 128, i32 16 }, %struct.boot_params_to_save { i32 144, i32 16 }, %struct.boot_params_to_save { i32 160, i32 16 }, %struct.boot_params_to_save { i32 176, i32 16 }, %struct.boot_params_to_save { i32 448, i32 32 }, %struct.boot_params_to_save { i32 480, i32 4 }, %struct.boot_params_to_save { i32 484, i32 4 }, %struct.boot_params_to_save { i32 488, i32 1 }, %struct.boot_params_to_save { i32 489, i32 1 }, %struct.boot_params_to_save { i32 490, i32 1 }, %struct.boot_params_to_save { i32 656, i32 64 }, %struct.boot_params_to_save { i32 492, i32 1 }, %struct.boot_params_to_save { i32 497, i32 123 }, %struct.boot_params_to_save { i32 720, i32 2560 }, %struct.boot_params_to_save { i32 3328, i32 492 }, %struct.boot_params_to_save { i32 316, i32 4 }], align 16
@startup_gdt = internal global <{ %struct.desc_struct, { i16, i16, i8, i8, i8, i8 }, { i16, i16, i8, i8, i8, i8 }, { i16, i16, i8, i8, i8, i8 }, [12 x %struct.desc_struct] }> <{ %struct.desc_struct zeroinitializer, { i16, i16, i8, i8, i8, i8 } { i16 -1, i16 0, i8 0, i8 -101, i8 -49, i8 0 }, { i16, i16, i8, i8, i8, i8 } { i16 -1, i16 0, i8 0, i8 -101, i8 -81, i8 0 }, { i16, i16, i8, i8, i8, i8 } { i16 -1, i16 0, i8 0, i8 -109, i8 -49, i8 0 }, [12 x %struct.desc_struct] zeroinitializer }>, align 16, !dbg !463
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_pgdir_shift277, ptr @__UNIQUE_ID___addressable_ptrs_per_p4d278, ptr @__UNIQUE_ID___addressable_page_offset_base279, ptr @__UNIQUE_ID___addressable_vmalloc_base280, ptr @__UNIQUE_ID___addressable_vmemmap_base281], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__startup_64(i64 noundef %physaddr, ptr noundef %bp) #0 section ".head.text" align 16 !dbg !493 {
entry:
  %physaddr.addr = alloca i64, align 8
  %bp.addr = alloca ptr, align 8
  %load_delta = alloca i64, align 8
  %p = alloca ptr, align 8
  %pgtable_flags = alloca i64, align 8
  %pgd = alloca ptr, align 8
  %p4d = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %pmd = alloca ptr, align 8
  %pmd_entry = alloca i64, align 8
  %mask_ptr = alloca ptr, align 8
  %la57 = alloca i8, align 1
  %i = alloca i32, align 4
  %next_pgt_ptr = alloca ptr, align 8
  %idx = alloca i32, align 4
  store i64 %physaddr, ptr %physaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %physaddr.addr, metadata !497, metadata !DIExpression()), !dbg !519
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !498, metadata !DIExpression()), !dbg !520
  call void @llvm.lifetime.start.p0(i64 8, ptr %load_delta) #17, !dbg !521
  call void @llvm.dbg.declare(metadata ptr %load_delta, metadata !499, metadata !DIExpression()), !dbg !522
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !521
  call void @llvm.dbg.declare(metadata ptr %p, metadata !500, metadata !DIExpression()), !dbg !523
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgtable_flags) #17, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %pgtable_flags, metadata !501, metadata !DIExpression()), !dbg !525
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #17, !dbg !526
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !502, metadata !DIExpression()), !dbg !527
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #17, !dbg !528
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !504, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #17, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !505, metadata !DIExpression()), !dbg !531
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #17, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !506, metadata !DIExpression()), !dbg !533
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd_entry) #17, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %pmd_entry, metadata !507, metadata !DIExpression()), !dbg !534
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask_ptr) #17, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %mask_ptr, metadata !508, metadata !DIExpression()), !dbg !536
  call void @llvm.lifetime.start.p0(i64 1, ptr %la57) #17, !dbg !537
  call void @llvm.dbg.declare(metadata ptr %la57, metadata !510, metadata !DIExpression()), !dbg !538
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !539
  call void @llvm.dbg.declare(metadata ptr %i, metadata !513, metadata !DIExpression()), !dbg !540
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_pgt_ptr) #17, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %next_pgt_ptr, metadata !514, metadata !DIExpression()), !dbg !542
  %0 = load i64, ptr %physaddr.addr, align 8, !dbg !543
  %call = call zeroext i1 @check_la57_support(i64 noundef %0) #18, !dbg !544
  %frombool = zext i1 %call to i8, !dbg !545
  store i8 %frombool, ptr %la57, align 1, !dbg !545
  %1 = load i64, ptr %physaddr.addr, align 8, !dbg !546
  %call1 = call zeroext i1 @pgtable_l5_enabled() #18, !dbg !548
  %2 = zext i1 %call1 to i64, !dbg !548
  %cond = select i1 %call1, i32 52, i32 46, !dbg !548
  %sh_prom = zext i32 %cond to i64, !dbg !549
  %shr = lshr i64 %1, %sh_prom, !dbg !549
  %tobool = icmp ne i64 %shr, 0, !dbg !549
  br i1 %tobool, label %if.then, label %if.end, !dbg !550

if.then:                                          ; preds = %entry
  br label %for.cond, !dbg !551

for.cond:                                         ; preds = %for.cond, %if.then
  br label %for.cond, !dbg !552, !llvm.loop !555

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %physaddr.addr, align 8, !dbg !559
  %sub = sub i64 %3, ptrtoint (ptr getelementptr (i8, ptr @_text, i64 2147483648) to i64), !dbg !560
  store i64 %sub, ptr %load_delta, align 8, !dbg !561
  %4 = load i64, ptr %load_delta, align 8, !dbg !562
  %and = and i64 %4, 2097151, !dbg !564
  %tobool2 = icmp ne i64 %and, 0, !dbg !564
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !565

if.then3:                                         ; preds = %if.end
  br label %for.cond4, !dbg !566

for.cond4:                                        ; preds = %for.cond4, %if.then3
  br label %for.cond4, !dbg !567, !llvm.loop !570

if.end5:                                          ; preds = %if.end
  %call6 = call i64 @sme_get_me_mask() #18, !dbg !573
  %5 = load i64, ptr %load_delta, align 8, !dbg !574
  %add = add i64 %5, %call6, !dbg !574
  store i64 %add, ptr %load_delta, align 8, !dbg !574
  %6 = load i64, ptr %physaddr.addr, align 8, !dbg !575
  %call7 = call ptr @fixup_pointer(ptr noundef @early_top_pgt, i64 noundef %6) #18, !dbg !576
  store ptr %call7, ptr %pgd, align 8, !dbg !577
  %7 = load ptr, ptr %pgd, align 8, !dbg !578
  %8 = load i32, ptr @pgdir_shift, align 4, !dbg !579
  %sh_prom8 = zext i32 %8 to i64, !dbg !579
  %shr9 = lshr i64 -2147483648, %sh_prom8, !dbg !579
  %and10 = and i64 %shr9, 511, !dbg !579
  %add.ptr = getelementptr i64, ptr %7, i64 %and10, !dbg !580
  store ptr %add.ptr, ptr %p, align 8, !dbg !581
  %9 = load i8, ptr %la57, align 1, !dbg !582, !range !584, !noundef !585
  %tobool11 = trunc i8 %9 to i1, !dbg !582
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !586

if.then12:                                        ; preds = %if.end5
  %10 = load ptr, ptr %p, align 8, !dbg !587
  store i64 ptrtoint (ptr @level4_kernel_pgt to i64), ptr %10, align 8, !dbg !588
  br label %if.end13, !dbg !589

if.else:                                          ; preds = %if.end5
  %11 = load ptr, ptr %p, align 8, !dbg !590
  store i64 ptrtoint (ptr @level3_kernel_pgt to i64), ptr %11, align 8, !dbg !591
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  %12 = load i64, ptr %load_delta, align 8, !dbg !592
  %add14 = add i64 2147483751, %12, !dbg !593
  %13 = load ptr, ptr %p, align 8, !dbg !594
  %14 = load i64, ptr %13, align 8, !dbg !595
  %add15 = add i64 %14, %add14, !dbg !595
  store i64 %add15, ptr %13, align 8, !dbg !595
  %15 = load i8, ptr %la57, align 1, !dbg !596, !range !584, !noundef !585
  %tobool16 = trunc i8 %15 to i1, !dbg !596
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !598

if.then17:                                        ; preds = %if.end13
  %16 = load i64, ptr %physaddr.addr, align 8, !dbg !599
  %call18 = call ptr @fixup_pointer(ptr noundef @level4_kernel_pgt, i64 noundef %16) #18, !dbg !601
  store ptr %call18, ptr %p4d, align 8, !dbg !602
  %17 = load i64, ptr %load_delta, align 8, !dbg !603
  %18 = load ptr, ptr %p4d, align 8, !dbg !604
  %arrayidx = getelementptr i64, ptr %18, i64 511, !dbg !604
  %19 = load i64, ptr %arrayidx, align 8, !dbg !605
  %add19 = add i64 %19, %17, !dbg !605
  store i64 %add19, ptr %arrayidx, align 8, !dbg !605
  br label %if.end20, !dbg !606

if.end20:                                         ; preds = %if.then17, %if.end13
  %20 = load i64, ptr %physaddr.addr, align 8, !dbg !607
  %call21 = call ptr @fixup_pointer(ptr noundef @level3_kernel_pgt, i64 noundef %20) #18, !dbg !608
  store ptr %call21, ptr %pud, align 8, !dbg !609
  %21 = load i64, ptr %load_delta, align 8, !dbg !610
  %22 = load ptr, ptr %pud, align 8, !dbg !611
  %arrayidx22 = getelementptr i64, ptr %22, i64 510, !dbg !611
  %23 = load i64, ptr %arrayidx22, align 8, !dbg !612
  %add23 = add i64 %23, %21, !dbg !612
  store i64 %add23, ptr %arrayidx22, align 8, !dbg !612
  %24 = load i64, ptr %load_delta, align 8, !dbg !613
  %25 = load ptr, ptr %pud, align 8, !dbg !614
  %arrayidx24 = getelementptr i64, ptr %25, i64 511, !dbg !614
  %26 = load i64, ptr %arrayidx24, align 8, !dbg !615
  %add25 = add i64 %26, %24, !dbg !615
  store i64 %add25, ptr %arrayidx24, align 8, !dbg !615
  %27 = load i64, ptr %physaddr.addr, align 8, !dbg !616
  %call26 = call ptr @fixup_pointer(ptr noundef @level2_fixmap_pgt, i64 noundef %27) #18, !dbg !617
  store ptr %call26, ptr %pmd, align 8, !dbg !618
  store i32 507, ptr %i, align 4, !dbg !619
  br label %for.cond27, !dbg !621

for.cond27:                                       ; preds = %for.inc, %if.end20
  %28 = load i32, ptr %i, align 4, !dbg !622
  %cmp = icmp sgt i32 %28, 505, !dbg !624
  br i1 %cmp, label %for.body, label %for.end, !dbg !625

for.body:                                         ; preds = %for.cond27
  %29 = load i64, ptr %load_delta, align 8, !dbg !626
  %30 = load ptr, ptr %pmd, align 8, !dbg !627
  %31 = load i32, ptr %i, align 4, !dbg !628
  %idxprom = sext i32 %31 to i64, !dbg !627
  %arrayidx28 = getelementptr i64, ptr %30, i64 %idxprom, !dbg !627
  %32 = load i64, ptr %arrayidx28, align 8, !dbg !629
  %add29 = add i64 %32, %29, !dbg !629
  store i64 %add29, ptr %arrayidx28, align 8, !dbg !629
  br label %for.inc, !dbg !627

for.inc:                                          ; preds = %for.body
  %33 = load i32, ptr %i, align 4, !dbg !630
  %dec = add i32 %33, -1, !dbg !630
  store i32 %dec, ptr %i, align 4, !dbg !630
  br label %for.cond27, !dbg !631, !llvm.loop !632

for.end:                                          ; preds = %for.cond27
  %34 = load i64, ptr %physaddr.addr, align 8, !dbg !635
  %call30 = call ptr @fixup_pointer(ptr noundef @next_early_pgt, i64 noundef %34) #18, !dbg !636
  store ptr %call30, ptr %next_pgt_ptr, align 8, !dbg !637
  %35 = load ptr, ptr %next_pgt_ptr, align 8, !dbg !638
  %36 = load i32, ptr %35, align 4, !dbg !639
  %inc = add i32 %36, 1, !dbg !639
  store i32 %inc, ptr %35, align 4, !dbg !639
  %idxprom31 = zext i32 %36 to i64, !dbg !640
  %arrayidx32 = getelementptr [64 x [512 x %struct.pmd_t]], ptr @early_dynamic_pgts, i64 0, i64 %idxprom31, !dbg !640
  %arraydecay = getelementptr inbounds [512 x %struct.pmd_t], ptr %arrayidx32, i64 0, i64 0, !dbg !640
  %37 = load i64, ptr %physaddr.addr, align 8, !dbg !641
  %call33 = call ptr @fixup_pointer(ptr noundef %arraydecay, i64 noundef %37) #18, !dbg !642
  store ptr %call33, ptr %pud, align 8, !dbg !643
  %38 = load ptr, ptr %next_pgt_ptr, align 8, !dbg !644
  %39 = load i32, ptr %38, align 4, !dbg !645
  %inc34 = add i32 %39, 1, !dbg !645
  store i32 %inc34, ptr %38, align 4, !dbg !645
  %idxprom35 = zext i32 %39 to i64, !dbg !646
  %arrayidx36 = getelementptr [64 x [512 x %struct.pmd_t]], ptr @early_dynamic_pgts, i64 0, i64 %idxprom35, !dbg !646
  %arraydecay37 = getelementptr inbounds [512 x %struct.pmd_t], ptr %arrayidx36, i64 0, i64 0, !dbg !646
  %40 = load i64, ptr %physaddr.addr, align 8, !dbg !647
  %call38 = call ptr @fixup_pointer(ptr noundef %arraydecay37, i64 noundef %40) #18, !dbg !648
  store ptr %call38, ptr %pmd, align 8, !dbg !649
  %call39 = call i64 @sme_get_me_mask() #18, !dbg !650
  %add40 = add i64 99, %call39, !dbg !651
  store i64 %add40, ptr %pgtable_flags, align 8, !dbg !652
  %41 = load i8, ptr %la57, align 1, !dbg !653, !range !584, !noundef !585
  %tobool41 = trunc i8 %41 to i1, !dbg !653
  br i1 %tobool41, label %if.then42, label %if.else70, !dbg !655

if.then42:                                        ; preds = %for.end
  %42 = load ptr, ptr %next_pgt_ptr, align 8, !dbg !656
  %43 = load i32, ptr %42, align 4, !dbg !658
  %inc43 = add i32 %43, 1, !dbg !658
  store i32 %inc43, ptr %42, align 4, !dbg !658
  %idxprom44 = zext i32 %43 to i64, !dbg !659
  %arrayidx45 = getelementptr [64 x [512 x %struct.pmd_t]], ptr @early_dynamic_pgts, i64 0, i64 %idxprom44, !dbg !659
  %arraydecay46 = getelementptr inbounds [512 x %struct.pmd_t], ptr %arrayidx45, i64 0, i64 0, !dbg !659
  %44 = load i64, ptr %physaddr.addr, align 8, !dbg !660
  %call47 = call ptr @fixup_pointer(ptr noundef %arraydecay46, i64 noundef %44) #18, !dbg !661
  store ptr %call47, ptr %p4d, align 8, !dbg !662
  %45 = load i64, ptr %physaddr.addr, align 8, !dbg !663
  %46 = load i32, ptr @pgdir_shift, align 4, !dbg !664
  %sh_prom48 = zext i32 %46 to i64, !dbg !665
  %shr49 = lshr i64 %45, %sh_prom48, !dbg !665
  %rem = urem i64 %shr49, 512, !dbg !666
  %conv = trunc i64 %rem to i32, !dbg !667
  store i32 %conv, ptr %i, align 4, !dbg !668
  %47 = load ptr, ptr %p4d, align 8, !dbg !669
  %48 = ptrtoint ptr %47 to i64, !dbg !670
  %49 = load i64, ptr %pgtable_flags, align 8, !dbg !671
  %add50 = add i64 %48, %49, !dbg !672
  %50 = load ptr, ptr %pgd, align 8, !dbg !673
  %51 = load i32, ptr %i, align 4, !dbg !674
  %add51 = add i32 %51, 0, !dbg !675
  %idxprom52 = sext i32 %add51 to i64, !dbg !673
  %arrayidx53 = getelementptr i64, ptr %50, i64 %idxprom52, !dbg !673
  store i64 %add50, ptr %arrayidx53, align 8, !dbg !676
  %52 = load ptr, ptr %p4d, align 8, !dbg !677
  %53 = ptrtoint ptr %52 to i64, !dbg !678
  %54 = load i64, ptr %pgtable_flags, align 8, !dbg !679
  %add54 = add i64 %53, %54, !dbg !680
  %55 = load ptr, ptr %pgd, align 8, !dbg !681
  %56 = load i32, ptr %i, align 4, !dbg !682
  %add55 = add i32 %56, 1, !dbg !683
  %idxprom56 = sext i32 %add55 to i64, !dbg !681
  %arrayidx57 = getelementptr i64, ptr %55, i64 %idxprom56, !dbg !681
  store i64 %add54, ptr %arrayidx57, align 8, !dbg !684
  %57 = load i64, ptr %physaddr.addr, align 8, !dbg !685
  %shr58 = lshr i64 %57, 39, !dbg !686
  %conv59 = trunc i64 %shr58 to i32, !dbg !685
  store i32 %conv59, ptr %i, align 4, !dbg !687
  %58 = load ptr, ptr %pud, align 8, !dbg !688
  %59 = ptrtoint ptr %58 to i64, !dbg !689
  %60 = load i64, ptr %pgtable_flags, align 8, !dbg !690
  %add60 = add i64 %59, %60, !dbg !691
  %61 = load ptr, ptr %p4d, align 8, !dbg !692
  %62 = load i32, ptr %i, align 4, !dbg !693
  %add61 = add i32 %62, 0, !dbg !694
  %63 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !695
  %rem62 = urem i32 %add61, %63, !dbg !696
  %idxprom63 = zext i32 %rem62 to i64, !dbg !692
  %arrayidx64 = getelementptr i64, ptr %61, i64 %idxprom63, !dbg !692
  store i64 %add60, ptr %arrayidx64, align 8, !dbg !697
  %64 = load ptr, ptr %pud, align 8, !dbg !698
  %65 = ptrtoint ptr %64 to i64, !dbg !699
  %66 = load i64, ptr %pgtable_flags, align 8, !dbg !700
  %add65 = add i64 %65, %66, !dbg !701
  %67 = load ptr, ptr %p4d, align 8, !dbg !702
  %68 = load i32, ptr %i, align 4, !dbg !703
  %add66 = add i32 %68, 1, !dbg !704
  %69 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !705
  %rem67 = urem i32 %add66, %69, !dbg !706
  %idxprom68 = zext i32 %rem67 to i64, !dbg !702
  %arrayidx69 = getelementptr i64, ptr %67, i64 %idxprom68, !dbg !702
  store i64 %add65, ptr %arrayidx69, align 8, !dbg !707
  br label %if.end83, !dbg !708

if.else70:                                        ; preds = %for.end
  %70 = load i64, ptr %physaddr.addr, align 8, !dbg !709
  %71 = load i32, ptr @pgdir_shift, align 4, !dbg !711
  %sh_prom71 = zext i32 %71 to i64, !dbg !712
  %shr72 = lshr i64 %70, %sh_prom71, !dbg !712
  %rem73 = urem i64 %shr72, 512, !dbg !713
  %conv74 = trunc i64 %rem73 to i32, !dbg !714
  store i32 %conv74, ptr %i, align 4, !dbg !715
  %72 = load ptr, ptr %pud, align 8, !dbg !716
  %73 = ptrtoint ptr %72 to i64, !dbg !717
  %74 = load i64, ptr %pgtable_flags, align 8, !dbg !718
  %add75 = add i64 %73, %74, !dbg !719
  %75 = load ptr, ptr %pgd, align 8, !dbg !720
  %76 = load i32, ptr %i, align 4, !dbg !721
  %add76 = add i32 %76, 0, !dbg !722
  %idxprom77 = sext i32 %add76 to i64, !dbg !720
  %arrayidx78 = getelementptr i64, ptr %75, i64 %idxprom77, !dbg !720
  store i64 %add75, ptr %arrayidx78, align 8, !dbg !723
  %77 = load ptr, ptr %pud, align 8, !dbg !724
  %78 = ptrtoint ptr %77 to i64, !dbg !725
  %79 = load i64, ptr %pgtable_flags, align 8, !dbg !726
  %add79 = add i64 %78, %79, !dbg !727
  %80 = load ptr, ptr %pgd, align 8, !dbg !728
  %81 = load i32, ptr %i, align 4, !dbg !729
  %add80 = add i32 %81, 1, !dbg !730
  %idxprom81 = sext i32 %add80 to i64, !dbg !728
  %arrayidx82 = getelementptr i64, ptr %80, i64 %idxprom81, !dbg !728
  store i64 %add79, ptr %arrayidx82, align 8, !dbg !731
  br label %if.end83

if.end83:                                         ; preds = %if.else70, %if.then42
  %82 = load i64, ptr %physaddr.addr, align 8, !dbg !732
  %shr84 = lshr i64 %82, 30, !dbg !733
  %conv85 = trunc i64 %shr84 to i32, !dbg !732
  store i32 %conv85, ptr %i, align 4, !dbg !734
  %83 = load ptr, ptr %pmd, align 8, !dbg !735
  %84 = ptrtoint ptr %83 to i64, !dbg !736
  %85 = load i64, ptr %pgtable_flags, align 8, !dbg !737
  %add86 = add i64 %84, %85, !dbg !738
  %86 = load ptr, ptr %pud, align 8, !dbg !739
  %87 = load i32, ptr %i, align 4, !dbg !740
  %add87 = add i32 %87, 0, !dbg !741
  %rem88 = srem i32 %add87, 512, !dbg !742
  %idxprom89 = sext i32 %rem88 to i64, !dbg !739
  %arrayidx90 = getelementptr i64, ptr %86, i64 %idxprom89, !dbg !739
  store i64 %add86, ptr %arrayidx90, align 8, !dbg !743
  %88 = load ptr, ptr %pmd, align 8, !dbg !744
  %89 = ptrtoint ptr %88 to i64, !dbg !745
  %90 = load i64, ptr %pgtable_flags, align 8, !dbg !746
  %add91 = add i64 %89, %90, !dbg !747
  %91 = load ptr, ptr %pud, align 8, !dbg !748
  %92 = load i32, ptr %i, align 4, !dbg !749
  %add92 = add i32 %92, 1, !dbg !750
  %rem93 = srem i32 %add92, 512, !dbg !751
  %idxprom94 = sext i32 %rem93 to i64, !dbg !748
  %arrayidx95 = getelementptr i64, ptr %91, i64 %idxprom94, !dbg !748
  store i64 %add91, ptr %arrayidx95, align 8, !dbg !752
  store i64 227, ptr %pmd_entry, align 8, !dbg !753
  %93 = load i64, ptr %physaddr.addr, align 8, !dbg !754
  %call96 = call ptr @fixup_pointer(ptr noundef @__supported_pte_mask, i64 noundef %93) #18, !dbg !755
  store ptr %call96, ptr %mask_ptr, align 8, !dbg !756
  %94 = load ptr, ptr %mask_ptr, align 8, !dbg !757
  %95 = load i64, ptr %94, align 8, !dbg !758
  %96 = load i64, ptr %pmd_entry, align 8, !dbg !759
  %and97 = and i64 %96, %95, !dbg !759
  store i64 %and97, ptr %pmd_entry, align 8, !dbg !759
  %call98 = call i64 @sme_get_me_mask() #18, !dbg !760
  %97 = load i64, ptr %pmd_entry, align 8, !dbg !761
  %add99 = add i64 %97, %call98, !dbg !761
  store i64 %add99, ptr %pmd_entry, align 8, !dbg !761
  %98 = load i64, ptr %physaddr.addr, align 8, !dbg !762
  %99 = load i64, ptr %pmd_entry, align 8, !dbg !763
  %add100 = add i64 %99, %98, !dbg !763
  store i64 %add100, ptr %pmd_entry, align 8, !dbg !763
  store i32 0, ptr %i, align 4, !dbg !764
  br label %for.cond101, !dbg !765

for.cond101:                                      ; preds = %for.inc115, %if.end83
  %100 = load i32, ptr %i, align 4, !dbg !766
  %conv102 = sext i32 %100 to i64, !dbg !766
  %div = udiv i64 sub (i64 add (i64 sub (i64 ptrtoint (ptr @_end to i64), i64 ptrtoint (ptr @_text to i64)), i64 2097152), i64 1), 2097152, !dbg !767
  %cmp103 = icmp ult i64 %conv102, %div, !dbg !768
  br i1 %cmp103, label %for.body105, label %for.end117, !dbg !769

for.body105:                                      ; preds = %for.cond101
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #17, !dbg !770
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !515, metadata !DIExpression()), !dbg !771
  %101 = load i32, ptr %i, align 4, !dbg !772
  %conv106 = sext i32 %101 to i64, !dbg !772
  %102 = load i64, ptr %physaddr.addr, align 8, !dbg !773
  %shr107 = lshr i64 %102, 21, !dbg !774
  %add108 = add i64 %conv106, %shr107, !dbg !775
  %conv109 = trunc i64 %add108 to i32, !dbg !772
  store i32 %conv109, ptr %idx, align 4, !dbg !771
  %103 = load i64, ptr %pmd_entry, align 8, !dbg !776
  %104 = load i32, ptr %i, align 4, !dbg !777
  %conv110 = sext i32 %104 to i64, !dbg !777
  %mul = mul i64 %conv110, 2097152, !dbg !778
  %add111 = add i64 %103, %mul, !dbg !779
  %105 = load ptr, ptr %pmd, align 8, !dbg !780
  %106 = load i32, ptr %idx, align 4, !dbg !781
  %rem112 = srem i32 %106, 512, !dbg !782
  %idxprom113 = sext i32 %rem112 to i64, !dbg !780
  %arrayidx114 = getelementptr i64, ptr %105, i64 %idxprom113, !dbg !780
  store i64 %add111, ptr %arrayidx114, align 8, !dbg !783
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #17, !dbg !784
  br label %for.inc115, !dbg !785

for.inc115:                                       ; preds = %for.body105
  %107 = load i32, ptr %i, align 4, !dbg !786
  %inc116 = add i32 %107, 1, !dbg !786
  store i32 %inc116, ptr %i, align 4, !dbg !786
  br label %for.cond101, !dbg !787, !llvm.loop !788

for.end117:                                       ; preds = %for.cond101
  %108 = load i64, ptr %physaddr.addr, align 8, !dbg !790
  %call118 = call ptr @fixup_pointer(ptr noundef @level2_kernel_pgt, i64 noundef %108) #18, !dbg !791
  store ptr %call118, ptr %pmd, align 8, !dbg !792
  store i32 0, ptr %i, align 4, !dbg !793
  br label %for.cond119, !dbg !795

for.cond119:                                      ; preds = %for.inc128, %for.end117
  %109 = load i32, ptr %i, align 4, !dbg !796
  %conv120 = sext i32 %109 to i64, !dbg !796
  %call121 = call i64 @pmd_index(i64 noundef ptrtoint (ptr @_text to i64)) #18, !dbg !798
  %cmp122 = icmp ult i64 %conv120, %call121, !dbg !799
  br i1 %cmp122, label %for.body124, label %for.end130, !dbg !800

for.body124:                                      ; preds = %for.cond119
  %110 = load ptr, ptr %pmd, align 8, !dbg !801
  %111 = load i32, ptr %i, align 4, !dbg !802
  %idxprom125 = sext i32 %111 to i64, !dbg !801
  %arrayidx126 = getelementptr i64, ptr %110, i64 %idxprom125, !dbg !801
  %112 = load i64, ptr %arrayidx126, align 8, !dbg !803
  %and127 = and i64 %112, -2, !dbg !803
  store i64 %and127, ptr %arrayidx126, align 8, !dbg !803
  br label %for.inc128, !dbg !801

for.inc128:                                       ; preds = %for.body124
  %113 = load i32, ptr %i, align 4, !dbg !804
  %inc129 = add i32 %113, 1, !dbg !804
  store i32 %inc129, ptr %i, align 4, !dbg !804
  br label %for.cond119, !dbg !805, !llvm.loop !806

for.end130:                                       ; preds = %for.cond119
  br label %for.cond131, !dbg !808

for.cond131:                                      ; preds = %for.inc146, %for.end130
  %114 = load i32, ptr %i, align 4, !dbg !809
  %conv132 = sext i32 %114 to i64, !dbg !809
  %call133 = call i64 @pmd_index(i64 noundef ptrtoint (ptr @_end to i64)) #18, !dbg !812
  %cmp134 = icmp ule i64 %conv132, %call133, !dbg !813
  br i1 %cmp134, label %for.body136, label %for.end148, !dbg !814

for.body136:                                      ; preds = %for.cond131
  %115 = load ptr, ptr %pmd, align 8, !dbg !815
  %116 = load i32, ptr %i, align 4, !dbg !817
  %idxprom137 = sext i32 %116 to i64, !dbg !815
  %arrayidx138 = getelementptr i64, ptr %115, i64 %idxprom137, !dbg !815
  %117 = load i64, ptr %arrayidx138, align 8, !dbg !815
  %and139 = and i64 %117, 1, !dbg !818
  %tobool140 = icmp ne i64 %and139, 0, !dbg !818
  br i1 %tobool140, label %if.then141, label %if.end145, !dbg !819

if.then141:                                       ; preds = %for.body136
  %118 = load i64, ptr %load_delta, align 8, !dbg !820
  %119 = load ptr, ptr %pmd, align 8, !dbg !821
  %120 = load i32, ptr %i, align 4, !dbg !822
  %idxprom142 = sext i32 %120 to i64, !dbg !821
  %arrayidx143 = getelementptr i64, ptr %119, i64 %idxprom142, !dbg !821
  %121 = load i64, ptr %arrayidx143, align 8, !dbg !823
  %add144 = add i64 %121, %118, !dbg !823
  store i64 %add144, ptr %arrayidx143, align 8, !dbg !823
  br label %if.end145, !dbg !821

if.end145:                                        ; preds = %if.then141, %for.body136
  br label %for.inc146, !dbg !824

for.inc146:                                       ; preds = %if.end145
  %122 = load i32, ptr %i, align 4, !dbg !825
  %inc147 = add i32 %122, 1, !dbg !825
  store i32 %inc147, ptr %i, align 4, !dbg !825
  br label %for.cond131, !dbg !826, !llvm.loop !827

for.end148:                                       ; preds = %for.cond131
  br label %for.cond149, !dbg !829

for.cond149:                                      ; preds = %for.inc156, %for.end148
  %123 = load i32, ptr %i, align 4, !dbg !830
  %cmp150 = icmp slt i32 %123, 512, !dbg !833
  br i1 %cmp150, label %for.body152, label %for.end158, !dbg !834

for.body152:                                      ; preds = %for.cond149
  %124 = load ptr, ptr %pmd, align 8, !dbg !835
  %125 = load i32, ptr %i, align 4, !dbg !836
  %idxprom153 = sext i32 %125 to i64, !dbg !835
  %arrayidx154 = getelementptr i64, ptr %124, i64 %idxprom153, !dbg !835
  %126 = load i64, ptr %arrayidx154, align 8, !dbg !837
  %and155 = and i64 %126, -2, !dbg !837
  store i64 %and155, ptr %arrayidx154, align 8, !dbg !837
  br label %for.inc156, !dbg !835

for.inc156:                                       ; preds = %for.body152
  %127 = load i32, ptr %i, align 4, !dbg !838
  %inc157 = add i32 %127, 1, !dbg !838
  store i32 %inc157, ptr %i, align 4, !dbg !838
  br label %for.cond149, !dbg !839, !llvm.loop !840

for.end158:                                       ; preds = %for.cond149
  %128 = load i64, ptr %load_delta, align 8, !dbg !842
  %call159 = call i64 @sme_get_me_mask() #18, !dbg !843
  %sub160 = sub i64 %128, %call159, !dbg !844
  %129 = load i64, ptr %physaddr.addr, align 8, !dbg !845
  %call161 = call ptr @fixup_long(ptr noundef @phys_base, i64 noundef %129) #18, !dbg !846
  %130 = load i64, ptr %call161, align 8, !dbg !847
  %add162 = add i64 %130, %sub160, !dbg !847
  store i64 %add162, ptr %call161, align 8, !dbg !847
  %131 = load ptr, ptr %bp.addr, align 8, !dbg !848
  %132 = load ptr, ptr %pmd, align 8, !dbg !849
  %call163 = call i64 @sme_postprocess_startup(ptr noundef %131, ptr noundef %132) #18, !dbg !850
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_pgt_ptr) #17, !dbg !851
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !851
  call void @llvm.lifetime.end.p0(i64 1, ptr %la57) #17, !dbg !851
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask_ptr) #17, !dbg !851
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd_entry) #17, !dbg !851
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #17, !dbg !851
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #17, !dbg !851
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #17, !dbg !851
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #17, !dbg !851
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgtable_flags) #17, !dbg !851
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !851
  call void @llvm.lifetime.end.p0(i64 8, ptr %load_delta) #17, !dbg !851
  ret i64 %call163, !dbg !852
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_la57_support(i64 noundef %physaddr) #0 section ".head.text" align 16 !dbg !853 {
entry:
  %retval = alloca i1, align 1
  %physaddr.addr = alloca i64, align 8
  store i64 %physaddr, ptr %physaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %physaddr.addr, metadata !857, metadata !DIExpression()), !dbg !858
  %call = call i64 @native_read_cr4() #18, !dbg !859
  %and = and i64 %call, 4096, !dbg !861
  %tobool = icmp ne i64 %and, 0, !dbg !861
  br i1 %tobool, label %if.end, label %if.then, !dbg !862

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !863
  br label %return, !dbg !863

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %physaddr.addr, align 8, !dbg !864
  %call1 = call ptr @fixup_int(ptr noundef @__pgtable_l5_enabled, i64 noundef %0) #18, !dbg !865
  store i32 1, ptr %call1, align 4, !dbg !866
  %1 = load i64, ptr %physaddr.addr, align 8, !dbg !867
  %call2 = call ptr @fixup_int(ptr noundef @pgdir_shift, i64 noundef %1) #18, !dbg !868
  store i32 48, ptr %call2, align 4, !dbg !869
  %2 = load i64, ptr %physaddr.addr, align 8, !dbg !870
  %call3 = call ptr @fixup_int(ptr noundef @ptrs_per_p4d, i64 noundef %2) #18, !dbg !871
  store i32 512, ptr %call3, align 4, !dbg !872
  %3 = load i64, ptr %physaddr.addr, align 8, !dbg !873
  %call4 = call ptr @fixup_long(ptr noundef @page_offset_base, i64 noundef %3) #18, !dbg !874
  store i64 -67272519433846784, ptr %call4, align 8, !dbg !875
  %4 = load i64, ptr %physaddr.addr, align 8, !dbg !876
  %call5 = call ptr @fixup_long(ptr noundef @vmalloc_base, i64 noundef %4) #18, !dbg !877
  store i64 -27021597764222976, ptr %call5, align 8, !dbg !878
  %5 = load i64, ptr %physaddr.addr, align 8, !dbg !879
  %call6 = call ptr @fixup_long(ptr noundef @vmemmap_base, i64 noundef %5) #18, !dbg !880
  store i64 -12384898975268864, ptr %call6, align 8, !dbg !881
  store i1 true, ptr %retval, align 1, !dbg !882
  br label %return, !dbg !882

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !883
  ret i1 %6, !dbg !883
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pgtable_l5_enabled() #3 align 16 !dbg !884 {
entry:
  %0 = load i32, ptr @__pgtable_l5_enabled, align 4, !dbg !887
  %tobool = icmp ne i32 %0, 0, !dbg !887
  ret i1 %tobool, !dbg !888
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sme_get_me_mask() #3 align 16 !dbg !889 {
entry:
  ret i64 0, !dbg !893
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fixup_pointer(ptr noundef %ptr, i64 noundef %physaddr) #0 section ".head.text" align 16 !dbg !894 {
entry:
  %ptr.addr = alloca ptr, align 8
  %physaddr.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !898, metadata !DIExpression()), !dbg !900
  store i64 %physaddr, ptr %physaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %physaddr.addr, metadata !899, metadata !DIExpression()), !dbg !901
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !902
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !903
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @_text to i64), !dbg !903
  %1 = load i64, ptr %physaddr.addr, align 8, !dbg !904
  %2 = inttoptr i64 %1 to ptr, !dbg !905
  %add.ptr = getelementptr i8, ptr %2, i64 %sub.ptr.sub, !dbg !906
  ret ptr %add.ptr, !dbg !907
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pmd_index(i64 noundef %address) #3 align 16 !dbg !908 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !913, metadata !DIExpression()), !dbg !914
  %0 = load i64, ptr %address.addr, align 8, !dbg !915
  %shr = lshr i64 %0, 21, !dbg !916
  %and = and i64 %shr, 511, !dbg !917
  ret i64 %and, !dbg !918
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fixup_long(ptr noundef %ptr, i64 noundef %physaddr) #0 section ".head.text" align 16 !dbg !919 {
entry:
  %ptr.addr = alloca ptr, align 8
  %physaddr.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !923, metadata !DIExpression()), !dbg !925
  store i64 %physaddr, ptr %physaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %physaddr.addr, metadata !924, metadata !DIExpression()), !dbg !926
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !927
  %1 = load i64, ptr %physaddr.addr, align 8, !dbg !928
  %call = call ptr @fixup_pointer(ptr noundef %0, i64 noundef %1) #18, !dbg !929
  ret ptr %call, !dbg !930
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sme_postprocess_startup(ptr noundef %bp, ptr noundef %pmd) #0 section ".head.text" align 16 !dbg !931 {
entry:
  %bp.addr = alloca ptr, align 8
  %pmd.addr = alloca ptr, align 8
  %vaddr = alloca i64, align 8
  %vaddr_end = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !935, metadata !DIExpression()), !dbg !940
  store ptr %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !936, metadata !DIExpression()), !dbg !941
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #17, !dbg !942
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !937, metadata !DIExpression()), !dbg !943
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr_end) #17, !dbg !942
  call void @llvm.dbg.declare(metadata ptr %vaddr_end, metadata !938, metadata !DIExpression()), !dbg !944
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !945
  call void @llvm.dbg.declare(metadata ptr %i, metadata !939, metadata !DIExpression()), !dbg !946
  %0 = load ptr, ptr %bp.addr, align 8, !dbg !947
  call void @sme_encrypt_kernel(ptr noundef %0) #18, !dbg !948
  %call = call i64 @sme_get_me_mask() #18, !dbg !949
  %tobool = icmp ne i64 %call, 0, !dbg !949
  br i1 %tobool, label %if.then, label %if.end, !dbg !951

if.then:                                          ; preds = %entry
  store i64 ptrtoint (ptr @__start_bss_decrypted to i64), ptr %vaddr, align 8, !dbg !952
  store i64 ptrtoint (ptr @__end_bss_decrypted to i64), ptr %vaddr_end, align 8, !dbg !954
  br label %for.cond, !dbg !955

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i64, ptr %vaddr, align 8, !dbg !956
  %2 = load i64, ptr %vaddr_end, align 8, !dbg !959
  %cmp = icmp ult i64 %1, %2, !dbg !960
  br i1 %cmp, label %for.body, label %for.end, !dbg !961

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %vaddr, align 8, !dbg !962
  %call1 = call i64 @__phys_addr_nodebug(i64 noundef %3) #18, !dbg !962
  %4 = load i64, ptr %vaddr, align 8, !dbg !964
  %call2 = call i64 @__phys_addr_nodebug(i64 noundef %4) #18, !dbg !964
  call void @early_snp_set_memory_shared(i64 noundef %call1, i64 noundef %call2, i64 noundef 512) #19, !dbg !965
  %5 = load i64, ptr %vaddr, align 8, !dbg !966
  %call3 = call i64 @pmd_index(i64 noundef %5) #18, !dbg !967
  %conv = trunc i64 %call3 to i32, !dbg !967
  store i32 %conv, ptr %i, align 4, !dbg !968
  %call4 = call i64 @sme_get_me_mask() #18, !dbg !969
  %6 = load ptr, ptr %pmd.addr, align 8, !dbg !970
  %7 = load i32, ptr %i, align 4, !dbg !971
  %idxprom = sext i32 %7 to i64, !dbg !970
  %arrayidx = getelementptr i64, ptr %6, i64 %idxprom, !dbg !970
  %8 = load i64, ptr %arrayidx, align 8, !dbg !972
  %sub = sub i64 %8, %call4, !dbg !972
  store i64 %sub, ptr %arrayidx, align 8, !dbg !972
  br label %for.inc, !dbg !973

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %vaddr, align 8, !dbg !974
  %add = add i64 %9, 2097152, !dbg !974
  store i64 %add, ptr %vaddr, align 8, !dbg !974
  br label %for.cond, !dbg !975, !llvm.loop !976

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !978

if.end:                                           ; preds = %for.end, %entry
  %call5 = call i64 @sme_get_me_mask() #18, !dbg !979
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !980
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr_end) #17, !dbg !980
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #17, !dbg !980
  ret i64 %call5, !dbg !981
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden zeroext i1 @__early_make_pgtable(i64 noundef %address, i64 noundef %pmd) #4 section ".init.text" align 16 !dbg !982 {
entry:
  %retval = alloca i1, align 1
  %address.addr = alloca i64, align 8
  %pmd.addr = alloca i64, align 8
  %physaddr = alloca i64, align 8
  %pgd = alloca i64, align 8
  %pgd_p = alloca ptr, align 8
  %p4d = alloca i64, align 8
  %p4d_p = alloca ptr, align 8
  %pud = alloca i64, align 8
  %pud_p = alloca ptr, align 8
  %pmd_p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !986, metadata !DIExpression()), !dbg !997
  store i64 %pmd, ptr %pmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pmd.addr, metadata !987, metadata !DIExpression()), !dbg !998
  call void @llvm.lifetime.start.p0(i64 8, ptr %physaddr) #17, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %physaddr, metadata !988, metadata !DIExpression()), !dbg !1000
  %0 = load i64, ptr %address.addr, align 8, !dbg !1001
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !1002
  %sub = sub i64 %0, %1, !dbg !1003
  store i64 %sub, ptr %physaddr, align 8, !dbg !1000
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #17, !dbg !1004
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !989, metadata !DIExpression()), !dbg !1005
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd_p) #17, !dbg !1004
  call void @llvm.dbg.declare(metadata ptr %pgd_p, metadata !990, metadata !DIExpression()), !dbg !1006
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #17, !dbg !1007
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !991, metadata !DIExpression()), !dbg !1008
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d_p) #17, !dbg !1007
  call void @llvm.dbg.declare(metadata ptr %p4d_p, metadata !992, metadata !DIExpression()), !dbg !1009
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #17, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !993, metadata !DIExpression()), !dbg !1011
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud_p) #17, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %pud_p, metadata !994, metadata !DIExpression()), !dbg !1012
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd_p) #17, !dbg !1013
  call void @llvm.dbg.declare(metadata ptr %pmd_p, metadata !995, metadata !DIExpression()), !dbg !1014
  %2 = load i64, ptr %physaddr, align 8, !dbg !1015
  %call = call zeroext i1 @pgtable_l5_enabled() #18, !dbg !1017
  %3 = zext i1 %call to i64, !dbg !1017
  %cond = select i1 %call, i32 52, i32 46, !dbg !1017
  %sh_prom = zext i32 %cond to i64, !dbg !1017
  %shl = shl i64 1, %sh_prom, !dbg !1017
  %cmp = icmp uge i64 %2, %shl, !dbg !1018
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1019

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i64 @read_cr3_pa() #18, !dbg !1020
  %call2 = call i64 @__phys_addr_nodebug(i64 noundef ptrtoint (ptr @early_top_pgt to i64)) #18, !dbg !1021
  %cmp3 = icmp ne i64 %call1, %call2, !dbg !1022
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1023

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !1024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1024

if.end:                                           ; preds = %lor.lhs.false
  br label %again, !dbg !1021

again:                                            ; preds = %if.then50, %if.then30, %if.then13, %if.end
  call void @llvm.dbg.label(metadata !996), !dbg !1025
  %4 = load i64, ptr %address.addr, align 8, !dbg !1026
  %5 = load i32, ptr @pgdir_shift, align 4, !dbg !1026
  %sh_prom4 = zext i32 %5 to i64, !dbg !1026
  %shr = lshr i64 %4, %sh_prom4, !dbg !1026
  %and = and i64 %shr, 511, !dbg !1026
  %arrayidx = getelementptr [512 x %struct.pgd_t], ptr @early_top_pgt, i64 0, i64 %and, !dbg !1027
  %pgd5 = getelementptr inbounds %struct.pgd_t, ptr %arrayidx, i32 0, i32 0, !dbg !1028
  store ptr %pgd5, ptr %pgd_p, align 8, !dbg !1029
  %6 = load ptr, ptr %pgd_p, align 8, !dbg !1030
  %7 = load i64, ptr %6, align 8, !dbg !1031
  store i64 %7, ptr %pgd, align 8, !dbg !1032
  %call6 = call zeroext i1 @pgtable_l5_enabled() #18, !dbg !1033
  br i1 %call6, label %if.else, label %if.then7, !dbg !1035

if.then7:                                         ; preds = %again
  %8 = load ptr, ptr %pgd_p, align 8, !dbg !1036
  store ptr %8, ptr %p4d_p, align 8, !dbg !1037
  br label %if.end20, !dbg !1038

if.else:                                          ; preds = %again
  %9 = load i64, ptr %pgd, align 8, !dbg !1039
  %tobool = icmp ne i64 %9, 0, !dbg !1039
  br i1 %tobool, label %if.then8, label %if.else11, !dbg !1041

if.then8:                                         ; preds = %if.else
  %10 = load i64, ptr %pgd, align 8, !dbg !1042
  %and9 = and i64 %10, 4503599627366400, !dbg !1043
  %add = add i64 %and9, -2147483648, !dbg !1044
  %11 = load i64, ptr @phys_base, align 8, !dbg !1045
  %sub10 = sub i64 %add, %11, !dbg !1046
  %12 = inttoptr i64 %sub10 to ptr, !dbg !1047
  store ptr %12, ptr %p4d_p, align 8, !dbg !1048
  br label %if.end19, !dbg !1049

if.else11:                                        ; preds = %if.else
  %13 = load i32, ptr @next_early_pgt, align 4, !dbg !1050
  %cmp12 = icmp uge i32 %13, 64, !dbg !1053
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1054

if.then13:                                        ; preds = %if.else11
  call void @reset_early_page_tables() #19, !dbg !1055
  br label %again, !dbg !1057

if.end14:                                         ; preds = %if.else11
  %14 = load i32, ptr @next_early_pgt, align 4, !dbg !1058
  %inc = add i32 %14, 1, !dbg !1058
  store i32 %inc, ptr @next_early_pgt, align 4, !dbg !1058
  %idxprom = zext i32 %14 to i64, !dbg !1059
  %arrayidx15 = getelementptr [64 x [512 x %struct.pmd_t]], ptr @early_dynamic_pgts, i64 0, i64 %idxprom, !dbg !1059
  %arraydecay = getelementptr inbounds [512 x %struct.pmd_t], ptr %arrayidx15, i64 0, i64 0, !dbg !1059
  store ptr %arraydecay, ptr %p4d_p, align 8, !dbg !1060
  %15 = load ptr, ptr %p4d_p, align 8, !dbg !1061
  %16 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !1062
  %conv = zext i32 %16 to i64, !dbg !1062
  %mul = mul i64 8, %conv, !dbg !1063
  call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %mul, i1 false), !dbg !1064
  %17 = load ptr, ptr %p4d_p, align 8, !dbg !1065
  %18 = ptrtoint ptr %17 to i64, !dbg !1066
  %sub16 = sub i64 %18, -2147483648, !dbg !1067
  %19 = load i64, ptr @phys_base, align 8, !dbg !1068
  %add17 = add i64 %sub16, %19, !dbg !1069
  %add18 = add i64 %add17, 99, !dbg !1070
  %20 = load ptr, ptr %pgd_p, align 8, !dbg !1071
  store i64 %add18, ptr %20, align 8, !dbg !1072
  br label %if.end19

if.end19:                                         ; preds = %if.end14, %if.then8
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then7
  %21 = load i64, ptr %address.addr, align 8, !dbg !1073
  %call21 = call i64 @p4d_index(i64 noundef %21) #18, !dbg !1074
  %22 = load ptr, ptr %p4d_p, align 8, !dbg !1075
  %add.ptr = getelementptr i64, ptr %22, i64 %call21, !dbg !1075
  store ptr %add.ptr, ptr %p4d_p, align 8, !dbg !1075
  %23 = load ptr, ptr %p4d_p, align 8, !dbg !1076
  %24 = load i64, ptr %23, align 8, !dbg !1077
  store i64 %24, ptr %p4d, align 8, !dbg !1078
  %25 = load i64, ptr %p4d, align 8, !dbg !1079
  %tobool22 = icmp ne i64 %25, 0, !dbg !1079
  br i1 %tobool22, label %if.then23, label %if.else27, !dbg !1081

if.then23:                                        ; preds = %if.end20
  %26 = load i64, ptr %p4d, align 8, !dbg !1082
  %and24 = and i64 %26, 4503599627366400, !dbg !1083
  %add25 = add i64 %and24, -2147483648, !dbg !1084
  %27 = load i64, ptr @phys_base, align 8, !dbg !1085
  %sub26 = sub i64 %add25, %27, !dbg !1086
  %28 = inttoptr i64 %sub26 to ptr, !dbg !1087
  store ptr %28, ptr %pud_p, align 8, !dbg !1088
  br label %if.end39, !dbg !1089

if.else27:                                        ; preds = %if.end20
  %29 = load i32, ptr @next_early_pgt, align 4, !dbg !1090
  %cmp28 = icmp uge i32 %29, 64, !dbg !1093
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !1094

if.then30:                                        ; preds = %if.else27
  call void @reset_early_page_tables() #19, !dbg !1095
  br label %again, !dbg !1097

if.end31:                                         ; preds = %if.else27
  %30 = load i32, ptr @next_early_pgt, align 4, !dbg !1098
  %inc32 = add i32 %30, 1, !dbg !1098
  store i32 %inc32, ptr @next_early_pgt, align 4, !dbg !1098
  %idxprom33 = zext i32 %30 to i64, !dbg !1099
  %arrayidx34 = getelementptr [64 x [512 x %struct.pmd_t]], ptr @early_dynamic_pgts, i64 0, i64 %idxprom33, !dbg !1099
  %arraydecay35 = getelementptr inbounds [512 x %struct.pmd_t], ptr %arrayidx34, i64 0, i64 0, !dbg !1099
  store ptr %arraydecay35, ptr %pud_p, align 8, !dbg !1100
  %31 = load ptr, ptr %pud_p, align 8, !dbg !1101
  call void @llvm.memset.p0.i64(ptr align 8 %31, i8 0, i64 4096, i1 false), !dbg !1102
  %32 = load ptr, ptr %pud_p, align 8, !dbg !1103
  %33 = ptrtoint ptr %32 to i64, !dbg !1104
  %sub36 = sub i64 %33, -2147483648, !dbg !1105
  %34 = load i64, ptr @phys_base, align 8, !dbg !1106
  %add37 = add i64 %sub36, %34, !dbg !1107
  %add38 = add i64 %add37, 99, !dbg !1108
  %35 = load ptr, ptr %p4d_p, align 8, !dbg !1109
  store i64 %add38, ptr %35, align 8, !dbg !1110
  br label %if.end39

if.end39:                                         ; preds = %if.end31, %if.then23
  %36 = load i64, ptr %address.addr, align 8, !dbg !1111
  %call40 = call i64 @pud_index(i64 noundef %36) #18, !dbg !1112
  %37 = load ptr, ptr %pud_p, align 8, !dbg !1113
  %add.ptr41 = getelementptr i64, ptr %37, i64 %call40, !dbg !1113
  store ptr %add.ptr41, ptr %pud_p, align 8, !dbg !1113
  %38 = load ptr, ptr %pud_p, align 8, !dbg !1114
  %39 = load i64, ptr %38, align 8, !dbg !1115
  store i64 %39, ptr %pud, align 8, !dbg !1116
  %40 = load i64, ptr %pud, align 8, !dbg !1117
  %tobool42 = icmp ne i64 %40, 0, !dbg !1117
  br i1 %tobool42, label %if.then43, label %if.else47, !dbg !1119

if.then43:                                        ; preds = %if.end39
  %41 = load i64, ptr %pud, align 8, !dbg !1120
  %and44 = and i64 %41, 4503599627366400, !dbg !1121
  %add45 = add i64 %and44, -2147483648, !dbg !1122
  %42 = load i64, ptr @phys_base, align 8, !dbg !1123
  %sub46 = sub i64 %add45, %42, !dbg !1124
  %43 = inttoptr i64 %sub46 to ptr, !dbg !1125
  store ptr %43, ptr %pmd_p, align 8, !dbg !1126
  br label %if.end59, !dbg !1127

if.else47:                                        ; preds = %if.end39
  %44 = load i32, ptr @next_early_pgt, align 4, !dbg !1128
  %cmp48 = icmp uge i32 %44, 64, !dbg !1131
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1132

if.then50:                                        ; preds = %if.else47
  call void @reset_early_page_tables() #19, !dbg !1133
  br label %again, !dbg !1135

if.end51:                                         ; preds = %if.else47
  %45 = load i32, ptr @next_early_pgt, align 4, !dbg !1136
  %inc52 = add i32 %45, 1, !dbg !1136
  store i32 %inc52, ptr @next_early_pgt, align 4, !dbg !1136
  %idxprom53 = zext i32 %45 to i64, !dbg !1137
  %arrayidx54 = getelementptr [64 x [512 x %struct.pmd_t]], ptr @early_dynamic_pgts, i64 0, i64 %idxprom53, !dbg !1137
  %arraydecay55 = getelementptr inbounds [512 x %struct.pmd_t], ptr %arrayidx54, i64 0, i64 0, !dbg !1137
  store ptr %arraydecay55, ptr %pmd_p, align 8, !dbg !1138
  %46 = load ptr, ptr %pmd_p, align 8, !dbg !1139
  call void @llvm.memset.p0.i64(ptr align 8 %46, i8 0, i64 4096, i1 false), !dbg !1140
  %47 = load ptr, ptr %pmd_p, align 8, !dbg !1141
  %48 = ptrtoint ptr %47 to i64, !dbg !1142
  %sub56 = sub i64 %48, -2147483648, !dbg !1143
  %49 = load i64, ptr @phys_base, align 8, !dbg !1144
  %add57 = add i64 %sub56, %49, !dbg !1145
  %add58 = add i64 %add57, 99, !dbg !1146
  %50 = load ptr, ptr %pud_p, align 8, !dbg !1147
  store i64 %add58, ptr %50, align 8, !dbg !1148
  br label %if.end59

if.end59:                                         ; preds = %if.end51, %if.then43
  %51 = load i64, ptr %pmd.addr, align 8, !dbg !1149
  %52 = load ptr, ptr %pmd_p, align 8, !dbg !1150
  %53 = load i64, ptr %address.addr, align 8, !dbg !1151
  %call60 = call i64 @pmd_index(i64 noundef %53) #18, !dbg !1152
  %arrayidx61 = getelementptr i64, ptr %52, i64 %call60, !dbg !1150
  store i64 %51, ptr %arrayidx61, align 8, !dbg !1153
  store i1 true, ptr %retval, align 1, !dbg !1154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1154

cleanup:                                          ; preds = %if.end59, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd_p) #17, !dbg !1155
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud_p) #17, !dbg !1155
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #17, !dbg !1155
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d_p) #17, !dbg !1155
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #17, !dbg !1155
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd_p) #17, !dbg !1155
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #17, !dbg !1155
  call void @llvm.lifetime.end.p0(i64 8, ptr %physaddr) #17, !dbg !1155
  %54 = load i1, ptr %retval, align 1, !dbg !1155
  ret i1 %54, !dbg !1155
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @read_cr3_pa() #3 align 16 !dbg !1156 {
entry:
  %call = call i64 @__read_cr3() #18, !dbg !1160
  %and = and i64 %call, 4503599627366400, !dbg !1161
  ret i64 %and, !dbg !1162
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #5 align 16 !dbg !1163 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1166, metadata !DIExpression()), !dbg !1168
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #17, !dbg !1169
  call void @llvm.dbg.declare(metadata ptr %y, metadata !1167, metadata !DIExpression()), !dbg !1170
  %0 = load i64, ptr %x.addr, align 8, !dbg !1171
  %sub = sub i64 %0, -2147483648, !dbg !1172
  store i64 %sub, ptr %y, align 8, !dbg !1170
  %1 = load i64, ptr %y, align 8, !dbg !1173
  %2 = load i64, ptr %x.addr, align 8, !dbg !1174
  %3 = load i64, ptr %y, align 8, !dbg !1175
  %cmp = icmp ugt i64 %2, %3, !dbg !1176
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1177

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !1178
  br label %cond.end, !dbg !1177

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !1179
  %sub1 = sub i64 -2147483648, %5, !dbg !1180
  br label %cond.end, !dbg !1177

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !1177
  %add = add i64 %1, %cond, !dbg !1181
  store i64 %add, ptr %x.addr, align 8, !dbg !1182
  %6 = load i64, ptr %x.addr, align 8, !dbg !1183
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #17, !dbg !1184
  ret i64 %6, !dbg !1185
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @reset_early_page_tables() #4 section ".init.text" align 16 !dbg !1186 {
entry:
  call void @llvm.memset.p0.i64(ptr align 16 @early_top_pgt, i8 0, i64 4088, i1 false), !dbg !1189
  store i32 0, ptr @next_early_pgt, align 4, !dbg !1190
  %call = call i64 @__phys_addr_nodebug(i64 noundef ptrtoint (ptr @early_top_pgt to i64)) #18, !dbg !1191
  %or = or i64 %call, 0, !dbg !1191
  call void @write_cr3(i64 noundef %or) #18, !dbg !1192
  ret void, !dbg !1193
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_index(i64 noundef %address) #3 align 16 !dbg !1194 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1197, metadata !DIExpression()), !dbg !1198
  %0 = load i64, ptr %address.addr, align 8, !dbg !1199
  %shr = lshr i64 %0, 39, !dbg !1200
  %1 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !1201
  %sub = sub i32 %1, 1, !dbg !1202
  %conv = zext i32 %sub to i64, !dbg !1203
  %and = and i64 %shr, %conv, !dbg !1204
  ret i64 %and, !dbg !1205
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_index(i64 noundef %address) #3 align 16 !dbg !1206 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1208, metadata !DIExpression()), !dbg !1209
  %0 = load i64, ptr %address.addr, align 8, !dbg !1210
  %shr = lshr i64 %0, 30, !dbg !1211
  %and = and i64 %shr, 511, !dbg !1212
  ret i64 %and, !dbg !1213
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @do_early_exception(ptr noundef %regs, i32 noundef %trapnr) #4 section ".init.text" align 16 !dbg !1214 {
entry:
  %regs.addr = alloca ptr, align 8
  %trapnr.addr = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1270, metadata !DIExpression()), !dbg !1272
  store i32 %trapnr, ptr %trapnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trapnr.addr, metadata !1271, metadata !DIExpression()), !dbg !1273
  %0 = load i32, ptr %trapnr.addr, align 4, !dbg !1274
  %cmp = icmp eq i32 %0, 14, !dbg !1276
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1277

land.lhs.true:                                    ; preds = %entry
  %call = call i64 @native_read_cr2() #18, !dbg !1278
  %call1 = call zeroext i1 @early_make_pgtable(i64 noundef %call) #19, !dbg !1279
  br i1 %call1, label %if.then, label %if.end, !dbg !1280

if.then:                                          ; preds = %land.lhs.true
  br label %return, !dbg !1281

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = load i32, ptr %trapnr.addr, align 4, !dbg !1282
  %cmp2 = icmp eq i32 %1, 20, !dbg !1284
  br i1 %cmp2, label %land.lhs.true3, label %if.end6, !dbg !1285

land.lhs.true3:                                   ; preds = %if.end
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !1286
  %call4 = call zeroext i1 @tdx_early_handle_ve(ptr noundef %2) #18, !dbg !1287
  br i1 %call4, label %if.then5, label %if.end6, !dbg !1288

if.then5:                                         ; preds = %land.lhs.true3
  br label %return, !dbg !1289

if.end6:                                          ; preds = %land.lhs.true3, %if.end
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !1290
  %4 = load i32, ptr %trapnr.addr, align 4, !dbg !1291
  call void @early_fixup_exception(ptr noundef %3, i32 noundef %4) #18, !dbg !1292
  br label %return, !dbg !1293

return:                                           ; preds = %if.end6, %if.then5, %if.then
  ret void, !dbg !1293
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @early_make_pgtable(i64 noundef %address) #4 section ".init.text" align 16 !dbg !1294 {
entry:
  %address.addr = alloca i64, align 8
  %physaddr = alloca i64, align 8
  %pmd = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1296, metadata !DIExpression()), !dbg !1299
  call void @llvm.lifetime.start.p0(i64 8, ptr %physaddr) #17, !dbg !1300
  call void @llvm.dbg.declare(metadata ptr %physaddr, metadata !1297, metadata !DIExpression()), !dbg !1301
  %0 = load i64, ptr %address.addr, align 8, !dbg !1302
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !1303
  %sub = sub i64 %0, %1, !dbg !1304
  store i64 %sub, ptr %physaddr, align 8, !dbg !1301
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #17, !dbg !1305
  call void @llvm.dbg.declare(metadata ptr %pmd, metadata !1298, metadata !DIExpression()), !dbg !1306
  %2 = load i64, ptr %physaddr, align 8, !dbg !1307
  %and = and i64 %2, -2097152, !dbg !1308
  %3 = load i64, ptr @early_pmd_flags, align 8, !dbg !1309
  %add = add i64 %and, %3, !dbg !1310
  store i64 %add, ptr %pmd, align 8, !dbg !1311
  %4 = load i64, ptr %address.addr, align 8, !dbg !1312
  %5 = load i64, ptr %pmd, align 8, !dbg !1313
  %call = call zeroext i1 @__early_make_pgtable(i64 noundef %4, i64 noundef %5) #19, !dbg !1314
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #17, !dbg !1315
  call void @llvm.lifetime.end.p0(i64 8, ptr %physaddr) #17, !dbg !1315
  ret i1 %call, !dbg !1316
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_cr2() #5 align 16 !dbg !1317 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1320, metadata !DIExpression()), !dbg !1322
  %0 = call i64 asm sideeffect "mov %cr2,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #17, !dbg !1323, !srcloc !1324
  store i64 %0, ptr %val, align 8, !dbg !1323
  %1 = load i64, ptr %val, align 8, !dbg !1325
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !1326
  ret i64 %1, !dbg !1327
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tdx_early_handle_ve(ptr noundef %regs) #3 align 16 !dbg !1328 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1333, metadata !DIExpression()), !dbg !1334
  ret i1 false, !dbg !1335
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1336 dso_local void @early_fixup_exception(ptr noundef, i32 noundef) #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @clear_bss() #4 section ".init.text" align 16 !dbg !1338 {
entry:
  call void @llvm.memset.p0.i64(ptr align 1 @__bss_start, i8 0, i64 sub (i64 ptrtoint (ptr @__bss_stop to i64), i64 ptrtoint (ptr @__bss_start to i64)), i1 false), !dbg !1339
  call void @llvm.memset.p0.i64(ptr align 1 @__brk_base, i8 0, i64 sub (i64 ptrtoint (ptr @__brk_limit to i64), i64 ptrtoint (ptr @__brk_base to i64)), i1 false), !dbg !1340
  ret void, !dbg !1341
}

; Function Attrs: cold fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid optsize sspstrong
define hidden void @x86_64_start_kernel(ptr noundef %real_mode_data) #8 section ".init.text" align 16 !dbg !1342 {
entry:
  %real_mode_data.addr = alloca ptr, align 8
  %pscr_ret__ = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp64 = alloca i64, align 8
  store ptr %real_mode_data, ptr %real_mode_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %real_mode_data.addr, metadata !1346, metadata !DIExpression()), !dbg !1355
  br label %do.body, !dbg !1356

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1357

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !1359

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !1360

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !1362

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !1363

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !1365

do.body5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !1366

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !1368

do.body7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !1369

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !1371

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !1372

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !1374

do.body11:                                        ; preds = %do.end10
  %0 = load i32, ptr @pgdir_shift, align 4, !dbg !1375
  %sh_prom = zext i32 %0 to i64, !dbg !1375
  %shl = shl i64 1, %sh_prom, !dbg !1375
  %sub = sub i64 %shl, 1, !dbg !1375
  %not = xor i64 %sub, -1, !dbg !1375
  %and = and i64 -16777217, %not, !dbg !1375
  %1 = load i32, ptr @pgdir_shift, align 4, !dbg !1375
  %sh_prom12 = zext i32 %1 to i64, !dbg !1375
  %shl13 = shl i64 1, %sh_prom12, !dbg !1375
  %sub14 = sub i64 %shl13, 1, !dbg !1375
  %not15 = xor i64 %sub14, -1, !dbg !1375
  %and16 = and i64 -2130706432, %not15, !dbg !1375
  %cmp = icmp eq i64 %and, %and16, !dbg !1375
  %lnot = xor i1 %cmp, true, !dbg !1375
  %lnot.ext = zext i1 %lnot to i32, !dbg !1375
  %2 = call i1 @llvm.is.constant.i32(i32 %lnot.ext), !dbg !1375
  br i1 %2, label %if.then, label %if.else, !dbg !1378

if.then:                                          ; preds = %do.body11
  br label %do.body17, !dbg !1375

do.body17:                                        ; preds = %if.then
  %3 = load i32, ptr @pgdir_shift, align 4, !dbg !1379
  %sh_prom18 = zext i32 %3 to i64, !dbg !1379
  %shl19 = shl i64 1, %sh_prom18, !dbg !1379
  %sub20 = sub i64 %shl19, 1, !dbg !1379
  %not21 = xor i64 %sub20, -1, !dbg !1379
  %and22 = and i64 -16777217, %not21, !dbg !1379
  %4 = load i32, ptr @pgdir_shift, align 4, !dbg !1379
  %sh_prom23 = zext i32 %4 to i64, !dbg !1379
  %shl24 = shl i64 1, %sh_prom23, !dbg !1379
  %sub25 = sub i64 %shl24, 1, !dbg !1379
  %not26 = xor i64 %sub25, -1, !dbg !1379
  %and27 = and i64 -2130706432, %not26, !dbg !1379
  %cmp28 = icmp eq i64 %and22, %and27, !dbg !1379
  br i1 %cmp28, label %if.end, label %if.then29, !dbg !1382

if.then29:                                        ; preds = %do.body17
  call void @__compiletime_assert_288() #20, !dbg !1379, !srcloc !1383
  unreachable, !dbg !1379

if.end:                                           ; preds = %do.body17
  br label %do.end30, !dbg !1382

do.end30:                                         ; preds = %if.end
  br label %if.end58, !dbg !1382

if.else:                                          ; preds = %do.body11
  br label %do.body31, !dbg !1375

do.body31:                                        ; preds = %if.else
  %5 = load i32, ptr @pgdir_shift, align 4, !dbg !1384
  %sh_prom32 = zext i32 %5 to i64, !dbg !1384
  %shl33 = shl i64 1, %sh_prom32, !dbg !1384
  %sub34 = sub i64 %shl33, 1, !dbg !1384
  %not35 = xor i64 %sub34, -1, !dbg !1384
  %and36 = and i64 -16777217, %not35, !dbg !1384
  %6 = load i32, ptr @pgdir_shift, align 4, !dbg !1384
  %sh_prom37 = zext i32 %6 to i64, !dbg !1384
  %shl38 = shl i64 1, %sh_prom37, !dbg !1384
  %sub39 = sub i64 %shl38, 1, !dbg !1384
  %not40 = xor i64 %sub39, -1, !dbg !1384
  %and41 = and i64 -2130706432, %not40, !dbg !1384
  %cmp42 = icmp eq i64 %and36, %and41, !dbg !1384
  %lnot43 = xor i1 %cmp42, true, !dbg !1384
  %lnot45 = xor i1 %lnot43, true, !dbg !1384
  %lnot47 = xor i1 %lnot45, true, !dbg !1384
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !1384
  %conv = sext i32 %lnot.ext48 to i64, !dbg !1384
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1384
  %tobool = icmp ne i64 %expval, 0, !dbg !1384
  br i1 %tobool, label %if.then49, label %if.end56, !dbg !1387

if.then49:                                        ; preds = %do.body31
  br label %do.body50, !dbg !1384

do.body50:                                        ; preds = %if.then49
  br label %do.body51, !dbg !1388

do.body51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !1390

do.end52:                                         ; preds = %do.body51
  br label %do.body53, !dbg !1388

do.body53:                                        ; preds = %do.end52
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 486, i32 0, i64 12) #17, !dbg !1392, !srcloc !1394
  br label %do.end54, !dbg !1392

do.end54:                                         ; preds = %do.body53
  unreachable, !dbg !1388

do.end55:                                         ; No predecessors!
  br label %if.end56, !dbg !1388

if.end56:                                         ; preds = %do.end55, %do.body31
  br label %do.end57, !dbg !1387

do.end57:                                         ; preds = %if.end56
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %do.end30
  br label %do.end59, !dbg !1378

do.end59:                                         ; preds = %if.end58
  br label %do.body60, !dbg !1395

do.body60:                                        ; preds = %do.end59
  br label %do.end61, !dbg !1396

do.end61:                                         ; preds = %do.body60
  call void @cr4_init_shadow() #18, !dbg !1398
  call void @reset_early_page_tables() #19, !dbg !1399
  call void @clear_bss() #19, !dbg !1400
  call void @clear_page(ptr noundef @init_top_pgt) #18, !dbg !1401
  call void @sme_early_init() #19, !dbg !1402
  call void @kasan_early_init() #18, !dbg !1403
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #17, !dbg !1404
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1347, metadata !DIExpression()), !dbg !1404
  br label %do.body62, !dbg !1404

do.body62:                                        ; preds = %do.end61
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !1405
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1349, metadata !DIExpression()), !dbg !1405
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1405
  %7 = load ptr, ptr %__vpp_verify, align 8, !dbg !1405
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !1404
  br label %do.cond, !dbg !1405

do.cond:                                          ; preds = %do.body62
  br label %do.end63, !dbg !1405

do.end63:                                         ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #17, !dbg !1406
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1353, metadata !DIExpression()), !dbg !1406
  %8 = call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr inbounds (%struct.tlb_state, ptr @cpu_tlbstate, i32 0, i32 6)) #17, !dbg !1406, !srcloc !1407
  store i64 %8, ptr %pfo_val__, align 8, !dbg !1406
  %9 = load i64, ptr %pfo_val__, align 8, !dbg !1406
  store i64 %9, ptr %tmp, align 8, !dbg !1406
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #17, !dbg !1404
  %10 = load i64, ptr %tmp, align 8, !dbg !1406
  store i64 %10, ptr %pscr_ret__, align 8, !dbg !1404
  %11 = load i64, ptr %pscr_ret__, align 8, !dbg !1404
  store i64 %11, ptr %tmp64, align 8, !dbg !1404
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #17, !dbg !1408
  %12 = load i64, ptr %tmp64, align 8, !dbg !1404
  call void @__native_tlb_flush_global(i64 noundef %12) #18, !dbg !1409
  call void @idt_setup_early_handler() #18, !dbg !1410
  call void @tdx_early_init() #18, !dbg !1411
  %13 = load ptr, ptr %real_mode_data.addr, align 8, !dbg !1412
  %14 = ptrtoint ptr %13 to i64, !dbg !1412
  %15 = load i64, ptr @page_offset_base, align 8, !dbg !1412
  %add = add i64 %14, %15, !dbg !1412
  %16 = inttoptr i64 %add to ptr, !dbg !1412
  call void @copy_bootdata(ptr noundef %16) #19, !dbg !1413
  call void @load_ucode_bsp() #18, !dbg !1414
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 getelementptr ([0 x %struct.pgd_t], ptr @init_top_pgt, i64 0, i64 511), ptr align 8 getelementptr inbounds ([512 x %struct.pgd_t], ptr @early_top_pgt, i64 0, i64 511), i64 8, i1 false), !dbg !1415
  %17 = load ptr, ptr %real_mode_data.addr, align 8, !dbg !1416
  call void @x86_64_start_reservations(ptr noundef %17) #21, !dbg !1417
  unreachable, !dbg !1417
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1418 dso_local void @__compiletime_assert_288() #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cr4_init_shadow() #3 align 16 !dbg !1419 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  br label %do.body, !dbg !1427

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1428

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !1429
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1422, metadata !DIExpression()), !dbg !1429
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1429
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1429
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !1428
  br label %do.end, !dbg !1429

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1428

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #17, !dbg !1430
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1425, metadata !DIExpression()), !dbg !1430
  %call = call i64 @__read_cr4() #18, !dbg !1430
  store i64 %call, ptr %pto_val__, align 8, !dbg !1430
  %1 = load i64, ptr %pto_val__, align 8, !dbg !1430
  call void asm sideeffect "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr inbounds (%struct.tlb_state, ptr @cpu_tlbstate, i32 0, i32 6), i64 %1, ptr elementtype(i64) getelementptr inbounds (%struct.tlb_state, ptr @cpu_tlbstate, i32 0, i32 6)) #17, !dbg !1430, !srcloc !1431
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #17, !dbg !1428
  br label %do.end3, !dbg !1430

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1428

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !1432
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_page(ptr noundef %page) #3 align 16 !dbg !1433 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !1437, metadata !DIExpression()), !dbg !1438
  %0 = load ptr, ptr %page.addr, align 8, !dbg !1439
  call void @kmsan_unpoison_memory(ptr noundef %0, i64 noundef 4096) #18, !dbg !1440
  %1 = call i64 @llvm.read_register.i64(metadata !483), !dbg !1441
  %2 = load ptr, ptr %page.addr, align 8, !dbg !1441
  %3 = call { ptr, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09call ${2:c}\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+16)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ( 9*32+ 9)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call ${3:c}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09call ${4:c}\0A6652:\0A.popsection\0A", "={di},={rsp},i,i,i,0,{rsp},~{cc},~{memory},~{rax},~{rcx},~{dirflag},~{fpsr},~{flags}"(ptr @clear_page_orig, ptr @clear_page_rep, ptr @clear_page_erms, ptr %2, i64 %1) #17, !dbg !1441, !srcloc !1442
  %asmresult = extractvalue { ptr, i64 } %3, 0, !dbg !1441
  %asmresult1 = extractvalue { ptr, i64 } %3, 1, !dbg !1441
  store ptr %asmresult, ptr %page.addr, align 8, !dbg !1441
  call void @llvm.write_register.i64(metadata !483, i64 %asmresult1), !dbg !1441
  ret void, !dbg !1443
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @sme_early_init() #12 section ".init.text" align 16 !dbg !1444 {
entry:
  ret void, !dbg !1445
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kasan_early_init() #3 align 16 !dbg !1446 {
entry:
  ret void, !dbg !1448
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__native_tlb_flush_global(i64 noundef %cr4) #3 align 16 !dbg !1449 {
entry:
  %cr4.addr = alloca i64, align 8
  store i64 %cr4, ptr %cr4.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cr4.addr, metadata !1453, metadata !DIExpression()), !dbg !1454
  %0 = load i64, ptr %cr4.addr, align 8, !dbg !1455
  %xor = xor i64 %0, 128, !dbg !1456
  call void @native_write_cr4(i64 noundef %xor) #18, !dbg !1457
  %1 = load i64, ptr %cr4.addr, align 8, !dbg !1458
  call void @native_write_cr4(i64 noundef %1) #18, !dbg !1459
  ret void, !dbg !1460
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1461 dso_local void @idt_setup_early_handler() #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tdx_early_init() #3 align 16 !dbg !1463 {
entry:
  ret void, !dbg !1464
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @copy_bootdata(ptr noundef %real_mode_data) #4 section ".init.text" align 16 !dbg !1465 {
entry:
  %real_mode_data.addr = alloca ptr, align 8
  %command_line = alloca ptr, align 8
  %cmd_line_ptr = alloca i64, align 8
  store ptr %real_mode_data, ptr %real_mode_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %real_mode_data.addr, metadata !1467, metadata !DIExpression()), !dbg !1470
  call void @llvm.lifetime.start.p0(i64 8, ptr %command_line) #17, !dbg !1471
  call void @llvm.dbg.declare(metadata ptr %command_line, metadata !1468, metadata !DIExpression()), !dbg !1472
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd_line_ptr) #17, !dbg !1473
  call void @llvm.dbg.declare(metadata ptr %cmd_line_ptr, metadata !1469, metadata !DIExpression()), !dbg !1474
  %0 = load ptr, ptr %real_mode_data.addr, align 8, !dbg !1475
  call void @sme_map_bootdata(ptr noundef %0) #19, !dbg !1476
  %1 = load ptr, ptr %real_mode_data.addr, align 8, !dbg !1477
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 @boot_params, ptr align 1 %1, i64 4096, i1 false), !dbg !1478
  call void @sanitize_boot_params(ptr noundef @boot_params) #18, !dbg !1479
  %call = call i64 @get_cmd_line_ptr() #18, !dbg !1480
  store i64 %call, ptr %cmd_line_ptr, align 8, !dbg !1481
  %2 = load i64, ptr %cmd_line_ptr, align 8, !dbg !1482
  %tobool = icmp ne i64 %2, 0, !dbg !1482
  br i1 %tobool, label %if.then, label %if.end, !dbg !1484

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %cmd_line_ptr, align 8, !dbg !1485
  %4 = load i64, ptr @page_offset_base, align 8, !dbg !1485
  %add = add i64 %3, %4, !dbg !1485
  %5 = inttoptr i64 %add to ptr, !dbg !1485
  store ptr %5, ptr %command_line, align 8, !dbg !1487
  %6 = load ptr, ptr %command_line, align 8, !dbg !1488
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 @boot_command_line, ptr align 1 %6, i64 2048, i1 false), !dbg !1489
  br label %if.end, !dbg !1490

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %real_mode_data.addr, align 8, !dbg !1491
  call void @sme_unmap_bootdata(ptr noundef %7) #19, !dbg !1492
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd_line_ptr) #17, !dbg !1493
  call void @llvm.lifetime.end.p0(i64 8, ptr %command_line) #17, !dbg !1493
  ret void, !dbg !1493
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1494 dso_local void @load_ucode_bsp() #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: cold fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid optsize sspstrong
define hidden void @x86_64_start_reservations(ptr noundef %real_mode_data) #8 section ".init.text" align 16 !dbg !1496 {
entry:
  %real_mode_data.addr = alloca ptr, align 8
  store ptr %real_mode_data, ptr %real_mode_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %real_mode_data.addr, metadata !1498, metadata !DIExpression()), !dbg !1499
  %0 = load i16, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 9), align 1, !dbg !1500
  %tobool = icmp ne i16 %0, 0, !dbg !1502
  br i1 %tobool, label %if.end, label %if.then, !dbg !1503

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %real_mode_data.addr, align 8, !dbg !1504
  %2 = ptrtoint ptr %1 to i64, !dbg !1504
  %3 = load i64, ptr @page_offset_base, align 8, !dbg !1504
  %add = add i64 %2, %3, !dbg !1504
  %4 = inttoptr i64 %add to ptr, !dbg !1504
  call void @copy_bootdata(ptr noundef %4) #19, !dbg !1505
  br label %if.end, !dbg !1505

if.end:                                           ; preds = %if.then, %entry
  call void @x86_early_init_platform_quirks() #18, !dbg !1506
  %5 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 30), align 1, !dbg !1507
  switch i32 %5, label %sw.default [
    i32 3, label %sw.bb
  ], !dbg !1508

sw.bb:                                            ; preds = %if.end
  call void @x86_intel_mid_early_setup() #18, !dbg !1509
  br label %sw.epilog, !dbg !1511

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1512

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  call void @start_kernel() #21, !dbg !1513
  unreachable, !dbg !1513
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1514 dso_local void @x86_early_init_platform_quirks() #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @x86_intel_mid_early_setup() #3 align 16 !dbg !1516 {
entry:
  ret void, !dbg !1518
}

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !1519 dso_local void @start_kernel() #14 section ".init.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @early_setup_idt() #0 align 16 !dbg !1521 {
entry:
  store i64 ptrtoint (ptr @bringup_idt_table to i64), ptr getelementptr inbounds (%struct.desc_ptr, ptr @bringup_idt_descr, i32 0, i32 1), align 1, !dbg !1522
  call void @native_load_idt(ptr noundef @bringup_idt_descr) #18, !dbg !1523
  ret void, !dbg !1524
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_load_idt(ptr noundef %dtr) #5 align 16 !dbg !1525 {
entry:
  %dtr.addr = alloca ptr, align 8
  store ptr %dtr, ptr %dtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dtr.addr, metadata !1531, metadata !DIExpression()), !dbg !1532
  %0 = load ptr, ptr %dtr.addr, align 8, !dbg !1533
  call void asm sideeffect "lidt $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.desc_ptr) %0) #17, !dbg !1534, !srcloc !1535
  ret void, !dbg !1536
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @startup_64_setup_env(i64 noundef %physbase) #0 section ".head.text" align 16 !dbg !1537 {
entry:
  %physbase.addr = alloca i64, align 8
  store i64 %physbase, ptr %physbase.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %physbase.addr, metadata !1539, metadata !DIExpression()), !dbg !1540
  %0 = load i64, ptr %physbase.addr, align 8, !dbg !1541
  %call = call ptr @fixup_pointer(ptr noundef @startup_gdt, i64 noundef %0) #18, !dbg !1542
  %1 = ptrtoint ptr %call to i64, !dbg !1543
  store i64 %1, ptr getelementptr inbounds (%struct.desc_ptr, ptr @startup_gdt_descr, i32 0, i32 1), align 1, !dbg !1544
  call void @native_load_gdt(ptr noundef @startup_gdt_descr) #18, !dbg !1545
  call void asm sideeffect "movl %eax, %ds\0Amovl %eax, %ss\0Amovl %eax, %es\0A", "{ax},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 24) #17, !dbg !1546, !srcloc !1547
  %2 = load i64, ptr %physbase.addr, align 8, !dbg !1548
  call void @startup_64_load_idt(i64 noundef %2) #18, !dbg !1549
  ret void, !dbg !1550
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_load_gdt(ptr noundef %dtr) #3 align 16 !dbg !1551 {
entry:
  %dtr.addr = alloca ptr, align 8
  store ptr %dtr, ptr %dtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dtr.addr, metadata !1553, metadata !DIExpression()), !dbg !1554
  %0 = load ptr, ptr %dtr.addr, align 8, !dbg !1555
  call void asm sideeffect "lgdt $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.desc_ptr) %0) #17, !dbg !1556, !srcloc !1557
  ret void, !dbg !1558
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @startup_64_load_idt(i64 noundef %physbase) #0 align 16 !dbg !1559 {
entry:
  %physbase.addr = alloca i64, align 8
  %desc = alloca ptr, align 8
  %idt = alloca ptr, align 8
  store i64 %physbase, ptr %physbase.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %physbase.addr, metadata !1561, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #17, !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !1562, metadata !DIExpression()), !dbg !1568
  %0 = load i64, ptr %physbase.addr, align 8, !dbg !1569
  %call = call ptr @fixup_pointer(ptr noundef @bringup_idt_descr, i64 noundef %0) #18, !dbg !1570
  store ptr %call, ptr %desc, align 8, !dbg !1568
  call void @llvm.lifetime.start.p0(i64 8, ptr %idt) #17, !dbg !1571
  call void @llvm.dbg.declare(metadata ptr %idt, metadata !1564, metadata !DIExpression()), !dbg !1572
  %1 = load i64, ptr %physbase.addr, align 8, !dbg !1573
  %call1 = call ptr @fixup_pointer(ptr noundef @bringup_idt_table, i64 noundef %1) #18, !dbg !1574
  store ptr %call1, ptr %idt, align 8, !dbg !1572
  %2 = load ptr, ptr %idt, align 8, !dbg !1575
  %3 = ptrtoint ptr %2 to i64, !dbg !1576
  %4 = load ptr, ptr %desc, align 8, !dbg !1577
  %address = getelementptr inbounds %struct.desc_ptr, ptr %4, i32 0, i32 1, !dbg !1578
  store i64 %3, ptr %address, align 1, !dbg !1579
  %5 = load ptr, ptr %desc, align 8, !dbg !1580
  call void @native_load_idt(ptr noundef %5) #18, !dbg !1581
  call void @llvm.lifetime.end.p0(i64 8, ptr %idt) #17, !dbg !1582
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #17, !dbg !1582
  ret void, !dbg !1582
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_cr4() #3 align 16 !dbg !1583 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !1586
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1585, metadata !DIExpression()), !dbg !1587
  %0 = call i64 asm sideeffect "mov %cr4,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #17, !dbg !1588, !srcloc !1589
  store i64 %0, ptr %val, align 8, !dbg !1588
  %1 = load i64, ptr %val, align 8, !dbg !1590
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !1591
  ret i64 %1, !dbg !1592
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @fixup_int(ptr noundef %ptr, i64 noundef %physaddr) #0 section ".head.text" align 16 !dbg !1593 {
entry:
  %ptr.addr = alloca ptr, align 8
  %physaddr.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1597, metadata !DIExpression()), !dbg !1599
  store i64 %physaddr, ptr %physaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %physaddr.addr, metadata !1598, metadata !DIExpression()), !dbg !1600
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !1601
  %1 = load i64, ptr %physaddr.addr, align 8, !dbg !1602
  %call = call ptr @fixup_pointer(ptr noundef %0, i64 noundef %1) #18, !dbg !1603
  ret ptr %call, !dbg !1604
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sme_encrypt_kernel(ptr noundef %bp) #3 align 16 !dbg !1605 {
entry:
  %bp.addr = alloca ptr, align 8
  store ptr %bp, ptr %bp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !1607, metadata !DIExpression()), !dbg !1608
  ret void, !dbg !1609
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @early_snp_set_memory_shared(i64 noundef %vaddr, i64 noundef %paddr, i64 noundef %npages) #12 section ".init.text" align 16 !dbg !1610 {
entry:
  %vaddr.addr = alloca i64, align 8
  %paddr.addr = alloca i64, align 8
  %npages.addr = alloca i64, align 8
  store i64 %vaddr, ptr %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaddr.addr, metadata !1615, metadata !DIExpression()), !dbg !1618
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !1616, metadata !DIExpression()), !dbg !1619
  store i64 %npages, ptr %npages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %npages.addr, metadata !1617, metadata !DIExpression()), !dbg !1620
  ret void, !dbg !1621
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__read_cr3() #3 align 16 !dbg !1622 {
entry:
  %call = call i64 @__native_read_cr3() #18, !dbg !1623
  ret i64 %call, !dbg !1624
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__native_read_cr3() #3 align 16 !dbg !1625 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1627, metadata !DIExpression()), !dbg !1629
  %0 = call i64 asm sideeffect "mov %cr3,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #17, !dbg !1630, !srcloc !1631
  store i64 %0, ptr %val, align 8, !dbg !1630
  %1 = load i64, ptr %val, align 8, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !1633
  ret i64 %1, !dbg !1634
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @write_cr3(i64 noundef %x) #3 align 16 !dbg !1635 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1637, metadata !DIExpression()), !dbg !1638
  %0 = load i64, ptr %x.addr, align 8, !dbg !1639
  call void @native_write_cr3(i64 noundef %0) #18, !dbg !1640
  ret void, !dbg !1641
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_cr3(i64 noundef %val) #3 align 16 !dbg !1642 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1644, metadata !DIExpression()), !dbg !1645
  %0 = load i64, ptr %val.addr, align 8, !dbg !1646
  call void asm sideeffect "mov $0,%cr3", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %0) #17, !dbg !1647, !srcloc !1648
  ret void, !dbg !1649
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__read_cr4() #3 align 16 !dbg !1650 {
entry:
  %call = call i64 @native_read_cr4() #18, !dbg !1651
  ret i64 %call, !dbg !1652
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !1653 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1662, metadata !DIExpression()), !dbg !1664
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1663, metadata !DIExpression()), !dbg !1665
  ret void, !dbg !1666
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #15

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clear_page_orig(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clear_page_rep(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clear_page_erms(ptr noundef) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1667 dso_local void @native_write_cr4(i64 noundef) #7

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @sme_map_bootdata(ptr noundef %real_mode_data) #12 section ".init.text" align 16 !dbg !1668 {
entry:
  %real_mode_data.addr = alloca ptr, align 8
  store ptr %real_mode_data, ptr %real_mode_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %real_mode_data.addr, metadata !1670, metadata !DIExpression()), !dbg !1671
  ret void, !dbg !1672
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sanitize_boot_params(ptr noundef %boot_params) #0 align 16 !dbg !104 {
entry:
  %boot_params.addr = alloca ptr, align 8
  %bp_base = alloca ptr, align 8
  %save_base = alloca ptr, align 8
  %i = alloca i32, align 4
  %to_save = alloca [20 x %struct.boot_params_to_save], align 16
  store ptr %boot_params, ptr %boot_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %boot_params.addr, metadata !442, metadata !DIExpression()), !dbg !1673
  %0 = load ptr, ptr %boot_params.addr, align 8, !dbg !1674
  %sentinel = getelementptr inbounds %struct.boot_params, ptr %0, i32 0, i32 26, !dbg !1675
  %1 = load i8, ptr %sentinel, align 1, !dbg !1675
  %tobool = icmp ne i8 %1, 0, !dbg !1674
  br i1 %tobool, label %if.then, label %if.end, !dbg !1676

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %bp_base) #17, !dbg !1677
  call void @llvm.dbg.declare(metadata ptr %bp_base, metadata !443, metadata !DIExpression()), !dbg !1678
  %2 = load ptr, ptr %boot_params.addr, align 8, !dbg !1679
  store ptr %2, ptr %bp_base, align 8, !dbg !1678
  call void @llvm.lifetime.start.p0(i64 8, ptr %save_base) #17, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %save_base, metadata !446, metadata !DIExpression()), !dbg !1681
  store ptr @sanitize_boot_params.scratch, ptr %save_base, align 8, !dbg !1681
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !1682
  call void @llvm.dbg.declare(metadata ptr %i, metadata !447, metadata !DIExpression()), !dbg !1683
  call void @llvm.lifetime.start.p0(i64 160, ptr %to_save) #17, !dbg !1684
  call void @llvm.dbg.declare(metadata ptr %to_save, metadata !448, metadata !DIExpression()), !dbg !1685
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %to_save, ptr align 16 @__const.sanitize_boot_params.to_save, i64 160, i1 false), !dbg !1685
  call void @llvm.memset.p0.i64(ptr align 1 @sanitize_boot_params.scratch, i8 0, i64 4096, i1 false), !dbg !1686
  store i32 0, ptr %i, align 4, !dbg !1687
  br label %for.cond, !dbg !1689

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4, !dbg !1690
  %conv = sext i32 %3 to i64, !dbg !1690
  %cmp = icmp ult i64 %conv, 20, !dbg !1692
  br i1 %cmp, label %for.body, label %for.end, !dbg !1693

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %save_base, align 8, !dbg !1694
  %5 = load i32, ptr %i, align 4, !dbg !1696
  %idxprom = sext i32 %5 to i64, !dbg !1697
  %arrayidx = getelementptr [20 x %struct.boot_params_to_save], ptr %to_save, i64 0, i64 %idxprom, !dbg !1697
  %start = getelementptr inbounds %struct.boot_params_to_save, ptr %arrayidx, i32 0, i32 0, !dbg !1698
  %6 = load i32, ptr %start, align 8, !dbg !1698
  %idx.ext = zext i32 %6 to i64, !dbg !1699
  %add.ptr = getelementptr i8, ptr %4, i64 %idx.ext, !dbg !1699
  %7 = load ptr, ptr %bp_base, align 8, !dbg !1700
  %8 = load i32, ptr %i, align 4, !dbg !1701
  %idxprom2 = sext i32 %8 to i64, !dbg !1702
  %arrayidx3 = getelementptr [20 x %struct.boot_params_to_save], ptr %to_save, i64 0, i64 %idxprom2, !dbg !1702
  %start4 = getelementptr inbounds %struct.boot_params_to_save, ptr %arrayidx3, i32 0, i32 0, !dbg !1703
  %9 = load i32, ptr %start4, align 8, !dbg !1703
  %idx.ext5 = zext i32 %9 to i64, !dbg !1704
  %add.ptr6 = getelementptr i8, ptr %7, i64 %idx.ext5, !dbg !1704
  %10 = load i32, ptr %i, align 4, !dbg !1705
  %idxprom7 = sext i32 %10 to i64, !dbg !1706
  %arrayidx8 = getelementptr [20 x %struct.boot_params_to_save], ptr %to_save, i64 0, i64 %idxprom7, !dbg !1706
  %len = getelementptr inbounds %struct.boot_params_to_save, ptr %arrayidx8, i32 0, i32 1, !dbg !1707
  %11 = load i32, ptr %len, align 4, !dbg !1707
  %conv9 = zext i32 %11 to i64, !dbg !1706
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr6, i64 %conv9, i1 false), !dbg !1708
  br label %for.inc, !dbg !1709

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !1710
  %inc = add i32 %12, 1, !dbg !1710
  store i32 %inc, ptr %i, align 4, !dbg !1710
  br label %for.cond, !dbg !1711, !llvm.loop !1712

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %boot_params.addr, align 8, !dbg !1714
  %14 = load ptr, ptr %save_base, align 8, !dbg !1715
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %14, i64 4096, i1 false), !dbg !1716
  call void @llvm.lifetime.end.p0(i64 160, ptr %to_save) #17, !dbg !1717
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !1717
  call void @llvm.lifetime.end.p0(i64 8, ptr %save_base) #17, !dbg !1717
  call void @llvm.lifetime.end.p0(i64 8, ptr %bp_base) #17, !dbg !1717
  br label %if.end, !dbg !1718

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !1719
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_cmd_line_ptr() #0 align 16 !dbg !1720 {
entry:
  %cmd_line_ptr = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd_line_ptr) #17, !dbg !1723
  call void @llvm.dbg.declare(metadata ptr %cmd_line_ptr, metadata !1722, metadata !DIExpression()), !dbg !1724
  %0 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 23), align 1, !dbg !1725
  %conv = zext i32 %0 to i64, !dbg !1726
  store i64 %conv, ptr %cmd_line_ptr, align 8, !dbg !1724
  %1 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 13), align 1, !dbg !1727
  %conv1 = zext i32 %1 to i64, !dbg !1728
  %shl = shl i64 %conv1, 32, !dbg !1729
  %2 = load i64, ptr %cmd_line_ptr, align 8, !dbg !1730
  %or = or i64 %2, %shl, !dbg !1730
  store i64 %or, ptr %cmd_line_ptr, align 8, !dbg !1730
  %3 = load i64, ptr %cmd_line_ptr, align 8, !dbg !1731
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd_line_ptr) #17, !dbg !1732
  ret i64 %3, !dbg !1733
}

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @sme_unmap_bootdata(ptr noundef %real_mode_data) #12 section ".init.text" align 16 !dbg !1734 {
entry:
  %real_mode_data.addr = alloca ptr, align 8
  store ptr %real_mode_data, ptr %real_mode_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %real_mode_data.addr, metadata !1736, metadata !DIExpression()), !dbg !1737
  ret void, !dbg !1738
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone noreturn nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: !((((0xffffffffff000000UL) - 1) & (~(((1UL) << pgdir_shift) - 1))) == (((0xffffffff80000000UL) + ((((0x1000000)) + ((__typeof__((0x1000000)))((0x200000)) - 1)) & ~((__typeof__((0x1000000)))((0x200000)) - 1))) & (~(((1UL) << pgdir_shift) - 1))))" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #16 = { nocallback nounwind }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone noreturn }
attributes #21 = { cold noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!483}
!llvm.module.flags = !{!484, !485, !486, !487, !488, !489, !490, !491}
!llvm.ident = !{!492}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "early_pmd_flags", scope: !2, file: !3, line: 51, type: !39, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.head64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/head64\22 -D KBUILD_BASENAME=\22head64\22 -D KBUILD_MODNAME=\22head64\22 -D __KBUILD_MODNAME=kmod_head64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/head64.ll arch/x86/kernel/head64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !48, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/head64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fbf08e78866675fd38568e9a1703511a")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "x86_hardware_subarch", file: !12, line: 274, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!13 = !{!14, !15, !16, !17, !18, !19}
!14 = !DIEnumerator(name: "X86_SUBARCH_PC", value: 0)
!15 = !DIEnumerator(name: "X86_SUBARCH_LGUEST", value: 1)
!16 = !DIEnumerator(name: "X86_SUBARCH_XEN", value: 2)
!17 = !DIEnumerator(name: "X86_SUBARCH_INTEL_MID", value: 3)
!18 = !DIEnumerator(name: "X86_SUBARCH_CE4100", value: 4)
!19 = !DIEnumerator(name: "X86_NR_SUBARCHS", value: 5)
!20 = !{!21, !22, !23, !25, !26, !27, !29, !30, !37, !28, !38, !40, !41, !42, !32, !43, !45}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !24, line: 14, baseType: !22)
!24 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !24, line: 18, baseType: !22)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !24, line: 16, baseType: !22)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !24, line: 17, baseType: !22)
!29 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !31, line: 159, baseType: !32)
!31 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !33, line: 23, baseType: !34)
!33 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !35, line: 31, baseType: !36)
!35 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!36 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !24, line: 15, baseType: !22)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !33, line: 19, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !35, line: 24, baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !{!0, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !74, !76, !78, !102, !457, !463, !481}
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "pgdir_shift", scope: !2, file: !3, line: 55, type: !7, isLocal: false, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pgdir_shift277", scope: !2, file: !3, line: 56, type: !21, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "ptrs_per_p4d", scope: !2, file: !3, line: 57, type: !7, isLocal: false, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ptrs_per_p4d278", scope: !2, file: !3, line: 58, type: !21, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "page_offset_base", scope: !2, file: !3, line: 62, type: !22, isLocal: false, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_page_offset_base279", scope: !2, file: !3, line: 63, type: !21, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "vmalloc_base", scope: !2, file: !3, line: 64, type: !22, isLocal: false, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vmalloc_base280", scope: !2, file: !3, line: 65, type: !21, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "vmemmap_base", scope: !2, file: !3, line: 66, type: !22, isLocal: false, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vmemmap_base281", scope: !2, file: !3, line: 67, type: !21, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !3, line: 485, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 200, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 25)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "next_early_pgt", scope: !2, file: !3, line: 50, type: !7, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "__pgtable_l5_enabled", scope: !2, file: !3, line: 54, type: !7, isLocal: false, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "bringup_idt_table", scope: !2, file: !3, line: 570, type: !80, isLocal: true, isDefinition: true, align: 32768)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 4096, elements: !100)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gate_desc", file: !82, line: 95, baseType: !83)
!82 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gate_struct", file: !82, line: 84, size: 128, elements: !84)
!84 = !{!85, !86, !87, !95, !96, !99}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "offset_low", scope: !83, file: !82, line: 85, baseType: !45, size: 16)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !83, file: !82, line: 86, baseType: !45, size: 16, offset: 16)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !83, file: !82, line: 87, baseType: !88, size: 16, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idt_bits", file: !82, line: 69, size: 16, elements: !89)
!89 = !{!90, !91, !92, !93, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ist", scope: !88, file: !82, line: 70, baseType: !45, size: 3, flags: DIFlagBitField, extraData: i64 0)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !88, file: !82, line: 71, baseType: !45, size: 5, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !82, line: 72, baseType: !45, size: 5, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !88, file: !82, line: 73, baseType: !45, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !88, file: !82, line: 74, baseType: !45, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "offset_middle", scope: !83, file: !82, line: 88, baseType: !45, size: 16, offset: 48)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "offset_high", scope: !83, file: !82, line: 90, baseType: !97, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !33, line: 21, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !35, line: 27, baseType: !7)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !83, file: !82, line: 91, baseType: !97, size: 32, offset: 96)
!100 = !{!101}
!101 = !DISubrange(count: 32)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "scratch", scope: !104, file: !105, line: 52, type: !109, isLocal: true, isDefinition: true)
!104 = distinct !DISubprogram(name: "sanitize_boot_params", scope: !105, file: !105, line: 35, type: !106, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !441)
!105 = !DIFile(filename: "./arch/x86/include/asm/bootparam_utils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e9aa2b9a98721d89505e57893f0cd6")
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_params", file: !12, line: 186, size: 32768, elements: !110)
!110 = !{!111, !156, !169, !173, !174, !182, !183, !187, !191, !192, !200, !207, !208, !209, !210, !214, !215, !223, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !247, !289, !293, !295, !302, !306, !437}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "screen_info", scope: !109, file: !12, line: 187, baseType: !112, size: 512)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "screen_info", file: !113, line: 11, size: 512, elements: !114)
!113 = !DIFile(filename: "./include/uapi/linux/screen_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "395c08eb846a258de3277732fcbc2819")
!114 = !{!115, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "orig_x", scope: !112, file: !113, line: 12, baseType: !116, size: 8)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !35, line: 21, baseType: !117)
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "orig_y", scope: !112, file: !113, line: 13, baseType: !116, size: 8, offset: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ext_mem_k", scope: !112, file: !113, line: 14, baseType: !46, size: 16, offset: 16)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_page", scope: !112, file: !113, line: 15, baseType: !46, size: 16, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_mode", scope: !112, file: !113, line: 16, baseType: !116, size: 8, offset: 48)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_cols", scope: !112, file: !113, line: 17, baseType: !116, size: 8, offset: 56)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !113, line: 18, baseType: !116, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !112, file: !113, line: 19, baseType: !116, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_ega_bx", scope: !112, file: !113, line: 20, baseType: !46, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !112, file: !113, line: 21, baseType: !46, size: 16, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_lines", scope: !112, file: !113, line: 22, baseType: !116, size: 8, offset: 112)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_isVGA", scope: !112, file: !113, line: 23, baseType: !116, size: 8, offset: 120)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "orig_video_points", scope: !112, file: !113, line: 24, baseType: !46, size: 16, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_width", scope: !112, file: !113, line: 27, baseType: !46, size: 16, offset: 144)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_height", scope: !112, file: !113, line: 28, baseType: !46, size: 16, offset: 160)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_depth", scope: !112, file: !113, line: 29, baseType: !46, size: 16, offset: 176)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_base", scope: !112, file: !113, line: 30, baseType: !98, size: 32, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_size", scope: !112, file: !113, line: 31, baseType: !98, size: 32, offset: 224)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cl_magic", scope: !112, file: !113, line: 32, baseType: !46, size: 16, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cl_offset", scope: !112, file: !113, line: 32, baseType: !46, size: 16, offset: 272)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_linelength", scope: !112, file: !113, line: 33, baseType: !46, size: 16, offset: 288)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "red_size", scope: !112, file: !113, line: 34, baseType: !116, size: 8, offset: 304)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "red_pos", scope: !112, file: !113, line: 35, baseType: !116, size: 8, offset: 312)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "green_size", scope: !112, file: !113, line: 36, baseType: !116, size: 8, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "green_pos", scope: !112, file: !113, line: 37, baseType: !116, size: 8, offset: 328)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "blue_size", scope: !112, file: !113, line: 38, baseType: !116, size: 8, offset: 336)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "blue_pos", scope: !112, file: !113, line: 39, baseType: !116, size: 8, offset: 344)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_size", scope: !112, file: !113, line: 40, baseType: !116, size: 8, offset: 352)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd_pos", scope: !112, file: !113, line: 41, baseType: !116, size: 8, offset: 360)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_seg", scope: !112, file: !113, line: 42, baseType: !46, size: 16, offset: 368)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "vesapm_off", scope: !112, file: !113, line: 43, baseType: !46, size: 16, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !112, file: !113, line: 44, baseType: !46, size: 16, offset: 400)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "vesa_attributes", scope: !112, file: !113, line: 45, baseType: !46, size: 16, offset: 416)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !112, file: !113, line: 46, baseType: !98, size: 32, offset: 432)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ext_lfb_base", scope: !112, file: !113, line: 47, baseType: !98, size: 32, offset: 464)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved", scope: !112, file: !113, line: 48, baseType: !153, size: 16, offset: 496)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 2)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "apm_bios_info", scope: !109, file: !12, line: 188, baseType: !157, size: 160, offset: 512)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apm_bios_info", file: !158, line: 25, size: 160, elements: !159)
!158 = !DIFile(filename: "./include/uapi/linux/apm_bios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a2faf7b1bd7c92e79370dc4887ba91d3")
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !157, file: !158, line: 26, baseType: !46, size: 16)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "cseg", scope: !157, file: !158, line: 27, baseType: !46, size: 16, offset: 16)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !157, file: !158, line: 28, baseType: !98, size: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16", scope: !157, file: !158, line: 29, baseType: !46, size: 16, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dseg", scope: !157, file: !158, line: 30, baseType: !46, size: 16, offset: 80)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !158, line: 31, baseType: !46, size: 16, offset: 96)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_len", scope: !157, file: !158, line: 32, baseType: !46, size: 16, offset: 112)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "cseg_16_len", scope: !157, file: !158, line: 33, baseType: !46, size: 16, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "dseg_len", scope: !157, file: !158, line: 34, baseType: !46, size: 16, offset: 144)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2", scope: !109, file: !12, line: 189, baseType: !170, size: 32, offset: 672)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 32, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 4)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tboot_addr", scope: !109, file: !12, line: 190, baseType: !34, size: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ist_info", scope: !109, file: !12, line: 191, baseType: !175, size: 128, offset: 768)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ist_info", file: !176, line: 23, size: 128, elements: !177)
!176 = !DIFile(filename: "./arch/x86/include/uapi/asm/ist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3966eee4102636d4a6a170719935cbb6")
!177 = !{!178, !179, !180, !181}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !175, file: !176, line: 24, baseType: !98, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !175, file: !176, line: 25, baseType: !98, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !175, file: !176, line: 26, baseType: !98, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "perf_level", scope: !175, file: !176, line: 27, baseType: !98, size: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_rsdp_addr", scope: !109, file: !12, line: 192, baseType: !34, size: 64, offset: 896)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_pad3", scope: !109, file: !12, line: 193, baseType: !184, size: 64, offset: 960)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "hd0_info", scope: !109, file: !12, line: 194, baseType: !188, size: 128, offset: 1024)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 128, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 16)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "hd1_info", scope: !109, file: !12, line: 195, baseType: !188, size: 128, offset: 1152)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sys_desc_table", scope: !109, file: !12, line: 196, baseType: !193, size: 128, offset: 1280)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_desc_table", file: !12, line: 110, size: 128, elements: !194)
!194 = !{!195, !196}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !193, file: !12, line: 111, baseType: !46, size: 16)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !193, file: !12, line: 112, baseType: !197, size: 112, offset: 16)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 112, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 14)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "olpc_ofw_header", scope: !109, file: !12, line: 197, baseType: !201, size: 128, offset: 1408)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "olpc_ofw_header", file: !12, line: 116, size: 128, elements: !202)
!202 = !{!203, !204, !205, !206}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_magic", scope: !201, file: !12, line: 117, baseType: !98, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ofw_version", scope: !201, file: !12, line: 118, baseType: !98, size: 32, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "cif_handler", scope: !201, file: !12, line: 119, baseType: !98, size: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "irq_desc_table", scope: !201, file: !12, line: 120, baseType: !98, size: 32, offset: 96)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_image", scope: !109, file: !12, line: 198, baseType: !98, size: 32, offset: 1536)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ramdisk_size", scope: !109, file: !12, line: 199, baseType: !98, size: 32, offset: 1568)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cmd_line_ptr", scope: !109, file: !12, line: 200, baseType: !98, size: 32, offset: 1600)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_pad4", scope: !109, file: !12, line: 201, baseType: !211, size: 896, offset: 1632)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 896, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 112)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "cc_blob_address", scope: !109, file: !12, line: 202, baseType: !98, size: 32, offset: 2528)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "edid_info", scope: !109, file: !12, line: 203, baseType: !216, size: 1024, offset: 2560)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edid_info", file: !217, line: 5, size: 1024, elements: !218)
!217 = !DIFile(filename: "./include/uapi/video/edid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a36c5e7269b764712ba1a5dc2e5eb27d")
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !216, file: !217, line: 6, baseType: !220, size: 1024)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1024, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "efi_info", scope: !109, file: !12, line: 204, baseType: !224, size: 256, offset: 3584)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_info", file: !12, line: 123, size: 256, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "efi_loader_signature", scope: !224, file: !12, line: 124, baseType: !98, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab", scope: !224, file: !12, line: 125, baseType: !98, size: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_size", scope: !224, file: !12, line: 126, baseType: !98, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memdesc_version", scope: !224, file: !12, line: 127, baseType: !98, size: 32, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap", scope: !224, file: !12, line: 128, baseType: !98, size: 32, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_size", scope: !224, file: !12, line: 129, baseType: !98, size: 32, offset: 160)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "efi_systab_hi", scope: !224, file: !12, line: 130, baseType: !98, size: 32, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "efi_memmap_hi", scope: !224, file: !12, line: 131, baseType: !98, size: 32, offset: 224)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "alt_mem_k", scope: !109, file: !12, line: 205, baseType: !98, size: 32, offset: 3840)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !109, file: !12, line: 206, baseType: !98, size: 32, offset: 3872)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "e820_entries", scope: !109, file: !12, line: 207, baseType: !116, size: 8, offset: 3904)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf_entries", scope: !109, file: !12, line: 208, baseType: !116, size: 8, offset: 3912)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buf_entries", scope: !109, file: !12, line: 209, baseType: !116, size: 8, offset: 3920)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "kbd_status", scope: !109, file: !12, line: 210, baseType: !116, size: 8, offset: 3928)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "secure_boot", scope: !109, file: !12, line: 211, baseType: !116, size: 8, offset: 3936)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_pad5", scope: !109, file: !12, line: 212, baseType: !153, size: 16, offset: 3944)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !109, file: !12, line: 224, baseType: !116, size: 8, offset: 3960)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_pad6", scope: !109, file: !12, line: 225, baseType: !244, size: 8, offset: 3968)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 8, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 1)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !109, file: !12, line: 226, baseType: !248, size: 984, offset: 3976)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_header", file: !12, line: 68, size: 984, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "setup_sects", scope: !248, file: !12, line: 69, baseType: !116, size: 8)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "root_flags", scope: !248, file: !12, line: 70, baseType: !46, size: 16, offset: 8)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "syssize", scope: !248, file: !12, line: 71, baseType: !98, size: 32, offset: 24)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ram_size", scope: !248, file: !12, line: 72, baseType: !46, size: 16, offset: 56)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "vid_mode", scope: !248, file: !12, line: 73, baseType: !46, size: 16, offset: 72)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "root_dev", scope: !248, file: !12, line: 74, baseType: !46, size: 16, offset: 88)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "boot_flag", scope: !248, file: !12, line: 75, baseType: !46, size: 16, offset: 104)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !248, file: !12, line: 76, baseType: !46, size: 16, offset: 120)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !248, file: !12, line: 77, baseType: !98, size: 32, offset: 136)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !248, file: !12, line: 78, baseType: !46, size: 16, offset: 168)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "realmode_swtch", scope: !248, file: !12, line: 79, baseType: !98, size: 32, offset: 184)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "start_sys_seg", scope: !248, file: !12, line: 80, baseType: !46, size: 16, offset: 216)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_version", scope: !248, file: !12, line: 81, baseType: !46, size: 16, offset: 232)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "type_of_loader", scope: !248, file: !12, line: 82, baseType: !116, size: 8, offset: 248)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "loadflags", scope: !248, file: !12, line: 83, baseType: !116, size: 8, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "setup_move_size", scope: !248, file: !12, line: 84, baseType: !46, size: 16, offset: 264)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "code32_start", scope: !248, file: !12, line: 85, baseType: !98, size: 32, offset: 280)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_image", scope: !248, file: !12, line: 86, baseType: !98, size: 32, offset: 312)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ramdisk_size", scope: !248, file: !12, line: 87, baseType: !98, size: 32, offset: 344)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "bootsect_kludge", scope: !248, file: !12, line: 88, baseType: !98, size: 32, offset: 376)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "heap_end_ptr", scope: !248, file: !12, line: 89, baseType: !46, size: 16, offset: 408)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_ver", scope: !248, file: !12, line: 90, baseType: !116, size: 8, offset: 424)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ext_loader_type", scope: !248, file: !12, line: 91, baseType: !116, size: 8, offset: 432)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_line_ptr", scope: !248, file: !12, line: 92, baseType: !98, size: 32, offset: 440)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "initrd_addr_max", scope: !248, file: !12, line: 93, baseType: !98, size: 32, offset: 472)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_alignment", scope: !248, file: !12, line: 94, baseType: !98, size: 32, offset: 504)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "relocatable_kernel", scope: !248, file: !12, line: 95, baseType: !116, size: 8, offset: 536)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "min_alignment", scope: !248, file: !12, line: 96, baseType: !116, size: 8, offset: 544)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "xloadflags", scope: !248, file: !12, line: 97, baseType: !46, size: 16, offset: 552)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_size", scope: !248, file: !12, line: 98, baseType: !98, size: 32, offset: 568)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch", scope: !248, file: !12, line: 99, baseType: !98, size: 32, offset: 600)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_subarch_data", scope: !248, file: !12, line: 100, baseType: !34, size: 64, offset: 632)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "payload_offset", scope: !248, file: !12, line: 101, baseType: !98, size: 32, offset: 696)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "payload_length", scope: !248, file: !12, line: 102, baseType: !98, size: 32, offset: 728)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "setup_data", scope: !248, file: !12, line: 103, baseType: !34, size: 64, offset: 760)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pref_address", scope: !248, file: !12, line: 104, baseType: !34, size: 64, offset: 824)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "init_size", scope: !248, file: !12, line: 105, baseType: !98, size: 32, offset: 888)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "handover_offset", scope: !248, file: !12, line: 106, baseType: !98, size: 32, offset: 920)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_info_offset", scope: !248, file: !12, line: 107, baseType: !98, size: 32, offset: 952)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_pad7", scope: !109, file: !12, line: 227, baseType: !290, size: 288, offset: 4960)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 288, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 36)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "edd_mbr_sig_buffer", scope: !109, file: !12, line: 228, baseType: !294, size: 512, offset: 5248)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 512, elements: !189)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "e820_table", scope: !109, file: !12, line: 229, baseType: !296, size: 20480, offset: 5760)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 20480, elements: !221)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_e820_entry", file: !12, line: 143, size: 160, elements: !298)
!298 = !{!299, !300, !301}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !297, file: !12, line: 144, baseType: !34, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !297, file: !12, line: 145, baseType: !34, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !297, file: !12, line: 146, baseType: !98, size: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_pad8", scope: !109, file: !12, line: 230, baseType: !303, size: 384, offset: 26240)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 384, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 48)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "eddbuf", scope: !109, file: !12, line: 231, baseType: !307, size: 3936, offset: 26624)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 3936, elements: !435)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_info", file: !309, line: 173, size: 656, elements: !310)
!309 = !DIFile(filename: "./include/uapi/linux/edd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6546916b3caeeabef2983c5e06678df")
!310 = !{!311, !312, !313, !314, !315, !316, !317}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !308, file: !309, line: 174, baseType: !116, size: 8)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !308, file: !309, line: 175, baseType: !116, size: 8, offset: 8)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "interface_support", scope: !308, file: !309, line: 176, baseType: !46, size: 16, offset: 16)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_cylinder", scope: !308, file: !309, line: 177, baseType: !46, size: 16, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_head", scope: !308, file: !309, line: 178, baseType: !116, size: 8, offset: 48)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_sectors_per_track", scope: !308, file: !309, line: 179, baseType: !116, size: 8, offset: 56)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !308, file: !309, line: 180, baseType: !318, size: 592, offset: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edd_device_params", file: !309, line: 72, size: 592, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !367, !433, !434}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !318, file: !309, line: 73, baseType: !46, size: 16)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !318, file: !309, line: 74, baseType: !46, size: 16, offset: 16)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_cylinders", scope: !318, file: !309, line: 75, baseType: !98, size: 32, offset: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "num_default_heads", scope: !318, file: !309, line: 76, baseType: !98, size: 32, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sectors_per_track", scope: !318, file: !309, line: 77, baseType: !98, size: 32, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_sectors", scope: !318, file: !309, line: 78, baseType: !34, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_sector", scope: !318, file: !309, line: 79, baseType: !46, size: 16, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "dpte_ptr", scope: !318, file: !309, line: 80, baseType: !98, size: 32, offset: 208)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !318, file: !309, line: 81, baseType: !46, size: 16, offset: 240)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "device_path_info_length", scope: !318, file: !309, line: 82, baseType: !116, size: 8, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !318, file: !309, line: 83, baseType: !116, size: 8, offset: 264)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !318, file: !309, line: 84, baseType: !46, size: 16, offset: 272)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "host_bus_type", scope: !318, file: !309, line: 85, baseType: !170, size: 32, offset: 288)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "interface_type", scope: !318, file: !309, line: 86, baseType: !184, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "interface_path", scope: !318, file: !309, line: 113, baseType: !335, size: 64, offset: 384)
!335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !309, line: 87, size: 64, elements: !336)
!336 = !{!337, !343, !351, !355, !359, !363}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !335, file: !309, line: 92, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !309, line: 88, size: 64, elements: !339)
!339 = !{!340, !341, !342}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !338, file: !309, line: 89, baseType: !46, size: 16)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !338, file: !309, line: 90, baseType: !46, size: 16, offset: 16)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !338, file: !309, line: 91, baseType: !98, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !335, file: !309, line: 99, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !309, line: 93, size: 64, elements: !345)
!345 = !{!346, !347, !348, !349, !350}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !344, file: !309, line: 94, baseType: !116, size: 8)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !344, file: !309, line: 95, baseType: !116, size: 8, offset: 8)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !344, file: !309, line: 96, baseType: !116, size: 8, offset: 16)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !344, file: !309, line: 97, baseType: !116, size: 8, offset: 24)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !344, file: !309, line: 98, baseType: !98, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ibnd", scope: !335, file: !309, line: 103, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !309, line: 101, size: 64, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !352, file: !309, line: 102, baseType: !34, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "xprs", scope: !335, file: !309, line: 106, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !309, line: 104, size: 64, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !356, file: !309, line: 105, baseType: !34, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "htpt", scope: !335, file: !309, line: 109, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !309, line: 107, size: 64, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !360, file: !309, line: 108, baseType: !34, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !335, file: !309, line: 112, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !309, line: 110, size: 64, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !364, file: !309, line: 111, baseType: !34, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "device_path", scope: !318, file: !309, line: 168, baseType: !368, size: 128, offset: 448)
!368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !309, line: 114, size: 128, elements: !369)
!369 = !{!370, !378, !387, !394, !399, !404, !409, !414, !420, !428}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ata", scope: !368, file: !309, line: 121, baseType: !371, size: 128)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !309, line: 115, size: 128, elements: !372)
!372 = !{!373, !374, !375, !376, !377}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !371, file: !309, line: 116, baseType: !116, size: 8)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !371, file: !309, line: 117, baseType: !116, size: 8, offset: 8)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !371, file: !309, line: 118, baseType: !46, size: 16, offset: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !371, file: !309, line: 119, baseType: !98, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !371, file: !309, line: 120, baseType: !34, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "atapi", scope: !368, file: !309, line: 129, baseType: !379, size: 128)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !309, line: 122, size: 128, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !379, file: !309, line: 123, baseType: !116, size: 8)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !379, file: !309, line: 124, baseType: !116, size: 8, offset: 8)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !379, file: !309, line: 125, baseType: !116, size: 8, offset: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !379, file: !309, line: 126, baseType: !116, size: 8, offset: 24)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !379, file: !309, line: 127, baseType: !98, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !379, file: !309, line: 128, baseType: !34, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "scsi", scope: !368, file: !309, line: 135, baseType: !388, size: 128)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !309, line: 130, size: 128, elements: !389)
!389 = !{!390, !391, !392, !393}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !388, file: !309, line: 131, baseType: !46, size: 16)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !388, file: !309, line: 132, baseType: !34, size: 64, offset: 16)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !388, file: !309, line: 133, baseType: !46, size: 16, offset: 80)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !388, file: !309, line: 134, baseType: !98, size: 32, offset: 96)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "usb", scope: !368, file: !309, line: 139, baseType: !395, size: 128)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !309, line: 136, size: 128, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !395, file: !309, line: 137, baseType: !34, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !395, file: !309, line: 138, baseType: !34, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i1394", scope: !368, file: !309, line: 143, baseType: !400, size: 128)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !309, line: 140, size: 128, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "eui", scope: !400, file: !309, line: 141, baseType: !34, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !400, file: !309, line: 142, baseType: !34, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "fibre", scope: !368, file: !309, line: 147, baseType: !405, size: 128)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !309, line: 144, size: 128, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "wwid", scope: !405, file: !309, line: 145, baseType: !34, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !405, file: !309, line: 146, baseType: !34, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i2o", scope: !368, file: !309, line: 151, baseType: !410, size: 128)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !309, line: 148, size: 128, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "identity_tag", scope: !410, file: !309, line: 149, baseType: !34, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !410, file: !309, line: 150, baseType: !34, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "raid", scope: !368, file: !309, line: 156, baseType: !415, size: 128)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !309, line: 152, size: 128, elements: !416)
!416 = !{!417, !418, !419}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "array_number", scope: !415, file: !309, line: 153, baseType: !98, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !415, file: !309, line: 154, baseType: !98, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !415, file: !309, line: 155, baseType: !34, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sata", scope: !368, file: !309, line: 163, baseType: !421, size: 128)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !309, line: 157, size: 128, elements: !422)
!422 = !{!423, !424, !425, !426, !427}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !421, file: !309, line: 158, baseType: !116, size: 8)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !421, file: !309, line: 159, baseType: !116, size: 8, offset: 8)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !421, file: !309, line: 160, baseType: !46, size: 16, offset: 16)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !421, file: !309, line: 161, baseType: !98, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !421, file: !309, line: 162, baseType: !34, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "unknown", scope: !368, file: !309, line: 167, baseType: !429, size: 128)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !368, file: !309, line: 164, size: 128, elements: !430)
!430 = !{!431, !432}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !429, file: !309, line: 165, baseType: !34, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !429, file: !309, line: 166, baseType: !34, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !318, file: !309, line: 169, baseType: !116, size: 8, offset: 576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !318, file: !309, line: 170, baseType: !116, size: 8, offset: 584)
!435 = !{!436}
!436 = !DISubrange(count: 6)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_pad9", scope: !109, file: !12, line: 232, baseType: !438, size: 2208, offset: 30560)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 2208, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 276)
!441 = !{!442, !443, !446, !447, !448}
!442 = !DILocalVariable(name: "boot_params", arg: 1, scope: !104, file: !105, line: 35, type: !108)
!443 = !DILocalVariable(name: "bp_base", scope: !444, file: !105, line: 53, type: !43)
!444 = distinct !DILexicalBlock(scope: !445, file: !105, line: 51, column: 29)
!445 = distinct !DILexicalBlock(scope: !104, file: !105, line: 51, column: 6)
!446 = !DILocalVariable(name: "save_base", scope: !444, file: !105, line: 54, type: !43)
!447 = !DILocalVariable(name: "i", scope: !444, file: !105, line: 55, type: !40)
!448 = !DILocalVariable(name: "to_save", scope: !444, file: !105, line: 57, type: !449)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 1280, elements: !455)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_params_to_save", file: !105, line: 30, size: 64, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !451, file: !105, line: 31, baseType: !7, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !451, file: !105, line: 32, baseType: !7, size: 32, offset: 32)
!455 = !{!456}
!456 = !DISubrange(count: 20)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(name: "bringup_idt_descr", scope: !2, file: !3, line: 572, type: !459, isLocal: true, isDefinition: true)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_ptr", file: !82, line: 112, size: 80, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !459, file: !82, line: 113, baseType: !47, size: 16)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !459, file: !82, line: 114, baseType: !22, size: 64, offset: 16)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "startup_gdt", scope: !2, file: !3, line: 73, type: !465, isLocal: true, isDefinition: true)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 1024, elements: !189)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !82, line: 16, size: 64, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !466, file: !82, line: 17, baseType: !45, size: 16)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !466, file: !82, line: 18, baseType: !45, size: 16, offset: 16)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !466, file: !82, line: 19, baseType: !45, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !82, line: 19, baseType: !45, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !466, file: !82, line: 19, baseType: !45, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !466, file: !82, line: 19, baseType: !45, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !466, file: !82, line: 19, baseType: !45, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !466, file: !82, line: 20, baseType: !45, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !466, file: !82, line: 20, baseType: !45, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !466, file: !82, line: 20, baseType: !45, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !466, file: !82, line: 20, baseType: !45, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !466, file: !82, line: 20, baseType: !45, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !466, file: !82, line: 20, baseType: !45, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "startup_gdt_descr", scope: !2, file: !3, line: 83, type: !459, isLocal: true, isDefinition: true)
!483 = !{!"rsp"}
!484 = !{i32 7, !"Dwarf Version", i32 5}
!485 = !{i32 2, !"Debug Info Version", i32 3}
!486 = !{i32 1, !"wchar_size", i32 2}
!487 = !{i32 8, !"cf-protection-branch", i32 1}
!488 = !{i32 4, !"function_return_thunk_extern", i32 1}
!489 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!490 = !{i32 1, !"Code Model", i32 2}
!491 = !{i32 1, !"override-stack-alignment", i32 8}
!492 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!493 = distinct !DISubprogram(name: "__startup_64", scope: !3, file: !3, line: 178, type: !494, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{!22, !22, !108}
!496 = !{!497, !498, !499, !500, !501, !502, !504, !505, !506, !507, !508, !510, !513, !514, !515}
!497 = !DILocalVariable(name: "physaddr", arg: 1, scope: !493, file: !3, line: 178, type: !22)
!498 = !DILocalVariable(name: "bp", arg: 2, scope: !493, file: !3, line: 179, type: !108)
!499 = !DILocalVariable(name: "load_delta", scope: !493, file: !3, line: 181, type: !22)
!500 = !DILocalVariable(name: "p", scope: !493, file: !3, line: 181, type: !41)
!501 = !DILocalVariable(name: "pgtable_flags", scope: !493, file: !3, line: 182, type: !22)
!502 = !DILocalVariable(name: "pgd", scope: !493, file: !3, line: 183, type: !503)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!504 = !DILocalVariable(name: "p4d", scope: !493, file: !3, line: 184, type: !27)
!505 = !DILocalVariable(name: "pud", scope: !493, file: !3, line: 185, type: !37)
!506 = !DILocalVariable(name: "pmd", scope: !493, file: !3, line: 186, type: !38)
!507 = !DILocalVariable(name: "pmd_entry", scope: !493, file: !3, line: 186, type: !39)
!508 = !DILocalVariable(name: "mask_ptr", scope: !493, file: !3, line: 187, type: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!510 = !DILocalVariable(name: "la57", scope: !493, file: !3, line: 188, type: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !31, line: 35, baseType: !512)
!512 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!513 = !DILocalVariable(name: "i", scope: !493, file: !3, line: 189, type: !40)
!514 = !DILocalVariable(name: "next_pgt_ptr", scope: !493, file: !3, line: 190, type: !42)
!515 = !DILocalVariable(name: "idx", scope: !516, file: !3, line: 276, type: !40)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 275, column: 61)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 275, column: 2)
!518 = distinct !DILexicalBlock(scope: !493, file: !3, line: 275, column: 2)
!519 = !DILocation(line: 178, column: 49, scope: !493)
!520 = !DILocation(line: 179, column: 27, scope: !493)
!521 = !DILocation(line: 181, column: 2, scope: !493)
!522 = !DILocation(line: 181, column: 16, scope: !493)
!523 = !DILocation(line: 181, column: 29, scope: !493)
!524 = !DILocation(line: 182, column: 2, scope: !493)
!525 = !DILocation(line: 182, column: 16, scope: !493)
!526 = !DILocation(line: 183, column: 2, scope: !493)
!527 = !DILocation(line: 183, column: 12, scope: !493)
!528 = !DILocation(line: 184, column: 2, scope: !493)
!529 = !DILocation(line: 184, column: 12, scope: !493)
!530 = !DILocation(line: 185, column: 2, scope: !493)
!531 = !DILocation(line: 185, column: 12, scope: !493)
!532 = !DILocation(line: 186, column: 2, scope: !493)
!533 = !DILocation(line: 186, column: 12, scope: !493)
!534 = !DILocation(line: 186, column: 17, scope: !493)
!535 = !DILocation(line: 187, column: 2, scope: !493)
!536 = !DILocation(line: 187, column: 12, scope: !493)
!537 = !DILocation(line: 188, column: 2, scope: !493)
!538 = !DILocation(line: 188, column: 7, scope: !493)
!539 = !DILocation(line: 189, column: 2, scope: !493)
!540 = !DILocation(line: 189, column: 6, scope: !493)
!541 = !DILocation(line: 190, column: 2, scope: !493)
!542 = !DILocation(line: 190, column: 16, scope: !493)
!543 = !DILocation(line: 192, column: 28, scope: !493)
!544 = !DILocation(line: 192, column: 9, scope: !493)
!545 = !DILocation(line: 192, column: 7, scope: !493)
!546 = !DILocation(line: 195, column: 6, scope: !547)
!547 = distinct !DILexicalBlock(scope: !493, file: !3, line: 195, column: 6)
!548 = !DILocation(line: 195, column: 18, scope: !547)
!549 = !DILocation(line: 195, column: 15, scope: !547)
!550 = !DILocation(line: 195, column: 6, scope: !493)
!551 = !DILocation(line: 196, column: 3, scope: !547)
!552 = !DILocation(line: 196, column: 3, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !3, line: 196, column: 3)
!554 = distinct !DILexicalBlock(scope: !547, file: !3, line: 196, column: 3)
!555 = distinct !{!555, !556, !557, !558}
!556 = !DILocation(line: 196, column: 3, scope: !554)
!557 = !DILocation(line: 196, column: 11, scope: !554)
!558 = !{!"llvm.loop.unroll.disable"}
!559 = !DILocation(line: 202, column: 15, scope: !493)
!560 = !DILocation(line: 202, column: 24, scope: !493)
!561 = !DILocation(line: 202, column: 13, scope: !493)
!562 = !DILocation(line: 205, column: 6, scope: !563)
!563 = distinct !DILexicalBlock(scope: !493, file: !3, line: 205, column: 6)
!564 = !DILocation(line: 205, column: 17, scope: !563)
!565 = !DILocation(line: 205, column: 6, scope: !493)
!566 = !DILocation(line: 206, column: 3, scope: !563)
!567 = !DILocation(line: 206, column: 3, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 206, column: 3)
!569 = distinct !DILexicalBlock(scope: !563, file: !3, line: 206, column: 3)
!570 = distinct !{!570, !571, !572, !558}
!571 = !DILocation(line: 206, column: 3, scope: !569)
!572 = !DILocation(line: 206, column: 11, scope: !569)
!573 = !DILocation(line: 209, column: 16, scope: !493)
!574 = !DILocation(line: 209, column: 13, scope: !493)
!575 = !DILocation(line: 213, column: 38, scope: !493)
!576 = !DILocation(line: 213, column: 8, scope: !493)
!577 = !DILocation(line: 213, column: 6, scope: !493)
!578 = !DILocation(line: 214, column: 6, scope: !493)
!579 = !DILocation(line: 214, column: 12, scope: !493)
!580 = !DILocation(line: 214, column: 10, scope: !493)
!581 = !DILocation(line: 214, column: 4, scope: !493)
!582 = !DILocation(line: 215, column: 6, scope: !583)
!583 = distinct !DILexicalBlock(scope: !493, file: !3, line: 215, column: 6)
!584 = !{i8 0, i8 2}
!585 = !{}
!586 = !DILocation(line: 215, column: 6, scope: !493)
!587 = !DILocation(line: 216, column: 4, scope: !583)
!588 = !DILocation(line: 216, column: 6, scope: !583)
!589 = !DILocation(line: 216, column: 3, scope: !583)
!590 = !DILocation(line: 218, column: 4, scope: !583)
!591 = !DILocation(line: 218, column: 6, scope: !583)
!592 = !DILocation(line: 219, column: 49, scope: !493)
!593 = !DILocation(line: 219, column: 47, scope: !493)
!594 = !DILocation(line: 219, column: 3, scope: !493)
!595 = !DILocation(line: 219, column: 5, scope: !493)
!596 = !DILocation(line: 221, column: 6, scope: !597)
!597 = distinct !DILexicalBlock(scope: !493, file: !3, line: 221, column: 6)
!598 = !DILocation(line: 221, column: 6, scope: !493)
!599 = !DILocation(line: 222, column: 43, scope: !600)
!600 = distinct !DILexicalBlock(scope: !597, file: !3, line: 221, column: 12)
!601 = !DILocation(line: 222, column: 9, scope: !600)
!602 = !DILocation(line: 222, column: 7, scope: !600)
!603 = !DILocation(line: 223, column: 15, scope: !600)
!604 = !DILocation(line: 223, column: 3, scope: !600)
!605 = !DILocation(line: 223, column: 12, scope: !600)
!606 = !DILocation(line: 224, column: 2, scope: !600)
!607 = !DILocation(line: 226, column: 42, scope: !493)
!608 = !DILocation(line: 226, column: 8, scope: !493)
!609 = !DILocation(line: 226, column: 6, scope: !493)
!610 = !DILocation(line: 227, column: 14, scope: !493)
!611 = !DILocation(line: 227, column: 2, scope: !493)
!612 = !DILocation(line: 227, column: 11, scope: !493)
!613 = !DILocation(line: 228, column: 14, scope: !493)
!614 = !DILocation(line: 228, column: 2, scope: !493)
!615 = !DILocation(line: 228, column: 11, scope: !493)
!616 = !DILocation(line: 230, column: 41, scope: !493)
!617 = !DILocation(line: 230, column: 8, scope: !493)
!618 = !DILocation(line: 230, column: 6, scope: !493)
!619 = !DILocation(line: 231, column: 9, scope: !620)
!620 = distinct !DILexicalBlock(scope: !493, file: !3, line: 231, column: 2)
!621 = !DILocation(line: 231, column: 7, scope: !620)
!622 = !DILocation(line: 231, column: 27, scope: !623)
!623 = distinct !DILexicalBlock(scope: !620, file: !3, line: 231, column: 2)
!624 = !DILocation(line: 231, column: 29, scope: !623)
!625 = !DILocation(line: 231, column: 2, scope: !620)
!626 = !DILocation(line: 232, column: 13, scope: !623)
!627 = !DILocation(line: 232, column: 3, scope: !623)
!628 = !DILocation(line: 232, column: 7, scope: !623)
!629 = !DILocation(line: 232, column: 10, scope: !623)
!630 = !DILocation(line: 231, column: 65, scope: !623)
!631 = !DILocation(line: 231, column: 2, scope: !623)
!632 = distinct !{!632, !625, !633, !634, !558}
!633 = !DILocation(line: 232, column: 13, scope: !620)
!634 = !{!"llvm.loop.mustprogress"}
!635 = !DILocation(line: 241, column: 48, scope: !493)
!636 = !DILocation(line: 241, column: 17, scope: !493)
!637 = !DILocation(line: 241, column: 15, scope: !493)
!638 = !DILocation(line: 242, column: 43, scope: !493)
!639 = !DILocation(line: 242, column: 56, scope: !493)
!640 = !DILocation(line: 242, column: 22, scope: !493)
!641 = !DILocation(line: 242, column: 61, scope: !493)
!642 = !DILocation(line: 242, column: 8, scope: !493)
!643 = !DILocation(line: 242, column: 6, scope: !493)
!644 = !DILocation(line: 243, column: 43, scope: !493)
!645 = !DILocation(line: 243, column: 56, scope: !493)
!646 = !DILocation(line: 243, column: 22, scope: !493)
!647 = !DILocation(line: 243, column: 61, scope: !493)
!648 = !DILocation(line: 243, column: 8, scope: !493)
!649 = !DILocation(line: 243, column: 6, scope: !493)
!650 = !DILocation(line: 245, column: 40, scope: !493)
!651 = !DILocation(line: 245, column: 38, scope: !493)
!652 = !DILocation(line: 245, column: 16, scope: !493)
!653 = !DILocation(line: 247, column: 6, scope: !654)
!654 = distinct !DILexicalBlock(scope: !493, file: !3, line: 247, column: 6)
!655 = !DILocation(line: 247, column: 6, scope: !493)
!656 = !DILocation(line: 248, column: 44, scope: !657)
!657 = distinct !DILexicalBlock(scope: !654, file: !3, line: 247, column: 12)
!658 = !DILocation(line: 248, column: 57, scope: !657)
!659 = !DILocation(line: 248, column: 23, scope: !657)
!660 = !DILocation(line: 249, column: 9, scope: !657)
!661 = !DILocation(line: 248, column: 9, scope: !657)
!662 = !DILocation(line: 248, column: 7, scope: !657)
!663 = !DILocation(line: 251, column: 8, scope: !657)
!664 = !DILocation(line: 251, column: 20, scope: !657)
!665 = !DILocation(line: 251, column: 17, scope: !657)
!666 = !DILocation(line: 251, column: 33, scope: !657)
!667 = !DILocation(line: 251, column: 7, scope: !657)
!668 = !DILocation(line: 251, column: 5, scope: !657)
!669 = !DILocation(line: 252, column: 26, scope: !657)
!670 = !DILocation(line: 252, column: 16, scope: !657)
!671 = !DILocation(line: 252, column: 32, scope: !657)
!672 = !DILocation(line: 252, column: 30, scope: !657)
!673 = !DILocation(line: 252, column: 3, scope: !657)
!674 = !DILocation(line: 252, column: 7, scope: !657)
!675 = !DILocation(line: 252, column: 9, scope: !657)
!676 = !DILocation(line: 252, column: 14, scope: !657)
!677 = !DILocation(line: 253, column: 26, scope: !657)
!678 = !DILocation(line: 253, column: 16, scope: !657)
!679 = !DILocation(line: 253, column: 32, scope: !657)
!680 = !DILocation(line: 253, column: 30, scope: !657)
!681 = !DILocation(line: 253, column: 3, scope: !657)
!682 = !DILocation(line: 253, column: 7, scope: !657)
!683 = !DILocation(line: 253, column: 9, scope: !657)
!684 = !DILocation(line: 253, column: 14, scope: !657)
!685 = !DILocation(line: 255, column: 7, scope: !657)
!686 = !DILocation(line: 255, column: 16, scope: !657)
!687 = !DILocation(line: 255, column: 5, scope: !657)
!688 = !DILocation(line: 256, column: 43, scope: !657)
!689 = !DILocation(line: 256, column: 33, scope: !657)
!690 = !DILocation(line: 256, column: 49, scope: !657)
!691 = !DILocation(line: 256, column: 47, scope: !657)
!692 = !DILocation(line: 256, column: 3, scope: !657)
!693 = !DILocation(line: 256, column: 8, scope: !657)
!694 = !DILocation(line: 256, column: 10, scope: !657)
!695 = !DILocation(line: 256, column: 17, scope: !657)
!696 = !DILocation(line: 256, column: 15, scope: !657)
!697 = !DILocation(line: 256, column: 31, scope: !657)
!698 = !DILocation(line: 257, column: 43, scope: !657)
!699 = !DILocation(line: 257, column: 33, scope: !657)
!700 = !DILocation(line: 257, column: 49, scope: !657)
!701 = !DILocation(line: 257, column: 47, scope: !657)
!702 = !DILocation(line: 257, column: 3, scope: !657)
!703 = !DILocation(line: 257, column: 8, scope: !657)
!704 = !DILocation(line: 257, column: 10, scope: !657)
!705 = !DILocation(line: 257, column: 17, scope: !657)
!706 = !DILocation(line: 257, column: 15, scope: !657)
!707 = !DILocation(line: 257, column: 31, scope: !657)
!708 = !DILocation(line: 258, column: 2, scope: !657)
!709 = !DILocation(line: 259, column: 8, scope: !710)
!710 = distinct !DILexicalBlock(scope: !654, file: !3, line: 258, column: 9)
!711 = !DILocation(line: 259, column: 20, scope: !710)
!712 = !DILocation(line: 259, column: 17, scope: !710)
!713 = !DILocation(line: 259, column: 33, scope: !710)
!714 = !DILocation(line: 259, column: 7, scope: !710)
!715 = !DILocation(line: 259, column: 5, scope: !710)
!716 = !DILocation(line: 260, column: 26, scope: !710)
!717 = !DILocation(line: 260, column: 16, scope: !710)
!718 = !DILocation(line: 260, column: 32, scope: !710)
!719 = !DILocation(line: 260, column: 30, scope: !710)
!720 = !DILocation(line: 260, column: 3, scope: !710)
!721 = !DILocation(line: 260, column: 7, scope: !710)
!722 = !DILocation(line: 260, column: 9, scope: !710)
!723 = !DILocation(line: 260, column: 14, scope: !710)
!724 = !DILocation(line: 261, column: 26, scope: !710)
!725 = !DILocation(line: 261, column: 16, scope: !710)
!726 = !DILocation(line: 261, column: 32, scope: !710)
!727 = !DILocation(line: 261, column: 30, scope: !710)
!728 = !DILocation(line: 261, column: 3, scope: !710)
!729 = !DILocation(line: 261, column: 7, scope: !710)
!730 = !DILocation(line: 261, column: 9, scope: !710)
!731 = !DILocation(line: 261, column: 14, scope: !710)
!732 = !DILocation(line: 264, column: 6, scope: !493)
!733 = !DILocation(line: 264, column: 15, scope: !493)
!734 = !DILocation(line: 264, column: 4, scope: !493)
!735 = !DILocation(line: 265, column: 42, scope: !493)
!736 = !DILocation(line: 265, column: 32, scope: !493)
!737 = !DILocation(line: 265, column: 48, scope: !493)
!738 = !DILocation(line: 265, column: 46, scope: !493)
!739 = !DILocation(line: 265, column: 2, scope: !493)
!740 = !DILocation(line: 265, column: 7, scope: !493)
!741 = !DILocation(line: 265, column: 9, scope: !493)
!742 = !DILocation(line: 265, column: 14, scope: !493)
!743 = !DILocation(line: 265, column: 30, scope: !493)
!744 = !DILocation(line: 266, column: 42, scope: !493)
!745 = !DILocation(line: 266, column: 32, scope: !493)
!746 = !DILocation(line: 266, column: 48, scope: !493)
!747 = !DILocation(line: 266, column: 46, scope: !493)
!748 = !DILocation(line: 266, column: 2, scope: !493)
!749 = !DILocation(line: 266, column: 7, scope: !493)
!750 = !DILocation(line: 266, column: 9, scope: !493)
!751 = !DILocation(line: 266, column: 14, scope: !493)
!752 = !DILocation(line: 266, column: 30, scope: !493)
!753 = !DILocation(line: 268, column: 12, scope: !493)
!754 = !DILocation(line: 270, column: 50, scope: !493)
!755 = !DILocation(line: 270, column: 13, scope: !493)
!756 = !DILocation(line: 270, column: 11, scope: !493)
!757 = !DILocation(line: 271, column: 16, scope: !493)
!758 = !DILocation(line: 271, column: 15, scope: !493)
!759 = !DILocation(line: 271, column: 12, scope: !493)
!760 = !DILocation(line: 272, column: 15, scope: !493)
!761 = !DILocation(line: 272, column: 12, scope: !493)
!762 = !DILocation(line: 273, column: 16, scope: !493)
!763 = !DILocation(line: 273, column: 12, scope: !493)
!764 = !DILocation(line: 275, column: 9, scope: !518)
!765 = !DILocation(line: 275, column: 7, scope: !518)
!766 = !DILocation(line: 275, column: 14, scope: !517)
!767 = !DILocation(line: 275, column: 18, scope: !517)
!768 = !DILocation(line: 275, column: 16, scope: !517)
!769 = !DILocation(line: 275, column: 2, scope: !518)
!770 = !DILocation(line: 276, column: 3, scope: !516)
!771 = !DILocation(line: 276, column: 7, scope: !516)
!772 = !DILocation(line: 276, column: 13, scope: !516)
!773 = !DILocation(line: 276, column: 18, scope: !516)
!774 = !DILocation(line: 276, column: 27, scope: !516)
!775 = !DILocation(line: 276, column: 15, scope: !516)
!776 = !DILocation(line: 278, column: 29, scope: !516)
!777 = !DILocation(line: 278, column: 41, scope: !516)
!778 = !DILocation(line: 278, column: 43, scope: !516)
!779 = !DILocation(line: 278, column: 39, scope: !516)
!780 = !DILocation(line: 278, column: 3, scope: !516)
!781 = !DILocation(line: 278, column: 7, scope: !516)
!782 = !DILocation(line: 278, column: 11, scope: !516)
!783 = !DILocation(line: 278, column: 27, scope: !516)
!784 = !DILocation(line: 279, column: 2, scope: !517)
!785 = !DILocation(line: 279, column: 2, scope: !516)
!786 = !DILocation(line: 275, column: 57, scope: !517)
!787 = !DILocation(line: 275, column: 2, scope: !517)
!788 = distinct !{!788, !769, !789, !634, !558}
!789 = !DILocation(line: 279, column: 2, scope: !518)
!790 = !DILocation(line: 297, column: 41, scope: !493)
!791 = !DILocation(line: 297, column: 8, scope: !493)
!792 = !DILocation(line: 297, column: 6, scope: !493)
!793 = !DILocation(line: 300, column: 9, scope: !794)
!794 = distinct !DILexicalBlock(scope: !493, file: !3, line: 300, column: 2)
!795 = !DILocation(line: 300, column: 7, scope: !794)
!796 = !DILocation(line: 300, column: 14, scope: !797)
!797 = distinct !DILexicalBlock(scope: !794, file: !3, line: 300, column: 2)
!798 = !DILocation(line: 300, column: 18, scope: !797)
!799 = !DILocation(line: 300, column: 16, scope: !797)
!800 = !DILocation(line: 300, column: 2, scope: !794)
!801 = !DILocation(line: 301, column: 3, scope: !797)
!802 = !DILocation(line: 301, column: 7, scope: !797)
!803 = !DILocation(line: 301, column: 10, scope: !797)
!804 = !DILocation(line: 300, column: 52, scope: !797)
!805 = !DILocation(line: 300, column: 2, scope: !797)
!806 = distinct !{!806, !800, !807, !634, !558}
!807 = !DILocation(line: 301, column: 14, scope: !794)
!808 = !DILocation(line: 304, column: 2, scope: !493)
!809 = !DILocation(line: 304, column: 9, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 304, column: 2)
!811 = distinct !DILexicalBlock(scope: !493, file: !3, line: 304, column: 2)
!812 = !DILocation(line: 304, column: 14, scope: !810)
!813 = !DILocation(line: 304, column: 11, scope: !810)
!814 = !DILocation(line: 304, column: 2, scope: !811)
!815 = !DILocation(line: 305, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !810, file: !3, line: 305, column: 7)
!817 = !DILocation(line: 305, column: 11, scope: !816)
!818 = !DILocation(line: 305, column: 14, scope: !816)
!819 = !DILocation(line: 305, column: 7, scope: !810)
!820 = !DILocation(line: 306, column: 14, scope: !816)
!821 = !DILocation(line: 306, column: 4, scope: !816)
!822 = !DILocation(line: 306, column: 8, scope: !816)
!823 = !DILocation(line: 306, column: 11, scope: !816)
!824 = !DILocation(line: 305, column: 16, scope: !816)
!825 = !DILocation(line: 304, column: 47, scope: !810)
!826 = !DILocation(line: 304, column: 2, scope: !810)
!827 = distinct !{!827, !814, !828, !634, !558}
!828 = !DILocation(line: 306, column: 14, scope: !811)
!829 = !DILocation(line: 309, column: 2, scope: !493)
!830 = !DILocation(line: 309, column: 9, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 309, column: 2)
!832 = distinct !DILexicalBlock(scope: !493, file: !3, line: 309, column: 2)
!833 = !DILocation(line: 309, column: 11, scope: !831)
!834 = !DILocation(line: 309, column: 2, scope: !832)
!835 = !DILocation(line: 310, column: 3, scope: !831)
!836 = !DILocation(line: 310, column: 7, scope: !831)
!837 = !DILocation(line: 310, column: 10, scope: !831)
!838 = !DILocation(line: 309, column: 28, scope: !831)
!839 = !DILocation(line: 309, column: 2, scope: !831)
!840 = distinct !{!840, !834, !841, !634, !558}
!841 = !DILocation(line: 310, column: 14, scope: !832)
!842 = !DILocation(line: 316, column: 39, scope: !493)
!843 = !DILocation(line: 316, column: 52, scope: !493)
!844 = !DILocation(line: 316, column: 50, scope: !493)
!845 = !DILocation(line: 316, column: 26, scope: !493)
!846 = !DILocation(line: 316, column: 3, scope: !493)
!847 = !DILocation(line: 316, column: 36, scope: !493)
!848 = !DILocation(line: 318, column: 33, scope: !493)
!849 = !DILocation(line: 318, column: 37, scope: !493)
!850 = !DILocation(line: 318, column: 9, scope: !493)
!851 = !DILocation(line: 319, column: 1, scope: !493)
!852 = !DILocation(line: 318, column: 2, scope: !493)
!853 = distinct !DISubprogram(name: "check_la57_support", scope: !3, file: !3, line: 104, type: !854, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{!511, !22}
!856 = !{!857}
!857 = !DILocalVariable(name: "physaddr", arg: 1, scope: !853, file: !3, line: 104, type: !22)
!858 = !DILocation(line: 104, column: 53, scope: !853)
!859 = !DILocation(line: 110, column: 8, scope: !860)
!860 = distinct !DILexicalBlock(scope: !853, file: !3, line: 110, column: 6)
!861 = !DILocation(line: 110, column: 26, scope: !860)
!862 = !DILocation(line: 110, column: 6, scope: !853)
!863 = !DILocation(line: 111, column: 3, scope: !860)
!864 = !DILocation(line: 113, column: 36, scope: !853)
!865 = !DILocation(line: 113, column: 3, scope: !853)
!866 = !DILocation(line: 113, column: 46, scope: !853)
!867 = !DILocation(line: 114, column: 27, scope: !853)
!868 = !DILocation(line: 114, column: 3, scope: !853)
!869 = !DILocation(line: 114, column: 37, scope: !853)
!870 = !DILocation(line: 115, column: 28, scope: !853)
!871 = !DILocation(line: 115, column: 3, scope: !853)
!872 = !DILocation(line: 115, column: 38, scope: !853)
!873 = !DILocation(line: 116, column: 33, scope: !853)
!874 = !DILocation(line: 116, column: 3, scope: !853)
!875 = !DILocation(line: 116, column: 43, scope: !853)
!876 = !DILocation(line: 117, column: 29, scope: !853)
!877 = !DILocation(line: 117, column: 3, scope: !853)
!878 = !DILocation(line: 117, column: 39, scope: !853)
!879 = !DILocation(line: 118, column: 29, scope: !853)
!880 = !DILocation(line: 118, column: 3, scope: !853)
!881 = !DILocation(line: 118, column: 39, scope: !853)
!882 = !DILocation(line: 120, column: 2, scope: !853)
!883 = !DILocation(line: 121, column: 1, scope: !853)
!884 = distinct !DISubprogram(name: "pgtable_l5_enabled", scope: !24, file: !24, line: 32, type: !885, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!885 = !DISubroutineType(types: !886)
!886 = !{!511}
!887 = !DILocation(line: 34, column: 9, scope: !884)
!888 = !DILocation(line: 34, column: 2, scope: !884)
!889 = distinct !DISubprogram(name: "sme_get_me_mask", scope: !890, file: !890, line: 98, type: !891, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!890 = !DIFile(filename: "./arch/x86/include/asm/mem_encrypt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8334153096538ce6ea0af4e5c8c3a998")
!891 = !DISubroutineType(types: !892)
!892 = !{!32}
!893 = !DILocation(line: 98, column: 43, scope: !889)
!894 = distinct !DISubprogram(name: "fixup_pointer", scope: !3, file: !3, line: 88, type: !895, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{!21, !21, !22}
!897 = !{!898, !899}
!898 = !DILocalVariable(name: "ptr", arg: 1, scope: !894, file: !3, line: 88, type: !21)
!899 = !DILocalVariable(name: "physaddr", arg: 2, scope: !894, file: !3, line: 88, type: !22)
!900 = !DILocation(line: 88, column: 41, scope: !894)
!901 = !DILocation(line: 88, column: 60, scope: !894)
!902 = !DILocation(line: 90, column: 9, scope: !894)
!903 = !DILocation(line: 90, column: 13, scope: !894)
!904 = !DILocation(line: 90, column: 39, scope: !894)
!905 = !DILocation(line: 90, column: 31, scope: !894)
!906 = !DILocation(line: 90, column: 29, scope: !894)
!907 = !DILocation(line: 90, column: 2, scope: !894)
!908 = distinct !DISubprogram(name: "pmd_index", scope: !909, file: !909, line: 71, type: !910, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !912)
!909 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!910 = !DISubroutineType(types: !911)
!911 = !{!22, !22}
!912 = !{!913}
!913 = !DILocalVariable(name: "address", arg: 1, scope: !908, file: !909, line: 71, type: !22)
!914 = !DILocation(line: 71, column: 53, scope: !908)
!915 = !DILocation(line: 73, column: 10, scope: !908)
!916 = !DILocation(line: 73, column: 18, scope: !908)
!917 = !DILocation(line: 73, column: 32, scope: !908)
!918 = !DILocation(line: 73, column: 2, scope: !908)
!919 = distinct !DISubprogram(name: "fixup_long", scope: !3, file: !3, line: 93, type: !920, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !922)
!920 = !DISubroutineType(types: !921)
!921 = !{!41, !21, !22}
!922 = !{!923, !924}
!923 = !DILocalVariable(name: "ptr", arg: 1, scope: !919, file: !3, line: 93, type: !21)
!924 = !DILocalVariable(name: "physaddr", arg: 2, scope: !919, file: !3, line: 93, type: !22)
!925 = !DILocation(line: 93, column: 47, scope: !919)
!926 = !DILocation(line: 93, column: 66, scope: !919)
!927 = !DILocation(line: 95, column: 23, scope: !919)
!928 = !DILocation(line: 95, column: 28, scope: !919)
!929 = !DILocation(line: 95, column: 9, scope: !919)
!930 = !DILocation(line: 95, column: 2, scope: !919)
!931 = distinct !DISubprogram(name: "sme_postprocess_startup", scope: !3, file: !3, line: 129, type: !932, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !934)
!932 = !DISubroutineType(types: !933)
!933 = !{!22, !108, !38}
!934 = !{!935, !936, !937, !938, !939}
!935 = !DILocalVariable(name: "bp", arg: 1, scope: !931, file: !3, line: 129, type: !108)
!936 = !DILocalVariable(name: "pmd", arg: 2, scope: !931, file: !3, line: 129, type: !38)
!937 = !DILocalVariable(name: "vaddr", scope: !931, file: !3, line: 131, type: !22)
!938 = !DILocalVariable(name: "vaddr_end", scope: !931, file: !3, line: 131, type: !22)
!939 = !DILocalVariable(name: "i", scope: !931, file: !3, line: 132, type: !40)
!940 = !DILocation(line: 129, column: 73, scope: !931)
!941 = !DILocation(line: 129, column: 87, scope: !931)
!942 = !DILocation(line: 131, column: 2, scope: !931)
!943 = !DILocation(line: 131, column: 16, scope: !931)
!944 = !DILocation(line: 131, column: 23, scope: !931)
!945 = !DILocation(line: 132, column: 2, scope: !931)
!946 = !DILocation(line: 132, column: 6, scope: !931)
!947 = !DILocation(line: 135, column: 21, scope: !931)
!948 = !DILocation(line: 135, column: 2, scope: !931)
!949 = !DILocation(line: 143, column: 6, scope: !950)
!950 = distinct !DILexicalBlock(scope: !931, file: !3, line: 143, column: 6)
!951 = !DILocation(line: 143, column: 6, scope: !931)
!952 = !DILocation(line: 144, column: 9, scope: !953)
!953 = distinct !DILexicalBlock(scope: !950, file: !3, line: 143, column: 25)
!954 = !DILocation(line: 145, column: 13, scope: !953)
!955 = !DILocation(line: 147, column: 3, scope: !953)
!956 = !DILocation(line: 147, column: 10, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !3, line: 147, column: 3)
!958 = distinct !DILexicalBlock(scope: !953, file: !3, line: 147, column: 3)
!959 = !DILocation(line: 147, column: 18, scope: !957)
!960 = !DILocation(line: 147, column: 16, scope: !957)
!961 = !DILocation(line: 147, column: 3, scope: !958)
!962 = !DILocation(line: 158, column: 32, scope: !963)
!963 = distinct !DILexicalBlock(scope: !957, file: !3, line: 147, column: 48)
!964 = !DILocation(line: 158, column: 45, scope: !963)
!965 = !DILocation(line: 158, column: 4, scope: !963)
!966 = !DILocation(line: 160, column: 18, scope: !963)
!967 = !DILocation(line: 160, column: 8, scope: !963)
!968 = !DILocation(line: 160, column: 6, scope: !963)
!969 = !DILocation(line: 161, column: 14, scope: !963)
!970 = !DILocation(line: 161, column: 4, scope: !963)
!971 = !DILocation(line: 161, column: 8, scope: !963)
!972 = !DILocation(line: 161, column: 11, scope: !963)
!973 = !DILocation(line: 162, column: 3, scope: !963)
!974 = !DILocation(line: 147, column: 35, scope: !957)
!975 = !DILocation(line: 147, column: 3, scope: !957)
!976 = distinct !{!976, !961, !977, !634, !558}
!977 = !DILocation(line: 162, column: 3, scope: !958)
!978 = !DILocation(line: 163, column: 2, scope: !953)
!979 = !DILocation(line: 169, column: 9, scope: !931)
!980 = !DILocation(line: 170, column: 1, scope: !931)
!981 = !DILocation(line: 169, column: 2, scope: !931)
!982 = distinct !DISubprogram(name: "__early_make_pgtable", scope: !3, file: !3, line: 330, type: !983, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !985)
!983 = !DISubroutineType(types: !984)
!984 = !{!511, !22, !39}
!985 = !{!986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996}
!986 = !DILocalVariable(name: "address", arg: 1, scope: !982, file: !3, line: 330, type: !22)
!987 = !DILocalVariable(name: "pmd", arg: 2, scope: !982, file: !3, line: 330, type: !39)
!988 = !DILocalVariable(name: "physaddr", scope: !982, file: !3, line: 332, type: !22)
!989 = !DILocalVariable(name: "pgd", scope: !982, file: !3, line: 333, type: !25)
!990 = !DILocalVariable(name: "pgd_p", scope: !982, file: !3, line: 333, type: !503)
!991 = !DILocalVariable(name: "p4d", scope: !982, file: !3, line: 334, type: !28)
!992 = !DILocalVariable(name: "p4d_p", scope: !982, file: !3, line: 334, type: !27)
!993 = !DILocalVariable(name: "pud", scope: !982, file: !3, line: 335, type: !26)
!994 = !DILocalVariable(name: "pud_p", scope: !982, file: !3, line: 335, type: !37)
!995 = !DILocalVariable(name: "pmd_p", scope: !982, file: !3, line: 336, type: !38)
!996 = !DILabel(scope: !982, name: "again", file: !3, line: 342)
!997 = !DILocation(line: 330, column: 48, scope: !982)
!998 = !DILocation(line: 330, column: 66, scope: !982)
!999 = !DILocation(line: 332, column: 2, scope: !982)
!1000 = !DILocation(line: 332, column: 16, scope: !982)
!1001 = !DILocation(line: 332, column: 27, scope: !982)
!1002 = !DILocation(line: 332, column: 37, scope: !982)
!1003 = !DILocation(line: 332, column: 35, scope: !982)
!1004 = !DILocation(line: 333, column: 2, scope: !982)
!1005 = !DILocation(line: 333, column: 11, scope: !982)
!1006 = !DILocation(line: 333, column: 17, scope: !982)
!1007 = !DILocation(line: 334, column: 2, scope: !982)
!1008 = !DILocation(line: 334, column: 11, scope: !982)
!1009 = !DILocation(line: 334, column: 17, scope: !982)
!1010 = !DILocation(line: 335, column: 2, scope: !982)
!1011 = !DILocation(line: 335, column: 11, scope: !982)
!1012 = !DILocation(line: 335, column: 17, scope: !982)
!1013 = !DILocation(line: 336, column: 2, scope: !982)
!1014 = !DILocation(line: 336, column: 12, scope: !982)
!1015 = !DILocation(line: 339, column: 6, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !982, file: !3, line: 339, column: 6)
!1017 = !DILocation(line: 339, column: 18, scope: !1016)
!1018 = !DILocation(line: 339, column: 15, scope: !1016)
!1019 = !DILocation(line: 339, column: 25, scope: !1016)
!1020 = !DILocation(line: 339, column: 28, scope: !1016)
!1021 = !DILocation(line: 339, column: 45, scope: !1016)
!1022 = !DILocation(line: 339, column: 42, scope: !1016)
!1023 = !DILocation(line: 339, column: 6, scope: !982)
!1024 = !DILocation(line: 340, column: 3, scope: !1016)
!1025 = !DILocation(line: 342, column: 1, scope: !982)
!1026 = !DILocation(line: 343, column: 25, scope: !982)
!1027 = !DILocation(line: 343, column: 11, scope: !982)
!1028 = !DILocation(line: 343, column: 45, scope: !982)
!1029 = !DILocation(line: 343, column: 8, scope: !982)
!1030 = !DILocation(line: 344, column: 9, scope: !982)
!1031 = !DILocation(line: 344, column: 8, scope: !982)
!1032 = !DILocation(line: 344, column: 6, scope: !982)
!1033 = !DILocation(line: 351, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !982, file: !3, line: 351, column: 6)
!1035 = !DILocation(line: 351, column: 6, scope: !982)
!1036 = !DILocation(line: 352, column: 11, scope: !1034)
!1037 = !DILocation(line: 352, column: 9, scope: !1034)
!1038 = !DILocation(line: 352, column: 3, scope: !1034)
!1039 = !DILocation(line: 353, column: 11, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 353, column: 11)
!1041 = !DILocation(line: 353, column: 11, scope: !1034)
!1042 = !DILocation(line: 354, column: 25, scope: !1040)
!1043 = !DILocation(line: 354, column: 29, scope: !1040)
!1044 = !DILocation(line: 354, column: 45, scope: !1040)
!1045 = !DILocation(line: 354, column: 68, scope: !1040)
!1046 = !DILocation(line: 354, column: 66, scope: !1040)
!1047 = !DILocation(line: 354, column: 11, scope: !1040)
!1048 = !DILocation(line: 354, column: 9, scope: !1040)
!1049 = !DILocation(line: 354, column: 3, scope: !1040)
!1050 = !DILocation(line: 356, column: 7, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 356, column: 7)
!1052 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 355, column: 7)
!1053 = !DILocation(line: 356, column: 22, scope: !1051)
!1054 = !DILocation(line: 356, column: 7, scope: !1052)
!1055 = !DILocation(line: 357, column: 4, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 356, column: 52)
!1057 = !DILocation(line: 358, column: 4, scope: !1056)
!1058 = !DILocation(line: 361, column: 56, scope: !1052)
!1059 = !DILocation(line: 361, column: 23, scope: !1052)
!1060 = !DILocation(line: 361, column: 9, scope: !1052)
!1061 = !DILocation(line: 362, column: 10, scope: !1052)
!1062 = !DILocation(line: 362, column: 37, scope: !1052)
!1063 = !DILocation(line: 362, column: 35, scope: !1052)
!1064 = !DILocation(line: 362, column: 3, scope: !1052)
!1065 = !DILocation(line: 363, column: 22, scope: !1052)
!1066 = !DILocation(line: 363, column: 12, scope: !1052)
!1067 = !DILocation(line: 363, column: 28, scope: !1052)
!1068 = !DILocation(line: 363, column: 51, scope: !1052)
!1069 = !DILocation(line: 363, column: 49, scope: !1052)
!1070 = !DILocation(line: 363, column: 61, scope: !1052)
!1071 = !DILocation(line: 363, column: 4, scope: !1052)
!1072 = !DILocation(line: 363, column: 10, scope: !1052)
!1073 = !DILocation(line: 365, column: 21, scope: !982)
!1074 = !DILocation(line: 365, column: 11, scope: !982)
!1075 = !DILocation(line: 365, column: 8, scope: !982)
!1076 = !DILocation(line: 366, column: 9, scope: !982)
!1077 = !DILocation(line: 366, column: 8, scope: !982)
!1078 = !DILocation(line: 366, column: 6, scope: !982)
!1079 = !DILocation(line: 368, column: 6, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !982, file: !3, line: 368, column: 6)
!1081 = !DILocation(line: 368, column: 6, scope: !982)
!1082 = !DILocation(line: 369, column: 25, scope: !1080)
!1083 = !DILocation(line: 369, column: 29, scope: !1080)
!1084 = !DILocation(line: 369, column: 45, scope: !1080)
!1085 = !DILocation(line: 369, column: 68, scope: !1080)
!1086 = !DILocation(line: 369, column: 66, scope: !1080)
!1087 = !DILocation(line: 369, column: 11, scope: !1080)
!1088 = !DILocation(line: 369, column: 9, scope: !1080)
!1089 = !DILocation(line: 369, column: 3, scope: !1080)
!1090 = !DILocation(line: 371, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 371, column: 7)
!1092 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 370, column: 7)
!1093 = !DILocation(line: 371, column: 22, scope: !1091)
!1094 = !DILocation(line: 371, column: 7, scope: !1092)
!1095 = !DILocation(line: 372, column: 4, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 371, column: 52)
!1097 = !DILocation(line: 373, column: 4, scope: !1096)
!1098 = !DILocation(line: 376, column: 56, scope: !1092)
!1099 = !DILocation(line: 376, column: 23, scope: !1092)
!1100 = !DILocation(line: 376, column: 9, scope: !1092)
!1101 = !DILocation(line: 377, column: 10, scope: !1092)
!1102 = !DILocation(line: 377, column: 3, scope: !1092)
!1103 = !DILocation(line: 378, column: 22, scope: !1092)
!1104 = !DILocation(line: 378, column: 12, scope: !1092)
!1105 = !DILocation(line: 378, column: 28, scope: !1092)
!1106 = !DILocation(line: 378, column: 51, scope: !1092)
!1107 = !DILocation(line: 378, column: 49, scope: !1092)
!1108 = !DILocation(line: 378, column: 61, scope: !1092)
!1109 = !DILocation(line: 378, column: 4, scope: !1092)
!1110 = !DILocation(line: 378, column: 10, scope: !1092)
!1111 = !DILocation(line: 380, column: 21, scope: !982)
!1112 = !DILocation(line: 380, column: 11, scope: !982)
!1113 = !DILocation(line: 380, column: 8, scope: !982)
!1114 = !DILocation(line: 381, column: 9, scope: !982)
!1115 = !DILocation(line: 381, column: 8, scope: !982)
!1116 = !DILocation(line: 381, column: 6, scope: !982)
!1117 = !DILocation(line: 383, column: 6, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !982, file: !3, line: 383, column: 6)
!1119 = !DILocation(line: 383, column: 6, scope: !982)
!1120 = !DILocation(line: 384, column: 25, scope: !1118)
!1121 = !DILocation(line: 384, column: 29, scope: !1118)
!1122 = !DILocation(line: 384, column: 45, scope: !1118)
!1123 = !DILocation(line: 384, column: 68, scope: !1118)
!1124 = !DILocation(line: 384, column: 66, scope: !1118)
!1125 = !DILocation(line: 384, column: 11, scope: !1118)
!1126 = !DILocation(line: 384, column: 9, scope: !1118)
!1127 = !DILocation(line: 384, column: 3, scope: !1118)
!1128 = !DILocation(line: 386, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 386, column: 7)
!1130 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 385, column: 7)
!1131 = !DILocation(line: 386, column: 22, scope: !1129)
!1132 = !DILocation(line: 386, column: 7, scope: !1130)
!1133 = !DILocation(line: 387, column: 4, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 386, column: 52)
!1135 = !DILocation(line: 388, column: 4, scope: !1134)
!1136 = !DILocation(line: 391, column: 56, scope: !1130)
!1137 = !DILocation(line: 391, column: 23, scope: !1130)
!1138 = !DILocation(line: 391, column: 9, scope: !1130)
!1139 = !DILocation(line: 392, column: 10, scope: !1130)
!1140 = !DILocation(line: 392, column: 3, scope: !1130)
!1141 = !DILocation(line: 393, column: 22, scope: !1130)
!1142 = !DILocation(line: 393, column: 12, scope: !1130)
!1143 = !DILocation(line: 393, column: 28, scope: !1130)
!1144 = !DILocation(line: 393, column: 51, scope: !1130)
!1145 = !DILocation(line: 393, column: 49, scope: !1130)
!1146 = !DILocation(line: 393, column: 61, scope: !1130)
!1147 = !DILocation(line: 393, column: 4, scope: !1130)
!1148 = !DILocation(line: 393, column: 10, scope: !1130)
!1149 = !DILocation(line: 395, column: 30, scope: !982)
!1150 = !DILocation(line: 395, column: 2, scope: !982)
!1151 = !DILocation(line: 395, column: 18, scope: !982)
!1152 = !DILocation(line: 395, column: 8, scope: !982)
!1153 = !DILocation(line: 395, column: 28, scope: !982)
!1154 = !DILocation(line: 397, column: 2, scope: !982)
!1155 = !DILocation(line: 398, column: 1, scope: !982)
!1156 = distinct !DISubprogram(name: "read_cr3_pa", scope: !1157, file: !1157, line: 217, type: !1158, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1157 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!22}
!1160 = !DILocation(line: 219, column: 9, scope: !1156)
!1161 = !DILocation(line: 219, column: 22, scope: !1156)
!1162 = !DILocation(line: 219, column: 2, scope: !1156)
!1163 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !1164, file: !1164, line: 22, type: !910, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1165)
!1164 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!1165 = !{!1166, !1167}
!1166 = !DILocalVariable(name: "x", arg: 1, scope: !1163, file: !1164, line: 22, type: !22)
!1167 = !DILocalVariable(name: "y", scope: !1163, file: !1164, line: 24, type: !22)
!1168 = !DILocation(line: 22, column: 72, scope: !1163)
!1169 = !DILocation(line: 24, column: 2, scope: !1163)
!1170 = !DILocation(line: 24, column: 16, scope: !1163)
!1171 = !DILocation(line: 24, column: 20, scope: !1163)
!1172 = !DILocation(line: 24, column: 22, scope: !1163)
!1173 = !DILocation(line: 27, column: 6, scope: !1163)
!1174 = !DILocation(line: 27, column: 12, scope: !1163)
!1175 = !DILocation(line: 27, column: 16, scope: !1163)
!1176 = !DILocation(line: 27, column: 14, scope: !1163)
!1177 = !DILocation(line: 27, column: 11, scope: !1163)
!1178 = !DILocation(line: 27, column: 21, scope: !1163)
!1179 = !DILocation(line: 27, column: 55, scope: !1163)
!1180 = !DILocation(line: 27, column: 53, scope: !1163)
!1181 = !DILocation(line: 27, column: 8, scope: !1163)
!1182 = !DILocation(line: 27, column: 4, scope: !1163)
!1183 = !DILocation(line: 29, column: 9, scope: !1163)
!1184 = !DILocation(line: 30, column: 1, scope: !1163)
!1185 = !DILocation(line: 29, column: 2, scope: !1163)
!1186 = distinct !DISubprogram(name: "reset_early_page_tables", scope: !3, file: !3, line: 322, type: !1187, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null}
!1189 = !DILocation(line: 324, column: 2, scope: !1186)
!1190 = !DILocation(line: 325, column: 17, scope: !1186)
!1191 = !DILocation(line: 326, column: 12, scope: !1186)
!1192 = !DILocation(line: 326, column: 2, scope: !1186)
!1193 = !DILocation(line: 327, column: 1, scope: !1186)
!1194 = distinct !DISubprogram(name: "p4d_index", scope: !1195, file: !1195, line: 1124, type: !910, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1196)
!1195 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!1196 = !{!1197}
!1197 = !DILocalVariable(name: "address", arg: 1, scope: !1194, file: !1195, line: 1124, type: !22)
!1198 = !DILocation(line: 1124, column: 53, scope: !1194)
!1199 = !DILocation(line: 1126, column: 10, scope: !1194)
!1200 = !DILocation(line: 1126, column: 18, scope: !1194)
!1201 = !DILocation(line: 1126, column: 35, scope: !1194)
!1202 = !DILocation(line: 1126, column: 48, scope: !1194)
!1203 = !DILocation(line: 1126, column: 34, scope: !1194)
!1204 = !DILocation(line: 1126, column: 32, scope: !1194)
!1205 = !DILocation(line: 1126, column: 2, scope: !1194)
!1206 = distinct !DISubprogram(name: "pud_index", scope: !909, file: !909, line: 79, type: !910, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1207)
!1207 = !{!1208}
!1208 = !DILocalVariable(name: "address", arg: 1, scope: !1206, file: !909, line: 79, type: !22)
!1209 = !DILocation(line: 79, column: 53, scope: !1206)
!1210 = !DILocation(line: 81, column: 10, scope: !1206)
!1211 = !DILocation(line: 81, column: 18, scope: !1206)
!1212 = !DILocation(line: 81, column: 32, scope: !1206)
!1213 = !DILocation(line: 81, column: 2, scope: !1206)
!1214 = distinct !DISubprogram(name: "do_early_exception", scope: !3, file: !3, line: 410, type: !1215, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1269)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !1217, !40}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1219, line: 103, size: 1344, elements: !1220)
!1219 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1249, !1250, !1251}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1218, file: !1219, line: 109, baseType: !22, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1218, file: !1219, line: 110, baseType: !22, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1218, file: !1219, line: 111, baseType: !22, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1218, file: !1219, line: 112, baseType: !22, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1218, file: !1219, line: 113, baseType: !22, size: 64, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1218, file: !1219, line: 114, baseType: !22, size: 64, offset: 320)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1218, file: !1219, line: 117, baseType: !22, size: 64, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1218, file: !1219, line: 118, baseType: !22, size: 64, offset: 448)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1218, file: !1219, line: 119, baseType: !22, size: 64, offset: 512)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1218, file: !1219, line: 120, baseType: !22, size: 64, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1218, file: !1219, line: 121, baseType: !22, size: 64, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1218, file: !1219, line: 122, baseType: !22, size: 64, offset: 704)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1218, file: !1219, line: 123, baseType: !22, size: 64, offset: 768)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1218, file: !1219, line: 124, baseType: !22, size: 64, offset: 832)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1218, file: !1219, line: 125, baseType: !22, size: 64, offset: 896)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1218, file: !1219, line: 139, baseType: !22, size: 64, offset: 960)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1218, file: !1219, line: 142, baseType: !22, size: 64, offset: 1024)
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1219, line: 144, baseType: !1239, size: 64, offset: 1088)
!1239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1219, line: 144, size: 64, elements: !1240)
!1240 = !{!1241, !1242, !1243}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1239, file: !1219, line: 146, baseType: !45, size: 16)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1239, file: !1219, line: 148, baseType: !32, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1239, file: !1219, line: 150, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1219, line: 59, size: 64, elements: !1245)
!1245 = !{!1246, !1247, !1248}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1244, file: !1219, line: 61, baseType: !32, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1244, file: !1219, line: 63, baseType: !32, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1244, file: !1219, line: 65, baseType: !32, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1218, file: !1219, line: 153, baseType: !22, size: 64, offset: 1152)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1218, file: !1219, line: 154, baseType: !22, size: 64, offset: 1216)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1219, line: 156, baseType: !1252, size: 64, offset: 1280)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1219, line: 156, size: 64, elements: !1253)
!1253 = !{!1254, !1255, !1256}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1252, file: !1219, line: 158, baseType: !45, size: 16)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1252, file: !1219, line: 160, baseType: !32, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1252, file: !1219, line: 162, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1219, line: 69, size: 64, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1257, file: !1219, line: 71, baseType: !32, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1257, file: !1219, line: 73, baseType: !32, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1257, file: !1219, line: 75, baseType: !32, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1257, file: !1219, line: 77, baseType: !32, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1257, file: !1219, line: 80, baseType: !32, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1257, file: !1219, line: 83, baseType: !32, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1257, file: !1219, line: 86, baseType: !32, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1257, file: !1219, line: 88, baseType: !32, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1257, file: !1219, line: 93, baseType: !32, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1257, file: !1219, line: 100, baseType: !32, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1269 = !{!1270, !1271}
!1270 = !DILocalVariable(name: "regs", arg: 1, scope: !1214, file: !3, line: 410, type: !1217)
!1271 = !DILocalVariable(name: "trapnr", arg: 2, scope: !1214, file: !3, line: 410, type: !40)
!1272 = !DILocation(line: 410, column: 48, scope: !1214)
!1273 = !DILocation(line: 410, column: 58, scope: !1214)
!1274 = !DILocation(line: 412, column: 6, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 412, column: 6)
!1276 = !DILocation(line: 412, column: 13, scope: !1275)
!1277 = !DILocation(line: 412, column: 28, scope: !1275)
!1278 = !DILocation(line: 413, column: 25, scope: !1275)
!1279 = !DILocation(line: 413, column: 6, scope: !1275)
!1280 = !DILocation(line: 412, column: 6, scope: !1214)
!1281 = !DILocation(line: 414, column: 3, scope: !1275)
!1282 = !DILocation(line: 420, column: 6, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 420, column: 6)
!1284 = !DILocation(line: 420, column: 13, scope: !1283)
!1285 = !DILocation(line: 420, column: 28, scope: !1283)
!1286 = !DILocation(line: 420, column: 51, scope: !1283)
!1287 = !DILocation(line: 420, column: 31, scope: !1283)
!1288 = !DILocation(line: 420, column: 6, scope: !1214)
!1289 = !DILocation(line: 421, column: 3, scope: !1283)
!1290 = !DILocation(line: 423, column: 24, scope: !1214)
!1291 = !DILocation(line: 423, column: 30, scope: !1214)
!1292 = !DILocation(line: 423, column: 2, scope: !1214)
!1293 = !DILocation(line: 424, column: 1, scope: !1214)
!1294 = distinct !DISubprogram(name: "early_make_pgtable", scope: !3, file: !3, line: 400, type: !854, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1295)
!1295 = !{!1296, !1297, !1298}
!1296 = !DILocalVariable(name: "address", arg: 1, scope: !1294, file: !3, line: 400, type: !22)
!1297 = !DILocalVariable(name: "physaddr", scope: !1294, file: !3, line: 402, type: !22)
!1298 = !DILocalVariable(name: "pmd", scope: !1294, file: !3, line: 403, type: !39)
!1299 = !DILocation(line: 400, column: 53, scope: !1294)
!1300 = !DILocation(line: 402, column: 2, scope: !1294)
!1301 = !DILocation(line: 402, column: 16, scope: !1294)
!1302 = !DILocation(line: 402, column: 27, scope: !1294)
!1303 = !DILocation(line: 402, column: 37, scope: !1294)
!1304 = !DILocation(line: 402, column: 35, scope: !1294)
!1305 = !DILocation(line: 403, column: 2, scope: !1294)
!1306 = !DILocation(line: 403, column: 11, scope: !1294)
!1307 = !DILocation(line: 405, column: 9, scope: !1294)
!1308 = !DILocation(line: 405, column: 18, scope: !1294)
!1309 = !DILocation(line: 405, column: 32, scope: !1294)
!1310 = !DILocation(line: 405, column: 30, scope: !1294)
!1311 = !DILocation(line: 405, column: 6, scope: !1294)
!1312 = !DILocation(line: 407, column: 30, scope: !1294)
!1313 = !DILocation(line: 407, column: 39, scope: !1294)
!1314 = !DILocation(line: 407, column: 9, scope: !1294)
!1315 = !DILocation(line: 408, column: 1, scope: !1294)
!1316 = !DILocation(line: 407, column: 2, scope: !1294)
!1317 = distinct !DISubprogram(name: "native_read_cr2", scope: !1318, file: !1318, line: 33, type: !1158, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1319)
!1318 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!1319 = !{!1320}
!1320 = !DILocalVariable(name: "val", scope: !1317, file: !1318, line: 35, type: !22)
!1321 = !DILocation(line: 35, column: 2, scope: !1317)
!1322 = !DILocation(line: 35, column: 16, scope: !1317)
!1323 = !DILocation(line: 36, column: 2, scope: !1317)
!1324 = !{i64 1871577, i64 1871592}
!1325 = !DILocation(line: 37, column: 9, scope: !1317)
!1326 = !DILocation(line: 38, column: 1, scope: !1317)
!1327 = !DILocation(line: 37, column: 2, scope: !1317)
!1328 = distinct !DISubprogram(name: "tdx_early_handle_ve", scope: !1329, file: !1329, line: 60, type: !1330, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1332)
!1329 = !DIFile(filename: "./arch/x86/include/asm/tdx.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62c563a33bbdefcff400a8f72721d7df")
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!511, !1217}
!1332 = !{!1333}
!1333 = !DILocalVariable(name: "regs", arg: 1, scope: !1328, file: !1329, line: 60, type: !1217)
!1334 = !DILocation(line: 60, column: 56, scope: !1328)
!1335 = !DILocation(line: 60, column: 64, scope: !1328)
!1336 = !DISubprogram(name: "early_fixup_exception", scope: !1337, file: !1337, line: 42, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1337 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1338 = distinct !DISubprogram(name: "clear_bss", scope: !3, file: !3, line: 428, type: !1187, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1339 = !DILocation(line: 430, column: 2, scope: !1338)
!1340 = !DILocation(line: 432, column: 2, scope: !1338)
!1341 = !DILocation(line: 434, column: 1, scope: !1338)
!1342 = distinct !DISubprogram(name: "x86_64_start_kernel", scope: !3, file: !3, line: 473, type: !1343, scopeLine: 474, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1345)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{null, !43}
!1345 = !{!1346, !1347, !1349, !1353}
!1346 = !DILocalVariable(name: "real_mode_data", arg: 1, scope: !1342, file: !3, line: 473, type: !43)
!1347 = !DILocalVariable(name: "pscr_ret__", scope: !1348, file: !3, line: 519, type: !22)
!1348 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 519, column: 28)
!1349 = !DILocalVariable(name: "__vpp_verify", scope: !1350, file: !3, line: 519, type: !1351)
!1350 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 519, column: 28)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1353 = !DILocalVariable(name: "pfo_val__", scope: !1354, file: !3, line: 519, type: !32)
!1354 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 519, column: 28)
!1355 = !DILocation(line: 473, column: 72, scope: !1342)
!1356 = !DILocation(line: 479, column: 2, scope: !1342)
!1357 = !DILocation(line: 479, column: 2, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 479, column: 2)
!1359 = !DILocation(line: 480, column: 2, scope: !1342)
!1360 = !DILocation(line: 480, column: 2, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 480, column: 2)
!1362 = !DILocation(line: 481, column: 2, scope: !1342)
!1363 = !DILocation(line: 481, column: 2, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 481, column: 2)
!1365 = !DILocation(line: 482, column: 2, scope: !1342)
!1366 = !DILocation(line: 482, column: 2, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 482, column: 2)
!1368 = !DILocation(line: 483, column: 2, scope: !1342)
!1369 = !DILocation(line: 483, column: 2, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 483, column: 2)
!1371 = !DILocation(line: 484, column: 2, scope: !1342)
!1372 = !DILocation(line: 484, column: 2, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 484, column: 2)
!1374 = !DILocation(line: 485, column: 2, scope: !1342)
!1375 = !DILocation(line: 485, column: 2, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 485, column: 2)
!1377 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 485, column: 2)
!1378 = !DILocation(line: 485, column: 2, scope: !1377)
!1379 = !DILocation(line: 485, column: 2, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 485, column: 2)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 485, column: 2)
!1382 = !DILocation(line: 485, column: 2, scope: !1381)
!1383 = !{i32 -2140905638}
!1384 = !DILocation(line: 485, column: 2, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 485, column: 2)
!1386 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 485, column: 2)
!1387 = !DILocation(line: 485, column: 2, scope: !1386)
!1388 = !DILocation(line: 485, column: 2, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 485, column: 2)
!1390 = !DILocation(line: 485, column: 2, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 485, column: 2)
!1392 = !DILocation(line: 485, column: 2, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 485, column: 2)
!1394 = !{i64 2154062523, i64 2154062552, i64 2154062598, i64 2154062656, i64 2154062710, i64 2154062764, i64 2154062819, i64 2154062850}
!1395 = !DILocation(line: 487, column: 2, scope: !1342)
!1396 = !DILocation(line: 487, column: 2, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 487, column: 2)
!1398 = !DILocation(line: 489, column: 2, scope: !1342)
!1399 = !DILocation(line: 492, column: 2, scope: !1342)
!1400 = !DILocation(line: 494, column: 2, scope: !1342)
!1401 = !DILocation(line: 500, column: 2, scope: !1342)
!1402 = !DILocation(line: 507, column: 2, scope: !1342)
!1403 = !DILocation(line: 509, column: 2, scope: !1342)
!1404 = !DILocation(line: 519, column: 28, scope: !1348)
!1405 = !DILocation(line: 519, column: 28, scope: !1350)
!1406 = !DILocation(line: 519, column: 28, scope: !1354)
!1407 = !{i64 2154069188}
!1408 = !DILocation(line: 519, column: 28, scope: !1342)
!1409 = !DILocation(line: 519, column: 2, scope: !1342)
!1410 = !DILocation(line: 521, column: 2, scope: !1342)
!1411 = !DILocation(line: 524, column: 2, scope: !1342)
!1412 = !DILocation(line: 526, column: 16, scope: !1342)
!1413 = !DILocation(line: 526, column: 2, scope: !1342)
!1414 = !DILocation(line: 531, column: 2, scope: !1342)
!1415 = !DILocation(line: 534, column: 22, scope: !1342)
!1416 = !DILocation(line: 536, column: 28, scope: !1342)
!1417 = !DILocation(line: 536, column: 2, scope: !1342)
!1418 = !DISubprogram(name: "__compiletime_assert_288", scope: !3, file: !3, line: 485, type: !1187, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1419 = distinct !DISubprogram(name: "cr4_init_shadow", scope: !1420, file: !1420, line: 178, type: !1187, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1421)
!1420 = !DIFile(filename: "./arch/x86/include/asm/tlbflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "855d4064bc03d0e3d0f10fca91c7b33f")
!1421 = !{!1422, !1425}
!1422 = !DILocalVariable(name: "__vpp_verify", scope: !1423, file: !1420, line: 180, type: !1351)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !1420, line: 180, column: 2)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !1420, line: 180, column: 2)
!1425 = !DILocalVariable(name: "pto_val__", scope: !1426, file: !1420, line: 180, type: !32)
!1426 = distinct !DILexicalBlock(scope: !1424, file: !1420, line: 180, column: 2)
!1427 = !DILocation(line: 180, column: 2, scope: !1419)
!1428 = !DILocation(line: 180, column: 2, scope: !1424)
!1429 = !DILocation(line: 180, column: 2, scope: !1423)
!1430 = !DILocation(line: 180, column: 2, scope: !1426)
!1431 = !{i64 2153271049}
!1432 = !DILocation(line: 181, column: 1, scope: !1419)
!1433 = distinct !DISubprogram(name: "clear_page", scope: !1164, file: !1164, line: 47, type: !1434, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1436)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !21}
!1436 = !{!1437}
!1437 = !DILocalVariable(name: "page", arg: 1, scope: !1433, file: !1164, line: 47, type: !21)
!1438 = !DILocation(line: 47, column: 37, scope: !1433)
!1439 = !DILocation(line: 53, column: 24, scope: !1433)
!1440 = !DILocation(line: 53, column: 2, scope: !1433)
!1441 = !DILocation(line: 54, column: 2, scope: !1433)
!1442 = !{i64 2148424050, i64 2148424083, i64 2148424089, i64 2148424105, i64 2148424124, i64 2148424155, i64 2148425114, i64 2148423689, i64 2148425120, i64 2148425168, i64 2148425232, i64 2148425296, i64 2148425353, i64 2148425560, i64 2148425608, i64 2148425672, i64 2148425736, i64 2148425793, i64 2148423807, i64 2148423832, i64 2148426000, i64 2148426129, i64 2148426061, i64 2148426143, i64 2148426157, i64 2148426286, i64 2148426218, i64 2148426300, i64 2148423966}
!1443 = !DILocation(line: 60, column: 1, scope: !1433)
!1444 = distinct !DISubprogram(name: "sme_early_init", scope: !890, file: !890, line: 81, type: !1187, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1445 = !DILocation(line: 81, column: 50, scope: !1444)
!1446 = distinct !DISubprogram(name: "kasan_early_init", scope: !1447, file: !1447, line: 33, type: !1187, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1447 = !DIFile(filename: "./arch/x86/include/asm/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e116551707995402c86c1fcc41b571fd")
!1448 = !DILocation(line: 33, column: 45, scope: !1446)
!1449 = distinct !DISubprogram(name: "__native_tlb_flush_global", scope: !1420, file: !1420, line: 423, type: !1450, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1452)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !22}
!1452 = !{!1453}
!1453 = !DILocalVariable(name: "cr4", arg: 1, scope: !1449, file: !1420, line: 423, type: !22)
!1454 = !DILocation(line: 423, column: 60, scope: !1449)
!1455 = !DILocation(line: 425, column: 19, scope: !1449)
!1456 = !DILocation(line: 425, column: 23, scope: !1449)
!1457 = !DILocation(line: 425, column: 2, scope: !1449)
!1458 = !DILocation(line: 426, column: 19, scope: !1449)
!1459 = !DILocation(line: 426, column: 2, scope: !1449)
!1460 = !DILocation(line: 427, column: 1, scope: !1449)
!1461 = !DISubprogram(name: "idt_setup_early_handler", scope: !1462, file: !1462, line: 437, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1462 = !DIFile(filename: "./arch/x86/include/asm/desc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ce8a8e19f799ab03a132d4ddc6cfe6d")
!1463 = distinct !DISubprogram(name: "tdx_early_init", scope: !1329, file: !1329, line: 57, type: !1187, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1464 = !DILocation(line: 57, column: 43, scope: !1463)
!1465 = distinct !DISubprogram(name: "copy_bootdata", scope: !3, file: !3, line: 445, type: !1343, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1466)
!1466 = !{!1467, !1468, !1469}
!1467 = !DILocalVariable(name: "real_mode_data", arg: 1, scope: !1465, file: !3, line: 445, type: !43)
!1468 = !DILocalVariable(name: "command_line", scope: !1465, file: !3, line: 447, type: !43)
!1469 = !DILocalVariable(name: "cmd_line_ptr", scope: !1465, file: !3, line: 448, type: !22)
!1470 = !DILocation(line: 445, column: 40, scope: !1465)
!1471 = !DILocation(line: 447, column: 2, scope: !1465)
!1472 = !DILocation(line: 447, column: 9, scope: !1465)
!1473 = !DILocation(line: 448, column: 2, scope: !1465)
!1474 = !DILocation(line: 448, column: 16, scope: !1465)
!1475 = !DILocation(line: 454, column: 19, scope: !1465)
!1476 = !DILocation(line: 454, column: 2, scope: !1465)
!1477 = !DILocation(line: 456, column: 23, scope: !1465)
!1478 = !DILocation(line: 456, column: 2, scope: !1465)
!1479 = !DILocation(line: 457, column: 2, scope: !1465)
!1480 = !DILocation(line: 458, column: 17, scope: !1465)
!1481 = !DILocation(line: 458, column: 15, scope: !1465)
!1482 = !DILocation(line: 459, column: 6, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 459, column: 6)
!1484 = !DILocation(line: 459, column: 6, scope: !1465)
!1485 = !DILocation(line: 460, column: 18, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 459, column: 20)
!1487 = !DILocation(line: 460, column: 16, scope: !1486)
!1488 = !DILocation(line: 461, column: 29, scope: !1486)
!1489 = !DILocation(line: 461, column: 3, scope: !1486)
!1490 = !DILocation(line: 462, column: 2, scope: !1486)
!1491 = !DILocation(line: 470, column: 21, scope: !1465)
!1492 = !DILocation(line: 470, column: 2, scope: !1465)
!1493 = !DILocation(line: 471, column: 1, scope: !1465)
!1494 = !DISubprogram(name: "load_ucode_bsp", scope: !1495, file: !1495, line: 17, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1495 = !DIFile(filename: "./arch/x86/include/asm/microcode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76281ed1dc19c9b2cc0725843fac83fb")
!1496 = distinct !DISubprogram(name: "x86_64_start_reservations", scope: !3, file: !3, line: 539, type: !1343, scopeLine: 540, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1497)
!1497 = !{!1498}
!1498 = !DILocalVariable(name: "real_mode_data", arg: 1, scope: !1496, file: !3, line: 539, type: !43)
!1499 = !DILocation(line: 539, column: 56, scope: !1496)
!1500 = !DILocation(line: 542, column: 23, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 542, column: 6)
!1502 = !DILocation(line: 542, column: 7, scope: !1501)
!1503 = !DILocation(line: 542, column: 6, scope: !1496)
!1504 = !DILocation(line: 543, column: 17, scope: !1501)
!1505 = !DILocation(line: 543, column: 3, scope: !1501)
!1506 = !DILocation(line: 545, column: 2, scope: !1496)
!1507 = !DILocation(line: 547, column: 26, scope: !1496)
!1508 = !DILocation(line: 547, column: 2, scope: !1496)
!1509 = !DILocation(line: 549, column: 3, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 547, column: 44)
!1511 = !DILocation(line: 550, column: 3, scope: !1510)
!1512 = !DILocation(line: 552, column: 3, scope: !1510)
!1513 = !DILocation(line: 555, column: 2, scope: !1496)
!1514 = !DISubprogram(name: "x86_early_init_platform_quirks", scope: !1515, file: !1515, line: 331, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1515 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1516 = distinct !DISubprogram(name: "x86_intel_mid_early_setup", scope: !1517, file: !1517, line: 60, type: !1187, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1517 = !DIFile(filename: "./arch/x86/include/asm/setup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70163219e3d956dec6d0e7b32cf67c8b")
!1518 = !DILocation(line: 60, column: 54, scope: !1516)
!1519 = !DISubprogram(name: "start_kernel", scope: !1520, file: !1520, line: 11, type: !1187, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1520 = !DIFile(filename: "./include/linux/start_kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5637bf718d81827c56b1a1150890ab62")
!1521 = distinct !DISubprogram(name: "early_setup_idt", scope: !3, file: !3, line: 609, type: !1187, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1522 = !DILocation(line: 617, column: 28, scope: !1521)
!1523 = !DILocation(line: 618, column: 2, scope: !1521)
!1524 = !DILocation(line: 619, column: 1, scope: !1521)
!1525 = distinct !DISubprogram(name: "native_load_idt", scope: !1462, file: !1462, line: 213, type: !1526, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1530)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !1528}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!1530 = !{!1531}
!1531 = !DILocalVariable(name: "dtr", arg: 1, scope: !1525, file: !1462, line: 213, type: !1528)
!1532 = !DILocation(line: 213, column: 68, scope: !1525)
!1533 = !DILocation(line: 215, column: 32, scope: !1525)
!1534 = !DILocation(line: 215, column: 2, scope: !1525)
!1535 = !{i64 6390003}
!1536 = !DILocation(line: 216, column: 1, scope: !1525)
!1537 = distinct !DISubprogram(name: "startup_64_setup_env", scope: !3, file: !3, line: 624, type: !1450, scopeLine: 625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1538)
!1538 = !{!1539}
!1539 = !DILocalVariable(name: "physbase", arg: 1, scope: !1537, file: !3, line: 624, type: !22)
!1540 = !DILocation(line: 624, column: 48, scope: !1537)
!1541 = !DILocation(line: 627, column: 72, scope: !1537)
!1542 = !DILocation(line: 627, column: 45, scope: !1537)
!1543 = !DILocation(line: 627, column: 30, scope: !1537)
!1544 = !DILocation(line: 627, column: 28, scope: !1537)
!1545 = !DILocation(line: 628, column: 2, scope: !1537)
!1546 = !DILocation(line: 631, column: 2, scope: !1537)
!1547 = !{i64 18447, i64 18476, i64 18504}
!1548 = !DILocation(line: 635, column: 22, scope: !1537)
!1549 = !DILocation(line: 635, column: 2, scope: !1537)
!1550 = !DILocation(line: 636, column: 1, scope: !1537)
!1551 = distinct !DISubprogram(name: "native_load_gdt", scope: !1462, file: !1462, line: 208, type: !1526, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1552)
!1552 = !{!1553}
!1553 = !DILocalVariable(name: "dtr", arg: 1, scope: !1551, file: !1462, line: 208, type: !1528)
!1554 = !DILocation(line: 208, column: 59, scope: !1551)
!1555 = !DILocation(line: 210, column: 32, scope: !1551)
!1556 = !DILocation(line: 210, column: 2, scope: !1551)
!1557 = !{i64 6389888}
!1558 = !DILocation(line: 211, column: 1, scope: !1551)
!1559 = distinct !DISubprogram(name: "startup_64_load_idt", scope: !3, file: !3, line: 590, type: !1450, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1560)
!1560 = !{!1561, !1562, !1564}
!1561 = !DILocalVariable(name: "physbase", arg: 1, scope: !1559, file: !3, line: 590, type: !22)
!1562 = !DILocalVariable(name: "desc", scope: !1559, file: !3, line: 592, type: !1563)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!1564 = !DILocalVariable(name: "idt", scope: !1559, file: !3, line: 593, type: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!1566 = !DILocation(line: 590, column: 47, scope: !1559)
!1567 = !DILocation(line: 592, column: 2, scope: !1559)
!1568 = !DILocation(line: 592, column: 19, scope: !1559)
!1569 = !DILocation(line: 592, column: 60, scope: !1559)
!1570 = !DILocation(line: 592, column: 26, scope: !1559)
!1571 = !DILocation(line: 593, column: 2, scope: !1559)
!1572 = !DILocation(line: 593, column: 13, scope: !1559)
!1573 = !DILocation(line: 593, column: 52, scope: !1559)
!1574 = !DILocation(line: 593, column: 19, scope: !1559)
!1575 = !DILocation(line: 604, column: 33, scope: !1559)
!1576 = !DILocation(line: 604, column: 18, scope: !1559)
!1577 = !DILocation(line: 604, column: 2, scope: !1559)
!1578 = !DILocation(line: 604, column: 8, scope: !1559)
!1579 = !DILocation(line: 604, column: 16, scope: !1559)
!1580 = !DILocation(line: 605, column: 18, scope: !1559)
!1581 = !DILocation(line: 605, column: 2, scope: !1559)
!1582 = !DILocation(line: 606, column: 1, scope: !1559)
!1583 = distinct !DISubprogram(name: "native_read_cr4", scope: !1318, file: !1318, line: 57, type: !1158, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1584)
!1584 = !{!1585}
!1585 = !DILocalVariable(name: "val", scope: !1583, file: !1318, line: 59, type: !22)
!1586 = !DILocation(line: 59, column: 2, scope: !1583)
!1587 = !DILocation(line: 59, column: 16, scope: !1583)
!1588 = !DILocation(line: 72, column: 2, scope: !1583)
!1589 = !{i64 1872499, i64 1872514}
!1590 = !DILocation(line: 74, column: 9, scope: !1583)
!1591 = !DILocation(line: 75, column: 1, scope: !1583)
!1592 = !DILocation(line: 74, column: 2, scope: !1583)
!1593 = distinct !DISubprogram(name: "fixup_int", scope: !3, file: !3, line: 99, type: !1594, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1596)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!42, !21, !22}
!1596 = !{!1597, !1598}
!1597 = !DILocalVariable(name: "ptr", arg: 1, scope: !1593, file: !3, line: 99, type: !21)
!1598 = !DILocalVariable(name: "physaddr", arg: 2, scope: !1593, file: !3, line: 99, type: !22)
!1599 = !DILocation(line: 99, column: 45, scope: !1593)
!1600 = !DILocation(line: 99, column: 64, scope: !1593)
!1601 = !DILocation(line: 101, column: 23, scope: !1593)
!1602 = !DILocation(line: 101, column: 28, scope: !1593)
!1603 = !DILocation(line: 101, column: 9, scope: !1593)
!1604 = !DILocation(line: 101, column: 2, scope: !1593)
!1605 = distinct !DISubprogram(name: "sme_encrypt_kernel", scope: !890, file: !890, line: 84, type: !106, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1606)
!1606 = !{!1607}
!1607 = !DILocalVariable(name: "bp", arg: 1, scope: !1605, file: !890, line: 84, type: !108)
!1608 = !DILocation(line: 84, column: 59, scope: !1605)
!1609 = !DILocation(line: 84, column: 65, scope: !1605)
!1610 = distinct !DISubprogram(name: "early_snp_set_memory_shared", scope: !1611, file: !1611, line: 229, type: !1612, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1614)
!1611 = !DIFile(filename: "./arch/x86/include/asm/sev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1121459c44dd4b204cffd62c421bf03d")
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !22, !22, !22}
!1614 = !{!1615, !1616, !1617}
!1615 = !DILocalVariable(name: "vaddr", arg: 1, scope: !1610, file: !1611, line: 229, type: !22)
!1616 = !DILocalVariable(name: "paddr", arg: 2, scope: !1610, file: !1611, line: 229, type: !22)
!1617 = !DILocalVariable(name: "npages", arg: 3, scope: !1610, file: !1611, line: 229, type: !22)
!1618 = !DILocation(line: 229, column: 43, scope: !1610)
!1619 = !DILocation(line: 229, column: 64, scope: !1610)
!1620 = !DILocation(line: 229, column: 85, scope: !1610)
!1621 = !DILocation(line: 229, column: 95, scope: !1610)
!1622 = distinct !DISubprogram(name: "__read_cr3", scope: !1318, file: !1318, line: 156, type: !1158, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1623 = !DILocation(line: 158, column: 9, scope: !1622)
!1624 = !DILocation(line: 158, column: 2, scope: !1622)
!1625 = distinct !DISubprogram(name: "__native_read_cr3", scope: !1318, file: !1318, line: 45, type: !1158, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1626)
!1626 = !{!1627}
!1627 = !DILocalVariable(name: "val", scope: !1625, file: !1318, line: 47, type: !22)
!1628 = !DILocation(line: 47, column: 2, scope: !1625)
!1629 = !DILocation(line: 47, column: 16, scope: !1625)
!1630 = !DILocation(line: 48, column: 2, scope: !1625)
!1631 = !{i64 1871855, i64 1871870}
!1632 = !DILocation(line: 49, column: 9, scope: !1625)
!1633 = !DILocation(line: 50, column: 1, scope: !1625)
!1634 = !DILocation(line: 49, column: 2, scope: !1625)
!1635 = distinct !DISubprogram(name: "write_cr3", scope: !1318, file: !1318, line: 161, type: !1450, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1636)
!1636 = !{!1637}
!1637 = !DILocalVariable(name: "x", arg: 1, scope: !1635, file: !1318, line: 161, type: !22)
!1638 = !DILocation(line: 161, column: 44, scope: !1635)
!1639 = !DILocation(line: 163, column: 19, scope: !1635)
!1640 = !DILocation(line: 163, column: 2, scope: !1635)
!1641 = !DILocation(line: 164, column: 1, scope: !1635)
!1642 = distinct !DISubprogram(name: "native_write_cr3", scope: !1318, file: !1318, line: 52, type: !1450, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1643)
!1643 = !{!1644}
!1644 = !DILocalVariable(name: "val", arg: 1, scope: !1642, file: !1318, line: 52, type: !22)
!1645 = !DILocation(line: 52, column: 51, scope: !1642)
!1646 = !DILocation(line: 54, column: 38, scope: !1642)
!1647 = !DILocation(line: 54, column: 2, scope: !1642)
!1648 = !{i64 1871992}
!1649 = !DILocation(line: 55, column: 1, scope: !1642)
!1650 = distinct !DISubprogram(name: "__read_cr4", scope: !1318, file: !1318, line: 123, type: !1158, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1651 = !DILocation(line: 125, column: 9, scope: !1650)
!1652 = !DILocation(line: 125, column: 2, scope: !1650)
!1653 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !1654, file: !1654, line: 70, type: !1655, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1661)
!1654 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !1351, !1657}
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 61, baseType: !1658)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1659, line: 72, baseType: !1660)
!1659 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1659, line: 16, baseType: !22)
!1661 = !{!1662, !1663}
!1662 = !DILocalVariable(name: "address", arg: 1, scope: !1653, file: !1654, line: 70, type: !1351)
!1663 = !DILocalVariable(name: "size", arg: 2, scope: !1653, file: !1654, line: 70, type: !1657)
!1664 = !DILocation(line: 70, column: 54, scope: !1653)
!1665 = !DILocation(line: 70, column: 70, scope: !1653)
!1666 = !DILocation(line: 72, column: 1, scope: !1653)
!1667 = !DISubprogram(name: "native_write_cr4", scope: !1318, file: !1318, line: 77, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1668 = distinct !DISubprogram(name: "sme_map_bootdata", scope: !890, file: !890, line: 78, type: !1343, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1669)
!1669 = !{!1670}
!1670 = !DILocalVariable(name: "real_mode_data", arg: 1, scope: !1668, file: !890, line: 78, type: !43)
!1671 = !DILocation(line: 78, column: 50, scope: !1668)
!1672 = !DILocation(line: 78, column: 68, scope: !1668)
!1673 = !DILocation(line: 35, column: 54, scope: !104)
!1674 = !DILocation(line: 51, column: 6, scope: !445)
!1675 = !DILocation(line: 51, column: 19, scope: !445)
!1676 = !DILocation(line: 51, column: 6, scope: !104)
!1677 = !DILocation(line: 53, column: 3, scope: !444)
!1678 = !DILocation(line: 53, column: 9, scope: !444)
!1679 = !DILocation(line: 53, column: 27, scope: !444)
!1680 = !DILocation(line: 54, column: 3, scope: !444)
!1681 = !DILocation(line: 54, column: 9, scope: !444)
!1682 = !DILocation(line: 55, column: 3, scope: !444)
!1683 = !DILocation(line: 55, column: 7, scope: !444)
!1684 = !DILocation(line: 57, column: 3, scope: !444)
!1685 = !DILocation(line: 57, column: 36, scope: !444)
!1686 = !DILocation(line: 80, column: 3, scope: !444)
!1687 = !DILocation(line: 82, column: 10, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !444, file: !105, line: 82, column: 3)
!1689 = !DILocation(line: 82, column: 8, scope: !1688)
!1690 = !DILocation(line: 82, column: 15, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1688, file: !105, line: 82, column: 3)
!1692 = !DILocation(line: 82, column: 17, scope: !1691)
!1693 = !DILocation(line: 82, column: 3, scope: !1688)
!1694 = !DILocation(line: 83, column: 11, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1691, file: !105, line: 82, column: 45)
!1696 = !DILocation(line: 83, column: 31, scope: !1695)
!1697 = !DILocation(line: 83, column: 23, scope: !1695)
!1698 = !DILocation(line: 83, column: 34, scope: !1695)
!1699 = !DILocation(line: 83, column: 21, scope: !1695)
!1700 = !DILocation(line: 84, column: 11, scope: !1695)
!1701 = !DILocation(line: 84, column: 29, scope: !1695)
!1702 = !DILocation(line: 84, column: 21, scope: !1695)
!1703 = !DILocation(line: 84, column: 32, scope: !1695)
!1704 = !DILocation(line: 84, column: 19, scope: !1695)
!1705 = !DILocation(line: 84, column: 47, scope: !1695)
!1706 = !DILocation(line: 84, column: 39, scope: !1695)
!1707 = !DILocation(line: 84, column: 50, scope: !1695)
!1708 = !DILocation(line: 83, column: 4, scope: !1695)
!1709 = !DILocation(line: 85, column: 3, scope: !1695)
!1710 = !DILocation(line: 82, column: 41, scope: !1691)
!1711 = !DILocation(line: 82, column: 3, scope: !1691)
!1712 = distinct !{!1712, !1693, !1713, !634, !558}
!1713 = !DILocation(line: 85, column: 3, scope: !1688)
!1714 = !DILocation(line: 87, column: 10, scope: !444)
!1715 = !DILocation(line: 87, column: 23, scope: !444)
!1716 = !DILocation(line: 87, column: 3, scope: !444)
!1717 = !DILocation(line: 88, column: 2, scope: !445)
!1718 = !DILocation(line: 88, column: 2, scope: !444)
!1719 = !DILocation(line: 89, column: 1, scope: !104)
!1720 = distinct !DISubprogram(name: "get_cmd_line_ptr", scope: !3, file: !3, line: 436, type: !1158, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1721)
!1721 = !{!1722}
!1722 = !DILocalVariable(name: "cmd_line_ptr", scope: !1720, file: !3, line: 438, type: !22)
!1723 = !DILocation(line: 438, column: 2, scope: !1720)
!1724 = !DILocation(line: 438, column: 16, scope: !1720)
!1725 = !DILocation(line: 438, column: 47, scope: !1720)
!1726 = !DILocation(line: 438, column: 31, scope: !1720)
!1727 = !DILocation(line: 440, column: 35, scope: !1720)
!1728 = !DILocation(line: 440, column: 18, scope: !1720)
!1729 = !DILocation(line: 440, column: 52, scope: !1720)
!1730 = !DILocation(line: 440, column: 15, scope: !1720)
!1731 = !DILocation(line: 442, column: 9, scope: !1720)
!1732 = !DILocation(line: 443, column: 1, scope: !1720)
!1733 = !DILocation(line: 442, column: 2, scope: !1720)
!1734 = distinct !DISubprogram(name: "sme_unmap_bootdata", scope: !890, file: !890, line: 79, type: !1343, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1735)
!1735 = !{!1736}
!1736 = !DILocalVariable(name: "real_mode_data", arg: 1, scope: !1734, file: !890, line: 79, type: !43)
!1737 = !DILocation(line: 79, column: 52, scope: !1734)
!1738 = !DILocation(line: 79, column: 70, scope: !1734)
